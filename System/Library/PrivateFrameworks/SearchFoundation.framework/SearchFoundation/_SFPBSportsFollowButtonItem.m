@interface _SFPBSportsFollowButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSportsFollowButtonItem)initWithDictionary:(id)a3;
- (_SFPBSportsFollowButtonItem)initWithFacade:(id)a3;
- (_SFPBSportsFollowButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setFallbackTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSportsFollowButtonItem

- (_SFPBSportsFollowButtonItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSportsFollowButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 sportsItem];

    if (v6)
    {
      v7 = [_SFPBSportsItem alloc];
      v8 = [v4 sportsItem];
      v9 = [(_SFPBSportsItem *)v7 initWithFacade:v8];
      [(_SFPBSportsFollowButtonItem *)v5 setSportsItem:v9];
    }

    v10 = [v4 toggleButtonConfiguration];

    if (v10)
    {
      v11 = [_SFPBToggleButtonConfiguration alloc];
      v12 = [v4 toggleButtonConfiguration];
      v13 = [(_SFPBToggleButtonConfiguration *)v11 initWithFacade:v12];
      [(_SFPBSportsFollowButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    v14 = [v4 fallbackTitle];

    if (v14)
    {
      v15 = [v4 fallbackTitle];
      [(_SFPBSportsFollowButtonItem *)v5 setFallbackTitle:v15];
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBSportsFollowButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBSportsFollowButtonItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBSportsFollowButtonItem;
  v5 = [(_SFPBSportsFollowButtonItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sportsItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBSportsItem alloc] initWithDictionary:v6];
      [(_SFPBSportsFollowButtonItem *)v5 setSportsItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toggleButtonConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBToggleButtonConfiguration alloc] initWithDictionary:v8];
      [(_SFPBSportsFollowButtonItem *)v5 setToggleButtonConfiguration:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"fallbackTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSportsFollowButtonItem *)v5 setFallbackTitle:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSportsFollowButtonItem setUniqueId:](v5, "setUniqueId:", [v12 unsignedLongLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBSportsFollowButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSportsFollowButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSportsFollowButtonItem *)self dictionaryRepresentation];
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
  if (self->_fallbackTitle)
  {
    v4 = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"fallbackTitle"];
  }

  if (self->_sportsItem)
  {
    v6 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"sportsItem"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"sportsItem"];
    }
  }

  if (self->_toggleButtonConfiguration)
  {
    v9 = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"toggleButtonConfiguration"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"toggleButtonConfiguration"];
    }
  }

  if (self->_uniqueId)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBSportsFollowButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v12 forKeyedSubscript:@"uniqueId"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBSportsItem *)self->_sportsItem hash];
  v4 = [(_SFPBToggleButtonConfiguration *)self->_toggleButtonConfiguration hash];
  return v4 ^ v3 ^ [(NSString *)self->_fallbackTitle hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
  v6 = [v4 sportsItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
    v10 = [v4 sportsItem];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
  v6 = [v4 toggleButtonConfiguration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
    v15 = [v4 toggleButtonConfiguration];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
  v6 = [v4 fallbackTitle];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
    if (!v17)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [v4 uniqueId];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
    v20 = [v4 fallbackTitle];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBSportsFollowButtonItem *)self sportsItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBSportsFollowButtonItem *)self toggleButtonConfiguration];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBSportsFollowButtonItem *)self fallbackTitle];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBSportsFollowButtonItem *)self uniqueId];
  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteUint64Field();
    v8 = v9;
  }
}

- (void)setFallbackTitle:(id)a3
{
  v4 = [a3 copy];
  fallbackTitle = self->_fallbackTitle;
  self->_fallbackTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

@end