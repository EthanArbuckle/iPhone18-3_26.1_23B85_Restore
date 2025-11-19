@interface _SFPBCollectionStyle
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCollectionStyle)initWithDictionary:(id)a3;
- (_SFPBCollectionStyle)initWithFacade:(id)a3;
- (_SFPBCollectionStyle)initWithJSON:(id)a3;
- (_SFPBCollectionStyleGrid)collectionStyleGrid;
- (_SFPBCollectionStyleHorizontallyScrolling)collectionStyleScrolling;
- (_SFPBCollectionStyleRow)collectionStyleRow;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCollectionStyleGrid:(id)a3;
- (void)setCollectionStyleRow:(id)a3;
- (void)setCollectionStyleScrolling:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCollectionStyle

- (_SFPBCollectionStyle)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCollectionStyle *)self init];
  if (v5)
  {
    if ([v4 hasInitiallyVisibleCardSectionCount])
    {
      -[_SFPBCollectionStyle setInitiallyVisibleCardSectionCount:](v5, "setInitiallyVisibleCardSectionCount:", [v4 initiallyVisibleCardSectionCount]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBCollectionStyleRow alloc] initWithFacade:v4];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleRow:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:v4];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleGrid:v7];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:v4];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleScrolling:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyle)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBCollectionStyle;
  v5 = [(_SFPBCollectionStyle *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"collectionStyleRow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCollectionStyleRow alloc] initWithDictionary:v6];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleRow:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"collectionStyleGrid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCollectionStyleGrid alloc] initWithDictionary:v8];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleGrid:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"collectionStyleScrolling"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithDictionary:v10];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleScrolling:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"initiallyVisibleCardSectionCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyle setInitiallyVisibleCardSectionCount:](v5, "setInitiallyVisibleCardSectionCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyle)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyle *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCollectionStyle *)self dictionaryRepresentation];
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
  if (self->_collectionStyleGrid)
  {
    v4 = [(_SFPBCollectionStyle *)self collectionStyleGrid];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"collectionStyleGrid"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"collectionStyleGrid"];
    }
  }

  if (self->_collectionStyleRow)
  {
    v7 = [(_SFPBCollectionStyle *)self collectionStyleRow];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"collectionStyleRow"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"collectionStyleRow"];
    }
  }

  if (self->_collectionStyleScrolling)
  {
    v10 = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"collectionStyleScrolling"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"collectionStyleScrolling"];
    }
  }

  if (self->_initiallyVisibleCardSectionCount)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBCollectionStyle initiallyVisibleCardSectionCount](self, "initiallyVisibleCardSectionCount")}];
    [v3 setObject:v13 forKeyedSubscript:@"initiallyVisibleCardSectionCount"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBCollectionStyleRow *)self->_collectionStyleRow hash];
  v4 = [(_SFPBCollectionStyleGrid *)self->_collectionStyleGrid hash];
  return v4 ^ v3 ^ [(_SFPBCollectionStyleHorizontallyScrolling *)self->_collectionStyleScrolling hash]^ (2654435761 * self->_initiallyVisibleCardSectionCount);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBCollectionStyle *)self collectionStyleRow];
  v6 = [v4 collectionStyleRow];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBCollectionStyle *)self collectionStyleRow];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCollectionStyle *)self collectionStyleRow];
    v10 = [v4 collectionStyleRow];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionStyle *)self collectionStyleGrid];
  v6 = [v4 collectionStyleGrid];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBCollectionStyle *)self collectionStyleGrid];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCollectionStyle *)self collectionStyleGrid];
    v15 = [v4 collectionStyleGrid];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
  v6 = [v4 collectionStyleScrolling];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
    if (!v17)
    {

LABEL_20:
      initiallyVisibleCardSectionCount = self->_initiallyVisibleCardSectionCount;
      v22 = initiallyVisibleCardSectionCount == [v4 initiallyVisibleCardSectionCount];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
    v20 = [v4 collectionStyleScrolling];
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
  v4 = [(_SFPBCollectionStyle *)self collectionStyleRow];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBCollectionStyle *)self collectionStyleGrid];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBCollectionStyle *)self initiallyVisibleCardSectionCount];
  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteUint32Field();
    v8 = v9;
  }
}

- (_SFPBCollectionStyleHorizontallyScrolling)collectionStyleScrolling
{
  if (self->_whichValue == 3)
  {
    v3 = self->_collectionStyleScrolling;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCollectionStyleScrolling:(id)a3
{
  v4 = a3;
  collectionStyleRow = self->_collectionStyleRow;
  self->_collectionStyleRow = 0;

  collectionStyleGrid = self->_collectionStyleGrid;
  self->_collectionStyleGrid = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichValue = v7;
  collectionStyleScrolling = self->_collectionStyleScrolling;
  self->_collectionStyleScrolling = v4;
}

- (_SFPBCollectionStyleGrid)collectionStyleGrid
{
  if (self->_whichValue == 2)
  {
    v3 = self->_collectionStyleGrid;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCollectionStyleGrid:(id)a3
{
  v4 = a3;
  collectionStyleRow = self->_collectionStyleRow;
  self->_collectionStyleRow = 0;

  collectionStyleScrolling = self->_collectionStyleScrolling;
  self->_collectionStyleScrolling = 0;

  self->_whichValue = 2 * (v4 != 0);
  collectionStyleGrid = self->_collectionStyleGrid;
  self->_collectionStyleGrid = v4;
}

- (_SFPBCollectionStyleRow)collectionStyleRow
{
  if (self->_whichValue == 1)
  {
    v3 = self->_collectionStyleRow;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCollectionStyleRow:(id)a3
{
  v4 = a3;
  collectionStyleGrid = self->_collectionStyleGrid;
  self->_collectionStyleGrid = 0;

  collectionStyleScrolling = self->_collectionStyleScrolling;
  self->_collectionStyleScrolling = 0;

  self->_whichValue = v4 != 0;
  collectionStyleRow = self->_collectionStyleRow;
  self->_collectionStyleRow = v4;
}

@end