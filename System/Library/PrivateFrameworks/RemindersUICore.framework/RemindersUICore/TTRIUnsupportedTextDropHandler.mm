@interface TTRIUnsupportedTextDropHandler
- (_TtC15RemindersUICore30TTRIUnsupportedTextDropHandler)init;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
@end

@implementation TTRIUnsupportedTextDropHandler

- (_TtC15RemindersUICore30TTRIUnsupportedTextDropHandler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIUnsupportedTextDropHandler *)&v3 init];
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  initWithDropOperation_ = [objc_allocWithZone(MEMORY[0x277D75BA8]) initWithDropOperation_];

  return initWithDropOperation_;
}

@end