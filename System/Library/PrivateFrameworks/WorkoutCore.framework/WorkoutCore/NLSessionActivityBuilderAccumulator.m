@interface NLSessionActivityBuilderAccumulator
- (NLSessionActivityBuilderAccumulator)initWithBuilder:(id)a3;
- (void)update;
@end

@implementation NLSessionActivityBuilderAccumulator

- (NLSessionActivityBuilderAccumulator)initWithBuilder:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = NLSessionActivityBuilderAccumulator;
  v6 = [(NLSessionActivityBuilderAccumulator *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_builder, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)update
{
  v3 = [(NLSessionActivityDataAccumulator *)self updateHandler];
  MEMORY[0x277D82BD8](v3);
  if (v3)
  {
    v2 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    v2[2]();
    MEMORY[0x277D82BD8](v2);
  }
}

@end