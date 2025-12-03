@interface KTStatusResult
- (BOOL)isEqual:(id)equal;
- (KTStatusResult)initWithCoder:(id)coder;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTStatusResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTStatusResult optIn](self, "optIn")}];
  [coderCopy encodeObject:v4 forKey:@"optInState"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTStatusResult serverOptIn](self, "serverOptIn")}];
  [coderCopy encodeObject:v5 forKey:@"serverOptInState"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTStatusResult accountStatus](self, "accountStatus")}];
  [coderCopy encodeObject:v6 forKey:@"accountStatus"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTStatusResult systemStatus](self, "systemStatus")}];
  [coderCopy encodeObject:v7 forKey:@"systemStatus"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTStatusResult selfStatus](self, "selfStatus")}];
  [coderCopy encodeObject:v8 forKey:@"selfStatus"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTStatusResult idsAccountStatus](self, "idsAccountStatus")}];
  [coderCopy encodeObject:v9 forKey:@"idsAccountStatus"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTStatusResult pendingStatusChanges](self, "pendingStatusChanges")}];
  [coderCopy encodeObject:v10 forKey:@"pendingChanges"];

  recentFailedEventIds = [(KTStatusResult *)self recentFailedEventIds];

  if (recentFailedEventIds)
  {
    recentFailedEventIds2 = [(KTStatusResult *)self recentFailedEventIds];
    [coderCopy encodeObject:recentFailedEventIds2 forKey:@"failureEventIds"];
  }

  expectedSelfResolutionDate = [(KTStatusResult *)self expectedSelfResolutionDate];

  if (expectedSelfResolutionDate)
  {
    expectedSelfResolutionDate2 = [(KTStatusResult *)self expectedSelfResolutionDate];
    [coderCopy encodeObject:expectedSelfResolutionDate2 forKey:@"selfResolutionDate"];
  }
}

