@interface HighlightsManager
- (void)handleAccountStoreDidChange:(id)change;
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterDidAddHighlights:(id)highlights;
- (void)highlightCenterSettingsEnablementHasChanged:(id)changed;
@end

@implementation HighlightsManager

- (void)highlightCenterDidAddHighlights:(id)highlights
{
  highlightsCopy = highlights;
  selfCopy = self;
  sub_1E3FC4A60();
}

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  sub_1E3280A90(0, &qword_1EE23B3F0);
  v6 = sub_1E42062B4();
  centerCopy = center;
  selfCopy = self;
  sub_1E3FC4B58(selfCopy, v6);
}

- (void)highlightCenterSettingsEnablementHasChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1E3FC4C88();
}

- (void)handleAccountStoreDidChange:(id)change
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E3FC4F60();

  (*(v6 + 8))(v10, v4);
}

@end