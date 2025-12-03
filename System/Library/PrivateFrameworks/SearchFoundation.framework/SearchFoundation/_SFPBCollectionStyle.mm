@interface _SFPBCollectionStyle
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCollectionStyle)initWithDictionary:(id)dictionary;
- (_SFPBCollectionStyle)initWithFacade:(id)facade;
- (_SFPBCollectionStyle)initWithJSON:(id)n;
- (_SFPBCollectionStyleGrid)collectionStyleGrid;
- (_SFPBCollectionStyleHorizontallyScrolling)collectionStyleScrolling;
- (_SFPBCollectionStyleRow)collectionStyleRow;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCollectionStyleGrid:(id)grid;
- (void)setCollectionStyleRow:(id)row;
- (void)setCollectionStyleScrolling:(id)scrolling;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCollectionStyle

- (_SFPBCollectionStyle)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCollectionStyle *)self init];
  if (v5)
  {
    if ([facadeCopy hasInitiallyVisibleCardSectionCount])
    {
      -[_SFPBCollectionStyle setInitiallyVisibleCardSectionCount:](v5, "setInitiallyVisibleCardSectionCount:", [facadeCopy initiallyVisibleCardSectionCount]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBCollectionStyleRow alloc] initWithFacade:facadeCopy];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleRow:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:facadeCopy];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleGrid:v7];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithFacade:facadeCopy];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleScrolling:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyle)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBCollectionStyle;
  v5 = [(_SFPBCollectionStyle *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"collectionStyleRow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCollectionStyleRow alloc] initWithDictionary:v6];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleRow:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"collectionStyleGrid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCollectionStyleGrid alloc] initWithDictionary:v8];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleGrid:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"collectionStyleScrolling"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCollectionStyleHorizontallyScrolling alloc] initWithDictionary:v10];
      [(_SFPBCollectionStyle *)v5 setCollectionStyleScrolling:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"initiallyVisibleCardSectionCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyle setInitiallyVisibleCardSectionCount:](v5, "setInitiallyVisibleCardSectionCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyle)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyle *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCollectionStyle *)self dictionaryRepresentation];
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
  if (self->_collectionStyleGrid)
  {
    collectionStyleGrid = [(_SFPBCollectionStyle *)self collectionStyleGrid];
    dictionaryRepresentation = [collectionStyleGrid dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"collectionStyleGrid"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"collectionStyleGrid"];
    }
  }

  if (self->_collectionStyleRow)
  {
    collectionStyleRow = [(_SFPBCollectionStyle *)self collectionStyleRow];
    dictionaryRepresentation2 = [collectionStyleRow dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"collectionStyleRow"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"collectionStyleRow"];
    }
  }

  if (self->_collectionStyleScrolling)
  {
    collectionStyleScrolling = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
    dictionaryRepresentation3 = [collectionStyleScrolling dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"collectionStyleScrolling"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"collectionStyleScrolling"];
    }
  }

  if (self->_initiallyVisibleCardSectionCount)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBCollectionStyle initiallyVisibleCardSectionCount](self, "initiallyVisibleCardSectionCount")}];
    [dictionary setObject:v13 forKeyedSubscript:@"initiallyVisibleCardSectionCount"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBCollectionStyleRow *)self->_collectionStyleRow hash];
  v4 = [(_SFPBCollectionStyleGrid *)self->_collectionStyleGrid hash];
  return v4 ^ v3 ^ [(_SFPBCollectionStyleHorizontallyScrolling *)self->_collectionStyleScrolling hash]^ (2654435761 * self->_initiallyVisibleCardSectionCount);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  collectionStyleRow = [(_SFPBCollectionStyle *)self collectionStyleRow];
  collectionStyleRow2 = [equalCopy collectionStyleRow];
  if ((collectionStyleRow != 0) == (collectionStyleRow2 == 0))
  {
    goto LABEL_16;
  }

  collectionStyleRow3 = [(_SFPBCollectionStyle *)self collectionStyleRow];
  if (collectionStyleRow3)
  {
    v8 = collectionStyleRow3;
    collectionStyleRow4 = [(_SFPBCollectionStyle *)self collectionStyleRow];
    collectionStyleRow5 = [equalCopy collectionStyleRow];
    v11 = [collectionStyleRow4 isEqual:collectionStyleRow5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  collectionStyleRow = [(_SFPBCollectionStyle *)self collectionStyleGrid];
  collectionStyleRow2 = [equalCopy collectionStyleGrid];
  if ((collectionStyleRow != 0) == (collectionStyleRow2 == 0))
  {
    goto LABEL_16;
  }

  collectionStyleGrid = [(_SFPBCollectionStyle *)self collectionStyleGrid];
  if (collectionStyleGrid)
  {
    v13 = collectionStyleGrid;
    collectionStyleGrid2 = [(_SFPBCollectionStyle *)self collectionStyleGrid];
    collectionStyleGrid3 = [equalCopy collectionStyleGrid];
    v16 = [collectionStyleGrid2 isEqual:collectionStyleGrid3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  collectionStyleRow = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
  collectionStyleRow2 = [equalCopy collectionStyleScrolling];
  if ((collectionStyleRow != 0) != (collectionStyleRow2 == 0))
  {
    collectionStyleScrolling = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
    if (!collectionStyleScrolling)
    {

LABEL_20:
      initiallyVisibleCardSectionCount = self->_initiallyVisibleCardSectionCount;
      v22 = initiallyVisibleCardSectionCount == [equalCopy initiallyVisibleCardSectionCount];
      goto LABEL_18;
    }

    v18 = collectionStyleScrolling;
    collectionStyleScrolling2 = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
    collectionStyleScrolling3 = [equalCopy collectionStyleScrolling];
    v21 = [collectionStyleScrolling2 isEqual:collectionStyleScrolling3];

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
  collectionStyleRow = [(_SFPBCollectionStyle *)self collectionStyleRow];
  if (collectionStyleRow)
  {
    PBDataWriterWriteSubmessage();
  }

  collectionStyleGrid = [(_SFPBCollectionStyle *)self collectionStyleGrid];
  if (collectionStyleGrid)
  {
    PBDataWriterWriteSubmessage();
  }

  collectionStyleScrolling = [(_SFPBCollectionStyle *)self collectionStyleScrolling];
  if (collectionStyleScrolling)
  {
    PBDataWriterWriteSubmessage();
  }

  initiallyVisibleCardSectionCount = [(_SFPBCollectionStyle *)self initiallyVisibleCardSectionCount];
  v8 = toCopy;
  if (initiallyVisibleCardSectionCount)
  {
    PBDataWriterWriteUint32Field();
    v8 = toCopy;
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

- (void)setCollectionStyleScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  collectionStyleRow = self->_collectionStyleRow;
  self->_collectionStyleRow = 0;

  collectionStyleGrid = self->_collectionStyleGrid;
  self->_collectionStyleGrid = 0;

  v7 = 3;
  if (!scrollingCopy)
  {
    v7 = 0;
  }

  self->_whichValue = v7;
  collectionStyleScrolling = self->_collectionStyleScrolling;
  self->_collectionStyleScrolling = scrollingCopy;
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

- (void)setCollectionStyleGrid:(id)grid
{
  gridCopy = grid;
  collectionStyleRow = self->_collectionStyleRow;
  self->_collectionStyleRow = 0;

  collectionStyleScrolling = self->_collectionStyleScrolling;
  self->_collectionStyleScrolling = 0;

  self->_whichValue = 2 * (gridCopy != 0);
  collectionStyleGrid = self->_collectionStyleGrid;
  self->_collectionStyleGrid = gridCopy;
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

- (void)setCollectionStyleRow:(id)row
{
  rowCopy = row;
  collectionStyleGrid = self->_collectionStyleGrid;
  self->_collectionStyleGrid = 0;

  collectionStyleScrolling = self->_collectionStyleScrolling;
  self->_collectionStyleScrolling = 0;

  self->_whichValue = rowCopy != 0;
  collectionStyleRow = self->_collectionStyleRow;
  self->_collectionStyleRow = rowCopy;
}

@end