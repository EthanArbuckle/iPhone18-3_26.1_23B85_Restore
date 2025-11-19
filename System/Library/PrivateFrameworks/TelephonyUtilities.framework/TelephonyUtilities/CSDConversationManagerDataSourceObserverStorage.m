@interface CSDConversationManagerDataSourceObserverStorage
- (id)observerToQueue;
- (void)addObserver:(id)a3 queue:(id)a4;
@end

@implementation CSDConversationManagerDataSourceObserverStorage

- (void)addObserver:(id)a3 queue:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1002ECA78();
  swift_unknownObjectRelease();
}

- (id)observerToQueue
{
  v2 = self;
  v3 = sub_1002ECD5C();

  return v3;
}

@end