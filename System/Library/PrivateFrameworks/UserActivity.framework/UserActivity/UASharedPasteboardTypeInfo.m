@interface UASharedPasteboardTypeInfo
- (BOOL)isEqual:(id)a3;
- (UASharedPasteboardTypeInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UASharedPasteboardTypeInfo

- (UASharedPasteboardTypeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardTypeInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoTypeKey"];
    [(UASharedPasteboardTypeInfo *)v5 setType:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoUUIDKey"];
    [(UASharedPasteboardTypeInfo *)v5 setUuid:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoOffsetKey"];
    [(UASharedPasteboardTypeInfo *)v5 setOffset:v8];

    -[UASharedPasteboardTypeInfo setSize:](v5, "setSize:", [v4 decodeIntegerForKey:@"UASharedPasteboardTypeInfoSizeKey"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoDataFileKey"];
    [(UASharedPasteboardTypeInfo *)v5 setDataFile:v9];

    -[UASharedPasteboardTypeInfo setPreferFileRep:](v5, "setPreferFileRep:", [v4 decodeBoolForKey:@"UASharedPasteboardTypeInfoPrefRepKey"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoTypeHintKey"];
    [(UASharedPasteboardTypeInfo *)v5 setTypeHint:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoIndex"];
    [(UASharedPasteboardTypeInfo *)v5 setIndex:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardTypeInfo *)self type];
  [v4 encodeObject:v5 forKey:@"UASharedPasteboardTypeInfoTypeKey"];

  v6 = [(UASharedPasteboardTypeInfo *)self uuid];
  [v4 encodeObject:v6 forKey:@"UASharedPasteboardTypeInfoUUIDKey"];

  v7 = [(UASharedPasteboardTypeInfo *)self offset];
  [v4 encodeObject:v7 forKey:@"UASharedPasteboardTypeInfoOffsetKey"];

  [v4 encodeInteger:-[UASharedPasteboardTypeInfo size](self forKey:{"size"), @"UASharedPasteboardTypeInfoSizeKey"}];
  v8 = [(UASharedPasteboardTypeInfo *)self dataFile];
  [v4 encodeObject:v8 forKey:@"UASharedPasteboardTypeInfoDataFileKey"];

  [v4 encodeBool:-[UASharedPasteboardTypeInfo preferFileRep](self forKey:{"preferFileRep"), @"UASharedPasteboardTypeInfoPrefRepKey"}];
  v9 = [(UASharedPasteboardTypeInfo *)self typeHint];
  [v4 encodeObject:v9 forKey:@"UASharedPasteboardTypeInfoTypeHintKey"];

  v10 = [(UASharedPasteboardTypeInfo *)self index];
  [v4 encodeObject:v10 forKey:@"UASharedPasteboardTypeInfoIndex"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UASharedPasteboardTypeInfo *)self uuid];
    v7 = [v5 uuid];
    if ([v6 isEqual:v7])
    {
      v8 = [(UASharedPasteboardTypeInfo *)self type];
      v9 = [v5 type];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(UASharedPasteboardTypeInfo *)self offset];
        v11 = [v5 offset];
        if (v10 == v11)
        {
          v13 = [(UASharedPasteboardTypeInfo *)self size];
          v12 = v13 == [v5 size];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UASharedPasteboardTypeInfo);
  v5 = [(UASharedPasteboardTypeInfo *)self type];
  v6 = [v5 copy];
  [(UASharedPasteboardTypeInfo *)v4 setType:v6];

  v7 = [(UASharedPasteboardTypeInfo *)self uuid];
  v8 = [v7 copy];
  [(UASharedPasteboardTypeInfo *)v4 setUuid:v8];

  v9 = [(UASharedPasteboardTypeInfo *)self offset];
  v10 = [v9 copy];
  [(UASharedPasteboardTypeInfo *)v4 setOffset:v10];

  [(UASharedPasteboardTypeInfo *)v4 setSize:[(UASharedPasteboardTypeInfo *)self size]];
  v11 = [(UASharedPasteboardTypeInfo *)self dataFile];
  v12 = [v11 copy];
  [(UASharedPasteboardTypeInfo *)v4 setDataFile:v12];

  [(UASharedPasteboardTypeInfo *)v4 setPreferFileRep:[(UASharedPasteboardTypeInfo *)self preferFileRep]];
  v13 = [(UASharedPasteboardTypeInfo *)self typeHint];
  v14 = [v13 copy];
  [(UASharedPasteboardTypeInfo *)v4 setTypeHint:v14];

  v15 = [(UASharedPasteboardTypeInfo *)self index];
  v16 = [v15 copy];
  [(UASharedPasteboardTypeInfo *)v4 setIndex:v16];

  return v4;
}

- (id)description
{
  v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v20 = [(UASharedPasteboardTypeInfo *)self index];
  v19 = [v20 integerValue];
  v21 = [(UASharedPasteboardTypeInfo *)self type];
  v5 = [(UASharedPasteboardTypeInfo *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [(UASharedPasteboardTypeInfo *)self offset];
  if (v7 || [(UASharedPasteboardTypeInfo *)self size]> 0)
  {
    v18 = 0;
LABEL_4:
    v8 = MEMORY[0x277CCACA8];
    v3 = [(UASharedPasteboardTypeInfo *)self offset];
    v9 = [(UASharedPasteboardTypeInfo *)self size];
    v2 = [(UASharedPasteboardTypeInfo *)self dataFile];
    v10 = [v8 stringWithFormat:@", offset: %@, size: %ld, fd: %d", v3, v9, objc_msgSend(v2, "fileDescriptor")];
    v11 = 1;
    goto LABEL_5;
  }

  v17 = [(UASharedPasteboardTypeInfo *)self dataFile];
  v18 = 1;
  if ([v17 fileDescriptor])
  {
    goto LABEL_4;
  }

  v11 = 0;
  v10 = &stru_283A5A2C8;
LABEL_5:
  v12 = [(UASharedPasteboardTypeInfo *)self typeHint];
  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(UASharedPasteboardTypeInfo *)self typeHint];
    v15 = [v13 stringWithFormat:@", hint: %@", v14];
    [v22 appendFormat:@"info { %ld type: %@, uuid: %@%@%@}", v19, v21, v6, v10, v15];
  }

  else
  {
    [v22 appendFormat:@"info { %ld type: %@, uuid: %@%@%@}", v19, v21, v6, v10, &stru_283A5A2C8];
  }

  if (v11)
  {
  }

  if (v18)
  {
  }

  return v22;
}

@end