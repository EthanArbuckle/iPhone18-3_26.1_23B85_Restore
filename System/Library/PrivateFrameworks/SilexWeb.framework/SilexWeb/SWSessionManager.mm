@interface SWSessionManager
- (SWSessionManager)initWithScriptsManager:(id)a3 logger:(id)a4;
- (void)refresh;
@end

@implementation SWSessionManager

- (SWSessionManager)initWithScriptsManager:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWSessionManager;
  v9 = [(SWSessionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scriptsManager, a3);
    objc_storeStrong(&v10->_logger, a4);
  }

  return v10;
}

- (void)refresh
{
  v3 = objc_alloc_init(SWSession);
  session = self->_session;
  self->_session = v3;

  v5 = [(SWSessionManager *)self logger];
  v6 = [(SWSession *)self->_session identifier];
  [v5 bindValue:v6 forKey:@"session"];

  v7 = [(SWSessionManager *)self logger];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(SWSession *)self->_session identifier];
  v10 = [v8 stringWithFormat:@"Refreshing session with identifier: %@", v9];
  [v7 log:v10];

  v12 = [[SWSessionScript alloc] initWithSession:self->_session];
  v11 = [(SWSessionManager *)self scriptsManager];
  [v11 addScript:v12];
}

@end