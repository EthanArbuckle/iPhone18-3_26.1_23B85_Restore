@interface TSWPStorageItemProvider
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)storageItemProviderWithString:(id)a3;
- (TSWPStorageItemProvider)initWithString:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)_loadPlainTextData:(id)a3;
- (void)dealloc;
@end

@implementation TSWPStorageItemProvider

- (TSWPStorageItemProvider)initWithString:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPStorageItemProvider;
  v4 = [(TSWPStorageItemProvider *)&v6 init];
  if (v4)
  {
    v4->_string = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPStorageItemProvider;
  [(TSWPStorageItemProvider *)&v3 dealloc];
}

+ (id)storageItemProviderWithString:(id)a3
{
  v3 = [[TSWPStorageItemProvider alloc] initWithString:a3];

  return v3;
}

- (void)_loadPlainTextData:(id)a3
{
  v4 = [(NSString *)self->_string dataUsingEncoding:4];
  v5 = *(a3 + 2);

  v5(a3, v4, 0);
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = [*MEMORY[0x277CE1EB0] identifier];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(*MEMORY[0x277CE1EB0] "identifier")])
  {
    [(TSWPStorageItemProvider *)self _loadPlainTextData:a4];
  }

  else
  {
    if (a3)
    {
      v9 = @"typeIdentifier";
      v10[0] = a3;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    (*(a4 + 2))(a4, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:v7]);
  }

  return 0;
}

@end