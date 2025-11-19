@interface TSUWeakReference
+ (id)weakReferenceWithObject:(id)a3;
- (TSUWeakReference)init;
- (TSUWeakReference)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation TSUWeakReference

+ (id)weakReferenceWithObject:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithObject:a3];

  return v3;
}

- (TSUWeakReference)initWithObject:(id)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = TSUWeakReference;
    v4 = [(TSUWeakReference *)&v7 init];
    v5 = v4;
    if (v4)
    {
      objc_storeWeak(&v4->mObject, a3);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (TSUWeakReference)init
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUWeakReference init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUWeakReference.m"), 34, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSUWeakReference init]"), 0}]);
}

- (void)dealloc
{
  objc_storeWeak(&self->mObject, 0);
  v3.receiver = self;
  v3.super_class = TSUWeakReference;
  [(TSUWeakReference *)&v3 dealloc];
}

@end