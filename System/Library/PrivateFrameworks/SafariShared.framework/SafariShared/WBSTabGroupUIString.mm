@interface WBSTabGroupUIString
+ (id)accessiblityLabelForTabGroupWithTitle:(id)title andTheseTabs:(unint64_t)tabs;
+ (id)menuTitleCreateGroupWithTheseTabs:(unint64_t)tabs;
+ (id)uniqueTabGroupTitleWithExisting:(id)existing;
@end

@implementation WBSTabGroupUIString

+ (id)uniqueTabGroupTitleWithExisting:(id)existing
{
  existingCopy = existing;
  v4 = _WBSLocalizedString();
  if ([existingCopy containsObject:v4] && objc_msgSend(existingCopy, "count"))
  {
    v5 = 1;
    while (1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = _WBSLocalizedString();
      v8 = [v6 localizedStringWithFormat:v7, v5];

      if (![existingCopy containsObject:v8])
      {
        break;
      }

      if (++v5 > [existingCopy count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v8 = v4;
  }

  return v8;
}

+ (id)menuTitleCreateGroupWithTheseTabs:(unint64_t)tabs
{
  if (tabs == 1)
  {
    tabs = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _WBSLocalizedString();
    tabs = [v5 localizedStringWithFormat:v6, tabs];
  }

  return tabs;
}

+ (id)accessiblityLabelForTabGroupWithTitle:(id)title andTheseTabs:(unint64_t)tabs
{
  v5 = MEMORY[0x1E696AEC0];
  titleCopy = title;
  v7 = _WBSLocalizedString();
  tabs = [v5 localizedStringWithFormat:v7, titleCopy, tabs];

  return tabs;
}

@end