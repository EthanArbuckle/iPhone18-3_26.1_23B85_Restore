@interface JasperDepthProvider
- (JasperDepthProvider)initWithDevice:(H16ISPDevice *)a3 andChannel:(unsigned int)a4 andRemote:(H16ISPServicesRemote *)a5;
- (unint64_t)onlineConfig:(id)a3;
@end

@implementation JasperDepthProvider

- (JasperDepthProvider)initWithDevice:(H16ISPDevice *)a3 andChannel:(unsigned int)a4 andRemote:(H16ISPServicesRemote *)a5
{
  v14.receiver = self;
  v14.super_class = JasperDepthProvider;
  result = [(JasperDepthProvider *)&v14 init];
  result->_wakupDone = 1;
  result->_channel = a4;
  result->_pDevice = a3;
  result->_pRemote = a5;
  __asm { FMOV            V0.2S, #30.0 }

  *&result->_minFrameRate = _D0;
  result->_frameRateChanged = 0;
  result->_gmoFlowBitmask = 0;
  return result;
}

- (unint64_t)onlineConfig:(id)a3
{
  v4 = a3;
  if ([v4 length] == 960)
  {
    v5 = sub_100017344(self->_pDevice, self->_channel, [v4 bytes]);
  }

  else
  {
    NSLog(@"Bad Peridot online config received from PeridotDepth: Wrong size (got %zu, expected %zu)", [v4 length], 960);
    v5 = 0;
  }

  return v5;
}

@end