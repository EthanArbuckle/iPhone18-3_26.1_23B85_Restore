@interface TVRCTimedMetadata
+ (id)_timedMetadataWithIdentifier:(id)a3 rawData:(id)a4 expectsTimedMetadata:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimedMetadata:(id)a3;
- (TVRCTimedMetadata)initWithCoder:(id)a3;
- (TVRCTimedMetadata)initWithIdentifier:(id)a3 rawData:(id)a4 expectsTimedMetadata:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCTimedMetadata

+ (id)_timedMetadataWithIdentifier:(id)a3 rawData:(id)a4 expectsTimedMetadata:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithIdentifier:v10 rawData:v9 expectsTimedMetadata:v8];

  return v11;
}

- (TVRCTimedMetadata)initWithIdentifier:(id)a3 rawData:(id)a4 expectsTimedMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = TVRCTimedMetadata;
  v11 = [(TVRCTimedMetadata *)&v16 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_rawData, a4);
    v11->_hasExpectsTimedMetadata = v10 != 0;
    if (v10)
    {
      v14 = [v10 BOOLValue];
    }

    else
    {
      v14 = 0;
    }

    v11->_expectsTimedMetadata = v14;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRCTimedMetadata *)self isEqualToTimedMetadata:v4];

  return v5;
}

- (BOOL)isEqualToTimedMetadata:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [(TVRCTimedMetadata *)self hasExpectsTimedMetadata];
  if (v5 != [v4 hasExpectsTimedMetadata])
  {
    goto LABEL_7;
  }

  v6 = [(TVRCTimedMetadata *)self expectsTimedMetadata];
  if (v6 != [v4 expectsTimedMetadata])
  {
    goto LABEL_7;
  }

  v7 = [(TVRCTimedMetadata *)self identifier];
  v8 = [v4 identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(TVRCTimedMetadata *)self rawData];
    v11 = [v4 rawData];
    v12 = [v10 isEqualToData:v11];
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TVRCTimedMetadata *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(TVRCTimedMetadata *)self rawData];
  [v4 setRawData:v6];

  [v4 setHasExpectsTimedMetadata:{-[TVRCTimedMetadata hasExpectsTimedMetadata](self, "hasExpectsTimedMetadata")}];
  [v4 setExpectsTimedMetadata:{-[TVRCTimedMetadata expectsTimedMetadata](self, "expectsTimedMetadata")}];
  return v4;
}

- (TVRCTimedMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TVRCTimedMetadata;
  v5 = [(TVRCTimedMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];
    rawData = v5->_rawData;
    v5->_rawData = v8;

    v5->_hasExpectsTimedMetadata = [v4 decodeBoolForKey:@"hasExpectsTimedMetadata"];
    v5->_expectsTimedMetadata = [v4 decodeBoolForKey:@"expectsTimedMetadata"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_rawData forKey:@"rawData"];
  [v5 encodeBool:self->_hasExpectsTimedMetadata forKey:@"hasExpectsTimedMetadata"];
  [v5 encodeBool:self->_expectsTimedMetadata forKey:@"expectsTimedMetadata"];
}

@end