@interface STBlueprintScheduleRepresentation
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STBlueprintScheduleRepresentation

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(STBlueprintScheduleSimpleItem *)self->_simpleSchedule copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_customScheduleItems copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end