@interface SPUISDictionaryResultBuilder
- (NSString)definitionString;
- (SPUISDictionaryResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildTitle;
@end

@implementation SPUISDictionaryResultBuilder

- (SPUISDictionaryResultBuilder)initWithResult:(id)a3
{
  v4.receiver = self;
  v4.super_class = SPUISDictionaryResultBuilder;
  return [(SPUISResultBuilder *)&v4 initWithResult:a3];
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = [(SPUISDictionaryResultBuilder *)self word];
  if (v4)
  {
    v5 = [MEMORY[0x277D4C3A0] textWithString:v4];
    [v5 setIsEmphasized:1];
    [v3 addObject:v5];
  }

  v6 = [(SPUISDictionaryResultBuilder *)self dictionaryName];
  if (v6)
  {
    v7 = v6;
    v8 = +[SPUISUtilities isMacOS];

    if (v8)
    {
      v9 = [MEMORY[0x277D4C3A0] textWithString:@" — "];
      [v3 addObject:v9];

      v10 = MEMORY[0x277D4C3A0];
      v11 = [(SPUISDictionaryResultBuilder *)self dictionaryName];
      v12 = [v10 textWithString:v11];
      [v3 addObject:v12];
    }
  }

  v13 = objc_opt_new();
  [v13 setFormattedTextPieces:v3];

  return v13;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D4C598];
  v3 = [(SPUISDictionaryResultBuilder *)self definitionString];
  v4 = [v2 textWithString:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)buildCommand
{
  v3 = [(SPUISDictionaryResultBuilder *)self dictionaryURL];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x277D4C550];
    v6 = [(SPUISDictionaryResultBuilder *)self dictionaryURL];
    v7 = [v5 punchoutWithURL:v6];
    [v4 setPunchout:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISDictionaryResultBuilder;
    v4 = [(SPUISResultBuilder *)&v9 buildCommand];
  }

  return v4;
}

- (NSString)definitionString
{
  definitionString = self->_definitionString;
  if (definitionString)
  {
  }

  else
  {
    v26 = self;
    v6 = [(SPUISDictionaryResultBuilder *)self definitions];
    v7 = objc_opt_new();
    if ([v6 count])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (definitionString_onceToken != -1)
        {
          [SPUISDictionaryResultBuilder definitionString];
        }

        v10 = &stru_287C50EE8;
        if ([v6 count] >= 2)
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = definitionString_numberFormatter;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 + 1];
          v14 = [v12 stringFromNumber:v13];
          v10 = [v11 stringWithFormat:@"%@. ", v14];
        }

        v15 = &stru_287C50EE8;
        if (v8)
        {
          v16 = [v6 count];
          v15 = @"…";
          if (v16 <= 2)
          {
            v15 = &stru_287C50EE8;
          }
        }

        v17 = MEMORY[0x277CCACA8];
        v18 = v15;
        v19 = [v6 objectAtIndexedSubscript:v9];
        v20 = [v17 stringWithFormat:@"%@%@%@", v10, v19, v18];

        [v7 addObject:v20];
        v21 = v9 + 1;
        v22 = [v6 count];
        v23 = 2;
        if (v22 < 2)
        {
          v23 = v22;
        }

        v8 = 1;
        v9 = 1;
      }

      while (v21 < v23);
    }

    v24 = [v7 componentsJoinedByString:@" "];
    v25 = v26->_definitionString;
    v26->_definitionString = v24;

    definitionString = v26->_definitionString;
  }

  return definitionString;
}

uint64_t __48__SPUISDictionaryResultBuilder_definitionString__block_invoke()
{
  v0 = objc_opt_new();
  v1 = definitionString_numberFormatter;
  definitionString_numberFormatter = v0;

  v2 = definitionString_numberFormatter;

  return [v2 setNumberStyle:1];
}

@end