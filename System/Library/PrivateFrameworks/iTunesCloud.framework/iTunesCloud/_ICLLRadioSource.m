@interface _ICLLRadioSource
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLRadioSource

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stationId hash];
  v4 = [(_ICLLRadioSeed *)self->_seed hash]^ v3;
  return v4 ^ [(NSString *)self->_featureName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((stationId = self->_stationId, !(stationId | v4[3])) || -[NSString isEqual:](stationId, "isEqual:")) && ((seed = self->_seed, !(seed | v4[2])) || -[_ICLLRadioSeed isEqual:](seed, "isEqual:")))
  {
    featureName = self->_featureName;
    if (featureName | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stationId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(_ICLLRadioSeed *)self->_seed copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_featureName copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_stationId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_seed)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_featureName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  stationId = self->_stationId;
  if (stationId)
  {
    [v3 setObject:stationId forKey:@"stationId"];
  }

  seed = self->_seed;
  if (seed)
  {
    v7 = [(_ICLLRadioSeed *)seed dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"seed"];
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
  v5 = [(_ICLLRadioSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end