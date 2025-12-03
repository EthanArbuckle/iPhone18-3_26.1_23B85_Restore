@interface PLBBMav10HwMsgParser
- (BOOL)parseData:(id)data;
- (PLBBMav10HwMsgParser)initWithData:(id)data;
- (int)GetClockCount:(_PLMav7BasebandHWStatsClockStateMask *)count;
- (void)SetClocks:(_PLMav7BasebandHWStatsClockStateMask *)clocks oftype:(int)oftype withData:(char *)data;
- (void)logAPPSWithLogger:(id)logger;
- (void)logHwRF1xWithLogger:(id)logger;
- (void)logHwRFGSMWithLogger:(id)logger;
- (void)logHwRFHDRWithLogger:(id)logger;
- (void)logHwRFLTEWithLogger:(id)logger;
- (void)logHwRFOOSWithLogger:(id)logger;
- (void)logHwRFTDSWithLogger:(id)logger;
- (void)logHwRFWCDMAWithLogger:(id)logger;
- (void)logMPSSWithLogger:(id)logger;
- (void)logRPMWithLogger:(id)logger;
- (void)logSleepVetoWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLBBMav10HwMsgParser

- (PLBBMav10HwMsgParser)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PLBBMav10HwMsgParser;
  v5 = [(PLMav7BasebandHardwareMessage *)&v9 initWithData:dataCopy];
  v6 = v5;
  if (v5 && ![(PLBBMav10HwMsgParser *)v5 parseData:dataCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)data
{
  v270 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  string = [MEMORY[0x277CCAB68] string];
  v7 = string;
  if (*bytes == 129)
  {
    [string appendFormat:@"SeqInd[%x] ", 129];
    bytes += 2;
  }

  [(PLMav4BasebandHardwareMessage *)self setHeader:bytes + 13];
  [v7 appendFormat:@"Sw Rev[%0x %0x] ", bytes[13], bytes[14]];
  v236 = v7;
  [v7 appendFormat:@"Hw Rev[%0x %0x] ", bytes[15], bytes[16]];
  v8 = bytes + 33;
  v9 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    v263[0] = MEMORY[0x277D85DD0];
    v263[1] = 3221225472;
    v263[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke;
    v263[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v263[4] = v10;
    v11 = v263;
    if (qword_2811F7968 != -1)
    {
      dispatch_once(&qword_2811F7968, v11);
    }

    if (_MergedGlobals_98 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"RPM starts at offset %llu", 20];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:70];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = 0x277D3F000uLL;
    }
  }

  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    [(PLBBMav10HwMsgParser *)self setRpmNew:bytes + 33];
    v8 = bytes + 57;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_18;
    }

    v18 = objc_opt_class();
    v262[0] = MEMORY[0x277D85DD0];
    v262[1] = 3221225472;
    v262[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_381;
    v262[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v262[4] = v18;
    v19 = v262;
    if (qword_2811F7970 != -1)
    {
      dispatch_once(&qword_2811F7970, v19);
    }

    if (byte_2811F7921 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"HW stats starts at offset %llu", 44];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:84];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v26 = 44;
      v9 = 0x277D3F000;
    }

    else
    {
LABEL_18:
      v26 = 44;
    }
  }

  else
  {
    v26 = 20;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 2)
  {
    [(PLBBMav10HwMsgParser *)self setAppsNew:v8];
    if ([*(v9 + 384) debugEnabled])
    {
      v27 = objc_opt_class();
      v261[0] = MEMORY[0x277D85DD0];
      v261[1] = 3221225472;
      v261[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_387;
      v261[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v261[4] = v27;
      v28 = v261;
      if (qword_2811F7978 != -1)
      {
        dispatch_once(&qword_2811F7978, v28);
      }

      if (byte_2811F7922 == 1)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"HW stats Sleep starts at offset %llu", v26 + 20];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:97];

        v34 = PLLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v29;
          _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLBBMav10HwMsgParser *)self setApps_sleepNew:v8 + 20];
    v8 += 32;
    v26 += 32;
    if ([*(v9 + 384) debugEnabled])
    {
      v35 = objc_opt_class();
      v260[0] = MEMORY[0x277D85DD0];
      v260[1] = 3221225472;
      v260[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_393;
      v260[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v260[4] = v35;
      v36 = v260;
      if (qword_2811F7980 != -1)
      {
        dispatch_once(&qword_2811F7980, v36);
      }

      if (byte_2811F7923 == 1)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"USB stats starts at offset %llu", v26];
        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent4 = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v38 logMessage:v37 fromFile:lastPathComponent4 fromFunction:v41 fromLineNumber:106];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v37;
          _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    [(PLMav5BasebandHardwareMessage *)self setUsb:v8];
    if ([*(v9 + 384) debugEnabled])
    {
      v43 = objc_opt_class();
      v259[0] = MEMORY[0x277D85DD0];
      v259[1] = 3221225472;
      v259[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_399;
      v259[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v259[4] = v43;
      v44 = v259;
      if (qword_2811F7988 != -1)
      {
        dispatch_once(&qword_2811F7988, v44);
      }

      if (byte_2811F7924 == 1)
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"UART stats starts at offset %llu", v26 + 12];
        v46 = MEMORY[0x277D3F178];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent5 = [v47 lastPathComponent];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v46 logMessage:v45 fromFile:lastPathComponent5 fromFunction:v49 fromLineNumber:118];

        v50 = PLLogCommon();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v45;
          _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLMav4BasebandHardwareMessage *)self setUart:v8 + 12];
    if ([*(v9 + 384) debugEnabled])
    {
      v51 = objc_opt_class();
      v258[0] = MEMORY[0x277D85DD0];
      v258[1] = 3221225472;
      v258[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_405;
      v258[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v258[4] = v51;
      v52 = v258;
      if (qword_2811F7990 != -1)
      {
        dispatch_once(&qword_2811F7990, v52);
      }

      if (byte_2811F7925 == 1)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"SPI stats starts at offset %llu", v26 + 20];
        v54 = MEMORY[0x277D3F178];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent6 = [v55 lastPathComponent];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v54 logMessage:v53 fromFile:lastPathComponent6 fromFunction:v57 fromLineNumber:126];

        v58 = PLLogCommon();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v53;
          _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLMav4BasebandHardwareMessage *)self setSpi:v8 + 20];
    if ([*(v9 + 384) debugEnabled])
    {
      v59 = objc_opt_class();
      v257[0] = MEMORY[0x277D85DD0];
      v257[1] = 3221225472;
      v257[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_411;
      v257[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v257[4] = v59;
      v60 = v257;
      if (qword_2811F7998 != -1)
      {
        dispatch_once(&qword_2811F7998, v60);
      }

      if (byte_2811F7926 == 1)
      {
        v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"ABAM stats starts at offset %llu", v26 + 28];
        v62 = MEMORY[0x277D3F178];
        v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent7 = [v63 lastPathComponent];
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v62 logMessage:v61 fromFile:lastPathComponent7 fromFunction:v65 fromLineNumber:134];

        v66 = PLLogCommon();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v61;
          _os_log_debug_impl(&dword_21A4C6000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLMav4BasebandHardwareMessage *)self setAdm:v8 + 28];
    v8 += 36;
    v26 += 36;
    if ([*(v9 + 384) debugEnabled])
    {
      v67 = objc_opt_class();
      v256[0] = MEMORY[0x277D85DD0];
      v256[1] = 3221225472;
      v256[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_417;
      v256[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v256[4] = v67;
      v68 = v256;
      if (qword_2811F79A0 != -1)
      {
        dispatch_once(&qword_2811F79A0, v68);
      }

      if (byte_2811F7927 == 1)
      {
        v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"LPASS stats starts at offset %llu", v26];
        v70 = MEMORY[0x277D3F178];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent8 = [v71 lastPathComponent];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v70 logMessage:v69 fromFile:lastPathComponent8 fromFunction:v73 fromLineNumber:143];

        v74 = PLLogCommon();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v69;
          _os_log_debug_impl(&dword_21A4C6000, v74, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 4)
  {
    [(PLMav5BasebandHardwareMessage *)self setLpass:v8];
    v8 += 8;
    v26 += 8;
    if ([*(v9 + 384) debugEnabled])
    {
      v75 = objc_opt_class();
      v255[0] = MEMORY[0x277D85DD0];
      v255[1] = 3221225472;
      v255[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_423;
      v255[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v255[4] = v75;
      v76 = v255;
      if (qword_2811F79A8 != -1)
      {
        dispatch_once(&qword_2811F79A8, v76);
      }

      if (byte_2811F7928 == 1)
      {
        v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"Apps Sleep veto stats starts at offset %llu", v26];
        v78 = MEMORY[0x277D3F178];
        v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent9 = [v79 lastPathComponent];
        v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v78 logMessage:v77 fromFile:lastPathComponent9 fromFunction:v81 fromLineNumber:155];

        v82 = PLLogCommon();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v77;
          _os_log_debug_impl(&dword_21A4C6000, v82, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }
  }

  v237 = dataCopy;
  if ([(PLMav4BasebandHardwareMessage *)self level]>= 5)
  {
    [(PLMav5BasebandHardwareMessage *)self setApps_sleep_veto:v8];
    if ([*(v9 + 384) debugEnabled])
    {
      v83 = objc_opt_class();
      v254[0] = MEMORY[0x277D85DD0];
      v254[1] = 3221225472;
      v254[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_429;
      v254[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v254[4] = v83;
      v84 = v254;
      if (qword_2811F79B0 != -1)
      {
        dispatch_once(&qword_2811F79B0, v84);
      }

      if (byte_2811F7929 == 1)
      {
        v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS Sleep veto stats starts at offset %llu", v26 + 4];
        v86 = MEMORY[0x277D3F178];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent10 = [v87 lastPathComponent];
        v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v86 logMessage:v85 fromFile:lastPathComponent10 fromFunction:v89 fromLineNumber:169];

        v90 = PLLogCommon();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v85;
          _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLMav5BasebandHardwareMessage *)self setMpss_sleep_veto:v8 + 4];
    if ([*(v9 + 384) debugEnabled])
    {
      v91 = objc_opt_class();
      v253[0] = MEMORY[0x277D85DD0];
      v253[1] = 3221225472;
      v253[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_435;
      v253[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v253[4] = v91;
      v92 = v253;
      if (qword_2811F79B8 != -1)
      {
        dispatch_once(&qword_2811F79B8, v92);
      }

      if (byte_2811F792A == 1)
      {
        v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"QDSP Sleep veto stats starts at offset %llu", v26 + 16];
        v94 = MEMORY[0x277D3F178];
        v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent11 = [v95 lastPathComponent];
        v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v94 logMessage:v93 fromFile:lastPathComponent11 fromFunction:v97 fromLineNumber:177];

        v98 = PLLogCommon();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v93;
          _os_log_debug_impl(&dword_21A4C6000, v98, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLBBMav10HwMsgParser *)self setQdspNew:v8 + 16];
    if ([*(v9 + 384) debugEnabled])
    {
      v99 = objc_opt_class();
      v252[0] = MEMORY[0x277D85DD0];
      v252[1] = 3221225472;
      v252[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_441;
      v252[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v252[4] = v99;
      v100 = v252;
      if (qword_2811F79C0 != -1)
      {
        dispatch_once(&qword_2811F79C0, v100);
      }

      if (byte_2811F792B == 1)
      {
        v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS Sleep veto stats starts at offset %llu", v26 + 52];
        v102 = MEMORY[0x277D3F178];
        v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent12 = [v103 lastPathComponent];
        v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v102 logMessage:v101 fromFile:lastPathComponent12 fromFunction:v105 fromLineNumber:191];

        v106 = PLLogCommon();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v101;
          _os_log_debug_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000uLL;
      }
    }

    [(PLMav4BasebandHardwareMessage *)self setGps:v8 + 52];
    v107 = v26 + 60;
    if ([*(v9 + 384) debugEnabled])
    {
      v108 = objc_opt_class();
      v251[0] = MEMORY[0x277D85DD0];
      v251[1] = 3221225472;
      v251[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_447;
      v251[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v251[4] = v108;
      v109 = v251;
      if (qword_2811F79C8 != -1)
      {
        dispatch_once(&qword_2811F79C8, v109);
      }

      if (byte_2811F792C == 1)
      {
        v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS DPO stats starts at offset %llu", v26 + 60];
        v111 = MEMORY[0x277D3F178];
        v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent13 = [v112 lastPathComponent];
        v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v111 logMessage:v110 fromFile:lastPathComponent13 fromFunction:v114 fromLineNumber:199];

        v115 = PLLogCommon();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v110;
          _os_log_debug_impl(&dword_21A4C6000, v115, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = 0x277D3F000;
      }
    }

    [(PLMav5BasebandHardwareMessage *)self setGps_dpo:v8 + 60];
    v116 = objc_opt_class();
    v250[0] = MEMORY[0x277D85DD0];
    v250[1] = 3221225472;
    v250[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_453;
    v250[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v250[4] = v116;
    v117 = v250;
    if (qword_2811F79D0 != -1)
    {
      dispatch_once(&qword_2811F79D0, v117);
    }

    if (byte_2811F792D == 1)
    {
      v107 = v26 + 68;
      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS DPO bin stats starts at offset %llu", v26 + 68];
      v119 = MEMORY[0x277D3F178];
      v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent14 = [v120 lastPathComponent];
      v122 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v119 logMessage:v118 fromFile:lastPathComponent14 fromFunction:v122 fromLineNumber:209];

      v123 = PLLogCommon();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v118;
        _os_log_debug_impl(&dword_21A4C6000, v123, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = 0x277D3F000;
    }

    [(PLMav7BasebandHardwareMessage *)self setGps_dpo_bins:v8 + 68];
    v124 = objc_opt_class();
    v249[0] = MEMORY[0x277D85DD0];
    v249[1] = 3221225472;
    v249[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_459;
    v249[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v249[4] = v124;
    v125 = v249;
    if (qword_2811F79D8 != -1)
    {
      dispatch_once(&qword_2811F79D8, v125);
    }

    if (byte_2811F792E == 1)
    {
      v107 += 24;
      v107 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS sleep stats starts at offset %llu", v107];
      v127 = MEMORY[0x277D3F178];
      v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent15 = [v128 lastPathComponent];
      v130 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v127 logMessage:v107 fromFile:lastPathComponent15 fromFunction:v130 fromLineNumber:220];

      v131 = PLLogCommon();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v107;
        _os_log_debug_impl(&dword_21A4C6000, v131, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = 0x277D3F000;
    }

    [(PLBBMav10HwMsgParser *)self setMpss_sleepNew:v8 + 92];
    v8 += 104;
    v132 = objc_opt_class();
    v248[0] = MEMORY[0x277D85DD0];
    v248[1] = 3221225472;
    v248[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_465;
    v248[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v248[4] = v132;
    v133 = v248;
    if (qword_2811F79E0 != -1)
    {
      dispatch_once(&qword_2811F79E0, v133);
    }

    if (byte_2811F792F == 1)
    {
      v26 = v107 + 12;
      v134 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hw RF tech stats starts at offset %llu", v107 + 12];
      v135 = MEMORY[0x277D3F178];
      v136 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent16 = [v136 lastPathComponent];
      v138 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v135 logMessage:v134 fromFile:lastPathComponent16 fromFunction:v138 fromLineNumber:232];

      v139 = PLLogCommon();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v134;
        _os_log_debug_impl(&dword_21A4C6000, v139, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = 0x277D3F000;
    }

    else
    {
      v26 = v107;
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    [(PLMav7BasebandHardwareMessage *)self setRf:v8];
    v140 = objc_opt_class();
    v247[0] = MEMORY[0x277D85DD0];
    v247[1] = 3221225472;
    v247[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_471;
    v247[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v247[4] = v140;
    v141 = v247;
    if (qword_2811F79E8 != -1)
    {
      dispatch_once(&qword_2811F79E8, v141);
    }

    if (byte_2811F7930 == 1)
    {
      v26 += 1536;
      v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hw protocol starts at offset %llu", v26];
      v143 = MEMORY[0x277D3F178];
      v144 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent17 = [v144 lastPathComponent];
      v146 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v143 logMessage:v142 fromFile:lastPathComponent17 fromFunction:v146 fromLineNumber:247];

      v147 = PLLogCommon();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v142;
        _os_log_debug_impl(&dword_21A4C6000, v147, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = 0x277D3F000uLL;
    }

    [(PLMav7BasebandHardwareMessage *)self setProtocol:v8 + 1536];
    v148 = v26 + 408;
    if ([*(v9 + 384) debugEnabled])
    {
      v149 = objc_opt_class();
      v246[0] = MEMORY[0x277D85DD0];
      v246[1] = 3221225472;
      v246[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_477;
      v246[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v246[4] = v149;
      v150 = v246;
      if (qword_2811F79F0 != -1)
      {
        dispatch_once(&qword_2811F79F0, v150);
      }

      if (byte_2811F7931 == 1)
      {
        v151 = [MEMORY[0x277CCACA8] stringWithFormat:@"New LTE stats starts at offset %llu", v26 + 408];
        v152 = MEMORY[0x277D3F178];
        v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent18 = [v153 lastPathComponent];
        v155 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
        [v152 logMessage:v151 fromFile:lastPathComponent18 fromFunction:v155 fromLineNumber:256];

        v156 = PLLogCommon();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v265 = v151;
          _os_log_debug_impl(&dword_21A4C6000, v156, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav10HwMsgParser *)self setRfLTE:v8 + 1944];
    v157 = objc_opt_class();
    v245[0] = MEMORY[0x277D85DD0];
    v245[1] = 3221225472;
    v245[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_483;
    v245[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v245[4] = v157;
    v158 = v245;
    if (qword_2811F79F8 != -1)
    {
      dispatch_once(&qword_2811F79F8, v158);
    }

    if (byte_2811F7932 == 1)
    {
      v148 = v26 + 668;
      v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"WCDMA new stats starts at offset %llu", v26 + 668];
      v160 = MEMORY[0x277D3F178];
      v161 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent19 = [v161 lastPathComponent];
      v163 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v160 logMessage:v159 fromFile:lastPathComponent19 fromFunction:v163 fromLineNumber:271];

      v164 = PLLogCommon();
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v159;
        _os_log_debug_impl(&dword_21A4C6000, v164, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setRfWCDMA:v8 + 2204];
    v165 = objc_opt_class();
    v244[0] = MEMORY[0x277D85DD0];
    v244[1] = 3221225472;
    v244[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_489;
    v244[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v244[4] = v165;
    v166 = v244;
    if (qword_2811F7A00 != -1)
    {
      dispatch_once(&qword_2811F7A00, v166);
    }

    if (byte_2811F7933 == 1)
    {
      v148 += 176;
      v148 = [MEMORY[0x277CCACA8] stringWithFormat:@"GSM new stats starts at offset %llu", v148];
      v168 = MEMORY[0x277D3F178];
      v169 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent20 = [v169 lastPathComponent];
      v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v168 logMessage:v148 fromFile:lastPathComponent20 fromFunction:v171 fromLineNumber:282];

      v172 = PLLogCommon();
      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v148;
        _os_log_debug_impl(&dword_21A4C6000, v172, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setRfGSM:v8 + 2380];
    v173 = objc_opt_class();
    v243[0] = MEMORY[0x277D85DD0];
    v243[1] = 3221225472;
    v243[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_495;
    v243[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v243[4] = v173;
    v174 = v243;
    if (qword_2811F7A08 != -1)
    {
      dispatch_once(&qword_2811F7A08, v174);
    }

    if (byte_2811F7934 == 1)
    {
      v148 += 20;
      v1482 = [MEMORY[0x277CCACA8] stringWithFormat:@"TDS stats starts at offset %llu", v148];
      v176 = MEMORY[0x277D3F178];
      v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent21 = [v177 lastPathComponent];
      v179 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v176 logMessage:v1482 fromFile:lastPathComponent21 fromFunction:v179 fromLineNumber:293];

      v180 = PLLogCommon();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v1482;
        _os_log_debug_impl(&dword_21A4C6000, v180, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setRfTDS:v8 + 2400];
    v181 = objc_opt_class();
    v242[0] = MEMORY[0x277D85DD0];
    v242[1] = 3221225472;
    v242[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_501;
    v242[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v242[4] = v181;
    v182 = v242;
    if (qword_2811F7A10 != -1)
    {
      dispatch_once(&qword_2811F7A10, v182);
    }

    if (byte_2811F7935 == 1)
    {
      v148 += 48;
      v1483 = [MEMORY[0x277CCACA8] stringWithFormat:@"1x stats starts at offset %llu", v148];
      v184 = MEMORY[0x277D3F178];
      v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent22 = [v185 lastPathComponent];
      v187 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v184 logMessage:v1483 fromFile:lastPathComponent22 fromFunction:v187 fromLineNumber:304];

      v188 = PLLogCommon();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v1483;
        _os_log_debug_impl(&dword_21A4C6000, v188, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setRf1x:v8 + 2448];
    v189 = objc_opt_class();
    v241[0] = MEMORY[0x277D85DD0];
    v241[1] = 3221225472;
    v241[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_507;
    v241[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v241[4] = v189;
    v190 = v241;
    if (qword_2811F7A18 != -1)
    {
      dispatch_once(&qword_2811F7A18, v190);
    }

    if (byte_2811F7936 == 1)
    {
      v148 += 40;
      v1484 = [MEMORY[0x277CCACA8] stringWithFormat:@"HDR stats starts at offset %llu", v148];
      v192 = MEMORY[0x277D3F178];
      v193 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent23 = [v193 lastPathComponent];
      v195 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v192 logMessage:v1484 fromFile:lastPathComponent23 fromFunction:v195 fromLineNumber:315];

      v196 = PLLogCommon();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v1484;
        _os_log_debug_impl(&dword_21A4C6000, v196, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setRfHDR:v8 + 2488];
    v197 = objc_opt_class();
    v240[0] = MEMORY[0x277D85DD0];
    v240[1] = 3221225472;
    v240[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_513;
    v240[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v240[4] = v197;
    v198 = v240;
    if (qword_2811F7A20 != -1)
    {
      dispatch_once(&qword_2811F7A20, v198);
    }

    if (byte_2811F7937 == 1)
    {
      v148 += 32;
      v1485 = [MEMORY[0x277CCACA8] stringWithFormat:@"OOS stats starts at offset %llu", v148];
      v200 = MEMORY[0x277D3F178];
      v201 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent24 = [v201 lastPathComponent];
      v203 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v200 logMessage:v1485 fromFile:lastPathComponent24 fromFunction:v203 fromLineNumber:326];

      v204 = PLLogCommon();
      if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v1485;
        _os_log_debug_impl(&dword_21A4C6000, v204, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setRfOOS:v8 + 2520];
    v205 = objc_opt_class();
    v239[0] = MEMORY[0x277D85DD0];
    v239[1] = 3221225472;
    v239[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_519;
    v239[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v239[4] = v205;
    v206 = v239;
    if (qword_2811F7A28 != -1)
    {
      dispatch_once(&qword_2811F7A28, v206);
    }

    if (byte_2811F7938 == 1)
    {
      v148 += 155;
      v1486 = [MEMORY[0x277CCACA8] stringWithFormat:@"MCPM stats starts at offset %llu", v148];
      v208 = MEMORY[0x277D3F178];
      v209 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent25 = [v209 lastPathComponent];
      v211 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v208 logMessage:v1486 fromFile:lastPathComponent25 fromFunction:v211 fromLineNumber:337];

      v212 = PLLogCommon();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v1486;
        _os_log_debug_impl(&dword_21A4C6000, v212, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLBBMav10HwMsgParser *)self setMcpm_sleep_vetoNew:v8 + 2675];
    v213 = objc_opt_class();
    v238[0] = MEMORY[0x277D85DD0];
    v238[1] = 3221225472;
    v238[2] = __34__PLBBMav10HwMsgParser_parseData___block_invoke_525;
    v238[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v238[4] = v213;
    v214 = v238;
    if (qword_2811F7A30 != -1)
    {
      dispatch_once(&qword_2811F7A30, v214);
    }

    if (byte_2811F7939 == 1)
    {
      v215 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPA stats starts at offset %llu", v148 + 48];
      v216 = MEMORY[0x277D3F178];
      v217 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent26 = [v217 lastPathComponent];
      v219 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser parseData:]"];
      [v216 logMessage:v215 fromFile:lastPathComponent26 fromFunction:v219 fromLineNumber:348];

      v220 = PLLogCommon();
      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v265 = v215;
        _os_log_debug_impl(&dword_21A4C6000, v220, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(PLMav7BasebandHardwareMessage *)self setNpa_sleep_veto:v8 + 2723];
    v8 += 2823;
    dataCopy = v237;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration_mask:v8];
    v221 = v8 + 16;
    v222 = [(PLBBMav10HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask]];
    string2 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration:string2];

    [(PLBBMav10HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask] oftype:0 withData:v221];
    v224 = &v221[4 * v222];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration_mask:v224];
    v224 += 16;
    v225 = [(PLBBMav10HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask]];
    string3 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration:string3];

    [(PLBBMav10HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask] oftype:1 withData:v224];
    v8 = &v224[4 * v225];
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 8)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_count_mask:v8];
    v227 = &v8[4 * [(PLBBMav10HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_count_mask]]+ 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_count_mask:v227];
    v228 = v227 + 4 * [(PLBBMav10HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_count_mask]];
    [(PLMav7BasebandHardwareMessage *)self setHsic:v228 + 16];
    v8 = (v228 + 48);
  }

  v229 = &v8[-[dataCopy bytes]];
  v230 = [dataCopy length];
  if (v229 > v230)
  {
    v231 = PLLogCommon();
    if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
    {
      v234 = &v8[-[dataCopy bytes]];
      v235 = [v237 length];
      *buf = 134218498;
      v265 = v234;
      dataCopy = v237;
      v266 = 2048;
      v267 = v235;
      v268 = 2080;
      v269 = "[PLBBMav10HwMsgParser parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v231, OS_LOG_TYPE_ERROR, "Expected data length %lu but recieved %lu in %s", buf, 0x20u);
    }
  }

  v232 = *MEMORY[0x277D85DE8];
  return v229 <= v230;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_98 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_381(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7921 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_387(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7922 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_393(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7923 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_399(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7924 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_405(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7925 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_411(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7926 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_417(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7927 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_423(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7928 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_429(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7929 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_435(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F792A = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_441(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F792B = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_447(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F792C = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_453(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F792D = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_459(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F792E = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_465(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F792F = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_471(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7930 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_477(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7931 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7932 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7933 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_495(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7934 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_501(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7935 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_507(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7936 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7937 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7938 = result;
  return result;
}

uint64_t __34__PLBBMav10HwMsgParser_parseData___block_invoke_525(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7939 = result;
  return result;
}

- (void)logWithLogger:(id)logger
{
  v30 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLBBMav10HwMsgParser_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7A38 != -1)
    {
      dispatch_once(&qword_2811F7A38, block);
    }

    if (byte_2811F793A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:402];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v26.receiver = self;
  v26.super_class = PLBBMav10HwMsgParser;
  [(PLBasebandHardwareMessage *)&v26 logRawWithLogger:loggerCopy];
  v12 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:agent];

  [(PLBBMavLogMsg *)v12 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]== 6)
  {
    [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logRPMWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logAPPSWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logMPSSWithLogger:v12];
    [(PLMav5BasebandHardwareMessage *)self logLPASSWithLogger:v12];
    [(PLMav7BasebandHardwareMessage *)self logPeripheralsWithLogger:v12];
    [(PLMav5BasebandHardwareMessage *)self logProtocolWithLogger:v12 withCount:6];
    [(PLMav7BasebandHardwareMessage *)self logProtocolActiveWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logSleepVetoWithLogger:v12];
    if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
    {
      [(PLMav7BasebandHardwareMessage *)self logClockWithLogger:v12];
      [(PLMav7BasebandHardwareMessage *)self logHSICWithLogger:v12];
    }

    [(PLBBMavLogMsg *)v12 addToGroupPLBBMav10HwOther];
    [(PLMav7BasebandHardwareMessage *)self logRFWithLogger2:v12];
    [(PLBBMav10HwMsgParser *)self logHwRFLTEWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logHwRFWCDMAWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logHwRFGSMWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logHwRFTDSWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logHwRF1xWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logHwRFHDRWithLogger:v12];
    [(PLBBMav10HwMsgParser *)self logHwRFOOSWithLogger:v12];
    [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMav10Hw];
  }

  else
  {
    string = [MEMORY[0x277CCAB68] string];
    [string appendFormat:@"Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 6];
    [(PLBBMavLogMsg *)v12 setError:string];
    [(PLBBMavLogMsg *)v12 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOther];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __38__PLBBMav10HwMsgParser_logWithLogger___block_invoke_546;
      v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v25[4] = v17;
      if (qword_2811F7A40 != -1)
      {
        dispatch_once(&qword_2811F7A40, v25);
      }

      if (byte_2811F793B == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SW version mismatch, cannot process, returning"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logWithLogger:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:420];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBMav10HwMsgParser_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F793A = result;
  return result;
}

uint64_t __38__PLBBMav10HwMsgParser_logWithLogger___block_invoke_546(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F793B = result;
  return result;
}

- (void)logSleepVetoWithLogger:(id)logger
{
  v42 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7A48 != -1)
    {
      dispatch_once(&qword_2811F7A48, block);
    }

    if (byte_2811F793C == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logSleepVetoWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logSleepVetoWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:468];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if (![(PLBBMav10HwMsgParser *)self mcpm_sleep_vetoNew])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_29;
    }

    v23 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke_552;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v23;
    if (qword_2811F7A50 != -1)
    {
      dispatch_once(&qword_2811F7A50, v38);
    }

    if (byte_2811F793D != 1)
    {
      goto LABEL_29;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Sleep Veto is expected but not present"];
    v25 = MEMORY[0x277D3F178];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
    lastPathComponent2 = [v26 lastPathComponent];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logSleepVetoWithLogger:]"];
    [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:477];

    v29 = PLLogCommon();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    v41 = v24;
    goto LABEL_32;
  }

  v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self mcpm_sleep_vetoNew] ofSize:12];
  [v12 setMcpmVetoNumHistogram:v13];

  if (![(PLMav7BasebandHardwareMessage *)self npa_sleep_veto])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_29;
    }

    v30 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke_562;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v30;
    if (qword_2811F7A58 != -1)
    {
      dispatch_once(&qword_2811F7A58, v37);
    }

    if (byte_2811F793E != 1)
    {
      goto LABEL_29;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Sleep Veto is expected but not present"];
    v31 = MEMORY[0x277D3F178];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
    lastPathComponent3 = [v32 lastPathComponent];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logSleepVetoWithLogger:]"];
    [v31 logMessage:v24 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:490];

    v29 = PLLogCommon();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
LABEL_28:

LABEL_29:
      [v12 appendToError:@"Error: BB HW Sleep Veto is expected but not present. "];
      goto LABEL_30;
    }

    *buf = 138412290;
    v41 = v24;
LABEL_32:
    _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_28;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav7BasebandHardwareMessage npa_sleep_veto](self, "npa_sleep_veto")}];
  [v12 setNpaVetoMask:v14];

  v15 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self npa_sleep_veto]+ 4 ofSize:24];
  [v12 setNpaVetoClientNumHistogram:v15];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke_565;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v16;
    if (qword_2811F7A60 != -1)
    {
      dispatch_once(&qword_2811F7A60, v36);
    }

    if (byte_2811F793F == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Sleep Veto"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logSleepVetoWithLogger:]"];
      [v18 logMessage:v17 fromFile:lastPathComponent4 fromFunction:v21 fromLineNumber:495];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_30:

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F793C = result;
  return result;
}

uint64_t __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke_552(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F793D = result;
  return result;
}

uint64_t __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke_562(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F793E = result;
  return result;
}

uint64_t __47__PLBBMav10HwMsgParser_logSleepVetoWithLogger___block_invoke_565(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F793F = result;
  return result;
}

- (void)logRPMWithLogger:(id)logger
{
  v37 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBBMav10HwMsgParser_logRPMWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7A68 != -1)
    {
      dispatch_once(&qword_2811F7A68, block);
    }

    if (byte_2811F7940 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logRPMWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logRPMWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:502];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBBMav10HwMsgParser *)self rpmNew])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser rpmNew](self, "rpmNew")[8]}];
    [v12 setRpmXOShutDuration:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav10HwMsgParser rpmNew](self, "rpmNew")}];
    [v12 setRpmXOShutCnt:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser rpmNew](self, "rpmNew")[16]}];
    [v12 setRpmVDDMinDuration:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rpmNew](self, "rpmNew")[4]}];
    [v12 setRpmVDDMinEnterCnt:v16];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __41__PLBBMav10HwMsgParser_logRPMWithLogger___block_invoke_571;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v17;
      if (qword_2811F7A70 != -1)
      {
        dispatch_once(&qword_2811F7A70, v33);
      }

      if (byte_2811F7941 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"RPM=<unknown>"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logRPMWithLogger:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:533];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v36 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 appendToError:@"RPM=<unknown> "];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __41__PLBBMav10HwMsgParser_logRPMWithLogger___block_invoke_580;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F7A78 != -1)
    {
      dispatch_once(&qword_2811F7A78, v32);
    }

    if (byte_2811F7942 == 1)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RPM"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent3 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logRPMWithLogger:]"];
      [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:537];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v25;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBBMav10HwMsgParser_logRPMWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7940 = result;
  return result;
}

uint64_t __41__PLBBMav10HwMsgParser_logRPMWithLogger___block_invoke_571(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7941 = result;
  return result;
}

uint64_t __41__PLBBMav10HwMsgParser_logRPMWithLogger___block_invoke_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7942 = result;
  return result;
}

- (void)logAPPSWithLogger:(id)logger
{
  v56 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = 0x278257000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7A80 != -1)
    {
      dispatch_once(&qword_2811F7A80, block);
    }

    if (byte_2811F7943 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logAPPSWithLogger:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logAPPSWithLogger:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:543];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x278257000uLL;
    }
  }

  v13 = loggerCopy;
  if ([(PLBBMav10HwMsgParser *)self appsNew])
  {
    v14 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self appsNew] ofSize:5];
    [v13 setAppsPerfStateCountHist:v14];
LABEL_10:

    goto LABEL_18;
  }

  [v13 appendToError:@"Perf_Level=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_589;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v15;
    if (qword_2811F7A88 != -1)
    {
      dispatch_once(&qword_2811F7A88, v52);
    }

    if (byte_2811F7944 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logAPPSWithLogger:]"];
      [v16 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:561];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x278257000;
      goto LABEL_10;
    }
  }

LABEL_18:
  if ([(PLBBMav10HwMsgParser *)self apps_sleepNew])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser apps_sleepNew](self, "apps_sleepNew")[4]}];
    [v13 setCxoShutDownDuration:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav10HwMsgParser apps_sleepNew](self, "apps_sleepNew")}];
    [v13 setCxoShutDownCount:v22];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = *(v5 + 2896);
      v24 = objc_opt_class();
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_595;
      v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v51[4] = v24;
      if (qword_2811F7A90 != -1)
      {
        dispatch_once(&qword_2811F7A90, v51);
      }

      if (byte_2811F7945 == 1)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logAPPSWithLogger:]"];
        [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:580];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = v25;
          _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v5 = 0x278257000uLL;
      }
    }

    [v13 appendToError:@"Sleep_Stats=<unknown> "];
  }

  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep_veto])
  {
    v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps_sleep_veto] ofSize:1];
    [v13 setAppsSleepVeto:v31];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v32 = *(v5 + 2896);
      v33 = objc_opt_class();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_604;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v33;
      if (qword_2811F7A98 != -1)
      {
        dispatch_once(&qword_2811F7A98, v50);
      }

      if (byte_2811F7946 == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent4 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logAPPSWithLogger:]"];
        [v35 logMessage:v34 fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:600];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = v34;
          _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v13 appendToError:@"Sleep_Veto_Duration=<unknown> "];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v40 = *(v5 + 2896);
    v41 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_613;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v41;
    if (qword_2811F7AA0 != -1)
    {
      dispatch_once(&qword_2811F7AA0, v49);
    }

    if (byte_2811F7947 == 1)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS"];
      v43 = MEMORY[0x277D3F178];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent5 = [v44 lastPathComponent];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logAPPSWithLogger:]"];
      [v43 logMessage:v42 fromFile:lastPathComponent5 fromFunction:v46 fromLineNumber:604];

      v47 = PLLogCommon();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v42;
        _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7943 = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_589(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7944 = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_595(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7945 = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_604(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7946 = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logAPPSWithLogger___block_invoke_613(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7947 = result;
  return result;
}

- (void)logMPSSWithLogger:(id)logger
{
  v55 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = 0x278257000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7AA8 != -1)
    {
      dispatch_once(&qword_2811F7AA8, block);
    }

    if (byte_2811F7948 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logMPSSWithLogger:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logMPSSWithLogger:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:611];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x278257000uLL;
    }
  }

  v13 = loggerCopy;
  if ([(PLBBMav10HwMsgParser *)self mpss_sleepNew])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser mpss_sleepNew](self, "mpss_sleepNew")[4]}];
    [v13 setMpssCxoShutDownDuration:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav10HwMsgParser mpss_sleepNew](self, "mpss_sleepNew")}];
    [v13 setMpssCxoShutDownCount:v15];
  }

  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto])
  {
    v16 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto] ofSize:3];
    [v13 setMpssSleepVeto:v16];
