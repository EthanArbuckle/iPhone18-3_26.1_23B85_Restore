@interface UCArchiver
- (UCArchiver)initWithURL:(id)l typeUUID:(id)d;
- (void)archiveURLWithCompletion:(id)completion;
@end

@implementation UCArchiver

- (UCArchiver)initWithURL:(id)l typeUUID:(id)d
{
  lCopy = l;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = UCArchiver;
  v8 = [(UCArchiver *)&v13 init];
  if (v8)
  {
    lastPathComponent = [lCopy lastPathComponent];
    [(UCArchiver *)v8 setLeaf:lastPathComponent];

    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    [(UCArchiver *)v8 setBaseURL:uRLByDeletingLastPathComponent];

    v11 = [[NSUUID alloc] initWithUUIDString:dCopy];
    [(UCArchiver *)v8 setUuid:v11];
  }

  return v8;
}

- (void)archiveURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000629A4;
  v7[3] = &unk_1000C52F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

@end