@interface CNVCardLineGenerator
+ (id)generatorWithName:(id)a3 groupingCount:(int64_t *)a4;
- (CNVCardLineGenerator)initWithName:(id)a3 groupingCount:(int64_t *)a4;
- (id)lineWithValue:(id)a3 label:(id)a4;
- (id)makeLineWithName:(id)a3 value:(id)a4;
- (id)standardLabelsForLabel:(id)a3;
- (void)addCustomLabel:(id)a3 toLine:(id)a4;
@end

@implementation CNVCardLineGenerator

+ (id)generatorWithName:(id)a3 groupingCount:(int64_t *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithName:v6 groupingCount:a4];

  return v7;
}

- (CNVCardLineGenerator)initWithName:(id)a3 groupingCount:(int64_t *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CNVCardLineGenerator;
  v7 = [(CNVCardLineGenerator *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    lineName = v7->_lineName;
    v7->_lineName = v8;

    v7->_groupingCount = a4;
    v10 = +[CNVCardLineFactory version30LineFactory];
    lineFactory = v7->_lineFactory;
    v7->_lineFactory = v10;

    v12 = v7;
  }

  return v7;
}

- (id)lineWithValue:(id)a3 label:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3)
  {
    a3 = [(CNVCardLineGenerator *)self makeLineWithName:self->_lineName value:a3];
    v7 = [(CNVCardLineGenerator *)self standardLabelsForLabel:v6];
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

            [(CNVCardLineGenerator *)self addStandardLabel:*(*(&v15 + 1) + 8 * i) toLine:a3, v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    else if (v6)
    {
      [(CNVCardLineGenerator *)self addCustomLabel:v6 toLine:a3];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return a3;
}

- (id)makeLineWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:v6 value:v7];
  }

  return v8;
}

- (id)standardLabelsForLabel:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"_$!<Work>!$_"])
  {
    v9[0] = @"WORK";
    v4 = v9;
LABEL_5:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"_$!<Home>!$_"])
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

- (void)addCustomLabel:(id)a3 toLine:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6 && ([v8 isEqualToString:&stru_288651EC0] & 1) == 0)
  {
    v7 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:@"X-ABLabel" value:v8];
    [v6 addGroupedLine:v7 withCounter:self->_groupingCount];
  }
}

@end