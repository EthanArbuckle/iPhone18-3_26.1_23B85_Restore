@interface STBlueprintScheduleCustomDayItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STBlueprintScheduleCustomDayItem

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDateComponents *)self->_startTime copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDateComponents *)self->_endTime copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v5[3] = self->_day;
  return v5;
}

@end