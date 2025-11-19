@interface PLBasebandEurekaMessage
- (BOOL)parseData:(id)a3;
- (PLBasebandEurekaMessage)initWithData:(id)a3;
- (id)actionSystemSelection;
- (id)callTypeString:(char *)a3;
- (id)cdmaExitString:(char *)a3;
- (id)cellUpdateCause:(char *)a3;
- (id)cellularSystemStringSystemSelection:(char *)a3;
- (id)convertCMCallConnectPayloadToDictionary:(_CMCallConnectPayload *)a3;
- (id)convertCMCallConnectV2PayloadToDictionary:(_NewCMCallConnectPayload *)a3;
- (id)convertCMCallOrigPayloadToDictionary:(_CMCallOrigPayload *)a3;
- (id)convertCMCallOrigV2PayloadToDictionary:(_NewCMCallOrigPayload *)a3;
- (id)estCauseLTE:(char *)a3;
- (id)establishmentCauseStringWCDMA:(char *)a3;
- (id)eventStringACC:(char *)a3;
- (id)eventStringOOS:(char *)a3;
- (id)eventSystemSelection;
- (id)iratHOStringLTE:(char *)a3;
- (id)iratStringLTE:(char *)a3;
- (id)pagingCauseWCDMA:(char *)a3;
- (id)pagingTypeWCDMA:(char *)a3;
- (id)payloadString;
- (id)procedureStringPSSI:(char *)a3;
- (id)ratStringPSSI:(char *)a3;
- (id)relCauseLTE:(char *)a3;
- (id)releaseCauseStringWCDMA:(char *)a3;
- (id)scanTypeStartWCDMA:(char *)a3;
- (id)scanTypeStopWCDMA:(char *)a3;
- (id)searchPhaseStringPSSI:(char *)a3;
- (id)smgmmEventType:(char *)a3;
- (id)soCallTypeString:(char *)a3;
- (id)stateStringACC:(char *)a3;
- (id)stateStringGSM:(char *)a3;
- (id)stateStringHSDPA:(char *)a3;
- (id)stateStringHSPAPLUS_DC:(char *)a3;
- (id)stateStringHSUPA:(char *)a3;
- (id)stateStringLTE:(char *)a3;
- (id)stateStringMotion:(char *)a3;
- (id)stateStringOOS:(char *)a3;
- (id)stateStringUTRANL1:(char *)a3;
- (id)stateStringWCDMA:(char *)a3;
- (id)stateSystemSelection;
- (id)termStringSystemSelection:(char *)a3;
- (void)logWithLogger:(id)a3;
@end

@implementation PLBasebandEurekaMessage

- (PLBasebandEurekaMessage)initWithData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBasebandEurekaMessage_initWithData___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F4648 != -1)
    {
      dispatch_once(&qword_2811F4648, block);
    }

    if (_MergedGlobals_1_22 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaMessage initWithData:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage initWithData:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:31];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = PLBasebandEurekaMessage;
  v12 = [(PLBasebandMessage *)&v18 initWithData:v4];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  v12->_header = 0;
  payload = v12->_payload;
  v12->_payload = 0;

  v13->_ssevent = 0;
  v13->_ssaction = 0;
  v13->_ssstate = 0;
  v13->_skip = 0;
  v15 = 0;
  if ([(PLBasebandEurekaMessage *)v13 parseData:v4])
  {
LABEL_10:
    v15 = v13;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __40__PLBasebandEurekaMessage_initWithData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_22 = result;
  return result;
}

- (BOOL)parseData:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __37__PLBasebandEurekaMessage_parseData___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v5;
    if (qword_2811F4650 != -1)
    {
      dispatch_once(&qword_2811F4650, &block);
    }

    if (byte_2811F4639 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaMessage parseData:]", block, v25, v26, v27, v28];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage parseData:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:48];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [v4 bytes];
  v13 = &v12[2 * (*v12 == 129)];
  self->_header = v13;
  v14 = (v13 + 14);
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v13 + 14 length:{-[PLBasebandEurekaMessage header](self, "header")[13]}];
  payload = self->_payload;
  self->_payload = v15;

  if (([(PLBasebandEurekaMessage *)self header][1] == 621 || [(PLBasebandEurekaMessage *)self header][1] == 622) && [(PLBasebandEurekaMessage *)self header][13] >= 4u)
  {
    self->_ssevent = v14;
    self->_ssaction = (v13 + 16);
    self->_ssstate = (v13 + 17);
    v14 = (v13 + 18);
  }

  v17 = v14 - [v4 bytes];
  v18 = [v4 length];
  if (v17 > v18)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = v14 - [v4 bytes];
      v23 = [v4 length];
      *buf = 134218498;
      v30 = v22;
      v31 = 2048;
      v32 = v23;
      v33 = 2080;
      v34 = "[PLBasebandEurekaMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17 <= v18;
}

uint64_t __37__PLBasebandEurekaMessage_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4639 = result;
  return result;
}

- (void)logWithLogger:(id)a3
{
  v285 = *MEMORY[0x277D85DE8];
  v282.receiver = self;
  v282.super_class = PLBasebandEurekaMessage;
  [(PLBasebandMessage *)&v282 logWithLogger:a3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F4658 != -1)
    {
      dispatch_once(&qword_2811F4658, block);
    }

    if (byte_2811F463A == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaMessage logWithLogger:]"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:92];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v284 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLBasebandEurekaMessage *)self payloadString];
  [(PLBasebandEurekaMessage *)self setSkip:0];
  v12 = objc_alloc_init(PLBBEurekaEventMsg);
  v13 = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:v13];

  [(PLBBEurekaEventMsg *)v12 setEventCode:[(PLBasebandEurekaMessage *)self eventCode]];
  [(PLBBEurekaEventMsg *)v12 setError:&stru_282B650A0];
  v14 = [(PLBasebandMessage *)self seqNum];
  v15 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBEurekaEventMsg *)v12 setHeaderWithSeqNum:v14 andDate:v15 andTimeCal:?];

  if (v11)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v11];
    [(PLBBEurekaEventMsg *)v12 setPayload:v16];
  }

  v17 = [(PLBasebandEurekaMessage *)self payload];
  v18 = [v17 bytes];

  if (!v18)
  {
    [(PLBBEurekaEventMsg *)v12 setError:@"payloadIsNil;"];
    goto LABEL_259;
  }

  v19 = [(PLBasebandEurekaMessage *)self header][1];
  if (v19 > 2010)
  {
    if (v19 > 2287)
    {
      if (v19 <= 2493)
      {
        if (v19 > 2471)
        {
          if (v19 != 2472)
          {
            if (v19 != 2473)
            {
              goto LABEL_117;
            }

            v88 = [(PLBasebandEurekaMessage *)self payload];
            v89 = [v88 bytes];

            v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v89[1]];
            v90 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *v89];
            v91 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v89[2]];
            [(PLBBEurekaEventMsg *)v12 logEventCMCallEventEndWithId:v23 andNumCalls:v90 andClientId:v91];
            [(PLBasebandEurekaMessage *)self setSkip:1];

            goto LABEL_258;
          }

          v112 = [(PLBasebandEurekaMessage *)self payload];
          v113 = [v112 bytes];

          v23 = [(PLBasebandEurekaMessage *)self convertCMCallConnectV2PayloadToDictionary:v113];
          v114 = objc_alloc(MEMORY[0x277CCACA8]);
          v115 = [(__CFString *)v23 objectForKeyedSubscript:@"callId"];
          v41 = [v114 initWithString:v115];

          v116 = objc_alloc(MEMORY[0x277CCACA8]);
          v117 = [(__CFString *)v23 objectForKeyedSubscript:@"callType"];
          v44 = [v116 initWithString:v117];

          v118 = objc_alloc(MEMORY[0x277CCACA8]);
          v119 = [(__CFString *)v23 objectForKeyedSubscript:@"systemMode"];
          v47 = [v118 initWithString:v119];

          v120 = objc_alloc(MEMORY[0x277CCACA8]);
          v121 = [(__CFString *)v23 objectForKeyedSubscript:@"clientId"];
          v60 = [v120 initWithString:v121];

          [(PLBBEurekaEventMsg *)v12 logEventCMCallEventConnWithId:v41 andCallType:v44 andSysMode:v47 andClientId:v60];
        }

        else
        {
          if (v19 == 2288)
          {
            goto LABEL_259;
          }

          if (v19 != 2471)
          {
            goto LABEL_117;
          }

          v48 = [(PLBasebandEurekaMessage *)self payload];
          v49 = [v48 bytes];

          v23 = [(PLBasebandEurekaMessage *)self convertCMCallOrigV2PayloadToDictionary:v49];
          v50 = objc_alloc(MEMORY[0x277CCACA8]);
          v51 = MEMORY[0x277CCACA8];
          v52 = [(__CFString *)v23 objectForKeyedSubscript:@"callId"];
          v53 = [v51 stringWithFormat:@"%@", v52];
          v41 = [v50 initWithString:v53];

          v54 = objc_alloc(MEMORY[0x277CCACA8]);
          v55 = [(__CFString *)v23 objectForKeyedSubscript:@"callType"];
          v44 = [v54 initWithString:v55];

          v56 = objc_alloc(MEMORY[0x277CCACA8]);
          v57 = [(__CFString *)v23 objectForKeyedSubscript:@"serviceType"];
          v47 = [v56 initWithString:v57];

          v58 = objc_alloc(MEMORY[0x277CCACA8]);
          v59 = [(__CFString *)v23 objectForKeyedSubscript:@"clientId"];
          v60 = [v58 initWithString:v59];

          [(PLBBEurekaEventMsg *)v12 logEventCMCallEventOrigWithId:v41 andCallType:v44 andSrvType:v47 andClientId:v60];
        }

        [(PLBasebandEurekaMessage *)self setSkip:1];

