@interface TVRCTimedMetadata
+ (id)_timedMetadataWithIdentifier:(id)identifier rawData:(id)data expectsTimedMetadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTimedMetadata:(id)metadata;
- (TVRCTimedMetadata)initWithCoder:(id)coder;
- (TVRCTimedMetadata)initWithIdentifier:(id)identifier rawData:(id)data expectsTimedMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCTimedMetadata

+ (id)_timedMetadataWithIdentifier:(id)identifier rawData:(id)data expectsTimedMetadata:(id)metadata
{
  metadataCopy = metadata;
  dataCopy = data;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithIdentifier:identifierCopy rawData:dataCopy expectsTimedMetadata:metadataCopy];

  return v11;
}

- (TVRCTimedMetadata)initWithIdentifier:(id)identifier rawData:(id)data expectsTimedMetadata:(id)metadata
{
  identifierCopy = identifier;
  dataCopy = data;
  metadataCopy = metadata;
  v16.receiver = self;
  v16.super_class = TVRCTimedMetadata;
  v11 = [(TVRCTimedMetadata *)&v16 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_rawData, data);
    v11->_hasExpectsTimedMetadata = metadataCopy != 0;
    if (metadataCopy)
    {
      bOOLValue = [metadataCopy BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v11->_expectsTimedMetadata = bOOLValue;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRCTimedMetadata *)self isEqualToTimedMetadata:equalCopy];

  return v5;
}

- (BOOL)isEqualToTimedMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  hasExpectsTimedMetadata = [(TVRCTimedMetadata *)self hasExpectsTimedMetadata];
  if (hasExpectsTimedMetadata != [metadataCopy hasExpectsTimedMetadata])
  {
    goto LABEL_7;
  }

  expectsTimedMetadata = [(TVRCTimedMetadata *)self expectsTimedMetadata];
  if (expectsTimedMetadata != [metadataCopy expectsTimedMetadata])
  {
    goto LABEL_7;
  }

  identifier = [(TVRCTimedMetadata *)self identifier];
  identifier2 = [metadataCopy identifier];
  v9 = [identifier isEqualToString:identifier2];

  if (v9)
  {
    rawData = [(TVRCTimedMetadata *)self rawData];
    rawData2 = [metadataCopy rawData];
    v12 = [rawData isEqualToData:rawData2];
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(TVRCTimedMetadata *)self identifier];
  [v4 setIdentifier:identifier];

  rawData = [(TVRCTimedMetadata *)self rawData];
  [v4 setRawData:rawData];

  [v4 setHasExpectsTimedMetadata:{-[TVRCTimedMetadata hasExpectsTimedMetadata](self, "hasExpectsTimedMetadata")}];
  [v4 setExpectsTimedMetadata:{-[TVRCTimedMetadata expectsTimedMetadata](self, "expectsTimedMetadata")}];
  return v4;
}

- (TVRCTimedMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TVRCTimedMetadata;
  v5 = [(TVRCTimedMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];
    rawData = v5->_rawData;
    v5->_rawData = v8;

    v5->_hasExpectsTimedMetadata = [coderCopy decodeBoolForKey:@"hasExpectsTimedMetadata"];
    v5->_expectsTimedMetadata = [coderCopy decodeBoolForKey:@"expectsTimedMetadata"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_rawData forKey:@"rawData"];
  [coderCopy encodeBool:self->_hasExpectsTimedMetadata forKey:@"hasExpectsTimedMetadata"];
  [coderCopy encodeBool:self->_expectsTimedMetadata forKey:@"expectsTimedMetadata"];
}

@end