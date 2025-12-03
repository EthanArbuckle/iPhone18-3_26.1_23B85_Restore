@interface JasperDepthProvider
- (JasperDepthProvider)initWithDevice:(H16ISPDevice *)device andChannel:(unsigned int)channel andRemote:(H16ISPServicesRemote *)remote;
- (unint64_t)onlineConfig:(id)config;
@end

@implementation JasperDepthProvider

- (JasperDepthProvider)initWithDevice:(H16ISPDevice *)device andChannel:(unsigned int)channel andRemote:(H16ISPServicesRemote *)remote
{
  v14.receiver = self;
  v14.super_class = JasperDepthProvider;
  result = [(JasperDepthProvider *)&v14 init];
  result->_wakupDone = 1;
  result->_channel = channel;
  result->_pDevice = device;
  result->_pRemote = remote;
  __asm { FMOV            V0.2S, #30.0 }

  *&result->_minFrameRate = _D0;
  result->_frameRateChanged = 0;
  result->_gmoFlowBitmask = 0;
  return result;
}

- (unint64_t)onlineConfig:(id)config
{
  configCopy = config;
  if ([configCopy length] == 960)
  {
    v5 = sub_100017344(self->_pDevice, self->_channel, [configCopy bytes]);
  }

  else
  {
    NSLog(@"Bad Peridot online config received from PeridotDepth: Wrong size (got %zu, expected %zu)", [configCopy length], 960);
    v5 = 0;
  }

  return v5;
}

@end