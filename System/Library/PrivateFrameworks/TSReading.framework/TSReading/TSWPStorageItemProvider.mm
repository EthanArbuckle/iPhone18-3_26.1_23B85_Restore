@interface TSWPStorageItemProvider
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)storageItemProviderWithString:(id)string;
- (TSWPStorageItemProvider)initWithString:(id)string;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)_loadPlainTextData:(id)data;
- (void)dealloc;
@end

@implementation TSWPStorageItemProvider

- (TSWPStorageItemProvider)initWithString:(id)string
{
  v6.receiver = self;
  v6.super_class = TSWPStorageItemProvider;
  v4 = [(TSWPStorageItemProvider *)&v6 init];
  if (v4)
  {
    v4->_string = [string copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPStorageItemProvider;
  [(TSWPStorageItemProvider *)&v3 dealloc];
}

+ (id)storageItemProviderWithString:(id)string
{
  v3 = [[TSWPStorageItemProvider alloc] initWithString:string];

  return v3;
}

- (void)_loadPlainTextData:(id)data
{
  v4 = [(NSString *)self->_string dataUsingEncoding:4];
  v5 = *(data + 2);

  v5(data, v4, 0);
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = [*MEMORY[0x277CE1EB0] identifier];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(*MEMORY[0x277CE1EB0] "identifier")])
  {
    [(TSWPStorageItemProvider *)self _loadPlainTextData:handler];
  }

  else
  {
    if (identifier)
    {
      v9 = @"typeIdentifier";
      v10[0] = identifier;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    (*(handler + 2))(handler, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:v7]);
  }

  return 0;
}

@end