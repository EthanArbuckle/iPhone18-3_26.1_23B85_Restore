@interface SXDataTableBorderSides
- (id)borderForValue:(id)a3;
- (void)setUnitConverter:(id)a3;
@end

@implementation SXDataTableBorderSides

- (id)borderForValue:(id)a3
{
  v4 = a3;
  v5 = [(SXJSONObject *)self jsonDictionary];
  v6 = [v5 objectForKey:@"all"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [SXDataTableBorder alloc];
    v8 = [(SXJSONObject *)self specificationVersion];
    v9 = v7;
    v10 = v6;
  }

  else
  {
    v11 = [SXDataTableBorder alloc];
    v8 = [(SXJSONObject *)self specificationVersion];
    v9 = v11;
    v10 = v4;
  }

  v12 = [(SXJSONObject *)v9 initWithJSONObject:v10 andVersion:v8];

  v13 = [(SXDataTableBorderSides *)self unitConverter];
  [(SXDataTableBorder *)v12 setUnitConverter:v13];

  return v12;
}

- (void)setUnitConverter:(id)a3
{
  v4 = a3;
  v5 = [(SXDataTableBorderSides *)self top];
  [v5 setUnitConverter:v4];

  v6 = [(SXDataTableBorderSides *)self right];
  [v6 setUnitConverter:v4];

  v7 = [(SXDataTableBorderSides *)self bottom];
  [v7 setUnitConverter:v4];

  v8 = [(SXDataTableBorderSides *)self left];
  [v8 setUnitConverter:v4];

  unitConverter = self->_unitConverter;
  self->_unitConverter = v4;
}

@end