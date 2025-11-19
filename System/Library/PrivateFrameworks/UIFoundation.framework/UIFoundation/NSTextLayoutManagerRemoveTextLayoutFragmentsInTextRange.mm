@interface NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange
@end

@implementation NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange

id ____NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange_block_invoke_2(void *a1, void *a2, void *a3)
{
  [a2 _notifyTextLayoutManagerAboutTextAttachmentInvalidation];
  v6 = a1[6];
  if (v6 && !(*(v6 + 16))(v6, a2))
  {
    result = [a2 _updateRangeInElement];
    v9 = *(*(a1[8] + 8) + 40);
    if (v9)
    {
      if ([v9 compare:{objc_msgSend(a3, "location")}] == -1)
      {
        v10 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", *(*(a1[8] + 8) + 40), [a3 location]);
        v11 = *(*(a1[9] + 8) + 40);
        if (!v11)
        {
          *(*(a1[9] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
          v11 = *(*(a1[9] + 8) + 40);
        }

        [v11 addObject:v10];
      }

      if (a1[5] && [objc_msgSend(a3 "endLocation")] == -1)
      {
        result = [a3 endLocation];
      }

      else
      {
        result = 0;
      }

      *(*(a1[8] + 8) + 40) = result;
    }
  }

  else
  {
    v7 = *(*(a1[7] + 8) + 40);
    if (v7 != [a2 textElement])
    {
      *(*(a1[7] + 8) + 40) = [a2 textElement];
      [*(a1[4] + 96) removeObjectForKey:*(*(a1[7] + 8) + 40)];
    }

    if (!*(*(a1[8] + 8) + 40))
    {
      *(*(a1[8] + 8) + 40) = [a3 location];
    }

    return [a2 setTextElement:0];
  }

  return result;
}

@end