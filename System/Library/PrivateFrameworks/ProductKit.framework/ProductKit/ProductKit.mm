id framework_log()
{
  if (framework_log_onceToken[0] != -1)
  {
    framework_log_cold_1();
  }

  v1 = framework_log___logger;

  return v1;
}

uint64_t __framework_log_block_invoke()
{
  framework_log___logger = os_log_create("com.apple.ProductKit", "Framework");

  return MEMORY[0x2821F96F8]();
}

id PKAdjustmentFiltersForAssetTypeAndURL(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:0];

  if (v5)
  {
    if (a1 == 1 || a1 == 2)
    {
      CFDictionaryGetTypeID();
      v6 = CFDictionaryGetTypedValue();
    }

    else
    {
      v6 = 0;
    }

    v26 = 0;
    CFDictionaryGetDouble();
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x277CD9EA0]);
    v10 = [v9 initWithType:*MEMORY[0x277CDA2C0]];
    v18 = v8;
    v19 = *(MEMORY[0x277CD9DA0] + 4);
    v20 = *(MEMORY[0x277CD9DA0] + 20);
    v21 = v8;
    v22 = *(MEMORY[0x277CD9DA0] + 28);
    v23 = *(MEMORY[0x277CD9DA0] + 44);
    v24 = v8;
    *v25 = *(MEMORY[0x277CD9DA0] + 52);
    *&v25[12] = *(MEMORY[0x277CD9DA0] + 64);
    v11 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v18];
    [v10 setValue:v11 forKey:@"inputColorMatrix"];

    [v4 addObject:v10];
    CFDictionaryGetDouble();
    if (!v26)
    {
      v13 = v12;
      v14 = objc_alloc(MEMORY[0x277CD9EA0]);
      v15 = [v14 initWithType:*MEMORY[0x277CDA270]];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v15 setValue:v16 forKey:@"inputAmount"];

      [v4 addObject:v15];
    }
  }

  return v4;
}

