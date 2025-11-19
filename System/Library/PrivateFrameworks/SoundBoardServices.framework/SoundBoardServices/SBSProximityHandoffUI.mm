@interface SBSProximityHandoffUI
- (SBSProximityHandoffUI)initWithTarget:(id)a3;
- (SBSProximityHandoffUIDelegate)delegate;
- (void)completeWithHandoffType:(unint64_t)a3;
- (void)dealloc;
- (void)handoffCancelled;
- (void)handoffCompleted;
- (void)handoffInactive;
- (void)handoffStarted;
- (void)handoffUpdating;
@end

@implementation SBSProximityHandoffUI

- (SBSProximityHandoffUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSProximityHandoffUI;
  [(SBSProximityHandoffUI *)&v3 dealloc];
}

- (void)handoffUpdating
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service updating.", v5, 2u);
  }

  v4 = [(SBSProximityHandoffUI *)self delegate];
  [v4 proximityHandoffUI:self stateTransition:3];
}

- (void)handoffStarted
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service started.", v5, 2u);
  }

  v4 = [(SBSProximityHandoffUI *)self delegate];
  [v4 proximityHandoffUI:self stateTransition:2];
}

- (void)handoffInactive
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service inactive.", v5, 2u);
  }

  v4 = [(SBSProximityHandoffUI *)self delegate];
  [v4 proximityHandoffUI:self stateTransition:4];
}

- (void)handoffCompleted
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service completed.", v5, 2u);
  }

  v4 = [(SBSProximityHandoffUI *)self delegate];
  [v4 proximityHandoffUI:self stateTransition:1];
}

- (void)handoffCancelled
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service cancelled.", v5, 2u);
  }

  v4 = [(SBSProximityHandoffUI *)self delegate];
  [v4 proximityHandoffUI:self stateTransition:0];
}

- (void)completeWithHandoffType:(unint64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  sbProxy = self->_sbProxy;
  if (objc_opt_respondsToSelector())
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26B246000, v6, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service setting device as stereo leader.", v9, 2u);
    }

    v10 = @"reason";
    v11[0] = @"ProximityHandoffV2";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(SBSImplementer *)self->_sbProxy handoffSetDeviceAsStereoLeader:1 withOptions:v7];
  }

  [(SBSImplementer *)self->_sbProxy handoffCompleteWithHandoffType:a3];
  v8 = *MEMORY[0x277D85DE8];
}

- (SBSProximityHandoffUI)initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSProximityHandoffUI;
  v5 = [(SBSProximityHandoffUI *)&v9 init];
  if (v5)
  {
    if ([v4 isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:v5 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:v4];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end