@interface PPCalendar
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCalendar:(id)a3;
- (PPCalendar)initWithCalendarIdentifier:(id)a3 title:(id)a4 color:(CGColor *)a5;
- (PPCalendar)initWithCoder:(id)a3;
- (PPCalendar)initWithEKCalendar:(id)a3 internPool:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPCalendar

- (BOOL)isEqualToCalendar:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = self->_calendarIdentifier;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = self->_title;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_13;
    }
  }

  color = self->_color;
  v13 = v4[3];
  v11 = color == v13 || CGColorEqualToColor(color, v13);
LABEL_13:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPCalendar *)self isEqualToCalendar:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  calendarIdentifier = self->_calendarIdentifier;
  v5 = a3;
  [v5 encodeObject:calendarIdentifier forKey:@"cid"];
  [v5 encodeObject:self->_title forKey:@"ttl"];
  PPEncodeCalendarColor(v5, self->_color);
}

- (PPCalendar)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"cid"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"ttl"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v10 = PPCreateCalendarColorWithDecoder(v4);
    self = [(PPCalendar *)self initWithCalendarIdentifier:v6 title:v8 color:v10];
    CGColorRelease(v10);
    v11 = self;
  }

  return v11;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPCalendar i:'%@' t:'%@'>", self->_calendarIdentifier, self->_title];

  return v2;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = PPCalendar;
  [(PPCalendar *)&v3 dealloc];
}

- (PPCalendar)initWithCalendarIdentifier:(id)a3 title:(id)a4 color:(CGColor *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PPCalendar;
  v10 = [(PPCalendar *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    calendarIdentifier = v10->_calendarIdentifier;
    v10->_calendarIdentifier = v11;

    v13 = [v9 copy];
    title = v10->_title;
    v10->_title = v13;

    CGColorRetain(a5);
    v10->_color = a5;
  }

  return v10;
}

- (PPCalendar)initWithEKCalendar:(id)a3 internPool:(id)a4
{
  v5 = [a4 internedCalendarWithEKCalendar:a3];

  return v5;
}

@end