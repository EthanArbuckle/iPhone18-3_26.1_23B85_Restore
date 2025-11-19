@interface SVXModuleInstanceMap
- (SVXClientServiceServer)clientServiceServer;
- (SVXDeviceSetupManager)deviceSetupManager;
- (SVXModuleInstanceMap)initWithDictionaryRepresentation:(id)a3;
- (SVXServiceCommandHandler)serviceCommandHandler;
- (SVXSessionManager)sessionManager;
- (SVXSpeechSynthesizer)speechSynthesizer;
- (SVXSynthesisManager)synthesisManager;
- (SVXSystemObserver)systemObserver;
@end

@implementation SVXModuleInstanceMap

- (SVXSystemObserver)systemObserver
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.system-observation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.system-observation"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXSpeechSynthesizer)speechSynthesizer
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.speech-synthesis"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.speech-synthesis"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXSessionManager)sessionManager
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.session-manager"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.session-manager"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXServiceCommandHandler)serviceCommandHandler
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.service-command"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.service-command"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXClientServiceServer)clientServiceServer
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.client-service"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.client-service"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXSynthesisManager)synthesisManager
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.synthesis-manager"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.synthesis-manager"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXDeviceSetupManager)deviceSetupManager
{
  v3 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.device-setup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:@"com.apple.SiriVOXService.device-setup"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SVXModuleInstanceMap)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVXModuleInstanceMap;
  v5 = [(SVXModuleInstanceMap *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

@end