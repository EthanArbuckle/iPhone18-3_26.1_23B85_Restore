@interface FxHostCapabilities
+ (id)getRemoteHostCapabilities;
+ (void)setRemoteHostCapabilities:(id)capabilities;
- (BOOL)formatsFloatRGBABitmapsAsARGB;
- (BOOL)hostIsFCE;
- (BOOL)hostIsFCP;
- (BOOL)hostIsMotion;
- (BOOL)notifiesParameterChangedForGenerators;
- (BOOL)parameterChangedUsableForAllParameters;
- (BOOL)supportsDisabledParameters;
- (BOOL)supportsGroupParameters;
- (BOOL)supportsHiddenParameters;
- (BOOL)supportsTemporalBitmaps;
- (BOOL)upscalesFields;
- (FxHostCapabilities)initWithAPIManager:(id)manager;
- (id)glContextPixelFormatAttributes;
- (id)hostID;
- (unint64_t)timeBase;
- (unsigned)hostVersionNumber;
- (void)dealloc;
@end

@implementation FxHostCapabilities

- (FxHostCapabilities)initWithAPIManager:(id)manager
{
  v15.receiver = self;
  v15.super_class = FxHostCapabilities;
  v4 = [(FxHostCapabilities *)&v15 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800402D5EB2C2uLL);
    v4->_hostCapPriv = v5;
    if (v5)
    {
      MainBundle = CFBundleGetMainBundle();
      if (MainBundle)
      {
        v7 = MainBundle;
        if (![(__CFString *)CFBundleGetIdentifier(MainBundle) hasPrefix:@"com.apple."])
        {
          hostCapPriv = v4->_hostCapPriv;
          v10 = *&qword_27FE4B5D0;
          *&hostCapPriv->var0 = gRemoteCapabilities;
          *&hostCapPriv->var2 = v10;
          v11 = v4->_hostCapPriv->var0;
          v12 = v4->_hostCapPriv->var2;
          v13 = v4->_hostCapPriv->var3;
          return v4;
        }

        LODWORD(MainBundle) = CFBundleGetVersionNumber(v7);
      }

      v4->_hostCapPriv->var1 = MainBundle;
      v4->_hostCapPriv->var0 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v8 = [manager apiForProtocol:&unk_28735F220];
      if (v8)
      {
        v4->_hostCapPriv->var2 = [v8 hostProperties];
      }

      else
      {
        v4->_hostCapPriv->var2 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  hostCapPriv = self->_hostCapPriv;
  if (hostCapPriv)
  {
    if (hostCapPriv->var0)
    {

      hostCapPriv = self->_hostCapPriv;
    }

    var2 = hostCapPriv->var2;
    if (var2)
    {

      hostCapPriv = self->_hostCapPriv;
    }

    var3 = hostCapPriv->var3;
    if (var3)
    {

      hostCapPriv = self->_hostCapPriv;
    }

    free(hostCapPriv);
  }

  v6.receiver = self;
  v6.super_class = FxHostCapabilities;
  [(FxHostCapabilities *)&v6 dealloc];
}

+ (void)setRemoteHostCapabilities:(id)capabilities
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __48__FxHostCapabilities_setRemoteHostCapabilities___block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = capabilities;
  if (setRemoteHostCapabilities__onceToken != -1)
  {
    dispatch_once(&setRemoteHostCapabilities__onceToken, block);
  }
}

id __48__FxHostCapabilities_setRemoteHostCapabilities___block_invoke(uint64_t a1)
{
  *&gRemoteCapabilities = [*(a1 + 32) objectForKey:@"HostID"];
  DWORD2(gRemoteCapabilities) = [objc_msgSend(*(a1 + 32) objectForKey:{@"HostVersion", "unsignedIntValue"}];
  qword_27FE4B5D0 = [*(a1 + 32) objectForKey:@"HostProperties"];
  result = objc_alloc_init(MEMORY[0x277CBEA60]);
  qword_27FE4B5D8 = result;
  gRemoteCapsSet = 1;
  return result;
}

+ (id)getRemoteHostCapabilities
{
  v4[4] = *MEMORY[0x277D85DE8];
  if (gRemoteCapsSet != 1)
  {
    return 0;
  }

  v4[0] = gRemoteCapabilities;
  v3[0] = @"HostID";
  v3[1] = @"HostVersion";
  v4[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(gRemoteCapabilities)];
  v4[2] = qword_27FE4B5D0;
  v3[2] = @"HostProperties";
  v3[3] = @"kFxHostPropertiesKey_GLContextPixelFormatAttributes";
  v4[3] = [MEMORY[0x277CBEA60] array];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
}

- (id)hostID
{
  hostCapPriv = self->_hostCapPriv;
  var2 = hostCapPriv->var2;
  if (var2)
  {
    if ([var2 valueForKey:@"UsingMotionRendering"])
    {
      return @"com.apple.Motion";
    }

    hostCapPriv = self->_hostCapPriv;
  }

  return hostCapPriv->var0;
}

- (BOOL)hostIsMotion
{
  hostCapPriv = self->_hostCapPriv;
  var2 = hostCapPriv->var2;
  if (var2)
  {
    v5 = [var2 valueForKey:@"UsingMotionRendering"];
    if (v5)
    {

      return [v5 BOOLValue];
    }

    hostCapPriv = self->_hostCapPriv;
  }

  var0 = hostCapPriv->var0;

  return [var0 isEqualToString:@"com.apple.motion"];
}

- (BOOL)hostIsFCP
{
  hostCapPriv = self->_hostCapPriv;
  var2 = hostCapPriv->var2;
  if (var2)
  {
    v5 = [var2 valueForKey:@"UsingMotionRendering"];
    if (v5)
    {
      return [v5 BOOLValue] ^ 1;
    }

    hostCapPriv = self->_hostCapPriv;
  }

  var0 = hostCapPriv->var0;

  return [var0 hasPrefix:@"com.apple.FinalCut"];
}

- (BOOL)hostIsFCE
{
  hostCapPriv = self->_hostCapPriv;
  var2 = hostCapPriv->var2;
  if (var2)
  {
    v5 = [var2 valueForKey:@"UsingMotionRendering"];
    if (v5)
    {
      return [v5 BOOLValue] ^ 1;
    }

    hostCapPriv = self->_hostCapPriv;
  }

  var0 = hostCapPriv->var0;

  return [var0 isEqualToString:@"com.apple.FinalCutExpress"];
}

- (unsigned)hostVersionNumber
{
  hostCapPriv = self->_hostCapPriv;
  var2 = hostCapPriv->var2;
  if (var2)
  {
    v5 = [var2 valueForKey:@"HostVersion"];
    if (v5)
    {
      intValue = [v5 intValue];
      hostCapPriv = self->_hostCapPriv;
      hostCapPriv->var1 = intValue;
    }

    else
    {
      hostCapPriv = self->_hostCapPriv;
    }
  }

  return hostCapPriv->var1;
}

- (BOOL)formatsFloatRGBABitmapsAsARGB
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"FormatsFloatRGBABitmapsAsARGB"]) != 0)
  {

    return [v4 BOOLValue];
  }

  else
  {

    return [(FxHostCapabilities *)self hostIsMotion];
  }
}

