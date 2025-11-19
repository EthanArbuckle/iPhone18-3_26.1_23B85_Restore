@interface WLKUpNextDeltaStore
+ (id)sharedInstance;
- (WLKUpNextDeltaStore)init;
- (void)delete:(id)a3;
- (void)merge:(id)a3 completion:(id)a4;
- (void)read:(id)a3;
- (void)write:(id)a3 completion:(id)a4;
@end

@implementation WLKUpNextDeltaStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WLKUpNextDeltaStore sharedInstance];
  }

  v3 = sharedInstance__singleton;

  return v3;
}

uint64_t __37__WLKUpNextDeltaStore_sharedInstance__block_invoke()
{
  sharedInstance__singleton = objc_alloc_init(WLKUpNextDeltaStore);

  return MEMORY[0x2821F96F8]();
}

- (WLKUpNextDeltaStore)init
{
  v6.receiver = self;
  v6.super_class = WLKUpNextDeltaStore;
  v2 = [(WLKUpNextDeltaStore *)&v6 init];
  if (v2)
  {
    v3 = [[WLKSharedFileStorage alloc] initWithFileName:@"upnextdelta.plist" class:objc_opt_class()];
    fileStorage = v2->_fileStorage;
    v2->_fileStorage = v3;
  }

  return v2;
}

- (void)read:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [WLKUpNextDeltaStore read:];
  }

  v5 = v4;
  [(WLKSharedFileStorage *)self->_fileStorage read:v4];
}

- (void)write:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!v7)
  {
    [WLKUpNextDeltaStore write:completion:];
  }

  if (!v6)
  {
    [WLKUpNextDeltaStore write:completion:];
  }

  [(WLKSharedFileStorage *)self->_fileStorage write:v7 completion:v6];
}

- (void)merge:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!v7)
  {
    [WLKUpNextDeltaStore merge:completion:];
  }

  if (!v6)
  {
    [WLKUpNextDeltaStore merge:completion:];
  }

  [(WLKSharedFileStorage *)self->_fileStorage merge:v7 completion:v6];
}

- (void)delete:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [WLKUpNextDeltaStore delete:];
  }

  v5 = v4;
  [(WLKSharedFileStorage *)self->_fileStorage delete:v4];
}

@end