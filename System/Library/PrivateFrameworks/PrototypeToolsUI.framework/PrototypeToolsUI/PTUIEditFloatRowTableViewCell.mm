@interface PTUIEditFloatRowTableViewCell
- (id)textForValue:(id)a3;
- (id)valueForText:(id)a3;
@end

@implementation PTUIEditFloatRowTableViewCell

- (id)textForValue:(id)a3
{
  v4 = a3;
  v5 = [(PTUIRowTableViewCell *)self row];
  v6 = [v5 precision];
  if (v6 >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v8 = MEMORY[0x277CCACA8];
  [v4 floatValue];
  v10 = v9;

  v11 = [v8 stringWithFormat:@"%.*f", v7, v10];

  return v11;
}

- (id)valueForText:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  [a3 floatValue];

  return [v3 numberWithFloat:?];
}

@end