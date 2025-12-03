@interface SCProcessor
- (SCProcessor)initWithStartPacket:(const void *)packet ofLength:(unint64_t)length delegate:(id)delegate withSignalQualityMetricsEnabled:(BOOL)enabled bypassingAlgorithms:(BOOL)algorithms forWindbreaker:(BOOL)windbreaker bootDate:(id)date hardwareModel:(id)self0;
- (SCProcessorDelegate)delegate;
- (id)dictionaryForAnalytics:(const SCAnalytics *)analytics sessionDuration:(double)duration systemInterface:(id)interface;
- (uint64_t)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:;
- (void)handleAbort:(unsigned __int8)abort withAnalytics:(const void *)analytics;
- (void)handleResult:(const Result *)result withAnalytics:(const void *)analytics;
- (void)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:;
- (void)processPacket:(const void *)packet ofLength:(unint64_t)length;
- (void)windbreakerSessionDidAbortForReason:(unsigned __int8)reason;
- (void)windbreakerSessionDidComplete;
@end

@implementation SCProcessor

- (SCProcessor)initWithStartPacket:(const void *)packet ofLength:(unint64_t)length delegate:(id)delegate withSignalQualityMetricsEnabled:(BOOL)enabled bypassingAlgorithms:(BOOL)algorithms forWindbreaker:(BOOL)windbreaker bootDate:(id)date hardwareModel:(id)self0
{
  windbreakerCopy = windbreaker;
  algorithmsCopy = algorithms;
  v67 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  dateCopy = date;
  modelCopy = model;
  v51.receiver = self;
  v51.super_class = SCProcessor;
  v18 = [(SCProcessor *)&v51 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, delegateCopy);
    if (length == 112 || length == 115)
    {
      v19->_bypassAlgorithms = algorithmsCopy;
      if (algorithmsCopy)
      {
        v20 = sc_get_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2647F6000, v20, OS_LOG_TYPE_DEFAULT, "note that the algorithms are being bypassed", buf, 2u);
        }
      }

      v19->_forWindbreaker = windbreakerCopy;
      if (windbreakerCopy)
      {
        v21 = sc_get_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 1;
          _os_log_impl(&dword_2647F6000, v21, OS_LOG_TYPE_DEFAULT, "processor is for windbreaker (i.e accel only): %u", buf, 8u);
        }

        v22 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:409600];
        rawDataForWindbreaker = v19->_rawDataForWindbreaker;
        v19->_rawDataForWindbreaker = v22;

        LOWORD(v59) = 5;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v59 length:2];
        v24 = [modelCopy dataUsingEncoding:4];
        if (!v24)
        {
          v24 = objc_opt_new();
        }

        LODWORD(v52) = 214;
        WORD1(v52) = [v24 length];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v52 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendData:v24];
        *buf = 0;
        *v66 = 24000000;
        *&v66[8] = 0;
        [dateCopy timeIntervalSinceReferenceDate];
        *&v66[4] = v25;
        LODWORD(v52) = 1310925;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v52 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:buf length:20];
        if (length == 112)
        {
          v26 = 276;
        }

        else
        {
          v26 = 284;
        }

        LOWORD(v52) = v26;
        WORD1(v52) = length;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v52 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:packet length:length];
      }

      objc_initWeak(&location, v19);
      objc_copyWeak(&to, &location);
      objc_copyWeak(&v48, &location);
      objc_copyWeak(&v47, &location);
      objc_copyWeak(&v46, &location);
      objc_copyWeak(&v45, &location);
      objc_copyWeak(&v44, &location);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      memset(v64, 0, 21);
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0;
      if (length == 112)
      {
        v42 = *packet;
        v43 = *(packet + 2);
        v27 = *(packet + 3);
        v28 = *(packet + 59);
        v29 = *(packet + 91);
        v63 = *(packet + 75);
        v64[0] = v29;
        *(v64 + 13) = *(packet + 13);
        v30 = *(packet + 27);
        v59 = *(packet + 11);
        v60 = v30;
        v61 = *(packet + 43);
        v62 = v28;
        v31 = modelCopy;
        [modelCopy UTF8String];
        operator new();
      }

      v40 = *packet;
      v41 = *(packet + 2);
      v33 = *(packet + 3);
      v34 = *(packet + 59);
      v35 = *(packet + 91);
      v56 = *(packet + 75);
      v57 = v35;
      v58 = *(packet + 107);
      v36 = *(packet + 27);
      v52 = *(packet + 11);
      v53 = v36;
      v54 = *(packet + 43);
      v55 = v34;
      v37 = modelCopy;
      [modelCopy UTF8String];
      operator new();
    }

    v32 = sc_get_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [SCProcessor initWithStartPacket:length ofLength:v32 delegate:? withSignalQualityMetricsEnabled:? bypassingAlgorithms:? forWindbreaker:? bootDate:? hardwareModel:?];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)handleResult:(const Result *)result withAnalytics:(const void *)analytics
{
  v6 = *result;
  p_var1 = &result->var1;
  v7 = *&v6;
  v11 = v6;
  if (v6.var0 < 70.0)
  {
    *&v7 = 1.0;
  }

  v10 = LODWORD(v7);
  scandium::convert_analytics_to_objc(analytics, 0, p_var1, &v10, 1, &v9, v7);
  delegate = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  [delegate handleResult:&v11 withAnalytics:&v9 atTimestamp:?];

  self->_expended = 1;
  SCAnalytics::~SCAnalytics(&v9);
}

