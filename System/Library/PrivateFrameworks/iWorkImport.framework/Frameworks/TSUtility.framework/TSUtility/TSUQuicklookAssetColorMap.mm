@interface TSUQuicklookAssetColorMap
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)colorForResource:(id)a3;
+ (id)quicklookAssetMap;
- (void)dealloc;
@end

@implementation TSUQuicklookAssetColorMap

+ (id)quicklookAssetMap
{
  result = qword_280A63D38;
  if (!qword_280A63D38)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___TSUQuicklookAssetColorMap;
    result = [objc_msgSendSuper2(&v4 allocWithZone_];
    qword_280A63D38 = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 quicklookAssetMap];

  return v3;
}

- (void)dealloc
{
  self->mAssetMap = 0;

  self->mAppAssetPath = 0;
  v3.receiver = self;
  v3.super_class = TSUQuicklookAssetColorMap;
  [(TSUQuicklookAssetColorMap *)&v3 dealloc];
}

+ (id)colorForResource:(id)a3
{
  result = [objc_msgSend(objc_msgSend(a1 "quicklookAssetMap")];
  if (!result)
  {

    return MEMORY[0x2821F9670](TSUColor, sel_grayColor);
  }

  return result;
}

@end