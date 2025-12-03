@interface PUSearchDisplayUtility
+ (BOOL)hasLimitedScreenSize;
+ (BOOL)indexPathIsLastRowInSection:(id)section tableView:(id)view;
+ (id)applyCornerMaskToCell:(id)cell roundedCornerType:(int64_t)type;
+ (id)genericCellFromCell:(id)cell roundedCornerType:(int64_t)type;
+ (id)genericSuggestionsCellFont;
+ (id)genericSuggestionsTitleCellFont;
+ (unint64_t)cornerMaskForCell:(id)cell roundedCornerType:(int64_t)type;
@end

@implementation PUSearchDisplayUtility

+ (BOOL)hasLimitedScreenSize
{
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
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

+ (BOOL)indexPathIsLastRowInSection:(id)section tableView:(id)view
{
  viewCopy = view;
  sectionCopy = section;
  v7 = [viewCopy numberOfRowsInSection:{objc_msgSend(sectionCopy, "section")}];

  v8 = [sectionCopy row];
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

+ (id)genericCellFromCell:(id)cell roundedCornerType:(int64_t)type
{
  v4 = [PUSearchDisplayUtility applyCornerMaskToCell:cell roundedCornerType:type];
  [v4 setSeparatorInset:{0.0, 20.0, 0.0, 0.0}];
  [v4 setSeparatorStyle:1];

  return v4;
}

+ (id)applyCornerMaskToCell:(id)cell roundedCornerType:(int64_t)type
{
  cellCopy = cell;
  v6 = [PUSearchDisplayUtility cornerMaskForCell:cellCopy roundedCornerType:type];
  if (v6)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = 0.0;
  }

  layer = [cellCopy layer];
  [layer setCornerRadius:v7];

  layer2 = [cellCopy layer];
  [layer2 setMaskedCorners:v6];

  layer3 = [cellCopy layer];
  [layer3 setMasksToBounds:1];

  return cellCopy;
}

+ (unint64_t)cornerMaskForCell:(id)cell roundedCornerType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D6F0[type - 1];
  }
}

@end