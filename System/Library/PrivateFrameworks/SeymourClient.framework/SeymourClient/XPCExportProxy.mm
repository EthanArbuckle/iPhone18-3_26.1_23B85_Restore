@interface XPCExportProxy
- (void)receiveEvent:(int64_t)event data:(id)data;
- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion;
@end

@implementation XPCExportProxy

- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion
{
  v7 = _Block_copy(completion);

  if (data)
  {
    dataCopy = data;
    data = sub_1B4F64894();
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
    sub_1B4F63484(request, data, v10, v12, v7);
    _Block_release(v7);

    _Block_release(v7);
    sub_1B4DD2B5C(data, v10);
  }

  else
  {

    _Block_release(v7);

    sub_1B4DD2B5C(data, v10);
  }
}

- (void)receiveEvent:(int64_t)event data:(id)data
{
  dataCopy = data;
  if (data)
  {

    v6 = dataCopy;
    dataCopy = sub_1B4F64894();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  if (swift_weakLoadStrong())
  {
    TransportDispatchService.dispatchEvent(_:data:)(event, dataCopy, v8);

    sub_1B4DD2B5C(dataCopy, v8);
  }

  else
  {

    sub_1B4DD2B5C(dataCopy, v8);
  }
}

@end