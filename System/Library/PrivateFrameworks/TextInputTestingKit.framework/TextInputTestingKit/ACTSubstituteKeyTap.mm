@interface ACTSubstituteKeyTap
- (ACTSubstituteKeyTap)initWithIntendedKey:(id)key touchedKey:(id)touchedKey error:(id)error location:(CGPoint)location timestamp:(double)timestamp;
- (CGPoint)location;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTSubstituteKeyTap

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
  v3 = MEMORY[0x277CCACA8];
  intendedKey = [(ACTSubstituteKeyTap *)self intendedKey];
  displayString = [intendedKey displayString];
  v6 = [displayString stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  touchedKey = [(ACTSubstituteKeyTap *)self touchedKey];
  displayString2 = [touchedKey displayString];
  v9 = [displayString2 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  v10 = [v3 stringWithFormat:@"SubstituteKeyTap intended/touched: %@ %@", v6, v9];

  return v10;
}

- (void)applyWithTyper:(id)typer log:(id)log
{
  typerCopy = typer;
  logCopy = log;
  [(ACTSubstituteKeyTap *)self location];
  v8 = v7;
  v10 = v9;
  [(ACTSubstituteKeyTap *)self timestamp];
  v12 = v11;
  intendedKey = [(ACTSubstituteKeyTap *)self intendedKey];
  touchedKey = [(ACTSubstituteKeyTap *)self touchedKey];
  error = [(ACTSubstituteKeyTap *)self error];
  v16 = [typerCopy _performTapAtLocation:intendedKey timestamp:touchedKey intendedKey:0 touchedKey:error secondaryString:logCopy touchError:v8 typingLog:{v10, v12}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intendedKey = [(ACTSubstituteKeyTap *)self intendedKey];
  representedString = [intendedKey representedString];
  touchedKey = [(ACTSubstituteKeyTap *)self touchedKey];
  representedString2 = [touchedKey representedString];
  error = [(ACTSubstituteKeyTap *)self error];
  [(ACTSubstituteKeyTap *)self location];
  v12 = v11;
  [(ACTSubstituteKeyTap *)self location];
  v14 = v13;
  [(ACTSubstituteKeyTap *)self timestamp];
  v16 = [v3 stringWithFormat:@"<%@: intended=%@, touched=%@, error=%@, loc=(%.0f, %.0f), t=%.2f>", v5, representedString, representedString2, error, v12, v14, v15];

  return v16;
}

- (ACTSubstituteKeyTap)initWithIntendedKey:(id)key touchedKey:(id)touchedKey error:(id)error location:(CGPoint)location timestamp:(double)timestamp
{
  y = location.y;
  x = location.x;
  keyCopy = key;
  touchedKeyCopy = touchedKey;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = ACTSubstituteKeyTap;
  v17 = [(ACTSubstituteKeyTap *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_intendedKey, key);
    objc_storeStrong(&v18->_touchedKey, touchedKey);
    objc_storeStrong(&v18->_error, error);
    v18->_location.x = x;
    v18->_location.y = y;
    v18->_timestamp = timestamp;
  }

  return v18;
}

@end