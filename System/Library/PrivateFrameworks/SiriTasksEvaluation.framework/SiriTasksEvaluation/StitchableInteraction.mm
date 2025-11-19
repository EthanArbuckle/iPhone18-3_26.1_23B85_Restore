@interface StitchableInteraction
- (StitchableInteraction)initWithType:(id)a3 identifier:(id)a4 startDate:(id)a5 duration:(double)a6 isDonatedBySiri:(BOOL)a7;
@end

@implementation StitchableInteraction

- (StitchableInteraction)initWithType:(id)a3 identifier:(id)a4 startDate:(id)a5 duration:(double)a6 isDonatedBySiri:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = StitchableInteraction;
  v16 = [(StitchableInteraction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_type, a3);
    objc_storeStrong(&v17->_identifier, a4);
    objc_storeStrong(&v17->_startDate, a5);
    v17->_duration = a6;
    v17->_isDonatedBySiri = a7;
  }

  return v17;
}

@end