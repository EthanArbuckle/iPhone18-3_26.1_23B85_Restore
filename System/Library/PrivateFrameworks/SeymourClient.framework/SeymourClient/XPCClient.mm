@interface XPCClient
- (void)receiveEvent:(int64_t)event data:(id)data;
- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion;
@end

@implementation XPCClient

- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion
{
  v8 = _Block_copy(completion);

  if (data)
  {
    dataCopy = data;
    data = sub_1B4F64894();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = *self->dispatchService;
  _Block_copy(v8);
  sub_1B4F63484(request, data, v11, v12, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1B4DD2B5C(data, v11);
}

- (void)receiveEvent:(int64_t)event data:(id)data
{
  dataCopy = data;
  if (data)
  {

    v7 = dataCopy;
    dataCopy = sub_1B4F64894();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = *self->dispatchService;
  TransportDispatchService.dispatchEvent(_:data:)(event, dataCopy, v9);
  sub_1B4DD2B5C(dataCopy, v9);
}

@end