LABEL_158:
LABEL_191:

        goto LABEL_258;
      }

      if ((v19 - 2549) > 0xB || ((1 << (v19 + 11)) & 0xFC1) == 0)
      {
        if (v19 == 2494)
        {
          if ([(PLBasebandEurekaMessage *)self header][13] > 1u)
          {
            goto LABEL_259;
          }

          goto LABEL_222;
        }

        if (v19 != 2521)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      if (v19 > 2272)
      {
        if (v19 <= 2275)
        {
          if (v19 == 2273)
          {
            if ([(PLBasebandEurekaMessage *)self header][13] <= 0xBu)
            {
              if (![MEMORY[0x277D3F180] debugEnabled])
              {
                goto LABEL_222;
              }

              v139 = objc_opt_class();
              v270[0] = MEMORY[0x277D85DD0];
              v270[1] = 3221225472;
              v270[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_257;
              v270[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v270[4] = v139;
              if (qword_2811F46B0 != -1)
              {
                dispatch_once(&qword_2811F46B0, v270);
              }

              if (byte_2811F4645 != 1)
              {
                goto LABEL_222;
              }

              v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_MAV_LMAPO_SD"];
              v140 = MEMORY[0x277D3F178];
              v141 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
              v142 = [v141 lastPathComponent];
              v143 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
              [v140 logMessage:v62 fromFile:v142 fromFunction:v143 fromLineNumber:879];

              v67 = PLLogCommon();
              if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_221;
              }

              *buf = 138412290;
              v284 = v62;
              goto LABEL_220;
            }

            v198 = [(PLBasebandEurekaMessage *)self payload];
            v199 = [v198 bytes];

            if (*(v199 + 8) == 1)
            {
              v23 = @"ACC_FSM";
              [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"STATE_MACHINE_ID" andWithVal:@"ACC_FSM"];
              v41 = [(PLBasebandEurekaMessage *)self stateStringACC:v199 + 9];
              v200 = [(PLBasebandEurekaMessage *)self stateStringACC:v199 + 10];
              v201 = [(PLBasebandEurekaMessage *)self stateStringACC:v199 + 11];
            }

            else
            {
              if (*(v199 + 8))
              {
                v23 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:?];
                v32 = @"STATE_MACHINE_ID";
                goto LABEL_257;
              }

              v23 = @"OOS_FSM";
              [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"STATE_MACHINE_ID" andWithVal:@"OOS_FSM"];
              v41 = [(PLBasebandEurekaMessage *)self stateStringOOS:v199 + 9];
              v200 = [(PLBasebandEurekaMessage *)self eventStringOOS:v199 + 10];
              v201 = [(PLBasebandEurekaMessage *)self stateStringOOS:v199 + 11];
            }

            v229 = v201;
            [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"CURRENT_STATE" andWithVal:v41];
            [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"EVENT" andWithVal:v200];
            [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"NEXT_STATE" andWithVal:v229];

            goto LABEL_191;
          }

          if (v19 == 2274)
          {
            if ([(PLBasebandEurekaMessage *)self header][13] > 3u)
            {
              v133 = [(PLBasebandEurekaMessage *)self payload];
              v134 = [v133 bytes];

              v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*v134];
              v41 = [(__CFString *)v23 stringValue];
              v79 = @"InActivity_Time";
              goto LABEL_190;
            }

            goto LABEL_222;
          }

          if ([(PLBasebandEurekaMessage *)self header][13] <= 0xBu)
          {
            goto LABEL_222;
          }

          v69 = [(PLBasebandEurekaMessage *)self payload];
          v70 = [v69 bytes];

          v71 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v70[1]];
          v72 = [v71 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"On_duration_timer" andWithVal:v72];

          v73 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v70[2]];
          v74 = [v73 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"Inactivity_timer" andWithVal:v74];

          v75 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v70[3]];
          v76 = [v75 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"Short_drx_cycle" andWithVal:v76];

          v77 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v70[4]];
          v78 = [v77 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"Short_drx_cycle_timer" andWithVal:v78];

          v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v70[5]];
          v41 = [(__CFString *)v23 stringValue];
          v79 = @"Long_drx_cycle";
        }

        else
        {
          if (v19 <= 2283)
          {
            if (v19 == 2276)
            {
              if (![(PLBasebandEurekaMessage *)self header][13])
              {
                goto LABEL_222;
              }

              v123 = [(PLBasebandEurekaMessage *)self payload];
              v28 = -[PLBasebandEurekaMessage estCauseLTE:](self, "estCauseLTE:", [v123 bytes]);

              v29 = @"est_cause";
            }

            else
            {
              if (v19 != 2279)
              {
                goto LABEL_117;
              }

              if (![(PLBasebandEurekaMessage *)self header][13])
              {
                goto LABEL_222;
              }

              v27 = [(PLBasebandEurekaMessage *)self payload];
              v28 = -[PLBasebandEurekaMessage relCauseLTE:](self, "relCauseLTE:", [v27 bytes]);

              v29 = @"rel_cause";
            }

            goto LABEL_131;
          }

          if (v19 != 2284)
          {
            if (v19 != 2287)
            {
              goto LABEL_117;
            }

            if (![(PLBasebandEurekaMessage *)self header][13])
            {
              goto LABEL_222;
            }

            v98 = [(PLBasebandEurekaMessage *)self payload];
            v99 = [v98 bytes];

            v100 = [MEMORY[0x277CCAB68] string];
            v23 = v100;
            if (*v99)
            {
              v101 = @"Start";
            }

            else
            {
              v101 = @"Stop";
            }

            [(__CFString *)v100 appendFormat:@"%@", v101];
            v32 = @"State";
LABEL_257:
            [(PLBBEurekaEventMsg *)v12 addPairWithKey:v32 andWithVal:v23];
            goto LABEL_258;
          }

          if ([(PLBasebandEurekaMessage *)self header][13] <= 7u)
          {
            if (![MEMORY[0x277D3F180] debugEnabled])
            {
              goto LABEL_222;
            }

            v124 = objc_opt_class();
            v272[0] = MEMORY[0x277D85DD0];
            v272[1] = 3221225472;
            v272[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_212;
            v272[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v272[4] = v124;
            if (qword_2811F46A0 != -1)
            {
              dispatch_once(&qword_2811F46A0, v272);
            }

            if (byte_2811F4643 != 1)
            {
              goto LABEL_222;
            }

            v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_MAV_PSSI_SCAN"];
            v125 = MEMORY[0x277D3F178];
            v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
            v127 = [v126 lastPathComponent];
            v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
            [v125 logMessage:v62 fromFile:v127 fromFunction:v128 fromLineNumber:816];

            v67 = PLLogCommon();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_221;
            }

            *buf = 138412290;
            v284 = v62;
            goto LABEL_220;
          }

          v179 = [(PLBasebandEurekaMessage *)self payload];
          v180 = [v179 bytes];

          v181 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v180];
          v182 = [v181 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"CUR_STEP" andWithVal:v182];

          v183 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v180[1]];
          v184 = [v183 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"PSSI_SEARCH_PHASE" andWithVal:v184];

          v185 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v180[2]];
          v186 = [v185 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"MCC" andWithVal:v186];

          v187 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v180[4]];
          v188 = [v187 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"MNC" andWithVal:v188];

          v189 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v180[6]];
          v190 = [v189 stringValue];
          [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"RAT" andWithVal:v190];

          v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v180[7]];
          v41 = [(__CFString *)v23 stringValue];
          v79 = @"PROCEDURE";
        }

