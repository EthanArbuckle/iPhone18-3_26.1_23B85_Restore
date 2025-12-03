@interface TSPTemporaryObjectContextDelegate
- (TSPTemporaryObjectContextDelegate)initWithPackageURL:(id)l;
- (id)persistenceWarningsForData:(id)data isReadable:(BOOL)readable isExternal:(BOOL)external;
- (void)performReadUsingAccessor:(id)accessor;
@end

@implementation TSPTemporaryObjectContextDelegate

- (TSPTemporaryObjectContextDelegate)initWithPackageURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = TSPTemporaryObjectContextDelegate;
  v5 = [(TSPTemporaryObjectContextDelegate *)&v12 init];
  if (v5)
  {
    v6 = [lCopy copy];
    packageURL = v5->_packageURL;
    v5->_packageURL = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    persistenceWarnings = v5->_persistenceWarnings;
    v5->_persistenceWarnings = v8;

    v5->_ignoreDocumentSupport = 1;
    v10 = v5;
  }

  return v5;
}

- (void)performReadUsingAccessor:(id)accessor
{
  accessorCopy = accessor;
  packageURL = [(TSPTemporaryObjectContextDelegate *)self packageURL];
  accessorCopy[2](accessorCopy, packageURL);
}

- (id)persistenceWarningsForData:(id)data isReadable:(BOOL)readable isExternal:(BOOL)external
{
  externalCopy = external;
  dataCopy = data;
  v8 = dataCopy;
  if (readable)
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = MEMORY[0x277CCACA8];
    filename = [dataCopy filename];
    v13 = filename;
    v14 = @"Package";
    if (externalCopy)
    {
      v14 = @"External";
    }

    v15 = [v11 stringWithFormat:@"%@ data %@ is missing.", v14, filename];
    v9 = [v10 setWithObject:v15];
  }

  return v9;
}

@end