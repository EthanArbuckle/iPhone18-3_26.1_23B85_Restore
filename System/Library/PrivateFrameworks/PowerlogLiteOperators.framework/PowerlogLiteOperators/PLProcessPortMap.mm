@interface PLProcessPortMap
+ (id)sharedInstance;
- (PLProcessPortMap)init;
- (id)dictFromNetPortInfo:(net_port_info *)info;
- (id)getLookupKeys:(id)keys;
- (id)pidAndProcessNameForDestAddress:(id)address withDestPort:(id)port withSourceAddress:(id)sourceAddress withSourcePort:(id)sourcePort withProtocol:(id)protocol;
- (void)clearPortMap;
- (void)clearPortMapInternal;
- (void)dealloc;
- (void)reconstructPortMap;
- (void)reconstructPortMapInternal;
@end

@implementation PLProcessPortMap

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PLProcessPortMap_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F7790 != -1)
  {
    dispatch_once(&qword_2811F7790, block);
  }

  v2 = qword_2811F7788;

  return v2;
}

uint64_t __34__PLProcessPortMap_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  qword_2811F7788 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (PLProcessPortMap)init
{
  v11.receiver = self;
  v11.super_class = PLProcessPortMap;
  v2 = [(PLProcessPortMap *)&v11 init];
  v3 = v2;
  if (v2)
  {
    strictLookupMap = v2->_strictLookupMap;
    v2->_strictLookupMap = 0;

    lenientLookupMap = v3->_lenientLookupMap;
    v3->_lenientLookupMap = 0;

    localPortOnlyLookupMap = v3->_localPortOnlyLookupMap;
    v3->_localPortOnlyLookupMap = 0;

    ipAddrLookupMap = v3->_ipAddrLookupMap;
    v3->_ipAddrLookupMap = 0;

    v8 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    workQueue = v3->_workQueue;
    v3->_workQueue = v8;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLProcessPortMap;
  [(PLProcessPortMap *)&v2 dealloc];
}

- (void)reconstructPortMap
{
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PLProcessPortMap_reconstructPortMap__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async_and_wait(workQueue, block);
}

- (void)clearPortMap
{
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PLProcessPortMap_clearPortMap__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async_and_wait(workQueue, block);
}

- (id)pidAndProcessNameForDestAddress:(id)address withDestPort:(id)port withSourceAddress:(id)sourceAddress withSourcePort:(id)sourcePort withProtocol:(id)protocol
{
  addressCopy = address;
  portCopy = port;
  sourceAddressCopy = sourceAddress;
  sourcePortCopy = sourcePort;
  protocolCopy = protocol;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke;
  block[3] = &unk_27825B138;
  block[4] = self;
  v26 = protocolCopy;
  v27 = addressCopy;
  v28 = sourceAddressCopy;
  v30 = sourcePortCopy;
  v31 = &v32;
  v29 = portCopy;
  v18 = sourcePortCopy;
  v19 = portCopy;
  v20 = sourceAddressCopy;
  v21 = addressCopy;
  v22 = protocolCopy;
  dispatch_async_and_wait(workQueue, block);

  v23 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v23;
}

void __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke(uint64_t a1)
{
  v150 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) strictLookupMap];

  if (!v2)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = *(a1 + 32);
      v4 = objc_opt_class();
      v147[0] = MEMORY[0x277D85DD0];
      v147[1] = 3221225472;
      v147[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_2;
      v147[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v147[4] = v4;
      if (qword_2811F7798 != -1)
      {
        dispatch_once(&qword_2811F7798, v147);
      }

      if (_MergedGlobals_88 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"reconstructing the port map"];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:92];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v149 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) reconstructPortMapInternal];
  }

  v11 = [*(a1 + 40) isEqualToString:@"ESP"];
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  if (v11)
  {
    v14 = [v12 keyForIPAddrLookup:v13 withSourceAddress:*(a1 + 56)];
    v15 = [*(a1 + 32) ipAddrLookupMap];
    v16 = [v15 objectForKeyedSubscript:v14];
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_80;
      v146[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v146[4] = v20;
      if (qword_2811F77A0 != -1)
      {
        dispatch_once(&qword_2811F77A0, v146);
      }

      if (byte_2811F7771 == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"ESP protocol key %@ and pid and process %@", v14, *(*(*(a1 + 80) + 8) + 40)];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v24 = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:100];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v149 = v21;
LABEL_99:
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_89;
        }

        goto LABEL_89;
      }
    }

    goto LABEL_90;
  }

  v14 = [v12 keyFromAddress:v13 withPort:*(a1 + 64) withSourceAddress:*(a1 + 56) withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = *(a1 + 32);
    v28 = objc_opt_class();
    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_87;
    v145[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v145[4] = v28;
    if (qword_2811F77A8 != -1)
    {
      dispatch_once(&qword_2811F77A8, v145);
    }

    if (byte_2811F7772 == 1)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"looking up %@", v14];
      v30 = MEMORY[0x277D3F178];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v32 = [v31 lastPathComponent];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v30 logMessage:v29 fromFile:v32 fromFunction:v33 fromLineNumber:104];

      v34 = PLLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v35 = *(a1 + 32);
    v36 = objc_opt_class();
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_93;
    v144[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v144[4] = v36;
    if (qword_2811F77B0 != -1)
    {
      dispatch_once(&qword_2811F77B0, v144);
    }

    if (byte_2811F7773 == 1)
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = [*(a1 + 32) strictLookupMap];
      v39 = [v37 stringWithFormat:@"strictLookupMap=%@", v38];

      v40 = MEMORY[0x277D3F178];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v42 = [v41 lastPathComponent];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v40 logMessage:v39 fromFile:v42 fromFunction:v43 fromLineNumber:105];

      v44 = PLLogCommon();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v39;
        _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v45 = [*(a1 + 32) strictLookupMap];
  v46 = [v45 objectForKeyedSubscript:v14];
  v47 = *(*(a1 + 80) + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v46;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    if ([*(a1 + 32) isAddressIPV4:*(a1 + 48)])
    {
      v57 = @"0.0.0.0";
    }

    else
    {
      v57 = @"::";
    }

    v51 = [*(a1 + 32) keyFromAddress:v57 withPort:*(a1 + 64) withSourceAddress:v57 withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v58 = *(a1 + 32);
      v59 = objc_opt_class();
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_99;
      v143[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v143[4] = v59;
      if (qword_2811F77B8 != -1)
      {
        dispatch_once(&qword_2811F77B8, v143);
      }

      if (byte_2811F7774 == 1)
      {
        v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"The search key is %@", v51];
        v61 = MEMORY[0x277D3F178];
        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v63 = [v62 lastPathComponent];
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v61 logMessage:v60 fromFile:v63 fromFunction:v64 fromLineNumber:119];

        v65 = PLLogCommon();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v149 = v60;
          _os_log_debug_impl(&dword_21A4C6000, v65, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v66 = [*(a1 + 32) strictLookupMap];
    v67 = [v66 objectForKeyedSubscript:v51];
    v68 = *(*(a1 + 80) + 8);
    v69 = *(v68 + 40);
    *(v68 + 40) = v67;

    if (!v67)
    {
      v70 = [*(a1 + 32) keyFromAddress:@"*" withPort:*(a1 + 64) withSourceAddress:@"*" withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];

      v71 = [*(a1 + 32) strictLookupMap];
      v72 = [v71 objectForKeyedSubscript:v70];
      v73 = *(*(a1 + 80) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;

      v51 = v70;
    }

    v75 = *(*(*(a1 + 80) + 8) + 40);
    v76 = [MEMORY[0x277D3F180] debugEnabled];
    if (v75)
    {
      if (!v76)
      {
        goto LABEL_82;
      }

      v77 = *(a1 + 32);
      v78 = objc_opt_class();
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_123;
      v139[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v139[4] = v78;
      if (qword_2811F77D8 != -1)
      {
        dispatch_once(&qword_2811F77D8, v139);
      }

      if (byte_2811F7778 != 1)
      {
        goto LABEL_82;
      }

      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wild card match succeeded!"];
      v79 = MEMORY[0x277D3F178];
      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v81 = [v80 lastPathComponent];
      v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v79 logMessage:v56 fromFile:v81 fromFunction:v82 fromLineNumber:143];

      v83 = PLLogCommon();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v56;
        _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      if (v76)
      {
        v84 = *(a1 + 32);
        v85 = objc_opt_class();
        v142[0] = MEMORY[0x277D85DD0];
        v142[1] = 3221225472;
        v142[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_105;
        v142[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v142[4] = v85;
        if (qword_2811F77C0 != -1)
        {
          dispatch_once(&qword_2811F77C0, v142);
        }

        if (byte_2811F7775 == 1)
        {
          v86 = MEMORY[0x277CCACA8];
          v87 = [*(a1 + 32) lenientLookupMap];
          v88 = [v86 stringWithFormat:@"Lenient Map = %@", v87];

          v89 = MEMORY[0x277D3F178];
          v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
          v91 = [v90 lastPathComponent];
          v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
          [v89 logMessage:v88 fromFile:v91 fromFunction:v92 fromLineNumber:128];

          v93 = PLLogCommon();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v149 = v88;
            _os_log_debug_impl(&dword_21A4C6000, v93, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v56 = [*(a1 + 32) keyForlenientLookup:*(a1 + 48) withPort:*(a1 + 64) withProtocol:*(a1 + 40)];
      v94 = [*(a1 + 32) lenientLookupMap];
      v95 = [v94 objectForKeyedSubscript:v56];
      v96 = *(*(a1 + 80) + 8);
      v97 = *(v96 + 40);
      *(v96 + 40) = v95;

      v98 = *(*(*(a1 + 80) + 8) + 40);
      v99 = [MEMORY[0x277D3F180] debugEnabled];
      if (v98)
      {
        if (!v99)
        {
          goto LABEL_81;
        }

        v100 = *(a1 + 32);
        v101 = objc_opt_class();
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_117;
        v140[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v140[4] = v101;
        if (qword_2811F77D0 != -1)
        {
          dispatch_once(&qword_2811F77D0, v140);
        }

        if (byte_2811F7777 != 1)
        {
          goto LABEL_81;
        }

        v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"3 tuple match succeeded!"];
        v102 = MEMORY[0x277D3F178];
        v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v104 = [v103 lastPathComponent];
        v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v102 logMessage:v83 fromFile:v104 fromFunction:v105 fromLineNumber:140];

        v106 = PLLogCommon();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v149 = v83;
          _os_log_debug_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      else
      {
        if (v99)
        {
          v107 = *(a1 + 32);
          v108 = objc_opt_class();
          v141[0] = MEMORY[0x277D85DD0];
          v141[1] = 3221225472;
          v141[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_111;
          v141[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v141[4] = v108;
          if (qword_2811F77C8 != -1)
          {
            dispatch_once(&qword_2811F77C8, v141);
          }

          if (byte_2811F7776 == 1)
          {
            v109 = MEMORY[0x277CCACA8];
            v110 = [*(a1 + 32) localPortOnlyLookupMap];
            v111 = [v109 stringWithFormat:@"Local Port Only Map =%@", v110];

            v112 = MEMORY[0x277D3F178];
            v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
            v114 = [v113 lastPathComponent];
            v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
            [v112 logMessage:v111 fromFile:v114 fromFunction:v115 fromLineNumber:135];

            v116 = PLLogCommon();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v149 = v111;
              _os_log_debug_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v83 = [*(a1 + 32) keyForlocalPortLookup:*(a1 + 64) withProtocol:*(a1 + 40)];
        v106 = [*(a1 + 32) localPortOnlyLookupMap];
        v117 = [v106 objectForKeyedSubscript:v83];
        v118 = *(*(a1 + 80) + 8);
        v119 = *(v118 + 40);
        *(v118 + 40) = v117;
      }
    }

LABEL_81:
LABEL_82:

    goto LABEL_83;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v49 = *(a1 + 32);
    v50 = objc_opt_class();
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_129;
    v138[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v138[4] = v50;
    if (qword_2811F77E0 != -1)
    {
      dispatch_once(&qword_2811F77E0, v138);
    }

    if (byte_2811F7779 == 1)
    {
      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"5 tuple match succeeded!"];
      v52 = MEMORY[0x277D3F178];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v54 = [v53 lastPathComponent];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v52 logMessage:v51 fromFile:v54 fromFunction:v55 fromLineNumber:146];

      v56 = PLLogCommon();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v51;
        _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_81;
    }
  }

LABEL_83:
  if (!*(*(*(a1 + 80) + 8) + 40) && [MEMORY[0x277D3F180] debugEnabled])
  {
    v120 = *(a1 + 32);
    v121 = objc_opt_class();
    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 3221225472;
    v137[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_135;
    v137[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v137[4] = v121;
    if (qword_2811F77E8 != -1)
    {
      dispatch_once(&qword_2811F77E8, v137);
    }

    if (byte_2811F777A == 1)
    {
      v122 = *(a1 + 40);
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"lookup failed at all stages. Protocol %@ Dest Port %@", v122, *(a1 + 64)];
      v123 = MEMORY[0x277D3F178];
      v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v125 = [v124 lastPathComponent];
      v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v123 logMessage:v21 fromFile:v125 fromFunction:v126 fromLineNumber:150];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v21;
        goto LABEL_99;
      }

LABEL_89:
    }
  }

LABEL_90:

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v127 = *(a1 + 32);
    v128 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_141;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v128;
    if (qword_2811F77F0 != -1)
    {
      dispatch_once(&qword_2811F77F0, block);
    }

    if (byte_2811F777B == 1)
    {
      v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", *(*(*(a1 + 80) + 8) + 40)];
      v130 = MEMORY[0x277D3F178];
      v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v132 = [v131 lastPathComponent];
      v133 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v130 logMessage:v129 fromFile:v132 fromFunction:v133 fromLineNumber:153];

      v134 = PLLogCommon();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v129;
        _os_log_debug_impl(&dword_21A4C6000, v134, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v135 = *MEMORY[0x277D85DE8];
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_88 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_80(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7771 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_87(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7772 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_93(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7773 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_99(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7774 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7775 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_111(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7776 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_117(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7777 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7778 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_129(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7779 = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_135(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777A = result;
  return result;
}

uint64_t __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_141(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777B = result;
  return result;
}

- (id)dictFromNetPortInfo:(net_port_info *)info
{
  v20 = *MEMORY[0x277D85DE8];
  var1 = info->var1;
  if (var1)
  {
    inet_ntop(2, &info->var6, v19, 0x2Eu);
    p_var7 = &info->var7;
    v6 = 2;
  }

  else
  {
    if ((var1 & 2) == 0)
    {
      v19[0] = 0;
      v18[0] = 0;
      goto LABEL_7;
    }

    inet_ntop(30, &info->var6, v19, 0x2Eu);
    p_var7 = &info->var7;
    v6 = 30;
  }

  inet_ntop(v6, p_var7, v18, 0x2Eu);
LABEL_7:
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(info->var4) >> 16];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(info->var5) >> 16];
  if ((info->var1 & 4) != 0)
  {
    v11 = @"TCP";
  }

  else
  {
    v11 = @"UDP";
  }

  v12 = v11;
  v13 = objc_opt_new();
  [v13 setObject:v7 forKeyedSubscript:@"destIP"];
  [v13 setObject:v8 forKeyedSubscript:@"sourceIP"];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue")}];
  [v13 setObject:v14 forKeyedSubscript:@"destPort"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue")}];
  [v13 setObject:v15 forKeyedSubscript:@"sourcePort"];

  [v13 setObject:v12 forKeyedSubscript:@"protocol"];
  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getLookupKeys:(id)keys
{
  keysCopy = keys;
  v5 = objc_opt_new();
  v6 = [keysCopy objectForKeyedSubscript:@"destIP"];
  v7 = [keysCopy objectForKeyedSubscript:@"sourceIP"];
  v8 = [keysCopy objectForKeyedSubscript:@"destPort"];
  v9 = [keysCopy objectForKeyedSubscript:@"sourcePort"];
  v10 = [keysCopy objectForKeyedSubscript:@"protocol"];

  v11 = [(PLProcessPortMap *)self keyFromAddress:v6 withPort:v8 withSourceAddress:v7 withSourcePort:v9 withProtocol:v10];
  v12 = [(PLProcessPortMap *)self keyForlenientLookup:v6 withPort:v8 withProtocol:v10];
  v13 = [(PLProcessPortMap *)self keyForlocalPortLookup:v8 withProtocol:v10];
  v14 = [(PLProcessPortMap *)self keyForIPAddrLookup:v6 withSourceAddress:v7];
  [v5 setObject:v11 forKeyedSubscript:@"strictLookupKey"];
  [v5 setObject:v12 forKeyedSubscript:@"lenientLookupKey"];
  [v5 setObject:v13 forKeyedSubscript:@"localPortLookupKey"];
  [v5 setObject:v14 forKeyedSubscript:@"ipAddrLookupKey"];

  return v5;
}

- (void)clearPortMapInternal
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __40__PLProcessPortMap_clearPortMapInternal__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F77F8 != -1)
    {
      dispatch_once(&qword_2811F77F8, &block);
    }

    if (byte_2811F777C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Clearing Pid:ProcPID map, old one: %@", self->_strictLookupMap, block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap clearPortMapInternal]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:253];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  strictLookupMap = self->_strictLookupMap;
  self->_strictLookupMap = 0;

  lenientLookupMap = self->_lenientLookupMap;
  self->_lenientLookupMap = 0;

  localPortOnlyLookupMap = self->_localPortOnlyLookupMap;
  self->_localPortOnlyLookupMap = 0;

  ipAddrLookupMap = self->_ipAddrLookupMap;
  self->_ipAddrLookupMap = 0;

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLProcessPortMap_clearPortMapInternal__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777C = result;
  return result;
}

- (void)reconstructPortMapInternal
{
  v76 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7800 != -1)
    {
      dispatch_once(&qword_2811F7800, block);
    }

    if (byte_2811F777D == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting rebuilding of Port Map"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:262];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *out = 138412290;
        *&out[4] = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", out, 0xCu);
      }
    }
  }

  v72 = 0;
  v73 = 0;
  if (sysctlbyname("net.link.generic.system.port_used.list", 0, &v72, 0, 0))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_180;
      v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v71[4] = v10;
      if (qword_2811F7808 != -1)
      {
        dispatch_once(&qword_2811F7808, v71);
      }

      if (byte_2811F777E == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read buffer size, errno: %d", *__error()];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        lastPathComponent2 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
        [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:269];

        v16 = PLLogCommon();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
LABEL_14:

          goto LABEL_53;
        }

        *out = 138412290;
        *&out[4] = v11;
LABEL_55:
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", out, 0xCu);
        goto LABEL_14;
      }
    }

    goto LABEL_53;
  }

  v17 = malloc_type_malloc(v72, 0x947438E6uLL);
  if (v17)
  {
    v18 = v17;
    v73 = v72;
    if (sysctlbyname("net.link.generic.system.port_used.list", v17, &v73, 0, 0))
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_52;
      }

      v19 = objc_opt_class();
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_192;
      v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v69[4] = v19;
      if (qword_2811F7818 != -1)
      {
        dispatch_once(&qword_2811F7818, v69);
      }

      if (byte_2811F7780 != 1)
      {
        goto LABEL_52;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to populate buffer, errno: %d", *__error()];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent3 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v21 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:281];

      v25 = PLLogCommon();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *out = 138412290;
      *&out[4] = v20;
    }

    else
    {
      v31 = objc_opt_new();
      strictLookupMap = self->_strictLookupMap;
      self->_strictLookupMap = v31;

      v33 = objc_opt_new();
      lenientLookupMap = self->_lenientLookupMap;
      self->_lenientLookupMap = v33;

      v35 = objc_opt_new();
      localPortOnlyLookupMap = self->_localPortOnlyLookupMap;
      self->_localPortOnlyLookupMap = v35;

      v37 = objc_opt_new();
      ipAddrLookupMap = self->_ipAddrLookupMap;
      self->_ipAddrLookupMap = v37;

      if (*(v18 + 2))
      {
        if (v73 >= 172)
        {
          v39 = 1;
          v40 = v18;
          do
          {
            memset(out, 0, 37);
            uuid_unparse(v40 + 44, out);
            v41 = *(v40 + 25);
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40 + 121];
            v43 = objc_opt_new();
            v44 = [MEMORY[0x277CCABB0] numberWithInt:v41];
            [v43 setPid:v44];

            [v43 setProcessName:v42];
            if (!v41 && (*(v40 + 17) & 8) != 0 && ((bswap32(*(v40 + 30)) >> 16) - 319) <= 1u)
            {
              [v43 setProcessName:@"TimeSync"];
            }

            v45 = [(PLProcessPortMap *)self dictFromNetPortInfo:v40 + 32];
            v46 = [(PLProcessPortMap *)self getLookupKeys:v45];
            if (v46)
            {
              strictLookupMap = [(PLProcessPortMap *)self strictLookupMap];
              v48 = [v46 objectForKeyedSubscript:@"strictLookupKey"];
              [strictLookupMap setObject:v43 forKeyedSubscript:v48];

              lenientLookupMap = [(PLProcessPortMap *)self lenientLookupMap];
              v50 = [v46 objectForKeyedSubscript:@"lenientLookupKey"];
              [lenientLookupMap setObject:v43 forKeyedSubscript:v50];

              localPortOnlyLookupMap = [(PLProcessPortMap *)self localPortOnlyLookupMap];
              v52 = [v46 objectForKeyedSubscript:@"localPortLookupKey"];
              [localPortOnlyLookupMap setObject:v43 forKeyedSubscript:v52];

              ipAddrLookupMap = [(PLProcessPortMap *)self ipAddrLookupMap];
              v54 = [v46 objectForKeyedSubscript:@"ipAddrLookupKey"];
              [ipAddrLookupMap setObject:v43 forKeyedSubscript:v54];
            }

            if (v39 >= *(v18 + 2))
            {
              break;
            }

            v55 = (v40 + 312);
            v40 += 140;
            ++v39;
          }

          while (v55 <= &v18[v73]);
        }

        free(v18);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v56 = objc_opt_class();
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_208;
          v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v67[4] = v56;
          if (qword_2811F7828 != -1)
          {
            dispatch_once(&qword_2811F7828, v67);
          }

          if (byte_2811F7782 == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Completed rebuilding Port Map"];
            v57 = MEMORY[0x277D3F178];
            v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
            lastPathComponent4 = [v58 lastPathComponent];
            v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
            [v57 logMessage:v11 fromFile:lastPathComponent4 fromFunction:v60 fromLineNumber:340];

            v16 = PLLogCommon();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_14;
            }

            *out = 138412290;
            *&out[4] = v11;
            goto LABEL_55;
          }
        }

        goto LABEL_53;
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_52;
      }

      v61 = objc_opt_class();
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_198;
      v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v68[4] = v61;
      if (qword_2811F7820 != -1)
      {
        dispatch_once(&qword_2811F7820, v68);
      }

      if (byte_2811F7781 != 1)
      {
LABEL_52:
        free(v18);
        goto LABEL_53;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Port map is empty!"];
      v62 = MEMORY[0x277D3F178];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent5 = [v63 lastPathComponent];
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v62 logMessage:v20 fromFile:lastPathComponent5 fromFunction:v65 fromLineNumber:296];

      v25 = PLLogCommon();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

        goto LABEL_52;
      }

      *out = 138412290;
      *&out[4] = v20;
    }

    _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", out, 0xCu);
    goto LABEL_22;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_186;
    v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v70[4] = v26;
    if (qword_2811F7810 != -1)
    {
      dispatch_once(&qword_2811F7810, v70);
    }

    if (byte_2811F777F == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate buffer"];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent6 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v27 logMessage:v11 fromFile:lastPathComponent6 fromFunction:v30 fromLineNumber:275];

      v16 = PLLogCommon();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *out = 138412290;
      *&out[4] = v11;
      goto LABEL_55;
    }
  }

LABEL_53:
  v66 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777D = result;
  return result;
}

uint64_t __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_180(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777E = result;
  return result;
}

uint64_t __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777F = result;
  return result;
}

uint64_t __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_192(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7780 = result;
  return result;
}

uint64_t __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_198(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7781 = result;
  return result;
}

uint64_t __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_208(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7782 = result;
  return result;
}

@end