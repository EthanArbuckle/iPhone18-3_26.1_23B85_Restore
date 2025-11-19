@interface MCObjectBase
+ (void)initialize;
- (id)snapshot;
- (void)dealloc;
@end

@implementation MCObjectBase

+ (void)initialize
{
  if (!sEmptySet)
  {
    sEmptySet = objc_alloc_init(NSSet);
  }

  if (!sEmptyArray)
  {
    sEmptyArray = objc_alloc_init(NSArray);
  }

  if (!sEmptyDictionary)
  {
    sEmptyDictionary = objc_alloc_init(NSDictionary);
  }
}

- (void)dealloc
{
  [(MCObjectBase *)self demolish];
  v3.receiver = self;
  v3.super_class = MCObjectBase;
  [(MCObjectBase *)&v3 dealloc];
}

- (id)snapshot
{
  v3 = objc_alloc_init(objc_opt_class());
  [(MCObjectBase *)self _copySelfToSnapshot:v3];

  return v3;
}

@end