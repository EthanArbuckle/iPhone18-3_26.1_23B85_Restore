@interface SFCollectionStyle
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyle)initWithCoder:(id)coder;
- (SFCollectionStyle)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollectionStyle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyle *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    initiallyVisibleCardSectionCount = [(SFCollectionStyle *)self initiallyVisibleCardSectionCount];
    initiallyVisibleCardSectionCount2 = [(SFCollectionStyle *)v5 initiallyVisibleCardSectionCount];

    v8 = initiallyVisibleCardSectionCount == initiallyVisibleCardSectionCount2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setInitiallyVisibleCardSectionCount:{-[SFCollectionStyle initiallyVisibleCardSectionCount](self, "initiallyVisibleCardSectionCount")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyle alloc] initWithFacade:self];
  jsonData = [(_SFPBCollectionStyle *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyle alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCollectionStyle *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCollectionStyle alloc] initWithFacade:self];
  data = [(_SFPBCollectionStyle *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCollectionStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyle alloc] initWithData:v5];
  v7 = [(SFCollectionStyle *)self initWithProtobuf:v6];

  return v7;
}

- (SFCollectionStyle)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFCollectionStyle;
  v5 = [(SFCollectionStyle *)&v14 init];
  if (v5)
  {
    if ([protobufCopy initiallyVisibleCardSectionCount])
    {
      -[SFCollectionStyle setInitiallyVisibleCardSectionCount:](v5, "setInitiallyVisibleCardSectionCount:", [protobufCopy initiallyVisibleCardSectionCount]);
    }

    collectionStyleRow = [protobufCopy collectionStyleRow];

    if (collectionStyleRow)
    {
      v7 = [SFCollectionStyleRow alloc];
      collectionStyleRow2 = [protobufCopy collectionStyleRow];
    }

    else
    {
      collectionStyleGrid = [protobufCopy collectionStyleGrid];

      if (collectionStyleGrid)
      {
        v7 = [SFCollectionStyleGrid alloc];
        collectionStyleRow2 = [protobufCopy collectionStyleGrid];
      }

      else
      {
        collectionStyleScrolling = [protobufCopy collectionStyleScrolling];

        if (!collectionStyleScrolling)
        {
          v9 = v5;
          goto LABEL_13;
        }

        v7 = [SFCollectionStyleHorizontallyScrolling alloc];
        collectionStyleRow2 = [protobufCopy collectionStyleScrolling];
      }
    }

    v12 = collectionStyleRow2;
    v9 = [(SFCollectionStyleRow *)v7 initWithProtobuf:collectionStyleRow2];

    if ([protobufCopy initiallyVisibleCardSectionCount])
    {
      -[SFCollectionStyle setInitiallyVisibleCardSectionCount:](v9, "setInitiallyVisibleCardSectionCount:", [protobufCopy initiallyVisibleCardSectionCount]);
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

@end