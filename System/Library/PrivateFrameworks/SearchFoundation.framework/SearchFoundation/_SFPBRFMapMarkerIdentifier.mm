@interface _SFPBRFMapMarkerIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapMarkerIdentifier)initWithDictionary:(id)dictionary;
- (_SFPBRFMapMarkerIdentifier)initWithFacade:(id)facade;
- (_SFPBRFMapMarkerIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setMuid:(id)muid;
- (void)setResultProviderID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapMarkerIdentifier

- (_SFPBRFMapMarkerIdentifier)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMapMarkerIdentifier *)self init];
  if (v5)
  {
    muid = [facadeCopy muid];

    if (muid)
    {
      muid2 = [facadeCopy muid];
      [(_SFPBRFMapMarkerIdentifier *)v5 setMuid:muid2];
    }

    resultProviderID = [facadeCopy resultProviderID];

    if (resultProviderID)
    {
      resultProviderID2 = [facadeCopy resultProviderID];
      [(_SFPBRFMapMarkerIdentifier *)v5 setResultProviderID:resultProviderID2];
    }

    if ([facadeCopy hasIsForCameraPositionOnly])
    {
      -[_SFPBRFMapMarkerIdentifier setIsForCameraPositionOnly:](v5, "setIsForCameraPositionOnly:", [facadeCopy isForCameraPositionOnly]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBRFMapMarkerIdentifier;
  v5 = [(_SFPBRFMapMarkerIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"muid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFMapMarkerIdentifier *)v5 setMuid:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultProviderID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRFMapMarkerIdentifier *)v5 setResultProviderID:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isForCameraPositionOnly"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMapMarkerIdentifier setIsForCameraPositionOnly:](v5, "setIsForCameraPositionOnly:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBRFMapMarkerIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapMarkerIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapMarkerIdentifier *)self dictionaryRepresentation];
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
  if (self->_isForCameraPositionOnly)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFMapMarkerIdentifier isForCameraPositionOnly](self, "isForCameraPositionOnly")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isForCameraPositionOnly"];
  }

  if (self->_muid)
  {
    muid = [(_SFPBRFMapMarkerIdentifier *)self muid];
    v6 = [muid copy];
    [dictionary setObject:v6 forKeyedSubscript:@"muid"];
  }

  if (self->_resultProviderID)
  {
    resultProviderID = [(_SFPBRFMapMarkerIdentifier *)self resultProviderID];
    v8 = [resultProviderID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultProviderID"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_muid hash];
  v4 = [(NSString *)self->_resultProviderID hash];
  v5 = 2654435761;
  if (!self->_isForCameraPositionOnly)
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  muid = [(_SFPBRFMapMarkerIdentifier *)self muid];
  muid2 = [equalCopy muid];
  if ((muid != 0) == (muid2 == 0))
  {
    goto LABEL_11;
  }

  muid3 = [(_SFPBRFMapMarkerIdentifier *)self muid];
  if (muid3)
  {
    v8 = muid3;
    muid4 = [(_SFPBRFMapMarkerIdentifier *)self muid];
    muid5 = [equalCopy muid];
    v11 = [muid4 isEqual:muid5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  muid = [(_SFPBRFMapMarkerIdentifier *)self resultProviderID];
  muid2 = [equalCopy resultProviderID];
  if ((muid != 0) != (muid2 == 0))
  {
    resultProviderID = [(_SFPBRFMapMarkerIdentifier *)self resultProviderID];
    if (!resultProviderID)
    {

LABEL_15:
      isForCameraPositionOnly = self->_isForCameraPositionOnly;
      v17 = isForCameraPositionOnly == [equalCopy isForCameraPositionOnly];
      goto LABEL_13;
    }

    v13 = resultProviderID;
    resultProviderID2 = [(_SFPBRFMapMarkerIdentifier *)self resultProviderID];
    resultProviderID3 = [equalCopy resultProviderID];
    v16 = [resultProviderID2 isEqual:resultProviderID3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  muid = [(_SFPBRFMapMarkerIdentifier *)self muid];
  if (muid)
  {
    PBDataWriterWriteStringField();
  }

  resultProviderID = [(_SFPBRFMapMarkerIdentifier *)self resultProviderID];
  if (resultProviderID)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRFMapMarkerIdentifier *)self isForCameraPositionOnly])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setResultProviderID:(id)d
{
  v4 = [d copy];
  resultProviderID = self->_resultProviderID;
  self->_resultProviderID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMuid:(id)muid
{
  v4 = [muid copy];
  muid = self->_muid;
  self->_muid = v4;

  MEMORY[0x1EEE66BB8]();
}

@end