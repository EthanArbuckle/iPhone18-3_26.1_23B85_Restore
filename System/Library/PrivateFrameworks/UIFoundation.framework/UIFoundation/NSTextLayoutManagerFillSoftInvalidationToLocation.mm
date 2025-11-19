@interface NSTextLayoutManagerFillSoftInvalidationToLocation
@end

@implementation NSTextLayoutManagerFillSoftInvalidationToLocation

uint64_t ____NSTextLayoutManagerFillSoftInvalidationToLocation_block_invoke_2(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(*(result + 40) + 8) + 24) >= *(result + 64))
  {
    *a4 = 1;
  }

  else
  {
    v5 = result;
    result = [a2 state];
    if (result)
    {
      v6 = [a2 rangeInElement];
      [a2 layoutFragmentFrame];
      v8 = v7;
      v10 = v9;
      if ([*(*(*(v5 + 48) + 8) + 40) compare:{objc_msgSend(v6, "location")}] == -1)
      {
        v11 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", *(*(*(v5 + 48) + 8) + 40), [v6 location]);
        [*(v5 + 32) _estimatedVerticalSizeForTextRange:v11 adjustedTextRange:0];
        *(*(*(v5 + 40) + 8) + 24) = v12 + *(*(*(v5 + 40) + 8) + 24);
      }

      v13 = *(*(*(v5 + 40) + 8) + 24);
      [a2 setLayoutFragmentFrameOrigin:{v8, v13}];
      *(*(*(v5 + 40) + 8) + 24) = v10 + v13;
      result = [objc_msgSend(a2 "rangeInElement")];
      *(*(*(v5 + 48) + 8) + 40) = result;
      *(*(*(v5 + 56) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ____NSTextLayoutManagerFillSoftInvalidationToLocation_block_invoke(void *a1, void *a2, void *a3, char *a4)
{
  result = [objc_msgSend(a3 "location")];
  if (result != -1)
  {
    result = [a2 state];
    if (!result)
    {
      v10 = 0;
      goto LABEL_6;
    }

    [a2 layoutFragmentFrame];
    *(*(a1[5] + 8) + 24) = v8 + v9;
    result = [objc_msgSend(a2 "rangeInElement")];
    *(*(a1[6] + 8) + 40) = result;
  }

  v10 = 1;
LABEL_6:
  *a4 = v10;
  return result;
}

@end