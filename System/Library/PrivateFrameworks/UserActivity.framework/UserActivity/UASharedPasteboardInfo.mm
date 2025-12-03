@interface UASharedPasteboardInfo
- (BOOL)isEqual:(id)equal;
- (UASharedPasteboardInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UASharedPasteboardInfo

- (UASharedPasteboardInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UASharedPasteboardInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoDataFileKey"];
    [(UASharedPasteboardInfo *)v5 setDataFile:v6];

    -[UASharedPasteboardInfo setDataSize:](v5, "setDataSize:", [coderCopy decodeIntegerForKey:@"UASharedPasteboardInfoDataSizeKey"]);
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"UASharedPasteboardInfoItemsKey"];
    [(UASharedPasteboardInfo *)v5 setItems:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoDataPathKey"];
    [(UASharedPasteboardInfo *)v5 setSharedDataPath:v11];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"UASharedPasteboardInfoExtensionKey"];
    [(UASharedPasteboardInfo *)v5 setSandboxExtensions:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataFile = [(UASharedPasteboardInfo *)self dataFile];
  [coderCopy encodeObject:dataFile forKey:@"UASharedPasteboardInfoDataFileKey"];

  [coderCopy encodeInteger:-[UASharedPasteboardInfo dataSize](self forKey:{"dataSize"), @"UASharedPasteboardInfoDataSizeKey"}];
  items = [(UASharedPasteboardInfo *)self items];
  [coderCopy encodeObject:items forKey:@"UASharedPasteboardInfoItemsKey"];

  sharedDataPath = [(UASharedPasteboardInfo *)self sharedDataPath];
  [coderCopy encodeObject:sharedDataPath forKey:@"UASharedPasteboardInfoDataPathKey"];

  sandboxExtensions = [(UASharedPasteboardInfo *)self sandboxExtensions];
  [coderCopy encodeObject:sandboxExtensions forKey:@"UASharedPasteboardInfoExtensionKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dataSize = [(UASharedPasteboardInfo *)self dataSize];
    if (dataSize == [v5 dataSize])
    {
      items = [(UASharedPasteboardInfo *)self items];
      items2 = [v5 items];
      v9 = [items isEqual:items2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(UASharedPasteboardInfo);
  dataFile = [(UASharedPasteboardInfo *)self dataFile];
  v7 = [dataFile copy];
  [(UASharedPasteboardInfo *)v5 setDataFile:v7];

  [(UASharedPasteboardInfo *)v5 setDataSize:[(UASharedPasteboardInfo *)self dataSize]];
  items = [(UASharedPasteboardInfo *)self items];
  v9 = [items copyWithZone:zone];
  [(UASharedPasteboardInfo *)v5 setItems:v9];

  sharedDataPath = [(UASharedPasteboardInfo *)self sharedDataPath];
  v11 = [sharedDataPath copy];
  [(UASharedPasteboardInfo *)v5 setSharedDataPath:v11];

  return v5;
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v17.receiver = self;
  v17.super_class = UASharedPasteboardInfo;
  v4 = [(UASharedPasteboardInfo *)&v17 description];
  objc_msgSend(v3, "appendFormat:", @"%@: Data size: %ld Items: (\r\n"), v4, -[UASharedPasteboardInfo dataSize](self, "dataSize");

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = [(UASharedPasteboardInfo *)self items];
  v6 = [items countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) description];
        [v3 appendFormat:@"%@\r\n", v10];
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 appendString:@""]);
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end