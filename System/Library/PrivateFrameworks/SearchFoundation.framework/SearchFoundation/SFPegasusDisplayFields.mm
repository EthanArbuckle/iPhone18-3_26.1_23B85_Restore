@interface SFPegasusDisplayFields
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPegasusDisplayFields)initWithCoder:(id)coder;
- (SFPegasusDisplayFields)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPegasusDisplayFields

- (SFPegasusDisplayFields)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v18.receiver = self;
  v18.super_class = SFPegasusDisplayFields;
  v5 = [(SFPegasusDisplayFields *)&v18 init];
  if (v5)
  {
    displayStatus = [protobufCopy displayStatus];

    if (displayStatus)
    {
      displayStatus2 = [protobufCopy displayStatus];
      [(SFPegasusDisplayFields *)v5 setDisplayStatus:displayStatus2];
    }

    departureTime = [protobufCopy departureTime];

    if (departureTime)
    {
      departureTime2 = [protobufCopy departureTime];
      v10 = MEMORY[0x1E695DF00];
      [departureTime2 secondsSince1970];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(SFPegasusDisplayFields *)v5 setDepartureTime:v11];
    }

    arrivalTime = [protobufCopy arrivalTime];

    if (arrivalTime)
    {
      arrivalTime2 = [protobufCopy arrivalTime];
      v14 = MEMORY[0x1E695DF00];
      [arrivalTime2 secondsSince1970];
      v15 = [v14 dateWithTimeIntervalSince1970:?];
      [(SFPegasusDisplayFields *)v5 setArrivalTime:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  displayStatus = [(SFPegasusDisplayFields *)self displayStatus];
  v4 = [displayStatus hash];
  departureTime = [(SFPegasusDisplayFields *)self departureTime];
  v6 = [departureTime hash] ^ v4;
  arrivalTime = [(SFPegasusDisplayFields *)self arrivalTime];
  v8 = [arrivalTime hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFPegasusDisplayFields *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      displayStatus = [(SFPegasusDisplayFields *)self displayStatus];
      displayStatus2 = [(SFPegasusDisplayFields *)v6 displayStatus];
      if ((displayStatus != 0) == (displayStatus2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      displayStatus3 = [(SFPegasusDisplayFields *)self displayStatus];
      if (displayStatus3)
      {
        displayStatus4 = [(SFPegasusDisplayFields *)self displayStatus];
        displayStatus5 = [(SFPegasusDisplayFields *)v6 displayStatus];
        if (![displayStatus4 isEqual:displayStatus5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = displayStatus5;
      }

      departureTime = [(SFPegasusDisplayFields *)self departureTime];
      departureTime2 = [(SFPegasusDisplayFields *)v6 departureTime];
      v14 = departureTime2;
      if ((departureTime != 0) == (departureTime2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      departureTime3 = [(SFPegasusDisplayFields *)self departureTime];
      if (departureTime3)
      {
        v25 = departureTime;
        departureTime4 = [(SFPegasusDisplayFields *)self departureTime];
        departureTime5 = [(SFPegasusDisplayFields *)v6 departureTime];
        v28 = departureTime4;
        if (![departureTime4 isEqual:?])
        {
          v11 = 0;
          departureTime = v25;
          goto LABEL_25;
        }

        v29 = departureTime3;
        v30 = displayStatus4;
        departureTime = v25;
      }

      else
      {
        v29 = 0;
        v30 = displayStatus4;
      }

      arrivalTime = [(SFPegasusDisplayFields *)self arrivalTime];
      arrivalTime2 = [(SFPegasusDisplayFields *)v6 arrivalTime];
      if ((arrivalTime != 0) == (arrivalTime2 == 0))
      {

        v11 = 0;
        departureTime3 = v29;
        displayStatus4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = arrivalTime;
        v26 = arrivalTime2;
        arrivalTime3 = [(SFPegasusDisplayFields *)self arrivalTime];
        departureTime3 = v29;
        if (arrivalTime3)
        {
          v23 = arrivalTime3;
          arrivalTime4 = [(SFPegasusDisplayFields *)self arrivalTime];
          arrivalTime5 = [(SFPegasusDisplayFields *)v6 arrivalTime];
          v11 = [arrivalTime4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        displayStatus4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      displayStatus5 = v31;
      if (!displayStatus3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  displayStatus = [(SFPegasusDisplayFields *)self displayStatus];
  v6 = [displayStatus copy];
  [v4 setDisplayStatus:v6];

  departureTime = [(SFPegasusDisplayFields *)self departureTime];
  v8 = [departureTime copy];
  [v4 setDepartureTime:v8];

  arrivalTime = [(SFPegasusDisplayFields *)self arrivalTime];
  v10 = [arrivalTime copy];
  [v4 setArrivalTime:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPegasusDisplayFields alloc] initWithFacade:self];
  jsonData = [(_SFPBPegasusDisplayFields *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPegasusDisplayFields alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPegasusDisplayFields *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPegasusDisplayFields alloc] initWithFacade:self];
  data = [(_SFPBPegasusDisplayFields *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPegasusDisplayFields)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPegasusDisplayFields alloc] initWithData:v5];
  v7 = [(SFPegasusDisplayFields *)self initWithProtobuf:v6];

  return v7;
}

@end