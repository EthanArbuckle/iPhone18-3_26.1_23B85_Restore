@interface SISchemaProvisionalEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaProvisionalEvent)initWithDictionary:(id)dictionary;
- (SISchemaProvisionalEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaProvisionalEvent

- (SISchemaProvisionalEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaProvisionalEvent;
  v5 = [(SISchemaProvisionalEvent *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anyEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaAnyEvent alloc] initWithDictionary:v6];
      [(SISchemaProvisionalEvent *)v5 setAnyEvent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"typeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaProvisionalEvent *)v5 setTypeId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaProvisionalEvent setVersion:](v5, "setVersion:", [v10 longLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaProvisionalEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaProvisionalEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaProvisionalEvent *)self dictionaryRepresentation];
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
  if (self->_anyEvent)
  {
    anyEvent = [(SISchemaProvisionalEvent *)self anyEvent];
    dictionaryRepresentation = [anyEvent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"anyEvent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"anyEvent"];
    }
  }

  if (self->_typeId)
  {
    typeId = [(SISchemaProvisionalEvent *)self typeId];
    v8 = [typeId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"typeId"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaProvisionalEvent version](self, "version")}];
    [dictionary setObject:v9 forKeyedSubscript:@"version"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaAnyEvent *)self->_anyEvent hash];
  v4 = [(NSString *)self->_typeId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_version;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  anyEvent = [(SISchemaProvisionalEvent *)self anyEvent];
  anyEvent2 = [equalCopy anyEvent];
  if ((anyEvent != 0) == (anyEvent2 == 0))
  {
    goto LABEL_11;
  }

  anyEvent3 = [(SISchemaProvisionalEvent *)self anyEvent];
  if (anyEvent3)
  {
    v8 = anyEvent3;
    anyEvent4 = [(SISchemaProvisionalEvent *)self anyEvent];
    anyEvent5 = [equalCopy anyEvent];
    v11 = [anyEvent4 isEqual:anyEvent5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  anyEvent = [(SISchemaProvisionalEvent *)self typeId];
  anyEvent2 = [equalCopy typeId];
  if ((anyEvent != 0) == (anyEvent2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  typeId = [(SISchemaProvisionalEvent *)self typeId];
  if (typeId)
  {
    v13 = typeId;
    typeId2 = [(SISchemaProvisionalEvent *)self typeId];
    typeId3 = [equalCopy typeId];
    v16 = [typeId2 isEqual:typeId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (version = self->_version, version == [equalCopy version]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  anyEvent = [(SISchemaProvisionalEvent *)self anyEvent];

  if (anyEvent)
  {
    anyEvent2 = [(SISchemaProvisionalEvent *)self anyEvent];
    PBDataWriterWriteSubmessage();
  }

  typeId = [(SISchemaProvisionalEvent *)self typeId];

  if (typeId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaProvisionalEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaProvisionalEvent *)self anyEvent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaProvisionalEvent *)self deleteAnyEvent];
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