- (KTStatusResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optInState"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverOptInState"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountStatus"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemStatus"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfStatus"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsAccountStatus"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingChanges"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"failureEventIds"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfResolutionDate"];

  v15 = objc_alloc_init(KTStatusResult);
  [(KTStatusResult *)v15 setRecentFailedEventIds:v13];
  [(KTStatusResult *)v15 setExpectedSelfResolutionDate:v14];
  v16 = [v4 kt_enumValueWithMax:2 defaultValue:2];
  [(KTStatusResult *)v15 setOptIn:v16];
  [(KTStatusResult *)v15 setOptInState:v16 == 1];
  -[KTStatusResult setServerOptIn:](v15, "setServerOptIn:", [v18 kt_enumValueWithMax:2 defaultValue:2]);
  -[KTStatusResult setAccountStatus:](v15, "setAccountStatus:", [v5 kt_enumValueWithMax:5 defaultValue:0]);
  -[KTStatusResult setSystemStatus:](v15, "setSystemStatus:", [v6 kt_enumValueWithMax:5 defaultValue:2]);
  -[KTStatusResult setSelfStatus:](v15, "setSelfStatus:", [v7 kt_enumValueWithMax:4 defaultValue:2]);
  -[KTStatusResult setIdsAccountStatus:](v15, "setIdsAccountStatus:", [v8 kt_enumValueWithMax:3 defaultValue:0]);
  -[KTStatusResult setPendingStatusChanges:](v15, "setPendingStatusChanges:", [v9 BOOLValue]);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      optIn = [(KTStatusResult *)self optIn];
      if (optIn == [(KTStatusResult *)v5 optIn]&& (v7 = [(KTStatusResult *)self accountStatus], v7 == [(KTStatusResult *)v5 accountStatus]) && (v8 = [(KTStatusResult *)self systemStatus], v8 == [(KTStatusResult *)v5 systemStatus]) && (v9 = [(KTStatusResult *)self selfStatus], v9 == [(KTStatusResult *)v5 selfStatus]) && (v10 = [(KTStatusResult *)self idsAccountStatus], v10 == [(KTStatusResult *)v5 idsAccountStatus]))
      {
        pendingStatusChanges = [(KTStatusResult *)self pendingStatusChanges];
        v12 = pendingStatusChanges ^ [(KTStatusResult *)v5 pendingStatusChanges]^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = KTOptInGetString([(KTStatusResult *)self optIn]);
  v5 = KTOptInGetString([(KTStatusResult *)self serverOptIn]);
  v6 = KTAccountStatusGetString([(KTStatusResult *)self accountStatus]);
  v7 = [(KTStatusResult *)self systemStatus]- 1;
  if (v7 > 4)
  {
    v8 = @"OK";
  }

  else
  {
    v8 = off_1E87017D8[v7];
  }

  v9 = [(KTStatusResult *)self selfStatus]- 1;
  if (v9 > 3)
  {
    v10 = @"OK";
  }

  else
  {
    v10 = off_1E8701800[v9];
  }

  v11 = [(KTStatusResult *)self idsAccountStatus]- 1;
  if (v11 > 2)
  {
    v12 = @"IDSAccountStatusInvalid";
  }

  else
  {
    v12 = off_1E8701820[v11];
  }

  pendingStatusChanges = [(KTStatusResult *)self pendingStatusChanges];
  v14 = @"NO";
  if (pendingStatusChanges)
  {
    v14 = @"YES";
  }

  v15 = [v3 stringWithFormat:@"KTStatus: optIn = %@, serverOptIn = %@, accountStatus = %@, systemStatus = %@, selfStatus = %@, idsAccountStatus = %@, pendingChanges: %@\n", v4, v5, v6, v8, v10, v12, v14];

  expectedSelfResolutionDate = [(KTStatusResult *)self expectedSelfResolutionDate];

  if (expectedSelfResolutionDate)
  {
    expectedSelfResolutionDate2 = [(KTStatusResult *)self expectedSelfResolutionDate];
    [v15 appendFormat:@" expectedSelfResolutionDate: %@\n", expectedSelfResolutionDate2];
  }

  recentFailedEventIds = [(KTStatusResult *)self recentFailedEventIds];

  if (recentFailedEventIds)
  {
    recentFailedEventIds2 = [(KTStatusResult *)self recentFailedEventIds];
    [v15 appendFormat:@" failureEventIds: %@", recentFailedEventIds2];
  }

  return v15;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"2" forKeyedSubscript:@"copy_status_version"];
  v4 = KTOptInGetString([(KTStatusResult *)self optIn]);
  [dictionary setObject:v4 forKeyedSubscript:@"optedIn"];

  v5 = KTOptInGetString([(KTStatusResult *)self serverOptIn]);
  [dictionary setObject:v5 forKeyedSubscript:@"serverOptedIn"];

  v6 = KTAccountStatusGetString([(KTStatusResult *)self accountStatus]);
  [dictionary setObject:v6 forKeyedSubscript:@"accountStatus"];

  v7 = [(KTStatusResult *)self systemStatus]- 1;
  if (v7 > 4)
  {
    v8 = @"OK";
  }

  else
  {
    v8 = off_1E87017D8[v7];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"systemStatus"];
  v9 = [(KTStatusResult *)self selfStatus]- 1;
  if (v9 > 3)
  {
    v10 = @"OK";
  }

  else
  {
    v10 = off_1E8701800[v9];
  }

  [dictionary setObject:v10 forKeyedSubscript:@"selfStatus"];
  v11 = [(KTStatusResult *)self idsAccountStatus]- 1;
  if (v11 > 2)
  {
    v12 = @"IDSAccountStatusInvalid";
  }

  else
  {
    v12 = off_1E8701820[v11];
  }

  [dictionary setObject:v12 forKeyedSubscript:@"idsAccountStatus"];
  if ([(KTStatusResult *)self pendingStatusChanges])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [dictionary setObject:v13 forKeyedSubscript:@"pendingChanges"];

  return dictionary;
}

@end