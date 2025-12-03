@interface CanonicalDocumentViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)didTapDownload;
- (void)didTapMarkAllEpisodesAsWatched;
- (void)didTapMarkAsWatched;
- (void)didTapShare;
- (void)validateCommand:(id)command;
- (void)vui_willMoveToParentViewController:(id)controller;
@end

@implementation CanonicalDocumentViewController

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E38D3E6C(controller);
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1E38D4438(commandCopy);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = sub_1E38D46E0();

  sub_1E325F748(v9, &unk_1ECF296E0);
  return v7 & 1;
}

- (void)didTapDownload
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4968();
}

- (void)didTapMarkAsWatched
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4AA8();
}

- (void)didTapShare
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4D38();
}

- (void)didTapMarkAllEpisodesAsWatched
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E38D4DE0();
}

@end