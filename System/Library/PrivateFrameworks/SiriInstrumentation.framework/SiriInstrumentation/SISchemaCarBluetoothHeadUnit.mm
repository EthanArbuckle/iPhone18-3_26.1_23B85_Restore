@interface SISchemaCarBluetoothHeadUnit
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaCarBluetoothHeadUnit)initWithDictionary:(id)dictionary;
- (SISchemaCarBluetoothHeadUnit)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaCarBluetoothHeadUnit

- (SISchemaCarBluetoothHeadUnit)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = SISchemaCarBluetoothHeadUnit;
  v5 = [(SISchemaCarBluetoothHeadUnit *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"headUnitVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setHeadUnitVendorId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"headUnitProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setHeadUnitProductId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"carMake"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setCarMake:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"carModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setCarModel:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"carYear"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCarBluetoothHeadUnit setCarYear:](v5, "setCarYear:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"organizationallyUniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setOrganizationallyUniqueId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (SISchemaCarBluetoothHeadUnit)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaCarBluetoothHeadUnit *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaCarBluetoothHeadUnit *)self dictionaryRepresentation];
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
  if (self->_carMake)
  {
    carMake = [(SISchemaCarBluetoothHeadUnit *)self carMake];
    v5 = [carMake copy];
    [dictionary setObject:v5 forKeyedSubscript:@"carMake"];
  }

  if (self->_carModel)
  {
    carModel = [(SISchemaCarBluetoothHeadUnit *)self carModel];
    v7 = [carModel copy];
    [dictionary setObject:v7 forKeyedSubscript:@"carModel"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaCarBluetoothHeadUnit carYear](self, "carYear")}];
    [dictionary setObject:v8 forKeyedSubscript:@"carYear"];
  }

  if (self->_headUnitProductId)
  {
    headUnitProductId = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
    v10 = [headUnitProductId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"headUnitProductId"];
  }

  if (self->_headUnitVendorId)
  {
    headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
    v12 = [headUnitVendorId copy];
    [dictionary setObject:v12 forKeyedSubscript:@"headUnitVendorId"];
  }

  if (self->_organizationallyUniqueId)
  {
    organizationallyUniqueId = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
    v14 = [organizationallyUniqueId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"organizationallyUniqueId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_headUnitVendorId hash];
  v4 = [(NSString *)self->_headUnitProductId hash];
  v5 = [(NSString *)self->_carMake hash];
  v6 = [(NSString *)self->_carModel hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_carYear;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_organizationallyUniqueId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
  headUnitVendorId2 = [equalCopy headUnitVendorId];
  if ((headUnitVendorId != 0) == (headUnitVendorId2 == 0))
  {
    goto LABEL_29;
  }

  headUnitVendorId3 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
  if (headUnitVendorId3)
  {
    v8 = headUnitVendorId3;
    headUnitVendorId4 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
    headUnitVendorId5 = [equalCopy headUnitVendorId];
    v11 = [headUnitVendorId4 isEqual:headUnitVendorId5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
  headUnitVendorId2 = [equalCopy headUnitProductId];
  if ((headUnitVendorId != 0) == (headUnitVendorId2 == 0))
  {
    goto LABEL_29;
  }

  headUnitProductId = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
  if (headUnitProductId)
  {
    v13 = headUnitProductId;
    headUnitProductId2 = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
    headUnitProductId3 = [equalCopy headUnitProductId];
    v16 = [headUnitProductId2 isEqual:headUnitProductId3];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self carMake];
  headUnitVendorId2 = [equalCopy carMake];
  if ((headUnitVendorId != 0) == (headUnitVendorId2 == 0))
  {
    goto LABEL_29;
  }

  carMake = [(SISchemaCarBluetoothHeadUnit *)self carMake];
  if (carMake)
  {
    v18 = carMake;
    carMake2 = [(SISchemaCarBluetoothHeadUnit *)self carMake];
    carMake3 = [equalCopy carMake];
    v21 = [carMake2 isEqual:carMake3];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self carModel];
  headUnitVendorId2 = [equalCopy carModel];
  if ((headUnitVendorId != 0) == (headUnitVendorId2 == 0))
  {
    goto LABEL_29;
  }

  carModel = [(SISchemaCarBluetoothHeadUnit *)self carModel];
  if (carModel)
  {
    v23 = carModel;
    carModel2 = [(SISchemaCarBluetoothHeadUnit *)self carModel];
    carModel3 = [equalCopy carModel];
    v26 = [carModel2 isEqual:carModel3];

    if (!v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    carYear = self->_carYear;
    if (carYear != [equalCopy carYear])
    {
      goto LABEL_30;
    }
  }

  headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
  headUnitVendorId2 = [equalCopy organizationallyUniqueId];
  if ((headUnitVendorId != 0) != (headUnitVendorId2 == 0))
  {
    organizationallyUniqueId = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
    if (!organizationallyUniqueId)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = organizationallyUniqueId;
    organizationallyUniqueId2 = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
    organizationallyUniqueId3 = [equalCopy organizationallyUniqueId];
    v32 = [organizationallyUniqueId2 isEqual:organizationallyUniqueId3];

    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  headUnitVendorId = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];

  if (headUnitVendorId)
  {
    PBDataWriterWriteStringField();
  }

  headUnitProductId = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];

  if (headUnitProductId)
  {
    PBDataWriterWriteStringField();
  }

  carMake = [(SISchemaCarBluetoothHeadUnit *)self carMake];

  if (carMake)
  {
    PBDataWriterWriteStringField();
  }

  carModel = [(SISchemaCarBluetoothHeadUnit *)self carModel];

  if (carModel)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  organizationallyUniqueId = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];

  v9 = toCopy;
  if (organizationallyUniqueId)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end