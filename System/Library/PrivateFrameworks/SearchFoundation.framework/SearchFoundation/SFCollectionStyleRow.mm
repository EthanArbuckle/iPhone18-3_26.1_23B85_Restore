@interface SFCollectionStyleRow
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyleRow)initWithCoder:(id)coder;
- (SFCollectionStyleRow)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollectionStyleRow

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCollectionStyleRow;
  v3 = [(SFCollectionStyle *)&v7 hash];
  drawPlattersIfNecessary = [(SFCollectionStyleRow *)self drawPlattersIfNecessary];
  v5 = drawPlattersIfNecessary ^ [(SFCollectionStyleRow *)self isInsetGrouped];
  return v3 ^ v5 ^ [(SFCollectionStyleRow *)self rowStyle];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyleRow *)equalCopy isMemberOfClass:objc_opt_class()]&& (v11.receiver = self, v11.super_class = SFCollectionStyleRow, [(SFCollectionStyle *)&v11 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    drawPlattersIfNecessary = [(SFCollectionStyleRow *)self drawPlattersIfNecessary];
    if (drawPlattersIfNecessary == [(SFCollectionStyleRow *)v5 drawPlattersIfNecessary]&& (v7 = [(SFCollectionStyleRow *)self isInsetGrouped], v7 == [(SFCollectionStyleRow *)v5 isInsetGrouped]))
    {
      rowStyle = [(SFCollectionStyleRow *)self rowStyle];
      v8 = rowStyle == [(SFCollectionStyleRow *)v5 rowStyle];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleRow;
  v4 = [(SFCollectionStyle *)&v6 copyWithZone:zone];
  [v4 setDrawPlattersIfNecessary:{-[SFCollectionStyleRow drawPlattersIfNecessary](self, "drawPlattersIfNecessary")}];
  [v4 setIsInsetGrouped:{-[SFCollectionStyleRow isInsetGrouped](self, "isInsetGrouped")}];
  [v4 setRowStyle:{-[SFCollectionStyleRow rowStyle](self, "rowStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyleRow alloc] initWithFacade:self];
  jsonData = [(_SFPBCollectionStyleRow *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyleRow alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCollectionStyleRow *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCollectionStyleRow alloc] initWithFacade:self];
  data = [(_SFPBCollectionStyleRow *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCollectionStyleRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyleRow alloc] initWithData:v5];
  v7 = [(SFCollectionStyleRow *)self initWithProtobuf:v6];

  return v7;
}

- (SFCollectionStyleRow)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFCollectionStyleRow;
  v5 = [(SFCollectionStyleRow *)&v8 init];
  if (v5)
  {
    if ([protobufCopy drawPlattersIfNecessary])
    {
      -[SFCollectionStyleRow setDrawPlattersIfNecessary:](v5, "setDrawPlattersIfNecessary:", [protobufCopy drawPlattersIfNecessary]);
    }

    if ([protobufCopy isInsetGrouped])
    {
      -[SFCollectionStyleRow setIsInsetGrouped:](v5, "setIsInsetGrouped:", [protobufCopy isInsetGrouped]);
    }

    if ([protobufCopy rowStyle])
    {
      -[SFCollectionStyleRow setRowStyle:](v5, "setRowStyle:", [protobufCopy rowStyle]);
    }

    v6 = v5;
  }

  return v5;
}

@end