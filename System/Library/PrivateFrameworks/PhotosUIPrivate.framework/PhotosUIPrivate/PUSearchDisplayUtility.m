@interface PUSearchDisplayUtility
+ (BOOL)hasLimitedScreenSize;
+ (BOOL)indexPathIsLastRowInSection:(id)a3 tableView:(id)a4;
+ (id)applyCornerMaskToCell:(id)a3 roundedCornerType:(int64_t)a4;
+ (id)genericCellFromCell:(id)a3 roundedCornerType:(int64_t)a4;
+ (id)genericSuggestionsCellFont;
+ (id)genericSuggestionsTitleCellFont;
+ (unint64_t)cornerMaskForCell:(id)a3 roundedCornerType:(int64_t)a4;
@end

@implementation PUSearchDisplayUtility

+ (BOOL)hasLimitedScreenSize
{
  v2 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = *MEMORY[0x1E69C48C0];
  if (v4 == *MEMORY[0x1E69C48C8] && v6 == v7)
  {
    return 1;
  }

  if (v4 == v7)
  {
    return v6 == *MEMORY[0x1E69C48C8];
  }

  return 0;
}

+ (BOOL)indexPathIsLastRowInSection:(id)a3 tableView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 numberOfRowsInSection:{objc_msgSend(v6, "section")}];

  v8 = [v6 row];
  return v8 == v7 - 1;
}

+ (id)genericSuggestionsTitleCellFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v4 = [v3 boldSystemFontOfSize:?];

  return v4;
}

+ (id)genericSuggestionsCellFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v4 = [v3 systemFontOfSize:?];

  return v4;
}

+ (id)genericCellFromCell:(id)a3 roundedCornerType:(int64_t)a4
{
  v4 = [PUSearchDisplayUtility applyCornerMaskToCell:a3 roundedCornerType:a4];
  [v4 setSeparatorInset:{0.0, 20.0, 0.0, 0.0}];
  [v4 setSeparatorStyle:1];

  return v4;
}

+ (id)applyCornerMaskToCell:(id)a3 roundedCornerType:(int64_t)a4
{
  v5 = a3;
  v6 = [PUSearchDisplayUtility cornerMaskForCell:v5 roundedCornerType:a4];
  if (v6)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [v5 layer];
  [v8 setCornerRadius:v7];

  v9 = [v5 layer];
  [v9 setMaskedCorners:v6];

  v10 = [v5 layer];
  [v10 setMasksToBounds:1];

  return v5;
}

+ (unint64_t)cornerMaskForCell:(id)a3 roundedCornerType:(int64_t)a4
{
  if ((a4 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D6F0[a4 - 1];
  }
}

@end