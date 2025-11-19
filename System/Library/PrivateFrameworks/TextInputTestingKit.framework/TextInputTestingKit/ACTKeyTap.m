@interface ACTKeyTap
- (ACTKeyTap)initWithIntendedKey:(id)a3 touchedKey:(id)a4 error:(id)a5 location:(CGPoint)a6 timestamp:(double)a7 secondaryString:(BOOL)a8;
- (CGPoint)location;
- (id)abbreviatedDescription;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)a3 log:(id)a4;
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
  v4 = [(ACTKeyTap *)self intendedKey];
  v5 = [v4 representedString];
  v6 = [(ACTKeyTap *)self touchedKey];
  v7 = [v6 representedString];
  v8 = [v3 stringWithFormat:@"%@ %@", v5, v7];

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ACTKeyTap *)self intendedKey];
  v5 = [v4 displayString];
  v6 = [v5 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  v7 = [(ACTKeyTap *)self touchedKey];
  v8 = [v7 displayString];
  v9 = [v8 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  v10 = [v3 stringWithFormat:@"KeyTap intended/touched: %@ %@", v6, v9];

  return v10;
}

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v18 = a3;
  v6 = a4;
  [(ACTKeyTap *)self location];
  v8 = v7;
  v10 = v9;
  [(ACTKeyTap *)self timestamp];
  v12 = v11;
  v13 = [(ACTKeyTap *)self intendedKey];
  v14 = [(ACTKeyTap *)self touchedKey];
  v15 = [(ACTKeyTap *)self secondaryString];
  v16 = [(ACTKeyTap *)self error];
  v17 = [v18 _performTapAtLocation:v13 timestamp:v14 intendedKey:v15 touchedKey:v16 secondaryString:v6 touchError:v8 typingLog:{v10, v12}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTKeyTap *)self intendedKey];
  v7 = [v6 representedString];
  v8 = [(ACTKeyTap *)self touchedKey];
  v9 = [v8 representedString];
  v10 = [(ACTKeyTap *)self error];
  [(ACTKeyTap *)self location];
  v12 = v11;
  [(ACTKeyTap *)self location];
  v14 = v13;
  [(ACTKeyTap *)self timestamp];
  v16 = [v3 stringWithFormat:@"<%@: intended=%@, touched=%@, error=%@, loc=(%.0f, %.0f), t=%.2f>", v5, v7, v9, v10, v12, v14, v15];

  return v16;
}

- (ACTKeyTap)initWithIntendedKey:(id)a3 touchedKey:(id)a4 error:(id)a5 location:(CGPoint)a6 timestamp:(double)a7 secondaryString:(BOOL)a8
{
  y = a6.y;
  x = a6.x;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22.receiver = self;
  v22.super_class = ACTKeyTap;
  v19 = [(ACTKeyTap *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_intendedKey, a3);
    objc_storeStrong(&v20->_touchedKey, a4);
    objc_storeStrong(&v20->_error, a5);
    v20->_location.x = x;
    v20->_location.y = y;
    v20->_timestamp = a7;
    v20->_secondaryString = a8;
  }

  return v20;
}

@end