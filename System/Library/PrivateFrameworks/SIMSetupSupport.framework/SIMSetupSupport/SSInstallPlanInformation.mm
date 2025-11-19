@interface SSInstallPlanInformation
- (NSString)carrierName;
- (NSString)identifier;
- (NSString)imageName;
- (NSString)text;
- (SSConfirmationCodeViewController)confirmationCodeViewController;
- (SSInstallPlanInformation)initWithItem:(id)a3;
- (SSInstallPlanInformation)initWithPlan:(id)a3;
- (id)description;
- (unint64_t)activatingState;
- (void)maybeUpdateTimeoutStatus;
- (void)updateTargetIccidInfo:(id)a3;
@end

@implementation SSInstallPlanInformation

- (SSInstallPlanInformation)initWithPlan:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SSInstallPlanInformation;
  v6 = [(SSInstallPlanInformation *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayPlan, a3);
    v7->_status = 6;
    v8 = [(CTDisplayPlan *)v7->_displayPlan plan];
    if (v8)
    {
      v9 = v8;
      v10 = [(CTDisplayPlan *)v7->_displayPlan plan];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [(CTDisplayPlan *)v7->_displayPlan plan];
        v13 = [v12 iccidHash];
        targetIccidHash = v7->_targetIccidHash;
        v7->_targetIccidHash = v13;
      }
    }
  }

  return v7;
}

- (SSInstallPlanInformation)initWithItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SSInstallPlanInformation;
  v6 = [(SSInstallPlanInformation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_planItem, a3);
    v7->_isPreInstalled = 1;
    v8 = [v5 iccid];
    [(SSInstallPlanInformation *)v7 updateTargetIccidInfo:v8];
  }

  return v7;
}

- (NSString)identifier
{
  displayPlan = self->_displayPlan;
  if (displayPlan && (-[CTDisplayPlan identifier](displayPlan, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5))
  {
    v6 = [(CTDisplayPlan *)self->_displayPlan identifier];
  }

  else
  {
    planItem = self->_planItem;
    if (planItem && (-[CTCellularPlanItem iccid](planItem, "iccid"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v9))
    {
      v6 = [(CTCellularPlanItem *)self->_planItem iccid];
    }

    else
    {
      v6 = self->_targetIccid;
    }
  }

  return v6;
}

- (NSString)carrierName
{
  v3 = [(CTDisplayPlan *)self->_displayPlan carrierName];
  v4 = [v3 length];

  v5 = 16;
  if (!v4)
  {
    v5 = 24;
  }

  v6 = [*(&self->super.isa + v5) carrierName];

  return v6;
}

- (NSString)text
{
  if (self->_displayPlan)
  {
    [(CTDisplayPlan *)self->_displayPlan text];
  }

  else
  {
    [TSUtilities planItemText:self->_planItem];
  }
  v2 = ;

  return v2;
}

- (NSString)imageName
{
  displayPlan = self->_displayPlan;
  if (displayPlan)
  {
    v4 = [(CTDisplayPlan *)displayPlan imageName];
  }

  else
  {
    planItem = self->_planItem;
    if (planItem && ![(CTCellularPlanItem *)planItem type])
    {
      v4 = @"simcard";
    }

    else
    {
      v4 = @"esim";
    }
  }

  return v4;
}

- (unint64_t)activatingState
{
  status = self->_status;
  if (status == 10002 || status == 10001 || status == 10003)
  {
    return 2;
  }

  if (status == 10004)
  {
    return self->_useGMVNOAsTravelSIM;
  }

  if (isFailedState(status))
  {
    return 3;
  }

  v7 = self->_status;
  if (v7 == 14)
  {
    if (+[TSUtilities isPad]|| self->_isDisabled || self->_phoneNumber)
    {
      return 1;
    }

    else
    {
      result = self->_waitForPhoneNumber;
      if (result)
      {
        return [result BOOLValue] ^ 1;
      }
    }
  }

  else
  {
    if (v7 == 13)
    {
      return self->_useGMVNOAsTravelSIM;
    }

    return 0;
  }

  return result;
}

- (void)updateTargetIccidInfo:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_targetIccid, a3);
  v9 = v5;
  v6 = v9;
  if ([v9 length] == 19)
  {
    v6 = [v9 stringByAppendingString:@"F"];
  }

  v7 = [v6 sha256];
  targetIccidHash = self->_targetIccidHash;
  self->_targetIccidHash = v7;
}

- (void)maybeUpdateTimeoutStatus
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_installationEndTime <= 0.0)
  {
    self->_installationEndTime = CFAbsoluteTimeGetCurrent();
  }

  if (!self->_phoneNumber)
  {
    self->_phoneNumber = &stru_28753DF48;
  }

  if (!isTerminalState(self->_status))
  {
    status = self->_status;
    if (status == 10004)
    {
      v4 = 14;
LABEL_10:
      self->_status = v4;
      goto LABEL_25;
    }

    if (status == 13)
    {
      v4 = 10003;
      goto LABEL_10;
    }

    v5 = [(CTDisplayPlan *)self->_displayPlan plan];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && (v7 = self->_status, v7 <= 6) && ((1 << v7) & 0x43) != 0)
    {
      self->_status = 10001;
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:
        v9 = [(SSInstallPlanInformation *)self identifier];
        v15 = 138412546;
        v16 = v9;
        v17 = 2080;
        v18 = "[SSInstallPlanInformation maybeUpdateTimeoutStatus]";
        v10 = "consent timeout, update %@ status to TimeoutNotConsented @%s";
LABEL_23:
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, v10, &v15, 0x16u);
      }
    }

    else
    {
      v11 = [(CTDisplayPlan *)self->_displayPlan plan];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if ((v12 & 1) != 0 && ((v13 = self->_status, v13 == 6) || !v13))
      {
        self->_status = 10001;
        v8 = _TSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }
      }

      else
      {
        self->_status = 10002;
        v8 = _TSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(SSInstallPlanInformation *)self identifier];
          v15 = 138412546;
          v16 = v9;
          v17 = 2080;
          v18 = "[SSInstallPlanInformation maybeUpdateTimeoutStatus]";
          v10 = "timeout, update %@ status to TimeoutInstallOngoing @%s";
          goto LABEL_23;
        }
      }
    }
  }

LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SSInstallPlanInformation *)self identifier];
  [v3 appendFormat:@" id=%@", v4];

  [v3 appendFormat:@" status=%s", SSPlanTransferStatusAsString(self->_status)];
  [v3 appendFormat:@" error=%@", self->_installError];
  [v3 appendFormat:@" targetIccidHash=%@", self->_targetIccidHash];
  [v3 appendFormat:@">"];

  return v3;
}

- (SSConfirmationCodeViewController)confirmationCodeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_confirmationCodeViewController);

  return WeakRetained;
}

@end