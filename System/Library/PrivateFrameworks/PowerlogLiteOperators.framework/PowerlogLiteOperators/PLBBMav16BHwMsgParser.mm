@interface PLBBMav16BHwMsgParser
- (BOOL)parseData:(id)data;
- (void)logMav16BAppsPerfWithLogger:(id)logger;
- (void)logMav16BHwRFEnhLTEWithLogger:(id)logger;
- (void)logMav16BMPSSWithLogger:(id)logger;
- (void)logMav16HwRFEnhWCDMAWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLBBMav16BHwMsgParser

- (BOOL)parseData:(id)data
{
  v531 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v524[0] = MEMORY[0x277D85DD0];
    v524[1] = 3221225472;
    v524[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke;
    v524[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v524[4] = v6;
    v7 = v524;
    if (qword_2811F7498 != -1)
    {
      dispatch_once(&qword_2811F7498, v7);
    }

    if (_MergedGlobals_86 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received data of length %lu", objc_msgSend(dataCopy, "length")];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:34];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v526 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  string = [MEMORY[0x277CCAB68] string];
  v448 = string;
  if (*bytes == 129)
  {
    [string appendFormat:@"SeqInd[%x] ", 129];
    bytes += 2;
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v523[0] = MEMORY[0x277D85DD0];
    v523[1] = 3221225472;
    v523[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_375;
    v523[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v523[4] = v16;
    v17 = v523;
    if (qword_2811F74A0 != -1)
    {
      dispatch_once(&qword_2811F74A0, v17);
    }

    v5 = 0x277D3F000;
    if (byte_2811F7441 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log header starts at offset %llu", v15];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:46];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v526 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  if ([*(v5 + 384) debugEnabled])
  {
    v24 = objc_opt_class();
    v522[0] = MEMORY[0x277D85DD0];
    v522[1] = 3221225472;
    v522[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_381;
    v522[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v522[4] = v24;
    v25 = v522;
    if (qword_2811F74A8 != -1)
    {
      dispatch_once(&qword_2811F74A8, v25);
    }

    v5 = 0x277D3F000;
    if (byte_2811F7442 == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stats header starts at offset %llu", v15 | 0xD];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent3 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
      [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:50];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v526 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  [(PLMav4BasebandHardwareMessage *)self setHeader:bytes + 13];
  [v448 appendFormat:@"Sw Rev[%0x %0x] ", bytes[13], bytes[14]];
  [v448 appendFormat:@"Hw Rev[%0x %0x] ", bytes[15], bytes[16]];
  if ([*(v5 + 384) debugEnabled])
  {
    v32 = objc_opt_class();
    v521[0] = MEMORY[0x277D85DD0];
    v521[1] = 3221225472;
    v521[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_393;
    v521[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v521[4] = v32;
    v33 = v521;
    if (qword_2811F74B0 != -1)
    {
      dispatch_once(&qword_2811F74B0, v33);
    }

    v5 = 0x277D3F000;
    if (byte_2811F7443 == 1)
    {
      v448 = [MEMORY[0x277CCACA8] stringWithFormat:@"Header Info: %@", v448];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent4 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
      [v35 logMessage:v448 fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:56];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v526 = v448;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  v40 = bytes + 33;
  if ([*(v5 + 384) debugEnabled])
  {
    v41 = objc_opt_class();
    v520[0] = MEMORY[0x277D85DD0];
    v520[1] = 3221225472;
    v520[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_399;
    v520[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v520[4] = v41;
    v42 = v520;
    if (qword_2811F74B8 != -1)
    {
      dispatch_once(&qword_2811F74B8, v42);
    }

    if (byte_2811F7444 == 1)
    {
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size after Seq and Statsheader %lu", objc_msgSend(dataCopy, "length") - 22];
      v44 = MEMORY[0x277D3F178];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent5 = [v45 lastPathComponent];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
      [v44 logMessage:v43 fromFile:lastPathComponent5 fromFunction:v47 fromLineNumber:61];

      v48 = PLLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v526 = v43;
        _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
      v40 = bytes + 33;
    }
  }

  v49 = v15 | 0x21;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v50 = objc_opt_class();
      v519[0] = MEMORY[0x277D85DD0];
      v519[1] = 3221225472;
      v519[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_405;
      v519[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v519[4] = v50;
      v51 = v519;
      if (qword_2811F74C0 != -1)
      {
        dispatch_once(&qword_2811F74C0, v51);
      }

      if (byte_2811F7445 == 1)
      {
        v453 = v15;
        v52 = v40;
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 1: RPM starts at offset %llu", v49];
        v54 = MEMORY[0x277D3F178];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent6 = [v55 lastPathComponent];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v54 logMessage:v53 fromFile:lastPathComponent6 fromFunction:v57 fromLineNumber:68];

        v58 = PLLogCommon();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v53;
          _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v52;
        v15 = v453;
      }
    }

    [(PLBBMav13HwMsgParser *)self setRpmData:v40];
    v40 = bytes + 57;
    v49 = v15 | 0x39;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 2)
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v59 = objc_opt_class();
      v518[0] = MEMORY[0x277D85DD0];
      v518[1] = 3221225472;
      v518[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_411;
      v518[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v518[4] = v59;
      v60 = v518;
      if (qword_2811F74C8 != -1)
      {
        dispatch_once(&qword_2811F74C8, v60);
      }

      if (byte_2811F7446 == 1)
      {
        v61 = v40;
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 2: Apps Perf starts at offset %llu", v49];
        v63 = MEMORY[0x277D3F178];
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent7 = [v64 lastPathComponent];
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v63 logMessage:v62 fromFile:lastPathComponent7 fromFunction:v66 fromLineNumber:77];

        v67 = PLLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v62;
          _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v61;
      }
    }

    [(PLBBMav16BHwMsgParser *)self setMav16BAppsPerf:v40];
    if ([*(v5 + 384) debugEnabled])
    {
      v68 = objc_opt_class();
      v517[0] = MEMORY[0x277D85DD0];
      v517[1] = 3221225472;
      v517[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_417;
      v517[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v517[4] = v68;
      v69 = v517;
      if (qword_2811F74D0 != -1)
      {
        dispatch_once(&qword_2811F74D0, v69);
      }

      if (byte_2811F7447 == 1)
      {
        v70 = v40;
        v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 2: Apps Sleep starts at offset %llu", v49 + 32];
        v72 = MEMORY[0x277D3F178];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent8 = [v73 lastPathComponent];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v72 logMessage:v71 fromFile:lastPathComponent8 fromFunction:v75 fromLineNumber:82];

        v76 = PLLogCommon();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v71;
          _os_log_debug_impl(&dword_21A4C6000, v76, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v70;
      }
    }

    [(PLBBMav13HwMsgParser *)self setAppsSleep:v40 + 32];
    v40 += 44;
    v49 += 44;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v77 = objc_opt_class();
      v516[0] = MEMORY[0x277D85DD0];
      v516[1] = 3221225472;
      v516[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_423;
      v516[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v516[4] = v77;
      v78 = v516;
      if (qword_2811F74D8 != -1)
      {
        dispatch_once(&qword_2811F74D8, v78);
      }

      if (byte_2811F7448 == 1)
      {
        v79 = v40;
        v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 3: PCIE stats starts at offset %llu", v49];
        v81 = MEMORY[0x277D3F178];
        v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent9 = [v82 lastPathComponent];
        v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v81 logMessage:v80 fromFile:lastPathComponent9 fromFunction:v84 fromLineNumber:91];

        v85 = PLLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v80;
          _os_log_debug_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v79;
      }
    }

    [(PLBBMav13HwMsgParser *)self setPcieState:v40];
    v40 += 12;
    v49 += 12;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 4)
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v86 = objc_opt_class();
      v515[0] = MEMORY[0x277D85DD0];
      v515[1] = 3221225472;
      v515[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_429;
      v515[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v515[4] = v86;
      v87 = v515;
      if (qword_2811F74E0 != -1)
      {
        dispatch_once(&qword_2811F74E0, v87);
      }

      if (byte_2811F7449 == 1)
      {
        v88 = v40;
        v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 4: LPASS stats starts at offset %llu", v49];
        v90 = MEMORY[0x277D3F178];
        v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent10 = [v91 lastPathComponent];
        v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v90 logMessage:v89 fromFile:lastPathComponent10 fromFunction:v93 fromLineNumber:100];

        v94 = PLLogCommon();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v89;
          _os_log_debug_impl(&dword_21A4C6000, v94, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v88;
      }
    }

    [(PLBBMav13HwMsgParser *)self setLpassState:v40];
    v40 += 8;
    v49 += 8;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 5)
  {
    v95 = v40;
    if ([*(v5 + 384) debugEnabled])
    {
      v96 = objc_opt_class();
      v514[0] = MEMORY[0x277D85DD0];
      v514[1] = 3221225472;
      v514[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_435;
      v514[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v514[4] = v96;
      v97 = v514;
      if (qword_2811F74E8 != -1)
      {
        dispatch_once(&qword_2811F74E8, v97);
      }

      if (byte_2811F744A == 1)
      {
        v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: Apps Sleep veto stats starts at offset %llu", v49];
        v99 = MEMORY[0x277D3F178];
        v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent11 = [v100 lastPathComponent];
        v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v99 logMessage:v98 fromFile:lastPathComponent11 fromFunction:v102 fromLineNumber:109];

        v103 = PLLogCommon();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v98;
          _os_log_debug_impl(&dword_21A4C6000, v103, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav16BHwMsgParser *)self setMav16BAppsSleepVeto:v40];
    if ([*(v5 + 384) debugEnabled])
    {
      v104 = objc_opt_class();
      v513[0] = MEMORY[0x277D85DD0];
      v513[1] = 3221225472;
      v513[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_441;
      v513[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v513[4] = v104;
      v105 = v513;
      if (qword_2811F74F0 != -1)
      {
        dispatch_once(&qword_2811F74F0, v105);
      }

      if (byte_2811F744B == 1)
      {
        v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: MPSS Sleep veto stats starts at offset %llu", v49 + 16];
        v107 = MEMORY[0x277D3F178];
        v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent12 = [v108 lastPathComponent];
        v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v107 logMessage:v106 fromFile:lastPathComponent12 fromFunction:v110 fromLineNumber:114];

        v111 = PLLogCommon();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v106;
          _os_log_debug_impl(&dword_21A4C6000, v111, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav16BHwMsgParser *)self setMav16BMpssSleepVeto:v40 + 16];
    if ([*(v5 + 384) debugEnabled])
    {
      v112 = objc_opt_class();
      v512[0] = MEMORY[0x277D85DD0];
      v512[1] = 3221225472;
      v512[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_447;
      v512[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v512[4] = v112;
      v113 = v512;
      if (qword_2811F74F8 != -1)
      {
        dispatch_once(&qword_2811F74F8, v113);
      }

      if (byte_2811F744C == 1)
      {
        v114 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: QDSP Sleep veto stats starts at offset %llu", v49 + 100];
        v115 = MEMORY[0x277D3F178];
        v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent13 = [v116 lastPathComponent];
        v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v115 logMessage:v114 fromFile:lastPathComponent13 fromFunction:v118 fromLineNumber:119];

        v119 = PLLogCommon();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v114;
          _os_log_debug_impl(&dword_21A4C6000, v119, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav16BHwMsgParser *)self setMav16BQdspSpeed:v40 + 100];
    if ([*(v5 + 384) debugEnabled])
    {
      v120 = objc_opt_class();
      v511[0] = MEMORY[0x277D85DD0];
      v511[1] = 3221225472;
      v511[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_453;
      v511[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v511[4] = v120;
      v121 = v511;
      if (qword_2811F7500 != -1)
      {
        dispatch_once(&qword_2811F7500, v121);
      }

      if (byte_2811F744D == 1)
      {
        v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: MPSS Sleep stats starts at offset %llu", v49 + 144];
        v123 = MEMORY[0x277D3F178];
        v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent14 = [v124 lastPathComponent];
        v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v123 logMessage:v122 fromFile:lastPathComponent14 fromFunction:v126 fromLineNumber:124];

        v127 = PLLogCommon();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v122;
          _os_log_debug_impl(&dword_21A4C6000, v127, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setMpssSleep:v40 + 144];
    if ([*(v5 + 384) debugEnabled])
    {
      v128 = objc_opt_class();
      v510[0] = MEMORY[0x277D85DD0];
      v510[1] = 3221225472;
      v510[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_459;
      v510[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v510[4] = v128;
      v129 = v510;
      if (qword_2811F7508 != -1)
      {
        dispatch_once(&qword_2811F7508, v129);
      }

      if (byte_2811F744E == 1)
      {
        v130 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS stats starts at offset %llu", v49 + 156];
        v131 = MEMORY[0x277D3F178];
        v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent15 = [v132 lastPathComponent];
        v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v131 logMessage:v130 fromFile:lastPathComponent15 fromFunction:v134 fromLineNumber:129];

        v135 = PLLogCommon();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v130;
          _os_log_debug_impl(&dword_21A4C6000, v135, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsState:v40 + 156];
    if ([*(v5 + 384) debugEnabled])
    {
      v136 = objc_opt_class();
      v509[0] = MEMORY[0x277D85DD0];
      v509[1] = 3221225472;
      v509[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_465;
      v509[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v509[4] = v136;
      v137 = v509;
      if (qword_2811F7510 != -1)
      {
        dispatch_once(&qword_2811F7510, v137);
      }

      if (byte_2811F744F == 1)
      {
        v138 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS DPO stats starts at offset %llu", v49 + 164];
        v139 = MEMORY[0x277D3F178];
        v140 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent16 = [v140 lastPathComponent];
        v142 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v139 logMessage:v138 fromFile:lastPathComponent16 fromFunction:v142 fromLineNumber:134];

        v143 = PLLogCommon();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v138;
          _os_log_debug_impl(&dword_21A4C6000, v143, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsDpoState:v40 + 164];
    if ([*(v5 + 384) debugEnabled])
    {
      v144 = objc_opt_class();
      v508[0] = MEMORY[0x277D85DD0];
      v508[1] = 3221225472;
      v508[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_471;
      v508[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v508[4] = v144;
      v145 = v508;
      if (qword_2811F7518 != -1)
      {
        dispatch_once(&qword_2811F7518, v145);
      }

      if (byte_2811F7450 == 1)
      {
        v146 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS DPO bin stats starts at offset %llu", v49 + 172];
        v147 = MEMORY[0x277D3F178];
        v148 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent17 = [v148 lastPathComponent];
        v150 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v147 logMessage:v146 fromFile:lastPathComponent17 fromFunction:v150 fromLineNumber:139];

        v151 = PLLogCommon();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v146;
          _os_log_debug_impl(&dword_21A4C6000, v151, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsDpoBins:v40 + 172];
    v40 += 196;
    v49 += 196;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    v454 = v40;
    if ([*(v5 + 384) debugEnabled])
    {
      v152 = objc_opt_class();
      v507[0] = MEMORY[0x277D85DD0];
      v507[1] = 3221225472;
      v507[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_477;
      v507[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v507[4] = v152;
      v153 = v507;
      if (qword_2811F7520 != -1)
      {
        dispatch_once(&qword_2811F7520, v153);
      }

      if (byte_2811F7451 == 1)
      {
        v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: MCPM Sleep veto starts at offset %llu", v49];
        v155 = MEMORY[0x277D3F178];
        v156 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent18 = [v156 lastPathComponent];
        v158 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v155 logMessage:v154 fromFile:lastPathComponent18 fromFunction:v158 fromLineNumber:148];

        v159 = PLLogCommon();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v154;
          _os_log_debug_impl(&dword_21A4C6000, v159, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v454;
      }
    }

    [(PLBBMav16BHwMsgParser *)self setMcpmSleepVetoMav16B:v40];
    if ([*(v5 + 384) debugEnabled])
    {
      v160 = objc_opt_class();
      v506[0] = MEMORY[0x277D85DD0];
      v506[1] = 3221225472;
      v506[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_483;
      v506[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v506[4] = v160;
      v161 = v506;
      if (qword_2811F7528 != -1)
      {
        dispatch_once(&qword_2811F7528, v161);
      }

      if (byte_2811F7452 == 1)
      {
        v162 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Protocol Active starts at offset %llu", v49 + 56];
        v163 = MEMORY[0x277D3F178];
        v164 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent19 = [v164 lastPathComponent];
        v166 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v163 logMessage:v162 fromFile:lastPathComponent19 fromFunction:v166 fromLineNumber:153];

        v167 = PLLogCommon();
        if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v162;
          _os_log_debug_impl(&dword_21A4C6000, v167, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v454;
      }
    }

    [(PLBBMav13HwMsgParser *)self setProtocolActive:v40 + 56];
    if ([*(v5 + 384) debugEnabled])
    {
      v168 = objc_opt_class();
      v505[0] = MEMORY[0x277D85DD0];
      v505[1] = 3221225472;
      v505[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_489;
      v505[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v505[4] = v168;
      v169 = v505;
      if (qword_2811F7530 != -1)
      {
        dispatch_once(&qword_2811F7530, v169);
      }

      if (byte_2811F7453 == 1)
      {
        v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Optim mask starts at offset %llu", v49 + 80];
        v171 = MEMORY[0x277D3F178];
        v172 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent20 = [v172 lastPathComponent];
        v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v171 logMessage:v170 fromFile:lastPathComponent20 fromFunction:v174 fromLineNumber:158];

        v175 = PLLogCommon();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v170;
          _os_log_debug_impl(&dword_21A4C6000, v175, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v454;
      }
    }

    [(PLBBMav13HwMsgParser *)self setOptimMaskArray:v40 + 80];
    if ([(PLBBMav13HwMsgParser *)self optimMaskArray])
    {
      NSLog(&cfstr_NotNull.isa);
    }

    v176 = 0x278257000uLL;
    if ([*(v5 + 384) isClassDebugEnabled:objc_opt_class()])
    {
      v452 = v49;
      v177 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", *-[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")];
      v178 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[1]];
      v179 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[2]];
      v180 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[3]];
      v449 = v177;
      v180 = [MEMORY[0x277CCACA8] stringWithFormat:@"Optim Mask [%@ %@ %@ %@]", v177, v178, v179, v180];
      v182 = MEMORY[0x277D3F178];
      v183 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent21 = [v183 lastPathComponent];
      v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
      [v182 logMessage:v180 fromFile:lastPathComponent21 fromFunction:v185 fromLineNumber:169];

      v186 = PLLogCommon();
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v526 = v180;
        _os_log_debug_impl(&dword_21A4C6000, v186, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
      v49 = v452;
      v40 = v454;
      v176 = 0x278257000uLL;
    }

    v49 += 84;
    if ([*(v5 + 384) debugEnabled])
    {
      v187 = objc_opt_class();
      v504[0] = MEMORY[0x277D85DD0];
      v504[1] = 3221225472;
      v504[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_504;
      v504[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v504[4] = v187;
      v188 = v504;
      if (qword_2811F7538 != -1)
      {
        dispatch_once(&qword_2811F7538, v188);
      }

      if (byte_2811F7454 == 1)
      {
        v189 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Protocol State starts at offset %llu", v49];
        v190 = MEMORY[0x277D3F178];
        v191 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent22 = [v191 lastPathComponent];
        v193 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v190 logMessage:v189 fromFile:lastPathComponent22 fromFunction:v193 fromLineNumber:173];

        v194 = PLLogCommon();
        if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v189;
          _os_log_debug_impl(&dword_21A4C6000, v194, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v5 = 0x277D3F000uLL;
      }
    }

    v40 += 84;
    if ([*(v5 + 384) debugEnabled])
    {
      v195 = objc_opt_class();
      v503[0] = MEMORY[0x277D85DD0];
      v503[1] = 3221225472;
      v503[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_510;
      v503[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v503[4] = v195;
      v196 = v503;
      if (qword_2811F7540 != -1)
      {
        dispatch_once(&qword_2811F7540, v196);
      }

      if (byte_2811F7455 == 1)
      {
        v197 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Optim mask value [0x%x]", *-[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")];
        v198 = MEMORY[0x277D3F178];
        v199 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent23 = [v199 lastPathComponent];
        v201 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v198 logMessage:v197 fromFile:lastPathComponent23 fromFunction:v201 fromLineNumber:178];

        v202 = PLLogCommon();
        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v197;
          _os_log_debug_impl(&dword_21A4C6000, v202, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v5 = 0x277D3F000uLL;
      }
    }

    v450 = +[PLBBMav13HwMsgParser optimMaskMappings];
    v203 = 0;
    v426 = v459;
    v446 = v469;
    v447 = v461;
    v444 = v465;
    v445 = v467;
    v442 = v471;
    v443 = v463;
    v440 = v475;
    v441 = v473;
    v438 = v479;
    v439 = v477;
    v437 = v481;
    v435 = v485;
    v436 = v483;
    v433 = v489;
    v434 = v487;
    v431 = v493;
    v432 = v491;
    v429 = v497;
    v430 = v495;
    v427 = v501;
    v428 = v499;
    selfCopy = self;
    do
    {
      if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]>> v203))
      {
        if ([*(v5 + 384) debugEnabled])
        {
          v204 = *(v176 + 2896);
          v205 = objc_opt_class();
          v502[0] = MEMORY[0x277D85DD0];
          v502[1] = 3221225472;
          v502[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_517;
          v502[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v502[4] = v205;
          v206 = v502;
          if (qword_2811F7548 != -1)
          {
            dispatch_once(&qword_2811F7548, v206);
          }

          if (byte_2811F7456 == 1)
          {
            v207 = MEMORY[0x277CCACA8];
            v208 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v203];
            v209 = [v450 objectForKeyedSubscript:v208];
            v210 = v49;
            v211 = v209;
            v212 = v40;
            v213 = v210;
            v214 = [v207 stringWithFormat:@"Payload %@ is present at offset %llu, pointer %ld", v209, v210, v40];

            v215 = MEMORY[0x277D3F178];
            v216 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent24 = [v216 lastPathComponent];
            v218 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v215 logMessage:v214 fromFile:lastPathComponent24 fromFunction:v218 fromLineNumber:184];

            v219 = PLLogCommon();
            if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v526 = v214;
              _os_log_debug_impl(&dword_21A4C6000, v219, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v40 = v212;
            v49 = v213;
            v176 = 0x278257000uLL;
            self = selfCopy;
          }
        }

        switch(v203)
        {
          case 1:
            [(PLBBMav13HwMsgParser *)self setProtoStateHDR:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v335 = *(v176 + 2896);
            v336 = objc_opt_class();
            v498[0] = MEMORY[0x277D85DD0];
            v498[1] = 3221225472;
            v499[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_530;
            v499[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v499[2] = v336;
            v337 = v498;
            if (qword_2811F7558 != -1)
            {
              dispatch_once(&qword_2811F7558, v337);
            }

            if (byte_2811F7458 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v338 = MEMORY[0x277D3F178];
            v339 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent25 = [v339 lastPathComponent];
            v341 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v338 logMessage:v226 fromFile:lastPathComponent25 fromFunction:v341 fromLineNumber:197];

            v231 = PLLogCommon();
            if (!os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_314;
            }

            goto LABEL_313;
          case 2:
            [(PLBBMav13HwMsgParser *)self setProtoStateGSM:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v307 = *(v176 + 2896);
            v308 = objc_opt_class();
            v496[0] = MEMORY[0x277D85DD0];
            v496[1] = 3221225472;
            v497[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_533;
            v497[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v497[2] = v308;
            v309 = v496;
            if (qword_2811F7560 != -1)
            {
              dispatch_once(&qword_2811F7560, v309);
            }

            if (byte_2811F7459 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v310 = MEMORY[0x277D3F178];
            v311 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent26 = [v311 lastPathComponent];
            v313 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v310 logMessage:v226 fromFile:lastPathComponent26 fromFunction:v313 fromLineNumber:203];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 3:
            [(PLBBMav13HwMsgParser *)self setProtoStateWCDMA:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v321 = *(v176 + 2896);
            v322 = objc_opt_class();
            v494[0] = MEMORY[0x277D85DD0];
            v494[1] = 3221225472;
            v495[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_536;
            v495[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v495[2] = v322;
            v323 = v494;
            if (qword_2811F7568 != -1)
            {
              dispatch_once(&qword_2811F7568, v323);
            }

            if (byte_2811F745A != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v324 = MEMORY[0x277D3F178];
            v325 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent27 = [v325 lastPathComponent];
            v327 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v324 logMessage:v226 fromFile:lastPathComponent27 fromFunction:v327 fromLineNumber:209];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 4:
            [(PLBBMav13HwMsgParser *)self setProtoStateLTE:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v253 = *(v176 + 2896);
            v254 = objc_opt_class();
            v492[0] = MEMORY[0x277D85DD0];
            v492[1] = 3221225472;
            v493[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_539;
            v493[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v493[2] = v254;
            v255 = v492;
            if (qword_2811F7570 != -1)
            {
              dispatch_once(&qword_2811F7570, v255);
            }

            if (byte_2811F745B != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v256 = MEMORY[0x277D3F178];
            v257 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent28 = [v257 lastPathComponent];
            v259 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v256 logMessage:v226 fromFile:lastPathComponent28 fromFunction:v259 fromLineNumber:215];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 5:
            [(PLBBMav13HwMsgParser *)self setProtoStateTDS:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v349 = *(v176 + 2896);
            v350 = objc_opt_class();
            v490[0] = MEMORY[0x277D85DD0];
            v490[1] = 3221225472;
            v491[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_542;
            v491[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v491[2] = v350;
            v351 = v490;
            if (qword_2811F7578 != -1)
            {
              dispatch_once(&qword_2811F7578, v351);
            }

            if (byte_2811F745C != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v352 = MEMORY[0x277D3F178];
            v353 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent29 = [v353 lastPathComponent];
            v355 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v352 logMessage:v226 fromFile:lastPathComponent29 fromFunction:v355 fromLineNumber:221];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 6:
            [(PLBBMav13HwMsgParser *)self setRfDataC2K:v40];
            v49 += 256;
            v40 += 256;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v363 = *(v176 + 2896);
            v364 = objc_opt_class();
            v488[0] = MEMORY[0x277D85DD0];
            v488[1] = 3221225472;
            v489[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_545;
            v489[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v489[2] = v364;
            v365 = v488;
            if (qword_2811F7580 != -1)
            {
              dispatch_once(&qword_2811F7580, v365);
            }

            if (byte_2811F745D != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v366 = MEMORY[0x277D3F178];
            v367 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent30 = [v367 lastPathComponent];
            v369 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v366 logMessage:v226 fromFile:lastPathComponent30 fromFunction:v369 fromLineNumber:227];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 7:
            [(PLBBMav13HwMsgParser *)self setRfData1xEVDO:v40];
            v49 += 256;
            v40 += 256;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v328 = *(v176 + 2896);
            v329 = objc_opt_class();
            v486[0] = MEMORY[0x277D85DD0];
            v486[1] = 3221225472;
            v487[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_548;
            v487[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v487[2] = v329;
            v330 = v486;
            if (qword_2811F7588 != -1)
            {
              dispatch_once(&qword_2811F7588, v330);
            }

            if (byte_2811F745E != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v331 = MEMORY[0x277D3F178];
            v332 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent31 = [v332 lastPathComponent];
            v334 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v331 logMessage:v226 fromFile:lastPathComponent31 fromFunction:v334 fromLineNumber:233];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 8:
            [(PLBBMav13HwMsgParser *)self setRfDataGSM:v40];
            v49 += 256;
            v40 += 256;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v377 = *(v176 + 2896);
            v378 = objc_opt_class();
            v484[0] = MEMORY[0x277D85DD0];
            v484[1] = 3221225472;
            v485[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_551;
            v485[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v485[2] = v378;
            v379 = v484;
            if (qword_2811F7590 != -1)
            {
              dispatch_once(&qword_2811F7590, v379);
            }

            if (byte_2811F745F != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v380 = MEMORY[0x277D3F178];
            v381 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent32 = [v381 lastPathComponent];
            v383 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v380 logMessage:v226 fromFile:lastPathComponent32 fromFunction:v383 fromLineNumber:239];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 9:
            [(PLBBMav13HwMsgParser *)self setRfDataWCDMA:v40];
            v49 += 208;
            v40 += 208;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v300 = *(v176 + 2896);
            v301 = objc_opt_class();
            v482[0] = MEMORY[0x277D85DD0];
            v482[1] = 3221225472;
            v483[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_554;
            v483[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v483[2] = v301;
            v302 = v482;
            if (qword_2811F7598 != -1)
            {
              dispatch_once(&qword_2811F7598, v302);
            }

            if (byte_2811F7460 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 208];
            v303 = MEMORY[0x277D3F178];
            v304 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent33 = [v304 lastPathComponent];
            v306 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v303 logMessage:v226 fromFile:lastPathComponent33 fromFunction:v306 fromLineNumber:245];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 10:
            [(PLBBMav13HwMsgParser *)self setRfDataLTE:v40];
            v49 += 256;
            v40 += 256;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v370 = *(v176 + 2896);
            v371 = objc_opt_class();
            v480[0] = MEMORY[0x277D85DD0];
            v480[1] = 3221225472;
            v481[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_557;
            v481[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v481[2] = v371;
            v372 = v480;
            if (qword_2811F75A0 != -1)
            {
              dispatch_once(&qword_2811F75A0, v372);
            }

            if (byte_2811F7461 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v373 = MEMORY[0x277D3F178];
            v374 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent34 = [v374 lastPathComponent];
            v376 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v373 logMessage:v226 fromFile:lastPathComponent34 fromFunction:v376 fromLineNumber:251];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 11:
            [(PLBBMav13HwMsgParser *)self setRfDataTDS:v40];
            v49 += 256;
            v40 += 256;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v246 = *(v176 + 2896);
            v247 = objc_opt_class();
            v478[0] = MEMORY[0x277D85DD0];
            v478[1] = 3221225472;
            v479[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_560;
            v479[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v479[2] = v247;
            v248 = v478;
            if (qword_2811F75A8 != -1)
            {
              dispatch_once(&qword_2811F75A8, v248);
            }

            if (byte_2811F7462 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v249 = MEMORY[0x277D3F178];
            v250 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent35 = [v250 lastPathComponent];
            v252 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v249 logMessage:v226 fromFile:lastPathComponent35 fromFunction:v252 fromLineNumber:257];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 12:
            [(PLBBMav16BHwMsgParser *)self setRfEnhLTEMav16B:v40];
            if ([*(v5 + 384) debugEnabled])
            {
              v260 = *(v176 + 2896);
              v261 = objc_opt_class();
              v468[0] = MEMORY[0x277D85DD0];
              v468[1] = 3221225472;
              v469[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_575;
              v469[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v469[2] = v261;
              v262 = v468;
              if (qword_2811F75D0 != -1)
              {
                dispatch_once(&qword_2811F75D0, v262);
              }

              if (byte_2811F7467 == 1)
              {
                v263 = v49;
                v264 = v40;
                v265 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 492];
                v266 = MEMORY[0x277D3F178];
                v267 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
                lastPathComponent36 = [v267 lastPathComponent];
                v269 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
                [v266 logMessage:v265 fromFile:lastPathComponent36 fromFunction:v269 fromLineNumber:287];

                v270 = PLLogCommon();
                if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v526 = v265;
                  _os_log_debug_impl(&dword_21A4C6000, v270, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v40 = v264;
                v49 = v263;
                v176 = 0x278257000uLL;
                self = selfCopy;
              }
            }

            if ([*(v5 + 384) debugEnabled])
            {
              v271 = *(v176 + 2896);
              v272 = objc_opt_class();
              v466[0] = MEMORY[0x277D85DD0];
              v466[1] = 3221225472;
              v467[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_578;
              v467[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v467[2] = v272;
              v273 = v466;
              if (qword_2811F75D8 != -1)
              {
                dispatch_once(&qword_2811F75D8, v273);
              }

              if (byte_2811F7468 == 1)
              {
                v274 = v49;
                v275 = v40;
                v447 = [MEMORY[0x277CCACA8] stringWithFormat:@"received PCC bw/band in struct %d, %d. SCC1 bw/band in struct %d, %d", -[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[485], -[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[484], -[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[489], -[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[486], v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447];
                v277 = MEMORY[0x277D3F178];
                v278 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
                lastPathComponent37 = [v278 lastPathComponent];
                v280 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
                [v277 logMessage:v447 fromFile:lastPathComponent37 fromFunction:v280 fromLineNumber:290];

                v281 = PLLogCommon();
                if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v526 = v447;
                  _os_log_debug_impl(&dword_21A4C6000, v281, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v5 = 0x277D3F000uLL;
                v40 = v275;
                v49 = v274;
                v176 = 0x278257000uLL;
              }
            }

            if ([*(v5 + 384) debugEnabled])
            {
              v282 = *(v176 + 2896);
              v283 = objc_opt_class();
              v464[0] = MEMORY[0x277D85DD0];
              v464[1] = 3221225472;
              v465[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_584;
              v465[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v465[2] = v283;
              v284 = v464;
              if (qword_2811F75E0 != -1)
              {
                dispatch_once(&qword_2811F75E0, v284);
              }

              if (byte_2811F7469 == 1)
              {
                v285 = v49;
                v286 = v40;
                v287 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received ARD stats %u", -[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[368]];
                v288 = MEMORY[0x277D3F178];
                v289 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
                lastPathComponent38 = [v289 lastPathComponent];
                v291 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
                [v288 logMessage:v287 fromFile:lastPathComponent38 fromFunction:v291 fromLineNumber:291];

                v292 = PLLogCommon();
                if (os_log_type_enabled(v292, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v526 = v287;
                  _os_log_debug_impl(&dword_21A4C6000, v292, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v40 = v286;
                v49 = v285;
                v176 = 0x278257000uLL;
                self = selfCopy;
              }
            }

            v49 += 494;
            v40 += 494;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v293 = *(v176 + 2896);
            v294 = objc_opt_class();
            v462[0] = MEMORY[0x277D85DD0];
            v462[1] = 3221225472;
            v463[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_590;
            v463[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v463[2] = v294;
            v295 = v462;
            if (qword_2811F75E8 != -1)
            {
              dispatch_once(&qword_2811F75E8, v295);
            }

            if (byte_2811F746A != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Padding size for padding before LTE struct [%lu]", 2];
            v296 = MEMORY[0x277D3F178];
            v297 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent39 = [v297 lastPathComponent];
            v299 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v296 logMessage:v226 fromFile:lastPathComponent39 fromFunction:v299 fromLineNumber:292];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 13:
            [(PLBBMav16BHwMsgParser *)self setRfEnhWCDMAMav16B:v40];
            v49 += 176;
            v40 += 176;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v356 = *(v176 + 2896);
            v357 = objc_opt_class();
            v470[0] = MEMORY[0x277D85DD0];
            v470[1] = 3221225472;
            v471[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_572;
            v471[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v471[2] = v357;
            v358 = v470;
            if (qword_2811F75C8 != -1)
            {
              dispatch_once(&qword_2811F75C8, v358);
            }

            if (byte_2811F7466 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 176];
            v359 = MEMORY[0x277D3F178];
            v360 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent40 = [v360 lastPathComponent];
            v362 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v359 logMessage:v226 fromFile:lastPathComponent40 fromFunction:v362 fromLineNumber:281];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 14:
            [(PLBBMav13HwMsgParser *)self setRfEnhGSM:v40];
            v49 += 20;
            v40 += 20;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v239 = *(v176 + 2896);
            v240 = objc_opt_class();
            v472[0] = MEMORY[0x277D85DD0];
            v472[1] = 3221225472;
            v473[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_569;
            v473[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v473[2] = v240;
            v241 = v472;
            if (qword_2811F75C0 != -1)
            {
              dispatch_once(&qword_2811F75C0, v241);
            }

            if (byte_2811F7465 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 20];
            v242 = MEMORY[0x277D3F178];
            v243 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent41 = [v243 lastPathComponent];
            v245 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v242 logMessage:v226 fromFile:lastPathComponent41 fromFunction:v245 fromLineNumber:275];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 15:
            [(PLBBMav13HwMsgParser *)self setRfEnhTDS:v40];
            v49 += 48;
            v40 += 48;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v314 = *(v176 + 2896);
            v315 = objc_opt_class();
            v460[0] = MEMORY[0x277D85DD0];
            v460[1] = 3221225472;
            v461[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_596;
            v461[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v461[2] = v315;
            v316 = v460;
            if (qword_2811F75F0 != -1)
            {
              dispatch_once(&qword_2811F75F0, v316);
            }

            if (byte_2811F746B != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 48];
            v317 = MEMORY[0x277D3F178];
            v318 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent42 = [v318 lastPathComponent];
            v320 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v317 logMessage:v226 fromFile:lastPathComponent42 fromFunction:v320 fromLineNumber:298];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 16:
            [(PLBBMav13HwMsgParser *)self setRfEnhC2K:v40];
            v49 += 40;
            v40 += 40;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v232 = *(v176 + 2896);
            v233 = objc_opt_class();
            v476[0] = MEMORY[0x277D85DD0];
            v476[1] = 3221225472;
            v477[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_563;
            v477[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v477[2] = v233;
            v234 = v476;
            if (qword_2811F75B0 != -1)
            {
              dispatch_once(&qword_2811F75B0, v234);
            }

            if (byte_2811F7463 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 40];
            v235 = MEMORY[0x277D3F178];
            v236 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent43 = [v236 lastPathComponent];
            v238 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v235 logMessage:v226 fromFile:lastPathComponent43 fromFunction:v238 fromLineNumber:263];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 17:
            [(PLBBMav13HwMsgParser *)self setRfEnh1xEVDO:v40];
            v49 += 32;
            v40 += 32;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v342 = *(v176 + 2896);
            v343 = objc_opt_class();
            v474[0] = MEMORY[0x277D85DD0];
            v474[1] = 3221225472;
            v475[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_566;
            v475[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v475[2] = v343;
            v344 = v474;
            if (qword_2811F75B8 != -1)
            {
              dispatch_once(&qword_2811F75B8, v344);
            }

            if (byte_2811F7464 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 32];
            v345 = MEMORY[0x277D3F178];
            v346 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent44 = [v346 lastPathComponent];
            v348 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v345 logMessage:v226 fromFile:lastPathComponent44 fromFunction:v348 fromLineNumber:269];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 18:
            [(PLBBMav13HwMsgParser *)self setRfEnhOOS:v40];
            v49 += 156;
            v40 += 156;
            if ([*(v5 + 384) debugEnabled])
            {
              v384 = *(v176 + 2896);
              v385 = objc_opt_class();
              v458[0] = MEMORY[0x277D85DD0];
              v458[1] = 3221225472;
              v459[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_599;
              v459[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v459[2] = v385;
              v386 = v458;
              if (qword_2811F75F8 != -1)
              {
                dispatch_once(&qword_2811F75F8, v386);
              }

              if (byte_2811F746C == 1)
              {
                v387 = v40;
                v388 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 156];
                v389 = MEMORY[0x277D3F178];
                v390 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
                lastPathComponent45 = [v390 lastPathComponent];
                v392 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
                [v389 logMessage:v388 fromFile:lastPathComponent45 fromFunction:v392 fromLineNumber:304];

                v393 = PLLogCommon();
                if (os_log_type_enabled(v393, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v526 = v388;
                  _os_log_debug_impl(&dword_21A4C6000, v393, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v40 = v387;
                self = selfCopy;
              }
            }

            goto LABEL_324;
          default:
            [(PLBBMav13HwMsgParser *)self setProtoStateC2K:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v220 = *(v176 + 2896);
            v221 = objc_opt_class();
            v500[0] = MEMORY[0x277D85DD0];
            v500[1] = 3221225472;
            v501[0] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_524;
            v501[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v501[2] = v221;
            v222 = v500;
            if (qword_2811F7550 != -1)
            {
              dispatch_once(&qword_2811F7550, v222);
            }

            if (byte_2811F7457 != 1)
            {
              break;
            }

            v223 = v5;
            v224 = v49;
            v225 = v40;
            v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v227 = MEMORY[0x277D3F178];
            v228 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
            lastPathComponent46 = [v228 lastPathComponent];
            v230 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
            [v227 logMessage:v226 fromFile:lastPathComponent46 fromFunction:v230 fromLineNumber:191];

            v231 = PLLogCommon();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
            {
LABEL_313:
              *buf = 138412290;
              v526 = v226;
              _os_log_debug_impl(&dword_21A4C6000, v231, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_314:
            v40 = v225;
            v5 = v223;

            v49 = v224;
            v176 = 0x278257000;
            self = selfCopy;
            break;
        }
      }

      v203 = (v203 + 1);
    }

    while (v203 != 19);
LABEL_324:
    if ([*(v5 + 384) debugEnabled])
    {
      v394 = *(v176 + 2896);
      v395 = objc_opt_class();
      v457[0] = MEMORY[0x277D85DD0];
      v457[1] = 3221225472;
      v457[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_602;
      v457[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v457[4] = v395;
      v396 = v457;
      if (qword_2811F7600 != -1)
      {
        dispatch_once(&qword_2811F7600, v396);
      }

      if (byte_2811F746D == 1)
      {
        v397 = v40;
        v398 = [MEMORY[0x277CCACA8] stringWithFormat:@"End of Proto, Rf, Enh data at offset %llu", v49];
        v399 = MEMORY[0x277D3F178];
        v400 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent47 = [v400 lastPathComponent];
        v402 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v399 logMessage:v398 fromFile:lastPathComponent47 fromFunction:v402 fromLineNumber:310];

        v403 = PLLogCommon();
        if (os_log_type_enabled(v403, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v398;
          _os_log_debug_impl(&dword_21A4C6000, v403, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v397;
        self = selfCopy;
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration_mask:v40];
    v404 = [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask]];
    string2 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration:string2];

    [(PLBBMav13HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask] oftype:0 withData:v40 + 16];
    v406 = &v40[4 * v404 + 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration_mask:v406];
    v406 += 16;
    v407 = [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask]];
    string3 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration:string3];

    [(PLBBMav13HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask] oftype:1 withData:v406];
    v40 = (v406 + 4 * v407);
    if ([*(v5 + 384) debugEnabled])
    {
      v409 = objc_opt_class();
      v456[0] = MEMORY[0x277D85DD0];
      v456[1] = 3221225472;
      v456[2] = __35__PLBBMav16BHwMsgParser_parseData___block_invoke_608;
      v456[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v456[4] = v409;
      v410 = v456;
      if (qword_2811F7608 != -1)
      {
        dispatch_once(&qword_2811F7608, v410);
      }

      if (byte_2811F746E == 1)
      {
        v411 = [MEMORY[0x277CCACA8] stringWithFormat:@"End of level 6 at offset %llu", v49 + 4 * v404 + 4 * v407 + 32];
        v412 = MEMORY[0x277D3F178];
        v413 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent48 = [v413 lastPathComponent];
        v415 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser parseData:]"];
        [v412 logMessage:v411 fromFile:lastPathComponent48 fromFunction:v415 fromLineNumber:334];

        v416 = PLLogCommon();
        if (os_log_type_enabled(v416, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v526 = v411;
          _os_log_debug_impl(&dword_21A4C6000, v416, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 8)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_count_mask:v40];
    v417 = &v40[4 * [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_count_mask]]+ 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_count_mask:v417];
    v418 = v417 + 4 * [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_count_mask]];
    [(PLMav7BasebandHardwareMessage *)self setHsic:v418 + 16];
    v40 = (v418 + 48);
  }

  v419 = &v40[-[dataCopy bytes]];
  v420 = [dataCopy length];
  if (v419 > v420)
  {
    v421 = PLLogCommon();
    if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
    {
      v424 = &v40[-[dataCopy bytes]];
      v425 = [dataCopy length];
      *buf = 134218498;
      v526 = v424;
      v527 = 2048;
      v528 = v425;
      v529 = 2080;
      v530 = "[PLBBMav16BHwMsgParser parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v421, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }
  }

  v422 = *MEMORY[0x277D85DE8];
  return v419 <= v420;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_86 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7441 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_381(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7442 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_393(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7443 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_399(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7444 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_405(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7445 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_411(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7446 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_417(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7447 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_423(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7448 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_429(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7449 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_435(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F744A = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_441(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F744B = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_447(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F744C = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_453(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F744D = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_459(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F744E = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_465(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F744F = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_471(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7450 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_477(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7451 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7452 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7453 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_504(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7454 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_510(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7455 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_517(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7456 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_524(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7457 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_530(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7458 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7459 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_536(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F745A = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F745B = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_542(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F745C = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_545(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F745D = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_548(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F745E = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_551(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F745F = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_554(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7460 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_557(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7461 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7462 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_563(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7463 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_566(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7464 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_569(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7465 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_572(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7466 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7467 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_578(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7468 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_584(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7469 = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_590(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F746A = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_596(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F746B = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_599(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F746C = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_602(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F746D = result;
  return result;
}

uint64_t __35__PLBBMav16BHwMsgParser_parseData___block_invoke_608(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F746E = result;
  return result;
}

- (void)logWithLogger:(id)logger
{
  v213 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v210[0] = MEMORY[0x277D85DD0];
    v210[1] = 3221225472;
    v210[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke;
    v210[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v210[4] = v6;
    v7 = v210;
    if (qword_2811F7610 != -1)
    {
      dispatch_once(&qword_2811F7610, v7);
    }

    if (byte_2811F746F == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwMsgParser logWithLogger:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:363];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v212 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v209.receiver = self;
  v209.super_class = PLBBMav16BHwMsgParser;
  [(PLBasebandHardwareMessage *)&v209 logRawWithLogger:loggerCopy];
  v14 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v14 setAgent:agent];

  [(PLBBMavLogMsg *)v14 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v14 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]== 3)
  {
    v18 = 6;
    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self protocolActive] ofSize:6];
    [(PLBBMavLogMsg *)v14 setProtocolActivityHistogram:v19];

    [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logRPMWithLogger:v14];
    [(PLBBMav16BHwMsgParser *)self logMav16BAppsPerfWithLogger:v14];
    [(PLBBMav16BHwMsgParser *)self logMav16BMPSSWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logLPASSWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logPeripheralsWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logPcieWithLogger:v14];
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self mcpmSleepVetoMav16B] ofSize:14];
    [(PLBBMavLogMsg *)v14 setMcpmVetoNumHistogram:v20];

    string = objc_opt_new();
    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 1) != 0 && [(PLBBMav13HwMsgParser *)self protoStateC2K])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v207[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_634;
        v207[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v207[4] = v22;
        v23 = v207;
        if (qword_2811F7620 != -1)
        {
          dispatch_once(&qword_2811F7620, v23);
        }

        if (byte_2811F7471 == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateC2K is valid"];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent2 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:405];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v24;
            _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateC2K] forRAT:0];
      v18 = 0;
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 2) != 0 && [(PLBBMav13HwMsgParser *)self protoStateHDR])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v38 = objc_opt_class();
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_640;
        v206[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v206[4] = v38;
        v39 = v206;
        if (qword_2811F7628 != -1)
        {
          dispatch_once(&qword_2811F7628, v39);
        }

        if (byte_2811F7472 == 1)
        {
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateHDR is valid"];
          v41 = MEMORY[0x277D3F178];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent3 = [v42 lastPathComponent];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v41 logMessage:v40 fromFile:lastPathComponent3 fromFunction:v44 fromLineNumber:416];

          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v40;
            _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v30 = 1;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateHDR] forRAT:1];
      v18 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 4) != 0 && [(PLBBMav13HwMsgParser *)self protoStateGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v46 = objc_opt_class();
        v205[0] = MEMORY[0x277D85DD0];
        v205[1] = 3221225472;
        v205[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_646;
        v205[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v205[4] = v46;
        v47 = v205;
        if (qword_2811F7630 != -1)
        {
          dispatch_once(&qword_2811F7630, v47);
        }

        if (byte_2811F7473 == 1)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateGSM is valid"];
          v49 = MEMORY[0x277D3F178];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent4 = [v50 lastPathComponent];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v49 logMessage:v48 fromFile:lastPathComponent4 fromFunction:v52 fromLineNumber:427];

          v53 = PLLogCommon();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v48;
            _os_log_debug_impl(&dword_21A4C6000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v18 = 2;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateGSM] forRAT:2];
      v30 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 8) != 0 && [(PLBBMav13HwMsgParser *)self protoStateWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v54 = objc_opt_class();
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_652;
        v204[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v204[4] = v54;
        v55 = v204;
        if (qword_2811F7638 != -1)
        {
          dispatch_once(&qword_2811F7638, v55);
        }

        if (byte_2811F7474 == 1)
        {
          v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateWCDMA is valid"];
          v57 = MEMORY[0x277D3F178];
          v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent5 = [v58 lastPathComponent];
          v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v57 logMessage:v56 fromFile:lastPathComponent5 fromFunction:v60 fromLineNumber:438];

          v61 = PLLogCommon();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v56;
            _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v18 = 3;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateWCDMA] forRAT:3];
      v30 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x10) != 0 && [(PLBBMav13HwMsgParser *)self protoStateLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v62 = objc_opt_class();
        v203[0] = MEMORY[0x277D85DD0];
        v203[1] = 3221225472;
        v203[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_658;
        v203[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v203[4] = v62;
        v63 = v203;
        if (qword_2811F7640 != -1)
        {
          dispatch_once(&qword_2811F7640, v63);
        }

        if (byte_2811F7475 == 1)
        {
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateLTE is valid"];
          v65 = MEMORY[0x277D3F178];
          v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent6 = [v66 lastPathComponent];
          v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v65 logMessage:v64 fromFile:lastPathComponent6 fromFunction:v68 fromLineNumber:449];

          v69 = PLLogCommon();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v64;
            _os_log_debug_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v18 = 4;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateLTE] forRAT:4];
      v30 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x20) != 0 && [(PLBBMav13HwMsgParser *)self protoStateTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v70 = objc_opt_class();
        v202[0] = MEMORY[0x277D85DD0];
        v202[1] = 3221225472;
        v202[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_664;
        v202[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v202[4] = v70;
        v71 = v202;
        if (qword_2811F7648 != -1)
        {
          dispatch_once(&qword_2811F7648, v71);
        }

        if (byte_2811F7476 == 1)
        {
          v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateTDS is valid"];
          v73 = MEMORY[0x277D3F178];
          v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent7 = [v74 lastPathComponent];
          v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v73 logMessage:v72 fromFile:lastPathComponent7 fromFunction:v76 fromLineNumber:460];

          v77 = PLLogCommon();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v72;
            _os_log_debug_impl(&dword_21A4C6000, v77, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v18 = 5;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateTDS] forRAT:5];
      v30 = 1;
    }

    [(PLBBMavLogMsg *)v14 setProtocolStateHistDict:string];
    [(PLMav7BasebandHardwareMessage *)self logProtocolActiveWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logSleepVetoWithLogger:v14];
    if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
    {
      [(PLMav7BasebandHardwareMessage *)self logClockWithLogger:v14];
      [(PLMav7BasebandHardwareMessage *)self logHSICWithLogger:v14];
    }

    [(PLBBMavLogMsg *)v14 addToGroupPLBBMav16BHwOther];
    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 4) != 0 && [(PLBBMav13HwMsgParser *)self rfDataLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v78 = objc_opt_class();
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_670;
        v201[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v201[4] = v78;
        v79 = v201;
        if (qword_2811F7650 != -1)
        {
          dispatch_once(&qword_2811F7650, v79);
        }

        if (byte_2811F7477 == 1)
        {
          v184 = loggerCopy;
          v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataLTE is valid"];
          v81 = MEMORY[0x277D3F178];
          v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent8 = [v82 lastPathComponent];
          v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v81 logMessage:v80 fromFile:lastPathComponent8 fromFunction:v84 fromLineNumber:485];

          v85 = PLLogCommon();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v80;
            _os_log_debug_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v184;
          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataLTE] forRAT:4];
      v86 = 1;
    }

    else
    {
      v86 = 0;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 2) != 0 && [(PLBBMav13HwMsgParser *)self rfDataWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v87 = objc_opt_class();
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_676;
        v200[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v200[4] = v87;
        v88 = v200;
        if (qword_2811F7658 != -1)
        {
          dispatch_once(&qword_2811F7658, v88);
        }

        if (byte_2811F7478 == 1)
        {
          v185 = loggerCopy;
          v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataWCDMA is valid"];
          v90 = MEMORY[0x277D3F178];
          v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent9 = [v91 lastPathComponent];
          v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v90 logMessage:v89 fromFile:lastPathComponent9 fromFunction:v93 fromLineNumber:494];

          v94 = PLLogCommon();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v89;
            _os_log_debug_impl(&dword_21A4C6000, v94, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v185;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataWCDMA] forRAT:3];
      v86 = 1;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 1) != 0 && [(PLBBMav13HwMsgParser *)self rfDataGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v95 = objc_opt_class();
        v199[0] = MEMORY[0x277D85DD0];
        v199[1] = 3221225472;
        v199[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_682;
        v199[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v199[4] = v95;
        v96 = v199;
        if (qword_2811F7660 != -1)
        {
          dispatch_once(&qword_2811F7660, v96);
        }

        if (byte_2811F7479 == 1)
        {
          v186 = loggerCopy;
          v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataGSM is valid"];
          v98 = MEMORY[0x277D3F178];
          v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent10 = [v99 lastPathComponent];
          v101 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v98 logMessage:v97 fromFile:lastPathComponent10 fromFunction:v101 fromLineNumber:503];

          v102 = PLLogCommon();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v97;
            _os_log_debug_impl(&dword_21A4C6000, v102, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v186;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataGSM] forRAT:2];
      v86 = 1;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 8) != 0 && [(PLBBMav13HwMsgParser *)self rfDataTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v103 = objc_opt_class();
        v198[0] = MEMORY[0x277D85DD0];
        v198[1] = 3221225472;
        v198[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_688;
        v198[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v198[4] = v103;
        v104 = v198;
        if (qword_2811F7668 != -1)
        {
          dispatch_once(&qword_2811F7668, v104);
        }

        if (byte_2811F747A == 1)
        {
          v187 = loggerCopy;
          v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v106 = MEMORY[0x277D3F178];
          v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent11 = [v107 lastPathComponent];
          v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v106 logMessage:v105 fromFile:lastPathComponent11 fromFunction:v109 fromLineNumber:512];

          v110 = PLLogCommon();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v105;
            _os_log_debug_impl(&dword_21A4C6000, v110, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v187;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataTDS] forRAT:5];
      v86 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x40) != 0 && [(PLBBMav13HwMsgParser *)self rfDataC2K])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v111 = objc_opt_class();
        v197[0] = MEMORY[0x277D85DD0];
        v197[1] = 3221225472;
        v197[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_694;
        v197[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v197[4] = v111;
        v112 = v197;
        if (qword_2811F7670 != -1)
        {
          dispatch_once(&qword_2811F7670, v112);
        }

        if (byte_2811F747B == 1)
        {
          v188 = loggerCopy;
          v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v114 = MEMORY[0x277D3F178];
          v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent12 = [v115 lastPathComponent];
          v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v114 logMessage:v113 fromFile:lastPathComponent12 fromFunction:v117 fromLineNumber:521];

          v118 = PLLogCommon();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v113;
            _os_log_debug_impl(&dword_21A4C6000, v118, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v188;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataC2K] forRAT:0];
      v86 = 1;
    }

    if (*[(PLBBMav13HwMsgParser *)self optimMaskArray]< 0 && [(PLBBMav13HwMsgParser *)self rfData1xEVDO])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v119 = objc_opt_class();
        v196[0] = MEMORY[0x277D85DD0];
        v196[1] = 3221225472;
        v196[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_697;
        v196[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v196[4] = v119;
        v120 = v196;
        if (qword_2811F7678 != -1)
        {
          dispatch_once(&qword_2811F7678, v120);
        }

        if (byte_2811F747C == 1)
        {
          v121 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v122 = MEMORY[0x277D3F178];
          v123 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent13 = [v123 lastPathComponent];
          v125 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v122 logMessage:v121 fromFile:lastPathComponent13 fromFunction:v125 fromLineNumber:530];

          v126 = PLLogCommon();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v121;
            _os_log_debug_impl(&dword_21A4C6000, v126, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfData1xEVDO] forRAT:1];
    }

    else if (((v86 | v30 ^ 1) & 1) == 0)
    {
      [(PLBBMav13HwMsgParser *)self logProtocolOnlyWithLogger:v14 forRAT:v18];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x10) != 0 && [(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v127 = objc_opt_class();
        v195[0] = MEMORY[0x277D85DD0];
        v195[1] = 3221225472;
        v195[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_700;
        v195[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v195[4] = v127;
        v128 = v195;
        if (qword_2811F7680 != -1)
        {
          dispatch_once(&qword_2811F7680, v128);
        }

        if (byte_2811F747D == 1)
        {
          v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhLTE is valid"];
          v130 = MEMORY[0x277D3F178];
          v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent14 = [v131 lastPathComponent];
          v133 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v130 logMessage:v129 fromFile:lastPathComponent14 fromFunction:v133 fromLineNumber:545];

          v134 = PLLogCommon();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v129;
            _os_log_debug_impl(&dword_21A4C6000, v134, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav16BHwMsgParser *)self logMav16BHwRFEnhLTEWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x20) != 0 && [(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v135 = objc_opt_class();
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_706;
        v194[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v194[4] = v135;
        v136 = v194;
        if (qword_2811F7688 != -1)
        {
          dispatch_once(&qword_2811F7688, v136);
        }

        if (byte_2811F747E == 1)
        {
          v137 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhWCDMA is valid"];
          v138 = MEMORY[0x277D3F178];
          v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent15 = [v139 lastPathComponent];
          v141 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v138 logMessage:v137 fromFile:lastPathComponent15 fromFunction:v141 fromLineNumber:551];

          v142 = PLLogCommon();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v137;
            _os_log_debug_impl(&dword_21A4C6000, v142, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav16BHwMsgParser *)self logMav16HwRFEnhWCDMAWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x40) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v143 = objc_opt_class();
        v193[0] = MEMORY[0x277D85DD0];
        v193[1] = 3221225472;
        v193[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_712;
        v193[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v193[4] = v143;
        v144 = v193;
        if (qword_2811F7690 != -1)
        {
          dispatch_once(&qword_2811F7690, v144);
        }

        if (byte_2811F747F == 1)
        {
          v145 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhGSM is valid"];
          v146 = MEMORY[0x277D3F178];
          v147 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent16 = [v147 lastPathComponent];
          v149 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v146 logMessage:v145 fromFile:lastPathComponent16 fromFunction:v149 fromLineNumber:557];

          v150 = PLLogCommon();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v145;
            _os_log_debug_impl(&dword_21A4C6000, v150, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFGSMWithLogger:v14];
    }

    if ([(PLBBMav13HwMsgParser *)self optimMaskArray][1] < 0 && [(PLBBMav13HwMsgParser *)self rfEnhTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v151 = objc_opt_class();
        v192[0] = MEMORY[0x277D85DD0];
        v192[1] = 3221225472;
        v192[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_718;
        v192[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v192[4] = v151;
        v152 = v192;
        if (qword_2811F7698 != -1)
        {
          dispatch_once(&qword_2811F7698, v152);
        }

        if (byte_2811F7480 == 1)
        {
          v153 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhTDS is valid"];
          v154 = MEMORY[0x277D3F178];
          v155 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent17 = [v155 lastPathComponent];
          v157 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v154 logMessage:v153 fromFile:lastPathComponent17 fromFunction:v157 fromLineNumber:563];

          v158 = PLLogCommon();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v153;
            _os_log_debug_impl(&dword_21A4C6000, v158, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFTDSWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][2] & 1) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhC2K])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v159 = objc_opt_class();
        v191[0] = MEMORY[0x277D85DD0];
        v191[1] = 3221225472;
        v191[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_724;
        v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v191[4] = v159;
        v160 = v191;
        if (qword_2811F76A0 != -1)
        {
          dispatch_once(&qword_2811F76A0, v160);
        }

        if (byte_2811F7481 == 1)
        {
          v161 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnh1x is valid"];
          v162 = MEMORY[0x277D3F178];
          v163 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent18 = [v163 lastPathComponent];
          v165 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v162 logMessage:v161 fromFile:lastPathComponent18 fromFunction:v165 fromLineNumber:569];

          v166 = PLLogCommon();
          if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v161;
            _os_log_debug_impl(&dword_21A4C6000, v166, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRF1xWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][2] & 2) != 0 && [(PLBBMav13HwMsgParser *)self rfEnh1xEVDO])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v167 = objc_opt_class();
        v190[0] = MEMORY[0x277D85DD0];
        v190[1] = 3221225472;
        v190[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_730;
        v190[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v190[4] = v167;
        v168 = v190;
        if (qword_2811F76A8 != -1)
        {
          dispatch_once(&qword_2811F76A8, v168);
        }

        if (byte_2811F7482 == 1)
        {
          v169 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhHDR is valid"];
          v170 = MEMORY[0x277D3F178];
          v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent19 = [v171 lastPathComponent];
          v173 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v170 logMessage:v169 fromFile:lastPathComponent19 fromFunction:v173 fromLineNumber:575];

          v174 = PLLogCommon();
          if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v169;
            _os_log_debug_impl(&dword_21A4C6000, v174, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFHDRWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][2] & 4) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhOOS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v175 = objc_opt_class();
        v189[0] = MEMORY[0x277D85DD0];
        v189[1] = 3221225472;
        v189[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_736;
        v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v189[4] = v175;
        v176 = v189;
        if (qword_2811F76B0 != -1)
        {
          dispatch_once(&qword_2811F76B0, v176);
        }

        if (byte_2811F7483 == 1)
        {
          v177 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhOOS is valid"];
          v178 = MEMORY[0x277D3F178];
          v179 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
          lastPathComponent20 = [v179 lastPathComponent];
          v181 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
          [v178 logMessage:v177 fromFile:lastPathComponent20 fromFunction:v181 fromLineNumber:581];

          v182 = PLLogCommon();
          if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v177;
            _os_log_debug_impl(&dword_21A4C6000, v182, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFOOSWithLogger:v14];
    }

    [(PLBBMavLogMsg *)v14 logEventBackwardGrpEntriesBBMav16Hw];
  }

  else
  {
    string = [MEMORY[0x277CCAB68] string];
    [string appendFormat:@"Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 3];
    [(PLBBMavLogMsg *)v14 setError:string];
    [(PLBBMavLogMsg *)v14 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v14 logEventBackwardMavBBHwOther];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v31 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_627;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v31;
      if (qword_2811F7618 != -1)
      {
        dispatch_once(&qword_2811F7618, block);
      }

      if (byte_2811F7470 == 1)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"SW version mismatch. Received %d, expected %d cannot process, returning", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 3];
        v33 = MEMORY[0x277D3F178];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent21 = [v34 lastPathComponent];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logWithLogger:]"];
        [v33 logMessage:v32 fromFile:lastPathComponent21 fromFunction:v36 fromLineNumber:381];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v212 = v32;
          _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v183 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F746F = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_627(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7470 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_634(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7471 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7472 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7473 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_652(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7474 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_658(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7475 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_664(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7476 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7477 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_676(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7478 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7479 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F747A = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_694(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F747B = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F747C = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_700(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F747D = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F747E = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_712(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F747F = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_718(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7480 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_724(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7481 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_730(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7482 = result;
  return result;
}

uint64_t __39__PLBBMav16BHwMsgParser_logWithLogger___block_invoke_736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7483 = result;
  return result;
}

- (void)logMav16BAppsPerfWithLogger:(id)logger
{
  v56 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = 0x278257000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F76B8 != -1)
    {
      dispatch_once(&qword_2811F76B8, block);
    }

    if (byte_2811F7484 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwMsgParser logMav16BAppsPerfWithLogger:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BAppsPerfWithLogger:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:592];

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
  if ([(PLBBMav16BHwMsgParser *)self mav16BAppsPerf])
  {
    v14 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self mav16BAppsPerf] ofSize:8];
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
    v52[2] = __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_745;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v15;
    if (qword_2811F76C0 != -1)
    {
      dispatch_once(&qword_2811F76C0, v52);
    }

    if (byte_2811F7485 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BAppsPerfWithLogger:]"];
      [v16 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:604];

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
  if ([(PLBBMav13HwMsgParser *)self appsSleep])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser appsSleep](self, "appsSleep")[4]}];
    [v13 setCxoShutDownDuration:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav13HwMsgParser appsSleep](self, "appsSleep")}];
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
      v51[2] = __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_751;
      v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v51[4] = v24;
      if (qword_2811F76C8 != -1)
      {
        dispatch_once(&qword_2811F76C8, v51);
      }

      if (byte_2811F7486 == 1)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent3 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BAppsPerfWithLogger:]"];
        [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:615];

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

  if ([(PLBBMav16BHwMsgParser *)self mav16BAppsSleepVeto])
  {
    v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self mav16BAppsSleepVeto] ofSize:4];
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
      v50[2] = __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_760;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v33;
      if (qword_2811F76D0 != -1)
      {
        dispatch_once(&qword_2811F76D0, v50);
      }

      if (byte_2811F7487 == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent4 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BAppsPerfWithLogger:]"];
        [v35 logMessage:v34 fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:629];

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
    v49[2] = __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_769;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v41;
    if (qword_2811F76D8 != -1)
    {
      dispatch_once(&qword_2811F76D8, v49);
    }

    if (byte_2811F7488 == 1)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS"];
      v43 = MEMORY[0x277D3F178];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent5 = [v44 lastPathComponent];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BAppsPerfWithLogger:]"];
      [v43 logMessage:v42 fromFile:lastPathComponent5 fromFunction:v46 fromLineNumber:633];

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

uint64_t __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7484 = result;
  return result;
}

uint64_t __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7485 = result;
  return result;
}

uint64_t __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_751(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7486 = result;
  return result;
}

uint64_t __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7487 = result;
  return result;
}

uint64_t __53__PLBBMav16BHwMsgParser_logMav16BAppsPerfWithLogger___block_invoke_769(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7488 = result;
  return result;
}

- (void)logMav16BMPSSWithLogger:(id)logger
{
  v47 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = 0x278257000uLL;
  v6 = &unk_21AA21000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F76E0 != -1)
    {
      dispatch_once(&qword_2811F76E0, block);
    }

    if (byte_2811F7489 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwMsgParser logMav16BMPSSWithLogger:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BMPSSWithLogger:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:638];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v6 = &unk_21AA21000;
      v5 = 0x278257000uLL;
    }
  }

  v14 = loggerCopy;
  if ([(PLBBMav13HwMsgParser *)self mpssSleep])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser mpssSleep](self, "mpssSleep")[4]}];
    [v14 setMpssCxoShutDownDuration:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav13HwMsgParser mpssSleep](self, "mpssSleep")}];
    [v14 setMpssCxoShutDownCount:v16];
  }

  if ([(PLBBMav16BHwMsgParser *)self mav16BMpssSleepVeto])
  {
    v17 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self mav16BMpssSleepVeto] ofSize:21];
    [v14 setMpssSleepVeto:v17];
LABEL_12:

    goto LABEL_20;
  }

  [v14 appendToError:@"Sleep_Veto=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke_778;
    v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v43[4] = v18;
    if (qword_2811F76E8 != -1)
    {
      dispatch_once(&qword_2811F76E8, v43);
    }

    if (byte_2811F748A == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto=<unknown>"];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BMPSSWithLogger:]"];
      [v19 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:655];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v6 = &unk_21AA21000;
      v5 = 0x278257000;
      goto LABEL_12;
    }
  }

LABEL_20:
  if ([(PLBBMav16BHwMsgParser *)self mav16BQdspSpeed])
  {
    v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self mav16BQdspSpeed] ofSize:11];
    [v14 setQdspConfigCount:v24];
LABEL_22:

    goto LABEL_30;
  }

  [v14 appendToError:@"Q6SW_Perf=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = *(v5 + 2896);
    v26 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = v6[311];
    v42[2] = __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke_787;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v26;
    if (qword_2811F76F0 != -1)
    {
      dispatch_once(&qword_2811F76F0, v42);
    }

    if (byte_2811F748B == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Q6SW_Perf=<unknown>"];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent3 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BMPSSWithLogger:]"];
      [v27 logMessage:v24 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:668];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v24;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x278257000;
      goto LABEL_22;
    }
  }

LABEL_30:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = *(v5 + 2896);
    v33 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = v6[311];
    v41[2] = __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke_793;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v33;
    if (qword_2811F76F8 != -1)
    {
      dispatch_once(&qword_2811F76F8, v41);
    }

    if (byte_2811F748C == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent4 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BMPSSWithLogger:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:671];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7489 = result;
  return result;
}

uint64_t __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke_778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F748A = result;
  return result;
}

uint64_t __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke_787(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F748B = result;
  return result;
}

uint64_t __49__PLBBMav16BHwMsgParser_logMav16BMPSSWithLogger___block_invoke_793(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F748C = result;
  return result;
}

- (void)logMav16BHwRFEnhLTEWithLogger:(id)logger
{
  v90 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7700 != -1)
    {
      dispatch_once(&qword_2811F7700, block);
    }

    if (byte_2811F748D == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwMsgParser logMav16BHwRFEnhLTEWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BHwRFEnhLTEWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:676];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v89 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMav16BHwRfLTELogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBBMsgRoot *)v13 setAgent:agent];

    [(PLBBMav16BHwRfLTELogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMav16BHwRfLTELogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x10) == 0 || [(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B") - -[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[4])}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setLogDuration:v17];

      v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[8]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setDupMode:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[484]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setPCCFreq:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[485]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setPCCBw:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[486]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSCC1Freq:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[489]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSCC1Bw:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[487]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSCC2Freq:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[490]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSCC2Bw:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[488]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSCC3Freq:v25];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[491]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSCC3Bw:v26];

      v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 12 ofSize:17];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setDlTBSzCnt:v27];

      v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 80 ofSize:12];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setTxPwrCnt:v28];

      v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 128 ofSize:10];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setCaSCCCnt:v29];

      v30 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 168 ofSize:3];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setUlCaSCCCnt:v30];

      v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 180 ofSize:6];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setActRxTxCnt:v31];

      v32 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 204 ofSize:7];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSleepStateIdleCnt:v32];

      v33 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 232 ofSize:7];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSleepStateConnCnt:v33];

      v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 260 ofSize:6];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setRsrpIdleCnt:v34];

      v35 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 284 ofSize:6];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setRsrpConnCnt:v35];

      v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 308 ofSize:6];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSinrIdleCnt:v36];

      v37 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 332 ofSize:6];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setSinrConnCnt:v37];

      v38 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 356 ofSize:3];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setNlicStateCnt:v38];

      v39 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[368]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArdRxDOff:v39];

      v40 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[372]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArdRxDOff:v40];

      v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[376]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArdRxDOff:v41];

      v42 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[380]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArdRxDOff:v42];

      v43 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[468]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setUSleepPCCCnt:v43];

      v44 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[472]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setUSleepSCC1Cnt:v44];

      v45 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[476]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setUSleepSCC2Cnt:v45];

      v46 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[480]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setUSleepSCC3Cnt:v46];

      v47 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 384 ofSize:2];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setHsicPCC:v47];

      v48 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 392 ofSize:2];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setHsicSCC1:v48];

      v49 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 400 ofSize:2];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setHsicSCC2:v49];

      v50 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhLTEMav16B]+ 408 ofSize:2];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setHsicSCC2:v50];

      v51 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[416]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxOffPCC:v51];

      v52 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[428]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxOffSCC1:v52];

      v53 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[440]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxOffSCC2:v53];

      v54 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[452]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxOffSCC3:v54];

      v55 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[420]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxBaselinePCC:v55];

      v56 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[432]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxBaselineSCC1:v56];

      v57 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[444]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxBaselineSCC2:v57];

      v58 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[456]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxBaselineSCC3:v58];

      v59 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[424]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxQicePCC:v59];

      v60 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[436]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxQiceSCC1:v60];

      v61 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[448]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxQiceSCC2:v61];

      v62 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16BHwMsgParser rfEnhLTEMav16B](self, "rfEnhLTEMav16B")[460]}];
      [(PLBBMav16BHwRfLTELogMsg *)v13 setArxQiceSCC3:v62];

      logEventBackwardBBMav16BHwRfLTE = [(PLBBMav16BHwRfLTELogMsg *)v13 logEventBackwardBBMav16BHwRfLTE];
      v64 = [logEventBackwardBBMav16BHwRfLTE objectForKey:@"entry"];
      v65 = [logEventBackwardBBMav16BHwRfLTE objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v64 withEntryKey:v65];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_32;
      }

      v66 = objc_opt_class();
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke_821;
      v84[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v84[4] = v66;
      if (qword_2811F7718 != -1)
      {
        dispatch_once(&qword_2811F7718, v84);
      }

      if (byte_2811F7490 != 1)
      {
        goto LABEL_32;
      }

      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh Mav16 HW RF ENH LTE"];
      v68 = MEMORY[0x277D3F178];
      v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent2 = [v69 lastPathComponent];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BHwRFEnhLTEWithLogger:]"];
      [v68 logMessage:v67 fromFile:lastPathComponent2 fromFunction:v71 fromLineNumber:813];

      v72 = PLLogCommon();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v89 = v67;
        _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_31:
LABEL_32:

      goto LABEL_33;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v78 = objc_opt_class();
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke_809;
      v85[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v85[4] = v78;
      if (qword_2811F7710 != -1)
      {
        dispatch_once(&qword_2811F7710, v85);
      }

      if (byte_2811F748F == 1)
      {
        logEventBackwardBBMav16BHwRfLTE = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhLTE is not valid, return"];
        v79 = MEMORY[0x277D3F178];
        v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
        lastPathComponent3 = [v80 lastPathComponent];
        v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BHwRFEnhLTEWithLogger:]"];
        [v79 logMessage:logEventBackwardBBMav16BHwRfLTE fromFile:lastPathComponent3 fromFunction:v82 fromLineNumber:691];

        v67 = PLLogCommon();
        if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_31;
        }

        *buf = 138412290;
        v89 = logEventBackwardBBMav16BHwRfLTE;
        goto LABEL_30;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v73 = objc_opt_class();
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke_800;
    v86[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v86[4] = v73;
    if (qword_2811F7708 != -1)
    {
      dispatch_once(&qword_2811F7708, v86);
    }

    if (byte_2811F748E == 1)
    {
      logEventBackwardBBMav16BHwRfLTE = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfLTE failed"];
      v74 = MEMORY[0x277D3F178];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent4 = [v75 lastPathComponent];
      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16BHwRFEnhLTEWithLogger:]"];
      [v74 logMessage:logEventBackwardBBMav16BHwRfLTE fromFile:lastPathComponent4 fromFunction:v77 fromLineNumber:680];

      v67 = PLLogCommon();
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v89 = logEventBackwardBBMav16BHwRfLTE;
LABEL_30:
      _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_31;
    }
  }

LABEL_33:

  v83 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F748D = result;
  return result;
}

uint64_t __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke_800(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F748E = result;
  return result;
}

uint64_t __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke_809(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F748F = result;
  return result;
}

uint64_t __55__PLBBMav16BHwMsgParser_logMav16BHwRFEnhLTEWithLogger___block_invoke_821(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7490 = result;
  return result;
}

- (void)logMav16HwRFEnhWCDMAWithLogger:(id)logger
{
  v52 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLBBMav16BHwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7720 != -1)
    {
      dispatch_once(&qword_2811F7720, block);
    }

    if (byte_2811F7491 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:818];

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

    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B") - -[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B")[4])}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setLogDuration:v17];

    v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 8 ofSize:3];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setSCEqStatCnt:v18];

    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 20 ofSize:3];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDCEqStatCnt:v19];

    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 32 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setSCQsetEqStatCnt:v20];

    v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 48 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDCQsetEqStatCnt:v21];

    v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 64 ofSize:2];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDurInCarrierMode:v22];

    v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 72 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setRABModeCnt:v23];

    v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 88 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setRABTypeCnt:v24];

    v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16BHwMsgParser *)self rfEnhWCDMAMav16B]+ 104 ofSize:12];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setTxPwrBucket:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B")[152]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setFetCnt:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B")[156]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxOnCnt:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B")[160]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxTxOffCnt:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B")[164]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcTimeCnt:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16BHwMsgParser rfEnhWCDMAMav16B](self, "rfEnhWCDMAMav16B")[168]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcEnergy:v30];

    logEventBackwardBBMavHwRfWCDMA = [(PLBBMavHwRfWCDMALogMsg *)v13 logEventBackwardBBMavHwRfWCDMA];
    v32 = [logEventBackwardBBMavHwRfWCDMA objectForKey:@"entry"];
    v33 = [logEventBackwardBBMavHwRfWCDMA objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v32 withEntryKey:v33];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v34 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __56__PLBBMav16BHwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_834;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v34;
    if (qword_2811F7730 != -1)
    {
      dispatch_once(&qword_2811F7730, v47);
    }

    if (byte_2811F7493 != 1)
    {
      goto LABEL_23;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh Mav 16 BB HW RF WCDMA"];
    v36 = MEMORY[0x277D3F178];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
    lastPathComponent2 = [v37 lastPathComponent];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
    [v36 logMessage:v35 fromFile:lastPathComponent2 fromFunction:v39 fromLineNumber:879];

    v40 = PLLogCommon();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v51 = v35;
      _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v41 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __56__PLBBMav16BHwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_828;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v41;
    if (qword_2811F7728 != -1)
    {
      dispatch_once(&qword_2811F7728, v48);
    }

    if (byte_2811F7492 == 1)
    {
      logEventBackwardBBMavHwRfWCDMA = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfWCDMA failed"];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwMsgParser.m"];
      lastPathComponent3 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
      [v42 logMessage:logEventBackwardBBMavHwRfWCDMA fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:822];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = logEventBackwardBBMavHwRfWCDMA;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_24:

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLBBMav16BHwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7491 = result;
  return result;
}

uint64_t __56__PLBBMav16BHwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7492 = result;
  return result;
}

uint64_t __56__PLBBMav16BHwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_834(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7493 = result;
  return result;
}

@end