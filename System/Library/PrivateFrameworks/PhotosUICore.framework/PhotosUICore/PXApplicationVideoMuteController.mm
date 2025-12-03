@interface PXApplicationVideoMuteController
- (PXApplicationVideoMuteController)init;
- (PXApplicationVideoMuteController)initWithAutoplaySetting:(BOOL)setting;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preferencesDidChange;
@end

@implementation PXApplicationVideoMuteController

- (void)preferencesDidChange
{
  IsVideoAutoplayEnabled = PXPreferencesIsVideoAutoplayEnabled();

  [(PXVideoMuteController *)self setAutoplayEnabled:IsVideoAutoplayEnabled];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (ApplicationStateContext_105541 == context)
  {
    v6 = [PXApplicationState sharedState:observable];
    visibilityState = [v6 visibilityState];

    if (visibilityState == 3)
    {

      [(PXVideoMuteController *)self applicationDidMoveToBackground];
    }
  }
}

- (void)dealloc
{
  v3 = +[PXApplicationState sharedState];
  [v3 unregisterChangeObserver:self context:ApplicationStateContext_105541];

  PXUnregisterPreferencesObserver(self);
  v4.receiver = self;
  v4.super_class = PXApplicationVideoMuteController;
  [(PXApplicationVideoMuteController *)&v4 dealloc];
}

- (PXApplicationVideoMuteController)initWithAutoplaySetting:(BOOL)setting
{
  v6.receiver = self;
  v6.super_class = PXApplicationVideoMuteController;
  v3 = [(PXVideoMuteController *)&v6 initWithAutoplaySetting:setting];
  if (v3)
  {
    v4 = +[PXApplicationState sharedState];
    [v4 registerChangeObserver:v3 context:ApplicationStateContext_105541];

    PXRegisterPreferencesObserver(v3);
  }

  return v3;
}

- (PXApplicationVideoMuteController)init
{
  IsVideoAutoplayEnabled = PXPreferencesIsVideoAutoplayEnabled();

  return [(PXApplicationVideoMuteController *)self initWithAutoplaySetting:IsVideoAutoplayEnabled];
}

@end