id PKPlaybackTimeRangesFromFeaturesTimeURL(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v1 error:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      v19 = 0;
      CFDictionaryGetDouble();
      if (v19)
      {
        break;
      }

      v10 = v9;
      CFDictionaryGetDouble();
      if (v19)
      {
        break;
      }

      v12 = v11;
      memset(&v18, 0, sizeof(v18));
      CMTimeMakeWithSeconds(&v16.start, v10, 1000);
      CMTimeMakeWithSeconds(&duration, v12, 1000);
      CMTimeRangeMake(&v18, &v16.start, &duration);
      v16 = v18;
      v13 = [MEMORY[0x277CCAE60] valueWithCMTimeRange:&v16];
      [v2 addObject:v13];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_260E06968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

uint64_t iosmacHardware.Model.init(rawValue:)@<X0>(__int16 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE53E80, &qword_260E6AB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_260E6AB80;
  *(v2 + 32) = "iMac13,1";
  *(v2 + 40) = 8;
  *(v2 + 48) = 2;
  *(v2 + 56) = "iMac13,2";
  *(v2 + 64) = 8;
  *(v2 + 72) = 2;
  *(v2 + 80) = "iMac13,3";
  *(v2 + 88) = 8;
  *(v2 + 96) = 2;
  *(v2 + 104) = "iMac14,1";
  *(v2 + 112) = 8;
  *(v2 + 120) = 2;
  *(v2 + 128) = "iMac14,2";
  *(v2 + 136) = 8;
  *(v2 + 144) = 2;
  *(v2 + 152) = "iMac14,3";
  *(v2 + 160) = 8;
  *(v2 + 168) = 2;
  *(v2 + 176) = "iMac14,4";
  *(v2 + 184) = 8;
  *(v2 + 192) = 2;
  *(v2 + 200) = "iMac15,1";
  *(v2 + 208) = 8;
  *(v2 + 216) = 2;
  *(v2 + 224) = "iMac16,1";
  *(v2 + 232) = 8;
  *(v2 + 240) = 2;
  *(v2 + 248) = "iMac16,2";
  *(v2 + 256) = 8;
  *(v2 + 264) = 2;
  *(v2 + 272) = "iMac17,1";
  *(v2 + 280) = 8;
  *(v2 + 288) = 2;
  *(v2 + 296) = "iMac18,1";
  *(v2 + 304) = 8;
  *(v2 + 312) = 2;
  *(v2 + 320) = "iMac18,2";
  *(v2 + 328) = 8;
  *(v2 + 336) = 2;
  *(v2 + 344) = "iMac18,3";
  *(v2 + 352) = 8;
  *(v2 + 360) = 2;
  *(v2 + 368) = "iMac19,1";
  *(v2 + 376) = 8;
  *(v2 + 384) = 2;
  *(v2 + 392) = "iMac19,2";
  *(v2 + 400) = 8;
  *(v2 + 408) = 2;
  *(v2 + 416) = "iMac20,1";
  *(v2 + 424) = 8;
  *(v2 + 432) = 2;
  *(v2 + 440) = "iMac20,2";
  *(v2 + 448) = 8;
  *(v2 + 456) = 2;
  *(v2 + 464) = "iMac21,1";
  *(v2 + 472) = 8;
  *(v2 + 480) = 2;
  *(v2 + 488) = "Mac15,4";
  *(v2 + 496) = 7;
  *(v2 + 504) = 2;
  *(v2 + 512) = "Mac15,5";
  *(v2 + 520) = 7;
  *(v2 + 528) = 2;
  *(v2 + 536) = "iMac21,2";
  *(v2 + 544) = 8;
  *(v2 + 552) = 2;
  *(v2 + 560) = "iMacPro1,1";
  *(v2 + 568) = 10;
  *(v2 + 576) = 2;
  *(v2 + 584) = "iPad1,1";
  *(v2 + 592) = 7;
  *(v2 + 600) = 2;
  *(v2 + 608) = "iPad2,1";
  *(v2 + 616) = 7;
  *(v2 + 624) = 2;
  *(v2 + 632) = "iPad2,2";
  *(v2 + 640) = 7;
  *(v2 + 648) = 2;
  *(v2 + 656) = "iPad2,3";
  *(v2 + 664) = 7;
  *(v2 + 672) = 2;
  *(v2 + 680) = "iPad2,4";
  *(v2 + 688) = 7;
  *(v2 + 696) = 2;
  *(v2 + 704) = "iPad2,5";
  *(v2 + 712) = 7;
  *(v2 + 720) = 2;
  *(v2 + 728) = "iPad2,6";
  *(v2 + 736) = 7;
  *(v2 + 744) = 2;
  *(v2 + 752) = "iPad2,7";
  *(v2 + 760) = 7;
  *(v2 + 768) = 2;
  *(v2 + 776) = "iPad3,1";
  *(v2 + 784) = 7;
  *(v2 + 792) = 2;
  *(v2 + 800) = "iPad3,2";
  *(v2 + 808) = 7;
  *(v2 + 816) = 2;
  *(v2 + 824) = "iPad3,3";
  *(v2 + 832) = 7;
  *(v2 + 840) = 2;
  *(v2 + 848) = "iPad3,4";
  *(v2 + 856) = 7;
  *(v2 + 864) = 2;
  *(v2 + 872) = "iPad3,5";
  *(v2 + 880) = 7;
  *(v2 + 888) = 2;
  *(v2 + 896) = "iPad3,6";
  *(v2 + 904) = 7;
  *(v2 + 912) = 2;
  *(v2 + 920) = "iPad4,1";
  *(v2 + 928) = 7;
  *(v2 + 936) = 2;
  *(v2 + 944) = "iPad4,2";
  *(v2 + 952) = 7;
  *(v2 + 960) = 2;
  *(v2 + 968) = "iPad4,3";
  *(v2 + 976) = 7;
  *(v2 + 984) = 2;
  *(v2 + 992) = "iPad4,4";
  *(v2 + 1000) = 7;
  *(v2 + 1008) = 2;
  *(v2 + 1016) = "iPad4,5";
  *(v2 + 1024) = 7;
  *(v2 + 1032) = 2;
  *(v2 + 1040) = "iPad4,6";
  *(v2 + 1048) = 7;
  *(v2 + 1056) = 2;
  *(v2 + 1064) = "iPad4,7";
  *(v2 + 1072) = 7;
  *(v2 + 1080) = 2;
  *(v2 + 1088) = "iPad4,8";
  *(v2 + 1096) = 7;
  *(v2 + 1104) = 2;
  *(v2 + 1112) = "iPad4,9";
  *(v2 + 1120) = 7;
  *(v2 + 1128) = 2;
  *(v2 + 1136) = "iPad5,1";
  *(v2 + 1144) = 7;
  *(v2 + 1152) = 2;
  *(v2 + 1160) = "iPad5,2";
  *(v2 + 1168) = 7;
  *(v2 + 1176) = 2;
  *(v2 + 1184) = "iPad5,3";
  *(v2 + 1192) = 7;
  *(v2 + 1200) = 2;
  *(v2 + 1208) = "iPad5,4";
  *(v2 + 1216) = 7;
  *(v2 + 1224) = 2;
  *(v2 + 1232) = "iPad6,3";
  *(v2 + 1240) = 7;
  *(v2 + 1248) = 2;
  *(v2 + 1256) = "iPad6,4";
  *(v2 + 1264) = 7;
  *(v2 + 1272) = 2;
  *(v2 + 1280) = "iPad6,7";
  *(v2 + 1288) = 7;
  *(v2 + 1296) = 2;
  *(v2 + 1304) = "iPad6,8";
  *(v2 + 1312) = 7;
  *(v2 + 1320) = 2;
  *(v2 + 1328) = "iPad6,11";
  *(v2 + 1336) = 8;
  *(v2 + 1344) = 2;
  *(v2 + 1352) = "iPad6,12";
  *(v2 + 1360) = 8;
  *(v2 + 1368) = 2;
  *(v2 + 1376) = "iPad7,1";
  *(v2 + 1384) = 7;
  *(v2 + 1392) = 2;
  *(v2 + 1400) = "iPad7,2";
  *(v2 + 1408) = 7;
  *(v2 + 1416) = 2;
  *(v2 + 1424) = "iPad7,3";
  *(v2 + 1432) = 7;
  *(v2 + 1440) = 2;
  *(v2 + 1448) = "iPad7,4";
  *(v2 + 1456) = 7;
  *(v2 + 1464) = 2;
  *(v2 + 1472) = "iPad7,5";
  *(v2 + 1480) = 7;
  *(v2 + 1488) = 2;
  *(v2 + 1496) = "iPad7,6";
  *(v2 + 1504) = 7;
  *(v2 + 1512) = 2;
  *(v2 + 1520) = "iPad7,11";
  *(v2 + 1528) = 8;
  *(v2 + 1536) = 2;
  *(v2 + 1544) = "iPad7,12";
  *(v2 + 1552) = 8;
  *(v2 + 1560) = 2;
  *(v2 + 1568) = "iPad8,1";
  *(v2 + 1576) = 7;
  *(v2 + 1584) = 2;
  *(v2 + 1592) = "iPad8,2";
  *(v2 + 1600) = 7;
  *(v2 + 1608) = 2;
  *(v2 + 1616) = "iPad8,3";
  *(v2 + 1624) = 7;
  *(v2 + 1632) = 2;
  *(v2 + 1640) = "iPad8,4";
  *(v2 + 1648) = 7;
  *(v2 + 1656) = 2;
  *(v2 + 1664) = "iPad8,5";
  *(v2 + 1672) = 7;
  *(v2 + 1680) = 2;
  *(v2 + 1688) = "iPad8,6";
  *(v2 + 1696) = 7;
  *(v2 + 1712) = "iPad8,7";
  *(v2 + 1736) = "iPad8,8";
  *(v2 + 1760) = "iPad8,9";
  *(v2 + 1784) = "iPad8,10";
  *(v2 + 1808) = "iPad8,11";
  *(v2 + 1832) = "iPad8,12";
  *(v2 + 1856) = "iPad11,1";
  *(v2 + 1880) = "iPad11,2";
  *(v2 + 1904) = "iPad11,3";
  *(v2 + 1928) = "iPad11,4";
  *(v2 + 1952) = "iPad11,6";
  *(v2 + 1976) = "iPad11,7";
  *(v2 + 2000) = "iPad12,1";
  *(v2 + 2024) = "iPad12,2";
  *(v2 + 2288) = "iPad13,16";
  *(v2 + 2384) = "iPad14,1";
  *(v2 + 2480) = "iPad14,5";
  *(v2 + 2576) = "iPad16,5";
  *(v2 + 2672) = "iPad14,10";
  *(v2 + 2768) = "iPad15,3";
  *(v2 + 2864) = "iPad15,7";
  *(v2 + 2960) = "iPhone2,1";
  *(v2 + 3056) = "iPhone4,1";
  *(v2 + 3152) = "iPhone5,4";
  *(v2 + 3248) = "iPhone7,2";
  *(v2 + 3344) = "iPhone9,1";
  *(v2 + 3584) = "iPhone11,2";
  *(v2 + 3680) = "iPhone12,1";
  *(v2 + 3776) = "iPhone13,1";
  *(v2 + 3872) = "iPhone14,2";
  *(v2 + 3968) = "iPhone14,6";
  *(v2 + 4064) = "iPhone15,3";
  *(v2 + 4160) = "iPhone16,2";
  *(v2 + 4256) = "iPhone17,2";
  *(v2 + 4352) = "iPod3,1";
  *(v2 + 4448) = "iPod9,1";
  *(v2 + 4544) = "Mac14,14";
  *(v2 + 4640) = "MacBook8,1";
  *(v2 + 4832) = "MacBookAir7,1";
  *(v2 + 4816) = 13;
  *(v2 + 4824) = 2;
  *(v2 + 1704) = 2;
  *(v2 + 4808) = "MacBookAir6,2";
  *(v2 + 4792) = 13;
  *(v2 + 4800) = 2;
  *(v2 + 4760) = "MacBookAir5,2";
  *(v2 + 4768) = 13;
  *(v2 + 4776) = 2;
  *(v2 + 4784) = "MacBookAir6,1";
  *(v2 + 4728) = 2;
  *(v2 + 4736) = "MacBookAir5,1";
  *(v2 + 4744) = 13;
  *(v2 + 4752) = 2;
  *(v2 + 4672) = 10;
  *(v2 + 4704) = 2;
  *(v2 + 4712) = "MacBookAir3,1";
  *(v2 + 4720) = 13;
  *(v2 + 4680) = 2;
  *(v2 + 4688) = "MacBook10,1";
  *(v2 + 4696) = 11;
  *(v2 + 1720) = 7;
  *(v2 + 4664) = "MacBook9,1";
  *(v2 + 4648) = 10;
  *(v2 + 4656) = 2;
  *(v2 + 4616) = "Mac14,15";
  *(v2 + 4608) = 2;
  *(v2 + 4624) = 8;
  *(v2 + 4632) = 2;
  *(v2 + 4592) = "Mac14,7";
  *(v2 + 4576) = 7;
  *(v2 + 4584) = 2;
  *(v2 + 4600) = 7;
  *(v2 + 1728) = 2;
  *(v2 + 4568) = "Mac14,2";
  *(v2 + 4552) = 8;
  *(v2 + 4560) = 2;
  *(v2 + 4520) = "Mac14,13";
  *(v2 + 4512) = 2;
  *(v2 + 4528) = 8;
  *(v2 + 4536) = 2;
  *(v2 + 4496) = "Mac13,2";
  *(v2 + 4480) = 7;
  *(v2 + 4488) = 2;
  *(v2 + 4504) = 7;
  *(v2 + 1744) = 7;
  *(v2 + 4472) = "Mac13,1";
  *(v2 + 4456) = 7;
  *(v2 + 4464) = 2;
  *(v2 + 4424) = "iPod7,1";
  *(v2 + 4416) = 2;
  *(v2 + 4432) = 7;
  *(v2 + 4440) = 2;
  *(v2 + 4400) = "iPod5,1";
  *(v2 + 4384) = 7;
  *(v2 + 4392) = 2;
  *(v2 + 4408) = 7;
  *(v2 + 1752) = 2;
  *(v2 + 4376) = "iPod4,1";
  *(v2 + 4360) = 7;
  *(v2 + 4368) = 2;
  *(v2 + 4328) = "iPod2,1";
  *(v2 + 4320) = 2;
  *(v2 + 4336) = 7;
  *(v2 + 4344) = 2;
  *(v2 + 4304) = "iPod1,1";
  *(v2 + 4288) = 10;
  *(v2 + 4296) = 2;
  *(v2 + 4312) = 7;
  *(v2 + 1768) = 7;
  *(v2 + 4280) = "iPhone17,5";
  *(v2 + 4264) = 10;
  *(v2 + 4272) = 2;
  *(v2 + 4232) = "iPhone17,1";
  *(v2 + 4224) = 2;
  *(v2 + 4240) = 10;
  *(v2 + 4248) = 2;
  *(v2 + 4208) = "iPhone17,4";
  *(v2 + 4192) = 10;
  *(v2 + 4200) = 2;
  *(v2 + 4216) = 10;
  *(v2 + 1776) = 2;
  *(v2 + 4184) = "iPhone17,3";
  *(v2 + 4168) = 10;
  *(v2 + 4176) = 2;
  *(v2 + 4136) = "iPhone16,1";
  *(v2 + 4128) = 2;
  *(v2 + 4144) = 10;
  *(v2 + 4152) = 2;
  *(v2 + 4112) = "iPhone15,5";
  *(v2 + 4096) = 10;
  *(v2 + 4104) = 2;
  *(v2 + 4120) = 10;
  *(v2 + 1792) = 8;
  *(v2 + 4088) = "iPhone15,4";
  *(v2 + 4072) = 10;
  *(v2 + 4080) = 2;
  *(v2 + 4040) = "iPhone15,2";
  *(v2 + 4032) = 2;
  *(v2 + 4048) = 10;
  *(v2 + 4056) = 2;
  *(v2 + 4016) = "iPhone14,8";
  *(v2 + 4000) = 10;
  *(v2 + 4008) = 2;
  *(v2 + 4024) = 10;
  *(v2 + 1800) = 2;
  *(v2 + 3992) = "iPhone14,7";
  *(v2 + 3976) = 10;
  *(v2 + 3984) = 2;
  *(v2 + 3944) = "iPhone14,5";
  *(v2 + 3936) = 2;
  *(v2 + 3952) = 10;
  *(v2 + 3960) = 2;
  *(v2 + 3920) = "iPhone14,4";
  *(v2 + 3904) = 10;
  *(v2 + 3912) = 2;
  *(v2 + 3928) = 10;
  *(v2 + 1816) = 8;
  *(v2 + 3896) = "iPhone14,3";
  *(v2 + 3880) = 10;
  *(v2 + 3888) = 2;
  *(v2 + 3848) = "iPhone13,4";
  *(v2 + 3840) = 2;
  *(v2 + 3856) = 10;
  *(v2 + 3864) = 2;
  *(v2 + 3824) = "iPhone13,3";
  *(v2 + 3808) = 10;
  *(v2 + 3816) = 2;
  *(v2 + 3832) = 10;
  *(v2 + 1824) = 2;
  *(v2 + 3800) = "iPhone13,2";
  *(v2 + 3784) = 10;
  *(v2 + 3792) = 2;
  *(v2 + 3752) = "iPhone12,8";
  *(v2 + 3744) = 2;
  *(v2 + 3760) = 10;
  *(v2 + 3768) = 2;
  *(v2 + 3728) = "iPhone12,5";
  *(v2 + 3712) = 10;
  *(v2 + 3720) = 2;
  *(v2 + 3736) = 10;
  *(v2 + 1840) = 8;
  *(v2 + 3704) = "iPhone12,3";
  *(v2 + 3688) = 10;
  *(v2 + 3696) = 2;
  *(v2 + 3656) = "iPhone11,8";
  *(v2 + 3648) = 2;
  *(v2 + 3664) = 10;
  *(v2 + 3672) = 2;
  *(v2 + 3632) = "iPhone11,6";
  *(v2 + 3616) = 10;
  *(v2 + 3624) = 2;
  *(v2 + 3640) = 10;
  *(v2 + 1848) = 2;
  *(v2 + 3608) = "iPhone11,4";
  *(v2 + 3592) = 10;
  *(v2 + 3600) = 2;
  *(v2 + 3560) = "iPhone10,6";
  *(v2 + 3552) = 2;
  *(v2 + 3568) = 10;
  *(v2 + 3576) = 2;
  *(v2 + 3536) = "iPhone10,5";
  *(v2 + 3520) = 10;
  *(v2 + 3528) = 2;
  *(v2 + 3544) = 10;
  *(v2 + 1864) = 8;
  *(v2 + 3512) = "iPhone10,4";
  *(v2 + 3496) = 10;
  *(v2 + 3504) = 2;
  *(v2 + 3464) = "iPhone10,2";
  *(v2 + 3472) = 10;
  *(v2 + 3480) = 2;
  *(v2 + 3488) = "iPhone10,3";
  *(v2 + 3440) = "iPhone10,1";
  *(v2 + 3448) = 10;
  *(v2 + 3456) = 2;
  *(v2 + 3416) = "iPhone9,4";
  *(v2 + 3408) = 2;
  *(v2 + 3424) = 9;
  *(v2 + 3432) = 2;
  *(v2 + 3392) = "iPhone9,3";
  *(v2 + 3376) = 9;
  *(v2 + 3384) = 2;
  *(v2 + 3400) = 9;
  *(v2 + 1872) = 2;
  *(v2 + 3368) = "iPhone9,2";
  *(v2 + 3352) = 9;
  *(v2 + 3360) = 2;
  *(v2 + 3320) = "iPhone8,4";
  *(v2 + 3312) = 2;
  *(v2 + 3328) = 9;
  *(v2 + 3336) = 2;
  *(v2 + 3296) = "iPhone8,2";
  *(v2 + 3280) = 9;
  *(v2 + 3288) = 2;
  *(v2 + 3304) = 9;
  *(v2 + 1888) = 8;
  *(v2 + 3272) = "iPhone8,1";
  *(v2 + 3256) = 9;
  *(v2 + 3264) = 2;
  *(v2 + 3224) = "iPhone7,1";
  *(v2 + 3216) = 2;
  *(v2 + 3232) = 9;
  *(v2 + 3240) = 2;
  *(v2 + 3200) = "iPhone6,2";
  *(v2 + 3184) = 9;
  *(v2 + 3192) = 2;
  *(v2 + 3208) = 9;
  *(v2 + 1896) = 2;
  *(v2 + 3176) = "iPhone6,1";
  *(v2 + 3160) = 9;
  *(v2 + 3168) = 2;
  *(v2 + 3128) = "iPhone5,3";
  *(v2 + 3120) = 2;
  *(v2 + 3136) = 9;
  *(v2 + 3144) = 2;
  *(v2 + 3104) = "iPhone5,2";
  *(v2 + 3088) = 9;
  *(v2 + 3096) = 2;
  *(v2 + 3112) = 9;
  *(v2 + 1912) = 8;
  *(v2 + 3080) = "iPhone5,1";
  *(v2 + 3064) = 9;
  *(v2 + 3072) = 2;
  *(v2 + 3032) = "iPhone3,3";
  *(v2 + 3024) = 2;
  *(v2 + 3040) = 9;
  *(v2 + 3048) = 2;
  *(v2 + 3008) = "iPhone3,2";
  *(v2 + 2992) = 9;
  *(v2 + 3000) = 2;
  *(v2 + 3016) = 9;
  *(v2 + 1920) = 2;
  *(v2 + 2984) = "iPhone3,1";
  *(v2 + 2968) = 9;
  *(v2 + 2976) = 2;
  *(v2 + 2936) = "iPhone1,2";
  *(v2 + 2928) = 2;
  *(v2 + 2944) = 9;
  *(v2 + 2952) = 2;
  *(v2 + 2912) = "iPhone1,1";
  *(v2 + 2896) = 8;
  *(v2 + 2904) = 2;
  *(v2 + 2920) = 9;
  *(v2 + 1936) = 8;
  *(v2 + 2888) = "iPad15,8";
  *(v2 + 2872) = 8;
  *(v2 + 2880) = 2;
  *(v2 + 2840) = "iPad15,6";
  *(v2 + 2832) = 2;
  *(v2 + 2848) = 8;
  *(v2 + 2856) = 2;
  *(v2 + 2816) = "iPad15,5";
  *(v2 + 2800) = 8;
  *(v2 + 2808) = 2;
  *(v2 + 2824) = 8;
  *(v2 + 1944) = 2;
  *(v2 + 2792) = "iPad15,4";
  *(v2 + 2776) = 8;
  *(v2 + 2784) = 2;
  *(v2 + 2744) = "iPad16,2";
  *(v2 + 2736) = 2;
  *(v2 + 2752) = 8;
  *(v2 + 2760) = 2;
  *(v2 + 2720) = "iPad16,1";
  *(v2 + 2704) = 9;
  *(v2 + 2712) = 2;
  *(v2 + 2728) = 8;
  *(v2 + 1960) = 8;
  *(v2 + 2696) = "iPad14,11";
  *(v2 + 2680) = 9;
  *(v2 + 2688) = 2;
  *(v2 + 2648) = "iPad14,9";
  *(v2 + 2640) = 2;
  *(v2 + 2656) = 8;
  *(v2 + 2664) = 2;
  *(v2 + 2624) = "iPad14,8";
  *(v2 + 2608) = 8;
  *(v2 + 2616) = 2;
  *(v2 + 2632) = 8;
  *(v2 + 1968) = 2;
  *(v2 + 2600) = "iPad16,6";
  *(v2 + 2584) = 8;
  *(v2 + 2592) = 2;
  *(v2 + 2552) = "iPad16,4";
  *(v2 + 2544) = 2;
  *(v2 + 2560) = 8;
  *(v2 + 2568) = 2;
  *(v2 + 2528) = "iPad16,3";
  *(v2 + 2512) = 8;
  *(v2 + 2520) = 2;
  *(v2 + 2536) = 8;
  *(v2 + 1984) = 8;
  *(v2 + 2504) = "iPad14,6";
  *(v2 + 2488) = 8;
  *(v2 + 2496) = 2;
  *(v2 + 2456) = "iPad14,4";
  *(v2 + 2448) = 2;
  *(v2 + 2464) = 8;
  *(v2 + 2472) = 2;
  *(v2 + 2432) = "iPad14,3";
  *(v2 + 2416) = 8;
  *(v2 + 2424) = 2;
  *(v2 + 2440) = 8;
  *(v2 + 1992) = 2;
  *(v2 + 2408) = "iPad14,2";
  *(v2 + 2392) = 8;
  *(v2 + 2400) = 2;
  *(v2 + 2360) = "iPad13,19";
  *(v2 + 2352) = 2;
  *(v2 + 2368) = 9;
  *(v2 + 2376) = 2;
  *(v2 + 2336) = "iPad13,18";
  *(v2 + 2320) = 9;
  *(v2 + 2328) = 2;
  *(v2 + 2344) = 9;
  *(v2 + 2008) = 8;
  *(v2 + 2312) = "iPad13,17";
  *(v2 + 2296) = 9;
  *(v2 + 2304) = 2;
  *(v2 + 2264) = "iPad13,11";
  *(v2 + 2256) = 2;
  *(v2 + 2272) = 9;
  *(v2 + 2280) = 2;
  *(v2 + 2240) = "iPad13,10";
  *(v2 + 2224) = 8;
  *(v2 + 2232) = 2;
  *(v2 + 2248) = 9;
  *(v2 + 2016) = 2;
  *(v2 + 2216) = "iPad13,9";
  *(v2 + 2200) = 8;
  *(v2 + 2208) = 2;
  *(v2 + 2168) = "iPad13,7";
  *(v2 + 2176) = 8;
  *(v2 + 2184) = 2;
  *(v2 + 2192) = "iPad13,8";
  *(v2 + 2136) = 2;
  *(v2 + 2144) = "iPad13,6";
  *(v2 + 2152) = 8;
  *(v2 + 2160) = 2;
  *(v2 + 2104) = 8;
  *(v2 + 2112) = 2;
  *(v2 + 2120) = "iPad13,5";
  *(v2 + 2128) = 8;
  *(v2 + 2032) = 8;
  *(v2 + 2080) = 8;
  *(v2 + 2088) = 2;
  *(v2 + 2096) = "iPad13,4";
  *(v2 + 2048) = "iPad13,1";
  *(v2 + 2056) = 8;
  *(v2 + 2064) = 2;
  *(v2 + 2072) = "iPad13,2";
  *(v2 + 2040) = 2;
  *(v2 + 4840) = 13;
  *(v2 + 4848) = 2;
  *(v2 + 4856) = "MacBookAir7,2";
  *(v2 + 4864) = 13;
  *(v2 + 4872) = 2;
  *(v2 + 4880) = "MacBookAir8,1";
  *(v2 + 4888) = 13;
  *(v2 + 4896) = 2;
  *(v2 + 4904) = "MacBookAir8,2";
  *(v2 + 4912) = 13;
  *(v2 + 4920) = 2;
  *(v2 + 4928) = "MacBookAir9,1";
  *(v2 + 4936) = 13;
  *(v2 + 4944) = 2;
  *(v2 + 4952) = "MacBookAir10,1";
  *(v2 + 4960) = 14;
  *(v2 + 4968) = 2;
  *(v2 + 4976) = "MacBookPro9,1";
  *(v2 + 4984) = 13;
  *(v2 + 4992) = 2;
  *(v2 + 5000) = "MacBookPro9,2";
  *(v2 + 5008) = 13;
  *(v2 + 5016) = 2;
  *(v2 + 5024) = "MacBookPro10,1";
  *(v2 + 5032) = 14;
  *(v2 + 5040) = 2;
  *(v2 + 5048) = "MacBookPro10,2";
  *(v2 + 5056) = 14;
  *(v2 + 5064) = 2;
  *(v2 + 5072) = "MacBookPro11,1";
  *(v2 + 5080) = 14;
  *(v2 + 5088) = 2;
  *(v2 + 5096) = "MacBookPro11,2";
  *(v2 + 5104) = 14;
  *(v2 + 5112) = 2;
  *(v2 + 5120) = "MacBookPro11,3";
  *(v2 + 5128) = 14;
  *(v2 + 5136) = 2;
  *(v2 + 5144) = "MacBookPro11,4";
  *(v2 + 5152) = 14;
  *(v2 + 5160) = 2;
  *(v2 + 5168) = "MacBookPro11,5";
  *(v2 + 5176) = 14;
  *(v2 + 5184) = 2;
  *(v2 + 5192) = "MacBookPro12,1";
  *(v2 + 5200) = 14;
  *(v2 + 5208) = 2;
  *(v2 + 5216) = "MacBookPro13,1";
  *(v2 + 5224) = 14;
  *(v2 + 5232) = 2;
  *(v2 + 5240) = "MacBookPro13,2";
  *(v2 + 5248) = 14;
  *(v2 + 5256) = 2;
  *(v2 + 5264) = "MacBookPro13,3";
  *(v2 + 5272) = 14;
  *(v2 + 5280) = 2;
  *(v2 + 5288) = "MacBookPro14,1";
  *(v2 + 5296) = 14;
  *(v2 + 5304) = 2;
  *(v2 + 5312) = "MacBookPro14,2";
  *(v2 + 5320) = 14;
  *(v2 + 5328) = 2;
  *(v2 + 5336) = "MacBookPro14,3";
  *(v2 + 5344) = 14;
  *(v2 + 5352) = 2;
  *(v2 + 5360) = "MacBookPro15,1";
  *(v2 + 5368) = 14;
  *(v2 + 5376) = 2;
  *(v2 + 5384) = "MacBookPro15,2";
  *(v2 + 5392) = 14;
  *(v2 + 5400) = 2;
  *(v2 + 5408) = "MacBookPro15,3";
  *(v2 + 5416) = 14;
  *(v2 + 5424) = 2;
  *(v2 + 5432) = "MacBookPro15,4";
  *(v2 + 5440) = 14;
  *(v2 + 5448) = 2;
  *(v2 + 5456) = "MacBookPro16,1";
  *(v2 + 5464) = 14;
  *(v2 + 5472) = 2;
  *(v2 + 5480) = "MacBookPro16,2";
  *(v2 + 5488) = 14;
  *(v2 + 5496) = 2;
  *(v2 + 5504) = "MacBookPro16,3";
  *(v2 + 5512) = 14;
  *(v2 + 5520) = 2;
  *(v2 + 5528) = "MacBookPro16,4";
  *(v2 + 5536) = 14;
  *(v2 + 5544) = 2;
  *(v2 + 5552) = "MacBookPro17,1";
  *(v2 + 5560) = 14;
  *(v2 + 5568) = 2;
  *(v2 + 5576) = "MacBookPro18,1";
  *(v2 + 5584) = 14;
  *(v2 + 5592) = 2;
  *(v2 + 5600) = "MacBookPro18,2";
  *(v2 + 5608) = 14;
  *(v2 + 5616) = 2;
  *(v2 + 5624) = "MacBookPro18,3";
  *(v2 + 5632) = 14;
  *(v2 + 5640) = 2;
  *(v2 + 5648) = "MacBookPro18,4";
  *(v2 + 5656) = 14;
  *(v2 + 5664) = 2;
  *(v2 + 5672) = "Macmini6,1";
  *(v2 + 5680) = 10;
  *(v2 + 5688) = 2;
  *(v2 + 5696) = "Macmini6,2";
  *(v2 + 5704) = 10;
  *(v2 + 5712) = 2;
  *(v2 + 5720) = "Macmini7,1";
  *(v2 + 5728) = 10;
  *(v2 + 5736) = 2;
  *(v2 + 5744) = "Macmini8,1";
  *(v2 + 5752) = 10;
  *(v2 + 5760) = 2;
  *(v2 + 5768) = "Macmini9,1";
  *(v2 + 5776) = 10;
  *(v2 + 5784) = 2;
  *(v2 + 5792) = "MacPro5,1";
  *(v2 + 5800) = 9;
  *(v2 + 5808) = 2;
  *(v2 + 5816) = "MacPro6,1";
  *(v2 + 5824) = 9;
  *(v2 + 5832) = 2;
  *(v2 + 5840) = "MacPro7,1";
  *(v2 + 5848) = 9;
  *(v2 + 5856) = 2;
  *(v2 + 5864) = "Mac14,8";
  *(v2 + 5872) = 7;
  *(v2 + 5880) = 2;
  *(v2 + 5888) = "VirtualMac2,1";
  *(v2 + 5896) = 13;
  *(v2 + 5904) = 2;
  *(v2 + 5912) = "Mac14,3";
  *(v2 + 5920) = 7;
  *(v2 + 5928) = 2;
  *(v2 + 5936) = "Mac14,12";
  *(v2 + 5944) = 8;
  *(v2 + 5952) = 2;
  *(v2 + 5960) = "Mac14,5";
  *(v2 + 5968) = 7;
  *(v2 + 5976) = 2;
  *(v2 + 5984) = "Mac14,6";
  *(v2 + 5992) = 7;
  *(v2 + 6000) = 2;
  *(v2 + 6008) = "Mac14,9";
  *(v2 + 6016) = 7;
  *(v2 + 6024) = 2;
  *(v2 + 6032) = "Mac14,10";
  *(v2 + 6040) = 8;
  *(v2 + 6048) = 2;
  *(v2 + 6056) = "Mac15,3";
  *(v2 + 6064) = 7;
  *(v2 + 6072) = 2;
  *(v2 + 6080) = "Mac15,8";
  *(v2 + 6088) = 7;
  *(v2 + 6096) = 2;
  *(v2 + 6104) = "Mac15,6";
  *(v2 + 6112) = 7;
  *(v2 + 6120) = 2;
  *(v2 + 6128) = "Mac15,10";
  *(v2 + 6136) = 8;
  *(v2 + 6144) = 2;
  *(v2 + 6152) = "Mac15,9";
  *(v2 + 6160) = 7;
  *(v2 + 6168) = 2;
  *(v2 + 6176) = "Mac15,7";
  *(v2 + 6184) = 7;
  *(v2 + 6192) = 2;
  *(v2 + 6200) = "Mac15,11";
  *(v2 + 6208) = 8;
  *(v2 + 6216) = 2;
  *(v2 + 6224) = "Mac15,12";
  *(v2 + 6232) = 8;
  *(v2 + 6240) = 2;
  *(v2 + 6248) = "Mac15,13";
  *(v2 + 6256) = 8;
  *(v2 + 6264) = 2;
  *(v2 + 6272) = "Mac16,1";
  *(v2 + 6280) = 7;
  *(v2 + 6288) = 2;
  *(v2 + 6296) = "Mac16,2";
  *(v2 + 6304) = 7;
  *(v2 + 6312) = 2;
  *(v2 + 6320) = "Mac16,3";
  *(v2 + 6328) = 7;
  *(v2 + 6336) = 2;
  *(v2 + 6344) = "Mac16,10";
  *(v2 + 6352) = 8;
  *(v2 + 6360) = 2;
  *(v2 + 6368) = "Mac16,11";
  *(v2 + 6376) = 8;
  *(v2 + 6384) = 2;
  *(v2 + 6392) = "Mac16,9";
  *(v2 + 6400) = 7;
  *(v2 + 6408) = 2;
  *(v2 + 6416) = "Mac15,14";
  *(v2 + 6424) = 8;
  *(v2 + 6432) = 2;
  *(v2 + 6440) = "Mac16,12";
  *(v2 + 6448) = 8;
  *(v2 + 6456) = 2;
  *(v2 + 6464) = "Mac16,13";
  *(v2 + 6472) = 8;
  *(v2 + 6480) = 2;
  *(v2 + 6488) = "Mac16,6";
  *(v2 + 6496) = 7;
  *(v2 + 6504) = 2;
  *(v2 + 6512) = "Mac16,8";
  *(v2 + 6520) = 7;
  *(v2 + 6528) = 2;
  *(v2 + 6536) = "Mac16,5";
  *(v2 + 6544) = 7;
  *(v2 + 6552) = 2;
  *(v2 + 6560) = "Mac16,7";
  *(v2 + 6568) = 7;
  *(v2 + 6576) = 2;
  *(v2 + 6584) = "RealityDevice14,1";
  *(v2 + 6592) = 17;
  *(v2 + 6600) = 2;
  *(v2 + 6608) = "RealityDevice17,1";
  *(v2 + 6616) = 17;
  *(v2 + 6624) = 2;
  *(v2 + 6632) = "iPhone";
  *(v2 + 6640) = 6;
  *(v2 + 6648) = 2;
  *(v2 + 6656) = "iPad";
  *(v2 + 6664) = 4;
  *(v2 + 6672) = 2;
  *(v2 + 6680) = "iPad mini";
  *(v2 + 6688) = 9;
  *(v2 + 6696) = 2;
  *(v2 + 6704) = "iPod";
  *(v2 + 6712) = 4;
  *(v2 + 6720) = 2;
  *(v2 + 6728) = "MacBook Pro";
  *(v2 + 6736) = 11;
  *(v2 + 6744) = 2;
  *(v2 + 6752) = "MacBook Air";
  *(v2 + 6760) = 11;
  *(v2 + 6768) = 2;
  *(v2 + 6776) = "Mac Pro";
  *(v2 + 6784) = 7;
  *(v2 + 6792) = 2;
  *(v2 + 6800) = "iMac Pro";
  *(v2 + 6808) = 8;
  *(v2 + 6816) = 2;
  *(v2 + 6824) = "iMac";
  *(v2 + 6832) = 4;
  *(v2 + 6840) = 2;
  *(v2 + 6848) = "Mac mini";
  *(v2 + 6856) = 8;
  *(v2 + 6864) = 2;
  *(v2 + 6872) = "Mac Studio";
  *(v2 + 6880) = 10;
  *(v2 + 6888) = 2;
  v3 = sub_260E69764();

  v5 = v3 - 128;
  if (v3 < 0x80)
  {
    goto LABEL_6;
  }

  if (v5 < 0x40)
  {
    LOWORD(v3) = v5 | 0x80;
LABEL_6:
    v6 = v3;
    goto LABEL_7;
  }

  if (v3 - 192 < 0x40)
  {
    LOWORD(v3) = (v3 - 192) | 0xC0;
    goto LABEL_6;
  }

  v7 = v3 - 256;
  v6 = 268;
  LOWORD(v3) = 256;
  switch(v7)
  {
    case 0uLL:
      goto LABEL_6;
    case 1uLL:
      LOWORD(v3) = 257;
      goto LABEL_6;
    case 2uLL:
      LOWORD(v3) = 258;
      goto LABEL_6;
    case 3uLL:
      LOWORD(v3) = 259;
      goto LABEL_6;
    case 4uLL:
      LOWORD(v3) = 260;
      goto LABEL_6;
    case 5uLL:
      LOWORD(v3) = 261;
      goto LABEL_6;
    case 6uLL:
      LOWORD(v3) = 262;
      goto LABEL_6;
    case 7uLL:
      LOWORD(v3) = 263;
      goto LABEL_6;
    case 8uLL:
      LOWORD(v3) = 264;
      goto LABEL_6;
    case 9uLL:
      LOWORD(v3) = 265;
      goto LABEL_6;
    case 0xAuLL:
      LOWORD(v3) = 266;
      goto LABEL_6;
    case 0xBuLL:
      LOWORD(v3) = 267;
      goto LABEL_6;
    case 0xCuLL:
      break;
    case 0xDuLL:
      v6 = 269;
      break;
    case 0xEuLL:
      v6 = 270;
      break;
    case 0xFuLL:
      v6 = 271;
      break;
    case 0x10uLL:
      v6 = 272;
      break;
    case 0x11uLL:
      v6 = 273;
      break;
    case 0x12uLL:
      v6 = 274;
      break;
    case 0x13uLL:
      v6 = 275;
      break;
    case 0x14uLL:
      v6 = 276;
      break;
    case 0x15uLL:
      v6 = 277;
      break;
    case 0x16uLL:
      v6 = 278;
      break;
    case 0x17uLL:
      v6 = 279;
      break;
    case 0x18uLL:
      v6 = 280;
      break;
    case 0x19uLL:
      v6 = 281;
      break;
    case 0x1AuLL:
      v6 = 282;
      break;
    case 0x1BuLL:
      v6 = 283;
      break;
    case 0x1CuLL:
      v6 = 284;
      break;
    case 0x1DuLL:
      v6 = 285;
      break;
    default:
      v6 = 286;
      break;
  }

LABEL_7:
  *a1 = v6;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t iosmacHardware.Model.rawValue.getter()
{
  result = 0x312C333163614D69;
  switch(*v0)
  {
    case 1:
      return 0x322C333163614D69;
    case 2:
      return 0x332C333163614D69;
    case 3:
      v18 = 1667321193;
      return v18 | 0x312C343100000000;
    case 4:
      return 0x322C343163614D69;
    case 5:
      v2 = 1667321193;
      return v2 | 0x332C343100000000;
    case 6:
      return 0x342C343163614D69;
    case 7:
      return 0x312C353163614D69;
    case 8:
      v13 = 1667321193;
      return v13 | 0x312C363100000000;
    case 9:
      return 0x322C363163614D69;
    case 0xA:
      return 0x312C373163614D69;
    case 0xB:
      return 0x312C383163614D69;
    case 0xC:
      return 0x322C383163614D69;
    case 0xD:
      return 0x332C383163614D69;
    case 0xE:
      return 0x312C393163614D69;
    case 0xF:
      return 0x322C393163614D69;
    case 0x10:
      return 0x312C303263614D69;
    case 0x11:
      return 0x322C303263614D69;
    case 0x12:
      return 0x312C313263614D69;
    case 0x13:
      return 0x342C353163614DLL;
    case 0x14:
      return 0x352C353163614DLL;
    case 0x15:
      return 0x322C313263614D69;
    case 0x16:
      return 0x316F725063614D69;
    case 0x17:
      return 0x312C3164615069;
    case 0x18:
      return 0x312C3264615069;
    case 0x19:
      return 0x322C3264615069;
    case 0x1A:
      return 0x332C3264615069;
    case 0x1B:
      return 0x342C3264615069;
    case 0x1C:
      return 0x352C3264615069;
    case 0x1D:
      return 0x362C3264615069;
    case 0x1E:
      return 0x372C3264615069;
    case 0x1F:
      return 0x312C3364615069;
    case 0x20:
      return 0x322C3364615069;
    case 0x21:
      return 0x332C3364615069;
    case 0x22:
      return 0x342C3364615069;
    case 0x23:
      return 0x352C3364615069;
    case 0x24:
      return 0x362C3364615069;
    case 0x25:
      return 0x312C3464615069;
    case 0x26:
      return 0x322C3464615069;
    case 0x27:
      v6 = 1684099177;
      return v6 | 0x332C3400000000;
    case 0x28:
      return 0x342C3464615069;
    case 0x29:
      v15 = 1684099177;
      return v15 | 0x352C3400000000;
    case 0x2A:
      return 0x362C3464615069;
    case 0x2B:
      v17 = 1684099177;
      return v17 | 0x372C3400000000;
    case 0x2C:
      v14 = 1684099177;
      return v14 | 0x382C3400000000;
    case 0x2D:
      v3 = 1684099177;
      return v3 | 0x392C3400000000;
    case 0x2E:
      return 0x312C3564615069;
    case 0x2F:
      return 0x322C3564615069;
    case 0x30:
      v4 = 1684099177;
      return v4 | 0x332C3500000000;
    case 0x31:
      return 0x342C3564615069;
    case 0x32:
      return 0x332C3664615069;
    case 0x33:
      return 0x342C3664615069;
    case 0x34:
      return 0x372C3664615069;
    case 0x35:
      return 0x382C3664615069;
    case 0x36:
      v11 = 1684099177;
      return v11 | 0x31312C3600000000;
    case 0x37:
      v9 = 1684099177;
      goto LABEL_162;
    case 0x38:
      return 0x312C3764615069;
    case 0x39:
      return 0x322C3764615069;
    case 0x3A:
      return 0x332C3764615069;
    case 0x3B:
      return 0x342C3764615069;
    case 0x3C:
      return 0x352C3764615069;
    case 0x3D:
      return 0x362C3764615069;
    case 0x3E:
      return 0x31312C3764615069;
    case 0x3F:
      return 0x32312C3764615069;
    case 0x40:
      return 0x312C3864615069;
    case 0x41:
      return 0x322C3864615069;
    case 0x42:
      return 0x332C3864615069;
    case 0x43:
      return 0x342C3864615069;
    case 0x44:
      return 0x352C3864615069;
    case 0x45:
      return 0x362C3864615069;
    case 0x46:
      return 0x372C3864615069;
    case 0x47:
      return 0x382C3864615069;
    case 0x48:
      return 0x392C3864615069;
    case 0x49:
      return 0x30312C3864615069;
    case 0x4A:
      return 0x31312C3864615069;
    case 0x4B:
      return 0x32312C3864615069;
    case 0x4C:
      return 0x312C313164615069;
    case 0x4D:
      return 0x322C313164615069;
    case 0x4E:
      return 0x332C313164615069;
    case 0x4F:
      return 0x342C313164615069;
    case 0x50:
      return 0x362C313164615069;
    case 0x51:
      return 0x372C313164615069;
    case 0x52:
      return 0x312C323164615069;
    case 0x53:
      return 0x322C323164615069;
    case 0x54:
      return 0x312C333164615069;
    case 0x55:
      return 0x322C333164615069;
    case 0x56:
      return 0x342C333164615069;
    case 0x57:
      return 0x352C333164615069;
    case 0x58:
      return 0x362C333164615069;
    case 0x59:
      return 0x372C333164615069;
    case 0x5A:
      return 0x382C333164615069;
    case 0x5B:
      return 0x392C333164615069;
    case 0x5C:
      v5 = 0x333164615069;
      return v5 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x5D:
      v16 = 0x333164615069;
      return v16 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x5E:
      return 0x312C333164615069;
    case 0x5F:
      return 0x312C333164615069;
    case 0x60:
      return 0x312C333164615069;
    case 0x61:
      return 0x312C333164615069;
    case 0x62:
      v18 = 1684099177;
      return v18 | 0x312C343100000000;
    case 0x63:
      return 0x322C343164615069;
    case 0x64:
      v2 = 1684099177;
      return v2 | 0x332C343100000000;
    case 0x65:
      return 0x342C343164615069;
    case 0x66:
      return 0x352C343164615069;
    case 0x67:
      return 0x362C343164615069;
    case 0x68:
      return 0x332C363164615069;
    case 0x69:
      return 0x342C363164615069;
    case 0x6A:
      return 0x352C363164615069;
    case 0x6B:
      return 0x362C363164615069;
    case 0x6C:
      return 0x382C343164615069;
    case 0x6D:
      return 0x392C343164615069;
    case 0x6E:
      v5 = 0x343164615069;
      return v5 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x6F:
      v16 = 0x343164615069;
      return v16 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x70:
      v13 = 1684099177;
      return v13 | 0x312C363100000000;
    case 0x71:
      return 0x322C363164615069;
    case 0x72:
      return 0x332C353164615069;
    case 0x73:
      return 0x342C353164615069;
    case 0x74:
      return 0x352C353164615069;
    case 0x75:
      return 0x362C353164615069;
    case 0x76:
      return 0x372C353164615069;
    case 0x77:
      return 0x382C353164615069;
    case 0x78:
      return 0x2C31656E6F685069;
    case 0x79:
      return 0x2C31656E6F685069;
    case 0x7A:
      return 0x2C32656E6F685069;
    case 0x7B:
      return 0x2C33656E6F685069;
    case 0x7C:
      return 0x2C33656E6F685069;
    case 0x7D:
      return 0x2C33656E6F685069;
    case 0x7E:
      return 0x2C34656E6F685069;
    case 0x7F:
      v12 = 0x656E6F685069;
      return v12 & 0xFFFFFFFFFFFFLL | 0x2C35000000000000;
    case 0x80:
      return 0x2C35656E6F685069;
    case 0x81:
      return 0x2C35656E6F685069;
    case 0x82:
      return 0x2C35656E6F685069;
    case 0x83:
      return 0x2C36656E6F685069;
    case 0x84:
      return 0x2C36656E6F685069;
    case 0x85:
      v8 = 0x656E6F685069;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2C37000000000000;
    case 0x86:
      return 0x2C37656E6F685069;
    case 0x87:
      return 0x2C38656E6F685069;
    case 0x88:
      return 0x2C38656E6F685069;
    case 0x89:
      return 0x2C38656E6F685069;
    case 0x8A:
      return 0x2C39656E6F685069;
    case 0x8B:
      return 0x2C39656E6F685069;
    case 0x8C:
      return 0x2C39656E6F685069;
    case 0x8D:
      return 0x2C39656E6F685069;
    case 0x8E:
      return 0x3031656E6F685069;
    case 0x8F:
      return 0x3031656E6F685069;
    case 0x90:
      return 0x3031656E6F685069;
    case 0x91:
      return 0x3031656E6F685069;
    case 0x92:
      return 0x3031656E6F685069;
    case 0x93:
      return 0x3031656E6F685069;
    case 0x94:
      return 0x3131656E6F685069;
    case 0x95:
      return 0x3131656E6F685069;
    case 0x96:
      return 0x3131656E6F685069;
    case 0x97:
      return 0x3131656E6F685069;
    case 0x98:
      return 0x3231656E6F685069;
    case 0x99:
      return 0x3231656E6F685069;
    case 0x9A:
      return 0x3231656E6F685069;
    case 0x9B:
      return 0x3231656E6F685069;
    case 0x9C:
      return 0x3331656E6F685069;
    case 0x9D:
      return 0x3331656E6F685069;
    case 0x9E:
      return 0x3331656E6F685069;
    case 0x9F:
      return 0x3331656E6F685069;
    case 0xA0:
      return 0x3431656E6F685069;
    case 0xA1:
      return 0x3431656E6F685069;
    case 0xA2:
      return 0x3431656E6F685069;
    case 0xA3:
      return 0x3431656E6F685069;
    case 0xA4:
      return 0x3431656E6F685069;
    case 0xA5:
      return 0x3431656E6F685069;
    case 0xA6:
      return 0x3431656E6F685069;
    case 0xA7:
      return 0x3531656E6F685069;
    case 0xA8:
      return 0x3531656E6F685069;
    case 0xA9:
      return 0x3531656E6F685069;
    case 0xAA:
      return 0x3531656E6F685069;
    case 0xAB:
      return 0x3631656E6F685069;
    case 0xAC:
      return 0x3631656E6F685069;
    case 0xAD:
      return 0x3731656E6F685069;
    case 0xAE:
      return 0x3731656E6F685069;
    case 0xAF:
      return 0x3731656E6F685069;
    case 0xB0:
      return 0x3731656E6F685069;
    case 0xB1:
      return 0x3731656E6F685069;
    case 0xB2:
      v7 = 0x2C3164615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB3:
      v7 = 0x2C3264615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB4:
      v7 = 0x2C3364615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB5:
      v7 = 0x2C3464615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB6:
      v7 = 0x2C3564615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB7:
      v7 = 0x2C3764615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB8:
      return 0x312C39646F5069;
    case 0xB9:
      return 0x312C333163614DLL;
    case 0xBA:
      return 0x322C333163614DLL;
    case 0xBB:
      return 0x33312C343163614DLL;
    case 0xBC:
      return 0x34312C343163614DLL;
    case 0xBD:
      return 0x322C343163614DLL;
    case 0xBE:
      v17 = 828596557;
      return v17 | 0x372C3400000000;
    case 0xBF:
      return 0x35312C343163614DLL;
    case 0xC0:
      return 0x386B6F6F4263614DLL;
    case 0xC1:
      return 0x396B6F6F4263614DLL;
    case 0xC2:
      return 0x316B6F6F4263614DLL;
    case 0xC3:
      return 0x416B6F6F4263614DLL;
    case 0xC4:
      return 0x416B6F6F4263614DLL;
    case 0xC5:
      return 0x416B6F6F4263614DLL;
    case 0xC6:
      return 0x416B6F6F4263614DLL;
    case 0xC7:
      return 0x416B6F6F4263614DLL;
    case 0xC8:
      return 0x416B6F6F4263614DLL;
    case 0xC9:
      return 0x416B6F6F4263614DLL;
    case 0xCA:
      return 0x416B6F6F4263614DLL;
    case 0xCB:
      return 0x416B6F6F4263614DLL;
    case 0xCC:
      return 0x416B6F6F4263614DLL;
    case 0xCD:
      return 0x416B6F6F4263614DLL;
    case 0xCE:
      return 0x506B6F6F4263614DLL;
    case 0xCF:
    case 0xD1:
    case 0xD2:
    case 0xD3:
    case 0xD4:
    case 0xD5:
    case 0xD6:
    case 0xD7:
    case 0xD8:
    case 0xD9:
    case 0xDA:
    case 0xDB:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
    case 0xE3:
    case 0xE4:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
    case 0xEA:
      return 0x506B6F6F4263614DLL;
    case 0xD0:
      return 0x506B6F6F4263614DLL;
    case 0xEB:
      return 0x36696E696D63614DLL;
    case 0xEC:
      return 0x36696E696D63614DLL;
    case 0xED:
      return 0x37696E696D63614DLL;
    case 0xEE:
      return 0x38696E696D63614DLL;
    case 0xEF:
      return 0x39696E696D63614DLL;
    case 0xF0:
      v12 = 0x6F725063614DLL;
      return v12 & 0xFFFFFFFFFFFFLL | 0x2C35000000000000;
    case 0xF1:
      return 0x2C366F725063614DLL;
    case 0xF2:
      v8 = 0x6F725063614DLL;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2C37000000000000;
    case 0xF3:
      v14 = 828596557;
      return v14 | 0x382C3400000000;
    case 0xF4:
      return 0x4D6C617574726956;
    case 0xF5:
      v6 = 828596557;
      return v6 | 0x332C3400000000;
    case 0xF6:
      return 0x32312C343163614DLL;
    case 0xF7:
      v15 = 828596557;
      return v15 | 0x352C3400000000;
    case 0xF8:
      return 0x362C343163614DLL;
    case 0xF9:
      v3 = 828596557;
      return v3 | 0x392C3400000000;
    case 0xFA:
      return 0x30312C343163614DLL;
    case 0xFB:
      v4 = 828596557;
      return v4 | 0x332C3500000000;
    case 0xFC:
      return 0x382C353163614DLL;
    case 0xFD:
      return 0x362C353163614DLL;
    case 0xFE:
      return 0x30312C353163614DLL;
    case 0xFF:
      v10 = 0x2C353163614DLL;
      goto LABEL_166;
    case 0x100:
      return 0x372C353163614DLL;
    case 0x101:
      return 0x31312C353163614DLL;
    case 0x102:
      return 0x32312C353163614DLL;
    case 0x103:
      return 0x33312C353163614DLL;
    case 0x104:
      return 0x312C363163614DLL;
    case 0x105:
      return 0x322C363163614DLL;
    case 0x106:
      return 0x332C363163614DLL;
    case 0x107:
      return 0x30312C363163614DLL;
    case 0x108:
      v11 = 828596557;
      return v11 | 0x31312C3600000000;
    case 0x109:
      v10 = 0x2C363163614DLL;
LABEL_166:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x39000000000000;
      break;
    case 0x10A:
      result = 0x34312C353163614DLL;
      break;
    case 0x10B:
      v9 = 828596557;
LABEL_162:
      result = v9 | 0x32312C3600000000;
      break;
    case 0x10C:
      result = 0x33312C363163614DLL;
      break;
    case 0x10D:
      result = 0x362C363163614DLL;
      break;
    case 0x10E:
      result = 0x382C363163614DLL;
      break;
    case 0x10F:
      result = 0x352C363163614DLL;
      break;
    case 0x110:
      result = 0x372C363163614DLL;
      break;
    case 0x111:
    case 0x112:
      result = 0xD000000000000011;
      break;
    case 0x113:
      result = 0x656E6F685069;
      break;
    case 0x114:
      result = 1684099177;
      break;
    case 0x115:
      result = 0x6E696D2064615069;
      break;
    case 0x116:
      result = 1685016681;
      break;
    case 0x117:
    case 0x118:
      result = 0x206B6F6F4263614DLL;
      break;
    case 0x119:
      result = 0x6F72502063614DLL;
      break;
    case 0x11A:
      result = 0x6F72502063614D69;
      break;
    case 0x11B:
      result = 1667321193;
      break;
    case 0x11C:
      result = 0x696E696D2063614DLL;
      break;
    case 0x11D:
      result = 0x647574532063614DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_260E0AABC(__int16 *a1, __int16 *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = iosmacHardware.Model.rawValue.getter();
  v4 = v3;
  if (v2 == iosmacHardware.Model.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_260E69834();
  }

  return v7 & 1;
}

uint64_t sub_260E0AB58()
{
  v1 = *v0;
  sub_260E698F4();
  iosmacHardware.Model.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E0ABC0()
{
  v2 = *v0;
  iosmacHardware.Model.rawValue.getter();
  sub_260E690C4();
}

uint64_t sub_260E0AC24()
{
  v1 = *v0;
  sub_260E698F4();
  iosmacHardware.Model.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E0AC88@<X0>(__int16 *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return iosmacHardware.Model.init(rawValue:)(a1);
}

uint64_t sub_260E0AC94@<X0>(uint64_t *a1@<X8>)
{
  result = iosmacHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E0AD00@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  result = iosmacHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_260E0AD70(uint64_t a1, id *a2)
{
  result = sub_260E69004();
  *a2 = 0;
  return result;
}

uint64_t sub_260E0ADE8(uint64_t a1, id *a2)
{
  v3 = sub_260E69014();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_260E0AE68@<X0>(uint64_t *a1@<X8>)
{
  sub_260E69024();
  v2 = sub_260E68FF4();

  *a1 = v2;
  return result;
}

uint64_t sub_260E0AEC0(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_260E0AF2C(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_260E0AF98(void *a1, uint64_t a2)
{
  v4 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_260E0B04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_260E0B0C8()
{
  v2 = *v0;
  sub_260E698F4();
  sub_260E68FB4();
  return sub_260E69914();
}

void *sub_260E0B128@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_260E0B13C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_260E69024();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_260E0B168(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54370, type metadata accessor for LoadingOption);
  v3 = sub_260E0BF2C(&unk_27FE54070, type metadata accessor for LoadingOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B224(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54058, type metadata accessor for AnimationImportPolicy);
  v3 = sub_260E0BF2C(&unk_27FE54060, type metadata accessor for AnimationImportPolicy);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B2E0(uint64_t a1)
{
  v2 = sub_260E0BF2C(&unk_27FE54310, type metadata accessor for SCNShaderModifierEntryPoint);
  v3 = sub_260E0BF2C(&qword_27FE54080, type metadata accessor for SCNShaderModifierEntryPoint);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B39C(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE53FF0, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260E0B408(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE53FF0, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_260E0B478(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_260E0B4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_260E0B57C(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54048, type metadata accessor for URLResourceKey);
  v3 = sub_260E0BF2C(&qword_27FE54050, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E68FF4();

  *a2 = v5;
  return result;
}

uint64_t sub_260E0B680(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54088, type metadata accessor for CIContextOption);
  v3 = sub_260E0BF2C(&qword_27FE54090, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B73C()
{
  v1 = *v0;
  v2 = sub_260E69024();
  v3 = MEMORY[0x2666F0C70](v2);

  return v3;
}

uint64_t sub_260E0B778()
{
  v1 = *v0;
  sub_260E69024();
  sub_260E690C4();
}

uint64_t sub_260E0B7CC()
{
  v1 = *v0;
  sub_260E69024();
  sub_260E698F4();
  sub_260E690C4();
  v2 = sub_260E69914();

  return v2;
}

uint64_t sub_260E0B840(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_260E69024();
  v6 = v5;
  if (v4 == sub_260E69024() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_260E69834();
  }

  return v9 & 1;
}

unint64_t sub_260E0B8CC()
{
  result = qword_27FE53E88;
  if (!qword_27FE53E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE53E88);
  }

  return result;
}

unint64_t sub_260E0B924()
{
  result = qword_27FE53E90;
  if (!qword_27FE53E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE53E98, &qword_260E6AC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE53E90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t _s5ModelOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFEE3)
  {
    goto LABEL_17;
  }

  if (a2 + 285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 285 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 285;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11E;
  v8 = v6 - 286;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s5ModelOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFEE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFEE2)
  {
    v6 = ((a2 - 65251) >> 16) + 1;
    *result = a2 + 285;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 285;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_260E0BB8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E0BBAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoViewFeatureTimings.Section(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoViewFeatureTimings.Section(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SemanticVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SemanticVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_260E0BD00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E0BD20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_260E0BD90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E0BDB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_260E0BF2C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_260E0C408(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_260E0C4A0()
{
  result = qword_27FE54018;
  if (!qword_27FE54018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54018);
  }

  return result;
}

uint64_t sub_260E0C694()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54100);
  v1 = __swift_project_value_buffer(v0, qword_27FE54100);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E0C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_timeObserverToken;
  swift_beginAccess();
  sub_260E15684(v3 + v8, &aBlock, &qword_27FE542C8, &qword_260E6BFE0);
  if (v30)
  {
    sub_260E145CC(&aBlock, &v34);
    v9 = *(v3 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
    __swift_project_boxed_opaque_existential_0(&v34, *(&v35 + 1));
    [v9 removeTimeObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v34);
  }

  else
  {
    sub_260E155E4(&aBlock, &qword_27FE542C8, &qword_260E6BFE0);
  }

  v33 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = (a1 + 32);
    do
    {
      v13 = v12[1];
      v34 = *v12;
      v35 = v13;
      v36 = v12[2];
      aBlock = v34;
      v29 = v13;
      v14 = [v11 valueWithCMTime_];
      MEMORY[0x2666F0CA0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_260E691F4();
      }

      sub_260E69224();
      *&aBlock = sub_260E69424();
      *(&aBlock + 1) = v15;
      v29 = v16;
      v17 = [v11 valueWithCMTime_];
      MEMORY[0x2666F0CA0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_260E691F4();
      }

      sub_260E69224();
      v12 += 3;
      --v10;
    }

    while (v10);
  }

  v18 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  sub_260E157C4(0, &qword_27FE542D0, 0x277CCAE60);
  v19 = sub_260E691A4();

  sub_260E157C4(0, &qword_27FE542D8, 0x277D85C78);
  v20 = sub_260E69494();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v31 = sub_260E14538;
  v32 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_260E12B54;
  v30 = &block_descriptor_20;
  v23 = _Block_copy(&aBlock);

  v24 = [v18 addBoundaryTimeObserverForTimes:v19 queue:v20 usingBlock:v23];
  _Block_release(v23);

  sub_260E695C4();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_260E1455C(&aBlock, v4 + v8);
  return swift_endAccess();
}

uint64_t sub_260E0CB54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_260E145EC(a1);
  result = sub_260E145DC(v7);
  if (a1)
  {
    v10 = v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
    swift_beginAccess();
    v11 = type metadata accessor for VideoViewConfiguration(0);
    if (*(v10 + *(v11 + 44)))
    {
      v15 = *(v10 + *(v11 + 44));
      v12 = sub_260E64640();
      v13 = *(v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
      if (v13)
      {
        v14 = v13;
        sub_260E0C75C(v12, a1, a2);
        sub_260E145DC(a1);
      }

      else
      {
        sub_260E145DC(a1);
      }
    }

    else
    {
      return sub_260E145DC(a1);
    }
  }

  return result;
}

void (*sub_260E0CC7C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_260E0CD04;
}

void sub_260E0CD04(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    if (*v5)
    {
      v7 = v5[1];
      v8 = v4 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
      swift_beginAccess();
      v9 = type metadata accessor for VideoViewConfiguration(0);
      if (*(v8 + *(v9 + 44)))
      {
        v10 = v3[3];
        v14 = *(v8 + *(v9 + 44));

        v11 = sub_260E64640();
        v12 = *(v10 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
        if (v12)
        {
          v13 = v12;
          sub_260E0C75C(v11, v6, v7);
          sub_260E145DC(v6);
        }

        else
        {
          sub_260E145DC(v6);
        }
      }
    }
  }

  free(v3);
}

char *sub_260E0CE14(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_startedHandler];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_completedHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver] = 0;
  v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver] = 0;
  sub_260E145FC(a1, &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration], type metadata accessor for VideoViewConfiguration);
  v12 = type metadata accessor for VideoViewConfiguration(0);
  if (*(a1 + *(v12 + 44)))
  {
    v55.m11 = *(a1 + *(v12 + 44));
    v13 = sub_260E64640();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CDBB20]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView] = v14;
  (*(v5 + 16))(v8, a1 + *(v12 + 20), v4);
  Adjustments.init(fileURL:)(v8, &v55);
  m21_low = LOBYTE(v55.m21);
  v16 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments];
  v17 = *&v55.m13;
  *v16 = *&v55.m11;
  *(v16 + 1) = v17;
  v16[32] = m21_low;
  v57.receiver = v1;
  v57.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v57, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView;
  v20 = *&v18[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 clearColor];
  [v23 setBackgroundColor_];

  [*&v18[v19] setAntialiasingMode_];
  v25 = [*&v18[v19] layer];
  [v25 setMinificationFilter_];

  [*&v18[v19] setLoops_];
  [*&v18[v19] setRendersContinuously_];
  [*&v18[v19] setPreferredFramesPerSecond_];
  [*&v18[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 addSubview_];
  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_260E6BDA0;
  v27 = [*&v18[v19] leadingAnchor];
  v28 = [v22 leadingAnchor];
  v53 = a1;
  v29 = v12;
  v30 = v28;
  v31 = [v27 constraintEqualToAnchor_];

  *(v26 + 32) = v31;
  v32 = [*&v18[v19] trailingAnchor];
  v33 = [v22 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v26 + 40) = v34;
  v35 = [*&v18[v19] topAnchor];
  v36 = [v22 topAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v26 + 48) = v37;
  v38 = v29;
  v39 = v53;
  v40 = [*&v18[v19] bottomAnchor];
  v41 = [v22 bottomAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v26 + 56) = v42;
  sub_260E157C4(0, &qword_27FE54378, 0x277CCAAD0);
  v43 = sub_260E691A4();

  [v52 activateConstraints_];

  if (*(v39 + *(v38 + 36)) != 0.0)
  {
    v44 = [v22 layer];
    CATransform3DMakeScale(&v55, 1.2, 1.2, 1.0);
    [v44 setTransform_];
  }

  v45 = v39 + *(v38 + 40);
  v46 = *(v45 + 112);
  *&v55.m41 = *(v45 + 96);
  *&v55.m43 = v46;
  v56 = *(v45 + 128);
  v47 = *(v45 + 48);
  *&v55.m21 = *(v45 + 32);
  *&v55.m23 = v47;
  v48 = *(v45 + 80);
  *&v55.m31 = *(v45 + 64);
  *&v55.m33 = v48;
  v49 = *(v45 + 16);
  *&v55.m11 = *v45;
  *&v55.m13 = v49;
  if (sub_260E1580C(&v55) != 1)
  {
    v50 = [v22 layer];
    v54 = v55;
    [v50 setTransform_];
  }

  sub_260E146C8(v39, type metadata accessor for VideoViewConfiguration);
  return v22;
}

unint64_t sub_260E0D468()
{
  v1 = sub_260E68904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E145FC(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, v9, type metadata accessor for VideoViewConfiguration.VideoSequence);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v19 = sub_260E68E94();
    __swift_project_value_buffer(v19, qword_27FE54100);
    v20 = sub_260E68E74();
    v21 = sub_260E69464();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_260E02000, v20, v21, "Asked to play feature video but no feature video available", v22, 2u);
      MEMORY[0x2666F1EF0](v22, -1, -1);
    }

    return sub_260E146C8(v9, type metadata accessor for VideoViewConfiguration.VideoSequence);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
  (*(v2 + 32))(v5, &v9[*(v10 + 64)], v1);
  v11 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v12 = [v11 items];
  sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
  v13 = sub_260E691B4();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = sub_260E69714();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_4:
  v15 = __OFSUB__(v14, 1);
  result = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v17 = MEMORY[0x2666F1180](result, v13);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v13 + 8 * result + 32);
LABEL_9:
    v18 = v17;

    [v11 removeItem_];

LABEL_17:
    v23 = *(v10 + 48);
    sub_260E11C88();
    v24 = *(v2 + 8);
    v24(v5, v1);
    v24(&v9[v23], v1);
    return (v24)(v9, v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_260E0D7F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_260E692E4();
  v2[5] = sub_260E692D4();
  v4 = sub_260E69284();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_260E0D894, v4, v3);
}

uint64_t sub_260E0D894()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[2];
    if (v2 > v3)
    {
      v4 = v0[4];
      v5 = (v1 + 48 * v3);
      v0[8] = v5[4];
      v0[9] = v5[5];
      v0[10] = v5[6];
      v0[11] = sub_260E692D4();
      v7 = sub_260E69284();
      v0[12] = v7;
      v0[13] = v6;

      return MEMORY[0x2822009F8](sub_260E0DA64, v7, v6);
    }

    __break(1u);
    goto LABEL_13;
  }

  v8 = v0[5];

  if (qword_27FE53D90 != -1)
  {
LABEL_13:
    swift_once();
  }

  v9 = sub_260E68E94();
  __swift_project_value_buffer(v9, qword_27FE54100);
  v10 = sub_260E68E74();
  v11 = sub_260E69474();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_260E02000, v10, v11, "fastForward: playbackTimeRanges is empty, returning", v12, 2u);
    MEMORY[0x2666F1EF0](v12, -1, -1);
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_260E0DA64()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  *(v0 + 112) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_260E0DB64;
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);

    return sub_260E0DD7C(v5, v3, v4);
  }

  else
  {
    v7 = *(v0 + 88);

    *(v0 + 129) = 0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_260E0DD18, v8, v9);
  }
}

uint64_t sub_260E0DB64(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 128) = a1;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_260E0DCAC, v6, v5);
}

uint64_t sub_260E0DCAC()
{
  v1 = *(v0 + 88);

  *(v0 + 129) = *(v0 + 128);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_260E0DD18, v2, v3);
}

uint64_t sub_260E0DD18()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 129);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_260E0DD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_260E0DDA0, 0, 0);
}

