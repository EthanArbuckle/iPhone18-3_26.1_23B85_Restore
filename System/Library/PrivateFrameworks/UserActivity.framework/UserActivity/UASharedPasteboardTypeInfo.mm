@interface UASharedPasteboardTypeInfo
- (BOOL)isEqual:(id)equal;
- (UASharedPasteboardTypeInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UASharedPasteboardTypeInfo

- (UASharedPasteboardTypeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UASharedPasteboardTypeInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoTypeKey"];
    [(UASharedPasteboardTypeInfo *)v5 setType:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoUUIDKey"];
    [(UASharedPasteboardTypeInfo *)v5 setUuid:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoOffsetKey"];
    [(UASharedPasteboardTypeInfo *)v5 setOffset:v8];

    -[UASharedPasteboardTypeInfo setSize:](v5, "setSize:", [coderCopy decodeIntegerForKey:@"UASharedPasteboardTypeInfoSizeKey"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoDataFileKey"];
    [(UASharedPasteboardTypeInfo *)v5 setDataFile:v9];

    -[UASharedPasteboardTypeInfo setPreferFileRep:](v5, "setPreferFileRep:", [coderCopy decodeBoolForKey:@"UASharedPasteboardTypeInfoPrefRepKey"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoTypeHintKey"];
    [(UASharedPasteboardTypeInfo *)v5 setTypeHint:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardTypeInfoIndex"];
    [(UASharedPasteboardTypeInfo *)v5 setIndex:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(UASharedPasteboardTypeInfo *)self type];
  [coderCopy encodeObject:type forKey:@"UASharedPasteboardTypeInfoTypeKey"];

  uuid = [(UASharedPasteboardTypeInfo *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"UASharedPasteboardTypeInfoUUIDKey"];

  offset = [(UASharedPasteboardTypeInfo *)self offset];
  [coderCopy encodeObject:offset forKey:@"UASharedPasteboardTypeInfoOffsetKey"];

  [coderCopy encodeInteger:-[UASharedPasteboardTypeInfo size](self forKey:{"size"), @"UASharedPasteboardTypeInfoSizeKey"}];
  dataFile = [(UASharedPasteboardTypeInfo *)self dataFile];
  [coderCopy encodeObject:dataFile forKey:@"UASharedPasteboardTypeInfoDataFileKey"];

  [coderCopy encodeBool:-[UASharedPasteboardTypeInfo preferFileRep](self forKey:{"preferFileRep"), @"UASharedPasteboardTypeInfoPrefRepKey"}];
  typeHint = [(UASharedPasteboardTypeInfo *)self typeHint];
  [coderCopy encodeObject:typeHint forKey:@"UASharedPasteboardTypeInfoTypeHintKey"];

  index = [(UASharedPasteboardTypeInfo *)self index];
  [coderCopy encodeObject:index forKey:@"UASharedPasteboardTypeInfoIndex"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(UASharedPasteboardTypeInfo *)self uuid];
    uuid2 = [v5 uuid];
    if ([uuid isEqual:uuid2])
    {
      type = [(UASharedPasteboardTypeInfo *)self type];
      type2 = [v5 type];
      if ([type isEqualToString:type2])
      {
        offset = [(UASharedPasteboardTypeInfo *)self offset];
        offset2 = [v5 offset];
        if (offset == offset2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UASharedPasteboardTypeInfo);
  type = [(UASharedPasteboardTypeInfo *)self type];
  v6 = [type copy];
  [(UASharedPasteboardTypeInfo *)v4 setType:v6];

  uuid = [(UASharedPasteboardTypeInfo *)self uuid];
  v8 = [uuid copy];
  [(UASharedPasteboardTypeInfo *)v4 setUuid:v8];

  offset = [(UASharedPasteboardTypeInfo *)self offset];
  v10 = [offset copy];
  [(UASharedPasteboardTypeInfo *)v4 setOffset:v10];

  [(UASharedPasteboardTypeInfo *)v4 setSize:[(UASharedPasteboardTypeInfo *)self size]];
  dataFile = [(UASharedPasteboardTypeInfo *)self dataFile];
  v12 = [dataFile copy];
  [(UASharedPasteboardTypeInfo *)v4 setDataFile:v12];

  [(UASharedPasteboardTypeInfo *)v4 setPreferFileRep:[(UASharedPasteboardTypeInfo *)self preferFileRep]];
  typeHint = [(UASharedPasteboardTypeInfo *)self typeHint];
  v14 = [typeHint copy];
  [(UASharedPasteboardTypeInfo *)v4 setTypeHint:v14];

  index = [(UASharedPasteboardTypeInfo *)self index];
  v16 = [index copy];
  [(UASharedPasteboardTypeInfo *)v4 setIndex:v16];

  return v4;
}

- (id)description
{
  v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
  index = [(UASharedPasteboardTypeInfo *)self index];
  integerValue = [index integerValue];
  type = [(UASharedPasteboardTypeInfo *)self type];
  uuid = [(UASharedPasteboardTypeInfo *)self uuid];
  uUIDString = [uuid UUIDString];
  offset = [(UASharedPasteboardTypeInfo *)self offset];
  if (offset || [(UASharedPasteboardTypeInfo *)self size]> 0)
  {
    v18 = 0;
LABEL_4:
    v8 = MEMORY[0x277CCACA8];
    offset2 = [(UASharedPasteboardTypeInfo *)self offset];
    v9 = [(UASharedPasteboardTypeInfo *)self size];
    dataFile = [(UASharedPasteboardTypeInfo *)self dataFile];
    v10 = [v8 stringWithFormat:@", offset: %@, size: %ld, fd: %d", offset2, v9, objc_msgSend(dataFile, "fileDescriptor")];
    v11 = 1;
    goto LABEL_5;
  }

  dataFile2 = [(UASharedPasteboardTypeInfo *)self dataFile];
  v18 = 1;
  if ([dataFile2 fileDescriptor])
  {
    goto LABEL_4;
  }

  v11 = 0;
  v10 = &stru_283A5A2C8;
LABEL_5:
  typeHint = [(UASharedPasteboardTypeInfo *)self typeHint];
  if (typeHint)
  {
    v13 = MEMORY[0x277CCACA8];
    typeHint2 = [(UASharedPasteboardTypeInfo *)self typeHint];
    v15 = [v13 stringWithFormat:@", hint: %@", typeHint2];
    [v22 appendFormat:@"info { %ld type: %@, uuid: %@%@%@}", integerValue, type, uUIDString, v10, v15];
  }

  else
  {
    [v22 appendFormat:@"info { %ld type: %@, uuid: %@%@%@}", integerValue, type, uUIDString, v10, &stru_283A5A2C8];
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