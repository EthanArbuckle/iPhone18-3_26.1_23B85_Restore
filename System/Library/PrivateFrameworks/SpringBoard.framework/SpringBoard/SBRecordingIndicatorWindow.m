@interface SBRecordingIndicatorWindow
- (SBRecordingIndicatorWindow)initWithWindowScene:(id)a3 debugName:(id)a4;
@end

@implementation SBRecordingIndicatorWindow

- (SBRecordingIndicatorWindow)initWithWindowScene:(id)a3 debugName:(id)a4
{
  v6 = MEMORY[0x277D759A0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 mainScreen];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v9 displayIdentity];
  v12 = [v10 stringWithFormat:@"%@-%@", v7, v11];

  v16.receiver = self;
  v16.super_class = SBRecordingIndicatorWindow;
  v13 = [(SBWindow *)&v16 initWithWindowScene:v8 rootViewController:0 layoutStrategy:0 role:@"SBTraitsParticipantRoleRecordingIndicator" debugName:v12];

  v14 = v13;
  [(SBRecordingIndicatorWindow *)v14 setOpaque:0];

  return v14;
}

@end