LABEL_12:

    goto LABEL_20;
  }

  [v13 appendToError:@"Sleep_Veto=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_622;
    v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v51[4] = v17;
    if (qword_2811F7AB0 != -1)
    {
      dispatch_once(&qword_2811F7AB0, v51);
    }

    if (byte_2811F7949 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto=<unknown>"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logMPSSWithLogger:]"];
      [v18 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:644];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x278257000;
      goto LABEL_12;
    }
  }

LABEL_20:
  if ([(PLBBMav10HwMsgParser *)self qdspNew])
  {
    v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self qdspNew] ofSize:9];
    [v13 setQdspConfigCount:v23];
LABEL_22:

    goto LABEL_30;
  }

  [v13 appendToError:@"Q6SW_Perf=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = *(v5 + 2896);
    v25 = objc_opt_class();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_631;
    v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v50[4] = v25;
    if (qword_2811F7AB8 != -1)
    {
      dispatch_once(&qword_2811F7AB8, v50);
    }

    if (byte_2811F794A == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Q6SW_Perf=<unknown>"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent3 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logMPSSWithLogger:]"];
      [v26 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:657];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x278257000;
      goto LABEL_22;
    }
  }

LABEL_30:
  if ([(PLMav4BasebandHardwareMessage *)self adm])
  {
    v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self adm] ofSize:2];
    [v13 setAdmOnOffState:v31];
