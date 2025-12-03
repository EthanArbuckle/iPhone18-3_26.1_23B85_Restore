@interface _SFPBBeginMapsRoutingCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBBeginMapsRoutingCommand)initWithDictionary:(id)dictionary;
- (_SFPBBeginMapsRoutingCommand)initWithFacade:(id)facade;
- (_SFPBBeginMapsRoutingCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setMapsData:(id)data;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBBeginMapsRoutingCommand

- (_SFPBBeginMapsRoutingCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBBeginMapsRoutingCommand *)self init];
  if (v5)
  {
    location = [facadeCopy location];

    if (location)
    {
      v7 = [_SFPBLatLng alloc];
      location2 = [facadeCopy location];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:location2];
      [(_SFPBBeginMapsRoutingCommand *)v5 setLocation:v9];
    }

    mapsData = [facadeCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [facadeCopy mapsData];
      [(_SFPBBeginMapsRoutingCommand *)v5 setMapsData:mapsData2];
    }

    if ([facadeCopy hasShouldSearchDirectionsAlongCurrentRoute])
    {
      -[_SFPBBeginMapsRoutingCommand setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [facadeCopy shouldSearchDirectionsAlongCurrentRoute]);
    }

    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBBeginMapsRoutingCommand *)v5 setName:name2];
    }

    if ([facadeCopy hasDirectionsMode])
    {
      -[_SFPBBeginMapsRoutingCommand setDirectionsMode:](v5, "setDirectionsMode:", [facadeCopy directionsMode]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBBeginMapsRoutingCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBBeginMapsRoutingCommand;
  v5 = [(_SFPBBeginMapsRoutingCommand *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBBeginMapsRoutingCommand *)v5 setLocation:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBBeginMapsRoutingCommand *)v5 setMapsData:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBBeginMapsRoutingCommand setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBBeginMapsRoutingCommand *)v5 setName:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"directionsMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBBeginMapsRoutingCommand setDirectionsMode:](v5, "setDirectionsMode:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBBeginMapsRoutingCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBBeginMapsRoutingCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBBeginMapsRoutingCommand *)self dictionaryRepresentation];
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
  if (self->_directionsMode)
  {
    directionsMode = [(_SFPBBeginMapsRoutingCommand *)self directionsMode];
    if (directionsMode >= 6)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", directionsMode];
    }

    else
    {
      v5 = off_1E7ACE580[directionsMode];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"directionsMode"];
  }

  if (self->_location)
  {
    location = [(_SFPBBeginMapsRoutingCommand *)self location];
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

  if (self->_mapsData)
  {
    mapsData = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
    v10 = [mapsData base64EncodedStringWithOptions:0];
    if (v10)
    {
      [dictionary setObject:v10 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_name)
  {
    name = [(_SFPBBeginMapsRoutingCommand *)self name];
    v13 = [name copy];
    [dictionary setObject:v13 forKeyedSubscript:@"name"];
  }

  if (self->_shouldSearchDirectionsAlongCurrentRoute)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBBeginMapsRoutingCommand shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
    [dictionary setObject:v14 forKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBLatLng *)self->_location hash];
  v4 = [(NSData *)self->_mapsData hash];
  if (self->_shouldSearchDirectionsAlongCurrentRoute)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_name hash]^ (2654435761 * self->_directionsMode);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  location = [(_SFPBBeginMapsRoutingCommand *)self location];
  location2 = [equalCopy location];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_17;
  }

  location3 = [(_SFPBBeginMapsRoutingCommand *)self location];
  if (location3)
  {
    v8 = location3;
    location4 = [(_SFPBBeginMapsRoutingCommand *)self location];
    location5 = [equalCopy location];
    v11 = [location4 isEqual:location5];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  location = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
  location2 = [equalCopy mapsData];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_17;
  }

  mapsData = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
  if (mapsData)
  {
    v13 = mapsData;
    mapsData2 = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
    mapsData3 = [equalCopy mapsData];
    v16 = [mapsData2 isEqual:mapsData3];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  shouldSearchDirectionsAlongCurrentRoute = self->_shouldSearchDirectionsAlongCurrentRoute;
  if (shouldSearchDirectionsAlongCurrentRoute != [equalCopy shouldSearchDirectionsAlongCurrentRoute])
  {
    goto LABEL_18;
  }

  location = [(_SFPBBeginMapsRoutingCommand *)self name];
  location2 = [equalCopy name];
  if ((location != 0) == (location2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  name = [(_SFPBBeginMapsRoutingCommand *)self name];
  if (!name)
  {

LABEL_21:
    directionsMode = self->_directionsMode;
    v23 = directionsMode == [equalCopy directionsMode];
    goto LABEL_19;
  }

  v19 = name;
  name2 = [(_SFPBBeginMapsRoutingCommand *)self name];
  name3 = [equalCopy name];
  v22 = [name2 isEqual:name3];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  location = [(_SFPBBeginMapsRoutingCommand *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  mapsData = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
  if (mapsData)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBBeginMapsRoutingCommand *)self shouldSearchDirectionsAlongCurrentRoute])
  {
    PBDataWriterWriteBOOLField();
  }

  name = [(_SFPBBeginMapsRoutingCommand *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }

  directionsMode = [(_SFPBBeginMapsRoutingCommand *)self directionsMode];
  v8 = toCopy;
  if (directionsMode)
  {
    PBDataWriterWriteInt32Field();
    v8 = toCopy;
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)data
{
  v4 = [data copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

@end