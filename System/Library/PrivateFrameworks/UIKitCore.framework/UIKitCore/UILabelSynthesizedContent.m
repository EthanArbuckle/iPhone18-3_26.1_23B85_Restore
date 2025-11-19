@interface UILabelSynthesizedContent
@end

@implementation UILabelSynthesizedContent

uint64_t __58___UILabelSynthesizedContent__synthesizedAttributedString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *off_1E70EC920;

    return [v8 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

uint64_t __58___UILabelSynthesizedContent__synthesizedAttributedString__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *off_1E70EC9B0;

    return [v8 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

void __84___UILabelSynthesizedContent__disablingHyphenationIfURLsDetectedInAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [a2 mutableCopy];
    [v7 setHyphenationFactor:0.0];
    [*(a1 + 32) addAttribute:*off_1E70EC988 value:v7 range:{a3, a4}];
  }
}

void __79___UILabelSynthesizedContent__isolateStringWritingDirectionInAttributedString___block_invoke(void *a1, void *a2)
{
  if (!a2)
  {
    a2 = a1[4];
  }

  v6 = a2;
  v3 = [v6 baseWritingDirection];
  if (v3)
  {
    v4 = 8296;
  }

  else
  {
    v4 = 8294;
  }

  if (v3 == 1)
  {
    v4 = 8295;
  }

  v5 = *(a1[5] + 8);
  if (v4 != *(v5 + 24))
  {
    *(v5 + 24) = v4;
    ++*(*(a1[6] + 8) + 24);
  }
}

void __79___UILabelSynthesizedContent__isolateStringWritingDirectionInAttributedString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    v7 = [*(*(a1 + 32) + 8) paragraphStyle];
  }

  v13 = v7;
  v8 = [v7 baseWritingDirection];
  if (v8)
  {
    v9 = 8296;
  }

  else
  {
    v9 = 8294;
  }

  if (v8 == 1)
  {
    v9 = 8295;
  }

  v10 = *(*(a1 + 48) + 8);
  if (v9 != *(v10 + 24))
  {
    *(v10 + 24) = v9;
    v11 = *(a1 + 64) + 16 * *(*(*(a1 + 56) + 8) + 24);
    *v11 = v9;
    *(v11 + 2) = 0;
    *(v11 + 6) = 0;
    *(v11 + 8) = a3;
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v12 = [v13 mutableCopy];
  [v12 setBaseWritingDirection:*(a1 + 72)];
  [*(a1 + 40) addAttribute:*off_1E70EC988 value:v12 range:{a3, a4}];
}

@end