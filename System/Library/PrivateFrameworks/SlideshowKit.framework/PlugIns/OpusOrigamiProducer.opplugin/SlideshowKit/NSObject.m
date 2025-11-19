@interface NSObject
- (double)performWithDoubleResultSelector:(SEL)a3 onThread:(id)a4 withObject:(id)a5;
@end

@implementation NSObject

- (double)performWithDoubleResultSelector:(SEL)a3 onThread:(id)a4 withObject:(id)a5
{
  v12 = a5;
  v9 = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:?]];
  [(NSInvocation *)v9 setTarget:self];
  [(NSInvocation *)v9 setSelector:a3];
  if (a5)
  {
    [(NSInvocation *)v9 setArgument:&v12 atIndex:2];
  }

  [(NSInvocation *)v9 performSelector:"invoke" onThread:a4 withObject:0 waitUntilDone:1];
  v11 = 0.0;
  [(NSInvocation *)v9 getReturnValue:&v11];
  return v11;
}

@end