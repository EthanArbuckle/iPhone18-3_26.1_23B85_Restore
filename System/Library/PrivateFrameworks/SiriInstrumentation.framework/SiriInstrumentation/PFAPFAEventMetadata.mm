@interface PFAPFAEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAPFAEventMetadata)initWithDictionary:(id)dictionary;
- (PFAPFAEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PFAPFAEventMetadata

- (PFAPFAEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PFAPFAEventMetadata;
  v5 = [(PFAPFAEventMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPFAEventMetadata setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[PFAPFADeviceDimensions alloc] initWithDictionary:v7];
      [(PFAPFAEventMetadata *)v5 setDeviceDimensions:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (PFAPFAEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPFAEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPFAEventMetadata *)self dictionaryRepresentation];
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
  if (self->_deviceDimensions)
  {
    deviceDimensions = [(PFAPFAEventMetadata *)self deviceDimensions];
    dictionaryRepresentation = [deviceDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"deviceDimensions"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PFAPFAEventMetadata eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
    [dictionary setObject:v7 forKeyedSubscript:@"eventTimestampInMsSince1970"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_eventTimestampInMsSince1970;
  }

  else
  {
    v2 = 0;
  }

  return [(PFAPFADeviceDimensions *)self->_deviceDimensions hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970, eventTimestampInMsSince1970 == [equalCopy eventTimestampInMsSince1970]))
      {
        deviceDimensions = [(PFAPFAEventMetadata *)self deviceDimensions];
        deviceDimensions2 = [equalCopy deviceDimensions];
        v8 = deviceDimensions2;
        if ((deviceDimensions != 0) != (deviceDimensions2 == 0))
        {
          deviceDimensions3 = [(PFAPFAEventMetadata *)self deviceDimensions];
          if (!deviceDimensions3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = deviceDimensions3;
          deviceDimensions4 = [(PFAPFAEventMetadata *)self deviceDimensions];
          deviceDimensions5 = [equalCopy deviceDimensions];
          v13 = [deviceDimensions4 isEqual:deviceDimensions5];

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
    PBDataWriterWriteUint64Field();
  }

  deviceDimensions = [(PFAPFAEventMetadata *)self deviceDimensions];

  v5 = toCopy;
  if (deviceDimensions)
  {
    deviceDimensions2 = [(PFAPFAEventMetadata *)self deviceDimensions];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFAPFAEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFAPFAEventMetadata *)self deviceDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PFAPFAEventMetadata *)self deleteDeviceDimensions];
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