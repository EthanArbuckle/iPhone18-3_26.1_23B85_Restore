@interface _SFPBTopic
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFlightDetails)flight;
- (_SFPBSportsDetail)sports;
- (_SFPBTopic)initWithDictionary:(id)dictionary;
- (_SFPBTopic)initWithJSON:(id)n;
- (_SFPBTopic)initWithSFTopic:(id)topic;
- (_SFPBWeatherDetails)weather;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setFlight:(id)flight;
- (void)setIdentifier:(id)identifier;
- (void)setQuery:(id)query;
- (void)setSports:(id)sports;
- (void)setWeather:(id)weather;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTopic

- (_SFPBTopic)initWithSFTopic:(id)topic
{
  topicCopy = topic;
  v19.receiver = self;
  v19.super_class = _SFPBTopic;
  v5 = [(_SFPBTopic *)&v19 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = topicCopy;
      -[_SFPBTopic setType:](v5, "setType:", [v6 queryType]);
      identifier = [v6 identifier];
      [(_SFPBTopic *)v5 setIdentifier:identifier];

      query = [v6 query];

      [(_SFPBTopic *)v5 setQuery:query];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = topicCopy;
      v10 = [_SFPBLatLng alloc];
      location = [v9 location];

      v12 = [(_SFPBLatLng *)v10 initWithFacade:location];
      weather = [(_SFPBTopic *)v5 weather];
      [weather setLocation:v12];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = [topicCopy date];
      [date timeIntervalSince1970];
      v16 = v15;
      flight = [(_SFPBTopic *)v5 flight];
      [flight setTimestamp:v16];
    }
  }

  return v5;
}

