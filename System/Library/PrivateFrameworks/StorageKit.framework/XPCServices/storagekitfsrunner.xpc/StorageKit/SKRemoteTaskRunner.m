@interface SKRemoteTaskRunner
- (SKRemoteTaskRunner)initWithConnection:(id)a3;
- (void)formatAPFSWithName:(id)a3 diskIdentifier:(id)a4 caseSensitive:(BOOL)a5 password:(id)a6 withReply:(id)a7;
- (void)runTask:(id)a3 arguments:(id)a4 withReply:(id)a5;
@end

@implementation SKRemoteTaskRunner

- (SKRemoteTaskRunner)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKRemoteTaskRunner;
  v6 = [(SKRemoteTaskRunner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)runTask:(id)a3 arguments:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SKTask alloc] initWithExecutable:v10 arguments:v9];

  v12 = dispatch_queue_create("com.apple.storagekitfsrunner.queue", &_dispatch_queue_attr_concurrent);
  v34 = self;
  v13 = [(SKRemoteTaskRunner *)self connection];
  v14 = [v13 remoteObjectProxy];

  v15 = [SKTaskRawParser alloc];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100004404;
  v39[3] = &unk_1000084F0;
  v16 = v12;
  v40 = v16;
  v17 = v14;
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
  v28 = [(SKTask *)v11 stdoutHandle];
  v29 = [v28 readDataToEndOfFile];

  if (v29 && [v29 length])
  {
    [v21 sendStdout:v29];
  }

  v30 = [(SKTask *)v11 stderrHandle];
  v31 = [v30 readDataToEndOfFile];

  if (v31 && [v31 length])
  {
    [v21 sendStderr:v31];
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
  v8[2](v8, v33, v27);

  [(NSXPCConnection *)v34->_connection invalidate];
}

- (void)formatAPFSWithName:(id)a3 diskIdentifier:(id)a4 caseSensitive:(BOOL)a5 password:(id)a6 withReply:(id)a7
{
  v9 = a5;
  v12 = a4;
  v13 = a6;
  if (v9)
  {
    v14 = @"-e";
  }

  else
  {
    v14 = @"-i";
  }

  v15 = a7;
  v16 = a3;
  v17 = [NSString stringWithFormat:@"/dev/%@", v12];
  v18 = [NSArray arrayWithObjects:v14, @"-v", v16, @"-w", v17, 0];

  if (v13)
  {
    v31[0] = @"-E";
    v31[1] = @"-S";
    v31[2] = v13;
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
    v28 = v12;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Running %@ on %@, %@", buf, 0x2Au);
  }

  v22 = [NSURL fileURLWithPath:apfsFormatterPath];
  [(SKRemoteTaskRunner *)self runTask:v22 arguments:v18 withReply:v15];
}

@end