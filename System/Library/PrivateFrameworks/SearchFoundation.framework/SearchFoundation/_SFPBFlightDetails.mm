@interface _SFPBFlightDetails
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFlightDetails)initWithDictionary:(id)dictionary;
- (_SFPBFlightDetails)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFlightDetails

- (_SFPBFlightDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBFlightDetails;
  v5 = [(_SFPBFlightDetails *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightDetails setTimestamp:](v5, "setTimestamp:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBFlightDetails)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFlightDetails *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFlightDetails *)self dictionaryRepresentation];
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
  if (self->_timestamp)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBFlightDetails timestamp](self, "timestamp")}];
    [dictionary setObject:v4 forKeyedSubscript:@"timestamp"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    v6 = timestamp == [equalCopy timestamp];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBFlightDetails *)self timestamp])
  {
    PBDataWriterWriteUint64Field();
  }
}

@end