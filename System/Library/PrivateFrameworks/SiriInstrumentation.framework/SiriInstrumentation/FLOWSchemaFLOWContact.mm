@interface FLOWSchemaFLOWContact
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWContact)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWContact)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsUnnamedPhoneNumber:(BOOL)number;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWContact

- (FLOWSchemaFLOWContact)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWContact;
  v5 = [(FLOWSchemaFLOWContact *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWContact *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isRelationship"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWContact setIsRelationship:](v5, "setIsRelationship:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isUnnamedPhoneNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWContact setIsUnnamedPhoneNumber:](v5, "setIsUnnamedPhoneNumber:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWContact)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWContact *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWContact *)self dictionaryRepresentation];
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
  v4 = *(&self->_isUnnamedPhoneNumber + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWContact isRelationship](self, "isRelationship")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isRelationship"];

    v4 = *(&self->_isUnnamedPhoneNumber + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWContact isUnnamedPhoneNumber](self, "isUnnamedPhoneNumber")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isUnnamedPhoneNumber"];
  }

  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWContact *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  linkId = [(FLOWSchemaFLOWContact *)self linkId];
  linkId2 = [equalCopy linkId];
  v7 = linkId2;
  if ((linkId != 0) == (linkId2 == 0))
  {

    goto LABEL_16;
  }

  linkId3 = [(FLOWSchemaFLOWContact *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(FLOWSchemaFLOWContact *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isUnnamedPhoneNumber + 1);
  v14 = equalCopy[18];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    isRelationship = self->_isRelationship;
    if (isRelationship == [equalCopy isRelationship])
    {
      v13 = *(&self->_isUnnamedPhoneNumber + 1);
      v14 = equalCopy[18];
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
    if (isUnnamedPhoneNumber != [equalCopy isUnnamedPhoneNumber])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(FLOWSchemaFLOWContact *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWContact *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isUnnamedPhoneNumber + 1);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_isUnnamedPhoneNumber + 1);
  }

  v7 = toCopy;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }
}

- (void)setHasIsUnnamedPhoneNumber:(BOOL)number
{
  if (number)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isUnnamedPhoneNumber + 1) = *(&self->_isUnnamedPhoneNumber + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWContact;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWSchemaFLOWContact *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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