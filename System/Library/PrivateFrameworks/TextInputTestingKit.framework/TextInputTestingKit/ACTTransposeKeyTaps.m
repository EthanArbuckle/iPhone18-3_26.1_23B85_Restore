@interface ACTTransposeKeyTaps
- (ACTTransposeKeyTaps)initWithFirstTap:(id)a3 secondTap:(id)a4;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)a3 log:(id)a4;
@end

@implementation ACTTransposeKeyTaps

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ACTUserAction *)self twoKeyTapShortDescription];
  v4 = [v2 stringWithFormat:@"Transpose first/second: %@ ", v3];

  return v4;
}

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACTTransposeKeyTaps *)self firstTap];
  [v8 applyWithTyper:v7 log:v6];

  v9 = [(ACTTransposeKeyTaps *)self secondTap];
  [v9 applyWithTyper:v7 log:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTTransposeKeyTaps *)self firstTap];
  v7 = [(ACTTransposeKeyTaps *)self secondTap];
  v8 = [v3 stringWithFormat:@"<%@: firstTap=%@, secondTap=%@>", v5, v6, v7];

  return v8;
}

- (ACTTransposeKeyTaps)initWithFirstTap:(id)a3 secondTap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ACTTransposeKeyTaps;
  v9 = [(ACTTransposeKeyTaps *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstTap, a3);
    objc_storeStrong(&v10->_secondTap, a4);
  }

  return v10;
}

@end