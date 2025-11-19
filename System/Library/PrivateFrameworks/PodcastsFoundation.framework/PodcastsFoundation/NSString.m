@interface NSString
@end

@implementation NSString

uint64_t __32__NSString_IMAdditions__hasHTML__block_invoke()
{
  v0 = objc_alloc_init(MTSearchTrie);
  v1 = hasHTML_trie;
  hasHTML_trie = v0;

  for (i = 0; i != 253; ++i)
  {
    result = [hasHTML_trie addMatchCandidate:kIMHTMLEntities[i]];
  }

  return result;
}

void __52__NSString_IMAdditions__rangeOfSignificantSubstring__block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  if ((*(*(a1[6] + 8) + 24) & 1) != 0 || (v11 = a1[4], v13 = v10, [v10 lowercaseString], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v11, "containsObject:", v12), v12, v10 = v13, (v11 & 1) == 0))
  {
    *a7 = 1;
  }

  *(*(a1[6] + 8) + 24) = 1;
}

void *__87__NSString_IMAdditions__tokenCountWithEnumerationOptions_maxTokenCount_outLimitLength___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(result[4] + 8) + 24) >= result[5])
  {
    *a7 = 1;
    v7 = result[6];
    if (v7)
    {
      *v7 = a5 + a6;
    }
  }

  return result;
}

uint64_t __77__NSString_IMAdditions__stringByTruncatingToLength_options_truncationString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a3 + a4;
  v10 = *(a1 + 48);
  result = [*(a1 + 32) length];
  if (v9 <= v10 - result)
  {
    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

void __54__NSString_MTAdditions__cleanedTitleStringWithPrefix___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v24 = a2;
  if ([*(a1 + 32) count] <= *(*(*(a1 + 48) + 8) + 24))
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) objectAtIndex:?];
    if (v11 && ![v24 caseInsensitiveCompare:v11])
    {
      v12 = *(*(a1 + 64) + 8);
      *(v12 + 32) = a3;
      *(v12 + 40) = a4;
      goto LABEL_7;
    }
  }

  v13 = [*(a1 + 40) substringFromIndex:*(*(*(a1 + 64) + 8) + 40) + *(*(*(a1 + 64) + 8) + 32)];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [*(*(*(a1 + 56) + 8) + 40) stringByAppendingString:@"​"];
  v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@" \n\t, :：–—-"}]);;
  v18 = [v16 stringByTrimmingCharactersInSet:v17];
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [*(*(*(a1 + 56) + 8) + 40) substringToIndex:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "length") - 1}];
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  *a7 = 1;
LABEL_7:
  ++*(*(*(a1 + 48) + 8) + 24);
}

uint64_t __82__NSString_MTAdditions__stringWithDuration_unitsStyle_includeTimeRemainingPhrase___block_invoke()
{
  stringWithDuration_unitsStyle_includeTimeRemainingPhrase__formatters = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

void __37__NSString_MTAdditions__mt_isEnglish__block_invoke()
{
  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
  v0 = [v1 firstObject];
  mt_isEnglish_isEnglish = [v0 hasPrefix:@"en"];
}

void __38__NSString_MTAdditions__mt_isJapanese__block_invoke()
{
  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
  v0 = [v1 firstObject];
  mt_isJapanese_isJapanese = [v0 hasPrefix:@"ja"];
}

@end