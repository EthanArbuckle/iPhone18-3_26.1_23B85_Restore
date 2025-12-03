@interface RMCommandEngine
- (BOOL)_executeCommand:(id)command managementChannel:(id)channel error:(id *)error;
- (BOOL)_handleResultForCommand:(id)command status:(signed __int16)status result:(id)result reasons:(id)reasons unknownPayloadKeys:(id)keys error:(id)error outError:(id *)outError;
- (RMCommandEngine)initWithManagementSourceObjectID:(id)d context:(id)context;
- (id)_fetchCommand;
- (void)_processCommand:(id)command;
@end

@implementation RMCommandEngine

- (RMCommandEngine)initWithManagementSourceObjectID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = RMCommandEngine;
  v9 = [(RMCommandEngine *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managementSourceObjectID, d);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (void)_processCommand:(id)command
{
  commandCopy = command;
  v5 = _os_activity_create(&_mh_execute_header, "CommandEngine: executing pending command", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog commandEngine];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D594();
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10001C63C;
  v42 = sub_10001C64C;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10001C63C;
  v36 = sub_10001C64C;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10001C63C;
  v30 = sub_10001C64C;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  [(RMCommandEngine *)self context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001C654;
  v7 = v15[3] = &unk_1000D1538;
  v16 = v7;
  selfCopy = self;
  v18 = &v38;
  v19 = &v32;
  v20 = &v26;
  v21 = &v22;
  [v7 performBlockAndWait:v15];
  if (v27[5])
  {
    v8 = +[RMLog commandEngine];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D5C8();
    }
  }

  else if (v33[5])
  {
    v9 = +[RMLog commandEngine];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D5FC();
    }

    v10 = v33[5];
    v11 = v39[5];
    v12 = (v27 + 5);
    obj = v27[5];
    v13 = [(RMCommandEngine *)self _executeCommand:v10 managementChannel:v11 error:&obj];
    objc_storeStrong(v12, obj);
    *(v23 + 24) = v13;
    v8 = +[RMLog commandEngine];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D630();
    }
  }

  else
  {
    v8 = +[RMLog commandEngine];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D664();
    }
  }

  commandCopy[2](commandCopy, *(v23 + 24), v27[5]);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  os_activity_scope_leave(&state);
}

- (BOOL)_executeCommand:(id)command managementChannel:(id)channel error:(id *)error
{
  commandCopy = command;
  channelCopy = channel;
  v9 = [[NSConditionLock alloc] initWithCondition:0];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_10001C63C;
  v65 = sub_10001C64C;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10001C63C;
  v55 = sub_10001C64C;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10001C63C;
  v49 = sub_10001C64C;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10001C63C;
  v43 = sub_10001C64C;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10001C63C;
  v37 = sub_10001C64C;
  v38 = 0;
  v10 = commandCopy;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001CD60;
  v24[3] = &unk_1000D1798;
  v26 = &v61;
  v27 = &v57;
  v28 = &v51;
  v29 = &v45;
  v30 = &v39;
  v31 = &v33;
  v11 = v9;
  v25 = v11;
  v32 = 1;
  [v10 rm_executeRequestOnBehalfOfManagementChannel:channelCopy completionHandler:v24];
  [v11 lockWhenCondition:1];
  [v11 unlock];
  v12 = v62[5];
  v13 = *(v58 + 12);
  v14 = v52[5];
  v15 = v46[5];
  v16 = v40[5];
  v17 = v34[5];
  v23 = 0;
  v18 = [(RMCommandEngine *)self _handleResultForCommand:v12 status:v13 result:v14 reasons:v15 unknownPayloadKeys:v16 error:v17 outError:&v23];
  v19 = v23;
  if (error)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0 && v19)
  {
    v19 = v19;
    *error = v19;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  return v18;
}

- (id)_fetchCommand
{
  v3 = +[RMCommandPayload fetchRequest];
  managementSourceObjectID = [(RMCommandEngine *)self managementSourceObjectID];
  v5 = +[NSNull null];
  v6 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"managementSource", managementSourceObjectID, @"state", v5];
  [v3 setPredicate:v6];

  [v3 setFetchLimit:1];
  v12 = 0;
  v7 = [v3 execute:&v12];
  v8 = v12;
  if (v7)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    v10 = +[RMLog commandEngine];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10001D984(v8, v10);
    }

    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)_handleResultForCommand:(id)command status:(signed __int16)status result:(id)result reasons:(id)reasons unknownPayloadKeys:(id)keys error:(id)error outError:(id *)outError
{
  commandCopy = command;
  resultCopy = result;
  reasonsCopy = reasons;
  keysCopy = keys;
  errorCopy = error;
  v20 = _os_activity_create(&_mh_execute_header, "CommandEngine: processing command result", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v20, &state);
  context = [(RMCommandEngine *)self context];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10001C63C;
  v44 = sub_10001C64C;
  v45 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001D258;
  v31[3] = &unk_1000D17C0;
  v22 = commandCopy;
  v32 = v22;
  v38 = &v40;
  v23 = errorCopy;
  v33 = v23;
  v24 = reasonsCopy;
  v34 = v24;
  statusCopy = status;
  v25 = resultCopy;
  v35 = v25;
  v26 = keysCopy;
  v36 = v26;
  v27 = context;
  v37 = v27;
  [v27 performBlockAndWait:v31];
  v28 = v41[5];
  if (outError && v28)
  {
    v28 = v28;
    *outError = v28;
  }

  v29 = v28 == 0;

  _Block_object_dispose(&v40, 8);
  os_activity_scope_leave(&state);

  return v29;
}

@end