uint64_t sub_260E0DDA0()
{
  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[22] = __swift_project_value_buffer(v1, qword_27FE54100);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    sub_260E69504();
    *(v7 + 4) = v8;
    _os_log_impl(&dword_260E02000, v2, v3, "Player seeking to %f", v7, 0xCu);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v9 = v0 + 2;
  v10 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v12 = v0[19];

  v14 = *(v11 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_260E0DFF8;
  v15 = swift_continuation_init();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54298, &qword_260E6BFB0);
  v0[23] = v13;
  v17 = v0 + 23;
  v18 = *MEMORY[0x277CC08F0];
  v19 = *(MEMORY[0x277CC08F0] + 8);
  v20 = *(MEMORY[0x277CC08F0] + 12);
  v21 = *(MEMORY[0x277CC08F0] + 16);
  *(v17 - 6) = v16;
  *(v17 - 13) = MEMORY[0x277D85DD0];
  *(v17 - 12) = 1107296256;
  *(v17 - 11) = sub_260E12B98;
  *(v17 - 10) = &block_descriptor;
  *(v17 - 9) = v15;
  v17[1] = v12;
  v17[2] = v10;
  v17[3] = v18;
  *(v17 + 8) = v19;
  *(v17 + 9) = v20;
  v17[5] = v21;
  v17[6] = v18;
  *(v17 + 14) = v19;
  *(v17 + 15) = v20;
  v17[8] = v21;
  [v14 seekToTime:v17 toleranceBefore:v17 + 3 toleranceAfter:v17 + 6 completionHandler:?];

  return MEMORY[0x282200938](v9);
}

