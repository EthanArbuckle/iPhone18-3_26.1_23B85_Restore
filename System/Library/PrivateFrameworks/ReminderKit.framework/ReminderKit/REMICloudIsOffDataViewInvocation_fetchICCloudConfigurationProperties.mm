@interface REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties
- (BOOL)isEqual:(id)equal;
- (REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties)init;
- (unint64_t)hash;
@end

@implementation REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties

- (REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties)init
{
  v3.receiver = self;
  v3.super_class = REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties;
  return [(REMStoreInvocationValueStorage *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end