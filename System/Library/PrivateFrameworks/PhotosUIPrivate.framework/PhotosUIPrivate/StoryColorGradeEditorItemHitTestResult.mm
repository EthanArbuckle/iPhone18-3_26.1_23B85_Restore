@interface StoryColorGradeEditorItemHitTestResult
- (_TtC15PhotosUIPrivate38StoryColorGradeEditorItemHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userDataProvider:(id)provider;
@end

@implementation StoryColorGradeEditorItemHitTestResult

- (_TtC15PhotosUIPrivate38StoryColorGradeEditorItemHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userDataProvider:(id)provider
{
  v9 = _Block_copy(provider);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_1B36FBB80;
  }

  else
  {
    v10 = 0;
  }

  referenceCopy = reference;
  layoutCopy = layout;
  identifierCopy = identifier;
  return sub_1B37C1488(referenceCopy, layout, identifier, v9, v10);
}

@end