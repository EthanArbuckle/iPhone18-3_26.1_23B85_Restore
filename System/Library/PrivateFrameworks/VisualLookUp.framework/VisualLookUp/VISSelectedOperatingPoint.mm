@interface VISSelectedOperatingPoint
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISSelectedOperatingPoint)initWithDictionary:(id)dictionary;
- (VISSelectedOperatingPoint)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation VISSelectedOperatingPoint

- (void)writeTo:(id)to
{
  toCopy = to;
  selector = [(VISSelectedOperatingPoint *)self selector];
  if (selector)
  {
    PBDataWriterWriteSubmessage();
  }

  selected = [(VISSelectedOperatingPoint *)self selected];
  if (selected)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  selector = [(VISSelectedOperatingPoint *)self selector];
  selector2 = [equalCopy selector];
  if ((selector != 0) == (selector2 == 0))
  {
    goto LABEL_11;
  }

  selector3 = [(VISSelectedOperatingPoint *)self selector];
  if (selector3)
  {
    v8 = selector3;
    selector4 = [(VISSelectedOperatingPoint *)self selector];
    selector5 = [equalCopy selector];
    v11 = [selector4 isEqual:selector5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  selector = [(VISSelectedOperatingPoint *)self selected];
  selector2 = [equalCopy selected];
  if ((selector != 0) != (selector2 == 0))
  {
    selected = [(VISSelectedOperatingPoint *)self selected];
    if (!selected)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = selected;
    selected2 = [(VISSelectedOperatingPoint *)self selected];
    selected3 = [equalCopy selected];
    v16 = [selected2 isEqual:selected3];

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

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_selected)
  {
    selected = [(VISSelectedOperatingPoint *)self selected];
    dictionaryRepresentation = [selected dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"selected"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"selected"];
    }
  }

  if (self->_selector)
  {
    selector = [(VISSelectedOperatingPoint *)self selector];
    dictionaryRepresentation2 = [selector dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"selector"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"selector"];
    }
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISSelectedOperatingPoint *)self dictionaryRepresentation];
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

- (VISSelectedOperatingPoint)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISSelectedOperatingPoint *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISSelectedOperatingPoint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = VISSelectedOperatingPoint;
  v5 = [(VISSelectedOperatingPoint *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"selector"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[VISOperatingPointSelectors alloc] initWithDictionary:v6];
      [(VISSelectedOperatingPoint *)v5 setSelector:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[VISLabeledPRPoint alloc] initWithDictionary:v8];
      [(VISSelectedOperatingPoint *)v5 setSelected:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end