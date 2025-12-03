@interface SiriLongPressButtonInteraction
+ (id)interactionWithBuilder:(id)builder;
- (SiriLongPressButtonInteraction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriLongPressButtonInteraction

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

+ (id)interactionWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(SiriLongPressButtonInteraction);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  return v4;
}

- (SiriLongPressButtonInteraction)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SiriLongPressButtonInteraction;
  return [(SiriLongPressButtonInteraction *)&v4 init];
}

@end