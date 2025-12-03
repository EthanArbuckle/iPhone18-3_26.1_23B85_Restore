@interface JSHighlightsManager
- (void)handleHighlightsUpdatedNotification:(id)notification;
- (void)handleRestrictionsDidChange:(id)change;
- (void)syndicationInfoUpdated:(id)updated;
@end

@implementation JSHighlightsManager

- (void)syndicationInfoUpdated:(id)updated
{
  v4 = sub_1E4205C64();
  selfCopy = self;
  sub_1E3E0BB74(v4);
}

- (void)handleHighlightsUpdatedNotification:(id)notification
{
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_179();
  selfCopy = self;
  sub_1E3E0C424();

  (*(v7 + 8))(v3, v5);
}

- (void)handleRestrictionsDidChange:(id)change
{
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_179();
  selfCopy = self;
  sub_1E3E0C6C8();

  (*(v7 + 8))(v3, v5);
}

@end