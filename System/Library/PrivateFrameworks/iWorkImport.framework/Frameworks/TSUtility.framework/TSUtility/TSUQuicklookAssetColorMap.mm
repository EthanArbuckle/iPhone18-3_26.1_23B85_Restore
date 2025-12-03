@interface TSUQuicklookAssetColorMap
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)colorForResource:(id)resource;
+ (id)quicklookAssetMap;
- (void)dealloc;
@end

@implementation TSUQuicklookAssetColorMap

+ (id)quicklookAssetMap
{
  result = qword_280A63D38;
  if (!qword_280A63D38)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___TSUQuicklookAssetColorMap;
    result = [objc_msgSendSuper2(&v4 allocWithZone_];
    qword_280A63D38 = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  quicklookAssetMap = [self quicklookAssetMap];

  return quicklookAssetMap;
}

- (void)dealloc
{
  self->mAssetMap = 0;

  self->mAppAssetPath = 0;
  v3.receiver = self;
  v3.super_class = TSUQuicklookAssetColorMap;
  [(TSUQuicklookAssetColorMap *)&v3 dealloc];
}

+ (id)colorForResource:(id)resource
{
  result = [objc_msgSend(objc_msgSend(self "quicklookAssetMap")];
  if (!result)
  {

    return MEMORY[0x2821F9670](TSUColor, sel_grayColor);
  }

  return result;
}

@end