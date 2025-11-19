@interface NLDemoElapsedTimeProvider
- (NLDemoElapsedTimeProvider)initWithElapsedTimeProvider:(id)a3;
- (double)elapsedTime;
- (double)elapsedTimeAtPresentationTime:(id)a3;
- (double)timeSinceLastSecond;
@end

@implementation NLDemoElapsedTimeProvider

- (NLDemoElapsedTimeProvider)initWithElapsedTimeProvider:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = NLDemoElapsedTimeProvider;
  v8 = [(NLDemoElapsedTimeProvider *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_elapsedTimeProvider, location[0]);
    v8->_adjustedTime = 0.0;
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (double)elapsedTime
{
  [(NLSessionActivityElapsedTimeProvider *)self->_elapsedTimeProvider elapsedTime];
  v5 = v2;
  [(NLDemoElapsedTimeProvider *)self adjustedTime];
  return v5 + v3;
}

- (double)timeSinceLastSecond
{
  [(NLSessionActivityElapsedTimeProvider *)self->_elapsedTimeProvider timeSinceLastSecond];
  v5 = v2;
  [(NLDemoElapsedTimeProvider *)self adjustedTime];
  return v5 + v3;
}

- (double)elapsedTimeAtPresentationTime:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivityElapsedTimeProvider *)v9->_elapsedTimeProvider elapsedTimeAtPresentationTime:location[0]];
  v6 = v3;
  [(NLDemoElapsedTimeProvider *)v9 adjustedTime];
  v7 = v6 + v4;
  objc_storeStrong(location, 0);
  return v7;
}

@end