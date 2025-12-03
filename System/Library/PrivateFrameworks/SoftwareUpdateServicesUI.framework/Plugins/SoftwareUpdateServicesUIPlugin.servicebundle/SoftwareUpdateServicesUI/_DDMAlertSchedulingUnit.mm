@interface _DDMAlertSchedulingUnit
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _DDMAlertSchedulingUnit

- (id)description
{
  v4 = [SUUtility prettyPrintDate:self->_date];
  v3 = window2Str(self->_window);
  v5 = [NSString stringWithFormat:@"{date:%@, window:%@, alertMsg:%@}", v4, v3, self->_alertMsgFormat];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = objc_alloc_init(_DDMAlertSchedulingUnit);
  if (v7[0])
  {
    v5 = [(NSDate *)selfCopy->_date copy];
    [v7[0] setDate:?];

    [v7[0] setWindow:selfCopy->_window];
    v6 = [(NSString *)selfCopy->_alertMsgFormat copy];
    [v7[0] setAlertMsgFormat:?];
  }

  v4 = v7[0];
  objc_storeStrong(v7, 0);
  return v4;
}

@end