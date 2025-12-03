@interface REMAccountTypeHost
- (BOOL)isCloudBased;
- (BOOL)isCloudKit;
- (BOOL)isEqual:(id)equal;
- (REMAccountTypeHost)initWithType:(int64_t)type;
- (id)description;
- (id)internalDescription;
@end

@implementation REMAccountTypeHost

- (BOOL)isCloudKit
{
  if ([(REMAccountTypeHost *)self isPrimaryCloudKit])
  {
    return 1;
  }

  return [(REMAccountTypeHost *)self isNonPrimaryCloudKit];
}

- (REMAccountTypeHost)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = REMAccountTypeHost;
  result = [(REMAccountTypeHost *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (BOOL)isCloudBased
{
  type = [(REMAccountTypeHost *)self type];

  return [REMAccount isCloudBasedAccountType:type];
}

- (id)description
{
  type = [(REMAccountTypeHost *)self type];

  return NSStringFromREMAccountType(type);
}

- (id)internalDescription
{
  type = [(REMAccountTypeHost *)self type];

  return REMInternalDescriptionFromREMAccountType(type);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = [(REMAccountTypeHost *)self type];
      v6 = type == [(REMAccountTypeHost *)equalCopy type];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end