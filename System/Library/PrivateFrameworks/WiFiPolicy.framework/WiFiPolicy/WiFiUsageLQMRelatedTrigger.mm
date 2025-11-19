@interface WiFiUsageLQMRelatedTrigger
- (WiFiUsageLQMRelatedTrigger)initWithTrigger:(id)a3 andReason:(id)a4 andTimestamp:(id)a5;
@end

@implementation WiFiUsageLQMRelatedTrigger

- (WiFiUsageLQMRelatedTrigger)initWithTrigger:(id)a3 andReason:(id)a4 andTimestamp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v11)
  {
    v16.receiver = self;
    v16.super_class = WiFiUsageLQMRelatedTrigger;
    v14 = [(WiFiUsageLQMRelatedTrigger *)&v16 init];
    objc_storeStrong(&v14->_trigger, a3);
    objc_storeStrong(&v14->_reason, a4);
    objc_storeStrong(&v14->_timestamp, a5);
    self = v14;
    v13 = self;
  }

  return v13;
}

@end