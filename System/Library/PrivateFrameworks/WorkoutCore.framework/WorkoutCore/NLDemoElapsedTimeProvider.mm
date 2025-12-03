@interface NLDemoElapsedTimeProvider
- (NLDemoElapsedTimeProvider)initWithElapsedTimeProvider:(id)provider;
- (double)elapsedTime;
- (double)elapsedTimeAtPresentationTime:(id)time;
- (double)timeSinceLastSecond;
@end

@implementation NLDemoElapsedTimeProvider

- (NLDemoElapsedTimeProvider)initWithElapsedTimeProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = NLDemoElapsedTimeProvider;
  selfCopy = [(NLDemoElapsedTimeProvider *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_elapsedTimeProvider, location[0]);
    selfCopy->_adjustedTime = 0.0;
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (double)elapsedTimeAtPresentationTime:(id)time
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, time);
  [(NLSessionActivityElapsedTimeProvider *)selfCopy->_elapsedTimeProvider elapsedTimeAtPresentationTime:location[0]];
  v6 = v3;
  [(NLDemoElapsedTimeProvider *)selfCopy adjustedTime];
  v7 = v6 + v4;
  objc_storeStrong(location, 0);
  return v7;
}

@end