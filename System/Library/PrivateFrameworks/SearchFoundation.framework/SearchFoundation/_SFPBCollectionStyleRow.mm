@interface _SFPBCollectionStyleRow
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCollectionStyleRow)initWithDictionary:(id)dictionary;
- (_SFPBCollectionStyleRow)initWithFacade:(id)facade;
- (_SFPBCollectionStyleRow)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCollectionStyleRow

- (_SFPBCollectionStyleRow)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCollectionStyleRow *)self init];
  if (v5)
  {
    if ([facadeCopy hasDrawPlattersIfNecessary])
    {
      -[_SFPBCollectionStyleRow setDrawPlattersIfNecessary:](v5, "setDrawPlattersIfNecessary:", [facadeCopy drawPlattersIfNecessary]);
    }

    if ([facadeCopy hasIsInsetGrouped])
    {
      -[_SFPBCollectionStyleRow setIsInsetGrouped:](v5, "setIsInsetGrouped:", [facadeCopy isInsetGrouped]);
    }

    if ([facadeCopy hasRowStyle])
    {
      -[_SFPBCollectionStyleRow setRowStyle:](v5, "setRowStyle:", [facadeCopy rowStyle]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleRow)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBCollectionStyleRow;
  v5 = [(_SFPBCollectionStyleRow *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"drawPlattersIfNecessary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleRow setDrawPlattersIfNecessary:](v5, "setDrawPlattersIfNecessary:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isInsetGrouped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleRow setIsInsetGrouped:](v5, "setIsInsetGrouped:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rowStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleRow setRowStyle:](v5, "setRowStyle:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleRow)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyleRow *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCollectionStyleRow *)self dictionaryRepresentation];
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
  if (self->_drawPlattersIfNecessary)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionStyleRow drawPlattersIfNecessary](self, "drawPlattersIfNecessary")}];
    [dictionary setObject:v4 forKeyedSubscript:@"drawPlattersIfNecessary"];
  }

  if (self->_isInsetGrouped)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionStyleRow isInsetGrouped](self, "isInsetGrouped")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isInsetGrouped"];
  }

  if (self->_rowStyle)
  {
    rowStyle = [(_SFPBCollectionStyleRow *)self rowStyle];
    if (rowStyle >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", rowStyle];
    }

    else
    {
      v7 = off_1E7ACE448[rowStyle];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"rowStyle"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if (self->_drawPlattersIfNecessary)
  {
    v2 = 2654435761;
  }

  else
  {
    v2 = 0;
  }

  if (self->_isInsetGrouped)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2 ^ (2654435761 * self->_rowStyle);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (drawPlattersIfNecessary = self->_drawPlattersIfNecessary, drawPlattersIfNecessary == objc_msgSend(equalCopy, "drawPlattersIfNecessary")) && (isInsetGrouped = self->_isInsetGrouped, isInsetGrouped == objc_msgSend(equalCopy, "isInsetGrouped")))
  {
    rowStyle = self->_rowStyle;
    v8 = rowStyle == [equalCopy rowStyle];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBCollectionStyleRow *)self drawPlattersIfNecessary])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCollectionStyleRow *)self isInsetGrouped])
  {
    PBDataWriterWriteBOOLField();
  }

  rowStyle = [(_SFPBCollectionStyleRow *)self rowStyle];
  v5 = toCopy;
  if (rowStyle)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end