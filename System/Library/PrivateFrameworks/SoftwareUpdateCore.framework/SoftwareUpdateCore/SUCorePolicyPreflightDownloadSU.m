@interface SUCorePolicyPreflightDownloadSU
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyPreflightDownloadSU)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyPreflightDownloadSU

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3
{
  basePreflightOptions = self->_basePreflightOptions;
  self->_specifiedFields = 0;
  self->_basePreflightOptions = 0;
  *&self->_allowsCellular = 0;
  self->_disableUI = 0;
  self->_skipPhase = a3;

  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
}

- (SUCorePolicyPreflightDownloadSU)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPreflightDownloadSU;
  v5 = [(SUCorePolicyPreflightDownloadSU *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_allowsCellular = [v4 decodeBoolForKey:@"AllowsCellular"];
    v5->_discretionary = [v4 decodeBoolForKey:@"Discretionary"];
    v5->_disableUI = [v4 decodeBoolForKey:@"DisableUI"];
    v5->_skipPhase = [v4 decodeBoolForKey:@"SkipPhase"];
    basePreflightOptions = v5->_basePreflightOptions;
    v5->_basePreflightOptions = 0;

    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicyPreflightDownloadSU specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicyPreflightDownloadSU allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  [v4 encodeBool:-[SUCorePolicyPreflightDownloadSU discretionary](self forKey:{"discretionary"), @"Discretionary"}];
  [v4 encodeBool:-[SUCorePolicyPreflightDownloadSU disableUI](self forKey:{"disableUI"), @"DisableUI"}];
  [v4 encodeBool:-[SUCorePolicyPreflightDownloadSU skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAllowsCellular:{-[SUCorePolicyPreflightDownloadSU allowsCellular](self, "allowsCellular")}];
  [v5 setDiscretionary:{-[SUCorePolicyPreflightDownloadSU discretionary](self, "discretionary")}];
  [v5 setDisableUI:{-[SUCorePolicyPreflightDownloadSU disableUI](self, "disableUI")}];
  [v5 setSkipPhase:{-[SUCorePolicyPreflightDownloadSU skipPhase](self, "skipPhase")}];
  v6 = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setBasePreflightOptions:v7];

  v8 = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
  v9 = [v8 copyWithZone:a3];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyPreflightDownloadSU specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicyPreflightDownloadSU *)v5 allowsCellular];
      if (v6 == [(SUCorePolicyPreflightDownloadSU *)self allowsCellular]&& (v7 = [(SUCorePolicyPreflightDownloadSU *)v5 discretionary], v7 == [(SUCorePolicyPreflightDownloadSU *)self discretionary]) && (v8 = [(SUCorePolicyPreflightDownloadSU *)v5 disableUI], v8 == [(SUCorePolicyPreflightDownloadSU *)self disableUI]) && (v9 = [(SUCorePolicyPreflightDownloadSU *)v5 skipPhase], v9 == [(SUCorePolicyPreflightDownloadSU *)self skipPhase]))
      {
        v12 = [(SUCorePolicyPreflightDownloadSU *)v5 specifiedFields];
        v10 = v12 == [(SUCorePolicyPreflightDownloadSU *)self specifiedFields];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = [(SUCorePolicyPreflightDownloadSU *)self specifiedFields];
  if ([(SUCorePolicyPreflightDownloadSU *)self allowsCellular])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self discretionary])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self disableUI])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self skipPhase])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  v9 = @"none";
  if (v8)
  {
    v9 = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  }

  v10 = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
  if (v10)
  {
    v11 = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
    v12 = [v14 stringWithFormat:@"SUCorePolicyPreflightDownloadSU(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|skipPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v3, v4, v5, v6, v7, v9, v11];
  }

  else
  {
    v12 = [v14 stringWithFormat:@"SUCorePolicyPreflightDownloadSU(specifiedFields:0x%llX|allowsCellular:%@|discretionary:%@|disableUI:%@|skipPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v3, v4, v5, v6, v7, v9, @"none"];
  }

  if (v8)
  {
  }

  return v12;
}

- (id)summary
{
  if ([(SUCorePolicyPreflightDownloadSU *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyPreflightDownloadSU specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self allowsCellular])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|cellular"];

    v4 = v5;
  }

  if ([(SUCorePolicyPreflightDownloadSU *)self discretionary])
  {
    v6 = @"|discretionary";
  }

  else
  {
    v6 = @"|non-discretionary";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  if ([(SUCorePolicyPreflightDownloadSU *)self disableUI])
  {
    v8 = @"|UIDisabled";
  }

  else
  {
    v8 = @"|UIEnabled";
  }

  v9 = [v7 stringByAppendingString:v8];

  if ([(SUCorePolicyPreflightDownloadSU *)self skipPhase])
  {
    v10 = [v9 stringByAppendingString:@"|skipPhase"];

    v9 = v10;
  }

  v11 = [(SUCorePolicyPreflightDownloadSU *)self basePreflightOptions];
  if (v11)
  {
    v12 = @"|withBasePreflightOptions";
  }

  else
  {
    v12 = @"|noBasePreflightOptions";
  }

  v13 = [v9 stringByAppendingString:v12];

  v14 = [(SUCorePolicyPreflightDownloadSU *)self additionalOptions];
  if (v14)
  {
    v15 = @"|withAdditionalOptions";
  }

  else
  {
    v15 = @"|noAdditionalOptions";
  }

  v16 = [v13 stringByAppendingString:v15];

  if (([v16 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v17 = [v16 stringByAppendingString:@"|"];

    v16 = v17;
  }

  return v16;
}

@end