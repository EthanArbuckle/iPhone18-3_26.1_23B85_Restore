@interface SWConfigurationManager
- (SWConfigurationManager)initWithWebContentScriptsManager:(id)a3 logger:(id)a4 serializer:(id)a5;
- (void)setConfiguration:(id)a3;
@end

@implementation SWConfigurationManager

- (SWConfigurationManager)initWithWebContentScriptsManager:(id)a3 logger:(id)a4 serializer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v11)
  {
    v17.receiver = self;
    v17.super_class = SWConfigurationManager;
    v14 = [(SWConfigurationManager *)&v17 init];
    p_isa = &v14->super.isa;
    if (v14)
    {
      objc_storeStrong(&v14->_webContentScriptsManager, a3);
      objc_storeStrong(p_isa + 3, a4);
      objc_storeStrong(p_isa + 5, a5);
    }

    self = p_isa;
    v13 = self;
  }

  return v13;
}

- (void)setConfiguration:(id)a3
{
  v17 = a3;
  if (v17)
  {
    v4 = [(SWConfigurationManager *)self configuration];
    v5 = [v4 isEqualToConfiguration:v17];

    if ((v5 & 1) == 0)
    {
      v6 = [(SWConfigurationManager *)self logger];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Updating configuration with: %@", v17];
      [v6 log:v7];

      v8 = [(SWConfigurationManager *)self webContentScriptsManager];
      v9 = [(SWConfigurationManager *)self configurationScript];
      [v8 removeScript:v9];

      v10 = [v17 copy];
      configuration = self->_configuration;
      self->_configuration = v10;

      v12 = [(SWConfigurationManager *)self serializer];
      v13 = [v12 serializeWebContentConfiguration:v17];

      v14 = [[SWConfigurationScript alloc] initWithConfiguration:v13];
      v15 = [(SWConfigurationManager *)self webContentScriptsManager];
      [v15 executeScript:v14 completion:0];

      v16 = [(SWConfigurationManager *)self webContentScriptsManager];
      [v16 addScript:v14];

      [(SWConfigurationManager *)self setConfigurationScript:v14];
    }
  }
}

@end