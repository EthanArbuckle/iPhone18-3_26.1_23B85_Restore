@interface TSULocalizationUtility
+ (id)displayStringForIndexSet:(id)set;
+ (id)displayStringForStrings:(id)strings;
+ (id)displayStringForStrings:(id)strings itemSeparator:(id)separator lastItemSeparator:(id)itemSeparator;
@end

@implementation TSULocalizationUtility

+ (id)displayStringForIndexSet:(id)set
{
  string = [MEMORY[0x277CCAB68] string];
  if (qword_280A63D50 != -1)
  {
    sub_27711430C();
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770BAD38;
  v6[3] = &unk_27A702880;
  v6[4] = string;
  [set enumerateRangesUsingBlock:v6];
  return string;
}

+ (id)displayStringForStrings:(id)strings
{
  if (qword_280A63D60 != -1)
  {
    sub_277114320();
  }

  return MEMORY[0x2821F9670](self, sel_displayStringForStrings_itemSeparator_);
}

+ (id)displayStringForStrings:(id)strings itemSeparator:(id)separator lastItemSeparator:(id)itemSeparator
{
  string = [MEMORY[0x277CCAB68] string];
  v9 = [strings count];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770BAF8C;
  v11[3] = &unk_27A7028A8;
  v11[4] = string;
  v11[5] = separator;
  v11[6] = itemSeparator;
  v11[7] = v9;
  [strings enumerateObjectsUsingBlock:v11];
  return string;
}

@end