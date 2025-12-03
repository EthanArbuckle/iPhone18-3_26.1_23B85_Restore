@interface SBRecordingIndicatorWindow
- (SBRecordingIndicatorWindow)initWithWindowScene:(id)scene debugName:(id)name;
@end

@implementation SBRecordingIndicatorWindow

- (SBRecordingIndicatorWindow)initWithWindowScene:(id)scene debugName:(id)name
{
  v6 = MEMORY[0x277D759A0];
  nameCopy = name;
  sceneCopy = scene;
  mainScreen = [v6 mainScreen];
  v10 = MEMORY[0x277CCACA8];
  displayIdentity = [mainScreen displayIdentity];
  v12 = [v10 stringWithFormat:@"%@-%@", nameCopy, displayIdentity];

  v16.receiver = self;
  v16.super_class = SBRecordingIndicatorWindow;
  v13 = [(SBWindow *)&v16 initWithWindowScene:sceneCopy rootViewController:0 layoutStrategy:0 role:@"SBTraitsParticipantRoleRecordingIndicator" debugName:v12];

  v14 = v13;
  [(SBRecordingIndicatorWindow *)v14 setOpaque:0];

  return v14;
}

@end