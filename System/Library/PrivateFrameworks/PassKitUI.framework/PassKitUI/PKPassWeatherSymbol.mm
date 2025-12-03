@interface PKPassWeatherSymbol
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSymbol:(id)symbol;
- (PKPassWeatherSymbol)initWithCoder:(id)coder;
- (PKPassWeatherSymbol)initWithSymbolName:(id)name colorPalette:(id)palette;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassWeatherSymbol

- (PKPassWeatherSymbol)initWithSymbolName:(id)name colorPalette:(id)palette
{
  nameCopy = name;
  paletteCopy = palette;
  v12.receiver = self;
  v12.super_class = PKPassWeatherSymbol;
  v9 = [(PKPassWeatherSymbol *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, name);
    objc_storeStrong(&v10->_colorPalette, palette);
  }

  return v10;
}

- (PKPassWeatherSymbol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPassWeatherSymbol;
  v5 = [(PKPassWeatherSymbol *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"colorPalette"];
    colorPalette = v5->_colorPalette;
    v5->_colorPalette = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(PKPassWeatherSymbol);
  v6 = [(NSString *)self->_symbolName copyWithZone:zone];
  symbolName = v5->_symbolName;
  v5->_symbolName = v6;

  v8 = [(NSArray *)self->_colorPalette copyWithZone:zone];
  colorPalette = v5->_colorPalette;
  v5->_colorPalette = v8;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_colorPalette forKey:@"colorPalette"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassWeatherSymbol *)self isEqualToSymbol:v5];
  }

  return v6;
}

- (BOOL)isEqualToSymbol:(id)symbol
{
  symbolCopy = symbol;
  v5 = symbolCopy[1];
  v6 = self->_symbolName;
  v7 = v5;
  v8 = v7;
  if (v6 != v7)
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
    }

    else
    {
      v10 = [(NSString *)v6 isEqualToString:v7];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v11 = PKEqualObjects();
LABEL_12:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_symbolName];
  [array safelyAddObject:self->_colorPalette];
  v4 = PKCombinedHash();

  return v4;
}

@end