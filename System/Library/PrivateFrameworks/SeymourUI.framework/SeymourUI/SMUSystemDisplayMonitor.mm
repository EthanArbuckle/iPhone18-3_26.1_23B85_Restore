@interface SMUSystemDisplayMonitor
- (NSSet)connectedIdentities;
- (SMUSystemDisplayIdentity)mainIdentity;
- (SMUSystemDisplayMonitor)init;
- (void)dealloc;
- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5;
- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4;
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
  v2 = [(SMUSystemDisplayMonitor *)self displayMonitor];
  v3 = [v2 connectedIdentities];

  return v3;
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
  v2 = [(SMUSystemDisplayMonitor *)self displayMonitor];
  v3 = [v2 mainIdentity];

  return v3;
}

- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5
{
  v6 = a4;
  v7 = [(SMUSystemDisplayMonitor *)self onDisplayConnected];
  v7[2](v7, v6);
}

- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4
{
  v5 = a4;
  v6 = [(SMUSystemDisplayMonitor *)self onDisplayDisconnected];
  v6[2](v6, v5);
}

@end