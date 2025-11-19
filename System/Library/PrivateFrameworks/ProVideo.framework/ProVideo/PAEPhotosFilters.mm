@interface PAEPhotosFilters
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)read:(id)a3 red:(float *)a4 green:(float *)a5 blue:(float *)a6;
- (BOOL)readCubeLine:(id)a3 intoLUTEntries:(void *)a4;
- (HGRef<HGBitmap>)lutBitmapForFilter:(int)a3 lutDimensions:(int *)a4;
- (PAEPhotosFilters)initWithAPIManager:(id)a3;
- (id)LUTFromCache:(int)a3 atPath:(id)a4;
- (id)lutFromCcubeFile:(id)a3;
- (id)lutFromCubeFile:(id)a3;
- (id)lutFromScubeFile:(id)a3;
- (id)properties;
- (id)readCubeData:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation PAEPhotosFilters

- (PAEPhotosFilters)initWithAPIManager:(id)a3
{
  v5.receiver = self;
  v5.super_class = PAEPhotosFilters;
  v3 = [(PAESharedDefaultBase *)&v5 initWithAPIManager:a3];
  if (v3)
  {
    v3->LUTcache = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v3->LUTCubeURL = 0;
    v3->LUTScubeURL = 0;
    v3->LUTCcubeURL = 0;
    v3->whichFilter = -1;
  }

  return v3;
}

- (void)dealloc
{
  p_cacheMutex = &self->cacheMutex;
  PCMutex::lock(&self->cacheMutex);
  v5 = 1;

  self->LUTCubeURL = 0;
  self->LUTScubeURL = 0;

  self->LUTCcubeURL = 0;
  PCMutex::unlock(&self->cacheMutex);
  v3.receiver = self;
  v3.super_class = PAEPhotosFilters;
  [(PAESharedDefaultBase *)&v3 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"PixelTransformSupport", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEPhotosFilters;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"PhotosFilter::Filter" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"PhotosFilter::Entries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
  }

  return v3 != 0;
}

- (BOOL)read:(id)a3 red:(float *)a4 green:(float *)a5 blue:(float *)a6
{
  if (![a3 scanFloat:a4] || !objc_msgSend(a3, "scanFloat:", a5))
  {
    return 0;
  }

  return [a3 scanFloat:a6];
}

- (BOOL)readCubeLine:(id)a3 intoLUTEntries:(void *)a4
{
  v6 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  [v6 setCaseSensitive:0];
  if ([v6 scanString:@"TITLE " intoString:0])
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  if ([v6 scanString:@"DOMAIN_MIN " intoString:0] || objc_msgSend(v6, "scanString:intoString:", @"DOMAIN_MAX ", 0))
  {
    v8 = [(PAEPhotosFilters *)self read:v6 red:&v15 green:&v15 + 4 blue:&v15 + 8];
LABEL_6:
    LOBYTE(v7) = v8;
    return v7;
  }

  if ([v6 scanString:@"LUT_1D_SIZE " intoString:0] || objc_msgSend(v6, "scanString:intoString:", @"LUT_3D_SIZE ", 0))
  {
    *&v15 = 0;
    v8 = [v6 scanInteger:&v15];
    goto LABEL_6;
  }

  v15 = xmmword_2603427D0;
  v7 = [(PAEPhotosFilters *)self read:v6 red:&v15 green:&v15 + 4 blue:&v15 + 8];
  if (v7)
  {
    if (*&v15 >= 0.0)
    {
      if (*&v15 <= 1.0)
      {
        v10 = (*&v15 * 255.0);
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = 0;
    }

    LOBYTE(v14) = v10;
    if (*(&v15 + 1) >= 0.0)
    {
      if (*(&v15 + 1) <= 1.0)
      {
        v11 = (*(&v15 + 1) * 255.0);
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      v11 = 0;
    }

    BYTE1(v14) = v11;
    if (*(&v15 + 2) >= 0.0)
    {
      if (*(&v15 + 2) <= 1.0)
      {
        v12 = (*(&v15 + 2) * 255.0);
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v12 = 0;
    }

    BYTE2(v14) = v12;
    if (*(&v15 + 3) >= 0.0)
    {
      if (*(&v15 + 3) <= 1.0)
      {
        v13 = (*(&v15 + 3) * 255.0);
      }

      else
      {
        LOBYTE(v13) = -1;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    HIBYTE(v14) = v13;
    std::vector<RGBA8Pixel>::push_back[abi:ne200100](a4, &v14);
  }

  return v7;
}

- (id)readCubeData:(id)a3 error:(id *)a4
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a3 encoding:4];
  v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
  v8 = [MEMORY[0x277CCA900] newlineCharacterSet];
  __p = 0;
  v20 = 0;
  v9 = 1;
  v21 = 0;
  while (1)
  {
    if ([v7 isAtEnd])
    {

      v10 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v20 - __p];
      goto LABEL_20;
    }

    if ([v7 scanString:@"#" intoString:0])
    {
      if (([v7 scanUpToCharactersFromSet:v8 intoString:0] & 1) == 0)
      {
        if (a4)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error on line %lu: Invalid comment", v9];
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x277CCA470], 0}];
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Color Cube Converter Domain" code:1 userInfo:v12];
          NSLog(&stru_2872E15A0.isa, v11);
        }

        else
        {
          NSLog(&cfstr_ErrorOnLineLuI.isa, v9);
        }

        goto LABEL_19;
      }

      goto LABEL_8;
    }

    v18 = 0;
    if (([v7 scanUpToCharactersFromSet:v8 intoString:&v18] & 1) == 0)
    {
      break;
    }

    if (![(PAEPhotosFilters *)self readCubeLine:v18 intoLUTEntries:&__p])
    {
      if (a4)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error on line %lu: Unable to parse line: %@.", v9, v18];
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277CCA470], 0}];
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Color Cube Converter Domain" code:3 userInfo:v16];
        NSLog(&stru_2872E15A0.isa, v15);
      }

      else
      {
        NSLog(&cfstr_ErrorOnLineLuU_0.isa, v9, v18);
      }

      goto LABEL_19;
    }

