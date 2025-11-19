@interface SUTapToRadar
+ (id)_stringOfClassification:(int64_t)a3;
+ (id)_stringOfReproducibility:(int64_t)a3;
- (SUTapToRadar)init;
- (void)file;
@end

@implementation SUTapToRadar

- (SUTapToRadar)init
{
  v7.receiver = self;
  v7.super_class = SUTapToRadar;
  v2 = [(SUTapToRadar *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_classification = 0;
    v2->_reproducibility = 0;
    componentName = v2->_componentName;
    v2->_componentName = @"SoftwareUpdateServices";

    componentVersion = v3->_componentVersion;
    v3->_componentVersion = @"all";

    v3->_componentID = 435644;
  }

  return v3;
}

+ (id)_stringOfClassification:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_279CACA98[a3 - 1];
  }
}

+ (id)_stringOfReproducibility:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_279CACAE8[a3 - 1];
  }
}

- (void)file
{
  if (MGGetBoolAnswer())
  {
    v18 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"tap-to-radar://new?"];
    if (self->_title)
    {
      [v18 appendFormat:@"Title=%@&", self->_title];
    }

    if (self->_message)
    {
      [v18 appendFormat:@"Description=%@&", self->_message];
    }

    v10 = [SUTapToRadar _stringOfClassification:self->_classification];
    v11 = v10;
    if (v10)
    {
      [v18 appendFormat:@"Classification=%@&", v10];
    }

    v12 = [SUTapToRadar _stringOfReproducibility:self->_reproducibility];
    v13 = v12;
    if (v12)
    {
      [v18 appendFormat:@"Reproducibility=%@&", v12];
    }

    componentName = self->_componentName;
    if (componentName)
    {
      if (self->_componentVersion)
      {
        componentID = self->_componentID;
        if (componentID)
        {
          [v18 appendFormat:@"ComponentName=%@&ComponentVersion=%@&ComponentID=%ld", componentName, self->_componentVersion, componentID];
        }
      }
    }

    v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v18];
    v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v17 openURL:v16 configuration:0 completionHandler:0];
  }

  else
  {
    SULogInfo(@"%s: Shouldn't try to file a radar on an external device...", v3, v4, v5, v6, v7, v8, v9, "[SUTapToRadar file]");
  }
}

@end