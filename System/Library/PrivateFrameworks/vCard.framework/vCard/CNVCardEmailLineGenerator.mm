@interface CNVCardEmailLineGenerator
- (id)lineWithValue:(id)a3 label:(id)a4;
- (id)standardLabelsForLabel:(id)a3;
@end

@implementation CNVCardEmailLineGenerator

- (id)lineWithValue:(id)a3 label:(id)a4
{
  v6.receiver = self;
  v6.super_class = CNVCardEmailLineGenerator;
  v4 = [(CNVCardLineGenerator *)&v6 lineWithValue:a3 label:a4];
  [v4 insertParameterWithName:@"type" value:@"INTERNET" atIndex:0];

  return v4;
}

- (id)standardLabelsForLabel:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"MobileMe"])
  {
    v10[0] = @"MOBILEME";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNVCardEmailLineGenerator;
    v5 = [(CNVCardLineGenerator *)&v9 standardLabelsForLabel:v4];
  }

  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end