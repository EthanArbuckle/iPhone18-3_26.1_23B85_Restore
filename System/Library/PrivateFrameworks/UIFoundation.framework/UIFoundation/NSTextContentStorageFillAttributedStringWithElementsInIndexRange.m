@interface NSTextContentStorageFillAttributedStringWithElementsInIndexRange
@end

@implementation NSTextContentStorageFillAttributedStringWithElementsInIndexRange

uint64_t ____NSTextContentStorageFillAttributedStringWithElementsInIndexRange_block_invoke(uint64_t result, id *a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = &a2[a4];
    do
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v7 = *v4;
        v8 = [*v4 attributedString];
        v9 = [v7 paragraphSeparatorRange];
        [*(v5 + 32) replaceCharactersInRange:*(*(*(v5 + 40) + 8) + 32) withAttributedString:{*(*(*(v5 + 40) + 8) + 40), v8}];
        *(*(*(v5 + 40) + 8) + 32) += [v8 length];
        *(*(*(v5 + 40) + 8) + 40) = 0;
        result = [v9 range];
        if (!v10 && *(*(*(v5 + 48) + 8) + 24) < *(v5 + 56))
        {
          result = [*(v5 + 32) replaceCharactersInRange:(*(*(*(v5 + 40) + 8) + 32))++ withString:{*(*(*(v5 + 40) + 8) + 40), @"\n"}];
        }
      }

      ++*(*(*(v5 + 48) + 8) + 24);
      ++v4;
    }

    while (v4 < v6);
  }

  return result;
}

@end