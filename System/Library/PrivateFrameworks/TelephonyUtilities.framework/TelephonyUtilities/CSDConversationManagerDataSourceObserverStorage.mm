@interface CSDConversationManagerDataSourceObserverStorage
- (id)observerToQueue;
- (void)addObserver:(id)observer queue:(id)queue;
@end

@implementation CSDConversationManagerDataSourceObserverStorage

- (void)addObserver:(id)observer queue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  sub_1002ECA78();
  swift_unknownObjectRelease();
}

- (id)observerToQueue
{
  selfCopy = self;
  v3 = sub_1002ECD5C();

  return v3;
}

@end