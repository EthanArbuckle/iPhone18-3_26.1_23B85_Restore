@interface ACCComponents
+ (id)components;
- (void)dealloc;
@end

@implementation ACCComponents

+ (id)components
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ACCComponents;
  return objc_msgSendSuper2(&v3, sel_components);
}

- (void)dealloc
{
  [(ACCComponents *)self setTgtStoragePolicy:0];
  [(ACCComponents *)self setTicketManager:0];
  v3.receiver = self;
  v3.super_class = ACCComponents;
  [(ACFComponents *)&v3 dealloc];
}

@end