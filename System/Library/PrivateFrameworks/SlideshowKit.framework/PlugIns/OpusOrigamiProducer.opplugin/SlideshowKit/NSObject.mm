@interface NSObject
- (double)performWithDoubleResultSelector:(SEL)selector onThread:(id)thread withObject:(id)object;
@end

@implementation NSObject

- (double)performWithDoubleResultSelector:(SEL)selector onThread:(id)thread withObject:(id)object
{
  objectCopy = object;
  v9 = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:?]];
  [(NSInvocation *)v9 setTarget:self];
  [(NSInvocation *)v9 setSelector:selector];
  if (object)
  {
    [(NSInvocation *)v9 setArgument:&objectCopy atIndex:2];
  }

  [(NSInvocation *)v9 performSelector:"invoke" onThread:thread withObject:0 waitUntilDone:1];
  v11 = 0.0;
  [(NSInvocation *)v9 getReturnValue:&v11];
  return v11;
}

@end