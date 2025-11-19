@interface _UIDatePickerCalendarDay
- (BOOL)isEqual:(id)a3;
- (BOOL)isToday;
- (_UIDatePickerCalendarDay)initWithDate:(id)a3 calendar:(id)a4;
- (_UIDatePickerCalendarDay)initWithDate:(id)a3 calendar:(id)a4 month:(id)a5 assignedMonth:(id)a6;
- (id)copyWithAssignedMonth:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIDatePickerCalendarDay

- (_UIDatePickerCalendarDay)initWithDate:(id)a3 calendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarMonth alloc] initWithDate:v7 calendar:v6];
  v9 = [(_UIDatePickerCalendarDay *)self initWithDate:v7 calendar:v6 month:v8 assignedMonth:0];

  return v9;
}

- (_UIDatePickerCalendarDay)initWithDate:(id)a3 calendar:(id)a4 month:(id)a5 assignedMonth:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = _UIDatePickerCalendarDay;
  v13 = [(_UIDatePickerCalendarDateComponent *)&v16 initWithDate:a3 calendar:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_month, a5);
    objc_storeStrong(&v14->_assignedMonth, a6);
  }

  return v14;
}

- (id)copyWithAssignedMonth:(id)a3
{
  v4 = a3;
  if (self->_assignedMonth != v4)
  {
    v5 = [(_UIDatePickerCalendarDay *)self copy];
    v6 = self->_month;
    v7 = v4;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v7 || !v6)
      {

        goto LABEL_11;
      }

      v9 = [(_UIDatePickerCalendarDateComponent *)v6 isEqual:v7];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    v8 = 0;
LABEL_11:
    objc_storeStrong(&v5->_assignedMonth, v8);
    goto LABEL_12;
  }

  v5 = self;
LABEL_12:

  return v5;
}

- (BOOL)isToday
{
  v3 = [(NSDateComponents *)self->super._components calendar];
  v4 = [(_UIDatePickerCalendarDateComponent *)self date];
  v5 = [v3 isDateInToday:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerCalendarDay;
  v4 = [(_UIDatePickerCalendarDateComponent *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 3, self->_month);
  objc_storeStrong(v4 + 4, self->_assignedMonth);
  return v4;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarDay;
  v3 = [(_UIDatePickerCalendarDateComponent *)&v7 hash];
  v4 = [(_UIDatePickerCalendarDateComponent *)self->_month hash]^ v3;
  assignedMonth = self->_assignedMonth;
  if (assignedMonth)
  {
    v4 ^= [(_UIDatePickerCalendarDateComponent *)assignedMonth hash];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIDatePickerCalendarDay;
  if ([(_UIDatePickerCalendarDateComponent *)&v13 isEqual:v4])
  {
    v5 = v4;
    if ([(_UIDatePickerCalendarDateComponent *)self->_month isEqual:v5[3]])
    {
      v6 = v5[4];
      v7 = self->_assignedMonth;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = [(_UIDatePickerCalendarDateComponent *)v7 isEqual:v8];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [objc_opt_class() inlineDescriptionForComponents:self->super._components];
  v7 = [v3 stringWithFormat:@"<%@: %p components: %@; month: %@; assignedMonth: %@>", v5, self, v6, self->_month, self->_assignedMonth];;

  return v7;
}

@end