LABEL_190:
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:v79 andWithVal:v41];
        goto LABEL_191;
      }

      if (v19 <= 2259)
      {
        if (v19 == 2011)
        {
          if ([(PLBasebandEurekaMessage *)self header][13] < 3u)
          {
            goto LABEL_259;
          }

          v154 = [(PLBasebandEurekaMessage *)self payload];
          v155 = [v154 bytes];

          v23 = [(PLBasebandEurekaMessage *)self stateStringWCDMA:v155];
          v24 = [(PLBasebandEurekaMessage *)self stateStringWCDMA:v155 + 1];
          v156 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v155 + 2)];
          v26 = [v156 stringValue];

          [(PLBBEurekaEventMsg *)v12 logEventForwardUTRANRRCNextStateAs:v24 andCurrStateAs:v23 andRateAs:v26];
          goto LABEL_161;
        }

        if (v19 != 2131)
        {
          if (v19 == 2258)
          {
            goto LABEL_259;
          }

          goto LABEL_117;
        }

        if (![(PLBasebandEurekaMessage *)self header][13])
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_222;
          }

          v224 = objc_opt_class();
          v273[0] = MEMORY[0x277D85DD0];
          v273[1] = 3221225472;
          v273[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_203;
          v273[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v273[4] = v224;
          if (qword_2811F4698 != -1)
          {
            dispatch_once(&qword_2811F4698, v273);
          }

          if (byte_2811F4642 != 1)
          {
            goto LABEL_222;
          }

          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_UTRAN_L1_STATE"];
          v225 = MEMORY[0x277D3F178];
          v226 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
          v227 = [v226 lastPathComponent];
          v228 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
          [v225 logMessage:v62 fromFile:v227 fromFunction:v228 fromLineNumber:802];

          v67 = PLLogCommon();
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_221;
          }

          *buf = 138412290;
          v284 = v62;
          goto LABEL_220;
        }

        v144 = [(PLBasebandEurekaMessage *)self payload];
        v145 = [v144 bytes];

        v23 = [(PLBasebandEurekaMessage *)self stateStringUTRANL1:v145];
        v32 = @"currState";
        goto LABEL_257;
      }

      if (v19 != 2260)
      {
        if (v19 == 2265)
        {
          goto LABEL_259;
        }

        if (v19 != 2272)
        {
          goto LABEL_117;
        }

        if ([(PLBasebandEurekaMessage *)self header][13] <= 0xBu)
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_222;
          }

          v83 = objc_opt_class();
          v271[0] = MEMORY[0x277D85DD0];
          v271[1] = 3221225472;
          v271[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_233;
          v271[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v271[4] = v83;
          if (qword_2811F46A8 != -1)
          {
            dispatch_once(&qword_2811F46A8, v271);
          }

          if (byte_2811F4644 != 1)
          {
            goto LABEL_222;
          }

          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_MAV_MOTION_SRV"];
          v84 = MEMORY[0x277D3F178];
          v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
          v86 = [v85 lastPathComponent];
          v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
          [v84 logMessage:v62 fromFile:v86 fromFunction:v87 fromLineNumber:847];

          v67 = PLLogCommon();
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_221;
          }

          *buf = 138412290;
          v284 = v62;
LABEL_220:
          _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
LABEL_221:

          goto LABEL_222;
        }

        v193 = [(PLBasebandEurekaMessage *)self payload];
        v194 = [v193 bytes];

        v195 = [(PLBasebandEurekaMessage *)self stateStringMotion:v194 + 8];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"RAW_MOTION_STATE" andWithVal:v195];

        v196 = [(PLBasebandEurekaMessage *)self stateStringMotion:v194 + 9];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"FILTERED_MOTION_STATE" andWithVal:v196];

        v197 = *(v194 + 10);
        switch(v197)
        {
          case 1:
            v23 = @"CM";
            break;
          case 4:
            v23 = @"GPS";
            break;
          case 2:
            v23 = @"SD";
            break;
          default:
            v23 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:*(v194 + 10)];
            break;
        }

        v32 = @"ACTIVE_CLIENT_BIT_MASK";
        goto LABEL_257;
      }
    }

    v33 = MEMORY[0x277CCACA8];
    v28 = [(PLBasebandEurekaMessage *)self payload];
    v34 = [v33 stringWithFormat:@"%@", v28];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"payload" andWithVal:v34];
LABEL_39:

