@interface Z4jllpwHToTDp9hq
- (Z4jllpwHToTDp9hq)init;
- (void)zjSRqCgYhfa1wFgr:(id)fgr nN3snF4sAp0Cxy6t:(id)cxy6t wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)fz tNXuX79TcZPxzyjn:(id)pxzyjn;
@end

@implementation Z4jllpwHToTDp9hq

- (Z4jllpwHToTDp9hq)init
{
  v6.receiver = self;
  v6.super_class = Z4jllpwHToTDp9hq;
  v2 = [(Z4jllpwHToTDp9hq *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BiomeMatViewQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)zjSRqCgYhfa1wFgr:(id)fgr nN3snF4sAp0Cxy6t:(id)cxy6t wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)fz tNXuX79TcZPxzyjn:(id)pxzyjn
{
  fgrCopy = fgr;
  cxy6tCopy = cxy6t;
  pxzyjnCopy = pxzyjn;
  queue = [(Z4jllpwHToTDp9hq *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A8EC;
  v17[3] = &unk_10068F158;
  v18 = cxy6tCopy;
  v19 = fgrCopy;
  v20 = pxzyjnCopy;
  fzCopy = fz;
  v14 = pxzyjnCopy;
  v15 = fgrCopy;
  v16 = cxy6tCopy;
  dispatch_async(queue, v17);
}

@end