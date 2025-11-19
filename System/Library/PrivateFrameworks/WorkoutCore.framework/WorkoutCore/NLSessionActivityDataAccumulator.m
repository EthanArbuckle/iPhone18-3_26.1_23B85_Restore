@interface NLSessionActivityDataAccumulator
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)startAccumulatingWithStartDate:(id)a3 updateHandler:(id)a4;
- (void)startAccumulatingWithUpdateHandler:(id)a3;
- (void)stopAccumulating;
@end

@implementation NLSessionActivityDataAccumulator

- (void)startAccumulatingWithStartDate:(id)a3 updateHandler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  if (!v7->_accumulating)
  {
    v7->_accumulating = 1;
    [(NLSessionActivityDataAccumulator *)v7 setUpdateHandler:v5];
    [(NLSessionActivityDataAccumulator *)v7 accumulatorDidStartWithStartDate:location[0] handler:v5];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)startAccumulatingWithUpdateHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [MEMORY[0x277CBEAA8] date];
  [NLSessionActivityDataAccumulator startAccumulatingWithStartDate:v3 updateHandler:"startAccumulatingWithStartDate:updateHandler:"];
  MEMORY[0x277D82BD8](v4);
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

- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end