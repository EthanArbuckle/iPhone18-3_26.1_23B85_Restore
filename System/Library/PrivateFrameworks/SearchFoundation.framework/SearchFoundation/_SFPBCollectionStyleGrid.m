@interface _SFPBCollectionStyleGrid
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCollectionStyleGrid)initWithDictionary:(id)a3;
- (_SFPBCollectionStyleGrid)initWithFacade:(id)a3;
- (_SFPBCollectionStyleGrid)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCollectionStyleGrid

- (_SFPBCollectionStyleGrid)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCollectionStyleGrid *)self init];
  if (v5)
  {
    if ([v4 hasNumberOfColumns])
    {
      -[_SFPBCollectionStyleGrid setNumberOfColumns:](v5, "setNumberOfColumns:", [v4 numberOfColumns]);
    }

    if ([v4 hasGridStyle])
    {
      -[_SFPBCollectionStyleGrid setGridStyle:](v5, "setGridStyle:", [v4 gridStyle]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleGrid)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBCollectionStyleGrid;
  v5 = [(_SFPBCollectionStyleGrid *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numberOfColumns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleGrid setNumberOfColumns:](v5, "setNumberOfColumns:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"gridStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleGrid setGridStyle:](v5, "setGridStyle:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleGrid)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyleGrid *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCollectionStyleGrid *)self dictionaryRepresentation];
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
  if (self->_gridStyle)
  {
    v4 = [(_SFPBCollectionStyleGrid *)self gridStyle];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE548[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"gridStyle"];
  }

  if (self->_numberOfColumns)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCollectionStyleGrid numberOfColumns](self, "numberOfColumns")}];
    [v3 setObject:v6 forKeyedSubscript:@"numberOfColumns"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (numberOfColumns = self->_numberOfColumns, numberOfColumns == objc_msgSend(v4, "numberOfColumns")))
  {
    gridStyle = self->_gridStyle;
    v7 = gridStyle == [v4 gridStyle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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