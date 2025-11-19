@interface _SFPBCollectionStyleRow
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCollectionStyleRow)initWithDictionary:(id)a3;
- (_SFPBCollectionStyleRow)initWithFacade:(id)a3;
- (_SFPBCollectionStyleRow)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCollectionStyleRow

- (_SFPBCollectionStyleRow)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCollectionStyleRow *)self init];
  if (v5)
  {
    if ([v4 hasDrawPlattersIfNecessary])
    {
      -[_SFPBCollectionStyleRow setDrawPlattersIfNecessary:](v5, "setDrawPlattersIfNecessary:", [v4 drawPlattersIfNecessary]);
    }

    if ([v4 hasIsInsetGrouped])
    {
      -[_SFPBCollectionStyleRow setIsInsetGrouped:](v5, "setIsInsetGrouped:", [v4 isInsetGrouped]);
    }

    if ([v4 hasRowStyle])
    {
      -[_SFPBCollectionStyleRow setRowStyle:](v5, "setRowStyle:", [v4 rowStyle]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleRow)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBCollectionStyleRow;
  v5 = [(_SFPBCollectionStyleRow *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"drawPlattersIfNecessary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleRow setDrawPlattersIfNecessary:](v5, "setDrawPlattersIfNecessary:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isInsetGrouped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleRow setIsInsetGrouped:](v5, "setIsInsetGrouped:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"rowStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleRow setRowStyle:](v5, "setRowStyle:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleRow)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyleRow *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCollectionStyleRow *)self dictionaryRepresentation];
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
  if (self->_drawPlattersIfNecessary)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionStyleRow drawPlattersIfNecessary](self, "drawPlattersIfNecessary")}];
    [v3 setObject:v4 forKeyedSubscript:@"drawPlattersIfNecessary"];
  }

  if (self->_isInsetGrouped)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionStyleRow isInsetGrouped](self, "isInsetGrouped")}];
    [v3 setObject:v5 forKeyedSubscript:@"isInsetGrouped"];
  }

  if (self->_rowStyle)
  {
    v6 = [(_SFPBCollectionStyleRow *)self rowStyle];
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE448[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"rowStyle"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (drawPlattersIfNecessary = self->_drawPlattersIfNecessary, drawPlattersIfNecessary == objc_msgSend(v4, "drawPlattersIfNecessary")) && (isInsetGrouped = self->_isInsetGrouped, isInsetGrouped == objc_msgSend(v4, "isInsetGrouped")))
  {
    rowStyle = self->_rowStyle;
    v8 = rowStyle == [v4 rowStyle];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_SFPBCollectionStyleRow *)self drawPlattersIfNecessary])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCollectionStyleRow *)self isInsetGrouped])
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(_SFPBCollectionStyleRow *)self rowStyle];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end