LABEL_8:
    ++v9;
  }

  if (a4)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error on line %lu: Unable to read text", v9];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x277CCA470], 0}];
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Color Cube Converter Domain" code:2 userInfo:v14];
    NSLog(&stru_2872E15A0.isa, v13);
  }

  else
  {
    NSLog(&cfstr_ErrorOnLineLuU.isa, v9);
  }

LABEL_19:

  v10 = 0;
LABEL_20:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v10;
}

- (id)lutFromCubeFile:(id)a3
{
  v7 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  if (v5)
  {
    result = [(PAEPhotosFilters *)self readCubeData:v5 error:&v7];
    if (result)
    {
      return result;
    }

    NSLog(&cfstr_ErrorReadingCu.isa, v7);
  }

  else
  {
    NSLog(&cfstr_ErrorOpeningCu.isa, a3);
  }

  return 0;
}

- (id)lutFromScubeFile:(id)a3
{
  if (a3)
  {
    return [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  }

  else
  {
    return 0;
  }
}

- (id)lutFromCcubeFile:(id)a3
{
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a3];
  v4 = [v3 bytes];
  v5 = [v3 length] >> 4;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v6 = (v4 + 8);
  do
  {
    v7 = *(v6 - 2);
    if (v7 >= 0.0)
    {
      v8 = (v7 * 255.0);
      if (v7 > 1.0)
      {
        LOBYTE(v8) = -1;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v10 = *(v6 - 1);
    v9 = *v6;
    LOBYTE(v15) = v8;
    if (v10 >= 0.0)
    {
      v11 = (v10 * 255.0);
      if (v10 > 1.0)
      {
        LOBYTE(v11) = -1;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    BYTE1(v15) = v11;
    if (v9 >= 0.0)
    {
      if (v9 <= 1.0)
      {
        v12 = (v9 * 255.0);
      }

      else
      {
        LOBYTE(v12) = -1;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    BYTE2(v15) = v12;
    HIBYTE(v15) = -1;
    std::vector<RGBA8Pixel>::push_back[abi:ne200100](&__p, &v15);
    v6 += 4;
    --v5;
  }

  while (v5);
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v17 - __p];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v13;
}

- (id)LUTFromCache:(int)a3 atPath:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:?];
  p_cacheMutex = &self->cacheMutex;
  PCMutex::lock(&self->cacheMutex);
  v37 = 1;
  v8 = self;
  v9 = [(NSMutableDictionary *)self->LUTcache objectForKey:v7];
  v10 = [v9 objectForKey:@"LUTData"];
  v11 = [v9 objectForKey:@"LUT Path"];
  if (v10 && ([v11 isEqualToString:a4] & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a3 > 28)
  {
    switch(a3)
    {
      case 32:
        v18 = [(PAEPhotosFilters *)self lutFromCcubeFile:a4];
        break;
      case 31:
        v18 = [(PAEPhotosFilters *)self lutFromScubeFile:a4];
        break;
      case 30:
        v18 = [(PAEPhotosFilters *)self lutFromCubeFile:a4];
        break;
      default:
        goto LABEL_18;
    }

    v10 = v18;
LABEL_18:
    if (!v10)
    {
      goto LABEL_43;
    }

    goto LABEL_30;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = off_279AA7EF0[a3];
  v14 = [v12 pathForResource:v13 ofType:@"scube"];
  if (a3 >= 16)
  {
    v15 = off_279AA7FD8[a3 - 16];
    v16 = [MEMORY[0x277CBF750] filterWithName:v15];
    if (v16 || -[__CFString hasSuffix:](v15, "hasSuffix:", @"Background") && (v16 = [MEMORY[0x277CBF750] filterWithName:{-[__CFString stringByReplacingOccurrencesOfString:withString:](v15, "stringByReplacingOccurrencesOfString:withString:", @"Background", &stru_2872E16E0)}]) != 0)
    {
      if (a3 == 27)
      {
        [v16 setValue:&unk_28732D430 forKey:*MEMORY[0x277CBFB40]];
      }

      if (objc_opt_respondsToSelector())
      {
        if ([(__CFString *)v15 hasSuffix:@"Background"])
        {
          v17 = [v16 backgroundCubePath];
        }

        else
        {
          v17 = [v16 cubePath];
        }

        v14 = v17;
      }
    }

    else
    {
      NSLog(&cfstr_UnableToFindSc.isa);
    }
  }

  if (!v14)
  {
    v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.motion.contentfilters"];
    if (!v19 || (v14 = [v19 pathForResource:v13 ofType:@"scube"]) == 0)
    {
      NSLog(&cfstr_UnableToLoadLu.isa, v13);
      v14 = 0;
    }
  }

  v10 = [(PAEPhotosFilters *)self lutFromScubeFile:v14];
  if (v10)
  {
LABEL_30:
    v31 = v7;
    if ([(NSMutableDictionary *)self->LUTcache count]>= 2)
    {
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v21 = [(NSMutableDictionary *)self->LUTcache allKeys];
      v22 = [v21 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v22)
      {
        v29 = v10;
        v30 = a4;
        v23 = 0;
        v24 = *v33;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v33 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v32 + 1) + 8 * i);
            v27 = [-[NSMutableDictionary objectForKey:](v8->LUTcache objectForKey:{v26), "objectForKey:", @"CacheTime"}];
            if ([v27 compare:v20] == -1)
            {
              v23 = v26;
              v20 = v27;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v22);
        v10 = v29;
        a4 = v30;
        if (v23)
        {
          [(NSMutableDictionary *)v8->LUTcache removeObjectForKey:v23];
        }
      }
    }

    -[NSMutableDictionary setObject:forKey:](v8->LUTcache, "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"LUTData", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.0), @"CacheTime", a4, @"LUT Path", 0}], v31);
  }

LABEL_43:
  if (p_cacheMutex && v37 == 1)
  {
    PCMutex::unlock(p_cacheMutex);
  }

  return v10;
}

- (HGRef<HGBitmap>)lutBitmapForFilter:(int)a3 lutDimensions:(int *)a4
{
  v6 = *&a3;
  v8 = v4;
  *v4 = 0;
  if ((a3 - 30) > 2)
  {
    v9 = &stru_2872E16E0;
  }

  else
  {
    v9 = [*(&self->super.super.super.isa + *off_279AA8040[a3 - 30]) path];
  }

  v10 = [(PAEPhotosFilters *)self LUTFromCache:v6 atPath:v9];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 length];
    v13 = cbrt((v12 >> 2));
    *a4 = v13;
    v14 = HGObject::operator new(0x80uLL);
    v10 = HGBitmap::HGBitmap(v14, 0, (v13 * v13 + 1) | ((v13 + 1) << 32), 24);
    if (v14)
    {
      *v8 = v14;
    }

    v15 = *a4;
    v16 = 4 * v15 * v15;
    if (v14[8] == v16)
    {
      v17 = v14[10];
      v18 = [v11 bytes];

      return memcpy(v17, v18, v12);
    }

    else if (v15 >= 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = v16;
      do
      {
        v10 = memcpy((v14[10] + v14[8] * v20++), ([v11 bytes] + v19), v21);
        v19 += v21;
      }

      while (v20 < *a4);
    }
  }

  return v10;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v8)
  {
    whichFilter = self->whichFilter;
    if (whichFilter == -1)
    {
      [v8 getIntValue:&whichFilter fromParm:1 atFxTime:a5->var0.var1];
    }

    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v16 = 0;
    }

    v15 = 32;
    v14 = 0;
    if (whichFilter == 29)
    {
      v9 = *&a5->var2;
      v10 = *&a5->var4;
      v18[0] = *&a5->var0.var0;
      v18[1] = v9;
      v18[2] = v10;
      [(PAESharedDefaultBase *)self getHeliumImage:&v14 layerOffsetX:0 layerOffsetY:0 requestInfo:v18 fromParm:2 atTime:a5->var0.var1];
      v15 = [v14 height];
      v11 = 27;
    }

    else
    {
      [PAEPhotosFilters lutBitmapForFilter:"lutBitmapForFilter:lutDimensions:" lutDimensions:?];
      v11 = 24;
    }

    v12 = HGObject::operator new(0x210uLL);
    HGApply3DLUT::HGApply3DLUT(v12, v15, v11, 1, 0, 1, 1, 1, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0);
  }

  return 0;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end