LABEL_132:
    goto LABEL_259;
  }

  if (v19 > 1130)
  {
    if (v19 <= 1549)
    {
      if (v19 <= 1495)
      {
        if ((v19 - 1131) < 2 || v19 == 1210)
        {
          goto LABEL_259;
        }

        goto LABEL_117;
      }

      if ((v19 - 1496) < 2)
      {
        goto LABEL_259;
      }

      if (v19 != 1549)
      {
        goto LABEL_117;
      }

      if (![(PLBasebandEurekaMessage *)self header][13])
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_222;
        }

        v214 = objc_opt_class();
        v278[0] = MEMORY[0x277D85DD0];
        v278[1] = 3221225472;
        v278[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_124;
        v278[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v278[4] = v214;
        if (qword_2811F4670 != -1)
        {
          dispatch_once(&qword_2811F4670, v278);
        }

        if (byte_2811F463D != 1)
        {
          goto LABEL_222;
        }

        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_WCDMA_BPLMN_SCAN_START"];
        v215 = MEMORY[0x277D3F178];
        v216 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
        v217 = [v216 lastPathComponent];
        v218 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
        [v215 logMessage:v62 fromFile:v217 fromFunction:v218 fromLineNumber:555];

        v67 = PLLogCommon();
        if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_221;
        }

        *buf = 138412290;
        v284 = v62;
        goto LABEL_220;
      }

      v23 = [(PLBasebandEurekaMessage *)self payload];
      v68 = [(PLBasebandEurekaMessage *)self scanTypeStartWCDMA:[(__CFString *)v23 bytes]];
    }

    else
    {
      if (v19 > 1614)
      {
        if (v19 <= 1969)
        {
          if (v19 == 1615)
          {
            goto LABEL_259;
          }

          if (v19 != 1924)
          {
            goto LABEL_117;
          }

          if ([(PLBasebandEurekaMessage *)self header][13] <= 0xFu)
          {
            goto LABEL_222;
          }

          v30 = [(PLBasebandEurekaMessage *)self payload];
          v31 = [v30 bytes];

          v23 = [(PLBasebandEurekaMessage *)self stateStringHSPAPLUS_DC:v31 + 8];
          v32 = @"Action";
          goto LABEL_257;
        }

        if (v19 == 1970)
        {
          if (![(PLBasebandEurekaMessage *)self header][13])
          {
            if (![MEMORY[0x277D3F180] debugEnabled])
            {
              goto LABEL_222;
            }

            v209 = objc_opt_class();
            v275[0] = MEMORY[0x277D85DD0];
            v275[1] = 3221225472;
            v275[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_185;
            v275[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v275[4] = v209;
            if (qword_2811F4688 != -1)
            {
              dispatch_once(&qword_2811F4688, v275);
            }

            if (byte_2811F4640 != 1)
            {
              goto LABEL_222;
            }

            v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_LTE_RRC_PLMN_SEARCH_START"];
            v210 = MEMORY[0x277D3F178];
            v211 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
            v212 = [v211 lastPathComponent];
            v213 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
            [v210 logMessage:v62 fromFile:v212 fromFunction:v213 fromLineNumber:735];

            v67 = PLLogCommon();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_221;
            }

            *buf = 138412290;
            v284 = v62;
            goto LABEL_220;
          }
        }

        else
        {
          if (v19 != 1971)
          {
            goto LABEL_117;
          }

          if (![(PLBasebandEurekaMessage *)self header][13])
          {
            if (![MEMORY[0x277D3F180] debugEnabled])
            {
              goto LABEL_222;
            }

            v93 = objc_opt_class();
            v274[0] = MEMORY[0x277D85DD0];
            v274[1] = 3221225472;
            v274[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_194;
            v274[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v274[4] = v93;
            if (qword_2811F4690 != -1)
            {
              dispatch_once(&qword_2811F4690, v274);
            }

            if (byte_2811F4641 != 1)
            {
              goto LABEL_222;
            }

            v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_LTE_RRC_PLMN_SEARCH_ENDED"];
            v94 = MEMORY[0x277D3F178];
            v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
            v96 = [v95 lastPathComponent];
            v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
            [v94 logMessage:v62 fromFile:v96 fromFunction:v97 fromLineNumber:750];

            v67 = PLLogCommon();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_221;
            }

            *buf = 138412290;
            v284 = v62;
            goto LABEL_220;
          }
        }

        v122 = [(PLBasebandEurekaMessage *)self payload];
        v28 = -[PLBasebandEurekaMessage iratStringLTE:](self, "iratStringLTE:", [v122 bytes]);

        v29 = @"RAT";
LABEL_131:
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:v29 andWithVal:v28];
        goto LABEL_132;
      }

      if (v19 != 1550)
      {
        if (v19 != 1606)
        {
          if (v19 != 1614)
          {
            goto LABEL_117;
          }

          if ([(PLBasebandEurekaMessage *)self header][13] <= 1u)
          {
            if (![MEMORY[0x277D3F180] debugEnabled])
            {
              goto LABEL_222;
            }

            v61 = objc_opt_class();
            v276[0] = MEMORY[0x277D85DD0];
            v276[1] = 3221225472;
            v276[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_155;
            v276[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v276[4] = v61;
            if (qword_2811F4680 != -1)
            {
              dispatch_once(&qword_2811F4680, v276);
            }

            if (byte_2811F463F != 1)
            {
              goto LABEL_222;
            }

            v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_LTE_RRC_PAGING_DRX_CYCLE"];
            v63 = MEMORY[0x277D3F178];
            v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
            v65 = [v64 lastPathComponent];
            v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
            [v63 logMessage:v62 fromFile:v65 fromFunction:v66 fromLineNumber:648];

            v67 = PLLogCommon();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_221;
            }

            *buf = 138412290;
            v284 = v62;
            goto LABEL_220;
          }

          v191 = [(PLBasebandEurekaMessage *)self payload];
          v192 = [v191 bytes];

          v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*v192];
          v41 = [(__CFString *)v23 stringValue];
          v79 = @"drx_cycle";
          goto LABEL_190;
        }

        v129 = [(PLBasebandEurekaMessage *)self header][13];
        v130 = objc_alloc(MEMORY[0x277CCACA8]);
        if (!v129)
        {
LABEL_176:
          v28 = [(PLBasebandEurekaMessage *)self tooShortErrorString];
          v34 = [v130 initWithString:v28];
          [(PLBBEurekaEventMsg *)v12 setError:v34];
          goto LABEL_39;
        }

        v131 = [(PLBasebandEurekaMessage *)self payload];
        v132 = -[PLBasebandEurekaMessage stateStringLTE:](self, "stateStringLTE:", [v131 bytes]);
        v23 = [v130 initWithString:v132];

        [(PLBBEurekaEventMsg *)v12 logEventForwardLTERRCStateAs:v23];
        [(PLBasebandEurekaMessage *)self setSkip:1];
LABEL_258:

        goto LABEL_259;
      }

      if (![(PLBasebandEurekaMessage *)self header][13])
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_222;
        }

        v219 = objc_opt_class();
        v277[0] = MEMORY[0x277D85DD0];
        v277[1] = 3221225472;
        v277[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_130;
        v277[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v277[4] = v219;
        if (qword_2811F4678 != -1)
        {
          dispatch_once(&qword_2811F4678, v277);
        }

        if (byte_2811F463E != 1)
        {
          goto LABEL_222;
        }

        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_WCDMA_BPLMN_SCAN_ENDED"];
        v220 = MEMORY[0x277D3F178];
        v221 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
        v222 = [v221 lastPathComponent];
        v223 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
        [v220 logMessage:v62 fromFile:v222 fromFunction:v223 fromLineNumber:569];

        v67 = PLLogCommon();
        if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_221;
        }

        *buf = 138412290;
        v284 = v62;
        goto LABEL_220;
      }

      v23 = [(PLBasebandEurekaMessage *)self payload];
      v68 = [(PLBasebandEurekaMessage *)self scanTypeStopWCDMA:[(__CFString *)v23 bytes]];
    }

