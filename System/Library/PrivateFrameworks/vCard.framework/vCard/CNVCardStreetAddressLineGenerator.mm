@interface CNVCardStreetAddressLineGenerator
- (id)lineWithValue:(id)a3 label:(id)a4;
- (id)standardLabelsForLabel:(id)a3;
- (void)addGroupedLineWithName:(id)a3 value:(id)a4 toLine:(id)a5;
@end

@implementation CNVCardStreetAddressLineGenerator

- (id)lineWithValue:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = v6;
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

  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [v10 objectForKeyedSubscript:@"postOfficeBox"];
  [v11 _cn_addObject:v12 orPlaceholder:&stru_288651EC0];

  v13 = [v10 objectForKeyedSubscript:@"extendedStreet"];
  [v11 _cn_addObject:v13 orPlaceholder:&stru_288651EC0];

  v14 = [v10 objectForKeyedSubscript:@"street"];
  [v11 _cn_addObject:v14 orPlaceholder:&stru_288651EC0];

  v15 = [v10 objectForKeyedSubscript:@"city"];
  [v11 _cn_addObject:v15 orPlaceholder:&stru_288651EC0];

  v16 = [v10 objectForKeyedSubscript:@"state"];
  [v11 _cn_addObject:v16 orPlaceholder:&stru_288651EC0];

  v17 = [v10 objectForKeyedSubscript:@"postalCode"];
  [v11 _cn_addObject:v17 orPlaceholder:&stru_288651EC0];

  v18 = [v10 objectForKeyedSubscript:@"country"];
  [v11 _cn_addObject:v18 orPlaceholder:&stru_288651EC0];

  v24.receiver = self;
  v24.super_class = CNVCardStreetAddressLineGenerator;
  v19 = [(CNVCardLineGenerator *)&v24 lineWithValue:v11 label:v7];

  v20 = [v10 objectForKeyedSubscript:@"ISOCountryCode"];
  [(CNVCardStreetAddressLineGenerator *)self addGroupedLineWithName:@"X-ABADR" value:v20 toLine:v19];

  v21 = [v10 objectForKeyedSubscript:@"subLocality"];
  [(CNVCardStreetAddressLineGenerator *)self addGroupedLineWithName:@"X-APPLE-SUBLOCALITY" value:v21 toLine:v19];

  v22 = [v10 objectForKeyedSubscript:@"subAdministrativeArea"];
  [(CNVCardStreetAddressLineGenerator *)self addGroupedLineWithName:@"X-APPLE-SUBADMINISTRATIVEAREA" value:v22 toLine:v19];

  return v19;
}

- (void)addGroupedLineWithName:(id)a3 value:(id)a4 toLine:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v10 = [(CNVCardLineFactory *)self->super._lineFactory stringLineWithName:v11 value:v8];
    [v9 addGroupedLine:v10 withCounter:self->super._groupingCount];
  }
}

- (id)standardLabelsForLabel:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"_$!<Work>!$_"])
  {
    v10 = @"WORK";
    v4 = &v10;
LABEL_7:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:{1, v8, v9, v10, v11}];
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"_$!<Home>!$_"])
  {
    v9 = @"HOME";
    v4 = &v9;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"_$!<Other>!$_"])
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