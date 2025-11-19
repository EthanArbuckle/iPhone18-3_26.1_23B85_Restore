@interface SKUIOffscreenRenderOperationPopRenderingContext
@end

@implementation SKUIOffscreenRenderOperationPopRenderingContext

unint64_t ___SKUIOffscreenRenderOperationPopRenderingContext_block_invoke(uint64_t a1)
{
  result = [sRendererStackArray count];
  if (result >= 2)
  {
    v3 = [sRendererStackArray objectAtIndex:0];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [sRendererStackArray objectAtIndex:1];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = sRendererStackArray;

    return [v9 removeObjectsInRange:{0, 2}];
  }

  return result;
}

@end