LABEL_189:
    v41 = v68;
    v79 = @"scan_type";
    goto LABEL_190;
  }

  if (v19 <= 620)
  {
    v20 = (v19 - 530);
    if (v20 <= 0x29)
    {
      if (((1 << (v19 - 18)) & 0x80000000DLL) != 0)
      {
        goto LABEL_259;
      }

      if (v20 == 41)
      {
        if ([(PLBasebandEurekaMessage *)self header][13] > 2u)
        {
          v21 = [(PLBasebandEurekaMessage *)self payload];
          v22 = [v21 bytes];

          v23 = [(PLBasebandEurekaMessage *)self stateStringWCDMA:v22];
          v24 = [(PLBasebandEurekaMessage *)self stateStringWCDMA:v22 + 1];
          v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(v22 + 2)];
          v26 = [v25 stringValue];

          [(PLBBEurekaEventMsg *)v12 logEventForwardWCDMARRCPrevStateAs:v23 andCurrState:v24 andRate:v26];
LABEL_161:
          [(PLBasebandEurekaMessage *)self setSkip:1];

          goto LABEL_258;
        }

LABEL_175:
        v130 = objc_alloc(MEMORY[0x277CCACA8]);
        goto LABEL_176;
      }
    }

    if (v19 == 389)
    {
      if ([(PLBasebandEurekaMessage *)self header][13])
      {
        v178 = [(PLBasebandEurekaMessage *)self payload];
        v28 = -[PLBasebandEurekaMessage stateStringGSM:](self, "stateStringGSM:", [v178 bytes]);

        [(PLBBEurekaEventMsg *)v12 logEventForwardGSML1StateWith:v28];
        [(PLBasebandEurekaMessage *)self setSkip:1];
        goto LABEL_132;
      }

      goto LABEL_175;
    }

    if (v19 == 424)
    {
      v92 = [(PLBasebandEurekaMessage *)self payload];
      v28 = -[PLBasebandEurekaMessage cdmaExitString:](self, "cdmaExitString:", [v92 bytes]);

      v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v28];
      [(PLBBEurekaEventMsg *)v12 logEventPointCMExitCodeWithState:v34];
      [(PLBasebandEurekaMessage *)self setSkip:1];
      goto LABEL_39;
    }

    goto LABEL_117;
  }

  if (v19 > 629)
  {
    if (v19 == 630)
    {
      v146 = [(PLBasebandEurekaMessage *)self payload];
      v147 = [v146 bytes];

      v23 = [(PLBasebandEurekaMessage *)self convertCMCallConnectPayloadToDictionary:v147];
      v148 = objc_alloc(MEMORY[0x277CCACA8]);
      v149 = [(__CFString *)v23 objectForKeyedSubscript:@"callId"];
      v41 = [v148 initWithString:v149];

      v150 = objc_alloc(MEMORY[0x277CCACA8]);
      v151 = [(__CFString *)v23 objectForKeyedSubscript:@"callType"];
      v44 = [v150 initWithString:v151];

      v152 = objc_alloc(MEMORY[0x277CCACA8]);
      v153 = [(__CFString *)v23 objectForKeyedSubscript:@"systemMode"];
      v47 = [v152 initWithString:v153];

      [(PLBBEurekaEventMsg *)v12 logEventCMCallEventConnWithId:v41 andCallType:v44 andSysMode:v47];
      goto LABEL_157;
    }

    if (v19 == 631)
    {
      v135 = [(PLBasebandEurekaMessage *)self payload];
      v136 = [v135 bytes];

      v137 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v136[1]];
      v138 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", *v136];
      [(PLBBEurekaEventMsg *)v12 logEventCMCallEventEndWithId:v137 andNumCalls:v138];
      [(PLBasebandEurekaMessage *)self setSkip:1];

      goto LABEL_259;
    }

    if (v19 != 1130)
    {
LABEL_117:
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v105 = objc_opt_class();
        v269[0] = MEMORY[0x277D85DD0];
        v269[1] = 3221225472;
        v269[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_284;
        v269[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v269[4] = v105;
        if (qword_2811F46B8 != -1)
        {
          dispatch_once(&qword_2811F46B8, v269);
        }

        if (byte_2811F4646 == 1)
        {
          v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Eureka Msg not processed"];
          v107 = MEMORY[0x277D3F178];
          v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
          v109 = [v108 lastPathComponent];
          v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
          [v107 logMessage:v106 fromFile:v109 fromFunction:v110 fromLineNumber:955];

          v111 = PLLogCommon();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v284 = v106;
            _os_log_debug_impl(&dword_21A4C6000, v111, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLBBEurekaEventMsg *)v12 logEventNoneEventNotProcessed];
      goto LABEL_259;
    }

    if ([(PLBasebandEurekaMessage *)self header][13] > 2u)
    {
      v80 = [(PLBasebandEurekaMessage *)self payload];
      v81 = [v80 bytes];

      v82 = [(PLBasebandEurekaMessage *)self stateStringHSDPA:v81];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"HS_Operation" andWithVal:v82];

      v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*v81];
      v41 = [(__CFString *)v23 stringValue];
      v79 = @"PSC_HS_Cell";
      goto LABEL_190;
    }

LABEL_222:
    v23 = [(PLBasebandEurekaMessage *)self tooShortErrorString];
    [(PLBBEurekaEventMsg *)v12 setError:v23];
    goto LABEL_258;
  }

  if ((v19 - 621) >= 2)
  {
    if (v19 != 625)
    {
      if (v19 == 629)
      {
        v35 = [(PLBasebandEurekaMessage *)self payload];
        v36 = [v35 bytes];

        v23 = [(PLBasebandEurekaMessage *)self convertCMCallOrigPayloadToDictionary:v36];
        v37 = objc_alloc(MEMORY[0x277CCACA8]);
        v38 = MEMORY[0x277CCACA8];
        v39 = [(__CFString *)v23 objectForKeyedSubscript:@"callId"];
        v40 = [v38 stringWithFormat:@"%@", v39];
        v41 = [v37 initWithString:v40];

        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v43 = [(__CFString *)v23 objectForKeyedSubscript:@"callType"];
        v44 = [v42 initWithString:v43];

        v45 = objc_alloc(MEMORY[0x277CCACA8]);
        v46 = [(__CFString *)v23 objectForKeyedSubscript:@"serviceType"];
        v47 = [v45 initWithString:v46];

        [(PLBBEurekaEventMsg *)v12 logEventCMCallEventOrigWithId:v41 andCallType:v44 andSrvType:v47];
LABEL_157:
        [(PLBasebandEurekaMessage *)self setSkip:1];
        goto LABEL_158;
      }

      goto LABEL_117;
    }

    if ([(PLBasebandEurekaMessage *)self header][13] <= 2u)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_222;
      }

      v157 = objc_opt_class();
      v279[0] = MEMORY[0x277D85DD0];
      v279[1] = 3221225472;
      v279[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_115;
      v279[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v279[4] = v157;
      if (qword_2811F4668 != -1)
      {
        dispatch_once(&qword_2811F4668, v279);
      }

      if (byte_2811F463C != 1)
      {
        goto LABEL_222;
      }

      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad length PL_EVENT_WCDMA_DRX_CYCLE"];
      v158 = MEMORY[0x277D3F178];
      v159 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
      v160 = [v159 lastPathComponent];
      v161 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
      [v158 logMessage:v62 fromFile:v160 fromFunction:v161 fromLineNumber:540];

      v67 = PLLogCommon();
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_221;
      }

      *buf = 138412290;
      v284 = v62;
      goto LABEL_220;
    }

    v202 = [(PLBasebandEurekaMessage *)self payload];
    v203 = [v202 bytes];

    v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v203 + 2)];
    v68 = [(__CFString *)v23 stringValue];
    goto LABEL_189;
  }

  if ([(PLBasebandEurekaMessage *)self header][13] <= 3u)
  {
    v102 = objc_alloc(MEMORY[0x277CCACA8]);
    v103 = [(PLBasebandEurekaMessage *)self tooShortErrorString];
    v104 = [v102 initWithString:v103];
    [(PLBBEurekaEventMsg *)v12 setError:v104];
LABEL_244:

    goto LABEL_245;
  }

  v162 = [(PLBasebandEurekaMessage *)self eventSystemSelection];
  v163 = [(PLBasebandEurekaMessage *)self actionSystemSelection];
  v164 = [(PLBasebandEurekaMessage *)self stateSystemSelection];
  [(PLBBEurekaEventMsg *)v12 setSDEventActionCodeWith:v162 andSDAction:v163 andSDState:v164];

  v165 = [(PLBasebandEurekaMessage *)self payload];
  v166 = [v165 bytes];
  v167 = (v166 + 4);

  v168 = *[(PLBasebandEurekaMessage *)self ssaction];
  if (v168 <= 2)
  {
    if (v168)
    {
      if (v168 == 1)
      {
        v234 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 4)];
        v235 = [v234 stringValue];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"band" andWithVal:v235];

        v236 = objc_alloc(MEMORY[0x277CCACA8]);
        v237 = [(PLBasebandEurekaMessage *)self cellularSystemStringSystemSelection:v166 + 5];
        v238 = [v236 initWithString:v237];

        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"block_cellular_system" andWithVal:v238];
        v167 = (v166 + 8);
        v239 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*(v166 + 6)];
        v240 = [v239 stringValue];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"CDMA_Channel" andWithVal:v240];

        goto LABEL_238;
      }

      v169 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 4)];
      v170 = [v169 stringValue];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"band" andWithVal:v170];

      v171 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 5)];
      v172 = [v171 stringValue];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"sys" andWithVal:v172];

      v173 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 6)];
      v174 = [v173 stringValue];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"is_amps_2nd_cch" andWithVal:v174];

      v167 = (v166 + 8);
      v175 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 7)];
      v176 = [v175 stringValue];
      v177 = @"max_redirect_delay";
    }

    else
    {
      v167 = (v166 + 8);
      v175 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*(v166 + 4)];
      v176 = [v175 stringValue];
      v177 = @"timer";
    }

    goto LABEL_228;
  }

  switch(v168)
  {
    case 3u:
      v230 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 4)];
      v231 = [v230 stringValue];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"band" andWithVal:v231];

      v232 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 5)];
      v233 = [v232 stringValue];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"acq_mode" andWithVal:v233];

      v167 = (v166 + 8);
      v175 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*(v166 + 6)];
      v176 = [v175 stringValue];
      v177 = @"channel";
