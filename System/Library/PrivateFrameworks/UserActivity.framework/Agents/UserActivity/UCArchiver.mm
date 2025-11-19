@interface UCArchiver
- (UCArchiver)initWithURL:(id)a3 typeUUID:(id)a4;
- (void)archiveURLWithCompletion:(id)a3;
@end

@implementation UCArchiver

- (UCArchiver)initWithURL:(id)a3 typeUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = UCArchiver;
  v8 = [(UCArchiver *)&v13 init];
  if (v8)
  {
    v9 = [v6 lastPathComponent];
    [(UCArchiver *)v8 setLeaf:v9];

    v10 = [v6 URLByDeletingLastPathComponent];
    [(UCArchiver *)v8 setBaseURL:v10];

    v11 = [[NSUUID alloc] initWithUUIDString:v7];
    [(UCArchiver *)v8 setUuid:v11];
  }

  return v8;
}

- (void)archiveURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000629A4;
  v7[3] = &unk_1000C52F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end