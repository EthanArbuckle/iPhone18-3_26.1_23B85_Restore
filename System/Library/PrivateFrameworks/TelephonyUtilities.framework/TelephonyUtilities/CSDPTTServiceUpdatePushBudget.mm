@interface CSDPTTServiceUpdatePushBudget
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCSDPTTServiceUpdatePushBudget:(id)budget;
- (CSDPTTServiceUpdatePushBudget)initWithApplicationBundleIdentifier:(id)identifier budgetStartTime:(id)time serviceUpdatesDelivered:(int64_t)delivered;
- (CSDPTTServiceUpdatePushBudget)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSDPTTServiceUpdatePushBudget

- (CSDPTTServiceUpdatePushBudget)initWithApplicationBundleIdentifier:(id)identifier budgetStartTime:(id)time serviceUpdatesDelivered:(int64_t)delivered
{
  identifierCopy = identifier;
  timeCopy = time;
  v16.receiver = self;
  v16.super_class = CSDPTTServiceUpdatePushBudget;
  v10 = [(CSDPTTServiceUpdatePushBudget *)&v16 init];
  if (v10)
  {
    if (identifierCopy)
    {
      if (timeCopy)
      {
LABEL_4:
        v11 = [identifierCopy copy];
        applicationBundleIdentifier = v10->_applicationBundleIdentifier;
        v10->_applicationBundleIdentifier = v11;

        v13 = [timeCopy copy];
        budgetStartTime = v10->_budgetStartTime;
        v10->_budgetStartTime = v13;

        v10->_serviceUpdatesDelivered = delivered;
        goto LABEL_5;
      }
    }

    else
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDPTTServiceUpdatePushBudget initWithApplicationBundleIdentifier:budgetStartTime:serviceUpdatesDelivered:]", @"applicationBundleIdentifier"];
      if (timeCopy)
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

- (void)encodeWithCoder:(id)coder
{
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector("applicationBundleIdentifier");
  [coderCopy encodeObject:applicationBundleIdentifier forKey:v6];

  budgetStartTime = self->_budgetStartTime;
  v8 = NSStringFromSelector("budgetStartTime");
  [coderCopy encodeObject:budgetStartTime forKey:v8];

  serviceUpdatesDelivered_low = LODWORD(self->_serviceUpdatesDelivered);
  v10 = NSStringFromSelector("serviceUpdatesDelivered");
  [coderCopy encodeInt:serviceUpdatesDelivered_low forKey:v10];
}

- (CSDPTTServiceUpdatePushBudget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CSDPTTServiceUpdatePushBudget;
  v5 = [(CSDPTTServiceUpdatePushBudget *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("applicationBundleIdentifier");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("budgetStartTime");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    budgetStartTime = v5->_budgetStartTime;
    v5->_budgetStartTime = v12;

    v14 = NSStringFromSelector("serviceUpdatesDelivered");
    v5->_serviceUpdatesDelivered = [coderCopy decodeIntForKey:v14];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CSDPTTServiceUpdatePushBudget *)self isEqualToCSDPTTServiceUpdatePushBudget:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCSDPTTServiceUpdatePushBudget:(id)budget
{
  budgetCopy = budget;
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  applicationBundleIdentifier = [budgetCopy applicationBundleIdentifier];
  if (TUObjectsAreEqualOrNil())
  {
    budgetStartTime = self->_budgetStartTime;
    budgetStartTime = [budgetCopy budgetStartTime];
    if (TUObjectsAreEqualOrNil())
    {
      serviceUpdatesDelivered = self->_serviceUpdatesDelivered;
      v10 = serviceUpdatesDelivered == [budgetCopy serviceUpdatesDelivered];
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v8;
}

@end