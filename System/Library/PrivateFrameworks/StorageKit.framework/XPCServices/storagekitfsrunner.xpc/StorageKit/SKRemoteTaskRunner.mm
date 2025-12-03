@interface SKRemoteTaskRunner
- (SKRemoteTaskRunner)initWithConnection:(id)connection;
- (void)formatAPFSWithName:(id)name diskIdentifier:(id)identifier caseSensitive:(BOOL)sensitive password:(id)password withReply:(id)reply;
- (void)runTask:(id)task arguments:(id)arguments withReply:(id)reply;
@end

@implementation SKRemoteTaskRunner

- (SKRemoteTaskRunner)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = SKRemoteTaskRunner;
  v6 = [(SKRemoteTaskRunner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)runTask:(id)task arguments:(id)arguments withReply:(id)reply
{
  replyCopy = reply;
  argumentsCopy = arguments;
  taskCopy = task;
  v11 = [[SKTask alloc] initWithExecutable:taskCopy arguments:argumentsCopy];

  v12 = dispatch_queue_create("com.apple.storagekitfsrunner.queue", &_dispatch_queue_attr_concurrent);
  selfCopy = self;
  connection = [(SKRemoteTaskRunner *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  v15 = [SKTaskRawParser alloc];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100004404;
  v39[3] = &unk_1000084F0;
  v16 = v12;
  v40 = v16;
  v17 = remoteObjectProxy;
  v41 = v17;
  v18 = [(SKTaskRawParser *)v15 initWithCallback:v39];
  [(SKTask *)v11 setStdoutParser:v18];

  v19 = [SKTaskRawParser alloc];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100004504;
  v36[3] = &unk_1000084F0;
  v20 = v16;
  v37 = v20;
  v21 = v17;
  v38 = v21;
  v22 = [(SKTaskRawParser *)v19 initWithCallback:v36];
  [(SKTask *)v11 setStderrParser:v22];

  v23 = [SKTaskExecuter alloc];
  v46 = v11;
  v24 = [NSArray arrayWithObjects:&v46 count:1];
  v25 = [(SKTaskExecuter *)v23 initWithTasks:v24];

  v35 = 0;
  v26 = [(SKTaskExecuter *)v25 waitWithError:&v35];
  v27 = v35;
  [(SKTask *)v11 setStderrParser:0];
  [(SKTask *)v11 setStdoutParser:0];
  dispatch_barrier_sync(v20, &stru_100008510);
  stdoutHandle = [(SKTask *)v11 stdoutHandle];
  readDataToEndOfFile = [stdoutHandle readDataToEndOfFile];

  if (readDataToEndOfFile && [readDataToEndOfFile length])
  {
    [v21 sendStdout:readDataToEndOfFile];
  }

  stderrHandle = [(SKTask *)v11 stderrHandle];
  readDataToEndOfFile2 = [stderrHandle readDataToEndOfFile];

  if (readDataToEndOfFile2 && [readDataToEndOfFile2 length])
  {
    [v21 sendStderr:readDataToEndOfFile2];
  }

  v32 = SKGetOSLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "[SKRemoteTaskRunner runTask:arguments:withReply:]";
    v44 = 1024;
    v45 = v26;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: Replying with %d", buf, 0x12u);
  }

  v33 = [NSNumber numberWithBool:v26 ^ 1];
  replyCopy[2](replyCopy, v33, v27);

  [(NSXPCConnection *)selfCopy->_connection invalidate];
}

- (void)formatAPFSWithName:(id)name diskIdentifier:(id)identifier caseSensitive:(BOOL)sensitive password:(id)password withReply:(id)reply
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  passwordCopy = password;
  if (sensitiveCopy)
  {
    v14 = @"-e";
  }

  else
  {
    v14 = @"-i";
  }

  replyCopy = reply;
  nameCopy = name;
  identifierCopy = [NSString stringWithFormat:@"/dev/%@", identifierCopy];
  v18 = [NSArray arrayWithObjects:v14, @"-v", nameCopy, @"-w", identifierCopy, 0];

  if (passwordCopy)
  {
    v31[0] = @"-E";
    v31[1] = @"-S";
    v31[2] = passwordCopy;
    v19 = [NSArray arrayWithObjects:v31 count:3];
    v20 = [v19 arrayByAddingObjectsFromArray:v18];

    v18 = v20;
  }

  v21 = SKGetOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "[SKRemoteTaskRunner formatAPFSWithName:diskIdentifier:caseSensitive:password:withReply:]";
    v25 = 2112;
    v26 = apfsFormatterPath;
    v27 = 2112;
    v28 = identifierCopy;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Running %@ on %@, %@", buf, 0x2Au);
  }

  v22 = [NSURL fileURLWithPath:apfsFormatterPath];
  [(SKRemoteTaskRunner *)self runTask:v22 arguments:v18 withReply:replyCopy];
}

@end