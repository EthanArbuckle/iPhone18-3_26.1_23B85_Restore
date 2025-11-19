@interface CanonicalDocumentViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)didTapDownload;
- (void)didTapMarkAllEpisodesAsWatched;
- (void)didTapMarkAsWatched;
- (void)didTapShare;
- (void)validateCommand:(id)a3;
- (void)vui_willMoveToParentViewController:(id)a3;
@end

@implementation CanonicalDocumentViewController

- (void)vui_willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E38D3E6C(a3);
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E38D4438(v4);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = self;
  }

  v7 = sub_1E38D46E0();

  sub_1E325F748(v9, &unk_1ECF296E0);
  return v7 & 1;
}

- (void)didTapDownload
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4968();
}

- (void)didTapMarkAsWatched
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4AA8();
}

- (void)didTapShare
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4D38();
}

- (void)didTapMarkAllEpisodesAsWatched
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4DE0();
}

@end