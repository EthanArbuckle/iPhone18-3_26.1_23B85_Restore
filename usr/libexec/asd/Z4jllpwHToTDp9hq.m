@interface Z4jllpwHToTDp9hq
- (Z4jllpwHToTDp9hq)init;
- (void)zjSRqCgYhfa1wFgr:(id)a3 nN3snF4sAp0Cxy6t:(id)a4 wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)a5 tNXuX79TcZPxzyjn:(id)a6;
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

- (void)zjSRqCgYhfa1wFgr:(id)a3 nN3snF4sAp0Cxy6t:(id)a4 wRPFKB7h3xbveJFz:(_e97N3ZJrnSwhQeNK *)a5 tNXuX79TcZPxzyjn:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(Z4jllpwHToTDp9hq *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A8EC;
  v17[3] = &unk_10068F158;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = a5;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, v17);
}

@end