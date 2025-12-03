@interface CNVCardStreetAddressLineGenerator
- (id)lineWithValue:(id)value label:(id)label;
- (id)standardLabelsForLabel:(id)label;
- (void)addGroupedLineWithName:(id)name value:(id)value toLine:(id)line;
@end

@implementation CNVCardStreetAddressLineGenerator

- (id)lineWithValue:(id)value label:(id)label
{
  valueCopy = value;
  labelCopy = label;
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

  array = [MEMORY[0x277CBEB18] array];
  v12 = [v10 objectForKeyedSubscript:@"postOfficeBox"];
  [array _cn_addObject:v12 orPlaceholder:&stru_288651EC0];

  v13 = [v10 objectForKeyedSubscript:@"extendedStreet"];
  [array _cn_addObject:v13 orPlaceholder:&stru_288651EC0];

  v14 = [v10 objectForKeyedSubscript:@"street"];
  [array _cn_addObject:v14 orPlaceholder:&stru_288651EC0];

  v15 = [v10 objectForKeyedSubscript:@"city"];
  [array _cn_addObject:v15 orPlaceholder:&stru_288651EC0];

  v16 = [v10 objectForKeyedSubscript:@"state"];
  [array _cn_addObject:v16 orPlaceholder:&stru_288651EC0];

  v17 = [v10 objectForKeyedSubscript:@"postalCode"];
  [array _cn_addObject:v17 orPlaceholder:&stru_288651EC0];

  v18 = [v10 objectForKeyedSubscript:@"country"];
  [array _cn_addObject:v18 orPlaceholder:&stru_288651EC0];

  v24.receiver = self;
  v24.super_class = CNVCardStreetAddressLineGenerator;
  v19 = [(CNVCardLineGenerator *)&v24 lineWithValue:array label:labelCopy];

  v20 = [v10 objectForKeyedSubscript:@"ISOCountryCode"];
  [(CNVCardStreetAddressLineGenerator *)self addGroupedLineWithName:@"X-ABADR" value:v20 toLine:v19];

  v21 = [v10 objectForKeyedSubscript:@"subLocality"];
  [(CNVCardStreetAddressLineGenerator *)self addGroupedLineWithName:@"X-APPLE-SUBLOCALITY" value:v21 toLine:v19];

  v22 = [v10 objectForKeyedSubscript:@"subAdministrativeArea"];
  [(CNVCardStreetAddressLineGenerator *)self addGroupedLineWithName:@"X-APPLE-SUBADMINISTRATIVEAREA" value:v22 toLine:v19];

  return v19;
}

- (void)addGroupedLineWithName:(id)name value:(id)value toLine:(id)line
{
  nameCopy = name;
  valueCopy = value;
  lineCopy = line;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v10 = [(CNVCardLineFactory *)self->super._lineFactory stringLineWithName:nameCopy value:valueCopy];
    [lineCopy addGroupedLine:v10 withCounter:self->super._groupingCount];
  }
}

- (id)standardLabelsForLabel:(id)label
{
  v11 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if ([labelCopy isEqualToString:@"_$!<Work>!$_"])
  {
    v10 = @"WORK";
    v4 = &v10;
LABEL_7:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:{1, v8, v9, v10, v11}];
    goto LABEL_8;
  }

  if ([labelCopy isEqualToString:@"_$!<Home>!$_"])
  {
    v9 = @"HOME";
    v4 = &v9;
    goto LABEL_7;
  }

  if ([labelCopy isEqualToString:@"_$!<Other>!$_"])
  {
    v8 = @"OTHER";
    v4 = &v8;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end