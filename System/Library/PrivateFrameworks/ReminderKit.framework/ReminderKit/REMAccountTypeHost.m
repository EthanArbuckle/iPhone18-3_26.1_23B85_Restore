@interface REMAccountTypeHost
- (BOOL)isCloudBased;
- (BOOL)isCloudKit;
- (BOOL)isEqual:(id)a3;
- (REMAccountTypeHost)initWithType:(int64_t)a3;
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

- (REMAccountTypeHost)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = REMAccountTypeHost;
  result = [(REMAccountTypeHost *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (BOOL)isCloudBased
{
  v2 = [(REMAccountTypeHost *)self type];

  return [REMAccount isCloudBasedAccountType:v2];
}

- (id)description
{
  v2 = [(REMAccountTypeHost *)self type];

  return NSStringFromREMAccountType(v2);
}

- (id)internalDescription
{
  v2 = [(REMAccountTypeHost *)self type];

  return REMInternalDescriptionFromREMAccountType(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(REMAccountTypeHost *)self type];
      v6 = v5 == [(REMAccountTypeHost *)v4 type];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end