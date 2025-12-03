@interface RFAspectRatio
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAspectRatio)initWithCoder:(id)coder;
- (RFAspectRatio)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFAspectRatio

- (RFAspectRatio)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = RFAspectRatio;
  v5 = [(RFAspectRatio *)&v14 init];
  if (v5)
  {
    [protobufCopy width];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy width];
      v8 = [v7 numberWithFloat:?];
      [(RFAspectRatio *)v5 setWidth:v8];
    }

    [protobufCopy height];
    if (v9 != 0.0)
    {
      v10 = MEMORY[0x1E696AD98];
      [protobufCopy height];
      v11 = [v10 numberWithFloat:?];
      [(RFAspectRatio *)v5 setHeight:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  width = [(RFAspectRatio *)self width];
  v4 = [width hash];
  height = [(RFAspectRatio *)self height];
  v6 = [height hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFAspectRatio *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      width = [(RFAspectRatio *)self width];
      width2 = [(RFAspectRatio *)v6 width];
      if ((width != 0) == (width2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      width3 = [(RFAspectRatio *)self width];
      if (width3)
      {
        width4 = [(RFAspectRatio *)self width];
        width5 = [(RFAspectRatio *)v6 width];
        if (![width4 isEqual:width5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = width5;
      }

      height = [(RFAspectRatio *)self height];
      height2 = [(RFAspectRatio *)v6 height];
      v14 = height2;
      if ((height != 0) == (height2 == 0))
      {

        v11 = 0;
      }

      else
      {
        height3 = [(RFAspectRatio *)self height];
        if (height3)
        {
          v16 = height3;
          height4 = [(RFAspectRatio *)self height];
          [(RFAspectRatio *)v6 height];
          v17 = v20 = width4;
          v11 = [height4 isEqual:v17];

          width4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      width5 = v21;
      if (!width3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  width = [(RFAspectRatio *)self width];
  v6 = [width copy];
  [v4 setWidth:v6];

  height = [(RFAspectRatio *)self height];
  v8 = [height copy];
  [v4 setHeight:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAspectRatio alloc] initWithFacade:self];
  jsonData = [(_SFPBRFAspectRatio *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAspectRatio alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFAspectRatio *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFAspectRatio alloc] initWithFacade:self];
  data = [(_SFPBRFAspectRatio *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFAspectRatio)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAspectRatio alloc] initWithData:v5];
  v7 = [(RFAspectRatio *)self initWithProtobuf:v6];

  return v7;
}

@end