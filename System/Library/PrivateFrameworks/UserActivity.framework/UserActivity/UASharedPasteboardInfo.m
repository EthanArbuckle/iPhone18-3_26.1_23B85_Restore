@interface UASharedPasteboardInfo
- (BOOL)isEqual:(id)a3;
- (UASharedPasteboardInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UASharedPasteboardInfo

- (UASharedPasteboardInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoDataFileKey"];
    [(UASharedPasteboardInfo *)v5 setDataFile:v6];

    -[UASharedPasteboardInfo setDataSize:](v5, "setDataSize:", [v4 decodeIntegerForKey:@"UASharedPasteboardInfoDataSizeKey"]);
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"UASharedPasteboardInfoItemsKey"];
    [(UASharedPasteboardInfo *)v5 setItems:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoDataPathKey"];
    [(UASharedPasteboardInfo *)v5 setSharedDataPath:v11];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"UASharedPasteboardInfoExtensionKey"];
    [(UASharedPasteboardInfo *)v5 setSandboxExtensions:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardInfo *)self dataFile];
  [v4 encodeObject:v5 forKey:@"UASharedPasteboardInfoDataFileKey"];

  [v4 encodeInteger:-[UASharedPasteboardInfo dataSize](self forKey:{"dataSize"), @"UASharedPasteboardInfoDataSizeKey"}];
  v6 = [(UASharedPasteboardInfo *)self items];
  [v4 encodeObject:v6 forKey:@"UASharedPasteboardInfoItemsKey"];

  v7 = [(UASharedPasteboardInfo *)self sharedDataPath];
  [v4 encodeObject:v7 forKey:@"UASharedPasteboardInfoDataPathKey"];

  v8 = [(UASharedPasteboardInfo *)self sandboxExtensions];
  [v4 encodeObject:v8 forKey:@"UASharedPasteboardInfoExtensionKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UASharedPasteboardInfo *)self dataSize];
    if (v6 == [v5 dataSize])
    {
      v7 = [(UASharedPasteboardInfo *)self items];
      v8 = [v5 items];
      v9 = [v7 isEqual:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(UASharedPasteboardInfo);
  v6 = [(UASharedPasteboardInfo *)self dataFile];
  v7 = [v6 copy];
  [(UASharedPasteboardInfo *)v5 setDataFile:v7];

  [(UASharedPasteboardInfo *)v5 setDataSize:[(UASharedPasteboardInfo *)self dataSize]];
  v8 = [(UASharedPasteboardInfo *)self items];
  v9 = [v8 copyWithZone:a3];
  [(UASharedPasteboardInfo *)v5 setItems:v9];

  v10 = [(UASharedPasteboardInfo *)self sharedDataPath];
  v11 = [v10 copy];
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
  v5 = [(UASharedPasteboardInfo *)self items];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) description];
        [v3 appendFormat:@"%@\r\n", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 appendString:@""]);
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end