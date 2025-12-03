@interface NLSessionActivityDataAccumulator
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)startAccumulatingWithStartDate:(id)date updateHandler:(id)handler;
- (void)startAccumulatingWithUpdateHandler:(id)handler;
- (void)stopAccumulating;
@end

@implementation NLSessionActivityDataAccumulator

- (void)startAccumulatingWithStartDate:(id)date updateHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, handler);
  if (!selfCopy->_accumulating)
  {
    selfCopy->_accumulating = 1;
    [(NLSessionActivityDataAccumulator *)selfCopy setUpdateHandler:v5];
    [(NLSessionActivityDataAccumulator *)selfCopy accumulatorDidStartWithStartDate:location[0] handler:v5];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)startAccumulatingWithUpdateHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = selfCopy;
  date = [MEMORY[0x277CBEAA8] date];
  [NLSessionActivityDataAccumulator startAccumulatingWithStartDate:v3 updateHandler:"startAccumulatingWithStartDate:updateHandler:"];
  MEMORY[0x277D82BD8](date);
  objc_storeStrong(location, 0);
}

- (void)stopAccumulating
{
  if (self->_accumulating)
  {
    self->_accumulating = 0;
    [(NLSessionActivityDataAccumulator *)self setUpdateHandler:0];
    [(NLSessionActivityDataAccumulator *)self accumulatorDidStop];
  }
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, handler);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end