uint64_t sub_260E0DFF8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_260E0E0D8, 0, 0);
}

uint64_t sub_260E0E0D8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 256);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_260E69504();
    *(v8 + 4) = v9;
    _os_log_impl(&dword_260E02000, v3, v4, "Player seeked to %f", v8, 0xCu);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10(v2);
}

id sub_260E0E1E4(const char *a1, float a2)
{
  v5 = v2;
  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v6 = sub_260E68E94();
  __swift_project_value_buffer(v6, qword_27FE54100);
  v7 = sub_260E68E74();
  v8 = sub_260E69474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260E02000, v7, v8, a1, v9, 2u);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  *&v11 = a2;

  return [v10 setRate_];
}

void sub_260E0E2FC()
{
  v1 = v0;
  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54100);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260E02000, v3, v4, "Player stopped playing", v5, 2u);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) setRate_];
  v6 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token;
  v7 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token);
  if (v7)
  {
    v8 = v7;
    sub_260E687B4();

    v9 = *(v1 + v6);
  }

  else
  {
    v9 = 0;
  }

  *(v1 + v6) = 0;
}

id sub_260E0E57C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView] setDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_260E0E734(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for VideoViewConfiguration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44.receiver = v2;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_willMoveToSuperview_, a1);
  v9 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver;
  if ((v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver] & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
    swift_beginAccess();
    sub_260E145FC(&v2[v10], v8, type metadata accessor for VideoViewConfiguration);
    v11 = objc_allocWithZone(type metadata accessor for SceneDriver(0));
    sub_260E10020(v8);
    v12 = *&v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver];
    *&v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver] = v13;

    v14 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView;
    v15 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver;
    [*&v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView] setDelegate_];
    v16 = *&v2[v14];
    v17 = *&v2[v15];
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_scene);
    }

    else
    {
      v18 = 0;
    }

    v19 = v16;
    [v19 setScene_];

    v20 = *&v2[v15];
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = &v20[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureStartedHandler];
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      *v22 = sub_260E15548;
      v22[1] = v21;
      v25 = v20;

      sub_260E145DC(v23);

      v26 = *&v2[v15];
      if (v26)
      {
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = &v26[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler];
        v29 = *&v26[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler];
        v30 = *&v26[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler + 8];
        *v28 = sub_260E1556C;
        v28[1] = v27;
        v31 = v26;

        sub_260E145DC(v29);
      }
    }

    v32 = &v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments];
    if ((v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments + 32] & 1) == 0)
    {
      v33 = *&v2[v15];
      if (v33)
      {
        v35 = v32[2];
        v34 = v32[3];
        v36 = *v32;
        v37 = v32[1];
        v38 = objc_opt_self();
        v39 = v33;
        v40 = [v38 currentTraitCollection];
        v41 = [v40 userInterfaceStyle];

        if (v41 != 2)
        {
          v36 = v35;
          v37 = v34;
        }

        v43[0] = v36;
        v43[1] = v37;
        sub_260E0F238(v43);
      }
    }

    v2[v9] = 1;
  }
}

void sub_260E0EBE0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *a2;
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);
      sub_260E145EC(v6);

      v6();
      sub_260E145DC(v6);
    }

    else
    {
    }
  }
}

void sub_260E0ECF8(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 currentTraitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!a1 || v3 != v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments);
    if ((*(v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments + 32) & 1) == 0)
    {
      v8 = *(v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
      if (v8)
      {
        v10 = v7[2];
        v9 = v7[3];
        v12 = *v7;
        v11 = v7[1];
        v13 = v8;
        v14 = [v4 currentTraitCollection];
        v15 = [v14 userInterfaceStyle];

        if (v15 == 2)
        {
          *&v16 = v12;
        }

        else
        {
          *&v16 = v10;
        }

        if (v15 == 2)
        {
          *&v17 = v11;
        }

        else
        {
          *&v17 = v9;
        }

        if (!v15)
        {
          *&v16 = v10;
          *&v17 = v9;
        }

        v18[0] = v16;
        v18[1] = v17;
        sub_260E0F238(v18);
      }
    }
  }
}

uint64_t sub_260E0EE9C()
{
  result = type metadata accessor for VideoViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_260E0EF74(uint64_t a1)
{
  v3 = type metadata accessor for VideoViewConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_260E68D84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial];
    v14 = v12;
    v15 = [v13 diffuse];
    v16 = sub_260E66494();
    [v15 setContents_];

    sub_260E68D94();
    v17 = sub_260E68D74();
    (*(v8 + 8))(v11, v7);
    if (v17 == 1)
    {
      [v13 setBlendMode_];
    }
  }

  else
  {
    v18 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
    swift_beginAccess();
    sub_260E145FC(v1 + v18, v6, type metadata accessor for VideoViewConfiguration);
    v19 = *(v3 + 28);
    sub_260E155E4(&v6[v19], &qword_27FE542E0, &qword_260E6BFE8);
    v20 = sub_260E68DB4();
    v21 = *(v20 - 8);
    (*(v21 + 16))(&v6[v19], a1, v20);
    (*(v21 + 56))(&v6[v19], 0, 1, v20);
    swift_beginAccess();
    sub_260E14664(v6, v1 + v18);
    swift_endAccess();
    sub_260E146C8(v6, type metadata accessor for VideoViewConfiguration);
  }
}

void sub_260E0F238(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial);
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = v2;
    v6 = sub_260E69364();
    v7 = sub_260E68FF4();
    [v5 setValue:v6 forKey:v7];

    v8 = sub_260E69364();
    v9 = sub_260E68FF4();
    [v5 setValue:v8 forKey:v9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54300, &qword_260E6C000);
    inited = swift_initStackObject();
    v11 = *MEMORY[0x277CDBC10];
    *(inited + 32) = *MEMORY[0x277CDBC10];
    *(inited + 16) = xmmword_260E6BDB0;
    *(inited + 40) = 0xD0000000000000F7;
    *(inited + 48) = 0x8000000260E72240;
    v12 = v11;
    sub_260E66AA4(inited);
    swift_setDeallocating();
    sub_260E155E4(inited + 32, &qword_27FE54308, &qword_260E6C008);
    type metadata accessor for SCNShaderModifierEntryPoint(0);
    sub_260E1577C(&unk_27FE54310, type metadata accessor for SCNShaderModifierEntryPoint);
    v13 = sub_260E68F84();

    [v5 setShaderModifiers_];
  }

  else
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v14 = sub_260E68E94();
    __swift_project_value_buffer(v14, qword_27FE54100);
    oslog = sub_260E68E74();
    v15 = sub_260E69474();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_260E02000, oslog, v15, "No video material to update", v16, 2u);
      MEMORY[0x2666F1EF0](v16, -1, -1);
    }
  }
}

uint64_t (*sub_260E0F534())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_260E0F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (*v5 + *a5);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return sub_260E145DC(v9);
}

uint64_t (*sub_260E0F628())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_260E0F6AC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (*v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

void (*sub_260E0F73C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_260E0CC7C(v3);
  return sub_260E0F7B0;
}

void sub_260E0F7B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_260E0F7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges);
  *(v7 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges) = a1;

  v9 = *(v7 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v9)
  {
    v10 = v9;
    sub_260E0C75C(a1, a2, a3);
  }
}

uint64_t sub_260E0F8CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E0F964;

  return sub_260E0D7F8(a1);
}

uint64_t sub_260E0F964(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_260E0FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  sub_260E692E4();
  v4[6] = sub_260E692D4();
  v7 = sub_260E69284();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_260E0FB00, v7, v6);
}

uint64_t sub_260E0FB00()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  v0[9] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_260E0FBFC;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_260E0DD7C(v5, v3, v4);
  }

  else
  {
    v7 = v0[6];

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_260E0FBFC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 88) = a1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_260E0FD44, v6, v5);
}

uint64_t sub_260E0FD44()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3(v2);
}

BOOL sub_260E0FDA8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (!v1)
  {
    return 0;
  }

  [*(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) rate];
  return v2 == 0.0;
}

void sub_260E0FE0C(float a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v5)
  {
    v8 = v5;
    sub_260E0E1E4(a4, a1);
  }
}

void sub_260E0FEBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v4)
  {
    v6 = v4;
    a3();
  }
}

uint64_t sub_260E0FF68()
{
  v1 = *v0;
  sub_260E698F4();
  MEMORY[0x2666F1410](v1);
  return sub_260E69914();
}

uint64_t sub_260E0FFDC()
{
  v1 = *v0;
  sub_260E698F4();
  MEMORY[0x2666F1410](v1);
  return sub_260E69914();
}

void sub_260E10020(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v209 = sub_260E68D84();
  v208 = *(v209 - 8);
  v4 = *(v208 + 64);
  MEMORY[0x28223BE20](v209);
  v207 = &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v217 = &v203 - v8;
  v219 = sub_260E68DB4();
  v218 = *(v219 - 8);
  v9 = *(v218 + 64);
  MEMORY[0x28223BE20](v219);
  v215 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v11 = *(*(v230 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v230);
  v220 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v203 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v203 - v18;
  v20 = sub_260E68904();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v210 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v216 = &v203 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v228 = &v203 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v226 = (&v203 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v225 = &v203 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v212 = &v203 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v224 = &v203 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v223 = &v203 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v203 - v39;
  v234 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane;
  *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane) = 0;
  v235 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token;
  *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token) = 0;
  v41 = (v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_timeObserverToken);
  *v41 = 0u;
  v41[1] = 0u;
  v237 = v41;
  v236 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache;
  *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache) = 0;
  v238 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial;
  *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial) = 0;
  v42 = (v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureStartedHandler);
  *v42 = 0;
  v42[1] = 0;
  v239 = v42;
  v43 = (v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler);
  *v43 = 0;
  v43[1] = 0;
  v240 = v43;
  v44 = v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration;
  v45 = *MEMORY[0x277CC08F0];
  v46 = *(MEMORY[0x277CC08F0] + 8);
  v47 = *(MEMORY[0x277CC08F0] + 12);
  v48 = *(MEMORY[0x277CC08F0] + 16);
  *v44 = *MEMORY[0x277CC08F0];
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  v222 = v44;
  *(v44 + 2) = v48;
  v49 = v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration;
  *v49 = v45;
  *(v49 + 2) = v46;
  *(v49 + 3) = v47;
  *(v49 + 2) = v48;
  v232 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface;
  *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface) = 0;
  v50 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54328, &qword_260E6C020);
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v233 = v50;
  *(v2 + v50) = v51;
  v231 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration;
  sub_260E145FC(a1, v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, type metadata accessor for VideoViewConfiguration);
  v52 = type metadata accessor for VideoViewConfiguration(0);
  sub_260E15684(a1 + *(v52 + 24), v19, &qword_27FE54320, &qword_260E6E720);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v53 = a1;
    sub_260E155E4(v19, &qword_27FE54320, &qword_260E6E720);
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v54 = sub_260E68E94();
    __swift_project_value_buffer(v54, qword_27FE54100);
    v55 = sub_260E68E74();
    v56 = sub_260E69464();
    v57 = v53;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_260E02000, v55, v56, "Configuration doesn't have SceneURL, SceneDriver returning nil", v58, 2u);
      MEMORY[0x2666F1EF0](v58, -1, -1);
    }

    sub_260E15590();
    swift_allocError();
    *v59 = 0xD00000000000002CLL;
    *(v59 + 8) = 0x8000000260E72340;
    *(v59 + 16) = 1;
    swift_willThrow();
    sub_260E146C8(v57, type metadata accessor for VideoViewConfiguration);
    sub_260E146C8(v2 + v231, type metadata accessor for VideoViewConfiguration);
