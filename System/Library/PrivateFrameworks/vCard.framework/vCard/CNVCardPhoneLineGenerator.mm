@interface CNVCardPhoneLineGenerator
- (id)makeLineWithName:(id)a3 value:(id)a4;
- (id)standardLabelsForLabel:(id)a3;
@end

@implementation CNVCardPhoneLineGenerator

- (id)makeLineWithName:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
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

  v11 = [objc_opt_class() sanitizeNumber:v10];
  v14.receiver = self;
  v14.super_class = CNVCardPhoneLineGenerator;
  v12 = [(CNVCardLineGenerator *)&v14 makeLineWithName:v7 value:v11];

  return v12;
}

- (id)standardLabelsForLabel:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"_$!<Work>!$_"])
  {
    v20[0] = @"WORK";
    v20[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v20;
LABEL_9:
    v6 = 2;
LABEL_10:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"_$!<Home>!$_"])
  {
    v19[0] = @"HOME";
    v19[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v19;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"_$!<Other>!$_"])
  {
    v18[0] = @"OTHER";
    v18[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v18;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"_$!<Mobile>!$_"])
  {
    v17[0] = @"CELL";
    v17[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v17;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"iPhone"])
  {
    v16[0] = @"IPHONE";
    v16[1] = @"CELL";
    v16[2] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v16;
LABEL_18:
    v6 = 3;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"Apple Watch"])
  {
    v15[0] = @"APPLEWATCH";
    v15[1] = @"CELL";
    v15[2] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v15;
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"_$!<Main>!$_"])
  {
    v14 = @"MAIN";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v14;
LABEL_21:
    v6 = 1;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"_$!<WorkFAX>!$_"])
  {
    v13[0] = @"WORK";
    v13[1] = @"FAX";
    v4 = MEMORY[0x277CBEA60];
    v5 = v13;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"_$!<HomeFAX>!$_"])
  {
    v12[0] = @"HOME";
    v12[1] = @"FAX";
    v4 = MEMORY[0x277CBEA60];
    v5 = v12;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"_$!<OtherFAX>!$_"])
  {
    v11[0] = @"OTHER";
    v11[1] = @"FAX";
    v4 = MEMORY[0x277CBEA60];
    v5 = v11;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"_$!<Pager>!$_"])
  {
    v10 = @"PAGER";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v10;
    goto LABEL_21;
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end