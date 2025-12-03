@interface SISchemaDeviceDynamicContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDeviceDynamicContext)initWithDictionary:(id)dictionary;
- (SISchemaDeviceDynamicContext)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDeviceDynamicContext

- (SISchemaDeviceDynamicContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaDeviceDynamicContext;
  v5 = [(SISchemaDeviceDynamicContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaLocation alloc] initWithDictionary:v6];
      [(SISchemaDeviceDynamicContext *)v5 setLocation:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaDeviceDynamicContext *)v5 setCountryCode:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(SISchemaDeviceDynamicContext *)v5 setTimeIntervalSince1970:?];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaDeviceDynamicContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDeviceDynamicContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDeviceDynamicContext *)self dictionaryRepresentation];
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
  if (self->_countryCode)
  {
    countryCode = [(SISchemaDeviceDynamicContext *)self countryCode];
    v5 = [countryCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"countryCode"];
  }

  if (self->_location)
  {
    location = [(SISchemaDeviceDynamicContext *)self location];
    dictionaryRepresentation = [location dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"location"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"location"];
    }
  }

  if (*&self->_has)
  {
    v9 = MEMORY[0x1E696AD98];
    [(SISchemaDeviceDynamicContext *)self timeIntervalSince1970];
    v10 = [v9 numberWithDouble:?];
    [dictionary setObject:v10 forKeyedSubscript:@"timeIntervalSince1970"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaLocation *)self->_location hash];
  v4 = [(NSString *)self->_countryCode hash];
  if (*&self->_has)
  {
    timeIntervalSince1970 = self->_timeIntervalSince1970;
    if (timeIntervalSince1970 < 0.0)
    {
      timeIntervalSince1970 = -timeIntervalSince1970;
    }

    *v5.i64 = floor(timeIntervalSince1970 + 0.5);
    v9 = (timeIntervalSince1970 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  location = [(SISchemaDeviceDynamicContext *)self location];
  location2 = [equalCopy location];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_11;
  }

  location3 = [(SISchemaDeviceDynamicContext *)self location];
  if (location3)
  {
    v8 = location3;
    location4 = [(SISchemaDeviceDynamicContext *)self location];
    location5 = [equalCopy location];
    v11 = [location4 isEqual:location5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  location = [(SISchemaDeviceDynamicContext *)self countryCode];
  location2 = [equalCopy countryCode];
  if ((location != 0) == (location2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  countryCode = [(SISchemaDeviceDynamicContext *)self countryCode];
  if (countryCode)
  {
    v13 = countryCode;
    countryCode2 = [(SISchemaDeviceDynamicContext *)self countryCode];
    countryCode3 = [equalCopy countryCode];
    v16 = [countryCode2 isEqual:countryCode3];

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
    if ((*&self->_has & 1) == 0 || (timeIntervalSince1970 = self->_timeIntervalSince1970, [equalCopy timeIntervalSince1970], timeIntervalSince1970 == v20))
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
  location = [(SISchemaDeviceDynamicContext *)self location];

  if (location)
  {
    location2 = [(SISchemaDeviceDynamicContext *)self location];
    PBDataWriterWriteSubmessage();
  }

  countryCode = [(SISchemaDeviceDynamicContext *)self countryCode];

  if (countryCode)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaDeviceDynamicContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaDeviceDynamicContext *)self location:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaDeviceDynamicContext *)self deleteLocation];
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