@interface NSString(NSExtendedStringDrawing)
- (double)boundingRectWithSize:()NSExtendedStringDrawing options:attributes:context:;
- (uint64_t)hasColorGlyphsInRange:()NSExtendedStringDrawing attributes:;
- (void)drawWithRect:()NSExtendedStringDrawing options:attributes:context:;
@end

@implementation NSString(NSExtendedStringDrawing)

- (void)drawWithRect:()NSExtendedStringDrawing options:attributes:context:
{
  v17 = MEMORY[0x193AD39D0](0.15);
  MEMORY[0x193AD39E0](0.0);
  if (!a8)
  {
    a8 = +[NSAttributeDictionary emptyAttributeDictionary];
  }

  _NSStringDrawingCore(self, a8, a7, 0, a2, a3, a4, a5, 0.0, v18, a9);
  MEMORY[0x193AD39D0](v17);

  JUMPOUT(0x193AD39E0);
}

- (double)boundingRectWithSize:()NSExtendedStringDrawing options:attributes:context:
{
  v13 = MEMORY[0x193AD39D0](0.15);
  v14 = MEMORY[0x193AD39E0](0.0);
  v18 = 0;
  if (!a6)
  {
    a6 = +[NSAttributeDictionary emptyAttributeDictionary];
  }

  v15 = __NSStringDrawingEngine(self, a6, a5, 0, a7, 0, &v18, 0.0, 0.0, a2, a3, 0.0);
  v16 = MEMORY[0x193AD39D0](v13);
  MEMORY[0x193AD39E0](v16, v14);
  return v15;
}

- (uint64_t)hasColorGlyphsInRange:()NSExtendedStringDrawing attributes:
{
  v8 = [objc_allocWithZone(_NSCachedAttributedString) initWithString:self attributes:a5];
  copyCachedInstance = [v8 copyCachedInstance];
  if (copyCachedInstance)
  {
    v10 = copyCachedInstance;

    v8 = v10;
  }

  else
  {
    [v8 fixAttributesInRange:{a3, a4}];
    if (a4 == [self length])
    {
      [v8 cache];
    }
  }

  v11 = [v8 hasColorGlyphsInRange:{a3, a4}];

  return v11;
}

@end