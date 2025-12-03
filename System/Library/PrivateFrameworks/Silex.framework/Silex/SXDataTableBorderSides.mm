@interface SXDataTableBorderSides
- (id)borderForValue:(id)value;
- (void)setUnitConverter:(id)converter;
@end

@implementation SXDataTableBorderSides

- (id)borderForValue:(id)value
{
  valueCopy = value;
  jsonDictionary = [(SXJSONObject *)self jsonDictionary];
  v6 = [jsonDictionary objectForKey:@"all"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [SXDataTableBorder alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v9 = v7;
    v10 = v6;
  }

  else
  {
    v11 = [SXDataTableBorder alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v9 = v11;
    v10 = valueCopy;
  }

  v12 = [(SXJSONObject *)v9 initWithJSONObject:v10 andVersion:specificationVersion];

  unitConverter = [(SXDataTableBorderSides *)self unitConverter];
  [(SXDataTableBorder *)v12 setUnitConverter:unitConverter];

  return v12;
}

- (void)setUnitConverter:(id)converter
{
  converterCopy = converter;
  v5 = [(SXDataTableBorderSides *)self top];
  [v5 setUnitConverter:converterCopy];

  right = [(SXDataTableBorderSides *)self right];
  [right setUnitConverter:converterCopy];

  bottom = [(SXDataTableBorderSides *)self bottom];
  [bottom setUnitConverter:converterCopy];

  left = [(SXDataTableBorderSides *)self left];
  [left setUnitConverter:converterCopy];

  unitConverter = self->_unitConverter;
  self->_unitConverter = converterCopy;
}

@end