LABEL_228:
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:v177 andWithVal:v176];

      break;
    case 0xBu:
      if ([MEMORY[0x277D3F180] fullMode])
      {
        v241 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v167];
        v242 = [v241 stringValue];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"plmn1" andWithVal:v242];
      }

      if ([MEMORY[0x277D3F180] fullMode])
      {
        v243 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 5)];
        v244 = [v243 stringValue];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"plmn2" andWithVal:v244];
      }

      if ([MEMORY[0x277D3F180] fullMode])
      {
        v245 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 6)];
        v246 = [v245 stringValue];
        [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"plmn3" andWithVal:v246];
      }

      v206 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 7)];
      v207 = [v206 stringValue];
      v208 = @"net_sel_mode";
      goto LABEL_237;
    case 0xCu:
      v204 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 4)];
      v205 = [v204 stringValue];
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"mode_pref" andWithVal:v205];

      v206 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(v166 + 5)];
      v207 = [v206 stringValue];
      v208 = @"srv_domain_pref";
LABEL_237:
      [(PLBBEurekaEventMsg *)v12 addPairWithKey:v208 andWithVal:v207];

      v167 = (v166 + 8);
      break;
  }

LABEL_238:
  v247 = *[(PLBasebandEurekaMessage *)self ssevent];
  if (v247 == 906 || v247 == 413)
  {
    v259 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v167];
    v260 = [v259 stringValue];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"reason" andWithVal:v260];

    v103 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v167];
    v104 = [v103 stringValue];
    v258 = @"term";
    goto LABEL_243;
  }

  if (v247 == 5)
  {
    v248 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v167];
    v249 = [v248 stringValue];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"reason" andWithVal:v249];

    v250 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v167[1]];
    v251 = [v250 stringValue];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"orig_mode" andWithVal:v251];

    v252 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*(v167 + 1)];
    v253 = [v252 stringValue];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"mode_pref" andWithVal:v253];

    v254 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v167 + 1)];
    v255 = [v254 stringValue];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"band_pref" andWithVal:v255];

    v256 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v167[8]];
    v257 = [v256 stringValue];
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:@"roam_pref" andWithVal:v257];

    v103 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v167[9]];
    v104 = [v103 stringValue];
    v258 = @"hybr_pref";
LABEL_243:
    [(PLBBEurekaEventMsg *)v12 addPairWithKey:v258 andWithVal:v104];
    goto LABEL_244;
  }

LABEL_245:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v261 = objc_opt_class();
    v280[0] = MEMORY[0x277D85DD0];
    v280[1] = 3221225472;
    v280[2] = __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_88;
    v280[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v280[4] = v261;
    if (qword_2811F4660 != -1)
    {
      dispatch_once(&qword_2811F4660, v280);
    }

    if (byte_2811F463B == 1)
    {
      v262 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded SDEventAction/Hybrid"];
      v263 = MEMORY[0x277D3F178];
      v264 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaMessage.m"];
      v265 = [v264 lastPathComponent];
      v266 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaMessage logWithLogger:]"];
      [v263 logMessage:v262 fromFile:v265 fromFunction:v266 fromLineNumber:350];

      v267 = PLLogCommon();
      if (os_log_type_enabled(v267, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v284 = v262;
        _os_log_debug_impl(&dword_21A4C6000, v267, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBEurekaEventMsg *)v12 logEventForwardSDEventActionCode];
LABEL_259:
  if (![(PLBasebandEurekaMessage *)self skip])
  {
    [(PLBBEurekaEventMsg *)v12 logEventForwardBBEurekaEventMsgLite];
  }

  v268 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F463A = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_88(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F463B = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_115(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F463C = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_124(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F463D = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_130(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F463E = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_155(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F463F = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_185(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4640 = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_194(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4641 = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_203(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4642 = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_212(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4643 = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_233(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4644 = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_257(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4645 = result;
  return result;
}

uint64_t __41__PLBasebandEurekaMessage_logWithLogger___block_invoke_284(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4646 = result;
  return result;
}

- (id)eventSystemSelection
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *[(PLBasebandEurekaMessage *)self ssevent];

  return [v2 numberWithUnsignedShort:v3];
}

- (id)eventStringACC:(char *)a3
{
  v5 = *a3;
  if (v5 >= 3)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BD60[v5];
  }

  return v6;
}

- (id)eventStringOOS:(char *)a3
{
  v5 = *a3;
  if (v5 >= 4)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BD78[v5];
  }

  return v6;
}

- (id)actionSystemSelection
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *[(PLBasebandEurekaMessage *)self ssaction];

  return [v2 numberWithUnsignedChar:v3];
}

- (id)stateSystemSelection
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *[(PLBasebandEurekaMessage *)self ssstate];

  return [v2 numberWithUnsignedChar:v3];
}

- (id)stateStringGSM:(char *)a3
{
  v5 = *a3;
  if (v5 > 29)
  {
    if (v5 <= 40)
    {
      switch(v5)
      {
        case 30:
          v6 = @"L1_IDLE_MODE";

          return v6;
        case 31:
          v6 = @"L1_GPRS_IDLE_MODE";

          return v6;
        case 40:
          v6 = @"L1_RANDOM_ACCESS_MODE";

          return v6;
      }
    }

    else if (v5 > 50)
    {
      if (v5 == 51)
      {
        v6 = @"L1_TRANSFER_MODE";

        return v6;
      }

      if (v5 == 52)
      {
        v6 = @"L1_DTM_MODE";

        return v6;
      }
    }

    else
    {
      if (v5 == 41)
      {
        v6 = @"L1_PACKET_ACCESS_MODE";

        return v6;
      }

      if (v5 == 50)
      {
        v6 = @"L1_DEDICATED_MODE";

        return v6;
      }
    }

LABEL_62:
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];

    return v6;
  }

  if (v5 <= 12)
  {
    switch(v5)
    {
      case 10:
        v6 = @"L1_INACTIVE_MODE";

        return v6;
      case 11:
        v6 = @"L1_NULL_MODE";

        return v6;
      case 12:
        v6 = @"L1_SUSPEND_MODE";

        return v6;
    }

    goto LABEL_62;
  }

  if (v5 > 19)
  {
    if (v5 == 20)
    {
      v6 = @"L1_FIND_BCCH";

      return v6;
    }

    if (v5 == 21)
    {
      v6 = @"L1_FIND_SCH";

      return v6;
    }

    goto LABEL_62;
  }

  if (v5 != 13)
  {
    if (v5 == 14)
    {
      v6 = @"L1_WTOG_BPLMN_MODE";

      return v6;
    }

    goto LABEL_62;
  }

  v6 = @"L1_RESET_MODE";

  return v6;
}

- (id)stateStringLTE:(char *)a3
{
  v5 = *a3;
  if (v5 >= 8)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BD98[v5];
  }

  return v6;
}

- (id)stateStringWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 6)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BDD8[v5];
  }

  return v6;
}

- (id)stateStringUTRANL1:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0xE)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BE08[v5];
  }

  return v6;
}

- (id)stateStringHSDPA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 4)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BE78[v5];
  }

  return v6;
}

- (id)stateStringHSUPA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 4)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BE98[v5];
  }

  return v6;
}

- (id)stateStringHSPAPLUS_DC:(char *)a3
{
  v5 = *a3;
  if (v5 >= 5)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BEB8[v5];
  }

  return v6;
}

- (id)stateStringMotion:(char *)a3
{
  v5 = *a3;
  if (v5 > 15)
  {
    if (v5 == 16)
    {
      v6 = @"Pedestrian";
    }

    else
    {
      if (v5 != 17)
      {
LABEL_12:
        v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];

        return v6;
      }

      v6 = @"Driving";
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = @"Moving";

        return v6;
      }

      goto LABEL_12;
    }

    v6 = @"Stationary";
  }

  return v6;
}

