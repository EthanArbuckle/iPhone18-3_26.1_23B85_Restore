@interface CNContactStore
- (BOOL)ABSexecuteSaveRequest:(id)request error:(id *)error;
- (void)ABSsetMeCardConditionally:(id)conditionally;
@end

@implementation CNContactStore

- (BOOL)ABSexecuteSaveRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = objc_alloc_init(NDTPerf);
  kdebug_trace();
  v8 = [(CNContactStore *)self executeSaveRequest:requestCopy error:error];

  kdebug_trace();
  v9 = [NDTPerf nowMinusPrevious:v7];
  v10 = *(qword_100071D08 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Save #perf metrics: %{public}@", &v12, 0xCu);
  }

  return v8;
}

- (void)ABSsetMeCardConditionally:(id)conditionally
{
  conditionallyCopy = conditionally;
  v22 = CNContactIdentifierKey;
  v5 = [NSArray arrayWithObjects:&v22 count:1];
  v19 = 0;
  v6 = [(CNContactStore *)self _ios_meContactWithKeysToFetch:v5 error:&v19];
  v7 = v19;
  identifier = [v6 identifier];
  identifier2 = [conditionallyCopy identifier];
  v10 = [identifier isEqual:identifier2];

  if (v10)
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Not setting me card, flat contact result matches.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  identifier3 = [conditionallyCopy identifier];
  v14 = [v6 isUnifiedWithContactWithIdentifier:identifier3];

  if (v14)
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Not setting me card, unified contact matches.";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v18 = v7;
  [(CNContactStore *)self setMeContact:conditionallyCopy error:&v18];
  v15 = v18;

  v16 = *(qword_100071D00 + 8);
  if (!v15)
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = v16;
    identifier4 = [conditionallyCopy identifier];
    *buf = 138543362;
    v21 = identifier4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Me card set to contact %{public}@", buf, 0xCu);

    goto LABEL_8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10003A074(v15, v16);
  }

LABEL_9:
}

@end