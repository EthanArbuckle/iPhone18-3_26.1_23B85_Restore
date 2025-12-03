@interface _SFPBCollectionStyleHorizontallyScrolling
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCollectionStyleHorizontallyScrolling)initWithDictionary:(id)dictionary;
- (_SFPBCollectionStyleHorizontallyScrolling)initWithFacade:(id)facade;
- (_SFPBCollectionStyleHorizontallyScrolling)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCollectionStyleHorizontallyScrolling

- (_SFPBCollectionStyleHorizontallyScrolling)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCollectionStyleHorizontallyScrolling *)self init];
  if (v5)
  {
    if ([facadeCopy hasNumberOfRows])
    {
      -[_SFPBCollectionStyleHorizontallyScrolling setNumberOfRows:](v5, "setNumberOfRows:", [facadeCopy numberOfRows]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleHorizontallyScrolling)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBCollectionStyleHorizontallyScrolling;
  v5 = [(_SFPBCollectionStyleHorizontallyScrolling *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numberOfRows"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionStyleHorizontallyScrolling setNumberOfRows:](v5, "setNumberOfRows:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBCollectionStyleHorizontallyScrolling)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCollectionStyleHorizontallyScrolling *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCollectionStyleHorizontallyScrolling *)self dictionaryRepresentation];
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
  if (self->_numberOfRows)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCollectionStyleHorizontallyScrolling numberOfRows](self, "numberOfRows")}];
    [dictionary setObject:v4 forKeyedSubscript:@"numberOfRows"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    numberOfRows = self->_numberOfRows;
    v6 = numberOfRows == [equalCopy numberOfRows];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBCollectionStyleHorizontallyScrolling *)self numberOfRows])
  {
    PBDataWriterWriteUint64Field();
  }
}

@end