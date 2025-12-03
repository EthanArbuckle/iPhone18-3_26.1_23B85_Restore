@interface STSchemaSTDisambiguationFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTDisambiguationFailed)initWithDictionary:(id)dictionary;
- (STSchemaSTDisambiguationFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTDisambiguationFailed

- (STSchemaSTDisambiguationFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = STSchemaSTDisambiguationFailed;
  v5 = [(STSchemaSTDisambiguationFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTDisambiguationFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"stError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[STSchemaSTFailureError alloc] initWithDictionary:v7];
      [(STSchemaSTDisambiguationFailed *)v5 setStError:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (STSchemaSTDisambiguationFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTDisambiguationFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTDisambiguationFailed *)self dictionaryRepresentation];
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
    reason = [(STSchemaSTDisambiguationFailed *)self reason];
    v5 = @"STDISAMBIGUATIONFAILUREREASON_UNKNOWN";
    if (reason == 1)
    {
      v5 = @"STDISAMBIGUATIONFAILUREREASON_NETWORK";
    }

    if (reason == 2)
    {
      v6 = @"STDISAMBIGUATIONFAILUREREASON_JSON_DECODING";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"reason"];
  }

  if (self->_stError)
  {
    stError = [(STSchemaSTDisambiguationFailed *)self stError];
    dictionaryRepresentation = [stError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"stError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"stError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reason;
  }

  else
  {
    v2 = 0;
  }

  return [(STSchemaSTFailureError *)self->_stError hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (reason = self->_reason, reason == [equalCopy reason]))
      {
        stError = [(STSchemaSTDisambiguationFailed *)self stError];
        stError2 = [equalCopy stError];
        v8 = stError2;
        if ((stError != 0) != (stError2 == 0))
        {
          stError3 = [(STSchemaSTDisambiguationFailed *)self stError];
          if (!stError3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = stError3;
          stError4 = [(STSchemaSTDisambiguationFailed *)self stError];
          stError5 = [equalCopy stError];
          v13 = [stError4 isEqual:stError5];

          if (v13)
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

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  stError = [(STSchemaSTDisambiguationFailed *)self stError];

  v5 = toCopy;
  if (stError)
  {
    stError2 = [(STSchemaSTDisambiguationFailed *)self stError];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = STSchemaSTDisambiguationFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(STSchemaSTDisambiguationFailed *)self stError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(STSchemaSTDisambiguationFailed *)self deleteStError];
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