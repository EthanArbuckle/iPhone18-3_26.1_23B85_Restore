@interface TSDDaemonServiceServerExported
- (TSDDaemonServiceServer)object;
- (void)propertiesForRegistryEntryID:(unint64_t)a3 signpostID:(unint64_t)a4 reply:(id)a5;
- (void)propertyForRegistryEntryID:(unint64_t)a3 signpostID:(unint64_t)a4 key:(id)a5 reply:(id)a6;
- (void)startMSGExternalSync:(id *)a3 reply:(id)a4;
@end

@implementation TSDDaemonServiceServerExported

- (void)propertyForRegistryEntryID:(unint64_t)a3 signpostID:(unint64_t)a4 key:(id)a5 reply:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [IOKService entryIDMatching:a3];
  v11 = [IOKService matchingService:v10];

  if (v11)
  {
    v12 = [v11 propertyForKey:v8];
  }

  else
  {
    sub_10002CC54(&v13);
    v12 = v13;
  }

  v9[2](v9, v12);
}

- (void)propertiesForRegistryEntryID:(unint64_t)a3 signpostID:(unint64_t)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [IOKService entryIDMatching:a3];
  v8 = [IOKService matchingService:v7];

  if (v8)
  {
    v9 = [v8 properties];
  }

  else
  {
    sub_10002CD20(&v10);
    v9 = v10;
  }

  v6[2](v6, v9);
}

- (void)startMSGExternalSync:(id *)a3 reply:(id)a4
{
  v6 = a4;
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
    v11 = [v8 startExternalSync:a3 forProcess:processID withCallback:v12];
  }

  else
  {
    v11 = 3758097095;
  }

  v6[2](v6, v11);
}

- (TSDDaemonServiceServer)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end