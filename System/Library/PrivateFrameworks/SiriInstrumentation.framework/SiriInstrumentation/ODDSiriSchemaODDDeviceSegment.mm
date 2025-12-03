@interface ODDSiriSchemaODDDeviceSegment
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDDeviceSegment)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDDeviceSegment)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSegmentDataAvailabilityState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDDeviceSegment

- (ODDSiriSchemaODDDeviceSegment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ODDSiriSchemaODDDeviceSegment;
  v5 = [(ODDSiriSchemaODDDeviceSegment *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"segmentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceSegment setSegmentType:](v5, "setSegmentType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"segmentDataAvailabilityState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceSegment setSegmentDataAvailabilityState:](v5, "setSegmentDataAvailabilityState:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDeviceSegment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDeviceSegment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDDeviceSegment *)self dictionaryRepresentation];
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
    segmentDataAvailabilityState = [(ODDSiriSchemaODDDeviceSegment *)self segmentDataAvailabilityState];
    v6 = @"ODDDATAAVAILABILITYSTATE_UNKNOWN";
    if (segmentDataAvailabilityState == 1)
    {
      v6 = @"ODDDATAAVAILABILITYSTATE_COMPLETE";
    }

    if (segmentDataAvailabilityState == 2)
    {
      v7 = @"ODDDATAAVAILABILITYSTATE_INSUFFICIENT_DATA";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"segmentDataAvailabilityState"];
    has = self->_has;
  }

  if (has)
  {
    segmentType = [(ODDSiriSchemaODDDeviceSegment *)self segmentType];
    v9 = @"ODDDEVICESEGMENTTYPE_UNKNOWN";
    if (segmentType == 1)
    {
      v9 = @"ODDDEVICESEGMENTTYPE_NONE";
    }

    if (segmentType == 2)
    {
      v10 = @"ODDDEVICESEGMENTTYPE_ASSISTANT_2X3";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"segmentType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_segmentType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_segmentDataAvailabilityState;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    segmentType = self->_segmentType;
    if (segmentType != [equalCopy segmentType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    segmentDataAvailabilityState = self->_segmentDataAvailabilityState;
    if (segmentDataAvailabilityState != [equalCopy segmentDataAvailabilityState])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasSegmentDataAvailabilityState:(BOOL)state
{
  if (state)
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