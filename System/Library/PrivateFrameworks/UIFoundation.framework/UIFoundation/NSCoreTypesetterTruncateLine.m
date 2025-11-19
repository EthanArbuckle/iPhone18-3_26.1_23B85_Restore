@interface NSCoreTypesetterTruncateLine
@end

@implementation NSCoreTypesetterTruncateLine

const void *____NSCoreTypesetterTruncateLine_block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  IsRightToLeft = CTLineIsRightToLeft();
  v9 = [a4 objectForKeyedSubscript:@"NSParagraphStyle"];
  v10 = v9;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = (*(*(a1 + 48) + 8) + 32);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v11 = &v24;
    v26 = 0;
  }

  if ([v9 baseWritingDirection] == IsRightToLeft && objc_msgSend(v10, "lineBreakMode") == *(a1 + 64))
  {
    v12 = 0;
    v13 = a4;
  }

  else
  {
    v14 = [v10 mutableCopy];
    [v14 setLineBreakMode:*(a1 + 64)];
    [v14 setBaseWritingDirection:IsRightToLeft];
    v12 = [a4 mutableCopy];
    [v12 setObject:v14 forKeyedSubscript:@"NSParagraphStyle"];

    v13 = v12;
  }

  v15 = *MEMORY[0x1E6965A50];
  Value = CFDictionaryGetValue(a4, *MEMORY[0x1E6965A50]);
  v17 = *MEMORY[0x1E6965628];
  v18 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965628]);
  if (Value | v18)
  {
    v19 = v18;
    if (!v12)
    {
      v12 = [v13 mutableCopy];
      v13 = v12;
    }

    if (Value)
    {
      [v12 removeObjectForKey:v15];
    }

    if (v19)
    {
      [v12 removeObjectForKey:v17];
    }
  }

  v20 = [*(a1 + 32) _truncationTokenRunRefWithContext:v11 token:objc_msgSend(*(a1 + 32) attributes:{"_truncationTokenForRange:attributes:originalLineRef:", a3, v13, a2), v13}];
  v21 = v20;
  v22 = *(*(a1 + 56) + 8);
  if (v20)
  {
    *(v22 + 32) = *a3;
    CFRetain(v20);
  }

  else
  {
    *(v22 + 32) = xmmword_18E856180;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    __NSCoreTypesetterTruncationTokenContextDeallocate(&v24);
  }

  return v21;
}

@end