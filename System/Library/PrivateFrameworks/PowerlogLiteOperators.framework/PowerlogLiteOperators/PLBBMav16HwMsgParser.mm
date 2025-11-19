@interface PLBBMav16HwMsgParser
- (BOOL)parseData:(id)a3;
- (void)logMav16AppsPerfWithLogger:(id)a3;
- (void)logMav16HwRFEnhLTEWithLogger:(id)a3;
- (void)logMav16HwRFEnhWCDMAWithLogger:(id)a3;
- (void)logMav16MPSSWithLogger:(id)a3;
- (void)logWithLogger:(id)a3;
@end

@implementation PLBBMav16HwMsgParser

- (BOOL)parseData:(id)a3
{
  v534 = *MEMORY[0x277D85DE8];
  v453 = a3;
  v4 = [v453 bytes];
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v527[0] = MEMORY[0x277D85DD0];
    v527[1] = 3221225472;
    v527[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke;
    v527[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v527[4] = v6;
    v7 = v527;
    if (qword_2811F7188 != -1)
    {
      dispatch_once(&qword_2811F7188, v7);
    }

    if (_MergedGlobals_84 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received data of length %lu", objc_msgSend(v453, "length")];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:34];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v529 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  v14 = [MEMORY[0x277CCAB68] string];
  v450 = v14;
  if (*v4 == 129)
  {
    [v14 appendFormat:@"SeqInd[%x] ", 129];
    v4 += 2;
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v526[0] = MEMORY[0x277D85DD0];
    v526[1] = 3221225472;
    v526[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_375;
    v526[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v526[4] = v16;
    v17 = v526;
    if (qword_2811F7190 != -1)
    {
      dispatch_once(&qword_2811F7190, v17);
    }

    v5 = 0x277D3F000;
    if (byte_2811F7131 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log header starts at offset %llu", v15];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:47];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v529 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  if ([*(v5 + 384) debugEnabled])
  {
    v24 = objc_opt_class();
    v525[0] = MEMORY[0x277D85DD0];
    v525[1] = 3221225472;
    v525[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_381;
    v525[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v525[4] = v24;
    v25 = v525;
    if (qword_2811F7198 != -1)
    {
      dispatch_once(&qword_2811F7198, v25);
    }

    v5 = 0x277D3F000;
    if (byte_2811F7132 == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stats header starts at offset %llu", v15 | 0xD];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:51];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v529 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  [(PLMav4BasebandHardwareMessage *)self setHeader:v4 + 13];
  [v450 appendFormat:@"Sw Rev[%0x %0x] ", v4[13], v4[14]];
  [v450 appendFormat:@"Hw Rev[%0x %0x] ", v4[15], v4[16]];
  if ([*(v5 + 384) debugEnabled])
  {
    v32 = objc_opt_class();
    v524[0] = MEMORY[0x277D85DD0];
    v524[1] = 3221225472;
    v524[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_393;
    v524[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v524[4] = v32;
    v33 = v524;
    if (qword_2811F71A0 != -1)
    {
      dispatch_once(&qword_2811F71A0, v33);
    }

    v5 = 0x277D3F000;
    if (byte_2811F7133 == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Header Info: %@", v450];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
      [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:57];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v529 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  v40 = v4 + 33;
  if ([*(v5 + 384) debugEnabled])
  {
    v41 = objc_opt_class();
    v523[0] = MEMORY[0x277D85DD0];
    v523[1] = 3221225472;
    v523[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_399;
    v523[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v523[4] = v41;
    v42 = v523;
    if (qword_2811F71A8 != -1)
    {
      dispatch_once(&qword_2811F71A8, v42);
    }

    if (byte_2811F7134 == 1)
    {
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size after Seq and Statsheader %lu", objc_msgSend(v453, "length") - 22];
      v44 = MEMORY[0x277D3F178];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v46 = [v45 lastPathComponent];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
      [v44 logMessage:v43 fromFile:v46 fromFunction:v47 fromLineNumber:62];

      v48 = PLLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v529 = v43;
        _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
      v40 = v4 + 33;
    }
  }

  v49 = v15 | 0x21;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v50 = objc_opt_class();
      v522[0] = MEMORY[0x277D85DD0];
      v522[1] = 3221225472;
      v522[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_405;
      v522[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v522[4] = v50;
      v51 = v522;
      if (qword_2811F71B0 != -1)
      {
        dispatch_once(&qword_2811F71B0, v51);
      }

      if (byte_2811F7135 == 1)
      {
        v455 = v15;
        v52 = v40;
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 1: RPM starts at offset %llu", v49];
        v54 = MEMORY[0x277D3F178];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v56 = [v55 lastPathComponent];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v54 logMessage:v53 fromFile:v56 fromFunction:v57 fromLineNumber:69];

        v58 = PLLogCommon();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v53;
          _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v52;
        v15 = v455;
      }
    }

    [(PLBBMav13HwMsgParser *)self setRpmData:v40];
    v40 = v4 + 57;
    v49 = v15 | 0x39;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 2)
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v59 = objc_opt_class();
      v521[0] = MEMORY[0x277D85DD0];
      v521[1] = 3221225472;
      v521[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_411;
      v521[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v521[4] = v59;
      v60 = v521;
      if (qword_2811F71B8 != -1)
      {
        dispatch_once(&qword_2811F71B8, v60);
      }

      if (byte_2811F7136 == 1)
      {
        v61 = v40;
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 2: Apps Perf starts at offset %llu", v49];
        v63 = MEMORY[0x277D3F178];
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v65 = [v64 lastPathComponent];
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v63 logMessage:v62 fromFile:v65 fromFunction:v66 fromLineNumber:78];

        v67 = PLLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v62;
          _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v61;
      }
    }

    [(PLBBMav16HwMsgParser *)self setMav16AppsPerf:v40];
    if ([*(v5 + 384) debugEnabled])
    {
      v68 = objc_opt_class();
      v520[0] = MEMORY[0x277D85DD0];
      v520[1] = 3221225472;
      v520[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_417;
      v520[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v520[4] = v68;
      v69 = v520;
      if (qword_2811F71C0 != -1)
      {
        dispatch_once(&qword_2811F71C0, v69);
      }

      if (byte_2811F7137 == 1)
      {
        v70 = v40;
        v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 2: Apps Sleep starts at offset %llu", v49 + 28];
        v72 = MEMORY[0x277D3F178];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v74 = [v73 lastPathComponent];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v72 logMessage:v71 fromFile:v74 fromFunction:v75 fromLineNumber:83];

        v76 = PLLogCommon();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v71;
          _os_log_debug_impl(&dword_21A4C6000, v76, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v70;
      }
    }

    [(PLBBMav13HwMsgParser *)self setAppsSleep:v40 + 28];
    v40 += 40;
    v49 += 40;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    if ([*(v5 + 384) debugEnabled])
    {
      v77 = objc_opt_class();
      v519[0] = MEMORY[0x277D85DD0];
      v519[1] = 3221225472;
      v519[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_423;
      v519[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v519[4] = v77;
      v78 = v519;
      if (qword_2811F71C8 != -1)
      {
        dispatch_once(&qword_2811F71C8, v78);
      }

      if (byte_2811F7138 == 1)
      {
        v79 = v40;
        v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 3: PCIE stats starts at offset %llu", v49];
        v81 = MEMORY[0x277D3F178];
        v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v83 = [v82 lastPathComponent];
        v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v81 logMessage:v80 fromFile:v83 fromFunction:v84 fromLineNumber:92];

        v85 = PLLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v80;
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
      v518[0] = MEMORY[0x277D85DD0];
      v518[1] = 3221225472;
      v518[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_429;
      v518[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v518[4] = v86;
      v87 = v518;
      if (qword_2811F71D0 != -1)
      {
        dispatch_once(&qword_2811F71D0, v87);
      }

      if (byte_2811F7139 == 1)
      {
        v88 = v40;
        v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 4: LPASS stats starts at offset %llu", v49];
        v90 = MEMORY[0x277D3F178];
        v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v92 = [v91 lastPathComponent];
        v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v90 logMessage:v89 fromFile:v92 fromFunction:v93 fromLineNumber:101];

        v94 = PLLogCommon();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v89;
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
      v517[0] = MEMORY[0x277D85DD0];
      v517[1] = 3221225472;
      v517[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_435;
      v517[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v517[4] = v96;
      v97 = v517;
      if (qword_2811F71D8 != -1)
      {
        dispatch_once(&qword_2811F71D8, v97);
      }

      if (byte_2811F713A == 1)
      {
        v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: Apps Sleep veto stats starts at offset %llu", v49];
        v99 = MEMORY[0x277D3F178];
        v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v101 = [v100 lastPathComponent];
        v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v99 logMessage:v98 fromFile:v101 fromFunction:v102 fromLineNumber:110];

        v103 = PLLogCommon();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v98;
          _os_log_debug_impl(&dword_21A4C6000, v103, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav16HwMsgParser *)self setMav16AppsSleepVeto:v40];
    if ([*(v5 + 384) debugEnabled])
    {
      v104 = objc_opt_class();
      v516[0] = MEMORY[0x277D85DD0];
      v516[1] = 3221225472;
      v516[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_441;
      v516[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v516[4] = v104;
      v105 = v516;
      if (qword_2811F71E0 != -1)
      {
        dispatch_once(&qword_2811F71E0, v105);
      }

      if (byte_2811F713B == 1)
      {
        v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: MPSS Sleep veto stats starts at offset %llu", v49 + 16];
        v107 = MEMORY[0x277D3F178];
        v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v109 = [v108 lastPathComponent];
        v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v107 logMessage:v106 fromFile:v109 fromFunction:v110 fromLineNumber:115];

        v111 = PLLogCommon();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v106;
          _os_log_debug_impl(&dword_21A4C6000, v111, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav16HwMsgParser *)self setMav16MpssSleepVeto:v40 + 16];
    if ([*(v5 + 384) debugEnabled])
    {
      v112 = objc_opt_class();
      v515[0] = MEMORY[0x277D85DD0];
      v515[1] = 3221225472;
      v515[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_447;
      v515[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v515[4] = v112;
      v113 = v515;
      if (qword_2811F71E8 != -1)
      {
        dispatch_once(&qword_2811F71E8, v113);
      }

      if (byte_2811F713C == 1)
      {
        v114 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: QDSP Sleep veto stats starts at offset %llu", v49 + 100];
        v115 = MEMORY[0x277D3F178];
        v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v117 = [v116 lastPathComponent];
        v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v115 logMessage:v114 fromFile:v117 fromFunction:v118 fromLineNumber:120];

        v119 = PLLogCommon();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v114;
          _os_log_debug_impl(&dword_21A4C6000, v119, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav16HwMsgParser *)self setMav16QdspSpeed:v40 + 100];
    if ([*(v5 + 384) debugEnabled])
    {
      v120 = objc_opt_class();
      v514[0] = MEMORY[0x277D85DD0];
      v514[1] = 3221225472;
      v514[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_453;
      v514[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v514[4] = v120;
      v121 = v514;
      if (qword_2811F71F0 != -1)
      {
        dispatch_once(&qword_2811F71F0, v121);
      }

      if (byte_2811F713D == 1)
      {
        v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: MPSS Sleep stats starts at offset %llu", v49 + 164];
        v123 = MEMORY[0x277D3F178];
        v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v125 = [v124 lastPathComponent];
        v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v123 logMessage:v122 fromFile:v125 fromFunction:v126 fromLineNumber:125];

        v127 = PLLogCommon();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v122;
          _os_log_debug_impl(&dword_21A4C6000, v127, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setMpssSleep:v40 + 164];
    if ([*(v5 + 384) debugEnabled])
    {
      v128 = objc_opt_class();
      v513[0] = MEMORY[0x277D85DD0];
      v513[1] = 3221225472;
      v513[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_459;
      v513[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v513[4] = v128;
      v129 = v513;
      if (qword_2811F71F8 != -1)
      {
        dispatch_once(&qword_2811F71F8, v129);
      }

      if (byte_2811F713E == 1)
      {
        v130 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS stats starts at offset %llu", v49 + 176];
        v131 = MEMORY[0x277D3F178];
        v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v133 = [v132 lastPathComponent];
        v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v131 logMessage:v130 fromFile:v133 fromFunction:v134 fromLineNumber:130];

        v135 = PLLogCommon();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v130;
          _os_log_debug_impl(&dword_21A4C6000, v135, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsState:v40 + 176];
    if ([*(v5 + 384) debugEnabled])
    {
      v136 = objc_opt_class();
      v512[0] = MEMORY[0x277D85DD0];
      v512[1] = 3221225472;
      v512[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_465;
      v512[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v512[4] = v136;
      v137 = v512;
      if (qword_2811F7200 != -1)
      {
        dispatch_once(&qword_2811F7200, v137);
      }

      if (byte_2811F713F == 1)
      {
        v138 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS DPO stats starts at offset %llu", v49 + 184];
        v139 = MEMORY[0x277D3F178];
        v140 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v141 = [v140 lastPathComponent];
        v142 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v139 logMessage:v138 fromFile:v141 fromFunction:v142 fromLineNumber:135];

        v143 = PLLogCommon();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v138;
          _os_log_debug_impl(&dword_21A4C6000, v143, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsDpoState:v40 + 184];
    if ([*(v5 + 384) debugEnabled])
    {
      v144 = objc_opt_class();
      v511[0] = MEMORY[0x277D85DD0];
      v511[1] = 3221225472;
      v511[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_471;
      v511[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v511[4] = v144;
      v145 = v511;
      if (qword_2811F7208 != -1)
      {
        dispatch_once(&qword_2811F7208, v145);
      }

      if (byte_2811F7140 == 1)
      {
        v146 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS DPO bin stats starts at offset %llu", v49 + 192];
        v147 = MEMORY[0x277D3F178];
        v148 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v149 = [v148 lastPathComponent];
        v150 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v147 logMessage:v146 fromFile:v149 fromFunction:v150 fromLineNumber:140];

        v151 = PLLogCommon();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v146;
          _os_log_debug_impl(&dword_21A4C6000, v151, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v95;
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsDpoBins:v40 + 192];
    v40 += 216;
    v49 += 216;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    v456 = v40;
    if ([*(v5 + 384) debugEnabled])
    {
      v152 = objc_opt_class();
      v510[0] = MEMORY[0x277D85DD0];
      v510[1] = 3221225472;
      v510[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_477;
      v510[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v510[4] = v152;
      v153 = v510;
      if (qword_2811F7210 != -1)
      {
        dispatch_once(&qword_2811F7210, v153);
      }

      if (byte_2811F7141 == 1)
      {
        v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: MCPM Sleep veto starts at offset %llu", v49];
        v155 = MEMORY[0x277D3F178];
        v156 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v157 = [v156 lastPathComponent];
        v158 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v155 logMessage:v154 fromFile:v157 fromFunction:v158 fromLineNumber:149];

        v159 = PLLogCommon();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v154;
          _os_log_debug_impl(&dword_21A4C6000, v159, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v456;
      }
    }

    [(PLBBMav13HwMsgParser *)self setMcpmSleepVeto:v40];
    if ([*(v5 + 384) debugEnabled])
    {
      v160 = objc_opt_class();
      v509[0] = MEMORY[0x277D85DD0];
      v509[1] = 3221225472;
      v509[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_483;
      v509[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v509[4] = v160;
      v161 = v509;
      if (qword_2811F7218 != -1)
      {
        dispatch_once(&qword_2811F7218, v161);
      }

      if (byte_2811F7142 == 1)
      {
        v162 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Protocol Active starts at offset %llu", v49 + 52];
        v163 = MEMORY[0x277D3F178];
        v164 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v165 = [v164 lastPathComponent];
        v166 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v163 logMessage:v162 fromFile:v165 fromFunction:v166 fromLineNumber:154];

        v167 = PLLogCommon();
        if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v162;
          _os_log_debug_impl(&dword_21A4C6000, v167, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v456;
      }
    }

    [(PLBBMav13HwMsgParser *)self setProtocolActive:v40 + 52];
    if ([*(v5 + 384) debugEnabled])
    {
      v168 = objc_opt_class();
      v508[0] = MEMORY[0x277D85DD0];
      v508[1] = 3221225472;
      v508[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_489;
      v508[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v508[4] = v168;
      v169 = v508;
      if (qword_2811F7220 != -1)
      {
        dispatch_once(&qword_2811F7220, v169);
      }

      if (byte_2811F7143 == 1)
      {
        v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Optim mask starts at offset %llu", v49 + 76];
        v171 = MEMORY[0x277D3F178];
        v172 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v173 = [v172 lastPathComponent];
        v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v171 logMessage:v170 fromFile:v173 fromFunction:v174 fromLineNumber:159];

        v175 = PLLogCommon();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v170;
          _os_log_debug_impl(&dword_21A4C6000, v175, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v456;
      }
    }

    [(PLBBMav13HwMsgParser *)self setOptimMaskArray:v40 + 76];
    v176 = 0x278257000uLL;
    v177 = objc_opt_class();
    v507[0] = MEMORY[0x277D85DD0];
    v507[1] = 3221225472;
    v507[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_495;
    v507[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v507[4] = v177;
    v178 = v507;
    if (qword_2811F7228 != -1)
    {
      dispatch_once(&qword_2811F7228, v178);
    }

    if (byte_2811F7144 == 1)
    {
      v454 = v49;
      v179 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", *-[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")];
      v180 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[1]];
      v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[2]];
      v182 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[3]];
      v451 = v179;
      v183 = [MEMORY[0x277CCACA8] stringWithFormat:@"Optim Mask [%@ %@ %@ %@]", v179, v180, v181, v182];
      v184 = MEMORY[0x277D3F178];
      v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v186 = [v185 lastPathComponent];
      v187 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
      [v184 logMessage:v183 fromFile:v186 fromFunction:v187 fromLineNumber:167];

      v188 = PLLogCommon();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v529 = v183;
        _os_log_debug_impl(&dword_21A4C6000, v188, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
      v49 = v454;
      v40 = v456;
      v176 = 0x278257000uLL;
    }

    v49 += 80;
    if ([*(v5 + 384) debugEnabled])
    {
      v189 = objc_opt_class();
      v506[0] = MEMORY[0x277D85DD0];
      v506[1] = 3221225472;
      v506[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_504;
      v506[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v506[4] = v189;
      v190 = v506;
      if (qword_2811F7230 != -1)
      {
        dispatch_once(&qword_2811F7230, v190);
      }

      if (byte_2811F7145 == 1)
      {
        v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Protocol State starts at offset %llu", v49];
        v192 = MEMORY[0x277D3F178];
        v193 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v194 = [v193 lastPathComponent];
        v195 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v192 logMessage:v191 fromFile:v194 fromFunction:v195 fromLineNumber:171];

        v196 = PLLogCommon();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v191;
          _os_log_debug_impl(&dword_21A4C6000, v196, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v5 = 0x277D3F000uLL;
      }
    }

    v40 += 80;
    if ([*(v5 + 384) debugEnabled])
    {
      v197 = objc_opt_class();
      v505[0] = MEMORY[0x277D85DD0];
      v505[1] = 3221225472;
      v505[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_510;
      v505[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v505[4] = v197;
      v198 = v505;
      if (qword_2811F7238 != -1)
      {
        dispatch_once(&qword_2811F7238, v198);
      }

      if (byte_2811F7146 == 1)
      {
        v199 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Optim mask value [0x%x]", *-[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")];
        v200 = MEMORY[0x277D3F178];
        v201 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v202 = [v201 lastPathComponent];
        v203 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v200 logMessage:v199 fromFile:v202 fromFunction:v203 fromLineNumber:176];

        v204 = PLLogCommon();
        if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v199;
          _os_log_debug_impl(&dword_21A4C6000, v204, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v5 = 0x277D3F000uLL;
      }
    }

    v452 = +[PLBBMav13HwMsgParser optimMaskMappings];
    v205 = 0;
    v428 = v461;
    v448 = v471;
    v449 = v463;
    v446 = v467;
    v447 = v469;
    v444 = v473;
    v445 = v465;
    v442 = v477;
    v443 = v475;
    v440 = v481;
    v441 = v479;
    v439 = v483;
    v437 = v487;
    v438 = v485;
    v435 = v491;
    v436 = v489;
    v433 = v495;
    v434 = v493;
    v431 = v499;
    v432 = v497;
    v429 = v503;
    v430 = v501;
    v457 = self;
    do
    {
      if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]>> v205))
      {
        if ([*(v5 + 384) debugEnabled])
        {
          v206 = *(v176 + 2896);
          v207 = objc_opt_class();
          v504[0] = MEMORY[0x277D85DD0];
          v504[1] = 3221225472;
          v504[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_517;
          v504[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v504[4] = v207;
          v208 = v504;
          if (qword_2811F7240 != -1)
          {
            dispatch_once(&qword_2811F7240, v208);
          }

          if (byte_2811F7147 == 1)
          {
            v209 = MEMORY[0x277CCACA8];
            v210 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v205];
            v211 = [v452 objectForKeyedSubscript:v210];
            v212 = v49;
            v213 = v211;
            v214 = v40;
            v215 = v212;
            v216 = [v209 stringWithFormat:@"Payload %@ is present at offset %llu, pointer %ld", v211, v212, v40];

            v217 = MEMORY[0x277D3F178];
            v218 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v219 = [v218 lastPathComponent];
            v220 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v217 logMessage:v216 fromFile:v219 fromFunction:v220 fromLineNumber:182];

            v221 = PLLogCommon();
            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v529 = v216;
              _os_log_debug_impl(&dword_21A4C6000, v221, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v40 = v214;
            v49 = v215;
            v176 = 0x278257000uLL;
            self = v457;
          }
        }

        switch(v205)
        {
          case 1:
            [(PLBBMav13HwMsgParser *)self setProtoStateHDR:v40];
            v49 += 64;
            v40 += 64;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v337 = *(v176 + 2896);
            v338 = objc_opt_class();
            v500[0] = MEMORY[0x277D85DD0];
            v500[1] = 3221225472;
            v501[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_530;
            v501[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v501[2] = v338;
            v339 = v500;
            if (qword_2811F7250 != -1)
            {
              dispatch_once(&qword_2811F7250, v339);
            }

            if (byte_2811F7149 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v340 = MEMORY[0x277D3F178];
            v341 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v342 = [v341 lastPathComponent];
            v343 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v340 logMessage:v228 fromFile:v342 fromFunction:v343 fromLineNumber:195];

            v233 = PLLogCommon();
            if (!os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v309 = *(v176 + 2896);
            v310 = objc_opt_class();
            v498[0] = MEMORY[0x277D85DD0];
            v498[1] = 3221225472;
            v499[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_533;
            v499[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v499[2] = v310;
            v311 = v498;
            if (qword_2811F7258 != -1)
            {
              dispatch_once(&qword_2811F7258, v311);
            }

            if (byte_2811F714A != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v312 = MEMORY[0x277D3F178];
            v313 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v314 = [v313 lastPathComponent];
            v315 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v312 logMessage:v228 fromFile:v314 fromFunction:v315 fromLineNumber:201];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v323 = *(v176 + 2896);
            v324 = objc_opt_class();
            v496[0] = MEMORY[0x277D85DD0];
            v496[1] = 3221225472;
            v497[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_536;
            v497[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v497[2] = v324;
            v325 = v496;
            if (qword_2811F7260 != -1)
            {
              dispatch_once(&qword_2811F7260, v325);
            }

            if (byte_2811F714B != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v326 = MEMORY[0x277D3F178];
            v327 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v328 = [v327 lastPathComponent];
            v329 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v326 logMessage:v228 fromFile:v328 fromFunction:v329 fromLineNumber:207];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v255 = *(v176 + 2896);
            v256 = objc_opt_class();
            v494[0] = MEMORY[0x277D85DD0];
            v494[1] = 3221225472;
            v495[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_539;
            v495[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v495[2] = v256;
            v257 = v494;
            if (qword_2811F7268 != -1)
            {
              dispatch_once(&qword_2811F7268, v257);
            }

            if (byte_2811F714C != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v258 = MEMORY[0x277D3F178];
            v259 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v260 = [v259 lastPathComponent];
            v261 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v258 logMessage:v228 fromFile:v260 fromFunction:v261 fromLineNumber:213];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v351 = *(v176 + 2896);
            v352 = objc_opt_class();
            v492[0] = MEMORY[0x277D85DD0];
            v492[1] = 3221225472;
            v493[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_542;
            v493[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v493[2] = v352;
            v353 = v492;
            if (qword_2811F7270 != -1)
            {
              dispatch_once(&qword_2811F7270, v353);
            }

            if (byte_2811F714D != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v354 = MEMORY[0x277D3F178];
            v355 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v356 = [v355 lastPathComponent];
            v357 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v354 logMessage:v228 fromFile:v356 fromFunction:v357 fromLineNumber:219];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v365 = *(v176 + 2896);
            v366 = objc_opt_class();
            v490[0] = MEMORY[0x277D85DD0];
            v490[1] = 3221225472;
            v491[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_545;
            v491[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v491[2] = v366;
            v367 = v490;
            if (qword_2811F7278 != -1)
            {
              dispatch_once(&qword_2811F7278, v367);
            }

            if (byte_2811F714E != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v368 = MEMORY[0x277D3F178];
            v369 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v370 = [v369 lastPathComponent];
            v371 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v368 logMessage:v228 fromFile:v370 fromFunction:v371 fromLineNumber:225];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v330 = *(v176 + 2896);
            v331 = objc_opt_class();
            v488[0] = MEMORY[0x277D85DD0];
            v488[1] = 3221225472;
            v489[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_548;
            v489[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v489[2] = v331;
            v332 = v488;
            if (qword_2811F7280 != -1)
            {
              dispatch_once(&qword_2811F7280, v332);
            }

            if (byte_2811F714F != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v333 = MEMORY[0x277D3F178];
            v334 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v335 = [v334 lastPathComponent];
            v336 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v333 logMessage:v228 fromFile:v335 fromFunction:v336 fromLineNumber:231];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v379 = *(v176 + 2896);
            v380 = objc_opt_class();
            v486[0] = MEMORY[0x277D85DD0];
            v486[1] = 3221225472;
            v487[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_551;
            v487[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v487[2] = v380;
            v381 = v486;
            if (qword_2811F7288 != -1)
            {
              dispatch_once(&qword_2811F7288, v381);
            }

            if (byte_2811F7150 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v382 = MEMORY[0x277D3F178];
            v383 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v384 = [v383 lastPathComponent];
            v385 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v382 logMessage:v228 fromFile:v384 fromFunction:v385 fromLineNumber:237];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v302 = *(v176 + 2896);
            v303 = objc_opt_class();
            v484[0] = MEMORY[0x277D85DD0];
            v484[1] = 3221225472;
            v485[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_554;
            v485[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v485[2] = v303;
            v304 = v484;
            if (qword_2811F7290 != -1)
            {
              dispatch_once(&qword_2811F7290, v304);
            }

            if (byte_2811F7151 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 208];
            v305 = MEMORY[0x277D3F178];
            v306 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v307 = [v306 lastPathComponent];
            v308 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v305 logMessage:v228 fromFile:v307 fromFunction:v308 fromLineNumber:243];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v372 = *(v176 + 2896);
            v373 = objc_opt_class();
            v482[0] = MEMORY[0x277D85DD0];
            v482[1] = 3221225472;
            v483[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_557;
            v483[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v483[2] = v373;
            v374 = v482;
            if (qword_2811F7298 != -1)
            {
              dispatch_once(&qword_2811F7298, v374);
            }

            if (byte_2811F7152 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v375 = MEMORY[0x277D3F178];
            v376 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v377 = [v376 lastPathComponent];
            v378 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v375 logMessage:v228 fromFile:v377 fromFunction:v378 fromLineNumber:249];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v248 = *(v176 + 2896);
            v249 = objc_opt_class();
            v480[0] = MEMORY[0x277D85DD0];
            v480[1] = 3221225472;
            v481[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_560;
            v481[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v481[2] = v249;
            v250 = v480;
            if (qword_2811F72A0 != -1)
            {
              dispatch_once(&qword_2811F72A0, v250);
            }

            if (byte_2811F7153 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v251 = MEMORY[0x277D3F178];
            v252 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v253 = [v252 lastPathComponent];
            v254 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v251 logMessage:v228 fromFile:v253 fromFunction:v254 fromLineNumber:255];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 12:
            [(PLBBMav16HwMsgParser *)self setRfEnhLTEMav16:v40];
            if ([*(v5 + 384) debugEnabled])
            {
              v262 = *(v176 + 2896);
              v263 = objc_opt_class();
              v470[0] = MEMORY[0x277D85DD0];
              v470[1] = 3221225472;
              v471[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_575;
              v471[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v471[2] = v263;
              v264 = v470;
              if (qword_2811F72C8 != -1)
              {
                dispatch_once(&qword_2811F72C8, v264);
              }

              if (byte_2811F7158 == 1)
              {
                v265 = v49;
                v266 = v40;
                v267 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 574];
                v268 = MEMORY[0x277D3F178];
                v269 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
                v270 = [v269 lastPathComponent];
                v271 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
                [v268 logMessage:v267 fromFile:v270 fromFunction:v271 fromLineNumber:285];

                v272 = PLLogCommon();
                if (os_log_type_enabled(v272, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v529 = v267;
                  _os_log_debug_impl(&dword_21A4C6000, v272, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v40 = v266;
                v49 = v265;
                v176 = 0x278257000uLL;
                self = v457;
              }
            }

            if ([*(v5 + 384) debugEnabled])
            {
              v273 = *(v176 + 2896);
              v274 = objc_opt_class();
              v468[0] = MEMORY[0x277D85DD0];
              v468[1] = 3221225472;
              v469[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_578;
              v469[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v469[2] = v274;
              v275 = v468;
              if (qword_2811F72D0 != -1)
              {
                dispatch_once(&qword_2811F72D0, v275);
              }

              if (byte_2811F7159 == 1)
              {
                v276 = v49;
                v277 = v40;
                v278 = [MEMORY[0x277CCACA8] stringWithFormat:@"received PCC bw/band in struct %d, %d. SCC1 bw/band in struct %d, %d", -[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[569], -[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[568], -[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[572], -[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[570], v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449];
                v279 = MEMORY[0x277D3F178];
                v280 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
                v281 = [v280 lastPathComponent];
                v282 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
                [v279 logMessage:v278 fromFile:v281 fromFunction:v282 fromLineNumber:288];

                v283 = PLLogCommon();
                if (os_log_type_enabled(v283, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v529 = v278;
                  _os_log_debug_impl(&dword_21A4C6000, v283, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v5 = 0x277D3F000uLL;
                v40 = v277;
                v49 = v276;
                v176 = 0x278257000uLL;
              }
            }

            if ([*(v5 + 384) debugEnabled])
            {
              v284 = *(v176 + 2896);
              v285 = objc_opt_class();
              v466[0] = MEMORY[0x277D85DD0];
              v466[1] = 3221225472;
              v467[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_584;
              v467[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v467[2] = v285;
              v286 = v466;
              if (qword_2811F72D8 != -1)
              {
                dispatch_once(&qword_2811F72D8, v286);
              }

              if (byte_2811F715A == 1)
              {
                v287 = v49;
                v288 = v40;
                v289 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received ARD stats %u", -[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[352]];
                v290 = MEMORY[0x277D3F178];
                v291 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
                v292 = [v291 lastPathComponent];
                v293 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
                [v290 logMessage:v289 fromFile:v292 fromFunction:v293 fromLineNumber:289];

                v294 = PLLogCommon();
                if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v529 = v289;
                  _os_log_debug_impl(&dword_21A4C6000, v294, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v40 = v288;
                v49 = v287;
                v176 = 0x278257000uLL;
                self = v457;
              }
            }

            v49 += 576;
            v40 += 576;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v295 = *(v176 + 2896);
            v296 = objc_opt_class();
            v464[0] = MEMORY[0x277D85DD0];
            v464[1] = 3221225472;
            v465[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_590;
            v465[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v465[2] = v296;
            v297 = v464;
            if (qword_2811F72E0 != -1)
            {
              dispatch_once(&qword_2811F72E0, v297);
            }

            if (byte_2811F715B != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Padding size for padding before LTE struct [%lu]", 2];
            v298 = MEMORY[0x277D3F178];
            v299 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v300 = [v299 lastPathComponent];
            v301 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v298 logMessage:v228 fromFile:v300 fromFunction:v301 fromLineNumber:290];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_313;
            }

            goto LABEL_314;
          case 13:
            [(PLBBMav16HwMsgParser *)self setRfEnhWCDMAMav16:v40];
            v49 += 192;
            v40 += 192;
            if (![*(v5 + 384) debugEnabled])
            {
              break;
            }

            v358 = *(v176 + 2896);
            v359 = objc_opt_class();
            v472[0] = MEMORY[0x277D85DD0];
            v472[1] = 3221225472;
            v473[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_572;
            v473[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v473[2] = v359;
            v360 = v472;
            if (qword_2811F72C0 != -1)
            {
              dispatch_once(&qword_2811F72C0, v360);
            }

            if (byte_2811F7157 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 192];
            v361 = MEMORY[0x277D3F178];
            v362 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v363 = [v362 lastPathComponent];
            v364 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v361 logMessage:v228 fromFile:v363 fromFunction:v364 fromLineNumber:279];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v241 = *(v176 + 2896);
            v242 = objc_opt_class();
            v474[0] = MEMORY[0x277D85DD0];
            v474[1] = 3221225472;
            v475[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_569;
            v475[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v475[2] = v242;
            v243 = v474;
            if (qword_2811F72B8 != -1)
            {
              dispatch_once(&qword_2811F72B8, v243);
            }

            if (byte_2811F7156 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 20];
            v244 = MEMORY[0x277D3F178];
            v245 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v246 = [v245 lastPathComponent];
            v247 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v244 logMessage:v228 fromFile:v246 fromFunction:v247 fromLineNumber:273];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v316 = *(v176 + 2896);
            v317 = objc_opt_class();
            v462[0] = MEMORY[0x277D85DD0];
            v462[1] = 3221225472;
            v463[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_596;
            v463[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v463[2] = v317;
            v318 = v462;
            if (qword_2811F72E8 != -1)
            {
              dispatch_once(&qword_2811F72E8, v318);
            }

            if (byte_2811F715C != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 48];
            v319 = MEMORY[0x277D3F178];
            v320 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v321 = [v320 lastPathComponent];
            v322 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v319 logMessage:v228 fromFile:v321 fromFunction:v322 fromLineNumber:296];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v234 = *(v176 + 2896);
            v235 = objc_opt_class();
            v478[0] = MEMORY[0x277D85DD0];
            v478[1] = 3221225472;
            v479[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_563;
            v479[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v479[2] = v235;
            v236 = v478;
            if (qword_2811F72A8 != -1)
            {
              dispatch_once(&qword_2811F72A8, v236);
            }

            if (byte_2811F7154 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 40];
            v237 = MEMORY[0x277D3F178];
            v238 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v239 = [v238 lastPathComponent];
            v240 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v237 logMessage:v228 fromFile:v239 fromFunction:v240 fromLineNumber:261];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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

            v344 = *(v176 + 2896);
            v345 = objc_opt_class();
            v476[0] = MEMORY[0x277D85DD0];
            v476[1] = 3221225472;
            v477[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_566;
            v477[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v477[2] = v345;
            v346 = v476;
            if (qword_2811F72B0 != -1)
            {
              dispatch_once(&qword_2811F72B0, v346);
            }

            if (byte_2811F7155 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 32];
            v347 = MEMORY[0x277D3F178];
            v348 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v349 = [v348 lastPathComponent];
            v350 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v347 logMessage:v228 fromFile:v349 fromFunction:v350 fromLineNumber:267];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
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
              v386 = *(v176 + 2896);
              v387 = objc_opt_class();
              v460[0] = MEMORY[0x277D85DD0];
              v460[1] = 3221225472;
              v461[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_599;
              v461[1] = &__block_descriptor_40_e5_v8__0lu32l8;
              v461[2] = v387;
              v388 = v460;
              if (qword_2811F72F0 != -1)
              {
                dispatch_once(&qword_2811F72F0, v388);
              }

              if (byte_2811F715D == 1)
              {
                v389 = v40;
                v390 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 156];
                v391 = MEMORY[0x277D3F178];
                v392 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
                v393 = [v392 lastPathComponent];
                v394 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
                [v391 logMessage:v390 fromFile:v393 fromFunction:v394 fromLineNumber:302];

                v395 = PLLogCommon();
                if (os_log_type_enabled(v395, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v529 = v390;
                  _os_log_debug_impl(&dword_21A4C6000, v395, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v40 = v389;
                self = v457;
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

            v222 = *(v176 + 2896);
            v223 = objc_opt_class();
            v502[0] = MEMORY[0x277D85DD0];
            v502[1] = 3221225472;
            v503[0] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_524;
            v503[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v503[2] = v223;
            v224 = v502;
            if (qword_2811F7248 != -1)
            {
              dispatch_once(&qword_2811F7248, v224);
            }

            if (byte_2811F7148 != 1)
            {
              break;
            }

            v225 = v5;
            v226 = v49;
            v227 = v40;
            v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v229 = MEMORY[0x277D3F178];
            v230 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
            v231 = [v230 lastPathComponent];
            v232 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
            [v229 logMessage:v228 fromFile:v231 fromFunction:v232 fromLineNumber:189];

            v233 = PLLogCommon();
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
            {
LABEL_313:
              *buf = 138412290;
              v529 = v228;
              _os_log_debug_impl(&dword_21A4C6000, v233, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_314:
            v40 = v227;
            v5 = v225;

            v49 = v226;
            v176 = 0x278257000;
            self = v457;
            break;
        }
      }

      v205 = (v205 + 1);
    }

    while (v205 != 19);
LABEL_324:
    if ([*(v5 + 384) debugEnabled])
    {
      v396 = *(v176 + 2896);
      v397 = objc_opt_class();
      v459[0] = MEMORY[0x277D85DD0];
      v459[1] = 3221225472;
      v459[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_602;
      v459[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v459[4] = v397;
      v398 = v459;
      if (qword_2811F72F8 != -1)
      {
        dispatch_once(&qword_2811F72F8, v398);
      }

      if (byte_2811F715E == 1)
      {
        v399 = v40;
        v400 = [MEMORY[0x277CCACA8] stringWithFormat:@"End of Proto, Rf, Enh data at offset %llu", v49];
        v401 = MEMORY[0x277D3F178];
        v402 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v403 = [v402 lastPathComponent];
        v404 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v401 logMessage:v400 fromFile:v403 fromFunction:v404 fromLineNumber:308];

        v405 = PLLogCommon();
        if (os_log_type_enabled(v405, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v400;
          _os_log_debug_impl(&dword_21A4C6000, v405, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v40 = v399;
        self = v457;
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration_mask:v40];
    v406 = [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask]];
    v407 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration:v407];

    [(PLBBMav13HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask] oftype:0 withData:v40 + 16];
    v408 = &v40[4 * v406 + 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration_mask:v408];
    v408 += 16;
    v409 = [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask]];
    v410 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration:v410];

    [(PLBBMav13HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask] oftype:1 withData:v408];
    v40 = (v408 + 4 * v409);
    if ([*(v5 + 384) debugEnabled])
    {
      v411 = objc_opt_class();
      v458[0] = MEMORY[0x277D85DD0];
      v458[1] = 3221225472;
      v458[2] = __34__PLBBMav16HwMsgParser_parseData___block_invoke_608;
      v458[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v458[4] = v411;
      v412 = v458;
      if (qword_2811F7300 != -1)
      {
        dispatch_once(&qword_2811F7300, v412);
      }

      if (byte_2811F715F == 1)
      {
        v413 = [MEMORY[0x277CCACA8] stringWithFormat:@"End of level 6 at offset %llu", v49 + 4 * v406 + 4 * v409 + 32];
        v414 = MEMORY[0x277D3F178];
        v415 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v416 = [v415 lastPathComponent];
        v417 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser parseData:]"];
        [v414 logMessage:v413 fromFile:v416 fromFunction:v417 fromLineNumber:332];

        v418 = PLLogCommon();
        if (os_log_type_enabled(v418, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v529 = v413;
          _os_log_debug_impl(&dword_21A4C6000, v418, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 8)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_count_mask:v40];
    v419 = &v40[4 * [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_count_mask]]+ 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_count_mask:v419];
    v420 = v419 + 4 * [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_count_mask]];
    [(PLMav7BasebandHardwareMessage *)self setHsic:v420 + 16];
    v40 = (v420 + 48);
  }

  v421 = &v40[-[v453 bytes]];
  v422 = [v453 length];
  if (v421 > v422)
  {
    v423 = PLLogCommon();
    if (os_log_type_enabled(v423, OS_LOG_TYPE_ERROR))
    {
      v426 = &v40[-[v453 bytes]];
      v427 = [v453 length];
      *buf = 134218498;
      v529 = v426;
      v530 = 2048;
      v531 = v427;
      v532 = 2080;
      v533 = "[PLBBMav16HwMsgParser parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v423, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }
  }

  v424 = *MEMORY[0x277D85DE8];
  return v421 <= v422;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_84 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7131 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_381(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7132 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_393(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7133 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_399(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7134 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_405(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7135 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_411(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7136 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_417(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7137 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_423(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7138 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_429(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7139 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_435(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F713A = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_441(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F713B = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_447(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F713C = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_453(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F713D = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_459(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F713E = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_465(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F713F = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_471(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7140 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_477(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7141 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7142 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7143 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_495(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7144 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_504(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7145 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_510(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7146 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_517(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7147 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_524(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7148 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_530(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7149 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F714A = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_536(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F714B = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F714C = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_542(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F714D = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_545(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F714E = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_548(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F714F = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_551(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7150 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_554(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7151 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_557(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7152 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7153 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_563(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7154 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_566(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7155 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_569(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7156 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_572(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7157 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7158 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_578(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7159 = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_584(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F715A = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_590(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F715B = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_596(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F715C = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_599(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F715D = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_602(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F715E = result;
  return result;
}

uint64_t __34__PLBBMav16HwMsgParser_parseData___block_invoke_608(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F715F = result;
  return result;
}

- (void)logWithLogger:(id)a3
{
  v211 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v208[0] = MEMORY[0x277D85DD0];
    v208[1] = 3221225472;
    v208[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke;
    v208[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v208[4] = v6;
    v7 = v208;
    if (qword_2811F7308 != -1)
    {
      dispatch_once(&qword_2811F7308, v7);
    }

    if (byte_2811F7160 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwMsgParser logWithLogger:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:362];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v210 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v207.receiver = self;
  v207.super_class = PLBBMav16HwMsgParser;
  [(PLBasebandHardwareMessage *)&v207 logRawWithLogger:v4];
  v14 = objc_alloc_init(PLBBMavLogMsg);
  v15 = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v14 setAgent:v15];

  [(PLBBMavLogMsg *)v14 setError:&stru_282B650A0];
  v16 = [(PLBasebandMessage *)self seqNum];
  v17 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v14 setHeaderWithSeqNum:v16 andDate:v17 andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]== 3)
  {
    [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logRPMWithLogger:v14];
    [(PLBBMav16HwMsgParser *)self logMav16AppsPerfWithLogger:v14];
    [(PLBBMav16HwMsgParser *)self logMav16MPSSWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logLPASSWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logPeripheralsWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logPcieWithLogger:v14];
    v18 = objc_opt_new();
    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 1) != 0 && [(PLBBMav13HwMsgParser *)self protoStateC2K])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v205[0] = MEMORY[0x277D85DD0];
        v205[1] = 3221225472;
        v205[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_634;
        v205[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v205[4] = v19;
        v20 = v205;
        if (qword_2811F7318 != -1)
        {
          dispatch_once(&qword_2811F7318, v20);
        }

        if (byte_2811F7162 == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateC2K is valid"];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:400];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:v18 state:[(PLBBMav13HwMsgParser *)self protoStateC2K] forRAT:0];
      v27 = 0;
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v27 = 6;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 2) != 0 && [(PLBBMav13HwMsgParser *)self protoStateHDR])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v36 = objc_opt_class();
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_640;
        v204[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v204[4] = v36;
        v37 = v204;
        if (qword_2811F7320 != -1)
        {
          dispatch_once(&qword_2811F7320, v37);
        }

        if (byte_2811F7163 == 1)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateHDR is valid"];
          v39 = MEMORY[0x277D3F178];
          v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v41 = [v40 lastPathComponent];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:411];

          v43 = PLLogCommon();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v38;
            _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v28 = 1;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:v18 state:[(PLBBMav13HwMsgParser *)self protoStateHDR] forRAT:1];
      v27 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 4) != 0 && [(PLBBMav13HwMsgParser *)self protoStateGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v44 = objc_opt_class();
        v203[0] = MEMORY[0x277D85DD0];
        v203[1] = 3221225472;
        v203[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_646;
        v203[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v203[4] = v44;
        v45 = v203;
        if (qword_2811F7328 != -1)
        {
          dispatch_once(&qword_2811F7328, v45);
        }

        if (byte_2811F7164 == 1)
        {
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateGSM is valid"];
          v47 = MEMORY[0x277D3F178];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v49 = [v48 lastPathComponent];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:422];

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v46;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 2;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:v18 state:[(PLBBMav13HwMsgParser *)self protoStateGSM] forRAT:2];
      v28 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 8) != 0 && [(PLBBMav13HwMsgParser *)self protoStateWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v52 = objc_opt_class();
        v202[0] = MEMORY[0x277D85DD0];
        v202[1] = 3221225472;
        v202[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_652;
        v202[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v202[4] = v52;
        v53 = v202;
        if (qword_2811F7330 != -1)
        {
          dispatch_once(&qword_2811F7330, v53);
        }

        if (byte_2811F7165 == 1)
        {
          v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateWCDMA is valid"];
          v55 = MEMORY[0x277D3F178];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v57 = [v56 lastPathComponent];
          v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v55 logMessage:v54 fromFile:v57 fromFunction:v58 fromLineNumber:433];

          v59 = PLLogCommon();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v54;
            _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 3;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:v18 state:[(PLBBMav13HwMsgParser *)self protoStateWCDMA] forRAT:3];
      v28 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x10) != 0 && [(PLBBMav13HwMsgParser *)self protoStateLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v60 = objc_opt_class();
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_658;
        v201[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v201[4] = v60;
        v61 = v201;
        if (qword_2811F7338 != -1)
        {
          dispatch_once(&qword_2811F7338, v61);
        }

        if (byte_2811F7166 == 1)
        {
          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateLTE is valid"];
          v63 = MEMORY[0x277D3F178];
          v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v65 = [v64 lastPathComponent];
          v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v63 logMessage:v62 fromFile:v65 fromFunction:v66 fromLineNumber:444];

          v67 = PLLogCommon();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v62;
            _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 4;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:v18 state:[(PLBBMav13HwMsgParser *)self protoStateLTE] forRAT:4];
      v28 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x20) != 0 && [(PLBBMav13HwMsgParser *)self protoStateTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v68 = objc_opt_class();
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_664;
        v200[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v200[4] = v68;
        v69 = v200;
        if (qword_2811F7340 != -1)
        {
          dispatch_once(&qword_2811F7340, v69);
        }

        if (byte_2811F7167 == 1)
        {
          v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateTDS is valid"];
          v71 = MEMORY[0x277D3F178];
          v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v73 = [v72 lastPathComponent];
          v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v71 logMessage:v70 fromFile:v73 fromFunction:v74 fromLineNumber:455];

          v75 = PLLogCommon();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v70;
            _os_log_debug_impl(&dword_21A4C6000, v75, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 5;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:v18 state:[(PLBBMav13HwMsgParser *)self protoStateTDS] forRAT:5];
      v28 = 1;
    }

    [(PLBBMavLogMsg *)v14 setProtocolStateHistDict:v18];
    [(PLMav7BasebandHardwareMessage *)self logProtocolActiveWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logSleepVetoWithLogger:v14];
    if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
    {
      [(PLMav7BasebandHardwareMessage *)self logClockWithLogger:v14];
      [(PLMav7BasebandHardwareMessage *)self logHSICWithLogger:v14];
    }

    [(PLBBMavLogMsg *)v14 addToGroupPLBBMav16HwOther];
    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 4) != 0 && [(PLBBMav13HwMsgParser *)self rfDataLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v76 = objc_opt_class();
        v199[0] = MEMORY[0x277D85DD0];
        v199[1] = 3221225472;
        v199[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_670;
        v199[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v199[4] = v76;
        v77 = v199;
        if (qword_2811F7348 != -1)
        {
          dispatch_once(&qword_2811F7348, v77);
        }

        if (byte_2811F7168 == 1)
        {
          v182 = v4;
          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataLTE is valid"];
          v79 = MEMORY[0x277D3F178];
          v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v81 = [v80 lastPathComponent];
          v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v79 logMessage:v78 fromFile:v81 fromFunction:v82 fromLineNumber:480];

          v83 = PLLogCommon();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v78;
            _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v182;
          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataLTE] forRAT:4];
      v84 = 1;
    }

    else
    {
      v84 = 0;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 2) != 0 && [(PLBBMav13HwMsgParser *)self rfDataWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v85 = objc_opt_class();
        v198[0] = MEMORY[0x277D85DD0];
        v198[1] = 3221225472;
        v198[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_676;
        v198[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v198[4] = v85;
        v86 = v198;
        if (qword_2811F7350 != -1)
        {
          dispatch_once(&qword_2811F7350, v86);
        }

        if (byte_2811F7169 == 1)
        {
          v183 = v4;
          v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataWCDMA is valid"];
          v88 = MEMORY[0x277D3F178];
          v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v90 = [v89 lastPathComponent];
          v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v88 logMessage:v87 fromFile:v90 fromFunction:v91 fromLineNumber:489];

          v92 = PLLogCommon();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v87;
            _os_log_debug_impl(&dword_21A4C6000, v92, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v183;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataWCDMA] forRAT:3];
      v84 = 1;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 1) != 0 && [(PLBBMav13HwMsgParser *)self rfDataGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v93 = objc_opt_class();
        v197[0] = MEMORY[0x277D85DD0];
        v197[1] = 3221225472;
        v197[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_682;
        v197[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v197[4] = v93;
        v94 = v197;
        if (qword_2811F7358 != -1)
        {
          dispatch_once(&qword_2811F7358, v94);
        }

        if (byte_2811F716A == 1)
        {
          v184 = v4;
          v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataGSM is valid"];
          v96 = MEMORY[0x277D3F178];
          v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v98 = [v97 lastPathComponent];
          v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v96 logMessage:v95 fromFile:v98 fromFunction:v99 fromLineNumber:498];

          v100 = PLLogCommon();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v95;
            _os_log_debug_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v184;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataGSM] forRAT:2];
      v84 = 1;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 8) != 0 && [(PLBBMav13HwMsgParser *)self rfDataTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v101 = objc_opt_class();
        v196[0] = MEMORY[0x277D85DD0];
        v196[1] = 3221225472;
        v196[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_688;
        v196[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v196[4] = v101;
        v102 = v196;
        if (qword_2811F7360 != -1)
        {
          dispatch_once(&qword_2811F7360, v102);
        }

        if (byte_2811F716B == 1)
        {
          v185 = v4;
          v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v104 = MEMORY[0x277D3F178];
          v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v106 = [v105 lastPathComponent];
          v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v104 logMessage:v103 fromFile:v106 fromFunction:v107 fromLineNumber:507];

          v108 = PLLogCommon();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v103;
            _os_log_debug_impl(&dword_21A4C6000, v108, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v185;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataTDS] forRAT:5];
      v84 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x40) != 0 && [(PLBBMav13HwMsgParser *)self rfDataC2K])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v109 = objc_opt_class();
        v195[0] = MEMORY[0x277D85DD0];
        v195[1] = 3221225472;
        v195[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_694;
        v195[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v195[4] = v109;
        v110 = v195;
        if (qword_2811F7368 != -1)
        {
          dispatch_once(&qword_2811F7368, v110);
        }

        if (byte_2811F716C == 1)
        {
          v186 = v4;
          v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v112 = MEMORY[0x277D3F178];
          v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v114 = [v113 lastPathComponent];
          v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v112 logMessage:v111 fromFile:v114 fromFunction:v115 fromLineNumber:516];

          v116 = PLLogCommon();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v111;
            _os_log_debug_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v186;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataC2K] forRAT:0];
      v84 = 1;
    }

    if (*[(PLBBMav13HwMsgParser *)self optimMaskArray]< 0 && [(PLBBMav13HwMsgParser *)self rfData1xEVDO])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v117 = objc_opt_class();
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_697;
        v194[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v194[4] = v117;
        v118 = v194;
        if (qword_2811F7370 != -1)
        {
          dispatch_once(&qword_2811F7370, v118);
        }

        if (byte_2811F716D == 1)
        {
          v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v120 = MEMORY[0x277D3F178];
          v121 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v122 = [v121 lastPathComponent];
          v123 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v120 logMessage:v119 fromFile:v122 fromFunction:v123 fromLineNumber:525];

          v124 = PLLogCommon();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v119;
            _os_log_debug_impl(&dword_21A4C6000, v124, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfData1xEVDO] forRAT:1];
    }

    else if (((v84 | v28 ^ 1) & 1) == 0)
    {
      [(PLBBMav13HwMsgParser *)self logProtocolOnlyWithLogger:v14 forRAT:v27];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x10) != 0 && [(PLBBMav16HwMsgParser *)self rfEnhLTEMav16])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v125 = objc_opt_class();
        v193[0] = MEMORY[0x277D85DD0];
        v193[1] = 3221225472;
        v193[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_700;
        v193[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v193[4] = v125;
        v126 = v193;
        if (qword_2811F7378 != -1)
        {
          dispatch_once(&qword_2811F7378, v126);
        }

        if (byte_2811F716E == 1)
        {
          v127 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhLTEMav16 is valid"];
          v128 = MEMORY[0x277D3F178];
          v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v130 = [v129 lastPathComponent];
          v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v128 logMessage:v127 fromFile:v130 fromFunction:v131 fromLineNumber:540];

          v132 = PLLogCommon();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v127;
            _os_log_debug_impl(&dword_21A4C6000, v132, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav16HwMsgParser *)self logMav16HwRFEnhLTEWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x20) != 0 && [(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v133 = objc_opt_class();
        v192[0] = MEMORY[0x277D85DD0];
        v192[1] = 3221225472;
        v192[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_706;
        v192[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v192[4] = v133;
        v134 = v192;
        if (qword_2811F7380 != -1)
        {
          dispatch_once(&qword_2811F7380, v134);
        }

        if (byte_2811F716F == 1)
        {
          v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhWCDMAMav16 is valid"];
          v136 = MEMORY[0x277D3F178];
          v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v138 = [v137 lastPathComponent];
          v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v136 logMessage:v135 fromFile:v138 fromFunction:v139 fromLineNumber:546];

          v140 = PLLogCommon();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v135;
            _os_log_debug_impl(&dword_21A4C6000, v140, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav16HwMsgParser *)self logMav16HwRFEnhWCDMAWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x40) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v141 = objc_opt_class();
        v191[0] = MEMORY[0x277D85DD0];
        v191[1] = 3221225472;
        v191[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_712;
        v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v191[4] = v141;
        v142 = v191;
        if (qword_2811F7388 != -1)
        {
          dispatch_once(&qword_2811F7388, v142);
        }

        if (byte_2811F7170 == 1)
        {
          v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhGSM is valid"];
          v144 = MEMORY[0x277D3F178];
          v145 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v146 = [v145 lastPathComponent];
          v147 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v144 logMessage:v143 fromFile:v146 fromFunction:v147 fromLineNumber:552];

          v148 = PLLogCommon();
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v143;
            _os_log_debug_impl(&dword_21A4C6000, v148, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
        v149 = objc_opt_class();
        v190[0] = MEMORY[0x277D85DD0];
        v190[1] = 3221225472;
        v190[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_718;
        v190[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v190[4] = v149;
        v150 = v190;
        if (qword_2811F7390 != -1)
        {
          dispatch_once(&qword_2811F7390, v150);
        }

        if (byte_2811F7171 == 1)
        {
          v151 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhTDS is valid"];
          v152 = MEMORY[0x277D3F178];
          v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v154 = [v153 lastPathComponent];
          v155 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v152 logMessage:v151 fromFile:v154 fromFunction:v155 fromLineNumber:558];

          v156 = PLLogCommon();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v151;
            _os_log_debug_impl(&dword_21A4C6000, v156, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
        v157 = objc_opt_class();
        v189[0] = MEMORY[0x277D85DD0];
        v189[1] = 3221225472;
        v189[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_724;
        v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v189[4] = v157;
        v158 = v189;
        if (qword_2811F7398 != -1)
        {
          dispatch_once(&qword_2811F7398, v158);
        }

        if (byte_2811F7172 == 1)
        {
          v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnh1x is valid"];
          v160 = MEMORY[0x277D3F178];
          v161 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v162 = [v161 lastPathComponent];
          v163 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v160 logMessage:v159 fromFile:v162 fromFunction:v163 fromLineNumber:564];

          v164 = PLLogCommon();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v159;
            _os_log_debug_impl(&dword_21A4C6000, v164, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
        v165 = objc_opt_class();
        v188[0] = MEMORY[0x277D85DD0];
        v188[1] = 3221225472;
        v188[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_730;
        v188[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v188[4] = v165;
        v166 = v188;
        if (qword_2811F73A0 != -1)
        {
          dispatch_once(&qword_2811F73A0, v166);
        }

        if (byte_2811F7173 == 1)
        {
          v167 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhHDR is valid"];
          v168 = MEMORY[0x277D3F178];
          v169 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v170 = [v169 lastPathComponent];
          v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v168 logMessage:v167 fromFile:v170 fromFunction:v171 fromLineNumber:570];

          v172 = PLLogCommon();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v167;
            _os_log_debug_impl(&dword_21A4C6000, v172, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
        v173 = objc_opt_class();
        v187[0] = MEMORY[0x277D85DD0];
        v187[1] = 3221225472;
        v187[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_736;
        v187[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v187[4] = v173;
        v174 = v187;
        if (qword_2811F73A8 != -1)
        {
          dispatch_once(&qword_2811F73A8, v174);
        }

        if (byte_2811F7174 == 1)
        {
          v175 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhOOS is valid"];
          v176 = MEMORY[0x277D3F178];
          v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
          v178 = [v177 lastPathComponent];
          v179 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
          [v176 logMessage:v175 fromFile:v178 fromFunction:v179 fromLineNumber:576];

          v180 = PLLogCommon();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v210 = v175;
            _os_log_debug_impl(&dword_21A4C6000, v180, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFOOSWithLogger:v14];
    }

    [(PLBBMavLogMsg *)v14 logEventBackwardGrpEntriesBBMav16Hw];
  }

  else
  {
    v18 = [MEMORY[0x277CCAB68] string];
    [v18 appendFormat:@"Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 3];
    [(PLBBMavLogMsg *)v14 setError:v18];
    [(PLBBMavLogMsg *)v14 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v14 logEventBackwardMavBBHwOther];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_627;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v29;
      if (qword_2811F7310 != -1)
      {
        dispatch_once(&qword_2811F7310, block);
      }

      if (byte_2811F7161 == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"SW version mismatch. Received %d, expected %d cannot process, returning", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 3];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v33 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logWithLogger:]"];
        [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:380];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v210 = v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v181 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7160 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_627(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7161 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_634(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7162 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7163 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7164 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_652(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7165 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_658(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7166 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_664(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7167 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7168 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_676(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7169 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F716A = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F716B = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_694(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F716C = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F716D = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_700(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F716E = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F716F = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_712(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7170 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_718(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7171 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_724(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7172 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_730(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7173 = result;
  return result;
}

uint64_t __38__PLBBMav16HwMsgParser_logWithLogger___block_invoke_736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7174 = result;
  return result;
}

- (void)logMav16AppsPerfWithLogger:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x278257000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F73B0 != -1)
    {
      dispatch_once(&qword_2811F73B0, block);
    }

    if (byte_2811F7175 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwMsgParser logMav16AppsPerfWithLogger:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16AppsPerfWithLogger:]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:587];

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

  v13 = v4;
  if ([(PLBBMav16HwMsgParser *)self mav16AppsPerf])
  {
    v14 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self mav16AppsPerf] ofSize:7];
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
    v52[2] = __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_745;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v15;
    if (qword_2811F73B8 != -1)
    {
      dispatch_once(&qword_2811F73B8, v52);
    }

    if (byte_2811F7176 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16AppsPerfWithLogger:]"];
      [v16 logMessage:v14 fromFile:v18 fromFunction:v19 fromLineNumber:599];

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
      v51[2] = __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_751;
      v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v51[4] = v24;
      if (qword_2811F73C0 != -1)
      {
        dispatch_once(&qword_2811F73C0, v51);
      }

      if (byte_2811F7177 == 1)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v28 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16AppsPerfWithLogger:]"];
        [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:610];

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

  if ([(PLBBMav16HwMsgParser *)self mav16AppsSleepVeto])
  {
    v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self mav16AppsSleepVeto] ofSize:4];
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
      v50[2] = __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_760;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v33;
      if (qword_2811F73C8 != -1)
      {
        dispatch_once(&qword_2811F73C8, v50);
      }

      if (byte_2811F7178 == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16AppsPerfWithLogger:]"];
        [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:622];

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
    v49[2] = __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_769;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v41;
    if (qword_2811F73D0 != -1)
    {
      dispatch_once(&qword_2811F73D0, v49);
    }

    if (byte_2811F7179 == 1)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS"];
      v43 = MEMORY[0x277D3F178];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v45 = [v44 lastPathComponent];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16AppsPerfWithLogger:]"];
      [v43 logMessage:v42 fromFile:v45 fromFunction:v46 fromLineNumber:626];

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

uint64_t __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7175 = result;
  return result;
}

uint64_t __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7176 = result;
  return result;
}

uint64_t __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_751(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7177 = result;
  return result;
}

uint64_t __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7178 = result;
  return result;
}

uint64_t __51__PLBBMav16HwMsgParser_logMav16AppsPerfWithLogger___block_invoke_769(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7179 = result;
  return result;
}

- (void)logMav16MPSSWithLogger:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x278257000uLL;
  v6 = &unk_21AA21000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F73D8 != -1)
    {
      dispatch_once(&qword_2811F73D8, block);
    }

    if (byte_2811F717A == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwMsgParser logMav16MPSSWithLogger:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16MPSSWithLogger:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:631];

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

  v14 = v4;
  if ([(PLBBMav13HwMsgParser *)self mpssSleep])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser mpssSleep](self, "mpssSleep")[4]}];
    [v14 setMpssCxoShutDownDuration:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav13HwMsgParser mpssSleep](self, "mpssSleep")}];
    [v14 setMpssCxoShutDownCount:v16];
  }

  if ([(PLBBMav16HwMsgParser *)self mav16MpssSleepVeto])
  {
    v17 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self mav16MpssSleepVeto] ofSize:21];
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
    v43[2] = __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke_778;
    v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v43[4] = v18;
    if (qword_2811F73E0 != -1)
    {
      dispatch_once(&qword_2811F73E0, v43);
    }

    if (byte_2811F717B == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto=<unknown>"];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16MPSSWithLogger:]"];
      [v19 logMessage:v17 fromFile:v21 fromFunction:v22 fromLineNumber:648];

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
  if ([(PLBBMav16HwMsgParser *)self mav16QdspSpeed])
  {
    v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self mav16QdspSpeed] ofSize:16];
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
    v42[2] = __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke_787;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v26;
    if (qword_2811F73E8 != -1)
    {
      dispatch_once(&qword_2811F73E8, v42);
    }

    if (byte_2811F717C == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Q6SW_Perf=<unknown>"];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16MPSSWithLogger:]"];
      [v27 logMessage:v24 fromFile:v29 fromFunction:v30 fromLineNumber:661];

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
    v41[2] = __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke_793;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v33;
    if (qword_2811F73F0 != -1)
    {
      dispatch_once(&qword_2811F73F0, v41);
    }

    if (byte_2811F717D == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16MPSSWithLogger:]"];
      [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:664];

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

uint64_t __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F717A = result;
  return result;
}

uint64_t __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke_778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F717B = result;
  return result;
}

uint64_t __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke_787(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F717C = result;
  return result;
}

uint64_t __47__PLBBMav16HwMsgParser_logMav16MPSSWithLogger___block_invoke_793(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F717D = result;
  return result;
}

- (void)logMav16HwRFEnhLTEWithLogger:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F73F8 != -1)
    {
      dispatch_once(&qword_2811F73F8, block);
    }

    if (byte_2811F717E == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwMsgParser logMav16HwRFEnhLTEWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhLTEWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:669];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v80 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = v4;
  v13 = objc_alloc_init(PLBBMav16HwRfLTELogMsg);
  if (v13)
  {
    v14 = [(PLBasebandMessage *)self agent];
    [(PLBBMsgRoot *)v13 setAgent:v14];

    [(PLBBMav16HwRfLTELogMsg *)v13 setError:@"not set"];
    v15 = [(PLBasebandMessage *)self seqNum];
    v16 = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMav16HwRfLTELogMsg *)v13 setHeaderWithSeqNum:v15 andDate:v16 andTimeCal:?];

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x10) == 0 || [(PLBBMav16HwMsgParser *)self rfEnhLTEMav16])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16") - -[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[4])}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setLogDuration:v17];

      v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[8]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setDupMode:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[568]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setPCCFreq:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[569]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setPCCBw:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[570]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSCC1Freq:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[572]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSCC1Bw:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[571]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSCC2Freq:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[573]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSCC2Bw:v24];

      v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 12 ofSize:17];
      [(PLBBMav16HwRfLTELogMsg *)v13 setDlTBSzCnt:v25];

      v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 80 ofSize:12];
      [(PLBBMav16HwRfLTELogMsg *)v13 setTxPwrCnt:v26];

      v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 128 ofSize:6];
      [(PLBBMav16HwRfLTELogMsg *)v13 setCaSCCCnt:v27];

      v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 152 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setUlCaSCCCnt:v28];

      v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 164 ofSize:6];
      [(PLBBMav16HwRfLTELogMsg *)v13 setActRxTxCnt:v29];

      v30 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 188 ofSize:7];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSleepStateIdleCnt:v30];

      v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 216 ofSize:7];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSleepStateConnCnt:v31];

      v32 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 244 ofSize:6];
      [(PLBBMav16HwRfLTELogMsg *)v13 setRsrpIdleCnt:v32];

      v33 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 268 ofSize:6];
      [(PLBBMav16HwRfLTELogMsg *)v13 setRsrpConnCnt:v33];

      v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 292 ofSize:6];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSinrIdleCnt:v34];

      v35 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 316 ofSize:6];
      [(PLBBMav16HwRfLTELogMsg *)v13 setSinrConnCnt:v35];

      v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 340 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setNlicStateCnt:v36];

      v37 = [(PLBasebandHardwareMessage *)self convertUint64ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 504 ofSize:8];
      [(PLBBMav16HwRfLTELogMsg *)v13 setBpeStats:v37];

      v38 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[352]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArdRxDOff:v38];

      v39 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[492]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setUSleepPCCCnt:v39];

      v40 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[496]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setUSleepSCC1Cnt:v40];

      v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[500]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setUSleepSCC2Cnt:v41];

      v42 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 356 ofSize:2];
      [(PLBBMav16HwRfLTELogMsg *)v13 setHsicPCC:v42];

      v43 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 364 ofSize:2];
      [(PLBBMav16HwRfLTELogMsg *)v13 setHsicSCC1:v43];

      v44 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 372 ofSize:2];
      [(PLBBMav16HwRfLTELogMsg *)v13 setHsicSCC2:v44];

      v45 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[380]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxOffPCC:v45];

      v46 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[416]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxOffSCC1:v46];

      v47 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav16HwMsgParser rfEnhLTEMav16](self, "rfEnhLTEMav16")[452]}];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxOffSCC2:v47];

      v48 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 392 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxBaselinePCC:v48];

      v49 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 428 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxBaselineSCC1:v49];

      v50 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 464 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxBaselineSCC2:v50];

      v51 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 404 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxQicePCC:v51];

      v52 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 440 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxQiceSCC1:v52];

      v53 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhLTEMav16]+ 476 ofSize:3];
      [(PLBBMav16HwRfLTELogMsg *)v13 setArxQiceSCC2:v53];

      v54 = [(PLBBMav16HwRfLTELogMsg *)v13 logEventBackwardBBMav16HwRfLTE];
      v55 = [v54 objectForKey:@"entry"];
      v56 = [v54 objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v55 withEntryKey:v56];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_32;
      }

      v57 = objc_opt_class();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke_821;
      v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v75[4] = v57;
      if (qword_2811F7410 != -1)
      {
        dispatch_once(&qword_2811F7410, v75);
      }

      if (byte_2811F7181 != 1)
      {
        goto LABEL_32;
      }

      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh Mav16 HW RF ENH LTE"];
      v59 = MEMORY[0x277D3F178];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v61 = [v60 lastPathComponent];
      v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhLTEWithLogger:]"];
      [v59 logMessage:v58 fromFile:v61 fromFunction:v62 fromLineNumber:807];

      v63 = PLLogCommon();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v80 = v58;
        _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_31:
LABEL_32:

      goto LABEL_33;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v69 = objc_opt_class();
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke_809;
      v76[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v76[4] = v69;
      if (qword_2811F7408 != -1)
      {
        dispatch_once(&qword_2811F7408, v76);
      }

      if (byte_2811F7180 == 1)
      {
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhLTEMav16 is not valid, return"];
        v70 = MEMORY[0x277D3F178];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
        v72 = [v71 lastPathComponent];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhLTEWithLogger:]"];
        [v70 logMessage:v54 fromFile:v72 fromFunction:v73 fromLineNumber:684];

        v58 = PLLogCommon();
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_31;
        }

        *buf = 138412290;
        v80 = v54;
        goto LABEL_30;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v64 = objc_opt_class();
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke_800;
    v77[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v77[4] = v64;
    if (qword_2811F7400 != -1)
    {
      dispatch_once(&qword_2811F7400, v77);
    }

    if (byte_2811F717F == 1)
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfLTE failed"];
      v65 = MEMORY[0x277D3F178];
      v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v67 = [v66 lastPathComponent];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhLTEWithLogger:]"];
      [v65 logMessage:v54 fromFile:v67 fromFunction:v68 fromLineNumber:673];

      v58 = PLLogCommon();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v80 = v54;
LABEL_30:
      _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_31;
    }
  }

LABEL_33:

  v74 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F717E = result;
  return result;
}

uint64_t __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke_800(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F717F = result;
  return result;
}

uint64_t __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke_809(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7180 = result;
  return result;
}

uint64_t __53__PLBBMav16HwMsgParser_logMav16HwRFEnhLTEWithLogger___block_invoke_821(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7181 = result;
  return result;
}

- (void)logMav16HwRFEnhWCDMAWithLogger:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBBMav16HwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7418 != -1)
    {
      dispatch_once(&qword_2811F7418, block);
    }

    if (byte_2811F7182 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:812];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = v4;
  v13 = objc_alloc_init(PLBBMavHwRfWCDMALogMsg);
  if (v13)
  {
    v14 = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:v14];

    [(PLBBMavHwRfWCDMALogMsg *)v13 setError:@"not set"];
    v15 = [(PLBasebandMessage *)self seqNum];
    v16 = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setHeaderWithSeqNum:v15 andDate:v16 andTimeCal:?];

    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16") - -[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16")[4])}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setLogDuration:v17];

    v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 8 ofSize:3];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setSCEqStatCnt:v18];

    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 20 ofSize:3];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDCEqStatCnt:v19];

    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 32 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setSCQsetEqStatCnt:v20];

    v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 48 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDCQsetEqStatCnt:v21];

    v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 64 ofSize:2];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDurInCarrierMode:v22];

    v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 72 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setRABModeCnt:v23];

    v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 88 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setRABTypeCnt:v24];

    v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav16HwMsgParser *)self rfEnhWCDMAMav16]+ 104 ofSize:16];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setTxPwrBucket:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16")[168]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setFetCnt:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16")[172]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxOnCnt:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16")[176]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxTxOffCnt:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16")[180]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcTimeCnt:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav16HwMsgParser rfEnhWCDMAMav16](self, "rfEnhWCDMAMav16")[184]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcEnergy:v30];

    v31 = [(PLBBMavHwRfWCDMALogMsg *)v13 logEventBackwardBBMavHwRfWCDMA];
    v32 = [v31 objectForKey:@"entry"];
    v33 = [v31 objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v32 withEntryKey:v33];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v34 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __55__PLBBMav16HwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_834;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v34;
    if (qword_2811F7428 != -1)
    {
      dispatch_once(&qword_2811F7428, v47);
    }

    if (byte_2811F7184 != 1)
    {
      goto LABEL_23;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh Mav 16 BB HW RF WCDMA"];
    v36 = MEMORY[0x277D3F178];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
    v38 = [v37 lastPathComponent];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
    [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:873];

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
    v48[2] = __55__PLBBMav16HwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_828;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v41;
    if (qword_2811F7420 != -1)
    {
      dispatch_once(&qword_2811F7420, v48);
    }

    if (byte_2811F7183 == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfWCDMA failed"];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwMsgParser.m"];
      v44 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwMsgParser logMav16HwRFEnhWCDMAWithLogger:]"];
      [v42 logMessage:v31 fromFile:v44 fromFunction:v45 fromLineNumber:816];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v31;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_24:

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLBBMav16HwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7182 = result;
  return result;
}

uint64_t __55__PLBBMav16HwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7183 = result;
  return result;
}

uint64_t __55__PLBBMav16HwMsgParser_logMav16HwRFEnhWCDMAWithLogger___block_invoke_834(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7184 = result;
  return result;
}

@end