@interface SVXDefaultNotificationCenterRegistrar
- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object;
- (void)removeObserver:(id)observer;
@end

@implementation SVXDefaultNotificationCenterRegistrar

- (void)removeObserver:(id)observer
{
  v3 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:observerCopy];
}

- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object
{
  v9 = MEMORY[0x277CCAB98];
  objectCopy = object;
  nameCopy = name;
  observerCopy = observer;
  defaultCenter = [v9 defaultCenter];
  [defaultCenter addObserver:observerCopy selector:selector name:nameCopy object:objectCopy];
}

@end