@interface PXBackgroundFetchToken
- (PXBackgroundFetchToken)init;
- (void)dealloc;
- (void)finish;
@end

@implementation PXBackgroundFetchToken

- (PXBackgroundFetchToken)init
{
  v5.receiver = self;
  v5.super_class = PXBackgroundFetchToken;
  v2 = [(PXBackgroundFetchToken *)&v5 init];
  if (v2)
  {
    kdebug_trace();
    v3 = +[PXPhotosDataSource backgroundFetchingGroup];
    dispatch_group_enter(v3);
  }

  return v2;
}

- (void)finish
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_finished)
  {
    obj->_finished = 1;
    v3 = obj;
    kdebug_trace();

    v4 = +[PXPhotosDataSource backgroundFetchingGroup];
    dispatch_group_leave(v4);

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  [(PXBackgroundFetchToken *)self finish];
  v3.receiver = self;
  v3.super_class = PXBackgroundFetchToken;
  [(PXBackgroundFetchToken *)&v3 dealloc];
}

@end