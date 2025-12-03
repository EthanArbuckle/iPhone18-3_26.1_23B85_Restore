@interface NSDate
- (id)descriptionWithFormat:(id)format;
- (id)roundMinuteToNearstFifteen;
- (id)roundMinuteToNearstFive;
- (id)storedCalendar;
- (id)storedFormatter;
@end

@implementation NSDate

- (id)descriptionWithFormat:(id)format
{
  storedFormatter = [(NSDate *)self storedFormatter];
  [storedFormatter setDateFormat:format];

  return [storedFormatter stringFromDate:self];
}

- (id)storedFormatter
{
  result = qword_1EF280;
  if (!qword_1EF280)
  {
    v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"English"];
    qword_1EF280 = objc_alloc_init(NSDateFormatter);
    [qword_1EF280 setLocale:v3];

    return qword_1EF280;
  }

  return result;
}

- (id)storedCalendar
{
  result = qword_1EF288;
  if (!qword_1EF288)
  {
    result = +[NSCalendar currentCalendar];
    qword_1EF288 = result;
  }

  return result;
}

- (id)roundMinuteToNearstFifteen
{
  v3 = [objc_msgSend(-[NSDate storedCalendar](self "storedCalendar")];
  v4 = ((v3 - (floorf(v3 / 15.0) * 15.0)) * -60.0);

  return [(NSDate *)self dateByAddingTimeInterval:v4];
}

- (id)roundMinuteToNearstFive
{
  v3 = [objc_msgSend(-[NSDate storedCalendar](self "storedCalendar")];
  v4 = ((v3 - (floorf(v3 / 5.0) * 5.0)) * -60.0);

  return [(NSDate *)self dateByAddingTimeInterval:v4];
}

@end