@interface CNVCardDateComponentsLineGenerator
- (id)lineWithValue:(id)value label:(id)label;
- (id)makeLineWithName:(id)name value:(id)value;
@end

@implementation CNVCardDateComponentsLineGenerator

- (id)makeLineWithName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  objc_opt_class();
  v8 = valueCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(CNVCardDateComponentsFormatter);
  v12 = [(CNVCardDateComponentsFormatter *)v11 stringFromDateComponents:v10];
  v15.receiver = self;
  v15.super_class = CNVCardDateComponentsLineGenerator;
  v13 = [(CNVCardLineGenerator *)&v15 makeLineWithName:nameCopy value:v12];

  return v13;
}

- (id)lineWithValue:(id)value label:(id)label
{
  v10.receiver = self;
  v10.super_class = CNVCardDateComponentsLineGenerator;
  valueCopy = value;
  v6 = [(CNVCardLineGenerator *)&v10 lineWithValue:valueCopy label:label];
  year = [valueCopy year];

  if (year == 0x7FFFFFFFFFFFFFFFLL)
  {
    1604 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 1604];
    [v6 addParameterWithName:@"X-APPLE-OMIT-YEAR" value:1604];
  }

  return v6;
}

@end