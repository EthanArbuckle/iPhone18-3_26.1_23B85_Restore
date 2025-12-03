@interface _UIHostedTextServiceSession
+ (id)showServiceForText:(id)text selectedTextRange:(_NSRange)range type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
+ (id)showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
+ (id)showServiceForType:(int64_t)type withContext:(id)context;
- (void)dismissTextServiceAnimated:(BOOL)animated;
@end

@implementation _UIHostedTextServiceSession

+ (id)showServiceForType:(int64_t)type withContext:(id)context
{
  v4 = [[self alloc] initWithType:type];

  return v4;
}

+ (id)showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  v6 = [[self alloc] initWithType:type];

  return v6;
}

+ (id)showServiceForText:(id)text selectedTextRange:(_NSRange)range type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  v7 = [[self alloc] initWithType:type];

  return v7;
}

- (void)dismissTextServiceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(_UIHostedTextServiceSession *)self delegate];
  [delegate dismissHostedTextServiceSession:self animated:animatedCopy];
}

@end