@interface ACTExtraKeyTap
- (ACTExtraKeyTap)initWithTouchedKey:(id)key location:(CGPoint)location timestamp:(double)timestamp;
- (CGPoint)location;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTExtraKeyTap

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  touchedKey = [(ACTExtraKeyTap *)self touchedKey];
  displayString = [touchedKey displayString];
  v5 = [v2 stringWithFormat:@"ExtraKey touched: %@", displayString];

  return v5;
}

- (void)applyWithTyper:(id)typer log:(id)log
{
  typerCopy = typer;
  logCopy = log;
  [(ACTExtraKeyTap *)self location];
  v8 = v7;
  v10 = v9;
  [(ACTExtraKeyTap *)self timestamp];
  v12 = v11;
  touchedKey = [(ACTExtraKeyTap *)self touchedKey];
  v14 = [typerCopy _performTapAtLocation:0 timestamp:touchedKey intendedKey:0 touchedKey:0 secondaryString:logCopy touchError:v8 typingLog:{v10, v12}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  touchedKey = [(ACTExtraKeyTap *)self touchedKey];
  representedString = [touchedKey representedString];
  [(ACTExtraKeyTap *)self location];
  v9 = v8;
  [(ACTExtraKeyTap *)self location];
  v11 = v10;
  [(ACTExtraKeyTap *)self timestamp];
  v13 = [v3 stringWithFormat:@"<%@: touchedKey=%@, loc=(%.0f, %.0f), t=%.2f>", v5, representedString, v9, v11, v12];

  return v13;
}

- (ACTExtraKeyTap)initWithTouchedKey:(id)key location:(CGPoint)location timestamp:(double)timestamp
{
  y = location.y;
  x = location.x;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = ACTExtraKeyTap;
  v11 = [(ACTExtraKeyTap *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_touchedKey, key);
    v12->_location.x = x;
    v12->_location.y = y;
    v12->_timestamp = timestamp;
  }

  return v12;
}

@end