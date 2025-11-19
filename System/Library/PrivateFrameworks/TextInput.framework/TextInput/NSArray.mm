@interface NSArray
@end

@implementation NSArray

void __131__NSArray_UIKBCandidateExtras___sortedArrayByFrequency_extensionCandidateIndex_maxEmojisPerCandidate_ignoreTransliterateCandidate___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v12 = v5;
  if (*(a1 + 96) == 1 && (v7 = [v5 isTransliterationCandidate], v6 = v12, v7))
  {
    v8 = (a1 + 32);
  }

  else
  {
    v9 = [v6 isExtensionCandidate];
    v10 = [v12 isStickerCandidate];
    v11 = a3 > 1;
    if (!v10)
    {
      v11 = v9;
    }

    if ((v11 || (([v12 isEmojiCandidate] & 1) != 0 || objc_msgSend(v12, "isStickerCandidate")) && (*(*(*(a1 + 56) + 8) + 24) >= *(a1 + 72) || *(*(*(a1 + 64) + 8) + 24) >= *(a1 + 80))) && objc_msgSend(*(a1 + 40), "count") < *(a1 + 88))
    {
      v8 = (a1 + 48);
    }

    else
    {
      v8 = (a1 + 40);
      if ([*(a1 + 40) count] == *(a1 + 88))
      {
        [*(a1 + 40) addObjectsFromArray:*(a1 + 48)];
        [*(a1 + 48) removeAllObjects];
      }

      if ([v12 isEmojiCandidate])
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        ++*(*(*(a1 + 64) + 8) + 24);
      }

      else
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    v6 = v12;
  }

  [*v8 addObject:v6];
}

BOOL __65__NSArray_UIKBCandidateExtras___arrayByFilteringEmojiCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEmojiCandidate] & 1) != 0 || objc_msgSend(v3, "isStickerCandidate"))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24) + 1;
    *(v4 + 24) = v5;
    v6 = v5 <= *(a1 + 40);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v6 = 1;
  }

  return v6;
}

@end