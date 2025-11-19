@interface ACTExtraKeyTap
- (ACTExtraKeyTap)initWithTouchedKey:(id)a3 location:(CGPoint)a4 timestamp:(double)a5;
- (CGPoint)location;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)a3 log:(id)a4;
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
  v3 = [(ACTExtraKeyTap *)self touchedKey];
  v4 = [v3 displayString];
  v5 = [v2 stringWithFormat:@"ExtraKey touched: %@", v4];

  return v5;
}

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(ACTExtraKeyTap *)self location];
  v8 = v7;
  v10 = v9;
  [(ACTExtraKeyTap *)self timestamp];
  v12 = v11;
  v13 = [(ACTExtraKeyTap *)self touchedKey];
  v14 = [v15 _performTapAtLocation:0 timestamp:v13 intendedKey:0 touchedKey:0 secondaryString:v6 touchError:v8 typingLog:{v10, v12}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTExtraKeyTap *)self touchedKey];
  v7 = [v6 representedString];
  [(ACTExtraKeyTap *)self location];
  v9 = v8;
  [(ACTExtraKeyTap *)self location];
  v11 = v10;
  [(ACTExtraKeyTap *)self timestamp];
  v13 = [v3 stringWithFormat:@"<%@: touchedKey=%@, loc=(%.0f, %.0f), t=%.2f>", v5, v7, v9, v11, v12];

  return v13;
}

- (ACTExtraKeyTap)initWithTouchedKey:(id)a3 location:(CGPoint)a4 timestamp:(double)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = ACTExtraKeyTap;
  v11 = [(ACTExtraKeyTap *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_touchedKey, a3);
    v12->_location.x = x;
    v12->_location.y = y;
    v12->_timestamp = a5;
  }

  return v12;
}

@end