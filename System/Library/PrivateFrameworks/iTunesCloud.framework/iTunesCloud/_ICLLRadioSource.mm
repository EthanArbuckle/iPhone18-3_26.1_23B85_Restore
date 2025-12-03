@interface _ICLLRadioSource
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLRadioSource

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stationId hash];
  v4 = [(_ICLLRadioSeed *)self->_seed hash]^ v3;
  return v4 ^ [(NSString *)self->_featureName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((stationId = self->_stationId, !(stationId | equalCopy[3])) || -[NSString isEqual:](stationId, "isEqual:")) && ((seed = self->_seed, !(seed | equalCopy[2])) || -[_ICLLRadioSeed isEqual:](seed, "isEqual:")))
  {
    featureName = self->_featureName;
    if (featureName | equalCopy[1])
    {
      v8 = [(NSString *)featureName isEqual:?];
    }

    else
    {
      v8 = 1;
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
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stationId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(_ICLLRadioSeed *)self->_seed copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_featureName copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_stationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_seed)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_featureName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  stationId = self->_stationId;
  if (stationId)
  {
    [dictionary setObject:stationId forKey:@"stationId"];
  }

  seed = self->_seed;
  if (seed)
  {
    dictionaryRepresentation = [(_ICLLRadioSeed *)seed dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"seed"];
  }

  featureName = self->_featureName;
  if (featureName)
  {
    [v4 setObject:featureName forKey:@"featureName"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLRadioSource;
  v4 = [(_ICLLRadioSource *)&v8 description];
  dictionaryRepresentation = [(_ICLLRadioSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end