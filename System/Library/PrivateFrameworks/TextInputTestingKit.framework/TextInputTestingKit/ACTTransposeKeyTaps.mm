@interface ACTTransposeKeyTaps
- (ACTTransposeKeyTaps)initWithFirstTap:(id)tap secondTap:(id)secondTap;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTTransposeKeyTaps

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  twoKeyTapShortDescription = [(ACTUserAction *)self twoKeyTapShortDescription];
  v4 = [v2 stringWithFormat:@"Transpose first/second: %@ ", twoKeyTapShortDescription];

  return v4;
}

- (void)applyWithTyper:(id)typer log:(id)log
{
  logCopy = log;
  typerCopy = typer;
  firstTap = [(ACTTransposeKeyTaps *)self firstTap];
  [firstTap applyWithTyper:typerCopy log:logCopy];

  secondTap = [(ACTTransposeKeyTaps *)self secondTap];
  [secondTap applyWithTyper:typerCopy log:logCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  firstTap = [(ACTTransposeKeyTaps *)self firstTap];
  secondTap = [(ACTTransposeKeyTaps *)self secondTap];
  v8 = [v3 stringWithFormat:@"<%@: firstTap=%@, secondTap=%@>", v5, firstTap, secondTap];

  return v8;
}

- (ACTTransposeKeyTaps)initWithFirstTap:(id)tap secondTap:(id)secondTap
{
  tapCopy = tap;
  secondTapCopy = secondTap;
  v12.receiver = self;
  v12.super_class = ACTTransposeKeyTaps;
  v9 = [(ACTTransposeKeyTaps *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstTap, tap);
    objc_storeStrong(&v10->_secondTap, secondTap);
  }

  return v10;
}

@end