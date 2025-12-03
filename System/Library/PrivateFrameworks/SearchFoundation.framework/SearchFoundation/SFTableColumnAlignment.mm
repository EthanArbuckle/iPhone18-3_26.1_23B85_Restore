@interface SFTableColumnAlignment
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableColumnAlignment)initWithCoder:(id)coder;
- (SFTableColumnAlignment)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTableColumnAlignment

- (SFTableColumnAlignment)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFTableColumnAlignment;
  v5 = [(SFTableColumnAlignment *)&v8 init];
  if (v5)
  {
    if ([protobufCopy columnAlignment])
    {
      -[SFTableColumnAlignment setColumnAlignment:](v5, "setColumnAlignment:", [protobufCopy columnAlignment]);
    }

    if ([protobufCopy dataAlignment])
    {
      -[SFTableColumnAlignment setDataAlignment:](v5, "setDataAlignment:", [protobufCopy dataAlignment]);
    }

    if ([protobufCopy isEqualWidth])
    {
      -[SFTableColumnAlignment setIsEqualWidth:](v5, "setIsEqualWidth:", [protobufCopy isEqualWidth]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  columnAlignment = [(SFTableColumnAlignment *)self columnAlignment];
  v4 = [(SFTableColumnAlignment *)self dataAlignment]^ columnAlignment;
  return v4 ^ [(SFTableColumnAlignment *)self isEqualWidth];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else if ([(SFTableColumnAlignment *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    columnAlignment = [(SFTableColumnAlignment *)self columnAlignment];
    if (columnAlignment == [(SFTableColumnAlignment *)v5 columnAlignment]&& (v7 = [(SFTableColumnAlignment *)self dataAlignment], v7 == [(SFTableColumnAlignment *)v5 dataAlignment]))
    {
      isEqualWidth = [(SFTableColumnAlignment *)self isEqualWidth];
      v9 = isEqualWidth ^ [(SFTableColumnAlignment *)v5 isEqualWidth]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setColumnAlignment:{-[SFTableColumnAlignment columnAlignment](self, "columnAlignment")}];
  [v4 setDataAlignment:{-[SFTableColumnAlignment dataAlignment](self, "dataAlignment")}];
  [v4 setIsEqualWidth:{-[SFTableColumnAlignment isEqualWidth](self, "isEqualWidth")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableColumnAlignment alloc] initWithFacade:self];
  jsonData = [(_SFPBTableColumnAlignment *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableColumnAlignment alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTableColumnAlignment *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTableColumnAlignment alloc] initWithFacade:self];
  data = [(_SFPBTableColumnAlignment *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTableColumnAlignment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTableColumnAlignment alloc] initWithData:v5];
  v7 = [(SFTableColumnAlignment *)self initWithProtobuf:v6];

  return v7;
}

@end