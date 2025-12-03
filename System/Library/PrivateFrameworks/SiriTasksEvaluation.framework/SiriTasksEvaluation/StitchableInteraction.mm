@interface StitchableInteraction
- (StitchableInteraction)initWithType:(id)type identifier:(id)identifier startDate:(id)date duration:(double)duration isDonatedBySiri:(BOOL)siri;
@end

@implementation StitchableInteraction

- (StitchableInteraction)initWithType:(id)type identifier:(id)identifier startDate:(id)date duration:(double)duration isDonatedBySiri:(BOOL)siri
{
  typeCopy = type;
  identifierCopy = identifier;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = StitchableInteraction;
  v16 = [(StitchableInteraction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v17->_startDate, date);
    v17->_duration = duration;
    v17->_isDonatedBySiri = siri;
  }

  return v17;
}

@end