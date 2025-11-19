@interface PAEKeyerSetupUtil
- (PAEKeyerSetupUtil)initWithAPIManager:(id)a3 colorPrimaries:(int)a4 atTime:(id)a5;
- (PAEKeyerSetupUtil)initWithOMSamples:(void *)a3 colorPrimaries:(int)a4 atTime:(id)a5;
- (void)dealloc;
@end

@implementation PAEKeyerSetupUtil

- (PAEKeyerSetupUtil)initWithAPIManager:(id)a3 colorPrimaries:(int)a4 atTime:(id)a5
{
  v6.receiver = self;
  v6.super_class = PAEKeyerSetupUtil;
  if ([(PAEKeyerSetupUtil *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (PAEKeyerSetupUtil)initWithOMSamples:(void *)a3 colorPrimaries:(int)a4 atTime:(id)a5
{
  v8.receiver = self;
  v8.super_class = PAEKeyerSetupUtil;
  v6 = [(PAEKeyerSetupUtil *)&v8 init];
  if (v6)
  {
    v6->_omSamples = a3;
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