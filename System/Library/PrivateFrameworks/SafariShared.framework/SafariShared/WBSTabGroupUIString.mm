@interface WBSTabGroupUIString
+ (id)accessiblityLabelForTabGroupWithTitle:(id)a3 andTheseTabs:(unint64_t)a4;
+ (id)menuTitleCreateGroupWithTheseTabs:(unint64_t)a3;
+ (id)uniqueTabGroupTitleWithExisting:(id)a3;
@end

@implementation WBSTabGroupUIString

+ (id)uniqueTabGroupTitleWithExisting:(id)a3
{
  v3 = a3;
  v4 = _WBSLocalizedString();
  if ([v3 containsObject:v4] && objc_msgSend(v3, "count"))
  {
    v5 = 1;
    while (1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = _WBSLocalizedString();
      v8 = [v6 localizedStringWithFormat:v7, v5];

      if (![v3 containsObject:v8])
      {
        break;
      }

      if (++v5 > [v3 count])
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

+ (id)menuTitleCreateGroupWithTheseTabs:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _WBSLocalizedString();
    v3 = [v5 localizedStringWithFormat:v6, a3];
  }

  return v3;
}

+ (id)accessiblityLabelForTabGroupWithTitle:(id)a3 andTheseTabs:(unint64_t)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = _WBSLocalizedString();
  v8 = [v5 localizedStringWithFormat:v7, v6, a4];

  return v8;
}

@end