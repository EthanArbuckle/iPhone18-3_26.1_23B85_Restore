@interface TTRIRemindersListReminderCell
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
@end

@implementation TTRIRemindersListReminderCell

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v5 = self + qword_280D131E0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 88);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v5 = self + qword_280D131E0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 96);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

@end