- (_SFPBTopic)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = _SFPBTopic;
  v5 = [(_SFPBTopic *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"query"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTopic *)v5 setQuery:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTopic setType:](v5, "setType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBTopic *)v5 setIdentifier:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"flight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBFlightDetails alloc] initWithDictionary:v11];
      [(_SFPBTopic *)v5 setFlight:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"weather"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBWeatherDetails alloc] initWithDictionary:v13];
      [(_SFPBTopic *)v5 setWeather:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"sports"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBSportsDetail alloc] initWithDictionary:v15];
      [(_SFPBTopic *)v5 setSports:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (_SFPBTopic)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTopic *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTopic *)self dictionaryRepresentation];
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
  if (self->_flight)
  {
    flight = [(_SFPBTopic *)self flight];
    dictionaryRepresentation = [flight dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"flight"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"flight"];
    }
  }

  if (self->_identifier)
  {
    identifier = [(_SFPBTopic *)self identifier];
    v8 = [identifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"identifier"];
  }

  if (self->_query)
  {
    query = [(_SFPBTopic *)self query];
    v10 = [query copy];
    [dictionary setObject:v10 forKeyedSubscript:@"query"];
  }

  if (self->_sports)
  {
    sports = [(_SFPBTopic *)self sports];
    dictionaryRepresentation2 = [sports dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sports"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sports"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBTopic *)self type];
    if (type >= 9)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v15 = off_1E7ACE500[type];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"type"];
  }

  if (self->_weather)
  {
    weather = [(_SFPBTopic *)self weather];
    dictionaryRepresentation3 = [weather dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"weather"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"weather"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_query hash];
  v4 = 2654435761 * self->_type;
  v5 = v3 ^ [(NSString *)self->_identifier hash];
  v6 = v5 ^ [(_SFPBFlightDetails *)self->_flight hash];
  v7 = v6 ^ [(_SFPBWeatherDetails *)self->_weather hash];
  return v4 ^ v7 ^ [(_SFPBSportsDetail *)self->_sports hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  query = [(_SFPBTopic *)self query];
  query2 = [equalCopy query];
  if ((query != 0) == (query2 == 0))
  {
    goto LABEL_27;
  }

  query3 = [(_SFPBTopic *)self query];
  if (query3)
  {
    v8 = query3;
    query4 = [(_SFPBTopic *)self query];
    query5 = [equalCopy query];
    v11 = [query4 isEqual:query5];

    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_28;
  }

  query = [(_SFPBTopic *)self identifier];
  query2 = [equalCopy identifier];
  if ((query != 0) == (query2 == 0))
  {
    goto LABEL_27;
  }

  identifier = [(_SFPBTopic *)self identifier];
  if (identifier)
  {
    v14 = identifier;
    identifier2 = [(_SFPBTopic *)self identifier];
    identifier3 = [equalCopy identifier];
    v17 = [identifier2 isEqual:identifier3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  query = [(_SFPBTopic *)self flight];
  query2 = [equalCopy flight];
  if ((query != 0) == (query2 == 0))
  {
    goto LABEL_27;
  }

  flight = [(_SFPBTopic *)self flight];
  if (flight)
  {
    v19 = flight;
    flight2 = [(_SFPBTopic *)self flight];
    flight3 = [equalCopy flight];
    v22 = [flight2 isEqual:flight3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  query = [(_SFPBTopic *)self weather];
  query2 = [equalCopy weather];
  if ((query != 0) == (query2 == 0))
  {
    goto LABEL_27;
  }

  weather = [(_SFPBTopic *)self weather];
  if (weather)
  {
    v24 = weather;
    weather2 = [(_SFPBTopic *)self weather];
    weather3 = [equalCopy weather];
    v27 = [weather2 isEqual:weather3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  query = [(_SFPBTopic *)self sports];
  query2 = [equalCopy sports];
  if ((query != 0) == (query2 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  sports = [(_SFPBTopic *)self sports];
  if (!sports)
  {

LABEL_31:
    v33 = 1;
    goto LABEL_29;
  }

  v29 = sports;
  sports2 = [(_SFPBTopic *)self sports];
  sports3 = [equalCopy sports];
  v32 = [sports2 isEqual:sports3];

  if (v32)
  {
    goto LABEL_31;
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  query = [(_SFPBTopic *)self query];
  if (query)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTopic *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  identifier = [(_SFPBTopic *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteStringField();
  }

  flight = [(_SFPBTopic *)self flight];
  if (flight)
  {
    PBDataWriterWriteSubmessage();
  }

  weather = [(_SFPBTopic *)self weather];
  if (weather)
  {
    PBDataWriterWriteSubmessage();
  }

  sports = [(_SFPBTopic *)self sports];
  if (sports)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBSportsDetail)sports
{
  if (self->_whichDetail == 3)
  {
    v3 = self->_sports;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSports:(id)sports
{
  sportsCopy = sports;
  flight = self->_flight;
  self->_flight = 0;

  weather = self->_weather;
  self->_weather = 0;

  v7 = 3;
  if (!sportsCopy)
  {
    v7 = 0;
  }

  self->_whichDetail = v7;
  sports = self->_sports;
  self->_sports = sportsCopy;
}

- (_SFPBWeatherDetails)weather
{
  if (self->_whichDetail == 2)
  {
    v3 = self->_weather;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWeather:(id)weather
{
  weatherCopy = weather;
  flight = self->_flight;
  self->_flight = 0;

  sports = self->_sports;
  self->_sports = 0;

  self->_whichDetail = 2 * (weatherCopy != 0);
  weather = self->_weather;
  self->_weather = weatherCopy;
}

- (_SFPBFlightDetails)flight
{
  if (self->_whichDetail == 1)
  {
    v3 = self->_flight;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFlight:(id)flight
{
  flightCopy = flight;
  weather = self->_weather;
  self->_weather = 0;

  sports = self->_sports;
  self->_sports = 0;

  self->_whichDetail = flightCopy != 0;
  flight = self->_flight;
  self->_flight = flightCopy;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setQuery:(id)query
{
  v4 = [query copy];
  query = self->_query;
  self->_query = v4;

  MEMORY[0x1EEE66BB8]();
}

@end