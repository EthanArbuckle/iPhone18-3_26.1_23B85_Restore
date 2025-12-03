@interface CalendarEventClassificationModelOutput
- (CalendarEventClassificationModelOutput)initWithY:(id)y;
- (id)featureValueForName:(id)name;
@end

@implementation CalendarEventClassificationModelOutput

- (CalendarEventClassificationModelOutput)initWithY:(id)y
{
  yCopy = y;
  v9.receiver = self;
  v9.super_class = CalendarEventClassificationModelOutput;
  v6 = [(CalendarEventClassificationModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_y, y);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"y"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(CalendarEventClassificationModelOutput *)self y];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end