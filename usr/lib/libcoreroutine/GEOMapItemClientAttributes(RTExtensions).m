@interface GEOMapItemClientAttributes(RTExtensions)
- (id)initWithLOIType:()RTExtensions event:;
@end

@implementation GEOMapItemClientAttributes(RTExtensions)

- (id)initWithLOIType:()RTExtensions event:
{
  v6 = a4;
  v11.receiver = a1;
  v11.super_class = &off_284639618;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D0EBB8]) initWithLOIType:a3 event:v6];
    [v7 setRoutineAttributes:v8];

    v9 = v7;
  }

  return v7;
}

@end