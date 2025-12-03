@interface PAEKeyerSetupUtil
- (PAEKeyerSetupUtil)initWithAPIManager:(id)manager colorPrimaries:(int)primaries atTime:(id)time;
- (PAEKeyerSetupUtil)initWithOMSamples:(void *)samples colorPrimaries:(int)primaries atTime:(id)time;
- (void)dealloc;
@end

@implementation PAEKeyerSetupUtil

- (PAEKeyerSetupUtil)initWithAPIManager:(id)manager colorPrimaries:(int)primaries atTime:(id)time
{
  v6.receiver = self;
  v6.super_class = PAEKeyerSetupUtil;
  if ([(PAEKeyerSetupUtil *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (PAEKeyerSetupUtil)initWithOMSamples:(void *)samples colorPrimaries:(int)primaries atTime:(id)time
{
  v8.receiver = self;
  v8.super_class = PAEKeyerSetupUtil;
  v6 = [(PAEKeyerSetupUtil *)&v8 init];
  if (v6)
  {
    v6->_omSamples = samples;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  omKeyer = self->_omKeyer;
  if (omKeyer)
  {
    (*(*omKeyer + 8))(omKeyer, a2);
  }

  v4.receiver = self;
  v4.super_class = PAEKeyerSetupUtil;
  [(PAEKeyerSetupUtil *)&v4 dealloc];
}

@end