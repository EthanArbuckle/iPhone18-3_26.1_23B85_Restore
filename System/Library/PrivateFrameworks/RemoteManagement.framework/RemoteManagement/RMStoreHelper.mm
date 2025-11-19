@interface RMStoreHelper
+ (BOOL)hasDuplicateInContext:(id)a3 uri:(id)a4 storeType:(int64_t)a5 hasDuplicate:(BOOL *)a6 error:(id *)a7;
+ (BOOL)hasExistingSingletonTypeInContext:(id)a3 hasExisting:(BOOL *)a4 error:(id *)a5;
+ (id)descriptorForStoreType:(int64_t)a3;
@end

@implementation RMStoreHelper

+ (id)descriptorForStoreType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000D3180 + a3);
  }
}

+ (BOOL)hasExistingSingletonTypeInContext:(id)a3 hasExisting:(BOOL *)a4 error:(id *)a5
{
  v7 = [RMManagementSource fetchRequestWithEnrollmentTypes:&off_1000D6E20];
  [v7 setResultType:4];
  v14 = 0;
  v8 = [v7 execute:&v14];
  v9 = v14;
  v10 = [v8 firstObject];

  if (v10)
  {
    *a4 = [v10 longLongValue] > 0;
  }

  else
  {
    v11 = +[RMLog storeHelper];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100084DEC(v9, v11);
    }

    if (a5 && v9)
    {
      v12 = v9;
      *a5 = v9;
    }
  }

  return v10 != 0;
}

+ (BOOL)hasDuplicateInContext:(id)a3 uri:(id)a4 storeType:(int64_t)a5 hasDuplicate:(BOOL *)a6 error:(id *)a7
{
  v10 = a4;
  v11 = [RMManagementSource fetchRequestWithBootstrapURI:v10 enrollmentType:a5];
  [v11 setResultType:4];
  v18 = 0;
  v12 = [v11 execute:&v18];
  v13 = v18;
  v14 = [v12 firstObject];

  if (v14)
  {
    *a6 = [v14 longLongValue] > 0;
  }

  else
  {
    v15 = +[RMLog storeHelper];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543874;
      v20 = v10;
      v21 = 2048;
      v22 = a5;
      v23 = 2114;
      v24 = v13;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unable to fetch management source objects with uri %{public}@ and channel %ld: %{public}@", buf, 0x20u);
    }

    if (a7 && v13)
    {
      v16 = v13;
      *a7 = v13;
    }
  }

  return v14 != 0;
}

@end