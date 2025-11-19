@interface StoryColorGradeEditorItemHitTestResult
- (_TtC15PhotosUIPrivate38StoryColorGradeEditorItemHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userDataProvider:(id)a6;
@end

@implementation StoryColorGradeEditorItemHitTestResult

- (_TtC15PhotosUIPrivate38StoryColorGradeEditorItemHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userDataProvider:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a4;
  v13 = a5;
  return sub_1B37C1488(v11, a4, a5, v9, v10);
}

@end