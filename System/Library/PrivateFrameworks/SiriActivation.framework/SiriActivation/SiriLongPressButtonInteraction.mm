@interface SiriLongPressButtonInteraction
+ (id)interactionWithBuilder:(id)a3;
- (SiriLongPressButtonInteraction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SiriLongPressButtonInteraction

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

+ (id)interactionWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SiriLongPressButtonInteraction);
  if (v3)
  {
    v3[2](v3, v4);
  }

  return v4;
}

- (SiriLongPressButtonInteraction)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SiriLongPressButtonInteraction;
  return [(SiriLongPressButtonInteraction *)&v4 init];
}

@end