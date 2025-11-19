@interface SISchemaCarBluetoothHeadUnit
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaCarBluetoothHeadUnit)initWithDictionary:(id)a3;
- (SISchemaCarBluetoothHeadUnit)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaCarBluetoothHeadUnit

- (SISchemaCarBluetoothHeadUnit)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SISchemaCarBluetoothHeadUnit;
  v5 = [(SISchemaCarBluetoothHeadUnit *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"headUnitVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setHeadUnitVendorId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"headUnitProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setHeadUnitProductId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"carMake"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setCarMake:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"carModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaCarBluetoothHeadUnit *)v5 setCarModel:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"carYear"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCarBluetoothHeadUnit setCarYear:](v5, "setCarYear:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"organizationallyUniqueId"];
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

- (SISchemaCarBluetoothHeadUnit)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaCarBluetoothHeadUnit *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaCarBluetoothHeadUnit *)self dictionaryRepresentation];
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
  if (self->_carMake)
  {
    v4 = [(SISchemaCarBluetoothHeadUnit *)self carMake];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"carMake"];
  }

  if (self->_carModel)
  {
    v6 = [(SISchemaCarBluetoothHeadUnit *)self carModel];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"carModel"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaCarBluetoothHeadUnit carYear](self, "carYear")}];
    [v3 setObject:v8 forKeyedSubscript:@"carYear"];
  }

  if (self->_headUnitProductId)
  {
    v9 = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"headUnitProductId"];
  }

  if (self->_headUnitVendorId)
  {
    v11 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"headUnitVendorId"];
  }

  if (self->_organizationallyUniqueId)
  {
    v13 = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"organizationallyUniqueId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
  v6 = [v4 headUnitVendorId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];
    v10 = [v4 headUnitVendorId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
  v6 = [v4 headUnitProductId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];
    v15 = [v4 headUnitProductId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(SISchemaCarBluetoothHeadUnit *)self carMake];
  v6 = [v4 carMake];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v17 = [(SISchemaCarBluetoothHeadUnit *)self carMake];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaCarBluetoothHeadUnit *)self carMake];
    v20 = [v4 carMake];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(SISchemaCarBluetoothHeadUnit *)self carModel];
  v6 = [v4 carModel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v22 = [(SISchemaCarBluetoothHeadUnit *)self carModel];
  if (v22)
  {
    v23 = v22;
    v24 = [(SISchemaCarBluetoothHeadUnit *)self carModel];
    v25 = [v4 carModel];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    carYear = self->_carYear;
    if (carYear != [v4 carYear])
    {
      goto LABEL_30;
    }
  }

  v5 = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
  v6 = [v4 organizationallyUniqueId];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];
    v31 = [v4 organizationallyUniqueId];
    v32 = [v30 isEqual:v31];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(SISchemaCarBluetoothHeadUnit *)self headUnitVendorId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaCarBluetoothHeadUnit *)self headUnitProductId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaCarBluetoothHeadUnit *)self carMake];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SISchemaCarBluetoothHeadUnit *)self carModel];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v8 = [(SISchemaCarBluetoothHeadUnit *)self organizationallyUniqueId];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end