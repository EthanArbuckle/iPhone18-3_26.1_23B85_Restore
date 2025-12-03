@interface FLOWLINKSchemaFLOWLINKActionParameter
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionParameter)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionParameter)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionParameter

- (FLOWLINKSchemaFLOWLINKActionParameter)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWLINKSchemaFLOWLINKActionParameter;
  v5 = [(FLOWLINKSchemaFLOWLINKActionParameter *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWLINKSchemaFLOWLINKActionParameter *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isArray"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKActionParameter setIsArray:](v5, "setIsArray:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKActionParameter setType:](v5, "setType:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionParameter)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionParameter *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionParameter *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWLINKSchemaFLOWLINKActionParameter isArray](self, "isArray")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isArray"];
  }

  if (self->_name)
  {
    name = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
    v6 = [name copy];
    [dictionary setObject:v6 forKeyedSubscript:@"name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self type]- 1;
    if (v7 > 0x16)
    {
      v8 = @"LINKPARAMETERTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D4D28[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isArray;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_type;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  name = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
  name2 = [equalCopy name];
  v7 = name2;
  if ((name != 0) == (name2 == 0))
  {

    goto LABEL_16;
  }

  name3 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
  if (name3)
  {
    v9 = name3;
    name4 = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];
    name5 = [equalCopy name];
    v12 = [name4 isEqual:name5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    isArray = self->_isArray;
    if (isArray == [equalCopy isArray])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    type = self->_type;
    if (type != [equalCopy type])
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
  name = [(FLOWLINKSchemaFLOWLINKActionParameter *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end