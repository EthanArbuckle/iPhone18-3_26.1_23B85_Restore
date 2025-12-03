@interface SMUSystemDisplayMonitor
- (NSSet)connectedIdentities;
- (SMUSystemDisplayIdentity)mainIdentity;
- (SMUSystemDisplayMonitor)init;
- (void)dealloc;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
@end

@implementation SMUSystemDisplayMonitor

- (SMUSystemDisplayMonitor)init
{
  v6.receiver = self;
  v6.super_class = SMUSystemDisplayMonitor;
  v2 = [(SMUSystemDisplayMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0AD38]);
    displayMonitor = v2->_displayMonitor;
    v2->_displayMonitor = v3;

    [(FBSDisplayMonitor *)v2->_displayMonitor addObserver:v2];
  }

  return v2;
}

- (NSSet)connectedIdentities
{
  displayMonitor = [(SMUSystemDisplayMonitor *)self displayMonitor];
  connectedIdentities = [displayMonitor connectedIdentities];

  return connectedIdentities;
}

- (void)dealloc
{
  [(FBSDisplayMonitor *)self->_displayMonitor removeObserver:self];
  v3.receiver = self;
  v3.super_class = SMUSystemDisplayMonitor;
  [(SMUSystemDisplayMonitor *)&v3 dealloc];
}

- (SMUSystemDisplayIdentity)mainIdentity
{
  displayMonitor = [(SMUSystemDisplayMonitor *)self displayMonitor];
  mainIdentity = [displayMonitor mainIdentity];

  return mainIdentity;
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  onDisplayConnected = [(SMUSystemDisplayMonitor *)self onDisplayConnected];
  onDisplayConnected[2](onDisplayConnected, identityCopy);
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  identityCopy = identity;
  onDisplayDisconnected = [(SMUSystemDisplayMonitor *)self onDisplayDisconnected];
  onDisplayDisconnected[2](onDisplayDisconnected, identityCopy);
}

@end