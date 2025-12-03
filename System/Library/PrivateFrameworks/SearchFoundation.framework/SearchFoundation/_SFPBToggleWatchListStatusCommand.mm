@interface _SFPBToggleWatchListStatusCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBToggleWatchListStatusCommand)initWithDictionary:(id)dictionary;
- (_SFPBToggleWatchListStatusCommand)initWithFacade:(id)facade;
- (_SFPBToggleWatchListStatusCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBToggleWatchListStatusCommand

- (_SFPBToggleWatchListStatusCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBToggleWatchListStatusCommand *)self init];
  if (v5)
  {
    watchListItem = [facadeCopy watchListItem];

    if (watchListItem)
    {
      v7 = [_SFPBWatchListItem alloc];
      watchListItem2 = [facadeCopy watchListItem];
      v9 = [(_SFPBWatchListItem *)v7 initWithFacade:watchListItem2];
      [(_SFPBToggleWatchListStatusCommand *)v5 setWatchListItem:v9];
    }

    if ([facadeCopy hasShouldAddToWatchList])
    {
      -[_SFPBToggleWatchListStatusCommand setShouldAddToWatchList:](v5, "setShouldAddToWatchList:", [facadeCopy shouldAddToWatchList]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBToggleWatchListStatusCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBToggleWatchListStatusCommand;
  v5 = [(_SFPBToggleWatchListStatusCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"watchListItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBWatchListItem alloc] initWithDictionary:v6];
      [(_SFPBToggleWatchListStatusCommand *)v5 setWatchListItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"shouldAddToWatchList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBToggleWatchListStatusCommand setShouldAddToWatchList:](v5, "setShouldAddToWatchList:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBToggleWatchListStatusCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBToggleWatchListStatusCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBToggleWatchListStatusCommand *)self dictionaryRepresentation];
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
  if (self->_shouldAddToWatchList)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBToggleWatchListStatusCommand shouldAddToWatchList](self, "shouldAddToWatchList")}];
    [dictionary setObject:v4 forKeyedSubscript:@"shouldAddToWatchList"];
  }

  if (self->_watchListItem)
  {
    watchListItem = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
    dictionaryRepresentation = [watchListItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"watchListItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"watchListItem"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    watchListItem = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
    watchListItem2 = [equalCopy watchListItem];
    v7 = watchListItem2;
    if ((watchListItem != 0) != (watchListItem2 == 0))
    {
      watchListItem3 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
      if (!watchListItem3)
      {

LABEL_10:
        shouldAddToWatchList = self->_shouldAddToWatchList;
        v13 = shouldAddToWatchList == [equalCopy shouldAddToWatchList];
        goto LABEL_8;
      }

      v9 = watchListItem3;
      watchListItem4 = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
      watchListItem5 = [equalCopy watchListItem];
      v12 = [watchListItem4 isEqual:watchListItem5];

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
  watchListItem = [(_SFPBToggleWatchListStatusCommand *)self watchListItem];
  if (watchListItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBToggleWatchListStatusCommand *)self shouldAddToWatchList])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end