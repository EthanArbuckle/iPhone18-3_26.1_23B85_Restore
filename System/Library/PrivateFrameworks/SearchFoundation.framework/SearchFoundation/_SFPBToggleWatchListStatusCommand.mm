@interface _SFPBToggleWatchListStatusCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBToggleWatchListStatusCommand)initWithDictionary:(id)a3;
- (_SFPBToggleWatchListStatusCommand)initWithFacade:(id)a3;
- (_SFPBToggleWatchListStatusCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBToggleWatchListStatusCommand

- (_SFPBToggleWatchListStatusCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBToggleWatchListStatusCommand *)self init];
  if (v5)
  {
    v6 = [v4 watchListItem];

    if (v6)
    {
      v7 = [_SFPBWatchListItem alloc];
      v8 = [v4 watchListItem];
      v9 = [(_SFPBWatchListItem *)v7 initWithFacade:v8];
      [(_SFPBToggleWatchListStatusCommand *)v5 setWatchListItem:v9];
    }

    if ([v4 hasShouldAddToWatchList])
    {
      -[_SFPBToggleWatchListStatusCommand setShouldAddToWatchList:](v5, "setShouldAddToWatchList:", [v4 shouldAddToWatchList]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBToggleWatchListStatusCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBToggleWatchListStatusCommand;
  v5 = [(_SFPBToggleWatchListStatusCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"watchListItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBWatchListItem alloc] initWithDictionary:v6];
      [(_SFPBToggleWatchListStatusCommand *)v5 setWatchListItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"shouldAddToWatchList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBToggleWatchListStatusCommand setShouldAddToWatchList:](v5, "setShouldAddToWatchList:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBToggleWatchListStatusCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBToggleWatchListStatusCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBToggleWatchListStatusCommand *)self dictionaryRepresentation];
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
  if (self->_shouldAddToWatchList)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBToggleWatchListStatusCommand shouldAddToWatchList](self, "shouldAddToWatchList")}];
    [v3 setObject:v4 forKeyedSubscript:@"shouldAddToWatchList"];
  }

  if (self->_watchListItem)
  {
    v5 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"watchListItem"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"watchListItem"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBWatchListItem *)self->_watchListItem hash];
  v4 = 2654435761;
  if (!self->_shouldAddToWatchList)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
    v6 = [v4 watchListItem];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
      if (!v8)
      {

LABEL_10:
        shouldAddToWatchList = self->_shouldAddToWatchList;
        v13 = shouldAddToWatchList == [v4 shouldAddToWatchList];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
      v11 = [v4 watchListItem];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBToggleWatchListStatusCommand *)self shouldAddToWatchList])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end