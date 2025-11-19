@interface _UIHostedTextServiceSession
+ (id)showServiceForText:(id)a3 selectedTextRange:(_NSRange)a4 type:(int64_t)a5 fromRect:(CGRect)a6 inView:(id)a7;
+ (id)showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6;
+ (id)showServiceForType:(int64_t)a3 withContext:(id)a4;
- (void)dismissTextServiceAnimated:(BOOL)a3;
@end

@implementation _UIHostedTextServiceSession

+ (id)showServiceForType:(int64_t)a3 withContext:(id)a4
{
  v4 = [[a1 alloc] initWithType:a3];

  return v4;
}

+ (id)showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6
{
  v6 = [[a1 alloc] initWithType:a4];

  return v6;
}

+ (id)showServiceForText:(id)a3 selectedTextRange:(_NSRange)a4 type:(int64_t)a5 fromRect:(CGRect)a6 inView:(id)a7
{
  v7 = [[a1 alloc] initWithType:a5];

  return v7;
}

- (void)dismissTextServiceAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIHostedTextServiceSession *)self delegate];
  [v5 dismissHostedTextServiceSession:self animated:v3];
}

@end