@interface ACTKeyTap
- (ACTKeyTap)initWithIntendedKey:(id)key touchedKey:(id)touchedKey error:(id)error location:(CGPoint)location timestamp:(double)timestamp secondaryString:(BOOL)string;
- (CGPoint)location;
- (id)abbreviatedDescription;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTKeyTap

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)abbreviatedDescription
{
  v3 = MEMORY[0x277CCACA8];
  intendedKey = [(ACTKeyTap *)self intendedKey];
  representedString = [intendedKey representedString];
  touchedKey = [(ACTKeyTap *)self touchedKey];
  representedString2 = [touchedKey representedString];
  v8 = [v3 stringWithFormat:@"%@ %@", representedString, representedString2];

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  intendedKey = [(ACTKeyTap *)self intendedKey];
  displayString = [intendedKey displayString];
  v6 = [displayString stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  touchedKey = [(ACTKeyTap *)self touchedKey];
  displayString2 = [touchedKey displayString];
  v9 = [displayString2 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  v10 = [v3 stringWithFormat:@"KeyTap intended/touched: %@ %@", v6, v9];

  return v10;
}

- (void)applyWithTyper:(id)typer log:(id)log
{
  typerCopy = typer;
  logCopy = log;
  [(ACTKeyTap *)self location];
  v8 = v7;
  v10 = v9;
  [(ACTKeyTap *)self timestamp];
  v12 = v11;
  intendedKey = [(ACTKeyTap *)self intendedKey];
  touchedKey = [(ACTKeyTap *)self touchedKey];
  secondaryString = [(ACTKeyTap *)self secondaryString];
  error = [(ACTKeyTap *)self error];
  v17 = [typerCopy _performTapAtLocation:intendedKey timestamp:touchedKey intendedKey:secondaryString touchedKey:error secondaryString:logCopy touchError:v8 typingLog:{v10, v12}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intendedKey = [(ACTKeyTap *)self intendedKey];
  representedString = [intendedKey representedString];
  touchedKey = [(ACTKeyTap *)self touchedKey];
  representedString2 = [touchedKey representedString];
  error = [(ACTKeyTap *)self error];
  [(ACTKeyTap *)self location];
  v12 = v11;
  [(ACTKeyTap *)self location];
  v14 = v13;
  [(ACTKeyTap *)self timestamp];
  v16 = [v3 stringWithFormat:@"<%@: intended=%@, touched=%@, error=%@, loc=(%.0f, %.0f), t=%.2f>", v5, representedString, representedString2, error, v12, v14, v15];

  return v16;
}

- (ACTKeyTap)initWithIntendedKey:(id)key touchedKey:(id)touchedKey error:(id)error location:(CGPoint)location timestamp:(double)timestamp secondaryString:(BOOL)string
{
  y = location.y;
  x = location.x;
  keyCopy = key;
  touchedKeyCopy = touchedKey;
  errorCopy = error;
  v22.receiver = self;
  v22.super_class = ACTKeyTap;
  v19 = [(ACTKeyTap *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_intendedKey, key);
    objc_storeStrong(&v20->_touchedKey, touchedKey);
    objc_storeStrong(&v20->_error, error);
    v20->_location.x = x;
    v20->_location.y = y;
    v20->_timestamp = timestamp;
    v20->_secondaryString = string;
  }

  return v20;
}

@end