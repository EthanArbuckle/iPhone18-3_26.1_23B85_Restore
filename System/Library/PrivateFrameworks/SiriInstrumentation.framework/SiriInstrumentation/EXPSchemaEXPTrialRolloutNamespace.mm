@interface EXPSchemaEXPTrialRolloutNamespace
- (BOOL)isEqual:(id)equal;
- (EXPSchemaEXPTrialRolloutNamespace)initWithDictionary:(id)dictionary;
- (EXPSchemaEXPTrialRolloutNamespace)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation EXPSchemaEXPTrialRolloutNamespace

- (EXPSchemaEXPTrialRolloutNamespace)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = EXPSchemaEXPTrialRolloutNamespace;
  v5 = [(EXPSchemaEXPTrialRolloutNamespace *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(EXPSchemaEXPTrialRolloutNamespace *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"compatibilityVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialRolloutNamespace setCompatibilityVersion:](v5, "setCompatibilityVersion:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"factorPackId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(EXPSchemaEXPTrialRolloutNamespace *)v5 setFactorPackId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (EXPSchemaEXPTrialRolloutNamespace)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSchemaEXPTrialRolloutNamespace *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSchemaEXPTrialRolloutNamespace *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[EXPSchemaEXPTrialRolloutNamespace compatibilityVersion](self, "compatibilityVersion")}];
    [dictionary setObject:v4 forKeyedSubscript:@"compatibilityVersion"];
  }

  if (self->_factorPackId)
  {
    factorPackId = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
    v6 = [factorPackId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"factorPackId"];
  }

  if (self->_name)
  {
    name = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
    v8 = [name copy];
    [dictionary setObject:v8 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_compatibilityVersion;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_factorPackId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  name = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_14;
  }

  name3 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    compatibilityVersion = self->_compatibilityVersion;
    if (compatibilityVersion != [equalCopy compatibilityVersion])
    {
      goto LABEL_15;
    }
  }

  name = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
  name2 = [equalCopy factorPackId];
  if ((name != 0) != (name2 == 0))
  {
    factorPackId = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
    if (!factorPackId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = factorPackId;
    factorPackId2 = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
    factorPackId3 = [equalCopy factorPackId];
    v17 = [factorPackId2 isEqual:factorPackId3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(EXPSchemaEXPTrialRolloutNamespace *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  factorPackId = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];

  v6 = toCopy;
  if (factorPackId)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end