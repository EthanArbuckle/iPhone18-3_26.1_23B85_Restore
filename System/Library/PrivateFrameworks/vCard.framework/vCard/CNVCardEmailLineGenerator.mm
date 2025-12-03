@interface CNVCardEmailLineGenerator
- (id)lineWithValue:(id)value label:(id)label;
- (id)standardLabelsForLabel:(id)label;
@end

@implementation CNVCardEmailLineGenerator

- (id)lineWithValue:(id)value label:(id)label
{
  v6.receiver = self;
  v6.super_class = CNVCardEmailLineGenerator;
  v4 = [(CNVCardLineGenerator *)&v6 lineWithValue:value label:label];
  [v4 insertParameterWithName:@"type" value:@"INTERNET" atIndex:0];

  return v4;
}

- (id)standardLabelsForLabel:(id)label
{
  v10[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if ([labelCopy isEqualToString:@"MobileMe"])
  {
    v10[0] = @"MOBILEME";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNVCardEmailLineGenerator;
    v5 = [(CNVCardLineGenerator *)&v9 standardLabelsForLabel:labelCopy];
  }

  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end