@interface _SFPBMediaOffer
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaOffer)initWithDictionary:(id)dictionary;
- (_SFPBMediaOffer)initWithFacade:(id)facade;
- (_SFPBMediaOffer)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setOfferIdentifier:(id)identifier;
- (void)setSublabel:(id)sublabel;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaOffer

- (_SFPBMediaOffer)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMediaOffer *)self init];
  if (v5)
  {
    actionItem = [facadeCopy actionItem];

    if (actionItem)
    {
      v7 = [_SFPBActionItem alloc];
      actionItem2 = [facadeCopy actionItem];
      v9 = [(_SFPBActionItem *)v7 initWithFacade:actionItem2];
      [(_SFPBMediaOffer *)v5 setActionItem:v9];
    }

    sublabel = [facadeCopy sublabel];

    if (sublabel)
    {
      sublabel2 = [facadeCopy sublabel];
      [(_SFPBMediaOffer *)v5 setSublabel:sublabel2];
    }

    offerIdentifier = [facadeCopy offerIdentifier];

    if (offerIdentifier)
    {
      offerIdentifier2 = [facadeCopy offerIdentifier];
      [(_SFPBMediaOffer *)v5 setOfferIdentifier:offerIdentifier2];
    }

    if ([facadeCopy hasIsEnabled])
    {
      -[_SFPBMediaOffer setIsEnabled:](v5, "setIsEnabled:", [facadeCopy isEnabled]);
    }

    image = [facadeCopy image];

    if (image)
    {
      v15 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v17 = [(_SFPBImage *)v15 initWithFacade:image2];
      [(_SFPBMediaOffer *)v5 setImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBMediaOffer)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = _SFPBMediaOffer;
  v5 = [(_SFPBMediaOffer *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBActionItem alloc] initWithDictionary:v6];
      [(_SFPBMediaOffer *)v5 setActionItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sublabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBMediaOffer *)v5 setSublabel:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"offerIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBMediaOffer *)v5 setOfferIdentifier:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaOffer setIsEnabled:](v5, "setIsEnabled:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBImage alloc] initWithDictionary:v13];
      [(_SFPBMediaOffer *)v5 setImage:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (_SFPBMediaOffer)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaOffer *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaOffer *)self dictionaryRepresentation];
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
  if (self->_actionItem)
  {
    actionItem = [(_SFPBMediaOffer *)self actionItem];
    dictionaryRepresentation = [actionItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionItem"];
    }
  }

  if (self->_image)
  {
    image = [(_SFPBMediaOffer *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  if (self->_isEnabled)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaOffer isEnabled](self, "isEnabled")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isEnabled"];
  }

  if (self->_offerIdentifier)
  {
    offerIdentifier = [(_SFPBMediaOffer *)self offerIdentifier];
    v12 = [offerIdentifier copy];
    [dictionary setObject:v12 forKeyedSubscript:@"offerIdentifier"];
  }

  if (self->_sublabel)
  {
    sublabel = [(_SFPBMediaOffer *)self sublabel];
    v14 = [sublabel copy];
    [dictionary setObject:v14 forKeyedSubscript:@"sublabel"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBActionItem *)self->_actionItem hash];
  v4 = [(NSString *)self->_sublabel hash];
  v5 = [(NSString *)self->_offerIdentifier hash];
  if (self->_isEnabled)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(_SFPBImage *)self->_image hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  actionItem = [(_SFPBMediaOffer *)self actionItem];
  actionItem2 = [equalCopy actionItem];
  if ((actionItem != 0) == (actionItem2 == 0))
  {
    goto LABEL_22;
  }

  actionItem3 = [(_SFPBMediaOffer *)self actionItem];
  if (actionItem3)
  {
    v8 = actionItem3;
    actionItem4 = [(_SFPBMediaOffer *)self actionItem];
    actionItem5 = [equalCopy actionItem];
    v11 = [actionItem4 isEqual:actionItem5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  actionItem = [(_SFPBMediaOffer *)self sublabel];
  actionItem2 = [equalCopy sublabel];
  if ((actionItem != 0) == (actionItem2 == 0))
  {
    goto LABEL_22;
  }

  sublabel = [(_SFPBMediaOffer *)self sublabel];
  if (sublabel)
  {
    v13 = sublabel;
    sublabel2 = [(_SFPBMediaOffer *)self sublabel];
    sublabel3 = [equalCopy sublabel];
    v16 = [sublabel2 isEqual:sublabel3];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  actionItem = [(_SFPBMediaOffer *)self offerIdentifier];
  actionItem2 = [equalCopy offerIdentifier];
  if ((actionItem != 0) == (actionItem2 == 0))
  {
    goto LABEL_22;
  }

  offerIdentifier = [(_SFPBMediaOffer *)self offerIdentifier];
  if (offerIdentifier)
  {
    v18 = offerIdentifier;
    offerIdentifier2 = [(_SFPBMediaOffer *)self offerIdentifier];
    offerIdentifier3 = [equalCopy offerIdentifier];
    v21 = [offerIdentifier2 isEqual:offerIdentifier3];

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  isEnabled = self->_isEnabled;
  if (isEnabled != [equalCopy isEnabled])
  {
    goto LABEL_23;
  }

  actionItem = [(_SFPBMediaOffer *)self image];
  actionItem2 = [equalCopy image];
  if ((actionItem != 0) == (actionItem2 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  image = [(_SFPBMediaOffer *)self image];
  if (!image)
  {

LABEL_26:
    v28 = 1;
    goto LABEL_24;
  }

  v24 = image;
  image2 = [(_SFPBMediaOffer *)self image];
  image3 = [equalCopy image];
  v27 = [image2 isEqual:image3];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionItem = [(_SFPBMediaOffer *)self actionItem];
  if (actionItem)
  {
    PBDataWriterWriteSubmessage();
  }

  sublabel = [(_SFPBMediaOffer *)self sublabel];
  if (sublabel)
  {
    PBDataWriterWriteStringField();
  }

  offerIdentifier = [(_SFPBMediaOffer *)self offerIdentifier];
  if (offerIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaOffer *)self isEnabled])
  {
    PBDataWriterWriteBOOLField();
  }

  image = [(_SFPBMediaOffer *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setOfferIdentifier:(id)identifier
{
  v4 = [identifier copy];
  offerIdentifier = self->_offerIdentifier;
  self->_offerIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSublabel:(id)sublabel
{
  v4 = [sublabel copy];
  sublabel = self->_sublabel;
  self->_sublabel = v4;

  MEMORY[0x1EEE66BB8]();
}

@end