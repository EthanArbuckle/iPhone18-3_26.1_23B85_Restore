@interface DUSchemaDUResponse
- (BOOL)isEqual:(id)equal;
- (DUSchemaDUResponse)initWithDictionary:(id)dictionary;
- (DUSchemaDUResponse)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DUSchemaDUResponse

- (DUSchemaDUResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = DUSchemaDUResponse;
  v5 = [(DUSchemaDUResponse *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DUSchemaDUResponse setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"assetIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(DUSchemaDUResponse *)v5 setAssetIdentifier:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (DUSchemaDUResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DUSchemaDUResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DUSchemaDUResponse *)self dictionaryRepresentation];
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
  if (self->_assetIdentifier)
  {
    assetIdentifier = [(DUSchemaDUResponse *)self assetIdentifier];
    dictionaryRepresentation = [assetIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetIdentifier"];
    }
  }

  if (*&self->_has)
  {
    if ([(DUSchemaDUResponse *)self status]== 1)
    {
      v7 = @"FAILED";
    }

    else
    {
      v7 = @"SUCCESS";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_status;
  }

  else
  {
    v2 = 0;
  }

  return [(SISchemaUUID *)self->_assetIdentifier hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (status = self->_status, status == [equalCopy status]))
      {
        assetIdentifier = [(DUSchemaDUResponse *)self assetIdentifier];
        assetIdentifier2 = [equalCopy assetIdentifier];
        v8 = assetIdentifier2;
        if ((assetIdentifier != 0) != (assetIdentifier2 == 0))
        {
          assetIdentifier3 = [(DUSchemaDUResponse *)self assetIdentifier];
          if (!assetIdentifier3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = assetIdentifier3;
          assetIdentifier4 = [(DUSchemaDUResponse *)self assetIdentifier];
          assetIdentifier5 = [equalCopy assetIdentifier];
          v13 = [assetIdentifier4 isEqual:assetIdentifier5];

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

  assetIdentifier = [(DUSchemaDUResponse *)self assetIdentifier];

  v5 = toCopy;
  if (assetIdentifier)
  {
    assetIdentifier2 = [(DUSchemaDUResponse *)self assetIdentifier];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DUSchemaDUResponse;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DUSchemaDUResponse *)self assetIdentifier:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DUSchemaDUResponse *)self deleteAssetIdentifier];
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