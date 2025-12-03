@interface RFShowMoreOnTap
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFShowMoreOnTap)initWithCoder:(id)coder;
- (RFShowMoreOnTap)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFShowMoreOnTap

- (RFShowMoreOnTap)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = RFShowMoreOnTap;
  v5 = [(RFShowMoreOnTap *)&v14 init];
  if (v5)
  {
    affordanceLabel = [protobufCopy affordanceLabel];

    if (affordanceLabel)
    {
      affordanceLabel2 = [protobufCopy affordanceLabel];
      [(RFShowMoreOnTap *)v5 setAffordanceLabel:affordanceLabel2];
    }

    shows_without_truncation = [protobufCopy shows_without_truncation];

    if (shows_without_truncation)
    {
      v9 = [RFOptionalBool alloc];
      shows_without_truncation2 = [protobufCopy shows_without_truncation];
      v11 = [(RFOptionalBool *)v9 initWithProtobuf:shows_without_truncation2];
      [(RFShowMoreOnTap *)v5 setShows_without_truncation:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  affordanceLabel = [(RFShowMoreOnTap *)self affordanceLabel];
  v4 = [affordanceLabel hash];
  shows_without_truncation = [(RFShowMoreOnTap *)self shows_without_truncation];
  v6 = [shows_without_truncation hash];

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
    if ([(RFShowMoreOnTap *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      affordanceLabel = [(RFShowMoreOnTap *)self affordanceLabel];
      affordanceLabel2 = [(RFShowMoreOnTap *)v6 affordanceLabel];
      if ((affordanceLabel != 0) == (affordanceLabel2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      affordanceLabel3 = [(RFShowMoreOnTap *)self affordanceLabel];
      if (affordanceLabel3)
      {
        affordanceLabel4 = [(RFShowMoreOnTap *)self affordanceLabel];
        affordanceLabel5 = [(RFShowMoreOnTap *)v6 affordanceLabel];
        if (![affordanceLabel4 isEqual:affordanceLabel5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = affordanceLabel5;
      }

      shows_without_truncation = [(RFShowMoreOnTap *)self shows_without_truncation];
      shows_without_truncation2 = [(RFShowMoreOnTap *)v6 shows_without_truncation];
      v14 = shows_without_truncation2;
      if ((shows_without_truncation != 0) == (shows_without_truncation2 == 0))
      {

        v11 = 0;
      }

      else
      {
        shows_without_truncation3 = [(RFShowMoreOnTap *)self shows_without_truncation];
        if (shows_without_truncation3)
        {
          v16 = shows_without_truncation3;
          shows_without_truncation4 = [(RFShowMoreOnTap *)self shows_without_truncation];
          [(RFShowMoreOnTap *)v6 shows_without_truncation];
          v17 = v20 = affordanceLabel4;
          v11 = [shows_without_truncation4 isEqual:v17];

          affordanceLabel4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      affordanceLabel5 = v21;
      if (!affordanceLabel3)
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
  affordanceLabel = [(RFShowMoreOnTap *)self affordanceLabel];
  v6 = [affordanceLabel copy];
  [v4 setAffordanceLabel:v6];

  shows_without_truncation = [(RFShowMoreOnTap *)self shows_without_truncation];
  v8 = [shows_without_truncation copy];
  [v4 setShows_without_truncation:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFShowMoreOnTap alloc] initWithFacade:self];
  jsonData = [(_SFPBRFShowMoreOnTap *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFShowMoreOnTap alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFShowMoreOnTap *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFShowMoreOnTap alloc] initWithFacade:self];
  data = [(_SFPBRFShowMoreOnTap *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFShowMoreOnTap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFShowMoreOnTap alloc] initWithData:v5];
  v7 = [(RFShowMoreOnTap *)self initWithProtobuf:v6];

  return v7;
}

@end