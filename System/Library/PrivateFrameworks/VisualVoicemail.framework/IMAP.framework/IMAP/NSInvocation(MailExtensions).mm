@interface NSInvocation(MailExtensions)
+ (id)mf_invocationWithSelector:()MailExtensions target:;
+ (id)mf_invocationWithSelector:()MailExtensions target:object1:object2:;
+ (id)mf_invocationWithSelector:()MailExtensions target:object:;
@end

@implementation NSInvocation(MailExtensions)

+ (id)mf_invocationWithSelector:()MailExtensions target:
{
  v6 = a4;
  v7 = [v6 methodSignatureForSelector:a3];
  if (v7)
  {
    v8 = [a1 invocationWithMethodSignature:v7];
    [v8 retainArguments];
    [v8 setSelector:a3];
    [v8 setTarget:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)mf_invocationWithSelector:()MailExtensions target:object:
{
  v12 = a5;
  v8 = [a1 mf_invocationWithSelector:a3 target:a4];
  v9 = [v8 methodSignature];
  v10 = [v9 numberOfArguments];

  if (v10 >= 3)
  {
    [v8 setArgument:&v12 atIndex:2];
  }

  return v8;
}

+ (id)mf_invocationWithSelector:()MailExtensions target:object1:object2:
{
  v14 = a6;
  v10 = [a1 mf_invocationWithSelector:a3 target:a4 object:a5];
  v11 = [v10 methodSignature];
  v12 = [v11 numberOfArguments];

  if (v12 >= 4)
  {
    [v10 setArgument:&v14 atIndex:3];
  }

  return v10;
}

@end