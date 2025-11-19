@interface _SFPBBeginMapsRoutingCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBBeginMapsRoutingCommand)initWithDictionary:(id)a3;
- (_SFPBBeginMapsRoutingCommand)initWithFacade:(id)a3;
- (_SFPBBeginMapsRoutingCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setMapsData:(id)a3;
- (void)setName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBBeginMapsRoutingCommand

- (_SFPBBeginMapsRoutingCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBBeginMapsRoutingCommand *)self init];
  if (v5)
  {
    v6 = [v4 location];

    if (v6)
    {
      v7 = [_SFPBLatLng alloc];
      v8 = [v4 location];
      v9 = [(_SFPBLatLng *)v7 initWithFacade:v8];
      [(_SFPBBeginMapsRoutingCommand *)v5 setLocation:v9];
    }

    v10 = [v4 mapsData];

    if (v10)
    {
      v11 = [v4 mapsData];
      [(_SFPBBeginMapsRoutingCommand *)v5 setMapsData:v11];
    }

    if ([v4 hasShouldSearchDirectionsAlongCurrentRoute])
    {
      -[_SFPBBeginMapsRoutingCommand setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v4 shouldSearchDirectionsAlongCurrentRoute]);
    }

    v12 = [v4 name];

    if (v12)
    {
      v13 = [v4 name];
      [(_SFPBBeginMapsRoutingCommand *)v5 setName:v13];
    }

    if ([v4 hasDirectionsMode])
    {
      -[_SFPBBeginMapsRoutingCommand setDirectionsMode:](v5, "setDirectionsMode:", [v4 directionsMode]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBBeginMapsRoutingCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFPBBeginMapsRoutingCommand;
  v5 = [(_SFPBBeginMapsRoutingCommand *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBBeginMapsRoutingCommand *)v5 setLocation:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(_SFPBBeginMapsRoutingCommand *)v5 setMapsData:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBBeginMapsRoutingCommand setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBBeginMapsRoutingCommand *)v5 setName:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"directionsMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBBeginMapsRoutingCommand setDirectionsMode:](v5, "setDirectionsMode:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBBeginMapsRoutingCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBBeginMapsRoutingCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBBeginMapsRoutingCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_directionsMode)
  {
    v4 = [(_SFPBBeginMapsRoutingCommand *)self directionsMode];
    if (v4 >= 6)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE580[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"directionsMode"];
  }

  if (self->_location)
  {
    v6 = [(_SFPBBeginMapsRoutingCommand *)self location];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"location"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"location"];
    }
  }

  if (self->_mapsData)
  {
    v9 = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
    v10 = [v9 base64EncodedStringWithOptions:0];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_name)
  {
    v12 = [(_SFPBBeginMapsRoutingCommand *)self name];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"name"];
  }

  if (self->_shouldSearchDirectionsAlongCurrentRoute)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBBeginMapsRoutingCommand shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
    [v3 setObject:v14 forKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBBeginMapsRoutingCommand *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v7 = [(_SFPBBeginMapsRoutingCommand *)self location];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBBeginMapsRoutingCommand *)self location];
    v10 = [v4 location];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
  v6 = [v4 mapsData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v12 = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
    v15 = [v4 mapsData];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  shouldSearchDirectionsAlongCurrentRoute = self->_shouldSearchDirectionsAlongCurrentRoute;
  if (shouldSearchDirectionsAlongCurrentRoute != [v4 shouldSearchDirectionsAlongCurrentRoute])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBBeginMapsRoutingCommand *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(_SFPBBeginMapsRoutingCommand *)self name];
  if (!v18)
  {

LABEL_21:
    directionsMode = self->_directionsMode;
    v23 = directionsMode == [v4 directionsMode];
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [(_SFPBBeginMapsRoutingCommand *)self name];
  v21 = [v4 name];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBBeginMapsRoutingCommand *)self location];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBBeginMapsRoutingCommand *)self mapsData];
  if (v5)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBBeginMapsRoutingCommand *)self shouldSearchDirectionsAlongCurrentRoute])
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(_SFPBBeginMapsRoutingCommand *)self name];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBBeginMapsRoutingCommand *)self directionsMode];
  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteInt32Field();
    v8 = v9;
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)a3
{
  v4 = [a3 copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

@end