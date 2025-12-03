@interface WLKUpNextDeltaStore
+ (id)sharedInstance;
- (WLKUpNextDeltaStore)init;
- (void)delete:(id)delete;
- (void)merge:(id)merge completion:(id)completion;
- (void)read:(id)read;
- (void)write:(id)write completion:(id)completion;
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

- (void)read:(id)read
{
  readCopy = read;
  if (!readCopy)
  {
    [WLKUpNextDeltaStore read:];
  }

  v5 = readCopy;
  [(WLKSharedFileStorage *)self->_fileStorage read:readCopy];
}

- (void)write:(id)write completion:(id)completion
{
  writeCopy = write;
  completionCopy = completion;
  if (!writeCopy)
  {
    [WLKUpNextDeltaStore write:completion:];
  }

  if (!completionCopy)
  {
    [WLKUpNextDeltaStore write:completion:];
  }

  [(WLKSharedFileStorage *)self->_fileStorage write:writeCopy completion:completionCopy];
}

- (void)merge:(id)merge completion:(id)completion
{
  mergeCopy = merge;
  completionCopy = completion;
  if (!mergeCopy)
  {
    [WLKUpNextDeltaStore merge:completion:];
  }

  if (!completionCopy)
  {
    [WLKUpNextDeltaStore merge:completion:];
  }

  [(WLKSharedFileStorage *)self->_fileStorage merge:mergeCopy completion:completionCopy];
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  if (!deleteCopy)
  {
    [WLKUpNextDeltaStore delete:];
  }

  v5 = deleteCopy;
  [(WLKSharedFileStorage *)self->_fileStorage delete:deleteCopy];
}

@end