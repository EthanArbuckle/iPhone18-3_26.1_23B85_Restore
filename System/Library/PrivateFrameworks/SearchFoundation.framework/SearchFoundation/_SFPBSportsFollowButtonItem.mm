@interface _SFPBSportsFollowButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSportsFollowButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBSportsFollowButtonItem)initWithFacade:(id)facade;
- (_SFPBSportsFollowButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setFallbackTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSportsFollowButtonItem

- (_SFPBSportsFollowButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSportsFollowButtonItem *)self init];
  if (v5)
  {
    sportsItem = [facadeCopy sportsItem];

    if (sportsItem)
    {
      v7 = [_SFPBSportsItem alloc];
      sportsItem2 = [facadeCopy sportsItem];
      v9 = [(_SFPBSportsItem *)v7 initWithFacade:sportsItem2];
      [(_SFPBSportsFollowButtonItem *)v5 setSportsItem:v9];
    }

    toggleButtonConfiguration = [facadeCopy toggleButtonConfiguration];

    if (toggleButtonConfiguration)
    {
      v11 = [_SFPBToggleButtonConfiguration alloc];
      toggleButtonConfiguration2 = [facadeCopy toggleButtonConfiguration];
      v13 = [(_SFPBToggleButtonConfiguration *)v11 initWithFacade:toggleButtonConfiguration2];
      [(_SFPBSportsFollowButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    fallbackTitle = [facadeCopy fallbackTitle];

    if (fallbackTitle)
    {
      fallbackTitle2 = [facadeCopy fallbackTitle];
      [(_SFPBSportsFollowButtonItem *)v5 setFallbackTitle:fallbackTitle2];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBSportsFollowButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBSportsFollowButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBSportsFollowButtonItem;
  v5 = [(_SFPBSportsFollowButtonItem *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sportsItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBSportsItem alloc] initWithDictionary:v6];
      [(_SFPBSportsFollowButtonItem *)v5 setSportsItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toggleButtonConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBToggleButtonConfiguration alloc] initWithDictionary:v8];
      [(_SFPBSportsFollowButtonItem *)v5 setToggleButtonConfiguration:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fallbackTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSportsFollowButtonItem *)v5 setFallbackTitle:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSportsFollowButtonItem setUniqueId:](v5, "setUniqueId:", [v12 unsignedLongLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBSportsFollowButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSportsFollowButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSportsFollowButtonItem *)self dictionaryRepresentation];
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
  if (self->_fallbackTitle)
  {
    fallbackTitle = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
    v5 = [fallbackTitle copy];
    [dictionary setObject:v5 forKeyedSubscript:@"fallbackTitle"];
  }

  if (self->_sportsItem)
  {
    sportsItem = [(_SFPBSportsFollowButtonItem *)self sportsItem];
    dictionaryRepresentation = [sportsItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sportsItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sportsItem"];
    }
  }

  if (self->_toggleButtonConfiguration)
  {
    toggleButtonConfiguration = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
    dictionaryRepresentation2 = [toggleButtonConfiguration dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"toggleButtonConfiguration"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"toggleButtonConfiguration"];
    }
  }

  if (self->_uniqueId)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBSportsFollowButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v12 forKeyedSubscript:@"uniqueId"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBSportsItem *)self->_sportsItem hash];
  v4 = [(_SFPBToggleButtonConfiguration *)self->_toggleButtonConfiguration hash];
  return v4 ^ v3 ^ [(NSString *)self->_fallbackTitle hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  sportsItem = [(_SFPBSportsFollowButtonItem *)self sportsItem];
  sportsItem2 = [equalCopy sportsItem];
  if ((sportsItem != 0) == (sportsItem2 == 0))
  {
    goto LABEL_16;
  }

  sportsItem3 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
  if (sportsItem3)
  {
    v8 = sportsItem3;
    sportsItem4 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
    sportsItem5 = [equalCopy sportsItem];
    v11 = [sportsItem4 isEqual:sportsItem5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  sportsItem = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
  sportsItem2 = [equalCopy toggleButtonConfiguration];
  if ((sportsItem != 0) == (sportsItem2 == 0))
  {
    goto LABEL_16;
  }

  toggleButtonConfiguration = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
  if (toggleButtonConfiguration)
  {
    v13 = toggleButtonConfiguration;
    toggleButtonConfiguration2 = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
    toggleButtonConfiguration3 = [equalCopy toggleButtonConfiguration];
    v16 = [toggleButtonConfiguration2 isEqual:toggleButtonConfiguration3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  sportsItem = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
  sportsItem2 = [equalCopy fallbackTitle];
  if ((sportsItem != 0) != (sportsItem2 == 0))
  {
    fallbackTitle = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
    if (!fallbackTitle)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [equalCopy uniqueId];
      goto LABEL_18;
    }

    v18 = fallbackTitle;
    fallbackTitle2 = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
    fallbackTitle3 = [equalCopy fallbackTitle];
    v21 = [fallbackTitle2 isEqual:fallbackTitle3];

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
  sportsItem = [(_SFPBSportsFollowButtonItem *)self sportsItem];
  if (sportsItem)
  {
    PBDataWriterWriteSubmessage();
  }

  toggleButtonConfiguration = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
  if (toggleButtonConfiguration)
  {
    PBDataWriterWriteSubmessage();
  }

  fallbackTitle = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
  if (fallbackTitle)
  {
    PBDataWriterWriteStringField();
  }

  uniqueId = [(_SFPBSportsFollowButtonItem *)self uniqueId];
  v8 = toCopy;
  if (uniqueId)
  {
    PBDataWriterWriteUint64Field();
    v8 = toCopy;
  }
}

- (void)setFallbackTitle:(id)title
{
  v4 = [title copy];
  fallbackTitle = self->_fallbackTitle;
  self->_fallbackTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

@end