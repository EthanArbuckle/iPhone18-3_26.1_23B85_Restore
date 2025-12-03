@interface PPCalendar
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCalendar:(id)calendar;
- (PPCalendar)initWithCalendarIdentifier:(id)identifier title:(id)title color:(CGColor *)color;
- (PPCalendar)initWithCoder:(id)coder;
- (PPCalendar)initWithEKCalendar:(id)calendar internPool:(id)pool;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPCalendar

- (BOOL)isEqualToCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (!calendarCopy)
  {
    goto LABEL_8;
  }

  v5 = self->_calendarIdentifier;
  v6 = v5;
  if (v5 == calendarCopy[1])
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
  if (v8 == calendarCopy[2])
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
  v13 = calendarCopy[3];
  v11 = color == v13 || CGColorEqualToColor(color, v13);
LABEL_13:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPCalendar *)self isEqualToCalendar:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  calendarIdentifier = self->_calendarIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:calendarIdentifier forKey:@"cid"];
  [coderCopy encodeObject:self->_title forKey:@"ttl"];
  PPEncodeCalendarColor(coderCopy, self->_color);
}

- (PPCalendar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"cid"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"ttl"];
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
    selfCopy = 0;
  }

  else
  {
    v10 = PPCreateCalendarColorWithDecoder(coderCopy);
    self = [(PPCalendar *)self initWithCalendarIdentifier:v6 title:v8 color:v10];
    CGColorRelease(v10);
    selfCopy = self;
  }

  return selfCopy;
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

- (PPCalendar)initWithCalendarIdentifier:(id)identifier title:(id)title color:(CGColor *)color
{
  identifierCopy = identifier;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = PPCalendar;
  v10 = [(PPCalendar *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    calendarIdentifier = v10->_calendarIdentifier;
    v10->_calendarIdentifier = v11;

    v13 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v13;

    CGColorRetain(color);
    v10->_color = color;
  }

  return v10;
}

- (PPCalendar)initWithEKCalendar:(id)calendar internPool:(id)pool
{
  v5 = [pool internedCalendarWithEKCalendar:calendar];

  return v5;
}

@end