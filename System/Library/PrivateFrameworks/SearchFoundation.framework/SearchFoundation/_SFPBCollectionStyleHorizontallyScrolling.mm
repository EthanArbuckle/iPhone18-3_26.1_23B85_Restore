@interface _SFPBCollectionStyleHorizontallyScrolling
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCollectionStyleHorizontallyScrolling)initWithDictionary:(id)a3;
- (_SFPBCollectionStyleHorizontallyScrolling)initWithFacade:(id)a3;
- (_SFPBCollectionStyleHorizontallyScrolling)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCollectionStyleHorizontallyScrolling

- (_SFPBCollectionStyleHorizontallyScrolling)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCollectionStyleHorizontallyScrolling *)self init];
  if (v5)
  {
    if ([v4 hasNumberOfRows])
    {
      -[_SFPBCollectionStyleHorizontallyScrolling setNumberOfRows:](v5, "setNumberOfRows:", [v4 numberOfRows]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleHorizontallyScrolling)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBCollectionStyleHorizontallyScrolling;
  v5 = [(_SFPBCollectionStyleHorizontallyScrolling *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numberOfRows"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleHorizontallyScrolling setNumberOfRows:](v5, "setNumberOfRows:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleHorizontallyScrolling)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyleHorizontallyScrolling *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCollectionStyleHorizontallyScrolling *)self dictionaryRepresentation];
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
  if (self->_numberOfRows)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCollectionStyleHorizontallyScrolling numberOfRows](self, "numberOfRows")}];
    [v3 setObject:v4 forKeyedSubscript:@"numberOfRows"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    numberOfRows = self->_numberOfRows;
    v6 = numberOfRows == [v4 numberOfRows];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ([(_SFPBCollectionStyleHorizontallyScrolling *)self numberOfRows])
  {
    PBDataWriterWriteUint64Field();
  }
}

@end