@interface UCExtractor
- (UCExtractor)initWithDestinationURL:(id)l forArchiveUUID:(id)d;
- (void)extractArchiveWithCompletion:(id)completion;
@end

@implementation UCExtractor

- (UCExtractor)initWithDestinationURL:(id)l forArchiveUUID:(id)d
{
  lCopy = l;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = UCExtractor;
  v8 = [(UCExtractor *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(UCExtractor *)v8 setDestURL:lCopy];
    [(UCExtractor *)v9 setUuid:dCopy];
    v10 = [[NSUUID alloc] initWithUUIDString:dCopy];
    v11 = +[UASharedPasteboardDataManager sharedInstance];
    v12 = [v11 readHandleForArchiveWithUUID:v10];
    [(UCExtractor *)v9 setArchiveReadHandle:v12];
  }

  return v9;
}

- (void)extractArchiveWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000369EC;
  v7[3] = &unk_1000C52F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

@end