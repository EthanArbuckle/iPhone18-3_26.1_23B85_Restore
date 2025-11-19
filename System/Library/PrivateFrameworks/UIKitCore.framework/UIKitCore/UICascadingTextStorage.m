@interface UICascadingTextStorage
@end

@implementation UICascadingTextStorage

void __48___UICascadingTextStorage_setDefaultAttributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 320);
  *(v3 + 320) = v2;
}

uint64_t __46___UICascadingTextStorage_Accessors__setFont___block_invoke(uint64_t a1, void *a2)
{
  v4 = *off_1E70EC918;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 length];
  if (v5)
  {
    [v6 addAttribute:v4 value:v5 range:{0, v7}];
  }

  else
  {
    [v6 removeAttribute:v4 range:{0, v7}];
  }

  if (!*(a1 + 32))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"_UICascadingTextStorage.m" lineNumber:173 description:@"font setting has failed in a bad way"];
  }

  v8 = *(*(a1 + 40) + 320);

  return [v8 setObject:? forKey:?];
}

uint64_t __49___UICascadingTextStorage_Accessors___setShadow___block_invoke(uint64_t a1)
{
  v2 = *off_1E70EC9B0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = [v5 length];
  if (v4)
  {
    [v5 addAttribute:v2 value:v4 range:{0, v6}];
  }

  else
  {
    [v5 removeAttribute:v2 range:{0, v6}];
  }

  if (!*(a1 + 40))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"_UICascadingTextStorage.m" lineNumber:205 description:@"shadow argument was nil"];
  }

  v7 = *(*(a1 + 32) + 320);

  return [v7 setObject:? forKey:?];
}

uint64_t __51___UICascadingTextStorage_Accessors__setTextColor___block_invoke(uint64_t a1, void *a2)
{
  v4 = *off_1E70EC920;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 length];
  if (v5)
  {
    [v6 addAttribute:v4 value:v5 range:{0, v7}];
  }

  else
  {
    [v6 removeAttribute:v4 range:{0, v7}];
  }

  if (!*(a1 + 32))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"_UICascadingTextStorage.m" lineNumber:278 description:@"color argument was nil and [UIColor blackColor] failed!"];
  }

  v8 = *(*(a1 + 40) + 320);

  return [v8 setObject:? forKey:?];
}

uint64_t __55___UICascadingTextStorage_Accessors__setTextAlignment___block_invoke(uint64_t a1, void *a2)
{
  v4 = *off_1E70EC988;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 length];
  if (v5)
  {
    [v6 addAttribute:v4 value:v5 range:{0, v7}];
  }

  else
  {
    [v6 removeAttribute:v4 range:{0, v7}];
  }

  if (!*(a1 + 32))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"_UICascadingTextStorage.m" lineNumber:311 description:@"failed to generate newParagraphStyle"];
  }

  v8 = *(*(a1 + 40) + 320);

  return [v8 setObject:? forKey:?];
}

uint64_t __55___UICascadingTextStorage_Accessors__setLineBreakMode___block_invoke(uint64_t a1, void *a2)
{
  v4 = *off_1E70EC988;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 length];
  if (v5)
  {
    [v6 addAttribute:v4 value:v5 range:{0, v7}];
  }

  else
  {
    [v6 removeAttribute:v4 range:{0, v7}];
  }

  if (!*(a1 + 32))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"_UICascadingTextStorage.m" lineNumber:333 description:@"failed to generate newParagraphStyle"];
  }

  v8 = *(*(a1 + 40) + 320);

  return [v8 setObject:? forKey:?];
}

@end