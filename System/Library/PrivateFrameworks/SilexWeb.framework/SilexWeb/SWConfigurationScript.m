@interface SWConfigurationScript
- (NSString)executableScript;
- (SWConfigurationScript)initWithConfiguration:(id)a3;
- (WKUserScript)userScript;
@end

@implementation SWConfigurationScript

- (SWConfigurationScript)initWithConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = SWConfigurationScript;
    v5 = [(SWConfigurationScript *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      configuration = v5->_configuration;
      v5->_configuration = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WKUserScript)userScript
{
  if ([(NSString *)self->_configuration length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"applenews.configuration = %@", self->_configuration];
    v4 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v3 injectionTime:0 forMainFrameOnly:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)executableScript
{
  v3 = [(NSString *)self->_configuration length];
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"                            var oldConfiguration = applenews.configuration                             applenews.configuration = %@;                             var detail = {newConfiguration: applenews.configuration, oldConfiguration: oldConfiguration};                             var event = new CustomEvent('ANConfigurationChanged', {detail: detail});                             document.dispatchEvent(event);", self->_configuration];;
  }

  return v3;
}

@end