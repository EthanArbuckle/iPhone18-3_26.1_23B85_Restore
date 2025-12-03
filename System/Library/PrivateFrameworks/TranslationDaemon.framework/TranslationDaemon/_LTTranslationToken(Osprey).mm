@interface _LTTranslationToken(Osprey)
- (id)initWithOspreyToken:()Osprey;
@end

@implementation _LTTranslationToken(Osprey)

- (id)initWithOspreyToken:()Osprey
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = &off_284892728;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  if (v5)
  {
    token = [v4 token];
    [v5 setText:token];

    [v4 confidence];
    [v5 setConfidence:v7];
    v8 = v5;
  }

  return v5;
}

@end