- (void)windbreakerSessionDidComplete
{
  delegate = [(SCProcessor *)self delegate];
  rawDataForWindbreaker = self->_rawDataForWindbreaker;
  [(SCProcessor *)self currentTimestamp];
  [delegate windbreakerSessionDidCompleteWithRawDataRecorded:rawDataForWindbreaker atTimestamp:?];

  self->_expended = 1;
}

- (void)windbreakerSessionDidAbortForReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  delegate = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  if (reasonCopy - 1 >= 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = reasonCopy;
  }

  [delegate handleAbort:v6 withAnalytics:0 atTimestamp:?];

  self->_expended = 1;
}

- (void)handleAbort:(unsigned __int8)abort withAnalytics:(const void *)analytics
{
  if ((abort - 1) >= 0xA)
  {
    abortCopy = 0;
  }

  else
  {
    abortCopy = abort;
  }

  scandium::convert_analytics_to_objc(analytics, abortCopy | 0x100, 0, 0, 0, &v8, v4);
  delegate = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  [delegate handleAbort:abortCopy withAnalytics:&v8 atTimestamp:?];

  self->_expended = 1;
  SCAnalytics::~SCAnalytics(&v8);
}

- (void)processPacket:(const void *)packet ofLength:(unint64_t)length
{
  v26 = *MEMORY[0x277D85DE8];
  if (length == 247)
  {
    p_processor = &self->_processor;
    if (self->_processor.__ptr_)
    {
      if (self->_forWindbreaker)
      {
        LODWORD(buf.var0) = 16187667;
        [(NSMutableData *)self->_rawDataForWindbreaker appendBytes:&buf length:4];
        [(NSMutableData *)self->_rawDataForWindbreaker appendBytes:packet length:247];
      }

      v7 = *(packet + 13);
      v23[12] = *(packet + 12);
      v23[13] = v7;
      v24[0] = *(packet + 14);
      *(v24 + 15) = *(packet + 239);
      v8 = *(packet + 9);
      v23[8] = *(packet + 8);
      v23[9] = v8;
      v9 = *(packet + 11);
      v23[10] = *(packet + 10);
      v23[11] = v9;
      v10 = *(packet + 5);
      v23[4] = *(packet + 4);
      v23[5] = v10;
      v11 = *(packet + 7);
      v23[6] = *(packet + 6);
      v23[7] = v11;
      v12 = *(packet + 1);
      v23[0] = *packet;
      v23[1] = v12;
      v13 = *(packet + 3);
      v23[2] = *(packet + 2);
      v23[3] = v13;
      if (self->_bypassAlgorithms)
      {
        frameCount = self->_frameCount;
        if (frameCount == scandium::Processor::max_packet_count(self->_processor.__ptr_) - 1)
        {
          v22 = 0x4270000042C80000;
          bzero(&buf, 0x3F8uLL);
          delegate = [(SCProcessor *)self delegate];
          [(SCProcessor *)self currentTimestamp];
          [delegate handleResult:&v22 withAnalytics:&buf atTimestamp:?];

          self->_expended = 1;
          SCAnalytics::~SCAnalytics(&buf);
        }
      }

      else
      {
        scandium::Processor::process(self->_processor.__ptr_, v23);
        v18 = self->_frameCount;
        if (v18 == scandium::Processor::max_packet_count(self->_processor.__ptr_) - 1 && !self->_expended)
        {
          v19 = sc_get_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [[(SCProcessor *)self forBackground] processPacket:&buf ofLength:v19];
          }

          delegate2 = [(SCProcessor *)self delegate];
          [(SCProcessor *)self currentTimestamp];
          [delegate2 handleAbort:8 withAnalytics:0 atTimestamp:?];

          self->_expended = 1;
        }
      }

      ++self->_frameCount;
      if (self->_expended)
      {
        std::unique_ptr<scandium::Processor>::reset[abi:ne200100](p_processor, 0);
      }
    }
  }

  else
  {
    v17 = sc_get_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SCProcessor processPacket:length ofLength:v17];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryForAnalytics:(const SCAnalytics *)analytics sessionDuration:(double)duration systemInterface:(id)interface
{
  v343 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if (self->_bypassAlgorithms)
  {
    v9 = MEMORY[0x277CBEC10];
  }

  else
  {
    if ([(SCProcessor *)self forBackground])
    {
      v224 = *&analytics->var12;
      v223[0] = @"agcOpcDuration";
      v223[1] = @"agcOpcGreenSampleRate";
      v223[2] = @"agcOpcNumConverged";
      v223[3] = @"agcOpcNumRetries";
      var14 = analytics->var14;
      var15 = analytics->var15;
      v226 = var14;
      v223[4] = @"bailoutPoint";
      v223[5] = @"droppedSessionWindowCpmsTotalLength";
      var46 = analytics->var46;
      var47 = analytics->var47;
      var19 = analytics->var19;
      var18 = analytics->var18;
      v228 = var46;
      v223[6] = @"droppedSessionWindowCpmsMaxSegmentLength";
      v223[7] = @"droppedSessionWindowSaturationMaxSegmentLength";
      var48 = analytics->var48;
      var49 = analytics->var49;
      v229 = var47;
      v230 = var49;
      v223[8] = @"droppedSessionWindowDownTotalLength";
      v223[9] = @"droppedSessionWindowSaturationTotalLength";
      var57 = analytics->var57;
      var56 = analytics->var56;
      v232 = var48;
      v223[10] = @"droppedWindow0CpmsTotalLength";
      v223[11] = @"droppedWindow0SaturationTotalLength";
      var51 = analytics->var51;
      var50 = analytics->var50;
      v234 = var51;
      v223[12] = @"droppedWindow1CpmsTotalLength";
      v223[13] = @"droppedWindow1SaturationTotalLength";
      var53 = analytics->var53;
      var52 = analytics->var52;
      v236 = var53;
      v223[14] = @"droppedWindow2CpmsTotalLength";
      v223[15] = @"droppedWindow2SaturationTotalLength";
      var55 = analytics->var55;
      var54 = analytics->var54;
      v238 = var55;
      v223[16] = @"earlyBailout";
      v223[17] = @"highFrequencyWindow";
      v239 = var19;
      v240 = var57;
      var58 = analytics->var58;
      v223[18] = @"highFrequencyWindowLength";
      v223[19] = @"iledGreen";
      var121 = analytics->var121;
      v241 = var58;
      v242 = var121;
      var119 = analytics->var119;
      v223[20] = @"iledIr";
      v223[21] = @"iledRed";
      v23 = analytics->var120;
      v243 = var119;
      v244 = v23;
      v223[22] = @"incompleteReason";
      v24 = numberOrNsNull(analytics->var25);
      v245 = v24;
      v223[23] = @"internalTemperature";
      v25 = numberOrNsNull(analytics->var20);
      var33 = analytics->var33;
      v246 = v25;
      v247 = var33;
      v223[24] = @"irWavelength";
      v223[25] = @"mavMax1s";
      var123 = analytics->var123;
      v255 = *&analytics->var35;
      v28 = *&analytics->var124;
      v223[26] = @"mavMean1s";
      v223[27] = @"mavMedian1s";
      var122 = analytics->var122;
      v248 = var123;
      v250 = var122;
      v223[28] = @"mavMin1s";
      v223[29] = @"mavStd1s";
      var83 = analytics->var83;
      var126 = analytics->var126;
      v252 = var83;
      v223[30] = @"maxChannelConfidenceLong";
      v223[31] = @"maxChannelConfidenceShortIR";
      var82 = analytics->var82;
      var81 = analytics->var81;
      v254 = var82;
      v223[32] = @"maxChannelConfidenceShortRed";
      v223[33] = @"meanAccelX";
      v223[34] = @"meanAccelY";
      v223[35] = @"meanAccelZ";
      var45 = analytics->var45;
      var38 = analytics->var38;
      var37 = analytics->var37;
      v257 = var45;
      v223[36] = @"meanPerfusionIndexGreenShort";
      v223[37] = @"meanPerfusionIndexIrLong";
      var42 = analytics->var42;
      var41 = analytics->var41;
      v259 = var42;
      v223[38] = @"meanPerfusionIndexIrShort";
      v223[39] = @"meanPerfusionIndexRedLong";
      var44 = analytics->var44;
      var43 = analytics->var43;
      v261 = var44;
      v223[40] = @"meanPerfusionIndexRedShort";
      v223[41] = @"meanSpO2Long";
      var39 = analytics->var39;
      var40 = analytics->var40;
      v263 = var38;
      v249 = v28;
      v223[42] = @"meanSpO2ShortIR";
      v223[43] = @"meanSpO2ShortRed";
      var80 = analytics->var80;
      v264 = var39;
      v265 = var80;
      v223[44] = @"medianChannelConfidenceLong";
      v223[45] = @"medianChannelConfidenceShortIR";
      var79 = analytics->var79;
      v266 = analytics->var78;
      v267 = var79;
      v223[46] = @"medianChannelConfidenceShortRed";
      v223[47] = @"medianGIRPIR";
      var84 = analytics->var84;
      var86 = analytics->var86;
      v269 = var84;
      v223[48] = @"medianMeasurementConfidence";
      v223[49] = @"medianWeightedStdDev";
      var77 = analytics->var77;
      var85 = analytics->var85;
      v271 = var77;
      v223[50] = @"minChannelConfidenceLong";
      v223[51] = @"minChannelConfidenceShortIR";
      var76 = analytics->var76;
      var75 = analytics->var75;
      v273 = var76;
      v223[52] = @"minChannelConfidenceShortRed";
      v223[53] = @"numChannelsPassingGIRPIRMax";
      var9 = analytics->var9;
      var8 = analytics->var8;
      v275 = var9;
      v223[54] = @"numChannelsPassingGIRPIRMin";
      v223[55] = @"numChannelsPassingSNRMax";
      var60 = analytics->var60;
      var59 = analytics->var59;
      v277 = var60;
      v223[56] = @"numChannelsPassingSNRMaxLong";
      v223[57] = @"numChannelsPassingSNRMaxShortIR";
      var62 = analytics->var62;
      var61 = analytics->var61;
      v279 = var62;
      v223[58] = @"numChannelsPassingSNRMaxShortRed";
      v223[59] = @"numChannelsPassingSNRMin";
      var64 = analytics->var64;
      var63 = analytics->var63;
      v281 = var64;
      v223[60] = @"numChannelsPassingSNRMinLong";
      v223[61] = @"numChannelsPassingSNRMinShortIR";
      var66 = analytics->var66;
      var65 = analytics->var65;
      v283 = var66;
      v223[62] = @"numChannelsPassingSNRMinShortRed";
      v223[63] = @"numFailedWinAggGIRPIR";
      v223[64] = @"numFailedWinStd";
      var29 = analytics->var29;
      var28 = analytics->var28;
      v285 = var29;
      v223[65] = @"numHighConfidenceChannelsMax";
      var67 = analytics->var67;
      v223[66] = @"numHighConfidenceChannelsMaxLong";
      var73 = analytics->var73;
      v223[67] = @"numHighConfidenceChannelsMaxShortIR";
      var69 = analytics->var69;
      v223[68] = @"numHighConfidenceChannelsMaxShortRed";
      var71 = analytics->var71;
      v223[69] = @"numHighConfidenceChannelsMin";
      var68 = analytics->var68;
      v223[70] = @"numHighConfidenceChannelsMinLong";
      var74 = analytics->var74;
      v223[71] = @"numHighConfidenceChannelsMinShortIR";
      v292 = analytics->var70;
      v223[72] = @"numHighConfidenceChannelsMinShortRed";
      var72 = analytics->var72;
      v223[73] = @"numSuccessfulWindows";
      var16 = analytics->var16;
      v223[74] = @"numValidChannelsMax";
      var11 = analytics->var11;
      var10 = analytics->var10;
      v223[75] = @"numValidChannelsMin";
      v296 = var11;
      v223[76] = @"postedHeartRate";
      v49 = numberOrNsNull(analytics->var21);
      v297 = v49;
      v223[77] = @"postedHeartRateRounded";
      v50 = numberOrNsNull(analytics->var21);
      v298 = v50;
      v223[78] = @"postedSpO2Rounded";
      v51 = numberOrNsNull(analytics->var22);
      v223[79] = @"ppgAcPeakToPeakBlank";
      var94 = analytics->var94;
      v223[80] = @"ppgAcPeakToPeakGreen";
      var93 = analytics->var93;
      v223[81] = @"ppgAcPeakToPeakIrLong";
      var87 = analytics->var87;
      v223[82] = @"ppgAcPeakToPeakIrShortIr";
      v223[83] = @"ppgAcPeakToPeakIrShortRed";
      v223[84] = @"ppgAcPeakToPeakRedLong";
      v304 = analytics->var90;
      v223[85] = @"ppgAcPeakToPeakRedShortIr";
      v305 = *&analytics->var91;
      v223[86] = @"ppgAcPeakToPeakRedShortRed";
      v223[87] = @"ppgAcStdBlank";
      var102 = analytics->var102;
      v223[88] = @"ppgAcStdGreen";
      var101 = analytics->var101;
      v223[89] = @"ppgAcStdIrLong";
      var95 = analytics->var95;
      v223[90] = @"ppgAcStdIrShortIr";
      var96 = analytics->var96;
      v223[91] = @"ppgAcStdIrShortRed";
      var97 = analytics->var97;
      v223[92] = @"ppgAcStdRedLong";
      v311 = analytics->var98;
      v223[93] = @"ppgAcStdRedShortIr";
      var99 = analytics->var99;
      v223[94] = @"ppgAcStdRedShortRed";
      v313 = analytics->var100;
      v223[95] = @"ppgMeanBlank";
      v314 = analytics->var110;
      v223[96] = @"ppgMeanGreen";
      var109 = analytics->var109;
      v223[97] = @"ppgMeanIrLong";
      var103 = analytics->var103;
      v223[98] = @"ppgMeanIrShortIr";
      var104 = analytics->var104;
      v223[99] = @"ppgMeanIrShortRed";
      var105 = analytics->var105;
      v223[100] = @"ppgMeanRedLong";
      var106 = analytics->var106;
      v223[101] = @"ppgMeanRedShortIr";
      var107 = analytics->var107;
      v223[102] = @"ppgMeanRedShortRed";
      v321 = analytics->var108;
      v223[103] = @"rawSpO2";
      var1 = analytics->var1;
      var0 = analytics->var0;
      v223[104] = @"rawSpO2NoConfidenceGate";
      var5 = analytics->var5;
      var4 = analytics->var4;
      v223[105] = @"rawSpO2NoConfidenceGateWindow0";
      v324 = var5;
      v223[106] = @"rawSpO2NoConfidenceGateWindow1";
      var7 = analytics->var7;
      var6 = analytics->var6;
      v223[107] = @"rawSpO2NoConfidenceGateWindow2";
      v299 = v51;
      v55 = *&analytics->var88;
      v326 = var7;
      v223[108] = @"rawSpO2Window0";
      v327 = var1;
      v223[109] = @"rawSpO2Window1";
      var3 = analytics->var3;
      var2 = analytics->var2;
      v303 = v55;
      v223[110] = @"rawSpO2Window2";
      v329 = var3;
      v223[111] = @"redWavelength";
      var34 = analytics->var34;
      v223[112] = @"sessionCompleted";
      var26 = analytics->var26;
      v223[113] = @"sessionDuration";
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
      v223[114] = @"sessionSampleCount";
      var17 = analytics->var17;
      v223[115] = @"sessionSuccessful";
      var27 = analytics->var27;
      v223[116] = @"systemInstanceString";
      v223[117] = @"tiaGainBlank";
      var118 = analytics->var118;
      v223[118] = @"tiaGainGreen";
      var117 = analytics->var117;
      v332 = v57;
      v223[119] = @"tiaGainIrLong";
      var111 = analytics->var111;
      v335 = interfaceCopy;
      v223[120] = @"tiaGainIrShortIr";
      var112 = analytics->var112;
      v223[121] = @"tiaGainIrShortRed";
      var113 = analytics->var113;
      v223[122] = @"tiaGainRedLong";
      v341 = *&analytics->var114;
      v223[123] = @"tiaGainRedShortIr";
      v223[124] = @"tiaGainRedShortRed";
      var116 = analytics->var116;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v224 forKeys:v223 count:125];
    }

    else
    {
      v114 = *&analytics->var12;
      v113[0] = @"agcOpcDuration";
      v113[1] = @"agcOpcGreenSampleRate";
      v113[2] = @"agcOpcNumConverged";
      v113[3] = @"agcOpcNumRetries";
      v58 = analytics->var14;
      v115 = analytics->var15;
      v116 = v58;
      v113[4] = @"droppedSessionWindowCpmsMaxSegmentLength";
      v113[5] = @"droppedSessionWindowCpmsTotalLength";
      v59 = analytics->var46;
      v117 = analytics->var47;
      v118 = v59;
      v60 = analytics->var56;
      v113[6] = @"droppedSessionWindowDownTotalLength";
      v113[7] = @"droppedSessionWindowSaturationMaxSegmentLength";
      v62 = analytics->var48;
      v61 = analytics->var49;
      v119 = v60;
      v120 = v61;
      v113[8] = @"droppedSessionWindowSaturationTotalLength";
      v113[9] = @"highFrequencyWindow";
      v122 = *&analytics->var57;
      v113[10] = @"highFrequencyWindowLength";
      v113[11] = @"iledGreen";
      v63 = analytics->var121;
      v121 = v62;
      v123 = v63;
      v64 = analytics->var119;
      v113[12] = @"iledIr";
      v113[13] = @"iledRed";
      var120 = analytics->var120;
      v124 = v64;
      v125 = var120;
      v113[14] = @"incompleteReason";
      v24 = numberOrNsNull(analytics->var25);
      v126 = v24;
      v113[15] = @"internalTemperature";
      v25 = numberOrNsNull(analytics->var20);
      v66 = analytics->var33;
      v127 = v25;
      v128 = v66;
      v113[16] = @"irWavelength";
      v113[17] = @"mavMax1s";
      v129 = analytics->var123;
      v130 = *&analytics->var124;
      v113[18] = @"mavMean1s";
      v113[19] = @"mavMedian1s";
      v67 = analytics->var122;
      v113[20] = @"mavMin1s";
      v113[21] = @"mavStd1s";
      v68 = analytics->var126;
      v131 = v67;
      v132 = v68;
      v69 = analytics->var83;
      v113[22] = @"maxChannelConfidenceLong";
      v113[23] = @"maxChannelConfidenceShortIR";
      v70 = analytics->var81;
      v133 = v69;
      v134 = v70;
      v71 = analytics->var82;
      v113[24] = @"maxChannelConfidenceShortRed";
      v113[25] = @"meanAccelX";
      v136 = *&analytics->var35;
      v113[26] = @"meanAccelY";
      v113[27] = @"meanAccelZ";
      v72 = analytics->var37;
      v73 = analytics->var38;
      v135 = v71;
      v137 = v72;
      v74 = analytics->var45;
      v113[28] = @"meanPerfusionIndexGreenShort";
      v113[29] = @"meanPerfusionIndexIrLong";
      v75 = analytics->var41;
      v76 = analytics->var42;
      v138 = v74;
      v139 = v75;
      v113[30] = @"meanPerfusionIndexIrShort";
      v113[31] = @"meanPerfusionIndexRedLong";
      v77 = analytics->var43;
      v78 = analytics->var44;
      v140 = v76;
      v141 = v77;
      v113[32] = @"meanPerfusionIndexRedShort";
      v113[33] = @"meanSpO2Long";
      v80 = analytics->var39;
      v79 = analytics->var40;
      v142 = v78;
      v143 = v79;
      v113[34] = @"meanSpO2ShortIR";
      v113[35] = @"meanSpO2ShortRed";
      v144 = v73;
      v145 = v80;
      v81 = analytics->var80;
      v113[36] = @"medianChannelConfidenceLong";
      v113[37] = @"medianChannelConfidenceShortIR";
      var78 = analytics->var78;
      v146 = v81;
      v147 = var78;
      v83 = analytics->var79;
      v113[38] = @"medianChannelConfidenceShortRed";
      v113[39] = @"medianGIRPIR";
      v84 = analytics->var86;
      v148 = v83;
      v149 = v84;
      v85 = analytics->var84;
      v113[40] = @"medianMeasurementConfidence";
      v113[41] = @"medianWeightedStdDev";
      v86 = analytics->var85;
      v150 = v85;
      v151 = v86;
      v87 = analytics->var77;
      v113[42] = @"minChannelConfidenceLong";
      v113[43] = @"minChannelConfidenceShortIR";
      v88 = analytics->var75;
      v152 = v87;
      v153 = v88;
      v89 = analytics->var76;
      v113[44] = @"minChannelConfidenceShortRed";
      v113[45] = @"numChannelsPassingGIRPIR";
      v90 = analytics->var8;
      v154 = v89;
      v155 = v90;
      v113[46] = @"numChannelsPassingSNRMax";
      v113[47] = @"numChannelsPassingSNRMaxLong";
      v91 = analytics->var60;
      v156 = analytics->var59;
      v157 = v91;
      v113[48] = @"numChannelsPassingSNRMaxShortIR";
      v113[49] = @"numChannelsPassingSNRMaxShortRed";
      v92 = analytics->var62;
      v158 = analytics->var61;
      v159 = v92;
      v113[50] = @"numChannelsPassingSNRMin";
      v113[51] = @"numChannelsPassingSNRMinLong";
      v93 = analytics->var64;
      v160 = analytics->var63;
      v161 = v93;
      v94 = analytics->var65;
      v113[52] = @"numChannelsPassingSNRMinShortIR";
      v113[53] = @"numChannelsPassingSNRMinShortRed";
      v95 = analytics->var66;
      v162 = v94;
      v163 = v95;
      v113[54] = @"numFailedWinAggGIRPIR";
      v113[55] = @"numFailedWinStd";
      v96 = analytics->var29;
      v164 = analytics->var28;
      v165 = v96;
      v97 = analytics->var67;
      v113[56] = @"numHighConfidenceChannelsMax";
      v113[57] = @"numHighConfidenceChannelsMaxLong";
      v98 = analytics->var73;
      v166 = v97;
      v167 = v98;
      v99 = analytics->var69;
      v113[58] = @"numHighConfidenceChannelsMaxShortIR";
      v113[59] = @"numHighConfidenceChannelsMaxShortRed";
      v100 = analytics->var71;
      v168 = v99;
      v169 = v100;
      v101 = analytics->var68;
      v113[60] = @"numHighConfidenceChannelsMin";
      v113[61] = @"numHighConfidenceChannelsMinLong";
      v102 = analytics->var74;
      v170 = v101;
      v171 = v102;
      v103 = analytics->var70;
      v113[62] = @"numHighConfidenceChannelsMinShortIR";
      v113[63] = @"numHighConfidenceChannelsMinShortRed";
      v104 = analytics->var72;
      v172 = v103;
      v173 = v104;
      v113[64] = @"numMotionPrompts";
      var24 = analytics->var24;
      var23 = analytics->var23;
      v113[65] = @"numPosturePrompts";
      v175 = var24;
      v113[66] = @"numValidChannels";
      v49 = numberOrNsNull(analytics->var10);
      v176 = v49;
      v113[67] = @"postedHeartRate";
      v50 = numberOrNsNull(analytics->var21);
      v177 = v50;
      v113[68] = @"postedHeartRateRounded";
      v51 = numberOrNsNull(analytics->var21);
      v178 = v51;
      v113[69] = @"postedSpO2Rounded";
      v57 = numberOrNsNull(analytics->var22);
      v113[70] = @"ppgAcPeakToPeakBlank";
      v180 = analytics->var94;
      v113[71] = @"ppgAcPeakToPeakGreen";
      v181 = analytics->var93;
      v113[72] = @"ppgAcPeakToPeakIrLong";
      v182 = analytics->var87;
      v113[73] = @"ppgAcPeakToPeakIrShortIr";
      v183 = *&analytics->var88;
      v113[74] = @"ppgAcPeakToPeakIrShortRed";
      v113[75] = @"ppgAcPeakToPeakRedLong";
      var90 = analytics->var90;
      v113[76] = @"ppgAcPeakToPeakRedShortIr";
      v106 = *&analytics->var91;
      v113[77] = @"ppgAcPeakToPeakRedShortRed";
      v113[78] = @"ppgAcStdBlank";
      v186 = analytics->var102;
      v113[79] = @"ppgAcStdGreen";
      v187 = analytics->var101;
      v113[80] = @"ppgAcStdIrLong";
      v188 = analytics->var95;
      v113[81] = @"ppgAcStdIrShortIr";
      v189 = analytics->var96;
      v113[82] = @"ppgAcStdIrShortRed";
      v190 = analytics->var97;
      v113[83] = @"ppgAcStdRedLong";
      var98 = analytics->var98;
      v113[84] = @"ppgAcStdRedShortIr";
      v192 = analytics->var99;
      v113[85] = @"ppgAcStdRedShortRed";
      v193 = analytics->var100;
      v113[86] = @"ppgMeanBlank";
      v194 = analytics->var110;
      v113[87] = @"ppgMeanGreen";
      v195 = analytics->var109;
      v113[88] = @"ppgMeanIrLong";
      v196 = analytics->var103;
      v113[89] = @"ppgMeanIrShortIr";
      v197 = analytics->var104;
      v113[90] = @"ppgMeanIrShortRed";
      v198 = analytics->var105;
      v113[91] = @"ppgMeanRedLong";
      v199 = analytics->var106;
      v113[92] = @"ppgMeanRedShortIr";
      v200 = analytics->var107;
      v113[93] = @"ppgMeanRedShortRed";
      var108 = analytics->var108;
      v113[94] = @"rawSpO2";
      v202 = analytics->var0;
      v113[95] = @"rawSpO2NoConfidenceGate";
      v107 = analytics->var5;
      v203 = analytics->var4;
      v113[96] = @"rawSpO2NoConfidenceGateWindow0";
      v204 = v107;
      v113[97] = @"rawSpO2NoConfidenceGateWindow1";
      v108 = analytics->var7;
      v205 = analytics->var6;
      v113[98] = @"rawSpO2NoConfidenceGateWindow2";
      v206 = v108;
      v113[99] = @"realTimeMaxMAV";
      var30 = analytics->var30;
      var31 = analytics->var31;
      v113[100] = @"realTimeMedianMAV";
      var32 = analytics->var32;
      v113[101] = @"realTimeMinMAV";
      v179 = v57;
      v185 = v106;
      v209 = var30;
      v113[102] = @"redWavelength";
      v210 = analytics->var34;
      v113[103] = @"sessionCompleted";
      v211 = analytics->var26;
      v113[104] = @"sessionDuration";
      v110 = [MEMORY[0x277CCABB0] numberWithDouble:{duration, @"agcOpcDuration", @"agcOpcGreenSampleRate", @"agcOpcNumConverged", @"agcOpcNumRetries", @"droppedSessionWindowCpmsMaxSegmentLength", @"droppedSessionWindowCpmsTotalLength", @"droppedSessionWindowDownTotalLength", @"droppedSessionWindowSaturationMaxSegmentLength", @"droppedSessionWindowSaturationTotalLength", @"highFrequencyWindow", @"highFrequencyWindowLength", @"iledGreen", @"iledIr", @"iledRed", @"incompleteReason", @"internalTemperature", @"irWavelength", @"mavMax1s", @"mavMean1s", @"mavMedian1s", @"mavMin1s", @"mavStd1s", @"maxChannelConfidenceLong", @"maxChannelConfidenceShortIR", @"maxChannelConfidenceShortRed", @"meanAccelX", @"meanAccelY", @"meanAccelZ", @"meanPerfusionIndexGreenShort", @"meanPerfusionIndexIrLong", @"meanPerfusionIndexIrShort", @"meanPerfusionIndexRedLong", @"meanPerfusionIndexRedShort", @"meanSpO2Long", @"meanSpO2ShortIR", @"meanSpO2ShortRed", @"medianChannelConfidenceLong", @"medianChannelConfidenceShortIR", @"medianChannelConfidenceShortRed", @"medianGIRPIR", @"medianMeasurementConfidence", @"medianWeightedStdDev", @"minChannelConfidenceLong", @"minChannelConfidenceShortIR", @"minChannelConfidenceShortRed", @"numChannelsPassingGIRPIR", @"numChannelsPassingSNRMax", @"numChannelsPassingSNRMaxLong", @"numChannelsPassingSNRMaxShortIR", @"numChannelsPassingSNRMaxShortRed", @"numChannelsPassingSNRMin", @"numChannelsPassingSNRMinLong", @"numChannelsPassingSNRMinShortIR", @"numChannelsPassingSNRMinShortRed", @"numFailedWinAggGIRPIR", @"numFailedWinStd", @"numHighConfidenceChannelsMax", @"numHighConfidenceChannelsMaxLong", @"numHighConfidenceChannelsMaxShortIR", @"numHighConfidenceChannelsMaxShortRed"}];
      v113[105] = @"sessionSampleCount";
      v213 = analytics->var17;
      v113[106] = @"sessionSuccessful";
      v214 = analytics->var27;
      v113[107] = @"systemInstanceString";
      v113[108] = @"tiaGainBlank";
      v216 = analytics->var118;
      v212 = v110;
      v113[109] = @"tiaGainGreen";
      v217 = analytics->var117;
      v215 = interfaceCopy;
      v113[110] = @"tiaGainIrLong";
      v218 = analytics->var111;
      v113[111] = @"tiaGainIrShortIr";
      v219 = analytics->var112;
      v113[112] = @"tiaGainIrShortRed";
      v220 = analytics->var113;
      v113[113] = @"tiaGainRedLong";
      v221 = *&analytics->var114;
      v113[114] = @"tiaGainRedShortIr";
      v113[115] = @"tiaGainRedShortRed";
      v222 = analytics->var116;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:v113 count:116];
    }
  }

  v111 = *MEMORY[0x277D85DE8];

  return v9;
}

