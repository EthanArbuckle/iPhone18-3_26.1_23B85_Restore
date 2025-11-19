@interface TSULocalizationUtility
+ (id)displayStringForIndexSet:(id)a3;
+ (id)displayStringForStrings:(id)a3;
+ (id)displayStringForStrings:(id)a3 itemSeparator:(id)a4 lastItemSeparator:(id)a5;
@end

@implementation TSULocalizationUtility

+ (id)displayStringForIndexSet:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  if (qword_280A63D50 != -1)
  {
    sub_27711430C();
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770BAD38;
  v6[3] = &unk_27A702880;
  v6[4] = v4;
  [a3 enumerateRangesUsingBlock:v6];
  return v4;
}

+ (id)displayStringForStrings:(id)a3
{
  if (qword_280A63D60 != -1)
  {
    sub_277114320();
  }

  return MEMORY[0x2821F9670](a1, sel_displayStringForStrings_itemSeparator_);
}

+ (id)displayStringForStrings:(id)a3 itemSeparator:(id)a4 lastItemSeparator:(id)a5
{
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = [a3 count];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770BAF8C;
  v11[3] = &unk_27A7028A8;
  v11[4] = v8;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = v9;
  [a3 enumerateObjectsUsingBlock:v11];
  return v8;
}

@end