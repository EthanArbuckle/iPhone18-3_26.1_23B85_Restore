@interface SFText
+ (id)textWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFText)initWithCoder:(id)coder;
- (SFText)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFText

- (unint64_t)hash
{
  text = [(SFText *)self text];
  v4 = [text hash];
  maxLines = [(SFText *)self maxLines];

  return maxLines ^ v4;
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
    if ([(SFText *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      text = [(SFText *)self text];
      text2 = [(SFText *)v7 text];
      if ((text != 0) == (text2 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      text3 = [(SFText *)self text];
      if (!text3 || (-[SFText text](self, "text"), v3 = objc_claimAutoreleasedReturnValue(), -[SFText text](v7, "text"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        maxLines = [(SFText *)self maxLines];
        v11 = maxLines == [(SFText *)v7 maxLines];
        if (!text3)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  text = [(SFText *)self text];
  v6 = [text copy];
  [v4 setText:v6];

  [v4 setMaxLines:{-[SFText maxLines](self, "maxLines")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBText alloc] initWithFacade:self];
  jsonData = [(_SFPBText *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBText alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBText *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBText alloc] initWithFacade:self];
  data = [(_SFPBText *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBText alloc] initWithData:v5];
  v7 = [(SFText *)self initWithProtobuf:v6];

  return v7;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  text = [(SFText *)self text];
  LOWORD(index) = [text characterAtIndex:index];

  return index;
}

- (unint64_t)length
{
  text = [(SFText *)self text];
  v3 = [text length];

  return v3;
}

+ (id)textWithString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setText:stringCopy];

  return v4;
}

- (SFText)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFText;
  v5 = [(SFText *)&v10 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      text2 = [protobufCopy text];
      [(SFText *)v5 setText:text2];
    }

    if ([protobufCopy maxLines])
    {
      -[SFText setMaxLines:](v5, "setMaxLines:", [protobufCopy maxLines]);
    }

    v8 = v5;
  }

  return v5;
}

@end