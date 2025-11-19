@interface _SFPBWatchListButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBWatchListButtonItem)initWithDictionary:(id)a3;
- (_SFPBWatchListButtonItem)initWithFacade:(id)a3;
- (_SFPBWatchListButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBWatchListButtonItem

- (_SFPBWatchListButtonItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBWatchListButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 watchListItem];

    if (v6)
    {
      v7 = [_SFPBWatchListItem alloc];
      v8 = [v4 watchListItem];
      v9 = [(_SFPBWatchListItem *)v7 initWithFacade:v8];
      [(_SFPBWatchListButtonItem *)v5 setWatchListItem:v9];
    }

    v10 = [v4 toggleButtonConfiguration];

    if (v10)
    {
      v11 = [_SFPBToggleButtonConfiguration alloc];
      v12 = [v4 toggleButtonConfiguration];
      v13 = [(_SFPBToggleButtonConfiguration *)v11 initWithFacade:v12];
      [(_SFPBWatchListButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBWatchListButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBWatchListButtonItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBWatchListButtonItem;
  v5 = [(_SFPBWatchListButtonItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"watchListItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBWatchListItem alloc] initWithDictionary:v6];
      [(_SFPBWatchListButtonItem *)v5 setWatchListItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toggleButtonConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBToggleButtonConfiguration alloc] initWithDictionary:v8];
      [(_SFPBWatchListButtonItem *)v5 setToggleButtonConfiguration:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBWatchListButtonItem setUniqueId:](v5, "setUniqueId:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBWatchListButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBWatchListButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBWatchListButtonItem *)self dictionaryRepresentation];
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
  if (self->_toggleButtonConfiguration)
  {
    v4 = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"toggleButtonConfiguration"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"toggleButtonConfiguration"];
    }
  }

  if (self->_uniqueId)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBWatchListButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v7 forKeyedSubscript:@"uniqueId"];
  }

  if (self->_watchListItem)
  {
    v8 = [(_SFPBWatchListButtonItem *)self watchListItem];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"watchListItem"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"watchListItem"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBWatchListButtonItem *)self watchListItem];
  v6 = [v4 watchListItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBWatchListButtonItem *)self watchListItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBWatchListButtonItem *)self watchListItem];
    v10 = [v4 watchListItem];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
  v6 = [v4 toggleButtonConfiguration];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
    if (!v12)
    {

LABEL_15:
      uniqueId = self->_uniqueId;
      v17 = uniqueId == [v4 uniqueId];
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
    v15 = [v4 toggleButtonConfiguration];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBWatchListButtonItem *)self watchListItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBWatchListButtonItem *)self uniqueId];
  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteUint64Field();
    v7 = v8;
  }
}

@end