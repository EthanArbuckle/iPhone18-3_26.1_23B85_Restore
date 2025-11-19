@interface UIDevice
@end

@implementation UIDevice

uint64_t __45__UIDevice_SFAdditions__sf_isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  sf_isInternalInstall___internalInstall = result;
  return result;
}

uint64_t __44__UIDevice_SFAdditions__sf_isCarrierInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  sf_isCarrierInstall___carrierInstall = result;
  return result;
}

uint64_t __55__UIDevice_SFAdditions__sf_isChinaRegionCellularDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  sf_isChinaRegionCellularDevice___greenTea = result;
  return result;
}

void __40__UIDevice_SFAdditions__sf_configString__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      Length = CFDataGetLength(v1);
      v5 = malloc_type_malloc(Length + 1, 0xB234587BuLL);
      bzero(v5, Length + 1);
      memcpy(v5, BytePtr, Length);
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      v7 = sf_configString___config;
      sf_configString___config = v6;

      free(v5);
    }
  }
}

void __47__UIDevice_SFAdditions__sf_deviceSubTypeString__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v5 = v0;
    v1 = [v0 objectForKey:@"ArtworkDeviceSubType"];
    v2 = [v1 integerValue];

    v3 = sf_deviceSubTypeString_deviceSubTypeString;
    if (v2 <= 2359)
    {
      if (v2 > 1791)
      {
        switch(v2)
        {
          case 1792:
            v4 = @"Retina6InchFull";
            goto LABEL_33;
          case 2224:
            v4 = @"Retina11Inch";
            goto LABEL_33;
          case 2340:
            v4 = @"3xRetina5.4InchFull";
            goto LABEL_33;
        }
      }

      else
      {
        switch(v2)
        {
          case 568:
            v4 = @"Retina4Inch";
            goto LABEL_33;
          case 569:
            v4 = @"Retina4.7Inch";
            goto LABEL_33;
          case 570:
            v4 = @"3xRetina5.5Inch";
            goto LABEL_33;
        }
      }
    }

    else if (v2 <= 2531)
    {
      switch(v2)
      {
        case 2360:
          v4 = @"Retina10.9InchFull";
          goto LABEL_33;
        case 2388:
          v4 = @"Retina11InchFull";
          goto LABEL_33;
        case 2436:
          v4 = @"3xRetina5.8InchFull";
          goto LABEL_33;
      }
    }

    else if (v2 > 2731)
    {
      if (v2 == 2732)
      {
        v4 = @"Retina12Inch";
        goto LABEL_33;
      }

      if (v2 == 2778)
      {
        v4 = @"3xRetina6.6InchFull";
        goto LABEL_33;
      }
    }

    else
    {
      if (v2 == 2532)
      {
        v4 = @"3xRetina6InchFull";
        goto LABEL_33;
      }

      if (v2 == 2688)
      {
        v4 = @"3xRetina6.5InchFull";
LABEL_33:
        sf_deviceSubTypeString_deviceSubTypeString = v4;

        v0 = v5;
        goto LABEL_34;
      }
    }

    v4 = &stru_287749F98;
    goto LABEL_33;
  }

LABEL_34:
}

void __45__UIDevice_SFAdditions__sf_screenClassString__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"main-screen-width";
  v3[1] = @"main-screen-height";
  v3[2] = @"main-screen-scale";
  v3[3] = @"main-screen-pitch";
  [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v0 = MGCopyMultipleAnswers();
  v1 = sf_screenClassString_screenClass;
  sf_screenClassString_screenClass = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __38__UIDevice_SFAdditions__sf_regionCode__block_invoke()
{
  sf_regionCode___regionCode = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

void __53__UIDevice_SFAdditions__sf_deviceSupportsDisplayZoom__block_invoke()
{
  v3 = MGCopyAnswer();
  v0 = [v3 objectForKeyedSubscript:@"default"];
  v1 = [v3 objectForKeyedSubscript:@"zoomed"];
  v2 = [v0 count] == 4 && objc_msgSend(v1, "count") == 4;
  sf_deviceSupportsDisplayZoom__supportsDisplayZoom = v2;
}

void __47__UIDevice_SFAdditions__sf_serialNumberQRImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sf_serialNumber];
  v2 = [v1 dataUsingEncoding:5];
  v3 = [MEMORY[0x277CBF750] QRCodeGenerator];
  [v3 setMessage:v2];
  [v3 setCorrectionLevel:@"H"];
  v4 = [v3 outputImage];
  [v4 extent];
  v18 = CGRectIntegral(v17);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v9 = 140.0 / CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v10 = CGRectGetHeight(v19);
  CGAffineTransformMakeScale(&v16, v9, 140.0 / v10);
  v11 = [v4 imageByApplyingTransform:&v16];
  v12 = [MEMORY[0x277CBF740] context];
  v13 = objc_alloc(MEMORY[0x277D755B8]);
  [v11 extent];
  v14 = [v13 initWithCGImage:{objc_msgSend(v12, "createCGImage:fromRect:", v11)}];
  v15 = sf_serialNumberQRImage_qrCodeImageByTransform;
  sf_serialNumberQRImage_qrCodeImageByTransform = v14;
}

@end