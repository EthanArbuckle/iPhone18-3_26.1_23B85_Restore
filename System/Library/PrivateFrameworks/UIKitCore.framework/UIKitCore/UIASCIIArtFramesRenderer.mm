@interface UIASCIIArtFramesRenderer
@end

@implementation UIASCIIArtFramesRenderer

void __46___UIASCIIArtFramesRenderer_visualDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  [*(a1 + 32) appendString:v3];
}

void __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke(uint64_t a1, void *a2)
{
  [a2 CGRectValue];
  v7.origin.x = v3;
  v7.origin.y = v4;
  v7.size.width = v5;
  v7.size.height = v6;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v7);
}

void __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a4];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a2, a3}];
  [v7 addObject:v6];
}

id __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    v3 = [&stru_1EFB14550 stringByPaddingToLength:a2 withString:@"+" startingAtIndex:0];
  }

  else
  {
    v2 = [&stru_1EFB14550 stringByPaddingToLength:a2 - 2 withString:@"-" startingAtIndex:0];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+%@+", v2];
  }

  return v3;
}

void __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_24(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_2_25;
  v5[3] = &unk_1E70FA780;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRangesUsingBlock:v5];
}

void __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_2_25(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) stringByReplacingCharactersInRange:a2 withString:{1, @"|"}];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v12 = (*(*(a1 + 32) + 16))();
    v9 = [*(*(*(a1 + 40) + 8) + 40) stringByReplacingCharactersInRange:a2 withString:{a3, v12}];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = v12;
  }
}

uint64_t __46___UIASCIIArtFramesRenderer__normalizeFrames___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 CGRectValue];
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 32) < v4)
  {
    v4 = *(v6 + 32);
  }

  *(v6 + 32) = v4;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  if (v8 >= v5)
  {
    v8 = v5;
  }

  *(v7 + 40) = v8;
  return result;
}

void __46___UIASCIIArtFramesRenderer__normalizeFrames___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 CGRectValue];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = v12.origin.x - *(a1 + 40);
  v8 = v12.origin.y - *(a1 + 48);
  v9 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{v7, v8, v9, CGRectGetHeight(v13)}];
  [*(a1 + 32) addObject:v10];
}

@end