- (BOOL)supportsHiddenParameters
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"SupportsHiddenParameters"]) != 0)
  {

    return [v4 BOOLValue];
  }

  else if ([(FxHostCapabilities *)self hostIsFCE])
  {
    return 0;
  }

  else
  {
    return ![(FxHostCapabilities *)self hostIsFCP];
  }
}

- (BOOL)supportsDisabledParameters
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"SupportsDisabledParameters"]) != 0)
  {

    return [v4 BOOLValue];
  }

  else if ([(FxHostCapabilities *)self hostIsFCE])
  {
    return 0;
  }

  else
  {
    return ![(FxHostCapabilities *)self hostIsFCP];
  }
}

- (BOOL)supportsGroupParameters
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"SupportsGroupParameters"]) != 0)
  {

    return [v4 BOOLValue];
  }

  else
  {

    return [(FxHostCapabilities *)self hostIsMotion];
  }
}

- (BOOL)notifiesParameterChangedForGenerators
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"NotifiesParameterChangedForGenerators"]) != 0)
  {

    return [v4 BOOLValue];
  }

  else if ([(FxHostCapabilities *)self hostIsFCE])
  {
    return 0;
  }

  else
  {
    return ![(FxHostCapabilities *)self hostIsFCP];
  }
}

- (BOOL)parameterChangedUsableForAllParameters
{
  var2 = self->_hostCapPriv->var2;
  if (!var2)
  {
    return ![(FxHostCapabilities *)self hostIsMotion];
  }

  v4 = [var2 valueForKey:@"ParameterChangedUsableForAllParameters"];
  if (!v4)
  {
    return ![(FxHostCapabilities *)self hostIsMotion];
  }

  return [v4 BOOLValue];
}

- (BOOL)upscalesFields
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"UpscalesFields"]) != 0)
  {

    return [v4 BOOLValue];
  }

  else
  {

    return [(FxHostCapabilities *)self hostIsMotion];
  }
}

- (BOOL)supportsTemporalBitmaps
{
  var2 = self->_hostCapPriv->var2;
  if (!var2)
  {
    return ![(FxHostCapabilities *)self hostIsMotion];
  }

  v4 = [var2 valueForKey:@"SupportsTemporalBitmaps"];
  if (!v4)
  {
    return ![(FxHostCapabilities *)self hostIsMotion];
  }

  return [v4 BOOLValue];
}

- (unint64_t)timeBase
{
  var2 = self->_hostCapPriv->var2;
  if (var2 && (v4 = [var2 valueForKey:@"TimeBase"]) != 0)
  {
    return [v4 intValue];
  }

  else
  {
    return [(FxHostCapabilities *)self hostIsMotion]^ 1;
  }
}

- (id)glContextPixelFormatAttributes
{
  hostCapPriv = self->_hostCapPriv;
  if (!hostCapPriv->var3)
  {
    var2 = hostCapPriv->var2;
    if (var2)
    {
      self->_hostCapPriv->var3 = [var2 valueForKey:@"kFxHostPropertiesKey_GLContextPixelFormatAttributes"];
    }

    else if ([(FxHostCapabilities *)self hostIsMotion])
    {
      [(FxHostCapabilities *)self hostVersionNumber];
    }
  }

  return self->_hostCapPriv->var3;
}

@end