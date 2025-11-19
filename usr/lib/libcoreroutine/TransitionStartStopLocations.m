@interface TransitionStartStopLocations
- (TransitionStartStopLocations)initWithStartLocation:(id)a3 stopLocation:(id)a4;
@end

@implementation TransitionStartStopLocations

- (TransitionStartStopLocations)initWithStartLocation:(id)a3 stopLocation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TransitionStartStopLocations;
  v9 = [(TransitionStartStopLocations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startLocation, a3);
    objc_storeStrong(&v10->_stopLocation, a4);
  }

  return v10;
}

@end