@interface CalendarEventClassificationModelInput
- (CalendarEventClassificationModelInput)initWithEmb:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation CalendarEventClassificationModelInput

- (CalendarEventClassificationModelInput)initWithEmb:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalendarEventClassificationModelInput;
  v6 = [(CalendarEventClassificationModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_emb, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"emb"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(CalendarEventClassificationModelInput *)self emb];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end