@interface REElementUserActivityShortcutAction
- (BOOL)isEqual:(id)equal;
- (REElementUserActivityShortcutAction)initWithUserActivity:(id)activity applicationID:(id)d isLocalDonation:(BOOL)donation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_submitMetricsWithSuccess:(BOOL)success;
@end

@implementation REElementUserActivityShortcutAction

- (REElementUserActivityShortcutAction)initWithUserActivity:(id)activity applicationID:(id)d isLocalDonation:(BOOL)donation
{
  v7.receiver = self;
  v7.super_class = REElementUserActivityShortcutAction;
  result = [(REElementUserActivityAction *)&v7 initWithUserActivity:activity applicationID:d];
  if (result)
  {
    result->_isLocalDonation = donation;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = REElementUserActivityShortcutAction;
  result = [(REElementUserActivityShortcutAction *)&v5 copy];
  *(result + 40) = self->_isLocalDonation;
  return result;
}

- (void)_submitMetricsWithSuccess:(BOOL)success
{
  successCopy = success;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  [v12 setObject:@"activityAppLaunch" forKey:@"actionType"];
  isLocalDonation = [(REElementUserActivityShortcutAction *)self isLocalDonation];
  v6 = RELocal;
  if (!isLocalDonation)
  {
    v6 = RERemote;
  }

  [v12 setObject:*v6 forKey:@"deviceSource"];
  v7 = RETrue;
  if (!successCopy)
  {
    v7 = REFalse;
  }

  [v12 setObject:*v7 forKey:@"success"];
  applicationID = [(REElementUserActivityAction *)self applicationID];
  v9 = applicationID;
  v10 = @"unknown";
  if (applicationID)
  {
    v10 = applicationID;
  }

  v11 = v10;

  [v12 setObject:v11 forKey:@"bundleID"];
  RESubmitShortcutExecution(v12);
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = REElementUserActivityShortcutAction;
  return [(REElementUserActivityAction *)&v3 hash]^ self->_isLocalDonation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v8.receiver = self;
    v8.super_class = REElementUserActivityShortcutAction;
    if ([(REElementUserActivityAction *)&v8 isEqual:v5])
    {
      v6 = self->_isLocalDonation == v5[40];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end