LABEL_32:

    goto LABEL_40;
  }

  [v13 appendToError:@"ADM=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = *(v5 + 2896);
    v33 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_640;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v33;
    if (qword_2811F7AC0 != -1)
    {
      dispatch_once(&qword_2811F7AC0, v49);
    }

    if (byte_2811F794B == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADM=<unknown>"];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logMPSSWithLogger:]"];
      [v34 logMessage:v31 fromFile:lastPathComponent4 fromFunction:v37 fromLineNumber:669];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v31;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_32;
    }
  }

LABEL_40:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v39 = *(v5 + 2896);
    v40 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_646;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v40;
    if (qword_2811F7AC8 != -1)
    {
      dispatch_once(&qword_2811F7AC8, v48);
    }

    if (byte_2811F794C == 1)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS"];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent5 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logMPSSWithLogger:]"];
      [v42 logMessage:v41 fromFile:lastPathComponent5 fromFunction:v45 fromLineNumber:673];

      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v41;
        _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7948 = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7949 = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_631(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F794A = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F794B = result;
  return result;
}

uint64_t __42__PLBBMav10HwMsgParser_logMPSSWithLogger___block_invoke_646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F794C = result;
  return result;
}

- (void)logHwRFLTEWithLogger:(id)logger
{
  v53 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7AD0 != -1)
    {
      dispatch_once(&qword_2811F7AD0, block);
    }

    if (byte_2811F794D == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRFLTEWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFLTEWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:678];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v52 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfLTELogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBBMsgRoot *)v13 setAgent:agent];

    [(PLBBMavHwRfLTELogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfLTELogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if ([(PLBBMav10HwMsgParser *)self rfLTE])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav10HwMsgParser rfLTE](self, "rfLTE") - -[PLBBMav10HwMsgParser rfLTE](self, "rfLTE")[4])}];
      [(PLBBMavHwRfLTELogMsg *)v13 setLogDuration:v17];

      v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav10HwMsgParser rfLTE](self, "rfLTE")[12]}];
      [(PLBBMavHwRfLTELogMsg *)v13 setDupMode:v18];

      v19 = [(PLBasebandHardwareMessage *)self convertUint8ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 16 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaFreqInfo:v19];

      v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 20 ofSize:16];
      [(PLBBMavHwRfLTELogMsg *)v13 setDlC0TBSzCnt:v20];

      v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 84 ofSize:16];
      [(PLBBMavHwRfLTELogMsg *)v13 setDlC1TBSzCnt:v21];

      v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 148 ofSize:12];
      [(PLBBMavHwRfLTELogMsg *)v13 setTxPwrCnt:v22];

      v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 196 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaSCCCnt:v23];

      v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 212 ofSize:6];
      [(PLBBMavHwRfLTELogMsg *)v13 setActRxTxCnt:v24];

      v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfLTE]+ 236 ofSize:6];
      [(PLBBMavHwRfLTELogMsg *)v13 setSleepStateCnt:v25];

      logEventBackwardBBMav10HwRfLTE = [(PLBBMavHwRfLTELogMsg *)v13 logEventBackwardBBMav10HwRfLTE];
      v27 = [logEventBackwardBBMav10HwRfLTE objectForKey:@"entry"];
      v28 = [logEventBackwardBBMav10HwRfLTE objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v27 withEntryKey:v28];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v29 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke_674;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v29;
      if (qword_2811F7AE8 != -1)
      {
        dispatch_once(&qword_2811F7AE8, v47);
      }

      if (byte_2811F7950 != 1)
      {
        goto LABEL_29;
      }

      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh Mav HW RF LTE"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFLTEWithLogger:]"];
      [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:740];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v52 = v30;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v41 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke_662;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v41;
      if (qword_2811F7AE0 != -1)
      {
        dispatch_once(&qword_2811F7AE0, v48);
      }

      if (byte_2811F794F == 1)
      {
        logEventBackwardBBMav10HwRfLTE = [MEMORY[0x277CCACA8] stringWithFormat:@"rfLTE is not valid, return"];
        v42 = MEMORY[0x277D3F178];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v43 lastPathComponent];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFLTEWithLogger:]"];
        [v42 logMessage:logEventBackwardBBMav10HwRfLTE fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:692];

        v30 = PLLogCommon();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        *buf = 138412290;
        v52 = logEventBackwardBBMav10HwRfLTE;
        goto LABEL_32;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v36 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke_653;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v36;
    if (qword_2811F7AD8 != -1)
    {
      dispatch_once(&qword_2811F7AD8, v49);
    }

    if (byte_2811F794E == 1)
    {
      logEventBackwardBBMav10HwRfLTE = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfLTE failed"];
      v37 = MEMORY[0x277D3F178];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v38 lastPathComponent];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFLTEWithLogger:]"];
      [v37 logMessage:logEventBackwardBBMav10HwRfLTE fromFile:lastPathComponent4 fromFunction:v40 fromLineNumber:682];

      v30 = PLLogCommon();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v52 = logEventBackwardBBMav10HwRfLTE;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_30:

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F794D = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke_653(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F794E = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke_662(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F794F = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFLTEWithLogger___block_invoke_674(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7950 = result;
  return result;
}

- (void)logHwRFWCDMAWithLogger:(id)logger
{
  v57 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7AF0 != -1)
    {
      dispatch_once(&qword_2811F7AF0, block);
    }

    if (byte_2811F7951 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRFWCDMAWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFWCDMAWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:745];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v56 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfWCDMALogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRfWCDMALogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if ([(PLBBMav10HwMsgParser *)self rfWCDMA])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(-[PLBBMav10HwMsgParser rfWCDMA](self, "rfWCDMA")[4] - -[PLBBMav10HwMsgParser rfWCDMA](self, "rfWCDMA")[8])}];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setLogDuration:v17];

      v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 12 ofSize:3];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setSCEqStatCnt:v18];

      v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 24 ofSize:3];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setDCEqStatCnt:v19];

      v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 36 ofSize:4];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setSCQsetEqStatCnt:v20];

      v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 52 ofSize:4];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setDCQsetEqStatCnt:v21];

      v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 68 ofSize:2];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setDurInCarrierMode:v22];

      v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 76 ofSize:4];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setRABModeCnt:v23];

      v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 92 ofSize:4];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setRABTypeCnt:v24];

      v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfWCDMA]+ 108 ofSize:12];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setTxPwrBucket:v25];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser rfWCDMA](self, "rfWCDMA")[156]}];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxOnCnt:v26];

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser rfWCDMA](self, "rfWCDMA")[160]}];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxTxOffCnt:v27];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser rfWCDMA](self, "rfWCDMA")[164]}];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcTimeCnt:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav10HwMsgParser rfWCDMA](self, "rfWCDMA")[168]}];
      [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcEnergy:v29];

      logEventBackwardBBMavHwRfWCDMA = [(PLBBMavHwRfWCDMALogMsg *)v13 logEventBackwardBBMavHwRfWCDMA];
      v31 = [logEventBackwardBBMavHwRfWCDMA objectForKey:@"entry"];
      v32 = [logEventBackwardBBMavHwRfWCDMA objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v31 withEntryKey:v32];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v33 = objc_opt_class();
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke_693;
      v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v51[4] = v33;
      if (qword_2811F7B08 != -1)
      {
        dispatch_once(&qword_2811F7B08, v51);
      }

      if (byte_2811F7954 != 1)
      {
        goto LABEL_29;
      }

      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF WCDMA"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFWCDMAWithLogger:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:814];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v56 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v45 = objc_opt_class();
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke_687;
      v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v52[4] = v45;
      if (qword_2811F7B00 != -1)
      {
        dispatch_once(&qword_2811F7B00, v52);
      }

      if (byte_2811F7953 == 1)
      {
        logEventBackwardBBMavHwRfWCDMA = [MEMORY[0x277CCACA8] stringWithFormat:@"rfWCDMA is not valid, return"];
        v46 = MEMORY[0x277D3F178];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v47 lastPathComponent];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFWCDMAWithLogger:]"];
        [v46 logMessage:logEventBackwardBBMavHwRfWCDMA fromFile:lastPathComponent3 fromFunction:v49 fromLineNumber:759];

        v34 = PLLogCommon();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        *buf = 138412290;
        v56 = logEventBackwardBBMavHwRfWCDMA;
        goto LABEL_32;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v40 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke_681;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v40;
    if (qword_2811F7AF8 != -1)
    {
      dispatch_once(&qword_2811F7AF8, v53);
    }

    if (byte_2811F7952 == 1)
    {
      logEventBackwardBBMavHwRfWCDMA = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfWCDMA failed"];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFWCDMAWithLogger:]"];
      [v41 logMessage:logEventBackwardBBMavHwRfWCDMA fromFile:lastPathComponent4 fromFunction:v44 fromLineNumber:749];

      v34 = PLLogCommon();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v56 = logEventBackwardBBMavHwRfWCDMA;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_30:

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7951 = result;
  return result;
}

