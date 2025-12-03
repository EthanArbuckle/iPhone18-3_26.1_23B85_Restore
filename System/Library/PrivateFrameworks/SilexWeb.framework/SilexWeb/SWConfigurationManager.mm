@interface SWConfigurationManager
- (SWConfigurationManager)initWithWebContentScriptsManager:(id)manager logger:(id)logger serializer:(id)serializer;
- (void)setConfiguration:(id)configuration;
@end

@implementation SWConfigurationManager

- (SWConfigurationManager)initWithWebContentScriptsManager:(id)manager logger:(id)logger serializer:(id)serializer
{
  managerCopy = manager;
  loggerCopy = logger;
  serializerCopy = serializer;
  v12 = serializerCopy;
  selfCopy = 0;
  if (managerCopy && serializerCopy)
  {
    v17.receiver = self;
    v17.super_class = SWConfigurationManager;
    v14 = [(SWConfigurationManager *)&v17 init];
    p_isa = &v14->super.isa;
    if (v14)
    {
      objc_storeStrong(&v14->_webContentScriptsManager, manager);
      objc_storeStrong(p_isa + 3, logger);
      objc_storeStrong(p_isa + 5, serializer);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    configuration = [(SWConfigurationManager *)self configuration];
    v5 = [configuration isEqualToConfiguration:configurationCopy];

    if ((v5 & 1) == 0)
    {
      logger = [(SWConfigurationManager *)self logger];
      configurationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Updating configuration with: %@", configurationCopy];
      [logger log:configurationCopy];

      webContentScriptsManager = [(SWConfigurationManager *)self webContentScriptsManager];
      configurationScript = [(SWConfigurationManager *)self configurationScript];
      [webContentScriptsManager removeScript:configurationScript];

      v10 = [configurationCopy copy];
      configuration = self->_configuration;
      self->_configuration = v10;

      serializer = [(SWConfigurationManager *)self serializer];
      v13 = [serializer serializeWebContentConfiguration:configurationCopy];

      v14 = [[SWConfigurationScript alloc] initWithConfiguration:v13];
      webContentScriptsManager2 = [(SWConfigurationManager *)self webContentScriptsManager];
      [webContentScriptsManager2 executeScript:v14 completion:0];

      webContentScriptsManager3 = [(SWConfigurationManager *)self webContentScriptsManager];
      [webContentScriptsManager3 addScript:v14];

      [(SWConfigurationManager *)self setConfigurationScript:v14];
    }
  }
}

@end