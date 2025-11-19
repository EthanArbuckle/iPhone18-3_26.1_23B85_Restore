@interface TTRIUnsupportedTextDropHandler
- (_TtC15RemindersUICore30TTRIUnsupportedTextDropHandler)init;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
@end

@implementation TTRIUnsupportedTextDropHandler

- (_TtC15RemindersUICore30TTRIUnsupportedTextDropHandler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIUnsupportedTextDropHandler *)&v3 init];
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75BA8]) initWithDropOperation_];

  return v4;
}

@end