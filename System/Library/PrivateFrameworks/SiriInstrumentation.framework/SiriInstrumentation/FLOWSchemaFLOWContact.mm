@interface FLOWSchemaFLOWContact
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWContact)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWContact)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsUnnamedPhoneNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWContact

- (FLOWSchemaFLOWContact)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWContact;
  v5 = [(FLOWSchemaFLOWContact *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWContact *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isRelationship"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWContact setIsRelationship:](v5, "setIsRelationship:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isUnnamedPhoneNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWContact setIsUnnamedPhoneNumber:](v5, "setIsUnnamedPhoneNumber:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWContact)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWContact *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWContact *)self dictionaryRepresentation];
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
  v4 = *(&self->_isUnnamedPhoneNumber + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWContact isRelationship](self, "isRelationship")}];
    [v3 setObject:v5 forKeyedSubscript:@"isRelationship"];

    v4 = *(&self->_isUnnamedPhoneNumber + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWContact isUnnamedPhoneNumber](self, "isUnnamedPhoneNumber")}];
    [v3 setObject:v6 forKeyedSubscript:@"isUnnamedPhoneNumber"];
  }

  if (self->_linkId)
  {
    v7 = [(FLOWSchemaFLOWContact *)self linkId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*(&self->_isUnnamedPhoneNumber + 1))
  {
    v4 = 2654435761 * self->_isRelationship;
    if ((*(&self->_isUnnamedPhoneNumber + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(&self->_isUnnamedPhoneNumber + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isUnnamedPhoneNumber;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(FLOWSchemaFLOWContact *)self linkId];
  v6 = [v4 linkId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(FLOWSchemaFLOWContact *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWContact *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isUnnamedPhoneNumber + 1);
  v14 = v4[18];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    isRelationship = self->_isRelationship;
    if (isRelationship == [v4 isRelationship])
    {
      v13 = *(&self->_isUnnamedPhoneNumber + 1);
      v14 = v4[18];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    isUnnamedPhoneNumber = self->_isUnnamedPhoneNumber;
    if (isUnnamedPhoneNumber != [v4 isUnnamedPhoneNumber])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(FLOWSchemaFLOWContact *)self linkId];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWContact *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isUnnamedPhoneNumber + 1);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_isUnnamedPhoneNumber + 1);
  }

  v7 = v8;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
  }
}

- (void)setHasIsUnnamedPhoneNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isUnnamedPhoneNumber + 1) = *(&self->_isUnnamedPhoneNumber + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWContact;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWContact *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(FLOWSchemaFLOWContact *)self deleteLinkId];
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