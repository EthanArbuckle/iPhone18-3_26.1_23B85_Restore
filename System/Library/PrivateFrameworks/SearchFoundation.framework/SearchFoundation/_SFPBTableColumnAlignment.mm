@interface _SFPBTableColumnAlignment
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTableColumnAlignment)initWithDictionary:(id)dictionary;
- (_SFPBTableColumnAlignment)initWithFacade:(id)facade;
- (_SFPBTableColumnAlignment)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTableColumnAlignment

- (_SFPBTableColumnAlignment)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBTableColumnAlignment *)self init];
  if (v5)
  {
    if ([facadeCopy hasColumnAlignment])
    {
      -[_SFPBTableColumnAlignment setColumnAlignment:](v5, "setColumnAlignment:", [facadeCopy columnAlignment]);
    }

    if ([facadeCopy hasDataAlignment])
    {
      -[_SFPBTableColumnAlignment setDataAlignment:](v5, "setDataAlignment:", [facadeCopy dataAlignment]);
    }

    if ([facadeCopy hasIsEqualWidth])
    {
      -[_SFPBTableColumnAlignment setIsEqualWidth:](v5, "setIsEqualWidth:", [facadeCopy isEqualWidth]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBTableColumnAlignment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBTableColumnAlignment;
  v5 = [(_SFPBTableColumnAlignment *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"columnAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableColumnAlignment setColumnAlignment:](v5, "setColumnAlignment:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"dataAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableColumnAlignment setDataAlignment:](v5, "setDataAlignment:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isEqualWidth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableColumnAlignment setIsEqualWidth:](v5, "setIsEqualWidth:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBTableColumnAlignment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTableColumnAlignment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTableColumnAlignment *)self dictionaryRepresentation];
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
  if (self->_columnAlignment)
  {
    columnAlignment = [(_SFPBTableColumnAlignment *)self columnAlignment];
    if (columnAlignment >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", columnAlignment];
    }

    else
    {
      v5 = off_1E7ACE548[columnAlignment];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"columnAlignment"];
  }

  if (self->_dataAlignment)
  {
    dataAlignment = [(_SFPBTableColumnAlignment *)self dataAlignment];
    if (dataAlignment >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", dataAlignment];
    }

    else
    {
      v7 = off_1E7ACE548[dataAlignment];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"dataAlignment"];
  }

  if (self->_isEqualWidth)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableColumnAlignment isEqualWidth](self, "isEqualWidth")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isEqualWidth"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v2 = 2654435761;
  if (!self->_isEqualWidth)
  {
    v2 = 0;
  }

  return (2654435761 * self->_dataAlignment) ^ (2654435761 * self->_columnAlignment) ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (columnAlignment = self->_columnAlignment, columnAlignment == objc_msgSend(equalCopy, "columnAlignment")) && (dataAlignment = self->_dataAlignment, dataAlignment == objc_msgSend(equalCopy, "dataAlignment")))
  {
    isEqualWidth = self->_isEqualWidth;
    v8 = isEqualWidth == [equalCopy isEqualWidth];
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
  if ([(_SFPBTableColumnAlignment *)self columnAlignment])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBTableColumnAlignment *)self dataAlignment])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBTableColumnAlignment *)self isEqualWidth])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end