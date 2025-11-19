@interface TSPTemporaryObjectContextDelegate
- (TSPTemporaryObjectContextDelegate)initWithPackageURL:(id)a3;
- (id)persistenceWarningsForData:(id)a3 isReadable:(BOOL)a4 isExternal:(BOOL)a5;
- (void)performReadUsingAccessor:(id)a3;
@end

@implementation TSPTemporaryObjectContextDelegate

- (TSPTemporaryObjectContextDelegate)initWithPackageURL:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSPTemporaryObjectContextDelegate;
  v5 = [(TSPTemporaryObjectContextDelegate *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)performReadUsingAccessor:(id)a3
{
  v5 = a3;
  v4 = [(TSPTemporaryObjectContextDelegate *)self packageURL];
  v5[2](v5, v4);
}

- (id)persistenceWarningsForData:(id)a3 isReadable:(BOOL)a4 isExternal:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = MEMORY[0x277CCACA8];
    v12 = [v7 filename];
    v13 = v12;
    v14 = @"Package";
    if (v5)
    {
      v14 = @"External";
    }

    v15 = [v11 stringWithFormat:@"%@ data %@ is missing.", v14, v12];
    v9 = [v10 setWithObject:v15];
  }

  return v9;
}

@end