LABEL_24:

    sub_260E155E4(v237, &qword_27FE542C8, &qword_260E6BFE0);
    v146 = v239[1];
    sub_260E145DC(*v239);
    v147 = v240[1];
    sub_260E145DC(*v240);

    v148 = *(v2 + v233);

    v149 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v150 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  v227 = v21;
  v214 = *(v21 + 32);
  v214(v40, v19, v20);
  v60 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) = v60;
  [v60 setAllowsExternalPlayback_];
  v221 = a1;
  sub_260E145FC(a1, v15, type metadata accessor for VideoViewConfiguration.VideoSequence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v211 = v20;
  v213 = v40;
  v205 = v21 + 32;
  v206 = v52;
  if (!EnumCaseMultiPayload)
  {
    v90 = v52;
    v91 = v15;
    v92 = v20;
    v214(v223, v91, v20);
    *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 1;
    v93 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v94 = sub_260E68894();
    v95 = [v93 initWithURL:v94 options:0];

    v96 = [v95 tracksWithMediaType_];
    sub_260E157C4(0, &qword_27FE54338, 0x277CE6450);
    v97 = sub_260E691B4();

    if ((v97 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x2666F1180](0, v97);
      v70 = v221;
      v87 = v227;
    }

    else
    {
      v70 = v221;
      v87 = v227;
      if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v98 = *(v97 + 32);
    }

    [v98 naturalSize];
    v100 = v99;
    v102 = v101;

    isEscapingClosureAtFileLocation = v92;
    v226 = *(v87 + 8);
    v226(v223, v92);
    v103 = (v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize);
    *v103 = v100;
    v103[1] = v102;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
    v105 = *(v104 + 48);
    v106 = v214;
    v214(v225, v15, v20);
    v106(v226, &v15[v105], v20);
    *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 0;
    v107 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v108 = sub_260E68894();
    v109 = [v107 initWithURL:v108 options:0];

    v110 = [v109 tracksWithMediaType_];
    sub_260E157C4(0, &qword_27FE54338, 0x277CE6450);
    v111 = sub_260E691B4();

    v204 = v15;
    if ((v111 & 0xC000000000000001) != 0)
    {
      v112 = MEMORY[0x2666F1180](0, v111);
    }

    else
    {
      if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
        return;
      }

      v112 = *(v111 + 32);
    }

    v113 = v112;

    v224 = *(v104 + 64);
    [v113 naturalSize];
    v115 = v114;
    v117 = v116;

    v118 = (v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize);
    *v118 = v115;
    v118[1] = v117;
    v119 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v120 = v226;
    v121 = sub_260E68894();
    v122 = [v119 initWithURL:v121 options:0];

    [v122 duration];
    v123 = aBlock;
    v124 = v245;
    v125 = v244;

    v126 = v222;
    *v222 = v123;
    v126[1] = v125;
    v126[2] = v124;
    v127 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v128 = v225;
    v129 = sub_260E68894();
    v130 = [v127 initWithURL:v129 options:0];

    [v130 duration];
    v131 = aBlock;
    v132 = v245;
    v133 = v244;

    v87 = v227;
    v134 = *(v227 + 8);
    v135 = v120;
    v136 = v211;
    v134(v135, v211);
    v134(v128, v136);
    *v49 = v131;
    *(v49 + 1) = v133;
    *(v49 + 2) = v132;
    v226 = v134;
    v134(&v224[v204], v136);
    isEscapingClosureAtFileLocation = v136;
    goto LABEL_21;
  }

  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
  v63 = v214;
  v214(v224, v15, v20);
  v64 = &v15[v62];
  v65 = v212;
  isEscapingClosureAtFileLocation = v20;
  v63(v212, v64, v20);
  *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 0;
  v67 = 0x277CE6000;
  v68 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v69 = sub_260E68894();
  v70 = &selRef_playerItemDidReachEnd_;
  v71 = [v68 initWithURL:v69 options:0];

  v72 = [v71 tracksWithMediaType_];
  sub_260E157C4(0, &qword_27FE54338, 0x277CE6450);
  v73 = sub_260E691B4();

  if ((v73 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_45;
  }

  for (i = *(v73 + 32); ; i = MEMORY[0x2666F1180](0, v73))
  {
    v75 = i;

    [v75 naturalSize];
    v77 = v76;
    v79 = v78;

    v80 = (v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize);
    *v80 = v77;
    v80[1] = v79;
    v81 = objc_allocWithZone(v67[202]);
    v82 = sub_260E68894();
    v83 = [v81 v70[2]];

    [v83 duration];
    v84 = aBlock;
    v85 = v245;
    v86 = v244;

    v87 = v227;
    v88 = *(v227 + 8);
    v88(v65, isEscapingClosureAtFileLocation);
    v226 = v88;
    v88(v224, isEscapingClosureAtFileLocation);
    v89 = v222;
    *v222 = v84;
    v89[1] = v86;
    v89[2] = v85;
LABEL_21:
    v70 = v221;
    v90 = v206;
LABEL_22:
    *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_originalVideoSize) = *(v70 + *(v90 + 32));
    *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_yOffset) = *(v70 + *(v90 + 36));
    sub_260E157C4(0, &qword_27FE54340, 0x277CDBAF8);
    v137 = v228;
    v65 = v213;
    (*(v87 + 16))(v228, v213, isEscapingClosureAtFileLocation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54348, &qword_260E6C028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_260E6BDB0;
    v139 = *MEMORY[0x277CDBBF0];
    *(inited + 32) = *MEMORY[0x277CDBBF0];
    v67 = *MEMORY[0x277CDBBF8];
    type metadata accessor for AnimationImportPolicy(0);
    *(inited + 64) = v140;
    *(inited + 40) = v67;
    v141 = v139;
    v142 = v67;
    v143 = sub_260E66358(inited);
    swift_setDeallocating();
    sub_260E155E4(inited + 32, &qword_27FE54350, qword_260E6C030);
    v144 = v229;
    v145 = sub_260E11930(v137, v143);
    if (v144)
    {
      sub_260E146C8(v70, type metadata accessor for VideoViewConfiguration);
      v226(v65, v211);
      sub_260E146C8(v2 + v231, type metadata accessor for VideoViewConfiguration);

      goto LABEL_24;
    }

    v240 = 0;
    v151 = v206;
    *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_scene) = v145;
    v250 = 0;
    v249 = 0;
    v152 = [v145 rootNode];
    v153 = swift_allocObject();
    *(v153 + 16) = &v250;
    *(v153 + 24) = &v249;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_260E15654;
    *(v73 + 24) = v153;
    v239 = v153;
    v247 = sub_260E1565C;
    v248 = v73;
    aBlock = MEMORY[0x277D85DD0];
    v244 = 1107296256;
    v245 = sub_260E11C2C;
    v246 = &block_descriptor_35;
    v154 = _Block_copy(&aBlock);

    [v152 enumerateChildNodesUsingBlock_];

    _Block_release(v154);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_41:
    ;
  }

  v155 = v249;
  *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_camera) = v249;
  v156 = objc_allocWithZone(MEMORY[0x277CDBA90]);
  v157 = v155;
  v158 = [v156 init];
  v159 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial;
  *(v2 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial) = v158;
  [v158 setDoubleSided_];
  v160 = v250;
  v161 = v219;
  if (v250)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_260E6BDC0;
    v163 = *(v2 + v159);
    *(v162 + 32) = v163;
    sub_260E157C4(0, &qword_27FE54360, 0x277CDBA90);
    v164 = v160;
    v165 = v163;
    v166 = sub_260E691A4();

    [v164 setMaterials_];
  }

  v242.receiver = v2;
  v242.super_class = ObjectType;
  v167 = objc_msgSendSuper2(&v242, sel_init);
  v168 = *(v151 + 28);
  v169 = v221;
  v170 = v217;
  sub_260E15684(v221 + v168, v217, &qword_27FE542E0, &qword_260E6BFE8);
  v171 = v218;
  if ((*(v218 + 48))(v170, 1, v161) == 1)
  {
    v172 = v167;
    sub_260E155E4(v170, &qword_27FE542E0, &qword_260E6BFE8);
  }

  else
  {
    (*(v171 + 32))(v215, v170, v161);
    v173 = *&v167[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial];
    v174 = v167;
    v175 = [v173 diffuse];
    v176 = sub_260E66494();
    [v175 setContents_];

    v177 = v207;
    sub_260E68D94();
    v178 = sub_260E68D74();
    (*(v208 + 8))(v177, v209);
    if (v178 == 1)
    {
      [v173 setBlendMode_];
    }

    (*(v171 + 8))(v215, v161);
  }

  v179 = v226;
  v180 = [objc_opt_self() defaultCenter];
  v181 = sub_260E68FF4();
  [v180 addObserver:v167 selector:sel_handlePlayerItemFinished_ name:v181 object:0];

  v182 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player;
  aBlock = *&v167[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player];
  v183 = aBlock;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v184 = v183;
  v185 = sub_260E68864();

  v186 = *&v167[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token];
  *&v167[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token] = v185;

  v187 = v220;
  sub_260E145FC(v169, v220, type metadata accessor for VideoViewConfiguration.VideoSequence);
  v188 = swift_getEnumCaseMultiPayload();
  if (v188)
  {
    v189 = v211;
    if (v188 == 1)
    {
      v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v191 = v216;
      v192 = v214;
      v214(v216, v187, v189);
      v193 = v210;
      v192(v210, v187 + v190, v189);
      sub_260E11C88();
      sub_260E11C88();
      v179 = v226;
      v226(v193, v189);
      v194 = v191;
    }

    else
    {
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
      v198 = *(v197 + 48);
      ObjectType = *(v197 + 64);
      v199 = v216;
      v200 = v214;
      v214(v216, v187, v189);
      v201 = v210;
      v200(v210, v187 + v198, v189);
      sub_260E11C88();
      sub_260E11C88();
      v179 = v226;
      v226(v201, v189);
      v179(v199, v189);
      v194 = v187 + ObjectType;
    }

    v179(v194, v189);
    v196 = v213;
    v169 = v221;
  }

  else
  {
    v195 = v216;
    v189 = v211;
    v214(v216, v187, v211);
    sub_260E11C88();
    sub_260E11C88();
    v179(v195, v189);
    v196 = v213;
  }

  sub_260E11E48();
  [*&v167[v182] setRate_];
  sub_260E146C8(v169, type metadata accessor for VideoViewConfiguration);
  v179(v196, v189);

  v202 = v250;
}

id sub_260E11930(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = sub_260E68894();
  if (a2)
  {
    type metadata accessor for LoadingOption(0);
    sub_260E1577C(&qword_27FE54370, type metadata accessor for LoadingOption);
    v5 = sub_260E68F84();
  }

  else
  {
    v5 = 0;
  }

  v15[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() sceneWithURL:v4 options:v5 error:v15];

  v7 = v15[0];
  if (v6)
  {
    v8 = sub_260E68904();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15[0];
    sub_260E68854();

    swift_willThrow();
    v12 = sub_260E68904();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_260E11B08(void *a1, uint64_t a2, void **a3, id *a4)
{
  v7 = [a1 geometry];
  if (v7)
  {
    v8 = v7;
    v9 = *a3;
    if (*a3)
    {
      sub_260E157C4(0, &qword_27FE54368, 0x277CDBA68);
      v10 = v8;
      v11 = v9;
      v12 = sub_260E69554();

      if (v12)
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v8;
    goto LABEL_7;
  }

LABEL_8:
  v13 = [a1 camera];
  if (v13)
  {

    v15 = *a4;
    *a4 = a1;
    v14 = a1;
  }
}

void sub_260E11C2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

void sub_260E11C88()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v3 = sub_260E68894();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  v6 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v7 = [v6 items];
  sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
  v8 = sub_260E691B4();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v9 = sub_260E69714();
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v12 = MEMORY[0x2666F1180](v11, v8);
    goto LABEL_8;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(v8 + 8 * v11 + 32);
LABEL_8:
  v13 = v12;
LABEL_11:

  [v6 insertItem:v5 afterItem:v13];

  v14 = sub_260E14360();
  [v5 addOutput_];
}

void sub_260E11E48()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_camera);
  if (v1)
  {
    v19 = v1;
    v2 = [v19 camera];
    if (v2)
    {
      v3 = v2;
      [v2 zFar];
      v4 = [objc_opt_self() planeWithWidth:0.0 height:0.0];
      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 nodeWithGeometry_];
      v8 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_yOffset);
      sub_260E69414();
      [v7 setPosition_];
      v9 = sub_260E68FF4();
      [v7 setName_];

      [v19 addChildNode_];
      v10 = [objc_allocWithZone(MEMORY[0x277CDBA90]) init];
      [v10 setBlendMode_];
      [v10 setReadsFromDepthBuffer_];
      [v10 setWritesToDepthBuffer_];
      [v10 setLightingModelName_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_260E6BDC0;
      *(v11 + 32) = v10;
      sub_260E157C4(0, &qword_27FE54360, 0x277CDBA90);
      v12 = v10;
      v13 = sub_260E691A4();

      [v6 setMaterials_];

      v14 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial);
      *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial) = v12;
      v15 = v12;

      v16 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane);
      *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane) = v4;
      v17 = v6;

      sub_260E12154(0, 1, 0, 1);
      sub_260E123E4();

      v18 = v15;
    }

    else
    {
      v18 = v19;
    }
  }
}

void sub_260E12154(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane);
  if (!v5)
  {
    return;
  }

  v6 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_camera);
  if (!v6)
  {
    return;
  }

  v32 = v5;
  v11 = [v6 camera];
  if (v11)
  {
    v12 = v11;
    [v11 zFar];
    if (a2)
    {
      v14 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_originalVideoSize);
      v15 = v13 * 0.99;
      if ((a4 & 1) == 0)
      {
LABEL_6:
        v16 = *&a3;
LABEL_10:
        [v12 fieldOfView];
        v18 = (v15 + v15) * tan(v17 * 0.00872664626);
        v19 = v16 * v18 / v14;
        if (v14 / v16 > 1.0)
        {
          v20 = v18;
        }

        else
        {
          v19 = v18;
          v20 = v14 * v18 / v16;
        }

        v21 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize + 8);
        v22 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize) / v14;
        v23 = v21 / v16;
        if (qword_27FE53D90 != -1)
        {
          v31 = v19;
          v30 = v21 / v16;
          swift_once();
          v23 = v30;
          v19 = v31;
        }

        v24 = v20 * v22;
        v25 = v19 * v23;
        v26 = sub_260E68E94();
        __swift_project_value_buffer(v26, qword_27FE54100);
        v27 = sub_260E68E74();
        v28 = sub_260E69474();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = v24;
          *(v29 + 12) = 2048;
          *(v29 + 14) = v25;
          _os_log_impl(&dword_260E02000, v27, v28, "Updating video plane size to (%f, %f)", v29, 0x16u);
          MEMORY[0x2666F1EF0](v29, -1, -1);
        }

        [v32 setWidth_];
        [v32 setHeight_];

        goto LABEL_18;
      }
    }

    else
    {
      v14 = *&a1;
      v15 = v13 * 0.99;
      if ((a4 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v16 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_originalVideoSize + 8);
    goto LABEL_10;
  }

LABEL_18:
}

void sub_260E123E4()
{
  v1 = v0;
  v9 = *MEMORY[0x277D85DE8];
  out_token = 0;
  sub_260E157C4(0, &qword_27FE542D8, 0x277D85C78);
  v2 = sub_260E69494();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_260E15774;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_260E141A4;
  v7[3] = &block_descriptor_42;
  v4 = _Block_copy(v7);
  v5 = v1;

  notify_register_dispatch("com.apple.ProductKit.updateVideoPlaneSize", &out_token, v2, v4);
  _Block_release(v4);

  v6 = *MEMORY[0x277D85DE8];
}

id sub_260E12518()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_lock];

  os_unfair_lock_lock(v2 + 4);
  sub_260E1584C();
  os_unfair_lock_unlock(v2 + 4);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_260E1274C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260E12784(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) == 2)
    {
      [*(Strong + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) currentTime];
      v5 = DWORD2(v26[0]);
      v6 = HIDWORD(v26[0]);
      CMTimeMake(v26, 1, 10);
      v24 = *(a2 + 16);
      if (v24)
      {
        v7 = 0;
        v8 = (a2 + 32);
        v9 = v5 | (v6 << 32);
        v22 = v9;
        do
        {
          v25 = v7;
          v10 = v8[1];
          v26[0] = *v8;
          v26[1] = v10;
          v26[2] = v8[2];
          v11 = v9;
          sub_260E694E4();
          if (sub_260E694C4())
          {
            sub_260E694D4();
            if (sub_260E694B4())
            {
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v12 = sub_260E68E94();
              __swift_project_value_buffer(v12, qword_27FE54100);
              v13 = sub_260E68E74();
              v14 = sub_260E69474();
              if (os_log_type_enabled(v13, v14))
              {
                v15 = swift_slowAlloc();
                *v15 = 134217984;
                *(v15 + 4) = v25;
                _os_log_impl(&dword_260E02000, v13, v14, "Triggering timeRangeHandler with start of range %ld", v15, 0xCu);
                MEMORY[0x2666F1EF0](v15, -1, -1);
              }

              a3(v25, 1);
              v11 = v22;
            }
          }

          sub_260E69424();
          sub_260E694E4();
          v9 = v11;
          if (sub_260E694C4())
          {
            sub_260E69424();
            sub_260E694D4();
            if (sub_260E694B4())
            {
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v16 = sub_260E68E94();
              __swift_project_value_buffer(v16, qword_27FE54100);
              v17 = sub_260E68E74();
              v18 = sub_260E69474();
              if (os_log_type_enabled(v17, v18))
              {
                v19 = swift_slowAlloc();
                *v19 = 134217984;
                *(v19 + 4) = v25;
                _os_log_impl(&dword_260E02000, v17, v18, "Triggering timeRangeHandler with end of range %ld", v19, 0xCu);
                v20 = v19;
                v9 = v22;
                MEMORY[0x2666F1EF0](v20, -1, -1);
              }

              a3(v25, 0);
            }
          }

          v7 = v25 + 1;
          v8 += 3;
        }

        while (v24 != v25 + 1);
      }
    }
  }
}

uint64_t sub_260E12B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_260E12B98(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void sub_260E12BF4()
{
  v0 = sub_260E68904();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration;
  sub_260E145FC(Strong + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, v14, type metadata accessor for VideoViewConfiguration.VideoSequence);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
    (*(v1 + 32))(v7, &v14[*(v46 + 64)], v0);
    v18 = [*&v16[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player] currentItem];
    v47 = v17;
    v48 = v1;
    if (!v18)
    {
      v24 = *(v1 + 8);
      v24(v7, v0);
LABEL_20:
      v24(&v14[*(v46 + 48)], v0);
      v24(v14, v0);
      v17 = v47;
      v1 = v48;
      goto LABEL_21;
    }

    v45 = v5;
    v19 = v18;
    v20 = [v18 asset];

    if (v20)
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v44 = v20;
        v22 = [v21 URL];
        v23 = v45;
        sub_260E688C4();

        LOBYTE(v22) = sub_260E688B4();
        v24 = *(v1 + 8);
        v43 = v1 + 8;
        v24(v23, v0);
        if (v22)
        {
          if (qword_27FE53D90 != -1)
          {
            swift_once();
          }

          v25 = sub_260E68E94();
          __swift_project_value_buffer(v25, qword_27FE54100);
          v26 = sub_260E68E74();
          v27 = sub_260E69474();
          v42 = v26;
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_260E02000, v42, v27, "Started playing feature video", v28, 2u);
            MEMORY[0x2666F1EF0](v28, -1, -1);
          }

          v16[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] = 2;
          v29 = &v16[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureStartedHandler];
          swift_beginAccess();
          v30 = *v29;
          if (!*v29)
          {
            v24(v7, v0);
            swift_endAccess();

            goto LABEL_19;
          }

          v31 = *(v29 + 1);
          swift_endAccess();

          v30(v32);

          sub_260E145DC(v30);
        }

        else
        {
        }

        v24(v7, v0);
LABEL_19:
        v5 = v45;
        goto LABEL_20;
      }
    }

    v24 = *(v1 + 8);
    v24(v7, v0);
    goto LABEL_19;
  }

  sub_260E146C8(v14, type metadata accessor for VideoViewConfiguration.VideoSequence);
LABEL_21:
  v33 = [*&v16[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player] items];
  sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
  v34 = sub_260E691B4();

  if (v34 >> 62)
  {
    v35 = sub_260E69714();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35 == 1 && v16[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] != 2)
  {
    sub_260E145FC(&v16[v17], v12, type metadata accessor for VideoViewConfiguration.VideoSequence);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
        (*(v1 + 32))(v5, v12, v0);
        sub_260E11C88();

        v38 = *(v1 + 8);
        v38(v5, v0);
      }

      else
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
        v37 = *(v39 + 48);
        v40 = *(v39 + 64);
        (*(v1 + 32))(v5, v12, v0);
        sub_260E11C88();

        v38 = *(v1 + 8);
        v38(v5, v0);
        v38(&v12[v40], v0);
      }

      v38(&v12[v37], v0);
    }

    else
    {
      (*(v1 + 32))(v5, v12, v0);
      sub_260E11C88();

      (*(v1 + 8))(v5, v0);
    }
  }

  else
  {
  }
}

