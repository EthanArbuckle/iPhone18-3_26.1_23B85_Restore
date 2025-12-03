@interface TCCDSyncRequestAccessAction
+ (id)requestAccessActionFromIDSMessage:(id)message mainSyncController:(id)controller;
- (id)idsMessageDictionary;
@end

@implementation TCCDSyncRequestAccessAction

+ (id)requestAccessActionFromIDSMessage:(id)message mainSyncController:(id)controller
{
  controllerCopy = controller;
  messageCopy = message;
  v7 = [messageCopy objectForKeyedSubscript:@"TCCDSyncAccessActionServiceIdentifierKey"];
  v8 = [messageCopy objectForKeyedSubscript:@"TCCDSyncAccessActionReplicaClientIdentifierKey"];
  v9 = [messageCopy objectForKeyedSubscript:@"TCCDSyncAccessActionClientTypeKey"];
  v10 = [messageCopy objectForKeyedSubscript:@"TCCDSyncAccessActionDesiredAuthKey"];

  if (v7 && v8 && v9 && v10)
  {
    v11 = [controllerCopy mainClientIdentifierForReplicaClientIdentifier:v8];
    if (v11)
    {
      v12 = -[TCCDSyncClientAccessAction initWithServiceIdentifier:mainClientIdentifier:replicaClientIdentifier:clientType:]([TCCDSyncRequestAccessAction alloc], "initWithServiceIdentifier:mainClientIdentifier:replicaClientIdentifier:clientType:", v7, v11, v8, [v9 intValue]);
      -[TCCDSyncRequestAccessAction setDesiredAuth:](v12, "setDesiredAuth:", [v10 intValue]);
    }

    else
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000603C0();
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "+[TCCDSyncRequestAccessAction requestAccessActionFromIDSMessage:mainSyncController:]";
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: malformed access update message: serviceID: %p, replicaClientID: %p, clientTypeNumber: %p", &v15, 0x2Au);
    }

    v12 = 0;
  }

  return v12;
}

- (id)idsMessageDictionary
{
  v9[0] = @"TCCDSyncAccessActionServiceIdentifierKey";
  serviceIdentifier = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v10[0] = serviceIdentifier;
  v9[1] = @"TCCDSyncAccessActionReplicaClientIdentifierKey";
  replicaClientIdentifier = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
  v10[1] = replicaClientIdentifier;
  v9[2] = @"TCCDSyncAccessActionClientTypeKey";
  v5 = [NSNumber numberWithInt:[(TCCDSyncClientAccessAction *)self clientType]];
  v10[2] = v5;
  v9[3] = @"TCCDSyncAccessActionDesiredAuthKey";
  v6 = [NSNumber numberWithLongLong:[(TCCDSyncRequestAccessAction *)self desiredAuth]];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end