@interface NSIdRunStorage
+ (void)initialize;
- (void)dealloc;
@end

@implementation NSIdRunStorage

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSIdRunStorage;
  [(NSRunStorage *)&v2 dealloc];
}

@end