@interface SBExternalDisplayWallpaperController
- (SBExternalDisplayWallpaperController)initWithWindowScene:(id)scene requiresTraitsParticipant:(BOOL)participant;
@end

@implementation SBExternalDisplayWallpaperController

- (SBExternalDisplayWallpaperController)initWithWindowScene:(id)scene requiresTraitsParticipant:(BOOL)participant
{
  participantCopy = participant;
  sceneCopy = scene;
  v19.receiver = self;
  v19.super_class = SBExternalDisplayWallpaperController;
  v7 = [(SBExternalDisplayWallpaperController *)&v19 init];
  if (v7)
  {
    v8 = [[_SBWallpaperWindow alloc] initWithWindowScene:sceneCopy];
    window = v7->_window;
    v7->_window = &v8->super;

    [(SBFWindow *)v7->_window _setRoleHint:@"SBTraitsParticipantRoleWallpaperExternal"];
    [(SBFWindow *)v7->_window setWindowLevel:*MEMORY[0x277D772B0] + -3.0];
    v10 = v7->_window;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SBFWindow *)v10 setBackgroundColor:blackColor];

    [(SBFWindow *)v7->_window setUserInteractionEnabled:0];
    v12 = [[SBExternalDisplayWallpaperViewController alloc] initWithWindowScene:sceneCopy];
    [(SBFWindow *)v7->_window setRootViewController:v12];
    [(SBFWindow *)v7->_window setHidden:0];
    if (participantCopy)
    {
      zStackResolver = [sceneCopy zStackResolver];
      v14 = [zStackResolver acquireParticipantWithIdentifier:0 delegate:v7];
      zStackParticipant = v7->_zStackParticipant;
      v7->_zStackParticipant = v14;

      statusBarManager = [sceneCopy statusBarManager];
      layoutManager = [statusBarManager layoutManager];

      [layoutManager setOrientationWindow:v7->_window forStatusBarLayoutLayer:0];
    }
  }

  return v7;
}

@end