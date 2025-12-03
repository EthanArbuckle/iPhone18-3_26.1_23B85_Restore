@interface _SFPBWeatherDetails
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBWeatherDetails)initWithDictionary:(id)dictionary;
- (_SFPBWeatherDetails)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBWeatherDetails

- (_SFPBWeatherDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBWeatherDetails;
  v5 = [(_SFPBWeatherDetails *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBLatLng alloc] initWithDictionary:v6];
      [(_SFPBWeatherDetails *)v5 setLocation:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBWeatherDetails)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBWeatherDetails *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBWeatherDetails *)self dictionaryRepresentation];
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
  if (self->_location)
  {
    location = [(_SFPBWeatherDetails *)self location];
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

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    location = [(_SFPBWeatherDetails *)self location];
    location2 = [equalCopy location];
    v7 = location2;
    if ((location != 0) != (location2 == 0))
    {
      location3 = [(_SFPBWeatherDetails *)self location];
      if (!location3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = location3;
      location4 = [(_SFPBWeatherDetails *)self location];
      location5 = [equalCopy location];
      v12 = [location4 isEqual:location5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  location = [(_SFPBWeatherDetails *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end