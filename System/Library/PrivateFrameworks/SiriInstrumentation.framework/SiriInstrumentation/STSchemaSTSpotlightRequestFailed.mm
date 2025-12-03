@interface STSchemaSTSpotlightRequestFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTSpotlightRequestFailed)initWithDictionary:(id)dictionary;
- (STSchemaSTSpotlightRequestFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTSpotlightRequestFailed

- (STSchemaSTSpotlightRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = STSchemaSTSpotlightRequestFailed;
  v5 = [(STSchemaSTSpotlightRequestFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTSpotlightRequestFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"stError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[STSchemaSTFailureError alloc] initWithDictionary:v7];
      [(STSchemaSTSpotlightRequestFailed *)v5 setStError:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (STSchemaSTSpotlightRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTSpotlightRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTSpotlightRequestFailed *)self dictionaryRepresentation];
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
    reason = [(STSchemaSTSpotlightRequestFailed *)self reason];
    v5 = @"STSPOTLIGHTFAILUREREASON_UNKNOWN";
    if (reason == 1)
    {
      v5 = @"STSPOTLIGHTFAILUREREASON_TIMEOUT";
    }

    if (reason == 2)
    {
      v6 = @"STSPOTLIGHTFAILUREREASON_SEARCHD_UNAVAILABLE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"reason"];
  }

  if (self->_stError)
  {
    stError = [(STSchemaSTSpotlightRequestFailed *)self stError];
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
        stError = [(STSchemaSTSpotlightRequestFailed *)self stError];
        stError2 = [equalCopy stError];
        v8 = stError2;
        if ((stError != 0) != (stError2 == 0))
        {
          stError3 = [(STSchemaSTSpotlightRequestFailed *)self stError];
          if (!stError3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = stError3;
          stError4 = [(STSchemaSTSpotlightRequestFailed *)self stError];
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

  stError = [(STSchemaSTSpotlightRequestFailed *)self stError];

  v5 = toCopy;
  if (stError)
  {
    stError2 = [(STSchemaSTSpotlightRequestFailed *)self stError];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = STSchemaSTSpotlightRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(STSchemaSTSpotlightRequestFailed *)self stError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(STSchemaSTSpotlightRequestFailed *)self deleteStError];
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