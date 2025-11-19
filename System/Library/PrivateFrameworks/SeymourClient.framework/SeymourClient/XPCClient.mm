@interface XPCClient
- (void)receiveEvent:(int64_t)a3 data:(id)a4;
- (void)receiveRequest:(int64_t)a3 data:(id)a4 completion:(id)a5;
@end

@implementation XPCClient

- (void)receiveRequest:(int64_t)a3 data:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);

  if (a4)
  {
    v9 = a4;
    a4 = sub_1B4F64894();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = *self->dispatchService;
  _Block_copy(v8);
  sub_1B4F63484(a3, a4, v11, v12, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1B4DD2B5C(a4, v11);
}

- (void)receiveEvent:(int64_t)a3 data:(id)a4
{
  v4 = a4;
  if (a4)
  {

    v7 = v4;
    v4 = sub_1B4F64894();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = *self->dispatchService;
  TransportDispatchService.dispatchEvent(_:data:)(a3, v4, v9);
  sub_1B4DD2B5C(v4, v9);
}

@end