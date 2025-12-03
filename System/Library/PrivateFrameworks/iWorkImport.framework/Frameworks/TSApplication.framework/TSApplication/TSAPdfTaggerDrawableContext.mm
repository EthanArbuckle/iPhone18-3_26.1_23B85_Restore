@interface TSAPdfTaggerDrawableContext
- (TSAPdfTaggerDrawableContext)initWithStateOfTagger:(id)tagger drawableRep:(id)rep;
@end

@implementation TSAPdfTaggerDrawableContext

- (TSAPdfTaggerDrawableContext)initWithStateOfTagger:(id)tagger drawableRep:(id)rep
{
  repCopy = rep;
  v11.receiver = self;
  v11.super_class = TSAPdfTaggerDrawableContext;
  v8 = [(TSAPdfTaggerContext *)&v11 initWithStateOfTagger:tagger];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_drawableRep, rep);
  }

  return v9;
}

@end