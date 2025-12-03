@interface NLSessionActivityBuilderAccumulator
- (NLSessionActivityBuilderAccumulator)initWithBuilder:(id)builder;
- (void)update;
@end

@implementation NLSessionActivityBuilderAccumulator

- (NLSessionActivityBuilderAccumulator)initWithBuilder:(id)builder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = NLSessionActivityBuilderAccumulator;
  v6 = [(NLSessionActivityBuilderAccumulator *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_builder, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)update
{
  updateHandler = [(NLSessionActivityDataAccumulator *)self updateHandler];
  MEMORY[0x277D82BD8](updateHandler);
  if (updateHandler)
  {
    updateHandler2 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    updateHandler2[2]();
    MEMORY[0x277D82BD8](updateHandler2);
  }
}

@end