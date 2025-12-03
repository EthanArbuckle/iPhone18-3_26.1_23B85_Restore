@interface PTUIEditFloatRowTableViewCell
- (id)textForValue:(id)value;
- (id)valueForText:(id)text;
@end

@implementation PTUIEditFloatRowTableViewCell

- (id)textForValue:(id)value
{
  valueCopy = value;
  v5 = [(PTUIRowTableViewCell *)self row];
  precision = [v5 precision];
  if (precision >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  else
  {
    v7 = precision;
  }

  v8 = MEMORY[0x277CCACA8];
  [valueCopy floatValue];
  v10 = v9;

  v11 = [v8 stringWithFormat:@"%.*f", v7, v10];

  return v11;
}

- (id)valueForText:(id)text
{
  v3 = MEMORY[0x277CCABB0];
  [text floatValue];

  return [v3 numberWithFloat:?];
}

@end