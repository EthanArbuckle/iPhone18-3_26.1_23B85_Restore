@interface PEGASUSSchemaPEGASUSMapsEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSString)addressId;
- (PEGASUSSchemaPEGASUSMapsEntity)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSMapsEntity)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unint64_t)mapsFeatureId;
- (unint64_t)muid;
- (void)deleteAddressId;
- (void)deleteMapsFeatureId;
- (void)deleteMuid;
- (void)setAddressId:(id)id;
- (void)setMapsFeatureId:(unint64_t)id;
- (void)setMuid:(unint64_t)muid;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSMapsEntity

- (PEGASUSSchemaPEGASUSMapsEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSMapsEntity;
  v5 = [(PEGASUSSchemaPEGASUSMapsEntity *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"muid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMapsEntity setMuid:](v5, "setMuid:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"mapsFeatureId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMapsEntity setMapsFeatureId:](v5, "setMapsFeatureId:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"addressId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSMapsEntity *)v5 setAddressId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSMapsEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSMapsEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSMapsEntity *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_addressId)
  {
    addressId = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
    v5 = [addressId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"addressId"];
  }

  whichEntityid = self->_whichEntityid;
  if (whichEntityid == 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PEGASUSSchemaPEGASUSMapsEntity mapsFeatureId](self, "mapsFeatureId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"mapsFeatureId"];

    whichEntityid = self->_whichEntityid;
  }

  if (whichEntityid == 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PEGASUSSchemaPEGASUSMapsEntity muid](self, "muid")}];
    [dictionary setObject:v8 forKeyedSubscript:@"muid"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  whichEntityid = self->_whichEntityid;
  if (whichEntityid == 1)
  {
    v3 = &OBJC_IVAR___PEGASUSSchemaPEGASUSMapsEntity__muid;
  }

  else
  {
    if (whichEntityid != 2)
    {
      v4 = 0;
      return [(NSString *)self->_addressId hash]^ v4;
    }

    v3 = &OBJC_IVAR___PEGASUSSchemaPEGASUSMapsEntity__mapsFeatureId;
  }

  v4 = 2654435761 * *(&self->super.super.super.isa + *v3);
  return [(NSString *)self->_addressId hash]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichEntityid = self->_whichEntityid;
    if (whichEntityid == [equalCopy whichEntityid])
    {
      muid = self->_muid;
      if (muid == [equalCopy muid])
      {
        mapsFeatureId = self->_mapsFeatureId;
        if (mapsFeatureId == [equalCopy mapsFeatureId])
        {
          addressId = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
          addressId2 = [equalCopy addressId];
          v10 = addressId2;
          if ((addressId != 0) != (addressId2 == 0))
          {
            addressId3 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
            if (!addressId3)
            {

LABEL_13:
              v16 = 1;
              goto LABEL_11;
            }

            v12 = addressId3;
            addressId4 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
            addressId5 = [equalCopy addressId];
            v15 = [addressId4 isEqual:addressId5];

            if (v15)
            {
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  whichEntityid = self->_whichEntityid;
  if (whichEntityid == 1)
  {
    PBDataWriterWriteUint64Field();
    whichEntityid = self->_whichEntityid;
  }

  if (whichEntityid == 2)
  {
    PBDataWriterWriteUint64Field();
  }

  addressId = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];

  v6 = toCopy;
  if (addressId)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)deleteAddressId
{
  if (self->_whichEntityid == 3)
  {
    self->_whichEntityid = 0;
    self->_addressId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)addressId
{
  if (self->_whichEntityid == 3)
  {
    v3 = self->_addressId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAddressId:(id)id
{
  self->_muid = 0;
  self->_mapsFeatureId = 0;
  v4 = 3;
  if (!id)
  {
    v4 = 0;
  }

  self->_whichEntityid = v4;
  idCopy = id;
  v5 = [idCopy copy];
  addressId = self->_addressId;
  self->_addressId = v5;
}

- (void)deleteMapsFeatureId
{
  if (self->_whichEntityid == 2)
  {
    self->_whichEntityid = 0;
    self->_mapsFeatureId = 0;
  }
}

- (unint64_t)mapsFeatureId
{
  if (self->_whichEntityid == 2)
  {
    return self->_mapsFeatureId;
  }

  else
  {
    return 0;
  }
}

- (void)setMapsFeatureId:(unint64_t)id
{
  self->_muid = 0;
  addressId = self->_addressId;
  self->_addressId = 0;

  self->_whichEntityid = 2;
  self->_mapsFeatureId = id;
}

- (void)deleteMuid
{
  if (self->_whichEntityid == 1)
  {
    self->_whichEntityid = 0;
    self->_muid = 0;
  }
}

- (unint64_t)muid
{
  if (self->_whichEntityid == 1)
  {
    return self->_muid;
  }

  else
  {
    return 0;
  }
}

- (void)setMuid:(unint64_t)muid
{
  self->_mapsFeatureId = 0;
  addressId = self->_addressId;
  self->_addressId = 0;

  self->_whichEntityid = 1;
  self->_muid = muid;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSMapsEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end