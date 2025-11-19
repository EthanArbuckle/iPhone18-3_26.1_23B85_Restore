@interface PXApplicationVideoMuteController
- (PXApplicationVideoMuteController)init;
- (PXApplicationVideoMuteController)initWithAutoplaySetting:(BOOL)a3;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preferencesDidChange;
@end

@implementation PXApplicationVideoMuteController

- (void)preferencesDidChange
{
  IsVideoAutoplayEnabled = PXPreferencesIsVideoAutoplayEnabled();

  [(PXVideoMuteController *)self setAutoplayEnabled:IsVideoAutoplayEnabled];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (ApplicationStateContext_105541 == a5)
  {
    v6 = [PXApplicationState sharedState:a3];
    v7 = [v6 visibilityState];

    if (v7 == 3)
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

- (PXApplicationVideoMuteController)initWithAutoplaySetting:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PXApplicationVideoMuteController;
  v3 = [(PXVideoMuteController *)&v6 initWithAutoplaySetting:a3];
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