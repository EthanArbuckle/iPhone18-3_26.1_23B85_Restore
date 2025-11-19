@interface DADeviceObserverLocal
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
@end

@implementation DADeviceObserverLocal

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A64;
  block[3] = &unk_100014568;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6 = +[NSUUID UUID];

  return v6;
}

@end