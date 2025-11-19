@interface CSDPTTServiceUpdatePushBudget
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCSDPTTServiceUpdatePushBudget:(id)a3;
- (CSDPTTServiceUpdatePushBudget)initWithApplicationBundleIdentifier:(id)a3 budgetStartTime:(id)a4 serviceUpdatesDelivered:(int64_t)a5;
- (CSDPTTServiceUpdatePushBudget)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSDPTTServiceUpdatePushBudget

- (CSDPTTServiceUpdatePushBudget)initWithApplicationBundleIdentifier:(id)a3 budgetStartTime:(id)a4 serviceUpdatesDelivered:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CSDPTTServiceUpdatePushBudget;
  v10 = [(CSDPTTServiceUpdatePushBudget *)&v16 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        v11 = [v8 copy];
        applicationBundleIdentifier = v10->_applicationBundleIdentifier;
        v10->_applicationBundleIdentifier = v11;

        v13 = [v9 copy];
        budgetStartTime = v10->_budgetStartTime;
        v10->_budgetStartTime = v13;

        v10->_serviceUpdatesDelivered = a5;
        goto LABEL_5;
      }
    }

    else
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPTTServiceUpdatePushBudget initWithApplicationBundleIdentifier:budgetStartTime:serviceUpdatesDelivered:]", @"applicationBundleIdentifier"];
      if (v9)
      {
        goto LABEL_4;
      }
    }

    [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPTTServiceUpdatePushBudget initWithApplicationBundleIdentifier:budgetStartTime:serviceUpdatesDelivered:]", @"budgetStartTime"];
    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  v5 = a3;
  v6 = NSStringFromSelector("applicationBundleIdentifier");
  [v5 encodeObject:applicationBundleIdentifier forKey:v6];

  budgetStartTime = self->_budgetStartTime;
  v8 = NSStringFromSelector("budgetStartTime");
  [v5 encodeObject:budgetStartTime forKey:v8];

  serviceUpdatesDelivered_low = LODWORD(self->_serviceUpdatesDelivered);
  v10 = NSStringFromSelector("serviceUpdatesDelivered");
  [v5 encodeInt:serviceUpdatesDelivered_low forKey:v10];
}

- (CSDPTTServiceUpdatePushBudget)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CSDPTTServiceUpdatePushBudget;
  v5 = [(CSDPTTServiceUpdatePushBudget *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("applicationBundleIdentifier");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("budgetStartTime");
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    budgetStartTime = v5->_budgetStartTime;
    v5->_budgetStartTime = v12;

    v14 = NSStringFromSelector("serviceUpdatesDelivered");
    v5->_serviceUpdatesDelivered = [v4 decodeIntForKey:v14];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CSDPTTServiceUpdatePushBudget *)self isEqualToCSDPTTServiceUpdatePushBudget:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCSDPTTServiceUpdatePushBudget:(id)a3
{
  v4 = a3;
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  v6 = [v4 applicationBundleIdentifier];
  if (TUObjectsAreEqualOrNil())
  {
    budgetStartTime = self->_budgetStartTime;
    v8 = [v4 budgetStartTime];
    if (TUObjectsAreEqualOrNil())
    {
      serviceUpdatesDelivered = self->_serviceUpdatesDelivered;
      v10 = serviceUpdatesDelivered == [v4 serviceUpdatesDelivered];
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

  return v10;
}

+ (id)unarchivedObjectClasses
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, objc_opt_class(), 0];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v6 error:a4];

  return v8;
}

@end