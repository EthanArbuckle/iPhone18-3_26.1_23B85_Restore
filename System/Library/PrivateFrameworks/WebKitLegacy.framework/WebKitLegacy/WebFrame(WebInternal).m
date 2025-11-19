@interface WebFrame(WebInternal)
+ (id)_createFrameWithPage:()WebInternal frameName:frameView:ownerElement:;
+ (uint64_t)_createFrameWithPage:()WebInternal frameName:frameView:ownerElement:;
+ (void)_createFrameWithPage:()WebInternal frameName:frameView:ownerElement:;
@end

@implementation WebFrame(WebInternal)

+ (void)_createFrameWithPage:()WebInternal frameName:frameView:ownerElement:
{
  v1 = result[1];
  *result = &unk_1F472BD08;
  result[1] = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

+ (uint64_t)_createFrameWithPage:()WebInternal frameName:frameView:ownerElement:
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472BD08;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;

    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

+ (id)_createFrameWithPage:()WebInternal frameName:frameView:ownerElement:
{
  v5 = *(a1 + 8);
  v6 = WTF::fastMalloc(0x28);
  result = WebCore::LocalFrameLoaderClient::LocalFrameLoaderClient(v6, a2);
  *(v6 + 2) = 0;
  *v6 = &unk_1F472B518;
  *(v6 + 3) = v5;
  if (v5)
  {
    result = v5;
  }

  *(v6 + 4) = 0;
  *a3 = v6;
  return result;
}

@end