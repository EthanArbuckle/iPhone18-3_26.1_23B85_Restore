@interface REElementUserActivityAction
- (BOOL)isEqual:(id)equal;
- (REElementUserActivityAction)initWithUserActivity:(id)activity applicationID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_performWithContext:(id)context;
@end

@implementation REElementUserActivityAction

- (REElementUserActivityAction)initWithUserActivity:(id)activity applicationID:(id)d
{
  activityCopy = activity;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REElementUserActivityAction;
  v9 = [(REElementUserActivityAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userActivity, activity);
    objc_storeStrong(&v10->_applicationID, d);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REElementUserActivityAction;
  v4 = [(REElementUserActivityAction *)&v6 copy];
  objc_storeStrong(v4 + 3, self->_userActivity);
  objc_storeStrong(v4 + 4, self->_applicationID);
  return v4;
}

- (void)_performWithContext:(id)context
{
  userActivity = self->_userActivity;
  if (userActivity)
  {
    applicationID = self->_applicationID;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__REElementUserActivityAction__performWithContext___block_invoke;
    v6[3] = &unk_2785F9FF0;
    v6[4] = self;
    REOpenUserActivity(userActivity, applicationID, v6);
  }
}

uint64_t __51__REElementUserActivityAction__performWithContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2 == 0;
  [*(a1 + 32) _didFinish:v3];
  v4 = *(a1 + 32);

  return [v4 _submitMetricsWithSuccess:v3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = REElementUserActivityAction;
  v3 = [(REElementUserActivityAction *)&v7 description];
  userActivity = self->_userActivity;
  v5 = [v3 stringByAppendingFormat:@" userActivity=%@, applicationId=%@", userActivity, self->_applicationID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[3];
    v7 = self->_userActivity;
    v8 = v7;
    if (v7 == v6)
    {
    }

    else
    {
      v9 = [(NSUserActivity *)v7 isEqual:v6];

      if (!v9)
      {
        v10 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    applicationID = self->_applicationID;
    v12 = v5[4];
    v13 = applicationID;
    v14 = v13;
    if (v13 == v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = [(NSString *)v13 isEqual:v12];
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end