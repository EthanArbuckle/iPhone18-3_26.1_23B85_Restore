@interface XPCExportProxy
- (void)receiveEvent:(int64_t)a3 data:(id)a4;
- (void)receiveRequest:(int64_t)a3 data:(id)a4 completion:(id)a5;
@end

@implementation XPCExportProxy

- (void)receiveRequest:(int64_t)a3 data:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);

  if (a4)
  {
    v8 = a4;
    a4 = sub_1B4F64894();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    _Block_copy(v7);
    sub_1B4F63484(a3, a4, v10, v12, v7);
    _Block_release(v7);

    _Block_release(v7);
    sub_1B4DD2B5C(a4, v10);
  }

  else
  {

    _Block_release(v7);

    sub_1B4DD2B5C(a4, v10);
  }
}

- (void)receiveEvent:(int64_t)a3 data:(id)a4
{
  v4 = a4;
  if (a4)
  {

    v6 = v4;
    v4 = sub_1B4F64894();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  if (swift_weakLoadStrong())
  {
    TransportDispatchService.dispatchEvent(_:data:)(a3, v4, v8);

    sub_1B4DD2B5C(v4, v8);
  }

  else
  {

    sub_1B4DD2B5C(v4, v8);
  }
}

@end