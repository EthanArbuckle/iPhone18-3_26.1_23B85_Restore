@interface PAELUTFile
- (BOOL)addParameters;
- (HGRef<HGBitmap>)lutBitmapForFilter:(int)filter lutDimensions:(int *)dimensions;
- (PAELUTFile)initWithAPIManager:(id)manager;
@end

@implementation PAELUTFile

- (PAELUTFile)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAELUTFile;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = -1;
  }

  return result;
}

- (BOOL)addParameters
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 localizedStringForKey:@"LUT File::LUT File" value:0 table:0];

    LOBYTE(v4) = [v5 addStringParameterWithName:v6 parmId:101 defaultValue:&stru_2872E16E0 parmFlags:3];
  }

  return v4;
}

- (HGRef<HGBitmap>)lutBitmapForFilter:(int)filter lutDimensions:(int *)dimensions
{
  v6 = *&filter;
  v8 = v4;
  v9 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735B780];
  v10.m_Obj = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735AE68];
  if (v9)
  {
    v11 = v10.m_Obj == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    m_Obj = v10.m_Obj;
    v18 = 0;
    [v9 getStringParameterValue:&v18 fromParm:101];
    uRLForMediaFolder = [(HGBitmap *)m_Obj URLForMediaFolder];
    v14 = [uRLForMediaFolder URLByAppendingPathComponent:v18];
    pathExtension = [v14 pathExtension];
    if ([pathExtension isEqualToString:@"cube"])
    {
      v6 = 30;
      v16 = &OBJC_IVAR___PAEPhotosFilters_LUTCubeURL;
    }

    else if ([pathExtension isEqualToString:@"scube"])
    {
      v6 = 31;
      v16 = &OBJC_IVAR___PAEPhotosFilters_LUTScubeURL;
    }

    else
    {
      if (![pathExtension isEqualToString:@"ccube"])
      {
LABEL_14:
        v17.receiver = self;
        v17.super_class = PAELUTFile;
        return [(PAEPhotosFilters *)&v17 lutBitmapForFilter:v6 lutDimensions:dimensions];
      }

      v6 = 32;
      v16 = &OBJC_IVAR___PAEPhotosFilters_LUTCcubeURL;
    }

    *(&self->super.super.super.super.isa + *v16) = v14;
    goto LABEL_14;
  }

  *v8 = 0;
  return v10;
}

@end