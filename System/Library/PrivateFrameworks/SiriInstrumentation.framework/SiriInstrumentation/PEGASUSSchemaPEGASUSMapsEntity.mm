@interface PEGASUSSchemaPEGASUSMapsEntity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSString)addressId;
- (PEGASUSSchemaPEGASUSMapsEntity)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSMapsEntity)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unint64_t)mapsFeatureId;
- (unint64_t)muid;
- (void)deleteAddressId;
- (void)deleteMapsFeatureId;
- (void)deleteMuid;
- (void)setAddressId:(id)a3;
- (void)setMapsFeatureId:(unint64_t)a3;
- (void)setMuid:(unint64_t)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSMapsEntity

- (PEGASUSSchemaPEGASUSMapsEntity)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSMapsEntity;
  v5 = [(PEGASUSSchemaPEGASUSMapsEntity *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"muid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMapsEntity setMuid:](v5, "setMuid:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"mapsFeatureId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMapsEntity setMapsFeatureId:](v5, "setMapsFeatureId:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"addressId"];
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

- (PEGASUSSchemaPEGASUSMapsEntity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSMapsEntity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSMapsEntity *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_addressId)
  {
    v4 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"addressId"];
  }

  whichEntityid = self->_whichEntityid;
  if (whichEntityid == 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PEGASUSSchemaPEGASUSMapsEntity mapsFeatureId](self, "mapsFeatureId")}];
    [v3 setObject:v7 forKeyedSubscript:@"mapsFeatureId"];

    whichEntityid = self->_whichEntityid;
  }

  if (whichEntityid == 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PEGASUSSchemaPEGASUSMapsEntity muid](self, "muid")}];
    [v3 setObject:v8 forKeyedSubscript:@"muid"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichEntityid = self->_whichEntityid;
    if (whichEntityid == [v4 whichEntityid])
    {
      muid = self->_muid;
      if (muid == [v4 muid])
      {
        mapsFeatureId = self->_mapsFeatureId;
        if (mapsFeatureId == [v4 mapsFeatureId])
        {
          v8 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
          v9 = [v4 addressId];
          v10 = v9;
          if ((v8 != 0) != (v9 == 0))
          {
            v11 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
            if (!v11)
            {

LABEL_13:
              v16 = 1;
              goto LABEL_11;
            }

            v12 = v11;
            v13 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];
            v14 = [v4 addressId];
            v15 = [v13 isEqual:v14];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
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

  v5 = [(PEGASUSSchemaPEGASUSMapsEntity *)self addressId];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
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

- (void)setAddressId:(id)a3
{
  self->_muid = 0;
  self->_mapsFeatureId = 0;
  v4 = 3;
  if (!a3)
  {
    v4 = 0;
  }

  self->_whichEntityid = v4;
  v7 = a3;
  v5 = [v7 copy];
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

- (void)setMapsFeatureId:(unint64_t)a3
{
  self->_muid = 0;
  addressId = self->_addressId;
  self->_addressId = 0;

  self->_whichEntityid = 2;
  self->_mapsFeatureId = a3;
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

- (void)setMuid:(unint64_t)a3
{
  self->_mapsFeatureId = 0;
  addressId = self->_addressId;
  self->_addressId = 0;

  self->_whichEntityid = 1;
  self->_muid = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSMapsEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMuid];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteMapsFeatureId];
    [(PEGASUSSchemaPEGASUSMapsEntity *)self deleteAddressId];
  }

  if ([v4 isConditionSet:7])
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