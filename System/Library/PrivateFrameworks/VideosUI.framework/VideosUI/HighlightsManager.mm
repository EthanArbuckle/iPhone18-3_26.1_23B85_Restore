@interface HighlightsManager
- (void)handleAccountStoreDidChange:(id)a3;
- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4;
- (void)highlightCenterDidAddHighlights:(id)a3;
- (void)highlightCenterSettingsEnablementHasChanged:(id)a3;
@end

@implementation HighlightsManager

- (void)highlightCenterDidAddHighlights:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3FC4A60();
}

- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4
{
  sub_1E3280A90(0, &qword_1EE23B3F0);
  v6 = sub_1E42062B4();
  v7 = a3;
  v8 = self;
  sub_1E3FC4B58(v8, v6);
}

- (void)highlightCenterSettingsEnablementHasChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3FC4C88();
}

- (void)handleAccountStoreDidChange:(id)a3
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  v11 = self;
  sub_1E3FC4F60();

  (*(v6 + 8))(v10, v4);
}

@end