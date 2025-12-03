@interface _SFPBPointSize
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPointSize)initWithCGSize:(CGSize)size;
- (_SFPBPointSize)initWithDictionary:(id)dictionary;
- (_SFPBPointSize)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPointSize

- (_SFPBPointSize)initWithCGSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = _SFPBPointSize;
  v5 = [(_SFPBPointSize *)&v10 init];
  if (v5)
  {
    v6 = [[_SFPBGraphicalFloat alloc] initWithCGFloat:width];
    [(_SFPBPointSize *)v5 setWidth:v6];

    v7 = [[_SFPBGraphicalFloat alloc] initWithCGFloat:height];
    [(_SFPBPointSize *)v5 setHeight:v7];

    v8 = v5;
  }

  return v5;
}

- (_SFPBPointSize)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBPointSize;
  v5 = [(_SFPBPointSize *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v6];
      [(_SFPBPointSize *)v5 setWidth:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v8];
      [(_SFPBPointSize *)v5 setHeight:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPointSize)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPointSize *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPointSize *)self dictionaryRepresentation];
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
  if (self->_height)
  {
    height = [(_SFPBPointSize *)self height];
    dictionaryRepresentation = [height dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"height"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"height"];
    }
  }

  if (self->_width)
  {
    width = [(_SFPBPointSize *)self width];
    dictionaryRepresentation2 = [width dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"width"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"width"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  width = [(_SFPBPointSize *)self width];
  width2 = [equalCopy width];
  if ((width != 0) == (width2 == 0))
  {
    goto LABEL_11;
  }

  width3 = [(_SFPBPointSize *)self width];
  if (width3)
  {
    v8 = width3;
    width4 = [(_SFPBPointSize *)self width];
    width5 = [equalCopy width];
    v11 = [width4 isEqual:width5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  width = [(_SFPBPointSize *)self height];
  width2 = [equalCopy height];
  if ((width != 0) != (width2 == 0))
  {
    height = [(_SFPBPointSize *)self height];
    if (!height)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = height;
    height2 = [(_SFPBPointSize *)self height];
    height3 = [equalCopy height];
    v16 = [height2 isEqual:height3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  width = [(_SFPBPointSize *)self width];
  if (width)
  {
    PBDataWriterWriteSubmessage();
  }

  height = [(_SFPBPointSize *)self height];
  if (height)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end