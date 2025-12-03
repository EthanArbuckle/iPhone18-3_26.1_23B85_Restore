@interface TSDLinePreset
+ (id)lineWithStroke:(id)stroke headLineEnd:(id)end tailLineEnd:(id)lineEnd;
- (BOOL)isEqual:(id)equal;
- (TSDLinePreset)initWithStroke:(id)stroke headLineEnd:(id)end tailLineEnd:(id)lineEnd;
- (void)dealloc;
@end

@implementation TSDLinePreset

- (TSDLinePreset)initWithStroke:(id)stroke headLineEnd:(id)end tailLineEnd:(id)lineEnd
{
  v10.receiver = self;
  v10.super_class = TSDLinePreset;
  v8 = [(TSDLinePreset *)&v10 init];
  if (v8)
  {
    v8->mStroke = stroke;
    v8->mHeadLineEnd = end;
    v8->mTailLineEnd = lineEnd;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDLinePreset;
  [(TSDLinePreset *)&v3 dealloc];
}

+ (id)lineWithStroke:(id)stroke headLineEnd:(id)end tailLineEnd:(id)lineEnd
{
  v5 = [[self alloc] initWithStroke:stroke headLineEnd:end tailLineEnd:lineEnd];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!-[TSDStroke isEqual:](-[TSDLinePreset stroke](self, "stroke"), "isEqual:", [v4 stroke]) || !-[TSDLineEnd isEqual:](-[TSDLinePreset headLineEnd](self, "headLineEnd"), "isEqual:", objc_msgSend(v5, "headLineEnd")))
  {
    return 0;
  }

  tailLineEnd = [(TSDLinePreset *)self tailLineEnd];
  tailLineEnd2 = [v5 tailLineEnd];

  return [(TSDLineEnd *)tailLineEnd isEqual:tailLineEnd2];
}

@end