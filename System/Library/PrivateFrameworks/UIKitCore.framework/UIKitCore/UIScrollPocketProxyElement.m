@interface UIScrollPocketProxyElement
@end

@implementation UIScrollPocketProxyElement

id __57___UIScrollPocketProxyElement_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _NSStringFromUIRectEdge(*(*(a1 + 40) + 8));
  [v2 appendString:v3 withName:@"edge"];

  if (*(*(a1 + 40) + 72) == 1)
  {
    v4 = @"glass";
  }

  else
  {
    v4 = @"floating";
  }

  [*(a1 + 32) appendString:v4 withName:@"style"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 48) withName:@"requiresPocket"];
  v6 = [*(a1 + 40) hasValidFrame];
  v7 = *(a1 + 32);
  if (v6)
  {
    return [v7 appendRect:@"frame" withName:{*(*(a1 + 40) + 16), *(*(a1 + 40) + 24), *(*(a1 + 40) + 32), *(*(a1 + 40) + 40)}];
  }

  else
  {
    return [v7 appendBool:0 withName:@"hasValidFrame"];
  }
}

void __57___UIScrollPocketProxyElement_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E690] succinctStyle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57___UIScrollPocketProxyElement_appendDescriptionToStream___block_invoke_3;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 overlayStyle:v3 block:v6];
}

@end