uint64_t __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke_681(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7952 = result;
  return result;
}

uint64_t __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke_687(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7953 = result;
  return result;
}

uint64_t __47__PLBBMav10HwMsgParser_logHwRFWCDMAWithLogger___block_invoke_693(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7954 = result;
  return result;
}

- (void)logHwRFGSMWithLogger:(id)logger
{
  v44 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav10HwMsgParser_logHwRFGSMWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7B10 != -1)
    {
      dispatch_once(&qword_2811F7B10, block);
    }

    if (byte_2811F7955 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRFGSMWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFGSMWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:820];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfGSMLogMsg);
  if (!v13)
  {
    logEventBackwardBBMavHwRfGSM = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfGSM failed"];
    v29 = MEMORY[0x277D3F178];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
    lastPathComponent2 = [v30 lastPathComponent];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFGSMWithLogger:]"];
    [v29 logMessage:logEventBackwardBBMavHwRfGSM fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:824];

    v23 = PLLogCommon();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v43 = logEventBackwardBBMavHwRfGSM;
LABEL_28:
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_18;
  }

  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v13 setAgent:agent];

  [(PLBBMavHwRfGSMLogMsg *)v13 setError:@"not set"];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavHwRfGSMLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLBBMav10HwMsgParser *)self rfGSM])
  {
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav10HwMsgParser rfGSM](self, "rfGSM") - -[PLBBMav10HwMsgParser rfGSM](self, "rfGSM")[4])}];
    [(PLBBMavHwRfGSMLogMsg *)v13 setLogDuration:v17];

    v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfGSM]+ 8 ofSize:3];
    [(PLBBMavHwRfGSMLogMsg *)v13 setConnState:v18];

    logEventBackwardBBMavHwRfGSM = [(PLBBMavHwRfGSMLogMsg *)v13 logEventBackwardBBMavHwRfGSM];
    v20 = [logEventBackwardBBMavHwRfGSM objectForKey:@"entry"];
    v21 = [logEventBackwardBBMavHwRfGSM objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v20 withEntryKey:v21];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_19;
    }

    v22 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __45__PLBBMav10HwMsgParser_logHwRFGSMWithLogger___block_invoke_709;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v22;
    if (qword_2811F7B20 != -1)
    {
      dispatch_once(&qword_2811F7B20, v39);
    }

    if (byte_2811F7957 != 1)
    {
      goto LABEL_19;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF GSM"];
    v24 = MEMORY[0x277D3F178];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
    lastPathComponent3 = [v25 lastPathComponent];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFGSMWithLogger:]"];
    [v24 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:848];

    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v43 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __45__PLBBMav10HwMsgParser_logHwRFGSMWithLogger___block_invoke_703;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v34;
    if (qword_2811F7B18 != -1)
    {
      dispatch_once(&qword_2811F7B18, v40);
    }

    if (byte_2811F7956 == 1)
    {
      logEventBackwardBBMavHwRfGSM = [MEMORY[0x277CCACA8] stringWithFormat:@"rfGSM is not valid, return"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFGSMWithLogger:]"];
      [v35 logMessage:logEventBackwardBBMavHwRfGSM fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:833];

      v23 = PLLogCommon();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      *buf = 138412290;
      v43 = logEventBackwardBBMavHwRfGSM;
      goto LABEL_28;
    }
  }

LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFGSMWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7955 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFGSMWithLogger___block_invoke_703(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7956 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFGSMWithLogger___block_invoke_709(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7957 = result;
  return result;
}

- (void)logHwRFTDSWithLogger:(id)logger
{
  v47 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7B28 != -1)
    {
      dispatch_once(&qword_2811F7B28, block);
    }

    if (byte_2811F7958 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRFTDSWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFTDSWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:853];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfTDSLogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRfTDSLogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfTDSLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if ([(PLBBMav10HwMsgParser *)self rfTDS])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav10HwMsgParser rfTDS](self, "rfTDS") - -[PLBBMav10HwMsgParser rfTDS](self, "rfTDS")[4])}];
      [(PLBBMavHwRfTDSLogMsg *)v13 setLogDuration:v17];

      v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfTDS]+ 8 ofSize:7];
      [(PLBBMavHwRfTDSLogMsg *)v13 setSrvcTypeCnt:v18];

      v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfTDS]+ 36 ofSize:3];
      [(PLBBMavHwRfTDSLogMsg *)v13 setRxdStateCnt:v19];

      logEventBackwardBBMavHwRfTDS = [(PLBBMavHwRfTDSLogMsg *)v13 logEventBackwardBBMavHwRfTDS];
      v21 = [logEventBackwardBBMavHwRfTDS objectForKey:@"entry"];
      v22 = [logEventBackwardBBMavHwRfTDS objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v21 withEntryKey:v22];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v23 = objc_opt_class();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke_725;
      v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v41[4] = v23;
      if (qword_2811F7B40 != -1)
      {
        dispatch_once(&qword_2811F7B40, v41);
      }

      if (byte_2811F795B != 1)
      {
        goto LABEL_29;
      }

      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF TDS"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFTDSWithLogger:]"];
      [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:883];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v24;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v35 = objc_opt_class();
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke_719;
      v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v42[4] = v35;
      if (qword_2811F7B38 != -1)
      {
        dispatch_once(&qword_2811F7B38, v42);
      }

      if (byte_2811F795A == 1)
      {
        logEventBackwardBBMavHwRfTDS = [MEMORY[0x277CCACA8] stringWithFormat:@"rfTDS is not valid, return"];
        v36 = MEMORY[0x277D3F178];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v37 lastPathComponent];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFTDSWithLogger:]"];
        [v36 logMessage:logEventBackwardBBMavHwRfTDS fromFile:lastPathComponent3 fromFunction:v39 fromLineNumber:867];

        v24 = PLLogCommon();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        *buf = 138412290;
        v46 = logEventBackwardBBMavHwRfTDS;
        goto LABEL_32;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke_716;
    v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v43[4] = v30;
    if (qword_2811F7B30 != -1)
    {
      dispatch_once(&qword_2811F7B30, v43);
    }

    if (byte_2811F7959 == 1)
    {
      logEventBackwardBBMavHwRfTDS = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfGSM failed"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFTDSWithLogger:]"];
      [v31 logMessage:logEventBackwardBBMavHwRfTDS fromFile:lastPathComponent4 fromFunction:v34 fromLineNumber:857];

      v24 = PLLogCommon();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v46 = logEventBackwardBBMavHwRfTDS;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_30:

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7958 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke_716(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7959 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke_719(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F795A = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFTDSWithLogger___block_invoke_725(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F795B = result;
  return result;
}

- (void)logHwRF1xWithLogger:(id)logger
{
  v48 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7B48 != -1)
    {
      dispatch_once(&qword_2811F7B48, block);
    }

    if (byte_2811F795C == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRF1xWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRF1xWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:888];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRf1xLogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRf1xLogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRf1xLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if ([(PLBBMav10HwMsgParser *)self rf1x])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav10HwMsgParser rf1x](self, "rf1x") - -[PLBBMav10HwMsgParser rf1x](self, "rf1x")[4])}];
      [(PLBBMavHwRf1xLogMsg *)v13 setLogDuration:v17];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rf1x](self, "rf1x")[8]}];
      [(PLBBMavHwRf1xLogMsg *)v13 setDtxOn:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rf1x](self, "rf1x")[12]}];
      [(PLBBMavHwRf1xLogMsg *)v13 setDtxOff:v19];

      v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rf1x]+ 16 ofSize:6];
      [(PLBBMavHwRf1xLogMsg *)v13 setCallTypeDur:v20];

      logEventBackwardBBMavHwRf1x = [(PLBBMavHwRf1xLogMsg *)v13 logEventBackwardBBMavHwRf1x];
      v22 = [logEventBackwardBBMavHwRf1x objectForKey:@"entry"];
      v23 = [logEventBackwardBBMavHwRf1x objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v22 withEntryKey:v23];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v24 = objc_opt_class();
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke_744;
      v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v42[4] = v24;
      if (qword_2811F7B60 != -1)
      {
        dispatch_once(&qword_2811F7B60, v42);
      }

      if (byte_2811F795F != 1)
      {
        goto LABEL_29;
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF 1x"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRF1xWithLogger:]"];
      [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:950];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v25;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke_738;
      v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v43[4] = v36;
      if (qword_2811F7B58 != -1)
      {
        dispatch_once(&qword_2811F7B58, v43);
      }

      if (byte_2811F795E == 1)
      {
        logEventBackwardBBMavHwRf1x = [MEMORY[0x277CCACA8] stringWithFormat:@"rf1x is not valid, return"];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRF1xWithLogger:]"];
        [v37 logMessage:logEventBackwardBBMavHwRf1x fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:901];

        v25 = PLLogCommon();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        *buf = 138412290;
        v47 = logEventBackwardBBMavHwRf1x;
        goto LABEL_32;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v31 = objc_opt_class();
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke_732;
    v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v44[4] = v31;
    if (qword_2811F7B50 != -1)
    {
      dispatch_once(&qword_2811F7B50, v44);
    }

    if (byte_2811F795D == 1)
    {
      logEventBackwardBBMavHwRf1x = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRf1x failed"];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRF1xWithLogger:]"];
      [v32 logMessage:logEventBackwardBBMavHwRf1x fromFile:lastPathComponent4 fromFunction:v35 fromLineNumber:892];

      v25 = PLLogCommon();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v47 = logEventBackwardBBMavHwRf1x;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F795C = result;
  return result;
}

