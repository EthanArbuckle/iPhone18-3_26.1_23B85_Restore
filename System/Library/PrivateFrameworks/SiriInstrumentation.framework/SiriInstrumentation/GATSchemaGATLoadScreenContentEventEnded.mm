@interface GATSchemaGATLoadScreenContentEventEnded
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATLoadScreenContentEventEnded)initWithDictionary:(id)dictionary;
- (GATSchemaGATLoadScreenContentEventEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOriginalMediaSizeInKBs:(BOOL)bs;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATLoadScreenContentEventEnded

- (GATSchemaGATLoadScreenContentEventEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = GATSchemaGATLoadScreenContentEventEnded;
  v5 = [(GATSchemaGATLoadScreenContentEventEnded *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalMediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATLoadScreenContentEventEnded setOriginalMediaType:](v5, "setOriginalMediaType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"originalMediaSizeInKBs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(GATSchemaGATLoadScreenContentEventEnded *)v5 setOriginalMediaSizeInKBs:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATError alloc] initWithDictionary:v8];
      [(GATSchemaGATLoadScreenContentEventEnded *)v5 setUnderlyingError:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (GATSchemaGATLoadScreenContentEventEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATLoadScreenContentEventEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATLoadScreenContentEventEnded *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(GATSchemaGATLoadScreenContentEventEnded *)self originalMediaSizeInKBs];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:@"originalMediaSizeInKBs"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [(GATSchemaGATLoadScreenContentEventEnded *)self originalMediaType]- 1;
    if (v7 > 0xA)
    {
      v8 = @"GATMEDIATYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D7198[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"originalMediaType"];
  }

  if (self->_underlyingError)
  {
    underlyingError = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
    dictionaryRepresentation = [underlyingError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_originalMediaType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(GATSchemaGATError *)self->_underlyingError hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  originalMediaSizeInKBs = self->_originalMediaSizeInKBs;
  if (originalMediaSizeInKBs < 0.0)
  {
    originalMediaSizeInKBs = -originalMediaSizeInKBs;
  }

  *v6.i64 = floor(originalMediaSizeInKBs + 0.5);
  v10 = (originalMediaSizeInKBs - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(GATSchemaGATError *)self->_underlyingError hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    originalMediaType = self->_originalMediaType;
    if (originalMediaType != [equalCopy originalMediaType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (originalMediaSizeInKBs = self->_originalMediaSizeInKBs, [equalCopy originalMediaSizeInKBs], originalMediaSizeInKBs == v10))
    {
      underlyingError = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
      underlyingError2 = [equalCopy underlyingError];
      v13 = underlyingError2;
      if ((underlyingError != 0) != (underlyingError2 == 0))
      {
        underlyingError3 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
        if (!underlyingError3)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = underlyingError3;
        underlyingError4 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
        underlyingError5 = [equalCopy underlyingError];
        v18 = [underlyingError4 isEqual:underlyingError5];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  underlyingError = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];

  v6 = toCopy;
  if (underlyingError)
  {
    underlyingError2 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasOriginalMediaSizeInKBs:(BOOL)bs
{
  if (bs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GATSchemaGATLoadScreenContentEventEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GATSchemaGATLoadScreenContentEventEnded *)self deleteUnderlyingError];
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