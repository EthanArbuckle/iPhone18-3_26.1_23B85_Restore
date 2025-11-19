@interface _SFPBMediaOffer
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMediaOffer)initWithDictionary:(id)a3;
- (_SFPBMediaOffer)initWithFacade:(id)a3;
- (_SFPBMediaOffer)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setOfferIdentifier:(id)a3;
- (void)setSublabel:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMediaOffer

- (_SFPBMediaOffer)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBMediaOffer *)self init];
  if (v5)
  {
    v6 = [v4 actionItem];

    if (v6)
    {
      v7 = [_SFPBActionItem alloc];
      v8 = [v4 actionItem];
      v9 = [(_SFPBActionItem *)v7 initWithFacade:v8];
      [(_SFPBMediaOffer *)v5 setActionItem:v9];
    }

    v10 = [v4 sublabel];

    if (v10)
    {
      v11 = [v4 sublabel];
      [(_SFPBMediaOffer *)v5 setSublabel:v11];
    }

    v12 = [v4 offerIdentifier];

    if (v12)
    {
      v13 = [v4 offerIdentifier];
      [(_SFPBMediaOffer *)v5 setOfferIdentifier:v13];
    }

    if ([v4 hasIsEnabled])
    {
      -[_SFPBMediaOffer setIsEnabled:](v5, "setIsEnabled:", [v4 isEnabled]);
    }

    v14 = [v4 image];

    if (v14)
    {
      v15 = [_SFPBImage alloc];
      v16 = [v4 image];
      v17 = [(_SFPBImage *)v15 initWithFacade:v16];
      [(_SFPBMediaOffer *)v5 setImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBMediaOffer)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SFPBMediaOffer;
  v5 = [(_SFPBMediaOffer *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBActionItem alloc] initWithDictionary:v6];
      [(_SFPBMediaOffer *)v5 setActionItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sublabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBMediaOffer *)v5 setSublabel:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"offerIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBMediaOffer *)v5 setOfferIdentifier:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaOffer setIsEnabled:](v5, "setIsEnabled:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"image"];
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

- (_SFPBMediaOffer)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMediaOffer *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMediaOffer *)self dictionaryRepresentation];
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
  if (self->_actionItem)
  {
    v4 = [(_SFPBMediaOffer *)self actionItem];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionItem"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionItem"];
    }
  }

  if (self->_image)
  {
    v7 = [(_SFPBMediaOffer *)self image];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"image"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"image"];
    }
  }

  if (self->_isEnabled)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaOffer isEnabled](self, "isEnabled")}];
    [v3 setObject:v10 forKeyedSubscript:@"isEnabled"];
  }

  if (self->_offerIdentifier)
  {
    v11 = [(_SFPBMediaOffer *)self offerIdentifier];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"offerIdentifier"];
  }

  if (self->_sublabel)
  {
    v13 = [(_SFPBMediaOffer *)self sublabel];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"sublabel"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(_SFPBMediaOffer *)self actionItem];
  v6 = [v4 actionItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(_SFPBMediaOffer *)self actionItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMediaOffer *)self actionItem];
    v10 = [v4 actionItem];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaOffer *)self sublabel];
  v6 = [v4 sublabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v12 = [(_SFPBMediaOffer *)self sublabel];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMediaOffer *)self sublabel];
    v15 = [v4 sublabel];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaOffer *)self offerIdentifier];
  v6 = [v4 offerIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v17 = [(_SFPBMediaOffer *)self offerIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMediaOffer *)self offerIdentifier];
    v20 = [v4 offerIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  isEnabled = self->_isEnabled;
  if (isEnabled != [v4 isEnabled])
  {
    goto LABEL_23;
  }

  v5 = [(_SFPBMediaOffer *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  v23 = [(_SFPBMediaOffer *)self image];
  if (!v23)
  {

LABEL_26:
    v28 = 1;
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [(_SFPBMediaOffer *)self image];
  v26 = [v4 image];
  v27 = [v25 isEqual:v26];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBMediaOffer *)self actionItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBMediaOffer *)self sublabel];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBMediaOffer *)self offerIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaOffer *)self isEnabled])
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_SFPBMediaOffer *)self image];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setOfferIdentifier:(id)a3
{
  v4 = [a3 copy];
  offerIdentifier = self->_offerIdentifier;
  self->_offerIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSublabel:(id)a3
{
  v4 = [a3 copy];
  sublabel = self->_sublabel;
  self->_sublabel = v4;

  MEMORY[0x1EEE66BB8]();
}

@end