void sub_260E132BC()
{
  v1 = sub_260E68904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v67 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  v15 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68714();
  if (v74)
  {
    sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
    if (swift_dynamicCast())
    {
      v70 = v1;
      v71 = v0;
      v19 = v2;
      v20 = v72;
      v21 = [v72 asset];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v68 = v21;
        v69 = v20;
        sub_260E145FC(v71 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, v18, type metadata accessor for VideoViewConfiguration.VideoSequence);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170);
            v26 = v19;
            v27 = *(v19 + 32);
            v28 = v70;
            v27(v14, &v18[*(v25 + 48)], v70);
            v29 = [v23 URL];
            sub_260E688C4();

            LOBYTE(v29) = sub_260E688B4();
            v30 = *(v26 + 8);
            v30(v12, v28);
            if (v29)
            {
              v31 = v68;
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v32 = sub_260E68E94();
              __swift_project_value_buffer(v32, qword_27FE54100);
              v33 = sub_260E68E74();
              v34 = sub_260E69474();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                _os_log_impl(&dword_260E02000, v33, v34, "Finished playing engage video", v35, 2u);
                MEMORY[0x2666F1EF0](v35, -1, -1);
              }

              v30(v14, v28);
              *(v71 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 1;
            }

            else
            {
              v30(v14, v28);
            }

            v30(v18, v28);
          }

          else
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
            v37 = *(v36 + 64);
            v38 = v19;
            v39 = *(v19 + 32);
            v40 = v70;
            v39(v9, &v18[*(v36 + 48)], v70);
            v39(v6, &v18[v37], v40);
            v41 = [v23 URL];
            sub_260E688C4();

            LOBYTE(v41) = sub_260E688B4();
            v42 = *(v38 + 8);
            v42(v12, v40);
            if (v41)
            {
              v43 = v42;
              v44 = v71;
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v45 = sub_260E68E94();
              __swift_project_value_buffer(v45, qword_27FE54100);
              v46 = sub_260E68E74();
              v47 = sub_260E69474();
              v48 = os_log_type_enabled(v46, v47);
              v49 = v69;
              if (v48)
              {
                v50 = v44;
                v51 = swift_slowAlloc();
                *v51 = 0;
                _os_log_impl(&dword_260E02000, v46, v47, "Finished playing engage video", v51, 2u);
                v52 = v51;
                v44 = v50;
                MEMORY[0x2666F1EF0](v52, -1, -1);
              }

              v53 = v70;
              v43(v6, v70);
              v43(v9, v53);
              *(v44 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 1;
              v43(v18, v53);
            }

            else
            {
              v54 = [v23 URL];
              sub_260E688C4();

              LOBYTE(v54) = sub_260E688B4();
              v42(v12, v40);
              if (v54)
              {
                v67 = v42;
                v55 = v69;
                if (qword_27FE53D90 != -1)
                {
                  swift_once();
                }

                v56 = sub_260E68E94();
                __swift_project_value_buffer(v56, qword_27FE54100);
                v57 = sub_260E68E74();
                v58 = sub_260E69474();
                v59 = os_log_type_enabled(v57, v58);
                v60 = v71;
                if (v59)
                {
                  v61 = swift_slowAlloc();
                  *v61 = 0;
                  _os_log_impl(&dword_260E02000, v57, v58, "Finished playing feature video", v61, 2u);
                  MEMORY[0x2666F1EF0](v61, -1, -1);
                }

                v62 = *(v60 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler);
                if (v62)
                {
                  v63 = *(v60 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler + 8);

                  v62(v64);
                  sub_260E145DC(v62);
                }

                sub_260E0E2FC();

                v65 = v70;
                v66 = v67;
                v67(v6, v70);
                v66(v9, v65);
                v66(v18, v65);
              }

              else
              {

                v42(v6, v40);
                v42(v9, v40);
                v42(v18, v40);
              }
            }
          }
        }

        else
        {

          sub_260E146C8(v18, type metadata accessor for VideoViewConfiguration.VideoSequence);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_260E155E4(v73, &qword_27FE542C8, &qword_260E6BFE0);
  }
}

void sub_260E13BBC(uint64_t a1, id a2)
{
  v4 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface;
  v5 = *(a1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface);
  if (v5)
  {
    IOSurfaceDecrementUseCount(v5);
  }

  v6 = [a2 iosurface];
  if (v6)
  {
    v7 = v6;
    IOSurfaceIncrementUseCount(v6);
    v8 = *(a1 + v4);
    *(a1 + v4) = v7;
  }

  v9 = *(a1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial);
  if (v9)
  {
    v10 = [v9 diffuse];
    [v10 setContents_];
  }
}

uint64_t sub_260E13D28()
{
  result = type metadata accessor for VideoViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneDriver.CurrentPlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneDriver.CurrentPlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260E13FA0()
{
  result = qword_27FE54290;
  if (!qword_27FE54290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54290);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_260E1402C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_260E68FF4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_260E68FF4();
    v4 = [v2 integerForKey_];

    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_260E68FF4();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_260E68FF4();
    v10 = [v8 integerForKey_];

    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  sub_260E12154(*&v5, v2 == 0, *&v11, v8 == 0);
}

uint64_t sub_260E141A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_260E1426C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_260E14360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542B0, &qword_260E6BFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_260E6BDD0;
  v1 = *MEMORY[0x277CC4E08];
  *(inited + 32) = sub_260E69024();
  *(inited + 40) = v2;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v3 = *MEMORY[0x277CC4E30];
  *(inited + 80) = sub_260E69024();
  *(inited + 88) = v4;
  *(inited + 120) = MEMORY[0x277D84CC0];
  *(inited + 96) = 1111970369;
  sub_260E66228(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542B8, &qword_260E6BFD0);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x277CE65D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542C0, &qword_260E6BFD8);
  v6 = sub_260E68F84();

  v7 = [v5 initWithOutputSettings_];

  return v7;
}

uint64_t sub_260E144B8()
{
  MEMORY[0x2666F1F80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E144F0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_260E1455C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542C8, &qword_260E6BFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_260E145CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_260E145DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260E145EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260E145FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260E14664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E146C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

CVMetalTextureRef sub_260E14728(__CVBuffer *a1, __CVMetalTextureCache *a2)
{
  textureOut[1] = *MEMORY[0x277D85DE8];
  textureOut[0] = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVMetalTextureCacheCreateTextureFromImage(0, a2, a1, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, textureOut))
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v6 = sub_260E68E94();
    __swift_project_value_buffer(v6, qword_27FE54100);
    v7 = sub_260E68E74();
    v8 = sub_260E69454();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = sub_260E69084();
      v13 = sub_260E43774(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_260E02000, v7, v8, "Failed to create metal texture: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2666F1EF0](v10, -1, -1);
      MEMORY[0x2666F1EF0](v9, -1, -1);
    }
  }

  result = textureOut[0];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_260E148F4(void *a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [a1 device];
  if (v3)
  {
    v4 = v3;
    v5 = [*(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) currentItem];
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache;
      v8 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache);
      if (v8)
      {
        v80 = v8;
      }

      else
      {
        v18 = v1;
        if (qword_27FE53D90 != -1)
        {
          swift_once();
        }

        v19 = sub_260E68E94();
        __swift_project_value_buffer(v19, qword_27FE54100);
        v20 = sub_260E68E74();
        v21 = sub_260E69474();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_260E02000, v20, v21, "Creating texture cache", v22, 2u);
          MEMORY[0x2666F1EF0](v22, -1, -1);
        }

        cacheOut.value = 0;
        v23 = CVMetalTextureCacheCreate(0, 0, v4, 0, &cacheOut);
        if (v23 || (v24 = cacheOut.value) == 0)
        {
          v47 = sub_260E68E74();
          v48 = sub_260E69454();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 67109120;
            *(v49 + 4) = v23;
            _os_log_impl(&dword_260E02000, v47, v48, "VideoRendering SKIP -- Failed to create CVMetalTextureCacheCreate.result != success {status: %d}", v49, 8u);
            MEMORY[0x2666F1EF0](v49, -1, -1);
          }

          swift_unknownObjectRelease();

          value = cacheOut.value;
          goto LABEL_67;
        }

        v1 = v18;
        v25 = *(v18 + v7);
        *(v18 + v7) = cacheOut.value;
        v80 = v24;
      }

      [v6 currentTime];
      v26 = cacheOut.value;
      timescale = cacheOut.timescale;
      flags = cacheOut.flags;
      epoch = cacheOut.epoch;
      v30 = [v6 outputs];
      sub_260E157C4(0, &qword_27FE542E8, 0x277CE65C0);
      v31 = sub_260E691B4();

      if (v31 >> 62)
      {
        if (sub_260E69714())
        {
          goto LABEL_28;
        }
      }

      else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2666F1180](0, v31);
        }

        else
        {
          if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_71;
          }

          v32 = *(v31 + 32);
        }

        v33 = v32;

        objc_opt_self();
        v34 = swift_dynamicCastObjCClass();
        if (v34)
        {
          cacheOut.value = v26;
          *&cacheOut.timescale = __PAIR64__(flags, timescale);
          cacheOut.epoch = epoch;
          v35 = v34;
          if ([v34 hasNewPixelBufferForItemTime_])
          {
            v36 = *MEMORY[0x277CC0898];
            v37 = *(MEMORY[0x277CC0898] + 16);
            lhs.epoch = epoch;
            cacheOut.value = v36;
            *&cacheOut.timescale = *(MEMORY[0x277CC0898] + 8);
            cacheOut.epoch = v37;
            lhs.value = v26;
            lhs.timescale = timescale;
            lhs.flags = flags;
            v38 = [v35 copyPixelBufferForItemTime:&lhs itemTimeForDisplay:&cacheOut];
            if (!v38)
            {
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v51 = sub_260E68E94();
              __swift_project_value_buffer(v51, qword_27FE54100);
              v52 = sub_260E68E74();
              v53 = sub_260E69454();
              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                *v54 = 134217984;
                sub_260E69504();
                *(v54 + 4) = v55;
                _os_log_impl(&dword_260E02000, v52, v53, "Failed to retrieve pixel buffer at %f", v54, 0xCu);
                MEMORY[0x2666F1EF0](v54, -1, -1);
              }

              swift_unknownObjectRelease();
              goto LABEL_68;
            }

            v78 = flags;
            v39 = v38;
            v40 = sub_260E14728(v38, v80);
            if (v40)
            {
              v77 = timescale;
              v79 = v39;
              v41 = v40;
              v42 = CVMetalTextureGetTexture(v40);
              if (v42)
              {
                v75 = v41;
                v74[0] = v74;
                v43 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_lock);
                v44 = MEMORY[0x28223BE20](v42);
                v76 = v1;
                v74[1] = v44;
                MEMORY[0x28223BE20](v44);
                os_unfair_lock_lock(v43 + 4);
                sub_260E154E4();
                os_unfair_lock_unlock(v43 + 4);
                if (*(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState))
                {
                  if (*(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) == 1)
                  {
                    v45 = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration);
                    v46 = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 16);
                    lhs = cacheOut;
                    rhs.value = v45;
                    *&rhs.timescale = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 8);
                    rhs.epoch = v46;
                  }

                  else
                  {
                    v56 = cacheOut.value;
                    v57 = cacheOut.epoch;
                    v58 = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 16);
                    v59 = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration);
                    v60 = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration + 16);
                    lhs.value = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration);
                    *&lhs.timescale = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 8);
                    lhs.epoch = v58;
                    rhs.value = v59;
                    *&rhs.timescale = *(v76 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration + 8);
                    rhs.epoch = v60;
                    v61 = *&cacheOut.timescale;
                    CMTimeAdd(&v82, &lhs, &rhs);
                    lhs.value = v56;
                    *&lhs.timescale = v61;
                    lhs.epoch = v57;
                    rhs = v82;
                  }

                  CMTimeAdd(&v82, &lhs, &rhs);
                  cacheOut = v82;
                }

                if (qword_27FE53D90 != -1)
                {
                  swift_once();
                }

                v62 = sub_260E68E94();
                __swift_project_value_buffer(v62, qword_27FE54100);
                v63 = sub_260E68E74();
                v64 = sub_260E69444();
                if (os_log_type_enabled(v63, v64))
                {
                  v65 = swift_slowAlloc();
                  *v65 = 134218496;
                  *(v65 + 4) = CACurrentMediaTime();
                  *(v65 + 12) = 2048;
                  lhs.value = v26;
                  lhs.timescale = v77;
                  lhs.flags = v78;
                  lhs.epoch = epoch;
                  *(v65 + 14) = CMTimeGetSeconds(&lhs);
                  *(v65 + 22) = 2048;
                  swift_beginAccess();
                  lhs = cacheOut;
                  *(v65 + 24) = CMTimeGetSeconds(&lhs);
                  _os_log_impl(&dword_260E02000, v63, v64, "SceneKit renderer media time: CACurrentMediaTime: %f, cmTimeForPixelBuffer: %f, itemTimeForDisplay: %f", v65, 0x20u);
                  MEMORY[0x2666F1EF0](v65, -1, -1);
                }

                swift_beginAccess();
                rhs = cacheOut;
                [a1 setSceneTime_];

                swift_unknownObjectRelease();
                goto LABEL_59;
              }
            }

            else
            {
            }
          }

          else
          {
          }

LABEL_59:
          swift_unknownObjectRelease();

LABEL_68:
          v73 = *MEMORY[0x277D85DE8];
          return;
        }

LABEL_62:
        if (qword_27FE53D90 == -1)
        {
LABEL_63:
          v66 = sub_260E68E94();
          __swift_project_value_buffer(v66, qword_27FE54100);
          v67 = v6;
          v68 = sub_260E68E74();
          v69 = sub_260E69454();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v70 = 138412290;
            *(v70 + 4) = v67;
            *v71 = v6;
            v72 = v67;
            _os_log_impl(&dword_260E02000, v68, v69, "No output found for player item: %@", v70, 0xCu);
            sub_260E155E4(v71, &qword_27FE542F0, &unk_260E6BFF0);
            MEMORY[0x2666F1EF0](v71, -1, -1);
            MEMORY[0x2666F1EF0](v70, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          value = v80;
LABEL_67:

          goto LABEL_68;
        }

LABEL_71:
        swift_once();
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v13 = sub_260E68E94();
    __swift_project_value_buffer(v13, qword_27FE54100);
    v14 = sub_260E68E74();
    v15 = sub_260E69454();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_260E02000, v14, v15, "No current AVPlayer item", v16, 2u);
      MEMORY[0x2666F1EF0](v16, -1, -1);
    }

    v17 = *MEMORY[0x277D85DE8];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v9 = sub_260E68E94();
    __swift_project_value_buffer(v9, qword_27FE54100);
    v80 = sub_260E68E74();
    v10 = sub_260E69454();
    if (os_log_type_enabled(v80, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_260E02000, v80, v10, "No rendering device", v11, 2u);
      MEMORY[0x2666F1EF0](v11, -1, -1);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_260E154E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_260E1550C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface);
  if (v1)
  {
    IOSurfaceDecrementUseCount(v1);
  }
}

unint64_t sub_260E15590()
{
  result = qword_27FE54330;
  if (!qword_27FE54330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54330);
  }

  return result;
}

uint64_t sub_260E155E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_260E1565C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_260E15684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_260E156F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_260E1573C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E1577C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260E157C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_260E1580C(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E158AC()
{
  v0 = *MEMORY[0x2666F11A0]();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_260E15918()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_260E15978(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_260E15A94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_260E15B64()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54490);
  v1 = __swift_project_value_buffer(v0, qword_27FE54490);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ProductKit::AirTagPairing2::Configuration::Color_optional __swiftcall AirTagPairing2.Configuration.Color.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 99)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AirTagPairing2.Configuration.Color.rawValue.getter()
{
  if (*v0)
  {
    return 99;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E15C74()
{
  v1 = *v0;
  sub_260E698F4();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x2666F1410](v2);
  return sub_260E69914();
}

uint64_t sub_260E15CC4()
{
  if (*v0)
  {
    v1 = 99;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x2666F1410](v1);
}

uint64_t sub_260E15CFC()
{
  v1 = *v0;
  sub_260E698F4();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x2666F1410](v2);
  return sub_260E69914();
}

void *sub_260E15D48@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 99)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_260E15D68(uint64_t *a1@<X8>)
{
  v2 = 99;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t AirTagPairing2.Configuration.engravingInformation.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 48))
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v4 = *(v1 + 32);
    v3 = *(v1 + 24);
    result = sub_260E15E24(v3, v4, *(v1 + 40), 0);
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_260E15E24(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_260E15E4C(result, a2);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return sub_260E15E4C(result, a2);
  }
}

uint64_t sub_260E15E4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_260E15EA0(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 >> 60 != 15)
  {
    v3 = *result;
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    sub_260E15E4C(*result, v2);
    result = sub_260E15F78(v4, v5, v6, v7);
    *(a2 + 24) = v3;
    *(a2 + 32) = v2;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

uint64_t *AirTagPairing2.Configuration.engravingInformation.setter(uint64_t *result)
{
  v2 = result[1];
  if (v2 >> 60 != 15)
  {
    v3 = *result;
    result = sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

uint64_t sub_260E15F78(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_260E15F8C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_260E15F8C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_260E15FB4(result, a2);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return sub_260E15FB4(result, a2);
  }
}

uint64_t sub_260E15FB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *(*AirTagPairing2.Configuration.engravingInformation.modify(uint64_t *a1))(uint64_t *result, char a2)
{
  a1[2] = v1;
  if (*(v1 + 48))
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v4 = *(v1 + 32);
    v3 = *(v1 + 24);
    sub_260E15E24(v3, v4, *(v1 + 40), 0);
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_260E16080;
}

uint64_t *sub_260E16080(uint64_t *result, char a2)
{
  v2 = result[1];
  if (a2)
  {
    v3 = *result;
    if (v2 >> 60 != 15)
    {
      v4 = result[2];
      v5 = *(v4 + 24);
      v6 = *(v4 + 32);
      v7 = *(v4 + 40);
      v8 = *(v4 + 48);
      sub_260E15E4C(*result, v2);
      sub_260E15F78(v5, v6, v7, v8);
      *(v4 + 24) = v3;
      *(v4 + 32) = v2;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
    }

    return sub_260E16168(v3, v2);
  }

  else if (v2 >> 60 != 15)
  {
    v9 = result[2];
    v10 = *result;
    result = sub_260E15F78(*(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48));
    *(v9 + 24) = v10;
    *(v9 + 32) = v2;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
  }

  return result;
}

uint64_t sub_260E16168(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260E15FB4(a1, a2);
  }

  return a1;
}

uint64_t AirTagPairing2.Configuration.personalizationAssetInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_260E16198(v2, v3, v4, v5);
}

uint64_t sub_260E16198(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_260E15E24(result, a2, a3, a4);
  }

  return result;
}

__n128 AirTagPairing2.Configuration.personalizationAssetInfo.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

void AirTagPairing2.Configuration.init(hardwareModel:color:timeout:)(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = -1;
  v4 = v3 == 0;
  v5 = 99;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = a3;
}

uint64_t _s10ProductKit17HeadphonePairing2V13ConfigurationV20engravingInformationAA27PersonalizationAssetManagerC0I4InfoOSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_260E16198(v2, v3, v4, v5);
}

__n128 AirTagPairing2.AssetRequest.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

uint64_t AirTagPairing2.AssetRequest.assets()()
{
  v2 = sub_260E68B04();
  *(v1 + 32) = v2;
  v3 = *(v2 - 8);
  *(v1 + 40) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v5 = sub_260E68E24();
  *(v1 + 56) = v5;
  v6 = *(v5 - 8);
  *(v1 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544A8, &qword_260E6C138) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  v9 = sub_260E68B54();
  *(v1 + 88) = v9;
  v10 = *(v9 - 8);
  *(v1 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544B0, &qword_260E6C140) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v13 = sub_260E68B44();
  *(v1 + 128) = v13;
  v14 = *(v13 - 8);
  *(v1 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544B8, &qword_260E6C148) - 8) + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v17 = sub_260E68DD4();
  *(v1 + 168) = v17;
  v18 = *(v17 - 8);
  *(v1 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v1 + 184) = swift_task_alloc();
  v20 = swift_task_alloc();
  v21 = *v0;
  *(v1 + 192) = v20;
  *(v1 + 200) = v21;
  *(v1 + 208) = v0[1];
  *(v1 + 216) = *(v0 + 3);
  *(v1 + 232) = v0[5];
  *(v1 + 280) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_260E165E4, 0, 0);
}

uint64_t sub_260E165E4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_260E68DC4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 160);
    v5 = &unk_27FE544B8;
    v6 = &unk_260E6C148;
