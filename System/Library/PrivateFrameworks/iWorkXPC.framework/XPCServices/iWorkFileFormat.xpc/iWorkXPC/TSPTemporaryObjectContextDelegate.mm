@interface TSPTemporaryObjectContextDelegate
+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite;
- (TSPTemporaryObjectContextDelegate)init;
- (id)persistenceWarningsForData:(id)data flags:(unint64_t)flags;
- (void)context:(id)context canPerformUserActionUsingBlock:(id)block;
@end

@implementation TSPTemporaryObjectContextDelegate

- (TSPTemporaryObjectContextDelegate)init
{
  v6.receiver = self;
  v6.super_class = TSPTemporaryObjectContextDelegate;
  v2 = [(TSPTemporaryObjectContextDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    persistenceWarnings = v2->_persistenceWarnings;
    v2->_persistenceWarnings = v3;

    v2->_ignoreDocumentSupport = 1;
  }

  return v2;
}

+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite
{
  writeCopy = write;
  forWriteCopy = forWrite;
  v7 = [[TSPTemporaryObjectContextDelegateWithPackageDataForWrite alloc] initWithPackageDataForWrite:writeCopy additionalDocumentPropertiesForWrite:forWriteCopy];

  return v7;
}

- (id)persistenceWarningsForData:(id)data flags:(unint64_t)flags
{
  flagsCopy = flags;
  dataCopy = data;
  v6 = dataCopy;
  if (flagsCopy)
  {
    v12 = +[NSSet set];
  }

  else
  {
    filename = [dataCopy filename];
    v8 = filename;
    v9 = @"External";
    if ((flagsCopy & 2) == 0)
    {
      v9 = @"Package";
    }

    v10 = [NSString stringWithFormat:@"%@ data %@ is missing.", v9, filename];

    v11 = [TSUWarning warningWithMessage:v10];
    v12 = [NSSet setWithObject:v11];
  }

  return v12;
}

- (void)context:(id)context canPerformUserActionUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
  }
}

@end