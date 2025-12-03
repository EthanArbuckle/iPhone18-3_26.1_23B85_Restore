@interface CNVCardLineGenerator
+ (id)generatorWithName:(id)name groupingCount:(int64_t *)count;
- (CNVCardLineGenerator)initWithName:(id)name groupingCount:(int64_t *)count;
- (id)lineWithValue:(id)value label:(id)label;
- (id)makeLineWithName:(id)name value:(id)value;
- (id)standardLabelsForLabel:(id)label;
- (void)addCustomLabel:(id)label toLine:(id)line;
@end

@implementation CNVCardLineGenerator

+ (id)generatorWithName:(id)name groupingCount:(int64_t *)count
{
  nameCopy = name;
  v7 = [[self alloc] initWithName:nameCopy groupingCount:count];

  return v7;
}

- (CNVCardLineGenerator)initWithName:(id)name groupingCount:(int64_t *)count
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CNVCardLineGenerator;
  v7 = [(CNVCardLineGenerator *)&v14 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    lineName = v7->_lineName;
    v7->_lineName = v8;

    v7->_groupingCount = count;
    v10 = +[CNVCardLineFactory version30LineFactory];
    lineFactory = v7->_lineFactory;
    v7->_lineFactory = v10;

    v12 = v7;
  }

  return v7;
}

- (id)lineWithValue:(id)value label:(id)label
{
  v20 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (value)
  {
    value = [(CNVCardLineGenerator *)self makeLineWithName:self->_lineName value:value];
    v7 = [(CNVCardLineGenerator *)self standardLabelsForLabel:labelCopy];
    if ([v7 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(CNVCardLineGenerator *)self addStandardLabel:*(*(&v15 + 1) + 8 * i) toLine:value, v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    else if (labelCopy)
    {
      [(CNVCardLineGenerator *)self addCustomLabel:labelCopy toLine:value];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)makeLineWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:nameCopy value:valueCopy];
  }

  return v8;
}

- (id)standardLabelsForLabel:(id)label
{
  v9[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if ([labelCopy isEqualToString:@"_$!<Work>!$_"])
  {
    v9[0] = @"WORK";
    v4 = v9;
LABEL_5:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
    goto LABEL_7;
  }

  if ([labelCopy isEqualToString:@"_$!<Home>!$_"])
  {
    v8 = @"HOME";
    v4 = &v8;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addCustomLabel:(id)label toLine:(id)line
{
  labelCopy = label;
  lineCopy = line;
  if (lineCopy && ([labelCopy isEqualToString:&stru_288651EC0] & 1) == 0)
  {
    v7 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:@"X-ABLabel" value:labelCopy];
    [lineCopy addGroupedLine:v7 withCounter:self->_groupingCount];
  }
}

@end