LABEL_5:
    sub_260E155E4(v4, v5, v6);
    sub_260E15590();
    swift_allocError();
    *v12 = xmmword_260E6C120;
    *(v12 + 16) = 2;
    swift_willThrow();
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 144);
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v60 = *(v0 + 72);
    v61 = *(v0 + 48);

    v22 = *(v0 + 8);

    return v22();
  }

  v7 = *(v0 + 200);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 120);
  (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 160), *(v0 + 168));
  sub_260E68B34();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 120);
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
    v5 = &unk_27FE544B0;
    v6 = &unk_260E6C140;
    v4 = v11;
    goto LABEL_5;
  }

  v24 = *(v0 + 280);
  v25 = *(v0 + 208);
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 168);
  v29 = *(v0 + 176);
  v31 = *(v0 + 144);
  v30 = *(v0 + 152);
  v32 = *(v0 + 128);
  v33 = *(v0 + 136);
  v62 = *(v0 + 112);
  (*(v33 + 32))(v30, *(v0 + 120), v32);
  (*(v29 + 16))(v26, v27, v28);
  (*(v33 + 16))(v31, v30, v32);
  sub_260E68B14();
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      v51 = 1;
      goto LABEL_17;
    }

    v40 = *(v0 + 224);
    v41 = *(v0 + 232);
    v42 = *(v0 + 216);
    v44 = *(v0 + 64);
    v43 = *(v0 + 72);
    v45 = *(v0 + 56);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544C0, &unk_260E6E6F0) + 48);
    *v43 = v42;
    v43[1] = v40;
    sub_260E16198(v42, v40, v41, 2);
    sub_260E15E4C(v42, v40);
    sub_260E68D64();
    (*(v44 + 104))(v43, *MEMORY[0x277D42750], v45);
  }

  else
  {
    if (v24)
    {
      v37 = *(v0 + 64);
      v36 = *(v0 + 72);
      v38 = *(v0 + 56);
      sub_260E16198(*(v0 + 216), *(v0 + 224), *(v0 + 232), 1);

      sub_260E68E14();
      v39 = MEMORY[0x277D42748];
    }

    else
    {
      v34 = *(v0 + 224);
      v35 = *(v0 + 216);
      v37 = *(v0 + 64);
      v36 = *(v0 + 72);
      v38 = *(v0 + 56);
      sub_260E16198(v35, v34, *(v0 + 232), 0);
      sub_260E15E4C(v35, v34);
      sub_260E68E04();
      v39 = MEMORY[0x277D42740];
    }

    (*(v37 + 104))(v36, *v39, v38);
  }

  v47 = *(v0 + 224);
  v48 = *(v0 + 232);
  v49 = *(v0 + 216);
  v50 = *(v0 + 280);
  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 72), *(v0 + 56));
  sub_260E15F78(v49, v47, v48, v50);
  v51 = 0;
LABEL_17:
  v52 = *(v0 + 104);
  v53 = *(v0 + 112);
  v54 = *(v0 + 88);
  v55 = *(v0 + 96);
  v56 = *(v0 + 48);
  (*(*(v0 + 64) + 56))(*(v0 + 80), v51, 1, *(v0 + 56));
  sub_260E68B24();
  (*(v55 + 16))(v52, v53, v54);
  sub_260E68AE4();
  v57 = *(MEMORY[0x277D426D0] + 4);
  v58 = swift_task_alloc();
  *(v0 + 240) = v58;
  *v58 = v0;
  v58[1] = sub_260E16AE0;
  v59 = *(v0 + 48);

  return MEMORY[0x2821A34D8]();
}

uint64_t sub_260E16AE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_260E16FD0;
  }

  else
  {
    v5 = sub_260E16BF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260E16BF4()
{
  v15 = v0;
  if (qword_27FE53D98 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54490);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    sub_260E68BE4();

    v8 = sub_260E69084();
    v10 = sub_260E43774(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_260E02000, v3, v4, "Returning valid assets: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  sub_260E692E4();
  v0[33] = sub_260E692D4();
  v12 = sub_260E69284();

  return MEMORY[0x2822009F8](sub_260E16DE0, v12, v11);
}

uint64_t sub_260E16DE0()
{
  v1 = v0[33];
  v2 = v0[31];

  type metadata accessor for AirTagPairing2.Assets();
  v3 = swift_allocObject();
  v0[34] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_260E16E64, 0, 0);
}

uint64_t sub_260E16E64()
{
  v1 = v0[24];
  v2 = v0[22];
  v12 = v0[21];
  v13 = v0[23];
  v3 = v0[19];
  v4 = v0[17];
  v14 = v0[20];
  v15 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v16 = v0[15];
  v17 = v0[13];
  v7 = v0[11];
  v8 = v0[12];
  v18 = v0[10];
  v19 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];
  v10 = v0[34];

  return v9(v10);
}

uint64_t sub_260E16FD0()
{
  v41 = v0;
  if (qword_27FE53D98 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54490);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v10 = sub_260E69084();
    v12 = sub_260E43774(v10, v11, &v40);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260E02000, v4, v5, "Failed to find assets: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v13 = v0[32];
  v14 = v0[22];
  v36 = v0[21];
  v38 = v0[24];
  v15 = v0[17];
  v34 = v0[16];
  v35 = v0[19];
  v16 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[4];
  swift_willThrow();
  (*(v19 + 8))(v20, v21);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v35, v34);
  (*(v14 + 8))(v38, v36);
  v23 = v0[23];
  v22 = v0[24];
  v25 = v0[19];
  v24 = v0[20];
  v26 = v0[18];
  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[13];
  v30 = v0[9];
  v31 = v0[10];
  v37 = v0[6];
  v39 = v0[32];

  v32 = v0[1];

  return v32();
}

uint64_t AirTagPairing2.Assets.AdjustedImageIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_260E17318()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E17384()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E173D4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

  *a2 = v5 != 0;
  return result;
}

ProductKit::AirTagPairing2::Assets::VideoIdentifier_optional __swiftcall AirTagPairing2.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AirTagPairing2.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64726143786F7250;
  if (v1 != 3)
  {
    v2 = 0x5F656C6261736944;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260E17584()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E17688()
{
  *v0;
  *v0;
  *v0;
  sub_260E690C4();
}

uint64_t sub_260E17778()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

void sub_260E17884(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000706F6F6C5FLL;
  v4 = 0x64726143786F7250;
  if (v2 != 3)
  {
    v4 = 0x5F656C6261736944;
    v3 = 0xEC000000706F6F6CLL;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000017;
    v3 = 0x8000000260E71030;
  }

  v5 = 0x8000000260E70FF0;
  v6 = 0xD000000000000012;
  if (*v1)
  {
    v6 = 0xD000000000000010;
    v5 = 0x8000000260E71010;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

ProductKit::AirTagPairing2::Assets::ViewIdentifier_optional __swiftcall AirTagPairing2.Assets.ViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AirTagPairing2.Assets.ViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 1886351212;
  }

  else
  {
    result = 0x6F72746E69;
  }

  *v0;
  return result;
}

uint64_t sub_260E179F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1886351212;
  }

  else
  {
    v4 = 0x6F72746E69;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1886351212;
  }

  else
  {
    v6 = 0x6F72746E69;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_260E69834();
  }

  return v9 & 1;
}

uint64_t sub_260E17A90()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E17B08()
{
  *v0;
  sub_260E690C4();
}

uint64_t sub_260E17B6C()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E17BE0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_260E17C40(uint64_t *a1@<X8>)
{
  v2 = 1886351212;
  if (!*v1)
  {
    v2 = 0x6F72746E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AirTagPairing2.Assets.adjustedImage(_:)@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v2 = sub_260E68AA4();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260E68AD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544C8, &qword_260E6C150);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_260E68BB4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68BA4();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v24 = *(v1 + 16);
    sub_260E68B64();
    (*(v7 + 16))(v11, v13, v6);
    sub_260E68AC4();
    v25 = sub_260E68A94();
    v43 = v13;
    v26 = v11;
    v41 = v27;
    v28 = sub_260E68A84();
    v44 = v22;
    v29 = v6;
    v30 = v28;
    v31 = sub_260E68A64();
    v42 = v18;
    v32 = v31;
    v34 = v33;
    LOBYTE(v24) = sub_260E68A74();
    (*(v45 + 8))(v5, v46);
    v35 = v24 & 1;
    v36 = v47;
    v37 = v41;
    *v47 = v25;
    v36[1] = v37;
    v36[2] = v30;
    v36[3] = v32;
    v36[4] = v34;
    *(v36 + 40) = v35;
    v38 = v36 + *(type metadata accessor for AdjustedAsset() + 20);
    sub_260E68AB4();
    v39 = *(v7 + 8);
    v39(v26, v29);
    v39(v43, v29);
    return (*(v19 + 8))(v44, v42);
  }

  return result;
}

uint64_t AirTagPairing2.Assets.video(_:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v47 = sub_260E68AA4();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260E68AD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D0, &qword_260E6C158);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_260E68B84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1;
  *a1;
  sub_260E68B74();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v19 + 32);
    v43 = v22;
    v24(v22, v17, v18);
    v25 = *(v44 + 16);
    sub_260E68BC4();
    (*(v7 + 16))(v11, v13, v6);
    sub_260E68AC4();
    v26 = v5;
    v41 = sub_260E68A94();
    v28 = v27;
    v29 = v6;
    v30 = sub_260E68A84();
    v31 = sub_260E68A64();
    v42 = v13;
    v32 = v11;
    v33 = v31;
    v44 = v18;
    v35 = v34;
    v36 = sub_260E68A74();
    (*(v45 + 8))(v26, v47);
    v37 = v46;
    *v46 = v41;
    v37[1] = v28;
    v37[2] = v30;
    v37[3] = v33;
    v37[4] = v35;
    *(v37 + 40) = v36 & 1;
    v38 = v37 + *(type metadata accessor for AdjustedAsset() + 20);
    sub_260E68AB4();
    v39 = *(v7 + 8);
    v39(v32, v29);
    v39(v42, v29);
    return (*(v19 + 8))(v43, v44);
  }

  return result;
}

char *AirTagPairing2.Assets.view(_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v137 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = &v126 - v7;
  v134 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v8 = *(*(v134 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v134);
  v129 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v131 = &v126 - v12;
  MEMORY[0x28223BE20](v11);
  v132 = &v126 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v136 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v142 = &v126 - v18;
  v19 = type metadata accessor for AdjustedAsset();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = (&v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v126 - v24);
  v26 = sub_260E68904();
  v141 = *(v26 - 8);
  v27 = *(v141 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v130 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v135 = &v126 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v138 = &v126 - v33;
  MEMORY[0x28223BE20](v32);
  v143 = &v126 - v34;
  v140 = *a1;
  LOBYTE(v144) = 2;
  v139 = v1;
  AirTagPairing2.Assets.video(_:)(&v144, v25);
  v35 = *v25;
  v36 = v25[1];
  v37 = v25[2];
  v38 = v25[3];
  v39 = v25[4];
  v40 = *(v25 + 40);

  v41 = v37;

  v42 = v25;
  v43 = v141;
  sub_260E19404(v42, type metadata accessor for AdjustedAsset);
  *&v144 = v35;
  *(&v144 + 1) = v36;
  *&v145 = v41;
  *(&v145 + 1) = v38;
  *&v146 = v39;
  BYTE8(v146) = v40;
  v44 = v142;
  GenericAsset.fileURL.getter(v142);
  v45 = *(v43 + 48);
  if (v45(v44, 1, v26) == 1)
  {
    sub_260E155E4(v44, &qword_27FE54320, &qword_260E6E720);

LABEL_5:

    if (qword_27FE53D98 != -1)
    {
      swift_once();
    }

    v55 = sub_260E68E94();
    __swift_project_value_buffer(v55, qword_27FE54490);
    v56 = sub_260E68E74();
    v57 = sub_260E69464();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v144 = v59;
      *v58 = 136315138;
      v153 = v140;
      v60 = sub_260E69084();
      v62 = sub_260E43774(v60, v61, &v144);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_260E02000, v56, v57, "Could not find AirTagPairingAssets.view files {identifier: %s}", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x2666F1EF0](v59, -1, -1);
      MEMORY[0x2666F1EF0](v58, -1, -1);
    }

    v63 = type metadata accessor for VideoViewConfiguration(0);
    v64 = v137;
    (*(*(v63 - 8) + 56))(v137, 1, 1, v63);
    v65 = objc_allocWithZone(type metadata accessor for AdjustedVideoView());
    return sub_260E559EC(v64);
  }

  v46 = *(v43 + 32);
  v128 = v43 + 32;
  v127 = v46;
  v46(v143, v44, v26);

  LOBYTE(v144) = 3;
  AirTagPairing2.Assets.video(_:)(&v144, v23);
  v47 = v23[1];
  v142 = *v23;
  v48 = v23[2];
  v49 = v23[3];
  v50 = v23[4];
  v51 = *(v23 + 40);

  v52 = v48;

  sub_260E19404(v23, type metadata accessor for AdjustedAsset);
  *&v144 = v142;
  *(&v144 + 1) = v47;
  v142 = v47;
  *&v145 = v52;
  *(&v145 + 1) = v49;
  *&v146 = v50;
  BYTE8(v146) = v51;
  v53 = v136;
  GenericAsset.fileURL.getter(v136);
  v54 = v26;
  if (v45(v53, 1, v26) == 1)
  {
    (*(v43 + 8))(v143, v26);
    sub_260E155E4(v53, &qword_27FE54320, &qword_260E6E720);

    goto LABEL_5;
  }

  v67 = v143;
  v127(v138, v53, v26);

  if (v140)
  {
    v68 = sub_260E69834();

    v69 = v132;
    v70 = v67;
    v71 = v135;
    if ((v68 & 1) == 0)
    {
      v72 = *(v43 + 16);
      v72(v132, v138, v54);
      v73 = v69;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    }
  }

  else
  {

    v69 = v132;
    v70 = v67;
    v71 = v135;
  }

  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
  v72 = *(v43 + 16);
  v72(v69, v138, v54);
  v72(&v69[v74], v70, v54);
  v73 = v69;
  swift_storeEnumTagMultiPayload();
  if ((v140 & 1) == 0)
  {

    goto LABEL_18;
  }

LABEL_15:
  v75 = sub_260E69834();

  if (v75)
  {
LABEL_18:
    v76 = v73;
    goto LABEL_19;
  }

  v76 = v73;
LABEL_19:
  type metadata accessor for MobileAssetManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = [objc_opt_self() bundleForClass_];
  v79 = sub_260E68FF4();

  v80 = sub_260E68FF4();
  v81 = [v78 URLForResource:v79 withExtension:v80];

  if (v81)
  {
    sub_260E688C4();

    if (qword_27FE53D98 != -1)
    {
      swift_once();
    }

    v82 = sub_260E68E94();
    __swift_project_value_buffer(v82, qword_27FE54490);
    v83 = v131;
    sub_260E19464(v76, v131);
    v84 = v130;
    v72(v130, v71, v54);
    v85 = sub_260E68E74();
    v86 = sub_260E69434();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v144 = v88;
      *v87 = 136315394;
      sub_260E19464(v83, v129);
      v89 = sub_260E69084();
      v90 = v83;
      v92 = v91;
      sub_260E19404(v90, type metadata accessor for VideoViewConfiguration.VideoSequence);
      v93 = sub_260E43774(v89, v92, &v144);

      *(v87 + 4) = v93;
      *(v87 + 12) = 2080;
      sub_260E194E8();
      v94 = sub_260E69804();
      v96 = v95;
      (*(v43 + 8))(v84, v54);
      v97 = sub_260E43774(v94, v96, &v144);

      *(v87 + 14) = v97;
      _os_log_impl(&dword_260E02000, v85, v86, "Creating VideoConfiguration {videoSequence: %s, sceneURL: %s", v87, 0x16u);
      swift_arrayDestroy();
      v98 = v88;
      v71 = v135;
      MEMORY[0x2666F1EF0](v98, -1, -1);
      MEMORY[0x2666F1EF0](v87, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v84, v54);
      sub_260E19404(v83, type metadata accessor for VideoViewConfiguration.VideoSequence);
    }

    v108 = v139;
    v109 = v133;
    sub_260E19464(v76, v133);
    v111 = *(v108 + 16);
    v112 = sub_260E68BD4();
    v113 = type metadata accessor for VideoViewConfiguration(0);
    sub_260E50238(v109 + v113[5]);

    v114 = v113[6];
    v127((v109 + v114), v71, v54);
    (*(v43 + 56))(v109 + v114, 0, 1, v54);
    v115 = v113[7];
    v116 = sub_260E68DB4();
    (*(*(v116 - 8) + 56))(v109 + v115, 1, 1, v116);
    sub_260E194C8(&v144);
    *(v109 + v113[8]) = vdupq_n_s64(0x4093880000000000uLL);
    *(v109 + v113[9]) = 0xC082C00000000000;
    v117 = v109 + v113[10];
    v118 = v147;
    *(v117 + 32) = v146;
    *(v117 + 48) = v118;
    *(v117 + 128) = v152;
    v119 = v151;
    *(v117 + 96) = v150;
    *(v117 + 112) = v119;
    v120 = v149;
    *(v117 + 64) = v148;
    *(v117 + 80) = v120;
    v121 = v145;
    *v117 = v144;
    *(v117 + 16) = v121;
    *(v109 + v113[11]) = 0;
    (*(*(v113 - 1) + 56))(v109, 0, 1, v113);
    v70 = v143;
  }

  else
  {
    if (qword_27FE53D98 != -1)
    {
      swift_once();
    }

    v99 = sub_260E68E94();
    __swift_project_value_buffer(v99, qword_27FE54490);
    v100 = sub_260E68E74();
    v101 = sub_260E69464();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v144 = v103;
      *v102 = 136315138;
      v153 = v140;
      v104 = sub_260E69084();
      v106 = v54;
      v107 = sub_260E43774(v104, v105, &v144);

      *(v102 + 4) = v107;
      v54 = v106;
      _os_log_impl(&dword_260E02000, v100, v101, "Missing sceneFile -- Failed to create VideoViewConfiguration {identifier: %s}", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x2666F1EF0](v103, -1, -1);
      MEMORY[0x2666F1EF0](v102, -1, -1);
    }

    v108 = v139;
    v109 = v133;
    v110 = type metadata accessor for VideoViewConfiguration(0);
    (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
  }

  v122 = *(v108 + 16);
  v123 = sub_260E68B94();
  v124 = sub_260E526E8(v109, v123);

  sub_260E155E4(v109, &qword_27FE544D8, &unk_260E6C160);
  sub_260E19404(v76, type metadata accessor for VideoViewConfiguration.VideoSequence);
  v125 = *(v43 + 8);
  v125(v138, v54);
  v125(v70, v54);
  return v124;
}

uint64_t AirTagPairing2.Assets.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AirTagPairing2.Assets.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_260E19404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_260E19464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_260E194C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t sub_260E194E8()
{
  result = qword_27FE54570;
  if (!qword_27FE54570)
  {
    sub_260E68904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54570);
  }

  return result;
}

unint64_t sub_260E19544()
{
  result = qword_27FE544E0;
  if (!qword_27FE544E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544E0);
  }

  return result;
}

unint64_t sub_260E1959C()
{
  result = qword_27FE544E8;
  if (!qword_27FE544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544E8);
  }

  return result;
}

unint64_t sub_260E195F4()
{
  result = qword_27FE544F0;
  if (!qword_27FE544F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544F0);
  }

  return result;
}

unint64_t sub_260E1964C()
{
  result = qword_27FE544F8;
  if (!qword_27FE544F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544F8);
  }

  return result;
}

unint64_t sub_260E196D4()
{
  result = qword_27FE54510;
  if (!qword_27FE54510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54510);
  }

  return result;
}

unint64_t sub_260E1975C()
{
  result = qword_27FE54528;
  if (!qword_27FE54528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54528);
  }

  return result;
}

