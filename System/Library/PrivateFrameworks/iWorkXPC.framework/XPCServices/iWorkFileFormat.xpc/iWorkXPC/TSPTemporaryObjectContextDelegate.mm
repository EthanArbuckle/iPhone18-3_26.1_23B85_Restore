@interface TSPTemporaryObjectContextDelegate
+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)a3 additionalDocumentPropertiesForWrite:(id)a4;
- (TSPTemporaryObjectContextDelegate)init;
- (id)persistenceWarningsForData:(id)a3 flags:(unint64_t)a4;
- (void)context:(id)a3 canPerformUserActionUsingBlock:(id)a4;
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

+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)a3 additionalDocumentPropertiesForWrite:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[TSPTemporaryObjectContextDelegateWithPackageDataForWrite alloc] initWithPackageDataForWrite:v5 additionalDocumentPropertiesForWrite:v6];

  return v7;
}

- (id)persistenceWarningsForData:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v12 = +[NSSet set];
  }

  else
  {
    v7 = [v5 filename];
    v8 = v7;
    v9 = @"External";
    if ((v4 & 2) == 0)
    {
      v9 = @"Package";
    }

    v10 = [NSString stringWithFormat:@"%@ data %@ is missing.", v9, v7];

    v11 = [TSUWarning warningWithMessage:v10];
    v12 = [NSSet setWithObject:v11];
  }

  return v12;
}

- (void)context:(id)a3 canPerformUserActionUsingBlock:(id)a4
{
  v4 = a4;
  if (v4)
  {
    v4[2](v4, 1);
  }
}

@end