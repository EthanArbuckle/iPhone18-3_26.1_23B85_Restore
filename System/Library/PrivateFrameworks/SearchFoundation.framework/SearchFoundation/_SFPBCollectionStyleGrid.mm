@interface _SFPBCollectionStyleGrid
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCollectionStyleGrid)initWithDictionary:(id)dictionary;
- (_SFPBCollectionStyleGrid)initWithFacade:(id)facade;
- (_SFPBCollectionStyleGrid)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCollectionStyleGrid

- (_SFPBCollectionStyleGrid)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCollectionStyleGrid *)self init];
  if (v5)
  {
    if ([facadeCopy hasNumberOfColumns])
    {
      -[_SFPBCollectionStyleGrid setNumberOfColumns:](v5, "setNumberOfColumns:", [facadeCopy numberOfColumns]);
    }

    if ([facadeCopy hasGridStyle])
    {
      -[_SFPBCollectionStyleGrid setGridStyle:](v5, "setGridStyle:", [facadeCopy gridStyle]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleGrid)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCollectionStyleGrid;
  v5 = [(_SFPBCollectionStyleGrid *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numberOfColumns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleGrid setNumberOfColumns:](v5, "setNumberOfColumns:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"gridStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleGrid setGridStyle:](v5, "setGridStyle:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleGrid)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyleGrid *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCollectionStyleGrid *)self dictionaryRepresentation];
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
  if (self->_gridStyle)
  {
    gridStyle = [(_SFPBCollectionStyleGrid *)self gridStyle];
    if (gridStyle >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", gridStyle];
    }

    else
    {
      v5 = off_1E7ACE548[gridStyle];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"gridStyle"];
  }

  if (self->_numberOfColumns)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCollectionStyleGrid numberOfColumns](self, "numberOfColumns")}];
    [dictionary setObject:v6 forKeyedSubscript:@"numberOfColumns"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (numberOfColumns = self->_numberOfColumns, numberOfColumns == objc_msgSend(equalCopy, "numberOfColumns")))
  {
    gridStyle = self->_gridStyle;
    v7 = gridStyle == [equalCopy gridStyle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBCollectionStyleGrid *)self numberOfColumns])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_SFPBCollectionStyleGrid *)self gridStyle])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end