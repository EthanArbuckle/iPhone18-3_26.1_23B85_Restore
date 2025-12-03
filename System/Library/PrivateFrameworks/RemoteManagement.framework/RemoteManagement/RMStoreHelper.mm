@interface RMStoreHelper
+ (BOOL)hasDuplicateInContext:(id)context uri:(id)uri storeType:(int64_t)type hasDuplicate:(BOOL *)duplicate error:(id *)error;
+ (BOOL)hasExistingSingletonTypeInContext:(id)context hasExisting:(BOOL *)existing error:(id *)error;
+ (id)descriptorForStoreType:(int64_t)type;
@end

@implementation RMStoreHelper

+ (id)descriptorForStoreType:(int64_t)type
{
  if (type > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000D3180 + type);
  }
}

+ (BOOL)hasExistingSingletonTypeInContext:(id)context hasExisting:(BOOL *)existing error:(id *)error
{
  v7 = [RMManagementSource fetchRequestWithEnrollmentTypes:&off_1000D6E20];
  [v7 setResultType:4];
  v14 = 0;
  v8 = [v7 execute:&v14];
  v9 = v14;
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    *existing = [firstObject longLongValue] > 0;
  }

  else
  {
    v11 = +[RMLog storeHelper];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100084DEC(v9, v11);
    }

    if (error && v9)
    {
      v12 = v9;
      *error = v9;
    }
  }

  return firstObject != 0;
}

+ (BOOL)hasDuplicateInContext:(id)context uri:(id)uri storeType:(int64_t)type hasDuplicate:(BOOL *)duplicate error:(id *)error
{
  uriCopy = uri;
  v11 = [RMManagementSource fetchRequestWithBootstrapURI:uriCopy enrollmentType:type];
  [v11 setResultType:4];
  v18 = 0;
  v12 = [v11 execute:&v18];
  v13 = v18;
  firstObject = [v12 firstObject];

  if (firstObject)
  {
    *duplicate = [firstObject longLongValue] > 0;
  }

  else
  {
    v15 = +[RMLog storeHelper];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543874;
      v20 = uriCopy;
      v21 = 2048;
      typeCopy = type;
      v23 = 2114;
      v24 = v13;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unable to fetch management source objects with uri %{public}@ and channel %ld: %{public}@", buf, 0x20u);
    }

    if (error && v13)
    {
      v16 = v13;
      *error = v13;
    }
  }

  return firstObject != 0;
}

@end