@interface TSDLinePreset
+ (id)lineWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5;
- (BOOL)isEqual:(id)a3;
- (TSDLinePreset)initWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5;
- (void)dealloc;
@end

@implementation TSDLinePreset

- (TSDLinePreset)initWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5
{
  v10.receiver = self;
  v10.super_class = TSDLinePreset;
  v8 = [(TSDLinePreset *)&v10 init];
  if (v8)
  {
    v8->mStroke = a3;
    v8->mHeadLineEnd = a4;
    v8->mTailLineEnd = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDLinePreset;
  [(TSDLinePreset *)&v3 dealloc];
}

+ (id)lineWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5
{
  v5 = [[a1 alloc] initWithStroke:a3 headLineEnd:a4 tailLineEnd:a5];

  return v5;
}

- (BOOL)isEqual:(id)a3
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

  v6 = [(TSDLinePreset *)self tailLineEnd];
  v7 = [v5 tailLineEnd];

  return [(TSDLineEnd *)v6 isEqual:v7];
}

@end