@interface NSArray(UIKBCandidateExtras)
- (id)_arrayByFilteringEmojiCandidates:()UIKBCandidateExtras;
- (id)_sortedArrayByFrequency:()UIKBCandidateExtras extensionCandidateIndex:maxEmojisPerCandidate:ignoreTransliterateCandidate:;
- (void)_arrayByFilteringCandidatesForNonExtendedView;
@end

@implementation NSArray(UIKBCandidateExtras)

- (id)_sortedArrayByFrequency:()UIKBCandidateExtras extensionCandidateIndex:maxEmojisPerCandidate:ignoreTransliterateCandidate:
{
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  v13 = [MEMORY[0x1E695DF70] array];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __131__NSArray_UIKBCandidateExtras___sortedArrayByFrequency_extensionCandidateIndex_maxEmojisPerCandidate_ignoreTransliterateCandidate___block_invoke;
  v23 = &unk_1E6F4C1C8;
  v32 = a6;
  v14 = v13;
  v24 = v14;
  v27 = v34;
  v28 = v33;
  v29 = a3;
  v30 = a5;
  v15 = v11;
  v25 = v15;
  v31 = a4;
  v16 = v12;
  v26 = v16;
  [a1 enumerateObjectsUsingBlock:&v20];
  if ([v15 count])
  {
    [v14 addObjectsFromArray:v15];
  }

  if ([v16 count])
  {
    [v14 addObjectsFromArray:v16];
  }

  v17 = v26;
  v18 = v14;

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);

  return v18;
}

- (id)_arrayByFilteringEmojiCandidates:()UIKBCandidateExtras
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NSArray_UIKBCandidateExtras___arrayByFilteringEmojiCandidates___block_invoke;
  v7[3] = &unk_1E6F4C1A0;
  v7[4] = v8;
  v7[5] = a3;
  v4 = [a1 indexesOfObjectsPassingTest:v7];
  v5 = [a1 objectsAtIndexes:v4];

  _Block_object_dispose(v8, 8);

  return v5;
}

- (void)_arrayByFilteringCandidatesForNonExtendedView
{
  v1 = a1;
  v2 = [a1 indexesOfObjectsPassingTest:&__block_literal_global_4099];
  v3 = [v1 objectsAtIndexes:v2];

  if ([v3 count])
  {
    v1 = v3;
  }

  v4 = v1;

  return v1;
}

@end