uint64_t sub_260E197E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260E19834@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 48))
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v4 = *(result + 32);
    v3 = *(result + 24);
    result = sub_260E15E24(v3, v4, *(result + 40), 0);
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10ProductKit27PersonalizationAssetManagerC0D4InfoOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_260E19934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_260E19984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagHardwareModel(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirTagHardwareModel(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagPairing2.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirTagPairing2.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphonePairing.Assets.ViewIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePairing.Assets.ViewIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10ProductKit0A5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v19 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_260E69834();
      sub_260E1A318(v6, v5, 0);
      sub_260E1A318(v3, v2, 0);
      sub_260E1A330(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_24;
    }

    sub_260E1A318(v19, v2, 0);
    sub_260E1A318(v3, v2, 0);
    sub_260E1A330(v3, v2, 0);
    v18 = v3;
    v21 = v2;
    v22 = 0;
LABEL_136:
    sub_260E1A330(v18, v21, v22);
    return 1;
  }

  if (v4 != 1)
  {
    v16 = *a1;
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v14 = 1;
        sub_260E1A330(1, 0, 2u);
        return v14;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 2;
        goto LABEL_135;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 3;
        goto LABEL_135;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 4;
        goto LABEL_135;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 5;
        goto LABEL_135;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 6;
        goto LABEL_135;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 7;
        goto LABEL_135;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 8;
        goto LABEL_135;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 9;
        goto LABEL_135;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 10;
        goto LABEL_135;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 11;
        goto LABEL_135;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 12;
        goto LABEL_135;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v18 = 0;
LABEL_135:
        v21 = 0;
        v22 = 2;
        break;
    }

    goto LABEL_136;
  }

  if (v7 != 1)
  {
LABEL_10:
    sub_260E1A318(*a2, *(a2 + 8), v7);
    sub_260E1A318(v3, v2, v4);
    sub_260E1A330(v3, v2, v4);
    sub_260E1A330(v6, v5, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v14 = 1;
    sub_260E1A318(*a1, v2, 1u);
    sub_260E1A318(v3, v2, 1u);
    sub_260E1A330(v3, v2, 1u);
    sub_260E1A330(v3, v2, 1u);
    return v14;
  }

  v9 = *a1;
  v10 = sub_260E69834();
  sub_260E1A318(v6, v5, 1u);
  sub_260E1A318(v3, v2, 1u);
  sub_260E1A330(v3, v2, 1u);
  v11 = v6;
  v12 = v5;
  v13 = 1;
LABEL_24:
  sub_260E1A330(v11, v12, v13);
  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_10ProductKit0A5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_260E1A264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260E1A2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_260E1A2F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_260E1A318(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_260E1A330(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_260E1A348(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
  if (!swift_dynamicCast())
  {
    type metadata accessor for CKError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_260E338D4(&qword_27FE546F0, 255, type metadata accessor for CKError);
    sub_260E68804();

    if ((v6 - 3) < 2)
    {
      goto LABEL_7;
    }

    if (v6 == 11)
    {
      v3 = 9;
      goto LABEL_9;
    }

    if (v6 == 36)
    {
LABEL_7:
      v3 = 2;
    }

    else
    {
LABEL_8:
      v3 = 0;
    }

LABEL_9:
    v4 = 0;
    v5 = 2;
    goto LABEL_10;
  }

  v3 = v7;
  v4 = v8;
  v5 = v9;
LABEL_10:

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_260E1A48C()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54540);
  v1 = __swift_project_value_buffer(v0, qword_27FE54540);
  if (qword_27FE53E68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E1A554()
{
  v0 = sub_260E68904();
  __swift_allocate_value_buffer(v0, qword_27FE54558);
  __swift_project_value_buffer(v0, qword_27FE54558);
  return sub_260E68884();
}

uint64_t static PersonalizationAssetManager.defaultCacheDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FE53DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_260E68904();
  v3 = __swift_project_value_buffer(v2, qword_27FE54558);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PersonalizationAssetManager.__allocating_init(container:cacheDirectory:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationAssetManager.init(container:cacheDirectory:)(a1, a2);
  return v4;
}

uint64_t PersonalizationAssetManager.init(container:cacheDirectory:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v47 = _s19ParentDirectoryCRUDVMa();
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260E68904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v13 = sub_260E68E94();
  __swift_project_value_buffer(v13, qword_27FE54540);
  v14 = *(v9 + 16);
  v49 = a2;
  v14(v12, a2, v8);
  v15 = a1;
  v16 = sub_260E68E74();
  v17 = sub_260E69474();
  v50 = v9;
  v18 = v8;
  v19 = v17;

  if (os_log_type_enabled(v16, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    v46 = swift_slowAlloc();
    *&v51[0] = v46;
    *v20 = 138412546;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 2080;
    sub_260E338D4(&qword_27FE54570, 255, MEMORY[0x277CC9260]);
    v22 = v15;
    v23 = sub_260E69804();
    v25 = v24;
    (*(v50 + 8))(v12, v18);
    v26 = sub_260E43774(v23, v25, v51);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_260E02000, v16, v19, "PersonalizationAssetManager INIT {container: %@, cacheDirectory: %s}", v20, 0x16u);
    v27 = v45;
    sub_260E155E4(v45, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v27, -1, -1);
    v28 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x2666F1EF0](v28, -1, -1);
    MEMORY[0x2666F1EF0](v20, -1, -1);
  }

  else
  {

    (*(v50 + 8))(v12, v18);
  }

  v29 = [v15 publicCloudDatabase];
  v30 = [v15 privateCloudDatabase];
  v31 = [v15 privateCloudDatabase];
  v32 = [objc_opt_self() defaultManager];
  v33 = v48;
  (*(v50 + 32))(&v48[*(v47 + 20)], v49, v18);
  *v33 = v32;
  sub_260E1AB30(v29, v30, v31, v33, v51);
  v34 = v51[13];
  *(v3 + 304) = v51[12];
  *(v3 + 320) = v34;
  v35 = v51[15];
  *(v3 + 336) = v51[14];
  *(v3 + 352) = v35;
  v36 = v51[9];
  *(v3 + 240) = v51[8];
  *(v3 + 256) = v36;
  v37 = v51[11];
  *(v3 + 272) = v51[10];
  *(v3 + 288) = v37;
  v38 = v51[5];
  *(v3 + 176) = v51[4];
  *(v3 + 192) = v38;
  v39 = v51[7];
  *(v3 + 208) = v51[6];
  *(v3 + 224) = v39;
  v40 = v51[1];
  *(v3 + 112) = v51[0];
  *(v3 + 128) = v40;
  v41 = v51[3];
  *(v3 + 144) = v51[2];
  *(v3 + 160) = v41;
  *(v3 + 368) = v15;
  *(v3 + 376) = v15;
  v42 = v15;
  return v3;
}

id sub_260E1AB30@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = _s19ParentDirectoryCRUDVMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  v43 = swift_allocObject();
  *(v43 + 16) = a3;
  v42 = swift_allocObject();
  *(v42 + 16) = a3;
  v41 = swift_allocObject();
  *(v41 + 16) = a3;
  sub_260E33D88(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v40 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v13);
  sub_260E33D88(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v13);
  sub_260E33D88(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_260E33DF0(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  result = v21;
  v25 = v51;
  v26 = v52;
  *a5 = &unk_260E6D6E8;
  a5[1] = v26;
  a5[2] = &unk_260E6D6F8;
  a5[3] = v25;
  v27 = v49;
  v28 = v50;
  a5[4] = &unk_260E6D708;
  a5[5] = v28;
  a5[6] = &unk_260E6D718;
  a5[7] = v27;
  v29 = v47;
  v30 = v48;
  a5[8] = &unk_260E6D720;
  a5[9] = v30;
  a5[10] = &unk_260E6D728;
  a5[11] = v29;
  v31 = v45;
  v32 = v46;
  a5[12] = &unk_260E6D730;
  a5[13] = v32;
  a5[14] = &unk_260E6D738;
  a5[15] = v31;
  v33 = v43;
  v34 = v44;
  a5[16] = &unk_260E6D740;
  a5[17] = v34;
  a5[18] = &unk_260E6D748;
  a5[19] = v33;
  v35 = v41;
  v36 = v42;
  a5[20] = &unk_260E6D750;
  a5[21] = v36;
  a5[22] = &unk_260E6D758;
  a5[23] = v35;
  v37 = v39;
  v38 = v40;
  a5[24] = &unk_260E6D768;
  a5[25] = v38;
  a5[26] = &unk_260E6D778;
  a5[27] = v37;
  a5[28] = &unk_260E6D788;
  a5[29] = v14;
  a5[30] = &unk_260E6D798;
  a5[31] = v15;
  return result;
}

uint64_t PersonalizationAssetManager.__allocating_init(container:manateeContainer:cacheDirectory:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(a1, a2, a3);
  return v6;
}

uint64_t PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v55 = _s19ParentDirectoryCRUDVMa();
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_260E68904();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v15 = sub_260E68E94();
  __swift_project_value_buffer(v15, qword_27FE54540);
  (*(v11 + 16))(v14, v57, v10);
  v16 = a1;
  v56 = v11;
  v17 = v16;
  v18 = a2;
  v19 = v10;
  v20 = sub_260E68E74();
  v21 = sub_260E69474();

  v22 = os_log_type_enabled(v20, v21);
  v54 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v58[0] = v52;
    *v24 = 138412802;
    *(v24 + 4) = v17;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v18;
    *v25 = v17;
    v25[1] = v18;
    *(v24 + 22) = 2080;
    sub_260E338D4(&qword_27FE54570, 255, MEMORY[0x277CC9260]);
    v53 = v9;
    v26 = v17;
    v27 = v18;
    v50 = v21;
    v28 = v51;
    v29 = sub_260E69804();
    v31 = v30;
    (*(v56 + 8))(v14, v28);
    v32 = sub_260E43774(v29, v31, v58);
    v9 = v53;

    *(v24 + 24) = v32;
    _os_log_impl(&dword_260E02000, v20, v50, "PersonalizationAssetManager INIT {container: %@, manateeContainer: %@, cacheDirectory: %s}", v24, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F0, &unk_260E6BFF0);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v25, -1, -1);
    v33 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x2666F1EF0](v33, -1, -1);
    MEMORY[0x2666F1EF0](v24, -1, -1);

    v34 = v28;
  }

  else
  {

    (*(v56 + 8))(v14, v19);
    v34 = v19;
  }

  v35 = [v17 publicCloudDatabase];
  v36 = [v17 privateCloudDatabase];
  v37 = v54;
  v38 = [v54 privateCloudDatabase];
  v39 = [objc_opt_self() defaultManager];
  (*(v56 + 32))(v9 + *(v55 + 20), v57, v34);
  *v9 = v39;
  sub_260E1AB30(v35, v36, v38, v9, v58);
  v40 = v58[13];
  *(v4 + 304) = v58[12];
  *(v4 + 320) = v40;
  v41 = v58[15];
  *(v4 + 336) = v58[14];
  *(v4 + 352) = v41;
  v42 = v58[9];
  *(v4 + 240) = v58[8];
  *(v4 + 256) = v42;
  v43 = v58[11];
  *(v4 + 272) = v58[10];
  *(v4 + 288) = v43;
  v44 = v58[5];
  *(v4 + 176) = v58[4];
  *(v4 + 192) = v44;
  v45 = v58[7];
  *(v4 + 208) = v58[6];
  *(v4 + 224) = v45;
  v46 = v58[1];
  *(v4 + 112) = v58[0];
  *(v4 + 128) = v46;
  v47 = v58[3];
  *(v4 + 144) = v58[2];
  *(v4 + 160) = v47;
  *(v4 + 368) = v17;
  *(v4 + 376) = v37;
  return v4;
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  v5 = sub_260E68EF4();
  *(v3 + 232) = v5;
  v6 = *(v5 - 8);
  *(v3 + 240) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = *a2;
  *(v3 + 272) = *(a2 + 16);
  *(v3 + 328) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_260E1B5A8, v2, 0);
}

uint64_t sub_260E1B5A8()
{
  if (*(v0 + 328))
  {
    if (*(v0 + 328) == 1)
    {
      v1 = *(v0 + 264);
      *(v0 + 176) = *(v0 + 256);
      *(v0 + 184) = v1;
      v2 = swift_task_alloc();
      *(v0 + 280) = v2;
      *v2 = v0;
      v2[1] = sub_260E1B97C;
      v3 = *(v0 + 224);

      return sub_260E1C6EC(v0 + 136, (v0 + 176));
    }

    else
    {
      v23 = *(v0 + 256);
      v24 = *(v0 + 216);
      v25 = *(v0 + 264);
      *v24 = v23;
      *(v24 + 8) = v25;
      *(v24 + 24) = 0;
      sub_260E15E4C(v23, v25);
      v26 = *(v0 + 248);

      v27 = *(v0 + 8);

      return v27();
    }
  }

  else
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v28 = v5;
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    v29 = *(v0 + 232);
    v31 = *(v0 + 224);
    sub_260E69644();
    *(v0 + 208) = sub_260E2FFA0(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
    sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08);
    v9 = sub_260E68FC4();
    v11 = v10;

    MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
    v12 = v11;
    v30 = v9;
    *(v0 + 296) = v11;
    sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    sub_260E2D960(v8);
    sub_260E68ED4();
    (*(v7 + 8))(v8, v29);
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    sub_260E68984();
    sub_260E15FB4(v14, v13);
    sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
    sub_260E69484();
    v15 = sub_260E69404();
    *(v0 + 304) = v15;
    v16 = v31[10];
    v18 = v31[7];
    v17 = v31[8];
    *(v0 + 48) = v31[9];
    *(v0 + 64) = v16;
    *(v0 + 16) = v18;
    *(v0 + 32) = v17;
    sub_260E15E4C(v6, v28);
    v19 = swift_task_alloc();
    *(v0 + 312) = v19;
    *v19 = v0;
    v19[1] = sub_260E1BA94;
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v22 = *(v0 + 224);

    return sub_260E24B24(v0 + 80, v30, v12, v15, v0 + 16, v22, v20, v21);
  }
}

uint64_t sub_260E1B97C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_260E1BDD8;
  }

  else
  {
    v5 = sub_260E1BD30;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1BA94()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = v2[38];
  v6 = v2[37];
  v7 = v2[28];
  if (v0)
  {

    v8 = sub_260E1BCCC;
  }

  else
  {

    v8 = sub_260E1BC0C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_260E1BC0C()
{
  v1 = v0[27];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  sub_260E15E4C(v4, v5);
  sub_260E15FB4(v3, v2);

  sub_260E15FB4(v4, v5);
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = 0;
  v7 = v0[31];

  v8 = v0[1];

  return v8();
}

uint64_t sub_260E1BCCC()
{
  v1 = v0[40];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_260E1BD30()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  sub_260E15E4C(v2, v3);

  sub_260E15FB4(v2, v3);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = 0;
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_260E1BDD8()
{
  v1 = v0[36];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v5 = sub_260E68EF4();
  *(v3 + 176) = v5;
  v6 = *(v5 - 8);
  *(v3 + 184) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;

  return MEMORY[0x2822009F8](sub_260E1BF08, v2, 0);
}

uint64_t sub_260E1BF08()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v20 = v1;
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v21 = *(v0 + 176);
  v23 = *(v0 + 168);
  sub_260E69644();
  *(v0 + 152) = sub_260E2FFA0(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08);
  v5 = sub_260E68FC4();
  v7 = v6;

  MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v8 = v7;
  v22 = v5;
  *(v0 + 216) = v7;
  sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E2D960(v4);
  sub_260E68ED4();
  (*(v3 + 8))(v4, v21);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  sub_260E68984();
  sub_260E15FB4(v10, v9);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  sub_260E69484();
  v11 = sub_260E69404();
  *(v0 + 224) = v11;
  v12 = v23[10];
  v14 = v23[7];
  v13 = v23[8];
  *(v0 + 48) = v23[9];
  *(v0 + 64) = v12;
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  sub_260E15E4C(v2, v20);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_260E1C1C8;
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 168);

  return sub_260E24B24(v0 + 80, v22, v8, v11, v0 + 16, v18, v16, v17);
}

uint64_t sub_260E1C1C8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[21];
  if (v0)
  {

    v8 = sub_260E1C404;
  }

  else
  {

    v8 = sub_260E1C340;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_260E1C340()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  sub_260E15E4C(v5, v6);
  sub_260E15FB4(v3, v4);

  sub_260E15FB4(v5, v6);
  *v2 = v5;
  v2[1] = v6;
  v2[2] = v7;
  v2[3] = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_260E1C404()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[30];

  return v2();
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  v4 = a2[1];
  v3[7] = *a2;
  v3[8] = v4;
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_260E1C514;

  return sub_260E1C6EC((v3 + 2), v3 + 7);
}

uint64_t sub_260E1C514()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_260E1C6CC;
  }

  else
  {
    v5 = sub_260E1C62C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1C62C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_260E15E4C(v2, v3);

  sub_260E15FB4(v2, v3);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_260E1C6EC(uint64_t a1, uint64_t *a2)
{
  v3[37] = a1;
  v3[38] = v2;
  v5 = sub_260E689E4();
  v3[39] = v5;
  v6 = *(v5 - 8);
  v3[40] = v6;
  v7 = *(v6 + 64) + 15;
  v3[41] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688) - 8);
  v3[42] = v8;
  v9 = *(v8 + 64) + 15;
  v3[43] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v3[44] = v10;
  v3[45] = v11;
  v3[46] = v12;

  return MEMORY[0x2822009F8](sub_260E1C830, v2, 0);
}

uint64_t sub_260E1C830()
{
  v90 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = sub_260E68E94();
  *(v0 + 376) = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v87 = v8;
    *v7 = 136315394;

    sub_260E69644();

    v88 = v6;
    v89 = v5;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v9 = sub_260E43774(v6, v5, &v87);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

    sub_260E69484();
    v10 = sub_260E69404();
    v11 = [v10 recordName];

    v12 = sub_260E69024();
    v14 = v13;

    v15 = sub_260E43774(v12, v14, &v87);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_260E02000, v3, v4, "Fetching PrivateRecord START {cacheName: %s, recordName: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v16 = *(v0 + 368);
  v17 = sub_260E380E4();
  v18 = *(v17 + 16);
  swift_bridgeObjectRetain_n();
  if (!v18)
  {
    goto LABEL_10;
  }

  v20 = *(v0 + 360);
  v19 = *(v0 + 368);

  v21 = sub_260E35BFC(v20, v19);
  if ((v22 & 1) == 0)
  {
    v30 = *(v0 + 368);

LABEL_10:

    goto LABEL_11;
  }

  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v25 = *(v0 + 312);
  v26 = *(v0 + 320);
  sub_260E15684(*(v17 + 56) + *(*(v0 + 336) + 72) * v21, v23, &qword_27FE54710, &qword_260E6D688);

  sub_260E15684(v23, v24, &qword_27FE54710, &qword_260E6D688);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v27 = *(v0 + 368);
    v28 = *(v0 + 344);
    v29 = *(v0 + 352);

    sub_260E155E4(v29, &qword_27FE54710, &qword_260E6D688);
    sub_260E155E4(v28, &qword_27FE54710, &qword_260E6D688);
LABEL_11:
    v32 = *(v0 + 360);
    v31 = *(v0 + 368);
    v33 = *(v0 + 304);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_260E69644();

    v88 = v32;
    v89 = v31;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v34 = v88;
    v35 = v89;
    *(v0 + 384) = v89;
    *(v0 + 392) = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    *(v0 + 400) = sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
    sub_260E69484();
    v36 = sub_260E69404();
    *(v0 + 408) = v36;
    v37 = v33[18];
    v39 = v33[15];
    v38 = v33[16];
    *(v0 + 48) = v33[17];
    *(v0 + 64) = v37;
    *(v0 + 16) = v39;
    *(v0 + 32) = v38;
    v40 = swift_task_alloc();
    *(v0 + 416) = v40;
    *v40 = v0;
    v40[1] = sub_260E1D1CC;
    v41 = *(v0 + 304);

    return sub_260E26724(v0 + 144, v34, v35, v36, v0 + 16, v41);
  }

  v43 = *(v0 + 344);
  v45 = *(v0 + 320);
  v44 = *(v0 + 328);
  v46 = *(v0 + 312);
  sub_260E689D4();
  sub_260E689C4();
  v48 = v47;
  v49 = *(v45 + 8);
  v49(v44, v46);
  v49(v43, v46);
  v50 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v51 = sub_260E68FF4();
  v52 = [v50 initWithSuiteName_];

  if (!v52 || (v53 = sub_260E68FF4(), v54 = [v52 integerForKey_], v53, v52, v54 < 1))
  {
    v55 = 1209600.0;
    if (v48 <= 1209600.0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v70 = *(v0 + 360);
    v69 = *(v0 + 368);
    v71 = *(v0 + 312);
    v72 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54718, &qword_260E6D6A0);
    v73 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8) - 8);
    v74 = *(*v73 + 72);
    v75 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_260E6BDB0;
    v77 = (v76 + v75);
    v78 = v73[14];
    *v77 = v70;
    *(v77 + 1) = v69;
    (*(v72 + 56))(&v77[v78], 1, 1, v71);
    v79 = sub_260E66BA4(v76);
    swift_setDeallocating();
    sub_260E155E4(v77, &qword_27FE54720, &qword_260E6D6A8);
    swift_deallocClassInstance();
    sub_260E385B4(v79);

    v80 = sub_260E68E74();
    v81 = sub_260E69474();

    if (os_log_type_enabled(v80, v81))
    {
      v83 = *(v0 + 360);
      v82 = *(v0 + 368);
      v84 = *(v0 + 352);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88 = v86;
      *v85 = 136315650;
      *(v85 + 4) = sub_260E43774(v83, v82, &v88);
      *(v85 + 12) = 2048;
      *(v85 + 14) = v48;
      *(v85 + 22) = 2048;
      *(v85 + 24) = v55;
      _os_log_impl(&dword_260E02000, v80, v81, "Time delta since last fetch for %s is %f (s) which is more than %f. Removing from shouldNotFetchStatusEngravingAssetForBtAddress", v85, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x2666F1EF0](v86, -1, -1);
      MEMORY[0x2666F1EF0](v85, -1, -1);
    }

    else
    {
      v84 = *(v0 + 352);
    }

    sub_260E155E4(v84, &qword_27FE54710, &qword_260E6D688);
    goto LABEL_11;
  }

  v55 = v54;
  if (v48 > v54)
  {
    goto LABEL_23;
  }

LABEL_17:
  v56 = *(v0 + 368);
  swift_bridgeObjectRelease_n();

  v57 = sub_260E68E74();
  v58 = sub_260E69474();

  if (os_log_type_enabled(v57, v58))
  {
    v60 = *(v0 + 360);
    v59 = *(v0 + 368);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v88 = v62;
    *v61 = 136315650;
    *(v61 + 4) = sub_260E43774(v60, v59, &v88);
    *(v61 + 12) = 2048;
    *(v61 + 14) = v48;
    *(v61 + 22) = 2048;
    *(v61 + 24) = v55;
    _os_log_impl(&dword_260E02000, v57, v58, "Time delta since last fetch for %s is %f (s). which is less than %f. Assuming this device is not personalized so skipping engraving asset fetch", v61, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x2666F1EF0](v62, -1, -1);
    MEMORY[0x2666F1EF0](v61, -1, -1);
  }

  v63 = *(v0 + 352);
  sub_260E15590();
  swift_allocError();
  *v64 = xmmword_260E6C9E0;
  *(v64 + 16) = 2;
  swift_willThrow();
  sub_260E155E4(v63, &qword_27FE54710, &qword_260E6D688);
  v66 = *(v0 + 344);
  v65 = *(v0 + 352);
  v67 = *(v0 + 328);

  v68 = *(v0 + 8);

  return v68();
}