- (SCProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:
{
  v3 = *a2;
  WeakRetained = objc_loadWeakRetained((self + 8));
  forBackground = [WeakRetained forBackground];

  if ((forBackground & 1) == 0)
  {
    v6 = objc_loadWeakRetained((self + 8));
    [v6 handlePostureStatusChange:v3];
  }
}

- (uint64_t)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithStartPacket:(uint64_t)a1 ofLength:(NSObject *)a2 delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:.cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_fault_impl(&dword_2647F6000, a2, OS_LOG_TYPE_FAULT, "failed to construct algs Processor: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithStartPacket:(uint64_t)a1 ofLength:(NSObject *)a2 delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:.cold.3(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 134218496;
  v4 = 112;
  v5 = 2048;
  v6 = 115;
  v7 = 2048;
  v8 = a1;
  _os_log_fault_impl(&dword_2647F6000, a2, OS_LOG_TYPE_FAULT, "invalid start packet length: expected %zu or %zu, got %zu", &v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processPacket:(uint64_t)a1 ofLength:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = 247;
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_2647F6000, a2, OS_LOG_TYPE_ERROR, "invalid input packet length: expected %zu, got %zu", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processPacket:(uint8_t *)buf ofLength:(os_log_t)log .cold.2(char a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = "foreground";
  v5 = *a2;
  if (a1)
  {
    v4 = "background";
  }

  *buf = 136446466;
  *(buf + 4) = v4;
  *(buf + 6) = 1026;
  *(buf + 14) = v5 + 1;
  _os_log_fault_impl(&dword_2647F6000, log, OS_LOG_TYPE_FAULT, "the algorithms layer failed to produce a %{public}s result after %{public}d packets were processed", buf, 0x12u);
}

@end