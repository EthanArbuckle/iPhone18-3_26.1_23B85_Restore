@interface NSCreateRenderingContextForString
@end

@implementation NSCreateRenderingContextForString

void ____NSCreateRenderingContextForString_block_invoke(uint64_t a1, void *a2)
{
  v8 = [objc_allocWithZone(_NSCachedAttributedString) initWithString:*(a1 + 32) attributes:*(a1 + 40)];
  v4 = [v8 copyCachedInstance];
  Length = CFStringGetLength(*(a1 + 32));
  if (v4)
  {

    v6 = v4;
  }

  else
  {
    [v8 fixAttributesInRange:{0, Length}];
    v6 = v8;
  }

  v9 = v6;
  [a2 setAttributedString:?];
  [a2 setDefaultTighteningFactor:*(a1 + 56)];
  [a2 setLimitsLayoutForSuspiciousContents:1];
  LOBYTE(v7) = *(a1 + 83);
  *(*(*(a1 + 48) + 8) + 40) = [a2 createRenderingContextForCharacterRange:0 typesetterBehavior:Length usesScreenFonts:*(a1 + 64) hasStrongRight:*(a1 + 80) syncDirection:*(a1 + 81) mirrorsTextAlignment:*(a1 + 82) maximumWidth:{*(a1 + 72), v7}];
  [a2 setDefaultTighteningFactor:0.0];
  if (!v4 && (*(a1 + 84) & 1) == 0)
  {
    [v9 cache];
  }
}

@end