- (id)stateStringACC:(char *)a3
{
  v5 = *a3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = @"AVOID";
    }

    else
    {
      v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
    }
  }

  else
  {
    v6 = @"ACCESS";
  }

  return v6;
}

- (id)stateStringOOS:(char *)a3
{
  v5 = *a3;
  if (v5 >= 6)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825BEE0[v5];
  }

  return v6;
}

- (id)payloadString
{
  v3 = 0;
  v4 = [(PLBasebandEurekaMessage *)self header][1];
  if (v4 <= 1603)
  {
    if (v4 <= 1009)
    {
      if (v4 > 530)
      {
        v16 = (v4 - 531) > 0x25 || ((1 << (v4 - 19)) & 0x2200000081) == 0;
        if (v16 && v4 != 635 && v4 != 897)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v7 = (v4 - 415) > 0x1F || ((1 << (v4 + 97)) & 0xC00C0007) == 0;
        if (v7 && v4 != 275 && v4 != 311)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_68;
    }

    if (v4 <= 1209)
    {
      if ((v4 - 1010) > 0x3E || ((1 << (v4 + 14)) & 0x4000000004000009) == 0)
      {
        v10 = v4 - 1076;
        if (v10 > 0x2D || ((1 << v10) & 0x380000000001) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_68;
    }

    if ((v4 - 1210) <= 0x11 && ((1 << (v4 + 70)) & 0x36001) != 0)
    {
      goto LABEL_68;
    }

    v6 = v4 - 1465;
  }

  else
  {
    if (v4 <= 2175)
    {
      if (v4 > 1988)
      {
        v12 = v4 - 1989;
        v13 = v12 > 0x28;
        v14 = (1 << v12) & 0x18000060003;
        if (v13 || v14 == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      v5 = (v4 - 1889) > 0x2A || ((1 << (v4 - 97)) & 0x60800000003) == 0;
      if (v5 && ((v4 - 1604) > 9 || ((1 << (v4 - 68)) & 0x219) == 0))
      {
        v6 = v4 - 1807;
        goto LABEL_44;
      }

LABEL_68:
      v19 = MEMORY[0x277CCACA8];
      v20 = [(PLBasebandEurekaMessage *)self payload];
      v3 = [v19 stringWithFormat:@"%@", v20];

      goto LABEL_69;
    }

    if (v4 > 2475)
    {
      if (((v4 - 2476) > 0xA || ((1 << (v4 + 84)) & 0x607) == 0) && v4 != 5184)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    if ((v4 - 2244) <= 0x2E && ((1 << (v4 + 60)) & 0x41000C030003) != 0)
    {
      goto LABEL_68;
    }

    v6 = v4 - 2176;
  }

LABEL_44:
  if (v6 < 2)
  {
    goto LABEL_68;
  }

LABEL_69:

  return v3;
}

- (id)convertCMCallConnectPayloadToDictionary:(_CMCallConnectPayload *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var0];
  v8 = [v6 initWithFormat:@"%@", v7];
  [v5 setObject:v8 forKeyedSubscript:@"callId"];

  v9 = [(PLBasebandEurekaMessage *)self callTypeString:&a3->var1];
  [v5 setObject:v9 forKeyedSubscript:@"callType"];

  var2 = a3->var2;
  if (var2 > 5)
  {
    if (a3->var2 > 8u)
    {
      if (var2 == 9)
      {
        v12 = kPLLTE;
        goto LABEL_23;
      }

      if (var2 == 10)
      {
        v11 = @"GWL";
        goto LABEL_28;
      }

      if (var2 != 11)
      {
        goto LABEL_32;
      }

      v11 = @"TDS";
    }

    else
    {
      switch(var2)
      {
        case 6u:
          v11 = @"GPS";
          break;
        case 7u:
          v11 = @"GW";
          break;
        case 8u:
          v11 = @"WLAN";
          break;
        default:
          goto LABEL_32;
      }
    }

LABEL_28:
    [v5 setObject:v11 forKeyedSubscript:@"systemMode"];
    goto LABEL_29;
  }

  if (a3->var2 <= 2u)
  {
    if (a3->var2)
    {
      if (var2 == 1)
      {
        v11 = @"AMPS";
      }

      else
      {
        v11 = @"CDMA";
      }
    }

    else
    {
      v11 = @"NO_SRV";
    }

    goto LABEL_28;
  }

  switch(var2)
  {
    case 3u:
      v12 = kPLGSM;
      goto LABEL_23;
    case 4u:
      v11 = @"HDR";
      goto LABEL_28;
    case 5u:
      v12 = kPLWCDMA;
LABEL_23:
      v11 = *v12;
      goto LABEL_28;
  }

LABEL_32:
  v14 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:?];
  [v5 setObject:v14 forKeyedSubscript:@"systemMode"];

LABEL_29:

  return v5;
}

- (id)convertCMCallConnectV2PayloadToDictionary:(_NewCMCallConnectPayload *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var0];
  v8 = [v6 initWithFormat:@"%@", v7];
  [v5 setObject:v8 forKeyedSubscript:@"callId"];

  v9 = [(PLBasebandEurekaMessage *)self callTypeString:&a3->var1];
  [v5 setObject:v9 forKeyedSubscript:@"callType"];

  var2 = a3->var2;
  if (var2 > 5)
  {
    if (a3->var2 > 8u)
    {
      switch(var2)
      {
        case 9u:
          v11 = @"LTE";
          goto LABEL_27;
        case 0xAu:
          v11 = @"GWL";
          goto LABEL_27;
        case 0xBu:
          v11 = @"TDS";
          goto LABEL_27;
      }
    }

    else
    {
      switch(var2)
      {
        case 6u:
          v11 = @"GPS";
          goto LABEL_27;
        case 7u:
          v11 = @"GW";
          goto LABEL_27;
        case 8u:
          v11 = @"WLAN";
LABEL_27:
          [v5 setObject:v11 forKeyedSubscript:@"systemMode"];
          goto LABEL_28;
      }
    }
  }

  else
  {
    if (a3->var2 <= 2u)
    {
      if (a3->var2)
      {
        if (var2 == 1)
        {
          v11 = @"AMPS";
        }

        else
        {
          v11 = @"CDMA";
        }
      }

      else
      {
        v11 = @"NO_SRV";
      }

      goto LABEL_27;
    }

    switch(var2)
    {
      case 3u:
        v11 = @"GSM";
        goto LABEL_27;
      case 4u:
        v11 = @"HDR";
        goto LABEL_27;
      case 5u:
        v11 = @"WCDMA";
        goto LABEL_27;
    }
  }

  v16 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:?];
  [v5 setObject:v16 forKeyedSubscript:@"systemMode"];

LABEL_28:
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var3];
  v14 = [v12 initWithFormat:@"%@", v13];
  [v5 setObject:v14 forKeyedSubscript:@"clientId"];

  return v5;
}

- (id)convertCMCallOrigPayloadToDictionary:(_CMCallOrigPayload *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var0];
  [v5 setObject:v6 forKeyedSubscript:@"callId"];

  v7 = [(PLBasebandEurekaMessage *)self callTypeString:&a3->var1];
  [v5 setObject:v7 forKeyedSubscript:@"callType"];

  switch(a3->var2)
  {
    case 0u:
      v8 = @"AMPS";
      goto LABEL_26;
    case 1u:
      v8 = @"HDR";
      goto LABEL_26;
    case 2u:
      v8 = @"CDMA_SPECIFIC";
      goto LABEL_26;
    case 3u:
      v8 = @"CDMA_AUTOMATIC";
      goto LABEL_26;
    case 4u:
      v8 = @"AUTOMATIC";
      goto LABEL_26;
    case 5u:
      v8 = @"CDMA_HDR";
      goto LABEL_26;
    case 6u:
      v8 = @"GSM_WCDMA";
      goto LABEL_26;
    case 7u:
      v9 = kPLWCDMA;
      goto LABEL_23;
    case 8u:
      v9 = kPLGSM;
      goto LABEL_23;
    case 9u:
      v8 = @"WLAN";
      goto LABEL_26;
    case 0xAu:
      v8 = @"NON_AUTOMATIC";
      goto LABEL_26;
    case 0xBu:
      v9 = kPLLTE;
LABEL_23:
      v8 = *v9;
      goto LABEL_26;
    case 0xCu:
      v8 = @"GSM_WCDMA_LTE";
      goto LABEL_26;
    case 0xDu:
      v8 = @"HDR_MORE_PREF";
      goto LABEL_26;
    case 0xEu:
      v8 = @"TDS";
      goto LABEL_26;
    case 0xFu:
      v8 = @"TDS_GSM";
      goto LABEL_26;
    case 0x10u:
      v8 = @"TDS_GSM_LTE";
      goto LABEL_26;
    case 0x11u:
      v8 = @"TDS_GSM_WCDMA_LTE";
      goto LABEL_26;
    case 0x12u:
      v8 = @"TDS_GSM_WCDMA";
      goto LABEL_26;
    case 0x13u:
      v8 = @"TDS_LTE";
      goto LABEL_26;
    case 0x14u:
      v8 = @"CS_ONLY";
      goto LABEL_26;
    case 0x15u:
      v8 = @"PS_ONLY";
LABEL_26:
      [v5 setObject:v8 forKeyedSubscript:@"serviceType"];
      break;
    default:
      v10 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:a3->var2];
      [v5 setObject:v10 forKeyedSubscript:@"serviceType"];

      break;
  }

  return v5;
}

