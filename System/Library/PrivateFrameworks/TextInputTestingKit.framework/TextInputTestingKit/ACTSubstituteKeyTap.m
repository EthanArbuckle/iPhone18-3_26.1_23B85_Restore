@interface ACTSubstituteKeyTap
- (ACTSubstituteKeyTap)initWithIntendedKey:(id)a3 touchedKey:(id)a4 error:(id)a5 location:(CGPoint)a6 timestamp:(double)a7;
- (CGPoint)location;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)a3 log:(id)a4;
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
  v4 = [(ACTSubstituteKeyTap *)self intendedKey];
  v5 = [v4 displayString];
  v6 = [v5 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  v7 = [(ACTSubstituteKeyTap *)self touchedKey];
  v8 = [v7 displayString];
  v9 = [v8 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
  v10 = [v3 stringWithFormat:@"SubstituteKeyTap intended/touched: %@ %@", v6, v9];

  return v10;
}

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v17 = a3;
  v6 = a4;
  [(ACTSubstituteKeyTap *)self location];
  v8 = v7;
  v10 = v9;
  [(ACTSubstituteKeyTap *)self timestamp];
  v12 = v11;
  v13 = [(ACTSubstituteKeyTap *)self intendedKey];
  v14 = [(ACTSubstituteKeyTap *)self touchedKey];
  v15 = [(ACTSubstituteKeyTap *)self error];
  v16 = [v17 _performTapAtLocation:v13 timestamp:v14 intendedKey:0 touchedKey:v15 secondaryString:v6 touchError:v8 typingLog:{v10, v12}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTSubstituteKeyTap *)self intendedKey];
  v7 = [v6 representedString];
  v8 = [(ACTSubstituteKeyTap *)self touchedKey];
  v9 = [v8 representedString];
  v10 = [(ACTSubstituteKeyTap *)self error];
  [(ACTSubstituteKeyTap *)self location];
  v12 = v11;
  [(ACTSubstituteKeyTap *)self location];
  v14 = v13;
  [(ACTSubstituteKeyTap *)self timestamp];
  v16 = [v3 stringWithFormat:@"<%@: intended=%@, touched=%@, error=%@, loc=(%.0f, %.0f), t=%.2f>", v5, v7, v9, v10, v12, v14, v15];

  return v16;
}

- (ACTSubstituteKeyTap)initWithIntendedKey:(id)a3 touchedKey:(id)a4 error:(id)a5 location:(CGPoint)a6 timestamp:(double)a7
{
  y = a6.y;
  x = a6.x;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = ACTSubstituteKeyTap;
  v17 = [(ACTSubstituteKeyTap *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_intendedKey, a3);
    objc_storeStrong(&v18->_touchedKey, a4);
    objc_storeStrong(&v18->_error, a5);
    v18->_location.x = x;
    v18->_location.y = y;
    v18->_timestamp = a7;
  }

  return v18;
}

@end