uint64_t __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke_732(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F795D = result;
  return result;
}

uint64_t __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke_738(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F795E = result;
  return result;
}

uint64_t __44__PLBBMav10HwMsgParser_logHwRF1xWithLogger___block_invoke_744(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F795F = result;
  return result;
}

- (void)logHwRFHDRWithLogger:(id)logger
{
  v51 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7B68 != -1)
    {
      dispatch_once(&qword_2811F7B68, block);
    }

    if (byte_2811F7960 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRFHDRWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFHDRWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:955];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfHDRLogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRfHDRLogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfHDRLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if ([(PLBBMav10HwMsgParser *)self rf1x])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav10HwMsgParser rf1x](self, "rf1x") - -[PLBBMav10HwMsgParser rf1x](self, "rf1x")[4])}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setLogDuration:v17];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfHDR](self, "rfHDR")[8]}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setSDTXOnFrame:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfHDR](self, "rfHDR")[12]}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setSDTXOffFrame:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfHDR](self, "rfHDR")[16]}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setLDTXOnFrame:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfHDR](self, "rfHDR")[20]}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setLDTXOffFrame:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfHDR](self, "rfHDR")[24]}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setTDTXOnFrame:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfHDR](self, "rfHDR")[28]}];
      [(PLBBMavHwRfHDRLogMsg *)v13 setTDTXOffFrame:v23];

      logEventBackwardBBMavHwRfHDR = [(PLBBMavHwRfHDRLogMsg *)v13 logEventBackwardBBMavHwRfHDR];
      v25 = [logEventBackwardBBMavHwRfHDR objectForKey:@"entry"];
      v26 = [logEventBackwardBBMavHwRfHDR objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v25 withEntryKey:v26];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v27 = objc_opt_class();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke_760;
      v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v45[4] = v27;
      if (qword_2811F7B80 != -1)
      {
        dispatch_once(&qword_2811F7B80, v45);
      }

      if (byte_2811F7963 != 1)
      {
        goto LABEL_29;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF HDR"];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent2 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFHDRWithLogger:]"];
      [v29 logMessage:v28 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:989];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke_757;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v39;
      if (qword_2811F7B78 != -1)
      {
        dispatch_once(&qword_2811F7B78, v46);
      }

      if (byte_2811F7962 == 1)
      {
        logEventBackwardBBMavHwRfHDR = [MEMORY[0x277CCACA8] stringWithFormat:@"rf1x is not valid, return"];
        v40 = MEMORY[0x277D3F178];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v41 lastPathComponent];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFHDRWithLogger:]"];
        [v40 logMessage:logEventBackwardBBMavHwRfHDR fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:968];

        v28 = PLLogCommon();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        *buf = 138412290;
        v50 = logEventBackwardBBMavHwRfHDR;
        goto LABEL_32;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke_751;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v34;
    if (qword_2811F7B70 != -1)
    {
      dispatch_once(&qword_2811F7B70, v47);
    }

    if (byte_2811F7961 == 1)
    {
      logEventBackwardBBMavHwRfHDR = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfHDR failed"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent4 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFHDRWithLogger:]"];
      [v35 logMessage:logEventBackwardBBMavHwRfHDR fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:959];

      v28 = PLLogCommon();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v50 = logEventBackwardBBMavHwRfHDR;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_30:

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7960 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke_751(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7961 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke_757(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7962 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFHDRWithLogger___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7963 = result;
  return result;
}

- (void)logHwRFOOSWithLogger:(id)logger
{
  v52 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav10HwMsgParser_logHwRFOOSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7B88 != -1)
    {
      dispatch_once(&qword_2811F7B88, block);
    }

    if (byte_2811F7964 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav10HwMsgParser logHwRFOOSWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFOOSWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:994];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_opt_new();
  agent = [(PLBasebandMessage *)self agent];
  [v13 setAgent:agent];

  [v13 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLBBMav10HwMsgParser *)self rfOOS])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
    [v13 setLogDuration:v17];

    [v13 setOosInProgress:{-[PLBBMav10HwMsgParser rfOOS](self, "rfOOS")[10]}];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfOOS](self, "rfOOS")[2]}];
    [v13 setOosTicks:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*-[PLBBMav10HwMsgParser rfOOS](self, "rfOOS")}];
    [v13 setOosTimes:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav10HwMsgParser rfOOS](self, "rfOOS")[6]}];
    [v13 setPssiTicks:v20];

    v21 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 11 ofSize:6];
    [v13 setOosGsmPssiTimes:v21];

    v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 59 ofSize:6];
    [v13 setOosGsmPssiStatTicks:v22];

    v23 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 23 ofSize:6];
    [v13 setOosWcdmaPssiTimes:v23];

    v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 83 ofSize:6];
    [v13 setOosWcdmaPssiStatTicks:v24];

    v25 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 35 ofSize:6];
    [v13 setOosLtePssiTimes:v25];

    v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 107 ofSize:6];
    [v13 setOosLtePssiStatTicks:v26];

    v27 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 47 ofSize:6];
    [v13 setOosTdsPssiTimes:v27];

    v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav10HwMsgParser *)self rfOOS]+ 131 ofSize:6];
    [v13 setOosTdsPssiStatTicks:v28];

    logEventBackwardBBMavHwRfOos = [v13 logEventBackwardBBMavHwRfOos];
    v30 = [logEventBackwardBBMavHwRfOos objectForKey:@"entry"];
    v31 = [logEventBackwardBBMavHwRfOos objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v30 withEntryKey:v31];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v32 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __45__PLBBMav10HwMsgParser_logHwRFOOSWithLogger___block_invoke_773;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v32;
      if (qword_2811F7B98 != -1)
      {
        dispatch_once(&qword_2811F7B98, v47);
      }

      if (byte_2811F7966 == 1)
      {
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF OOS"];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent2 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFOOSWithLogger:]"];
        [v34 logMessage:v33 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:1049];

        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v51 = v33;
          _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __45__PLBBMav10HwMsgParser_logHwRFOOSWithLogger___block_invoke_767;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v39;
      if (qword_2811F7B90 != -1)
      {
        dispatch_once(&qword_2811F7B90, v48);
      }

      if (byte_2811F7965 == 1)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfOOS is not valid, return"];
        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav10HwMsgParser.m"];
        lastPathComponent3 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav10HwMsgParser logHwRFOOSWithLogger:]"];
        [v41 logMessage:v40 fromFile:lastPathComponent3 fromFunction:v44 fromLineNumber:1004];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v51 = v40;
          _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v13 setError:{@"rfOOS is not valid, return"}];
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFOOSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7964 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFOOSWithLogger___block_invoke_767(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7965 = result;
  return result;
}