- (id)convertCMCallOrigV2PayloadToDictionary:(_NewCMCallOrigPayload *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var0];
  [v5 setObject:v6 forKeyedSubscript:@"callId"];

  v7 = [(PLBasebandEurekaMessage *)self callTypeString:&a3->var1];
  [v5 setObject:v7 forKeyedSubscript:@"callType"];

  switch(a3->var2)
  {
    case 0u:
      v8 = @"AMPS";
      goto LABEL_25;
    case 1u:
      v8 = @"HDR";
      goto LABEL_25;
    case 2u:
      v8 = @"CDMA_SPECIFIC";
      goto LABEL_25;
    case 3u:
      v8 = @"CDMA_AUTOMATIC";
      goto LABEL_25;
    case 4u:
      v8 = @"AUTOMATIC";
      goto LABEL_25;
    case 5u:
      v8 = @"CDMA_HDR";
      goto LABEL_25;
    case 6u:
      v8 = @"GSM_WCDMA";
      goto LABEL_25;
    case 7u:
      v8 = @"WCDMA";
      goto LABEL_25;
    case 8u:
      v8 = @"GSM";
      goto LABEL_25;
    case 9u:
      v8 = @"WLAN";
      goto LABEL_25;
    case 0xAu:
      v8 = @"NON_AUTOMATIC";
      goto LABEL_25;
    case 0xBu:
      v8 = @"LTE";
      goto LABEL_25;
    case 0xCu:
      v8 = @"GSM_WCDMA_LTE";
      goto LABEL_25;
    case 0xDu:
      v8 = @"HDR_MORE_PREF";
      goto LABEL_25;
    case 0xEu:
      v8 = @"TDS";
      goto LABEL_25;
    case 0xFu:
      v8 = @"TDS_GSM";
      goto LABEL_25;
    case 0x10u:
      v8 = @"TDS_GSM_LTE";
      goto LABEL_25;
    case 0x11u:
      v8 = @"TDS_GSM_WCDMA_LTE";
      goto LABEL_25;
    case 0x12u:
      v8 = @"TDS_GSM_WCDMA";
      goto LABEL_25;
    case 0x13u:
      v8 = @"TDS_LTE";
      goto LABEL_25;
    case 0x14u:
      v8 = @"CS_ONLY";
      goto LABEL_25;
    case 0x15u:
      v8 = @"PS_ONLY";
LABEL_25:
      [v5 setObject:v8 forKeyedSubscript:@"serviceType"];
      break;
    default:
      v9 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:a3->var2];
      [v5 setObject:v9 forKeyedSubscript:@"serviceType"];

      break;
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var3];
  v12 = [v10 initWithFormat:@"%@", v11];
  [v5 setObject:v12 forKeyedSubscript:@"clientId"];

  return v5;
}

- (id)cdmaExitString:(char *)a3
{
  v5 = *a3;
  if (v5 < 0x2F && ((0x7FEE4FFFCFF3uLL >> v5) & 1) != 0)
  {
    v6 = off_27825BF10[v5];
  }

  else
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  return v6;
}

- (id)soCallTypeString:(char *)a3
{
  v5 = *a3;
  if (v5 >= 4)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C088[v5];
  }

  return v6;
}

- (id)callTypeString:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0xF)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C0A8[v5];
  }

  return v6;
}

- (id)termStringSystemSelection:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0xC)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C120[v5];
  }

  return v6;
}

- (id)cellularSystemStringSystemSelection:(char *)a3
{
  v5 = *a3;
  if (v5 >= 8)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C180[v5];
  }

  return v6;
}

- (id)establishmentCauseStringWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0x14)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C1C0[v5];
  }

  return v6;
}

- (id)releaseCauseStringWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0x18)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C260[v5];
  }

  return v6;
}

- (id)pagingTypeWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = @"RRCLOG_PAGING_TYPE_2";
    }

    else
    {
      v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
    }
  }

  else
  {
    v6 = @"RRCLOG_PAGING_TYPE_1";
  }

  return v6;
}

- (id)pagingCauseWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 8)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C320[v5];
  }

  return v6;
}

- (id)scanTypeStartWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 3)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C360[v5];
  }

  return v6;
}

- (id)scanTypeStopWCDMA:(char *)a3
{
  v5 = *a3;
  if (v5 >= 3)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C378[v5];
  }

  return v6;
}

- (id)searchPhaseStringPSSI:(char *)a3
{
  v5 = *a3;
  if (v5 >= 6)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C390[v5];
  }

  return v6;
}

- (id)ratStringPSSI:(char *)a3
{
  v3 = *a3;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = kPLLTE;
    }

    else
    {
      if (v3 != 3)
      {
        v5 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:?];
        goto LABEL_11;
      }

      v4 = kPLUTRAN;
    }
  }

  else if (v3)
  {
    v4 = kPLUMTS;
  }

  else
  {
    v4 = kPLGSM;
  }

  v5 = *v4;
LABEL_11:

  return v5;
}

- (id)procedureStringPSSI:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0xB)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C3C0[v5];
  }

  return v6;
}

- (id)estCauseLTE:(char *)a3
{
  v5 = *a3;
  if (v5 >= 5)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C418[v5];
  }

  return v6;
}

- (id)relCauseLTE:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0xB)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C440[v5];
  }

  return v6;
}

- (id)iratHOStringLTE:(char *)a3
{
  v5 = *a3;
  if (v5 >= 5)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C498[v5];
  }

  return v6;
}

- (id)iratStringLTE:(char *)a3
{
  v3 = *a3;
  if (v3 <= 2)
  {
    if (!v3)
    {
      v5 = @"CDMA_HRPD";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v5 = @"CDMA_1X";
      goto LABEL_15;
    }

    v4 = kPLGSM;
    goto LABEL_14;
  }

  switch(v3)
  {
    case 3:
      v4 = kPLWCDMA;
LABEL_14:
      v5 = *v4;
      break;
    case 4:
      v4 = kPLLTE;
      goto LABEL_14;
    case 5:
      v5 = @"TDS";
      break;
    default:
      v5 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:?];
      break;
  }

LABEL_15:

  return v5;
}

- (id)smgmmEventType:(char *)a3
{
  v5 = *a3;
  if (v5 >= 0xB)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C4C0[v5];
  }

  return v6;
}

- (id)cellUpdateCause:(char *)a3
{
  v5 = *a3;
  if (v5 >= 8)
  {
    v6 = [(PLBasebandEurekaMessage *)self stringForUnknownBytes:v3];
  }

  else
  {
    v6 = off_27825C518[v5];
  }

  return v6;
}

@end