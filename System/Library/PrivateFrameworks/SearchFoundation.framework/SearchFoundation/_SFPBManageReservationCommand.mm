@interface _SFPBManageReservationCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBManageReservationCommand)initWithDictionary:(id)dictionary;
- (_SFPBManageReservationCommand)initWithFacade:(id)facade;
- (_SFPBManageReservationCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBManageReservationCommand

- (_SFPBManageReservationCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBManageReservationCommand *)self init];
  if (v5)
  {
    if ([facadeCopy hasPlaceHolderProperty])
    {
      -[_SFPBManageReservationCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [facadeCopy placeHolderProperty]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBManageReservationCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBManageReservationCommand;
  v5 = [(_SFPBManageReservationCommand *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"placeHolderProperty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBManageReservationCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBManageReservationCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBManageReservationCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBManageReservationCommand *)self dictionaryRepresentation];
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
  if (self->_placeHolderProperty)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBManageReservationCommand placeHolderProperty](self, "placeHolderProperty")}];
    [dictionary setObject:v4 forKeyedSubscript:@"placeHolderProperty"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if (self->_placeHolderProperty)
  {
    return 2654435761;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    placeHolderProperty = self->_placeHolderProperty;
    v6 = placeHolderProperty == [equalCopy placeHolderProperty];
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
  if ([(_SFPBManageReservationCommand *)self placeHolderProperty])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end