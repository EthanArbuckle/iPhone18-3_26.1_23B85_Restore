@interface SWSessionManager
- (SWSessionManager)initWithScriptsManager:(id)manager logger:(id)logger;
- (void)refresh;
@end

@implementation SWSessionManager

- (SWSessionManager)initWithScriptsManager:(id)manager logger:(id)logger
{
  managerCopy = manager;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = SWSessionManager;
  v9 = [(SWSessionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scriptsManager, manager);
    objc_storeStrong(&v10->_logger, logger);
  }

  return v10;
}

- (void)refresh
{
  v3 = objc_alloc_init(SWSession);
  session = self->_session;
  self->_session = v3;

  logger = [(SWSessionManager *)self logger];
  identifier = [(SWSession *)self->_session identifier];
  [logger bindValue:identifier forKey:@"session"];

  logger2 = [(SWSessionManager *)self logger];
  v8 = MEMORY[0x1E696AEC0];
  identifier2 = [(SWSession *)self->_session identifier];
  v10 = [v8 stringWithFormat:@"Refreshing session with identifier: %@", identifier2];
  [logger2 log:v10];

  v12 = [[SWSessionScript alloc] initWithSession:self->_session];
  scriptsManager = [(SWSessionManager *)self scriptsManager];
  [scriptsManager addScript:v12];
}

@end