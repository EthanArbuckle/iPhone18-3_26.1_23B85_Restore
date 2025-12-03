@interface VKPlatform
+ (id)sharedPlatform;
- (BOOL)isInternalInstall;
- (BOOL)isIphone;
- (BOOL)isPad;
- (BOOL)roadsWithSimpleLineMeshesAvailable;
- (VKPlatform)init;
- (unint64_t)tileMaximumLimit:(unint64_t)limit;
- (unsigned)explicitDefaultRefreshRate;
- (unsigned)preferredFrequencyUpdate;
- (unsigned)processingQueueWidth;
- (unsigned)tileDecodeQueueWidth;
- (void)_determineHardware;
@end

@implementation VKPlatform

+ (id)sharedPlatform
{
  if (+[VKPlatform sharedPlatform]::onceToken != -1)
  {
    dispatch_once(&+[VKPlatform sharedPlatform]::onceToken, &__block_literal_global_11347);
  }

  v3 = _singleton;

  return v3;
}

void __28__VKPlatform_sharedPlatform__block_invoke()
{
  v0 = objc_alloc_init(VKPlatform);
  v1 = _singleton;
  _singleton = v0;
}

- (void)_determineHardware
{
  self->_memSize = [(VKPlatform *)self _calculateMemSize];
  v3 = 4;
  if (sysctlbyname("hw.perflevel1.physicalcpu", &self->_numCPUs, &v3, 0, 0))
  {
    if (sysctlbyname("hw.ncpu", &self->_numCPUs, &v3, 0, 0))
    {
      self->_numCPUs = 1;
    }
  }
}

- (BOOL)isPad
{
  if ([VKPlatform isPad]::once != -1)
  {
    dispatch_once(&[VKPlatform isPad]::once, &__block_literal_global_37);
  }

  return [VKPlatform isPad]::deviceClass == 3;
}

void __19__VKPlatform_isPad__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    -[VKPlatform isPad]::deviceClass = [v0 intValue];
    v0 = v1;
  }
}

- (VKPlatform)init
{
  v5.receiver = self;
  v5.super_class = VKPlatform;
  v2 = [(VKPlatform *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VKPlatform *)v2 _determineHardware];
    v3->_proceduralRoadAlpha = MGGetBoolAnswer();
    v3->_useCheapTrafficShader = MGGetBoolAnswer();
    v3->_supportsBuildingStrokes = MGGetBoolAnswer();
    v3->_supports3DBuildingStrokes = MGGetBoolAnswer();
    v3->_supportsCoastlineGlows = MGGetBoolAnswer();
    v3->_lowPerformanceDevice = 0;
    v3->_supportsPerFragmentLighting = MGGetBoolAnswer();
    v3->_supportsARMode = MGGetBoolAnswer();
  }

  return v3;
}

- (unsigned)tileDecodeQueueWidth
{
  if (self->_numCPUs <= 1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)isInternalInstall
{
  if ([VKPlatform isInternalInstall]::once != -1)
  {
    dispatch_once(&[VKPlatform isInternalInstall]::once, &__block_literal_global_47);
  }

  return [VKPlatform isInternalInstall]::sIsInternalInstall;
}

uint64_t __31__VKPlatform_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  [VKPlatform isInternalInstall]::sIsInternalInstall = result;
  return result;
}

- (unsigned)preferredFrequencyUpdate
{
  v3 = MGGetBoolAnswer();
  if (![(VKPlatform *)self isIphone]|| (v3 & 1) == 0)
  {
    [(VKPlatform *)self isPad];
  }

  return 32;
}

- (BOOL)isIphone
{
  if ([VKPlatform isIphone]::once != -1)
  {
    dispatch_once(&[VKPlatform isIphone]::once, &__block_literal_global_42);
  }

  return [VKPlatform isIphone]::deviceClass == 1;
}

void __22__VKPlatform_isIphone__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    -[VKPlatform isIphone]::deviceClass = [v0 intValue];
    v0 = v1;
  }
}

- (unsigned)explicitDefaultRefreshRate
{
  v3 = MGGetBoolAnswer();
  if (([(VKPlatform *)self isIphone]& v3) != 0)
  {
    return 60;
  }

  else
  {
    return 0;
  }
}

- (unsigned)processingQueueWidth
{
  v2 = self->_numCPUs / 2;
  if (v2 <= 1)
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (unint64_t)tileMaximumLimit:(unint64_t)limit
{
  memSize = self->_memSize;
  if (self->_isMac)
  {
    v4 = *(&xmmword_1B33B11F0 + (memSize <= 0x2000));
    if (memSize <= 0x1000)
    {
      v4 = 0.3;
    }

    v5 = memSize * (v4 + v4);
  }

  else
  {
    v5 = memSize + memSize;
  }

  if (limit <= 1)
  {
    limitCopy = 1;
  }

  else
  {
    limitCopy = limit;
  }

  return (v5 / limitCopy);
}

- (BOOL)roadsWithSimpleLineMeshesAvailable
{
  if ([VKPlatform roadsWithSimpleLineMeshesAvailable]::once != -1)
  {
    dispatch_once(&[VKPlatform roadsWithSimpleLineMeshesAvailable]::once, &__block_literal_global_32_11315);
  }

  return [VKPlatform roadsWithSimpleLineMeshesAvailable]::_simpleLineRoads;
}

void __48__VKPlatform_roadsWithSimpleLineMeshesAvailable__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  [VKPlatform roadsWithSimpleLineMeshesAvailable]::_simpleLineRoads = v2;
}

@end