uint64_t __45__PLBBMav10HwMsgParser_logHwRFOOSWithLogger___block_invoke_773(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7966 = result;
  return result;
}

- (int)GetClockCount:(_PLMav7BasebandHWStatsClockStateMask *)count
{
  v3 = 0;
  result = 0;
  do
  {
    v5 = count->var0[v3];
    if (v5)
    {
      do
      {
        result += v5 & 1;
        v6 = v5 >= 2;
        v5 >>= 1;
      }

      while (v6);
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

- (void)SetClocks:(_PLMav7BasebandHWStatsClockStateMask *)clocks oftype:(int)oftype withData:(char *)data
{
  string = [MEMORY[0x277CCAB68] string];
  v8 = 0;
  v9 = apps_clock_names;
  do
  {
    v10 = clocks->var0[v8];
    v11 = v9;
    if (v10)
    {
      do
      {
        if (v10)
        {
          v12 = *data;
          if ([(PLMav4BasebandHardwareMessage *)self logDuration])
          {
            if ([(PLMav4BasebandHardwareMessage *)self logDuration])
            {
              v13 = v12 * 100.0 / [(PLMav4BasebandHardwareMessage *)self logDuration];
              if (v13 > 0.01)
              {
                [string appendFormat:@" %@=[%d];", *v11, v12];
              }
            }
          }

          data += 4;
        }

        ++v11;
        v14 = v10 >= 2;
        v10 >>= 1;
      }

      while (v14);
    }

    ++v8;
    ++v9;
  }

  while (v8 != 4);
  if (oftype || ([(PLMav7BasebandHardwareMessage *)self apps_clock_duration], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    mpss_clock_duration = [(PLMav7BasebandHardwareMessage *)self mpss_clock_duration];

    if (!mpss_clock_duration)
    {
      goto LABEL_17;
    }

    mpss_clock_duration2 = [(PLMav7BasebandHardwareMessage *)self mpss_clock_duration];
  }

  else
  {
    mpss_clock_duration2 = [(PLMav7BasebandHardwareMessage *)self apps_clock_duration];
  }

  v18 = mpss_clock_duration2;
  [mpss_clock_duration2 appendString:string];

LABEL_17:
}

@end