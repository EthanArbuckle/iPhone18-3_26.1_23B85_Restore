@interface UASharedPasteboardItemInfo
- (BOOL)isEqual:(id)equal;
- (UASharedPasteboardItemInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UASharedPasteboardItemInfo

- (UASharedPasteboardItemInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UASharedPasteboardItemInfo *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"UASharedPasteboardItemInfoTypesKey"];
    [(UASharedPasteboardItemInfo *)v5 setTypes:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  types = [(UASharedPasteboardItemInfo *)self types];
  [coderCopy encodeObject:types forKey:@"UASharedPasteboardItemInfoTypesKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    types = [(UASharedPasteboardItemInfo *)self types];
    types2 = [v5 types];

    v8 = [types isEqual:types2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(UASharedPasteboardItemInfo);
  types = [(UASharedPasteboardItemInfo *)self types];
  v7 = [types copyWithZone:zone];
  [(UASharedPasteboardItemInfo *)v5 setTypes:v7];

  return v5;
}

- (id)description
{
  types = [(UASharedPasteboardItemInfo *)self types];
  allValues = [types allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_4];

  v5 = [v4 description];

  return v5;
}

uint64_t __41__UASharedPasteboardItemInfo_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 offset];
  v7 = [v5 offset];
  v8 = [v4 index];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 index];

    if (v10)
    {
      v11 = [v4 index];

      v12 = [v5 index];

      v6 = v11;
      v7 = v12;
    }
  }

  v13 = [v6 compare:v7];

  return v13;
}

@end