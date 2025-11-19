@interface NSAttributedString
@end

@implementation NSAttributedString

uint64_t __57__NSAttributedString_PhotosUICore__px_containsAttribute___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void __80__NSAttributedString_PhotosUICore__px_attributedStringByApplyingCapitalization___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 px_stringByApplyingCapitalization:*(a1 + 40)];
  [v6 replaceCharactersInRange:a3 withString:{a4, v7}];
}

void __84__NSAttributedString_PhotosUICore__px_stringWithFormat_defaultAttributes_arguments___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) appendAttributedString:v4];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:*(a1 + 40)];
    [*(a1 + 32) appendAttributedString:v3];
  }
}

void __159__NSAttributedString_PXLocalization__px_localizedAttributedStringForLikesFromUser_otherPeopleFullNames_isVideo_defaultTextAttributes_emphasizedTextAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    [*(a1 + 32) appendAttributedString:*(a1 + 40)];
  }

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:*(a1 + 48)];
  [v5 appendAttributedString:v6];
}

void __159__NSAttributedString_PXLocalization__px_localizedAttributedStringForLikesFromUser_otherPeopleFullNames_isVideo_defaultTextAttributes_emphasizedTextAttributes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    [*(a1 + 32) appendAttributedString:*(a1 + 40)];
  }

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:*(a1 + 48)];
  [v5 appendAttributedString:v6];
}

@end