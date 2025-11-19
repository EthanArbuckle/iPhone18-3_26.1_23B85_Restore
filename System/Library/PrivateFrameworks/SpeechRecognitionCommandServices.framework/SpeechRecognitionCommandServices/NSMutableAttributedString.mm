@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __162__NSMutableAttributedString_MutableAttributedStringSRCSTextEditing__adjustCapsAndSpacingUsingLeadingText_localeIdentifier_vocabularyEntries_spellingGuessesBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  v11 = *(a1 + 48);
  if (v11 == a5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  else if (v11 > a5)
  {
    v16 = v10;
    v12 = [*(a1 + 32) substringWithRange:{a5, v11 - a5}];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];
    v15 = [v14 length];

    if (!v15)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a7 = 1;
    }

    v10 = v16;
  }
}

void __155__NSMutableAttributedString_MutableAttributedStringSRCSTextEditing__adjustCapsAndSpacingUsingLeadingText_preITNTokens_customVocabularies_localeIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  v11 = *(a1 + 48);
  if (v11 == a5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  else if (v11 > a5)
  {
    v16 = v10;
    v12 = [*(a1 + 32) substringWithRange:{a5, v11 - a5}];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];
    v15 = [v14 length];

    if (!v15)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a7 = 1;
    }

    v10 = v16;
  }
}

@end