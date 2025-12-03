@interface TSDDaemonServiceServerExported
- (TSDDaemonServiceServer)object;
- (void)propertiesForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD reply:(id)reply;
- (void)propertyForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD key:(id)key reply:(id)reply;
- (void)startMSGExternalSync:(id *)sync reply:(id)reply;
@end

@implementation TSDDaemonServiceServerExported

- (void)propertyForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD key:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  v10 = [IOKService entryIDMatching:d];
  v11 = [IOKService matchingService:v10];

  if (v11)
  {
    v12 = [v11 propertyForKey:keyCopy];
  }

  else
  {
    sub_10002CC54(&v13);
    v12 = v13;
  }

  replyCopy[2](replyCopy, v12);
}

- (void)propertiesForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD reply:(id)reply
{
  replyCopy = reply;
  v7 = [IOKService entryIDMatching:d];
  v8 = [IOKService matchingService:v7];

  if (v8)
  {
    properties = [v8 properties];
  }

  else
  {
    sub_10002CD20(&v10);
    properties = v10;
  }

  replyCopy[2](replyCopy, properties);
}

- (void)startMSGExternalSync:(id *)sync reply:(id)reply
{
  replyCopy = reply;
  if (qword_1000588A0)
  {
    v7 = +[NSXPCConnection currentConnection];
    v8 = qword_1000588A0;
    processID = self->_processID;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001C7FC;
    v12[3] = &unk_10004D0D8;
    v12[4] = self;
    v13 = v7;
    v10 = v7;
    v11 = [v8 startExternalSync:sync forProcess:processID withCallback:v12];
  }

  else
  {
    v11 = 3758097095;
  }

  replyCopy[2](replyCopy, v11);
}

- (TSDDaemonServiceServer)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end