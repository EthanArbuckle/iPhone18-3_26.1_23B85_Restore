@interface _SFPBPegasusDisplayFields
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPegasusDisplayFields)initWithDictionary:(id)dictionary;
- (_SFPBPegasusDisplayFields)initWithFacade:(id)facade;
- (_SFPBPegasusDisplayFields)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDisplayStatus:(id)status;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPegasusDisplayFields

- (_SFPBPegasusDisplayFields)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPegasusDisplayFields *)self init];
  if (v5)
  {
    displayStatus = [facadeCopy displayStatus];

    if (displayStatus)
    {
      displayStatus2 = [facadeCopy displayStatus];
      [(_SFPBPegasusDisplayFields *)v5 setDisplayStatus:displayStatus2];
    }

    departureTime = [facadeCopy departureTime];

    if (departureTime)
    {
      v9 = [_SFPBDate alloc];
      departureTime2 = [facadeCopy departureTime];
      v11 = [(_SFPBDate *)v9 initWithNSDate:departureTime2];
      [(_SFPBPegasusDisplayFields *)v5 setDepartureTime:v11];
    }

    arrivalTime = [facadeCopy arrivalTime];

    if (arrivalTime)
    {
      v13 = [_SFPBDate alloc];
      arrivalTime2 = [facadeCopy arrivalTime];
      v15 = [(_SFPBDate *)v13 initWithNSDate:arrivalTime2];
      [(_SFPBPegasusDisplayFields *)v5 setArrivalTime:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBPegasusDisplayFields)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBPegasusDisplayFields;
  v5 = [(_SFPBPegasusDisplayFields *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"displayStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPegasusDisplayFields *)v5 setDisplayStatus:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"departureTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBPegasusDisplayFields *)v5 setDepartureTime:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"arrivalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBDate alloc] initWithDictionary:v10];
      [(_SFPBPegasusDisplayFields *)v5 setArrivalTime:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBPegasusDisplayFields)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPegasusDisplayFields *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPegasusDisplayFields *)self dictionaryRepresentation];
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
  if (self->_arrivalTime)
  {
    arrivalTime = [(_SFPBPegasusDisplayFields *)self arrivalTime];
    dictionaryRepresentation = [arrivalTime dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"arrivalTime"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"arrivalTime"];
    }
  }

  if (self->_departureTime)
  {
    departureTime = [(_SFPBPegasusDisplayFields *)self departureTime];
    dictionaryRepresentation2 = [departureTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"departureTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"departureTime"];
    }
  }

  if (self->_displayStatus)
  {
    displayStatus = [(_SFPBPegasusDisplayFields *)self displayStatus];
    v11 = [displayStatus copy];
    [dictionary setObject:v11 forKeyedSubscript:@"displayStatus"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_displayStatus hash];
  v4 = [(_SFPBDate *)self->_departureTime hash]^ v3;
  return v4 ^ [(_SFPBDate *)self->_arrivalTime hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  displayStatus = [(_SFPBPegasusDisplayFields *)self displayStatus];
  displayStatus2 = [equalCopy displayStatus];
  if ((displayStatus != 0) == (displayStatus2 == 0))
  {
    goto LABEL_16;
  }

  displayStatus3 = [(_SFPBPegasusDisplayFields *)self displayStatus];
  if (displayStatus3)
  {
    v8 = displayStatus3;
    displayStatus4 = [(_SFPBPegasusDisplayFields *)self displayStatus];
    displayStatus5 = [equalCopy displayStatus];
    v11 = [displayStatus4 isEqual:displayStatus5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  displayStatus = [(_SFPBPegasusDisplayFields *)self departureTime];
  displayStatus2 = [equalCopy departureTime];
  if ((displayStatus != 0) == (displayStatus2 == 0))
  {
    goto LABEL_16;
  }

  departureTime = [(_SFPBPegasusDisplayFields *)self departureTime];
  if (departureTime)
  {
    v13 = departureTime;
    departureTime2 = [(_SFPBPegasusDisplayFields *)self departureTime];
    departureTime3 = [equalCopy departureTime];
    v16 = [departureTime2 isEqual:departureTime3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  displayStatus = [(_SFPBPegasusDisplayFields *)self arrivalTime];
  displayStatus2 = [equalCopy arrivalTime];
  if ((displayStatus != 0) != (displayStatus2 == 0))
  {
    arrivalTime = [(_SFPBPegasusDisplayFields *)self arrivalTime];
    if (!arrivalTime)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = arrivalTime;
    arrivalTime2 = [(_SFPBPegasusDisplayFields *)self arrivalTime];
    arrivalTime3 = [equalCopy arrivalTime];
    v21 = [arrivalTime2 isEqual:arrivalTime3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  displayStatus = [(_SFPBPegasusDisplayFields *)self displayStatus];
  if (displayStatus)
  {
    PBDataWriterWriteStringField();
  }

  departureTime = [(_SFPBPegasusDisplayFields *)self departureTime];
  if (departureTime)
  {
    PBDataWriterWriteSubmessage();
  }

  arrivalTime = [(_SFPBPegasusDisplayFields *)self arrivalTime];
  if (arrivalTime)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setDisplayStatus:(id)status
{
  v4 = [status copy];
  displayStatus = self->_displayStatus;
  self->_displayStatus = v4;

  MEMORY[0x1EEE66BB8]();
}

@end