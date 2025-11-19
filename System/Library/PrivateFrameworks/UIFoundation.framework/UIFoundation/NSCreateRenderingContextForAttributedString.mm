@interface NSCreateRenderingContextForAttributedString
@end

@implementation NSCreateRenderingContextForAttributedString

void ____NSCreateRenderingContextForAttributedString_block_invoke(uint64_t a1, void *a2)
{
  v8 = [objc_allocWithZone(_NSCachedAttributedString) initWithAttributedString:*(a1 + 32)];
  v4 = [v8 copyCachedInstance];
  v5 = [*(a1 + 32) length];
  if (v4)
  {

    v6 = v4;
  }

  else
  {
    [v8 fixAttributesInRange:{0, v5}];
    v6 = v8;
  }

  v9 = v6;
  [a2 setAttributedString:?];
  [a2 setDefaultTighteningFactor:*(a1 + 48)];
  [a2 setLimitsLayoutForSuspiciousContents:1];
  LOBYTE(v7) = *(a1 + 75);
  *(*(*(a1 + 40) + 8) + 40) = [a2 createRenderingContextForCharacterRange:0 typesetterBehavior:v5 usesScreenFonts:*(a1 + 56) hasStrongRight:*(a1 + 72) syncDirection:*(a1 + 73) mirrorsTextAlignment:*(a1 + 74) maximumWidth:{*(a1 + 64), v7}];
  [a2 setDefaultTighteningFactor:0.0];
  if (!v4 && (*(a1 + 76) & 1) == 0)
  {
    [v9 cache];
  }
}

@end