@interface _UIDatePickerCalendarDateComponent
+ (id)inlineDescriptionForComponents:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSCalendar)calendar;
- (NSDate)date;
- (NSDateComponents)components;
- (_UIDatePickerCalendarDateComponent)initWithDate:(id)a3 calendar:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIDatePickerCalendarDateComponent

+ (id)inlineDescriptionForComponents:(id)a3
{
  v4 = a3;
  v5 = [a1 representedCalendarUnits];
  v6 = objc_opt_new();
  for (i = 1; i != 64; ++i)
  {
    if (((1 << i) & v5) != 0)
    {
      v8 = [v4 valueForComponent:?];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      [v6 addObject:v9];
    }
  }

  v10 = [v6 componentsJoinedByString:@"-"];

  return v10;
}

- (_UIDatePickerCalendarDateComponent)initWithDate:(id)a3 calendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarDateComponent.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"date"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarDateComponent.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = _UIDatePickerCalendarDateComponent;
  v10 = [(_UIDatePickerCalendarDateComponent *)&v20 init];
  if (v10)
  {
    v11 = [v9 copy];

    v12 = [objc_opt_class() representedCalendarUnits];
    v9 = v11;
    v13 = [v9 components:v12 fromDate:v7];
    v14 = [v9 dateFromComponents:v13];

    v15 = [v9 components:v12 | 0x100000 fromDate:v14];
    components = v10->_components;
    v10->_components = v15;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSDateComponents *)self->_components copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSDate *)self->_date copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && [(_UIDatePickerCalendarDateComponent *)self isMemberOfClass:objc_opt_class()])
  {
    v6 = [(NSDateComponents *)self->_components isEqual:v5->_components];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIDatePickerCalendarDateComponent *)self calendar];
  v7 = [v6 description];
  v8 = [objc_opt_class() inlineDescriptionForComponents:self->_components];
  v9 = [v3 stringWithFormat:@"<%@: %p calendar: %@; components: %@>", v5, self, v7, v8];;

  return v9;
}

- (NSDateComponents)components
{
  v2 = [(NSDateComponents *)self->_components copy];

  return v2;
}

- (NSDate)date
{
  date = self->_date;
  if (!date)
  {
    v4 = [(NSDateComponents *)self->_components date];
    if (!v4)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIDatePickerCalendarDateComponent date]"];
      [v7 handleFailureInFunction:v8 file:@"_UIDatePickerCalendarDateComponent.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"date"}];
    }

    v5 = self->_date;
    self->_date = v4;

    date = self->_date;
  }

  return date;
}

- (NSCalendar)calendar
{
  v4 = [(NSDateComponents *)self->_components calendar];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarDateComponent.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];
  }

  v5 = [v4 copy];

  return v5;
}

@end