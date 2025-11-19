@interface SCProcessor
- (SCProcessor)initWithStartPacket:(const void *)a3 ofLength:(unint64_t)a4 delegate:(id)a5 withSignalQualityMetricsEnabled:(BOOL)a6 bypassingAlgorithms:(BOOL)a7 forWindbreaker:(BOOL)a8 bootDate:(id)a9 hardwareModel:(id)a10;
- (SCProcessorDelegate)delegate;
- (id)dictionaryForAnalytics:(const SCAnalytics *)a3 sessionDuration:(double)a4 systemInterface:(id)a5;
- (uint64_t)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:;
- (void)handleAbort:(unsigned __int8)a3 withAnalytics:(const void *)a4;
- (void)handleResult:(const Result *)a3 withAnalytics:(const void *)a4;
- (void)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:;
- (void)processPacket:(const void *)a3 ofLength:(unint64_t)a4;
- (void)windbreakerSessionDidAbortForReason:(unsigned __int8)a3;
- (void)windbreakerSessionDidComplete;
@end

@implementation SCProcessor

- (SCProcessor)initWithStartPacket:(const void *)a3 ofLength:(unint64_t)a4 delegate:(id)a5 withSignalQualityMetricsEnabled:(BOOL)a6 bypassingAlgorithms:(BOOL)a7 forWindbreaker:(BOOL)a8 bootDate:(id)a9 hardwareModel:(id)a10
{
  v10 = a8;
  v11 = a7;
  v67 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16 = a9;
  v17 = a10;
  v51.receiver = self;
  v51.super_class = SCProcessor;
  v18 = [(SCProcessor *)&v51 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v15);
    if (a4 == 112 || a4 == 115)
    {
      v19->_bypassAlgorithms = v11;
      if (v11)
      {
        v20 = sc_get_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2647F6000, v20, OS_LOG_TYPE_DEFAULT, "note that the algorithms are being bypassed", buf, 2u);
        }
      }

      v19->_forWindbreaker = v10;
      if (v10)
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
        v24 = [v17 dataUsingEncoding:4];
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
        [v16 timeIntervalSinceReferenceDate];
        *&v66[4] = v25;
        LODWORD(v52) = 1310925;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v52 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:buf length:20];
        if (a4 == 112)
        {
          v26 = 276;
        }

        else
        {
          v26 = 284;
        }

        LOWORD(v52) = v26;
        WORD1(v52) = a4;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v52 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:a3 length:a4];
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
      if (a4 == 112)
      {
        v42 = *a3;
        v43 = *(a3 + 2);
        v27 = *(a3 + 3);
        v28 = *(a3 + 59);
        v29 = *(a3 + 91);
        v63 = *(a3 + 75);
        v64[0] = v29;
        *(v64 + 13) = *(a3 + 13);
        v30 = *(a3 + 27);
        v59 = *(a3 + 11);
        v60 = v30;
        v61 = *(a3 + 43);
        v62 = v28;
        v31 = v17;
        [v17 UTF8String];
        operator new();
      }

      v40 = *a3;
      v41 = *(a3 + 2);
      v33 = *(a3 + 3);
      v34 = *(a3 + 59);
      v35 = *(a3 + 91);
      v56 = *(a3 + 75);
      v57 = v35;
      v58 = *(a3 + 107);
      v36 = *(a3 + 27);
      v52 = *(a3 + 11);
      v53 = v36;
      v54 = *(a3 + 43);
      v55 = v34;
      v37 = v17;
      [v17 UTF8String];
      operator new();
    }

    v32 = sc_get_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [SCProcessor initWithStartPacket:a4 ofLength:v32 delegate:? withSignalQualityMetricsEnabled:? bypassingAlgorithms:? forWindbreaker:? bootDate:? hardwareModel:?];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)handleResult:(const Result *)a3 withAnalytics:(const void *)a4
{
  v6 = *a3;
  p_var1 = &a3->var1;
  v7 = *&v6;
  v11 = v6;
  if (v6.var0 < 70.0)
  {
    *&v7 = 1.0;
  }

  v10 = LODWORD(v7);
  scandium::convert_analytics_to_objc(a4, 0, p_var1, &v10, 1, &v9, v7);
  v8 = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  [v8 handleResult:&v11 withAnalytics:&v9 atTimestamp:?];

  self->_expended = 1;
  SCAnalytics::~SCAnalytics(&v9);
}

- (void)windbreakerSessionDidComplete
{
  v3 = [(SCProcessor *)self delegate];
  rawDataForWindbreaker = self->_rawDataForWindbreaker;
  [(SCProcessor *)self currentTimestamp];
  [v3 windbreakerSessionDidCompleteWithRawDataRecorded:rawDataForWindbreaker atTimestamp:?];

  self->_expended = 1;
}

- (void)windbreakerSessionDidAbortForReason:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  if (v3 - 1 >= 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  [v5 handleAbort:v6 withAnalytics:0 atTimestamp:?];

  self->_expended = 1;
}

- (void)handleAbort:(unsigned __int8)a3 withAnalytics:(const void *)a4
{
  if ((a3 - 1) >= 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  scandium::convert_analytics_to_objc(a4, v6 | 0x100, 0, 0, 0, &v8, v4);
  v7 = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  [v7 handleAbort:v6 withAnalytics:&v8 atTimestamp:?];

  self->_expended = 1;
  SCAnalytics::~SCAnalytics(&v8);
}

- (void)processPacket:(const void *)a3 ofLength:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4 == 247)
  {
    p_processor = &self->_processor;
    if (self->_processor.__ptr_)
    {
      if (self->_forWindbreaker)
      {
        LODWORD(buf.var0) = 16187667;
        [(NSMutableData *)self->_rawDataForWindbreaker appendBytes:&buf length:4];
        [(NSMutableData *)self->_rawDataForWindbreaker appendBytes:a3 length:247];
      }

      v7 = *(a3 + 13);
      v23[12] = *(a3 + 12);
      v23[13] = v7;
      v24[0] = *(a3 + 14);
      *(v24 + 15) = *(a3 + 239);
      v8 = *(a3 + 9);
      v23[8] = *(a3 + 8);
      v23[9] = v8;
      v9 = *(a3 + 11);
      v23[10] = *(a3 + 10);
      v23[11] = v9;
      v10 = *(a3 + 5);
      v23[4] = *(a3 + 4);
      v23[5] = v10;
      v11 = *(a3 + 7);
      v23[6] = *(a3 + 6);
      v23[7] = v11;
      v12 = *(a3 + 1);
      v23[0] = *a3;
      v23[1] = v12;
      v13 = *(a3 + 3);
      v23[2] = *(a3 + 2);
      v23[3] = v13;
      if (self->_bypassAlgorithms)
      {
        frameCount = self->_frameCount;
        if (frameCount == scandium::Processor::max_packet_count(self->_processor.__ptr_) - 1)
        {
          v22 = 0x4270000042C80000;
          bzero(&buf, 0x3F8uLL);
          v15 = [(SCProcessor *)self delegate];
          [(SCProcessor *)self currentTimestamp];
          [v15 handleResult:&v22 withAnalytics:&buf atTimestamp:?];

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

          v20 = [(SCProcessor *)self delegate];
          [(SCProcessor *)self currentTimestamp];
          [v20 handleAbort:8 withAnalytics:0 atTimestamp:?];

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
      [SCProcessor processPacket:a4 ofLength:v17];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryForAnalytics:(const SCAnalytics *)a3 sessionDuration:(double)a4 systemInterface:(id)a5
{
  v343 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (self->_bypassAlgorithms)
  {
    v9 = MEMORY[0x277CBEC10];
  }

  else
  {
    if ([(SCProcessor *)self forBackground])
    {
      v224 = *&a3->var12;
      v223[0] = @"agcOpcDuration";
      v223[1] = @"agcOpcGreenSampleRate";
      v223[2] = @"agcOpcNumConverged";
      v223[3] = @"agcOpcNumRetries";
      var14 = a3->var14;
      var15 = a3->var15;
      v226 = var14;
      v223[4] = @"bailoutPoint";
      v223[5] = @"droppedSessionWindowCpmsTotalLength";
      var46 = a3->var46;
      var47 = a3->var47;
      var19 = a3->var19;
      var18 = a3->var18;
      v228 = var46;
      v223[6] = @"droppedSessionWindowCpmsMaxSegmentLength";
      v223[7] = @"droppedSessionWindowSaturationMaxSegmentLength";
      var48 = a3->var48;
      var49 = a3->var49;
      v229 = var47;
      v230 = var49;
      v223[8] = @"droppedSessionWindowDownTotalLength";
      v223[9] = @"droppedSessionWindowSaturationTotalLength";
      var57 = a3->var57;
      var56 = a3->var56;
      v232 = var48;
      v223[10] = @"droppedWindow0CpmsTotalLength";
      v223[11] = @"droppedWindow0SaturationTotalLength";
      var51 = a3->var51;
      var50 = a3->var50;
      v234 = var51;
      v223[12] = @"droppedWindow1CpmsTotalLength";
      v223[13] = @"droppedWindow1SaturationTotalLength";
      var53 = a3->var53;
      var52 = a3->var52;
      v236 = var53;
      v223[14] = @"droppedWindow2CpmsTotalLength";
      v223[15] = @"droppedWindow2SaturationTotalLength";
      var55 = a3->var55;
      var54 = a3->var54;
      v238 = var55;
      v223[16] = @"earlyBailout";
      v223[17] = @"highFrequencyWindow";
      v239 = var19;
      v240 = var57;
      var58 = a3->var58;
      v223[18] = @"highFrequencyWindowLength";
      v223[19] = @"iledGreen";
      var121 = a3->var121;
      v241 = var58;
      v242 = var121;
      var119 = a3->var119;
      v223[20] = @"iledIr";
      v223[21] = @"iledRed";
      v23 = a3->var120;
      v243 = var119;
      v244 = v23;
      v223[22] = @"incompleteReason";
      v24 = numberOrNsNull(a3->var25);
      v245 = v24;
      v223[23] = @"internalTemperature";
      v25 = numberOrNsNull(a3->var20);
      var33 = a3->var33;
      v246 = v25;
      v247 = var33;
      v223[24] = @"irWavelength";
      v223[25] = @"mavMax1s";
      var123 = a3->var123;
      v255 = *&a3->var35;
      v28 = *&a3->var124;
      v223[26] = @"mavMean1s";
      v223[27] = @"mavMedian1s";
      var122 = a3->var122;
      v248 = var123;
      v250 = var122;
      v223[28] = @"mavMin1s";
      v223[29] = @"mavStd1s";
      var83 = a3->var83;
      var126 = a3->var126;
      v252 = var83;
      v223[30] = @"maxChannelConfidenceLong";
      v223[31] = @"maxChannelConfidenceShortIR";
      var82 = a3->var82;
      var81 = a3->var81;
      v254 = var82;
      v223[32] = @"maxChannelConfidenceShortRed";
      v223[33] = @"meanAccelX";
      v223[34] = @"meanAccelY";
      v223[35] = @"meanAccelZ";
      var45 = a3->var45;
      var38 = a3->var38;
      var37 = a3->var37;
      v257 = var45;
      v223[36] = @"meanPerfusionIndexGreenShort";
      v223[37] = @"meanPerfusionIndexIrLong";
      var42 = a3->var42;
      var41 = a3->var41;
      v259 = var42;
      v223[38] = @"meanPerfusionIndexIrShort";
      v223[39] = @"meanPerfusionIndexRedLong";
      var44 = a3->var44;
      var43 = a3->var43;
      v261 = var44;
      v223[40] = @"meanPerfusionIndexRedShort";
      v223[41] = @"meanSpO2Long";
      var39 = a3->var39;
      var40 = a3->var40;
      v263 = var38;
      v249 = v28;
      v223[42] = @"meanSpO2ShortIR";
      v223[43] = @"meanSpO2ShortRed";
      var80 = a3->var80;
      v264 = var39;
      v265 = var80;
      v223[44] = @"medianChannelConfidenceLong";
      v223[45] = @"medianChannelConfidenceShortIR";
      var79 = a3->var79;
      v266 = a3->var78;
      v267 = var79;
      v223[46] = @"medianChannelConfidenceShortRed";
      v223[47] = @"medianGIRPIR";
      var84 = a3->var84;
      var86 = a3->var86;
      v269 = var84;
      v223[48] = @"medianMeasurementConfidence";
      v223[49] = @"medianWeightedStdDev";
      var77 = a3->var77;
      var85 = a3->var85;
      v271 = var77;
      v223[50] = @"minChannelConfidenceLong";
      v223[51] = @"minChannelConfidenceShortIR";
      var76 = a3->var76;
      var75 = a3->var75;
      v273 = var76;
      v223[52] = @"minChannelConfidenceShortRed";
      v223[53] = @"numChannelsPassingGIRPIRMax";
      var9 = a3->var9;
      var8 = a3->var8;
      v275 = var9;
      v223[54] = @"numChannelsPassingGIRPIRMin";
      v223[55] = @"numChannelsPassingSNRMax";
      var60 = a3->var60;
      var59 = a3->var59;
      v277 = var60;
      v223[56] = @"numChannelsPassingSNRMaxLong";
      v223[57] = @"numChannelsPassingSNRMaxShortIR";
      var62 = a3->var62;
      var61 = a3->var61;
      v279 = var62;
      v223[58] = @"numChannelsPassingSNRMaxShortRed";
      v223[59] = @"numChannelsPassingSNRMin";
      var64 = a3->var64;
      var63 = a3->var63;
      v281 = var64;
      v223[60] = @"numChannelsPassingSNRMinLong";
      v223[61] = @"numChannelsPassingSNRMinShortIR";
      var66 = a3->var66;
      var65 = a3->var65;
      v283 = var66;
      v223[62] = @"numChannelsPassingSNRMinShortRed";
      v223[63] = @"numFailedWinAggGIRPIR";
      v223[64] = @"numFailedWinStd";
      var29 = a3->var29;
      var28 = a3->var28;
      v285 = var29;
      v223[65] = @"numHighConfidenceChannelsMax";
      var67 = a3->var67;
      v223[66] = @"numHighConfidenceChannelsMaxLong";
      var73 = a3->var73;
      v223[67] = @"numHighConfidenceChannelsMaxShortIR";
      var69 = a3->var69;
      v223[68] = @"numHighConfidenceChannelsMaxShortRed";
      var71 = a3->var71;
      v223[69] = @"numHighConfidenceChannelsMin";
      var68 = a3->var68;
      v223[70] = @"numHighConfidenceChannelsMinLong";
      var74 = a3->var74;
      v223[71] = @"numHighConfidenceChannelsMinShortIR";
      v292 = a3->var70;
      v223[72] = @"numHighConfidenceChannelsMinShortRed";
      var72 = a3->var72;
      v223[73] = @"numSuccessfulWindows";
      var16 = a3->var16;
      v223[74] = @"numValidChannelsMax";
      var11 = a3->var11;
      var10 = a3->var10;
      v223[75] = @"numValidChannelsMin";
      v296 = var11;
      v223[76] = @"postedHeartRate";
      v49 = numberOrNsNull(a3->var21);
      v297 = v49;
      v223[77] = @"postedHeartRateRounded";
      v50 = numberOrNsNull(a3->var21);
      v298 = v50;
      v223[78] = @"postedSpO2Rounded";
      v51 = numberOrNsNull(a3->var22);
      v223[79] = @"ppgAcPeakToPeakBlank";
      var94 = a3->var94;
      v223[80] = @"ppgAcPeakToPeakGreen";
      var93 = a3->var93;
      v223[81] = @"ppgAcPeakToPeakIrLong";
      var87 = a3->var87;
      v223[82] = @"ppgAcPeakToPeakIrShortIr";
      v223[83] = @"ppgAcPeakToPeakIrShortRed";
      v223[84] = @"ppgAcPeakToPeakRedLong";
      v304 = a3->var90;
      v223[85] = @"ppgAcPeakToPeakRedShortIr";
      v305 = *&a3->var91;
      v223[86] = @"ppgAcPeakToPeakRedShortRed";
      v223[87] = @"ppgAcStdBlank";
      var102 = a3->var102;
      v223[88] = @"ppgAcStdGreen";
      var101 = a3->var101;
      v223[89] = @"ppgAcStdIrLong";
      var95 = a3->var95;
      v223[90] = @"ppgAcStdIrShortIr";
      var96 = a3->var96;
      v223[91] = @"ppgAcStdIrShortRed";
      var97 = a3->var97;
      v223[92] = @"ppgAcStdRedLong";
      v311 = a3->var98;
      v223[93] = @"ppgAcStdRedShortIr";
      var99 = a3->var99;
      v223[94] = @"ppgAcStdRedShortRed";
      v313 = a3->var100;
      v223[95] = @"ppgMeanBlank";
      v314 = a3->var110;
      v223[96] = @"ppgMeanGreen";
      var109 = a3->var109;
      v223[97] = @"ppgMeanIrLong";
      var103 = a3->var103;
      v223[98] = @"ppgMeanIrShortIr";
      var104 = a3->var104;
      v223[99] = @"ppgMeanIrShortRed";
      var105 = a3->var105;
      v223[100] = @"ppgMeanRedLong";
      var106 = a3->var106;
      v223[101] = @"ppgMeanRedShortIr";
      var107 = a3->var107;
      v223[102] = @"ppgMeanRedShortRed";
      v321 = a3->var108;
      v223[103] = @"rawSpO2";
      var1 = a3->var1;
      var0 = a3->var0;
      v223[104] = @"rawSpO2NoConfidenceGate";
      var5 = a3->var5;
      var4 = a3->var4;
      v223[105] = @"rawSpO2NoConfidenceGateWindow0";
      v324 = var5;
      v223[106] = @"rawSpO2NoConfidenceGateWindow1";
      var7 = a3->var7;
      var6 = a3->var6;
      v223[107] = @"rawSpO2NoConfidenceGateWindow2";
      v299 = v51;
      v55 = *&a3->var88;
      v326 = var7;
      v223[108] = @"rawSpO2Window0";
      v327 = var1;
      v223[109] = @"rawSpO2Window1";
      var3 = a3->var3;
      var2 = a3->var2;
      v303 = v55;
      v223[110] = @"rawSpO2Window2";
      v329 = var3;
      v223[111] = @"redWavelength";
      var34 = a3->var34;
      v223[112] = @"sessionCompleted";
      var26 = a3->var26;
      v223[113] = @"sessionDuration";
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      v223[114] = @"sessionSampleCount";
      var17 = a3->var17;
      v223[115] = @"sessionSuccessful";
      var27 = a3->var27;
      v223[116] = @"systemInstanceString";
      v223[117] = @"tiaGainBlank";
      var118 = a3->var118;
      v223[118] = @"tiaGainGreen";
      var117 = a3->var117;
      v332 = v57;
      v223[119] = @"tiaGainIrLong";
      var111 = a3->var111;
      v335 = v8;
      v223[120] = @"tiaGainIrShortIr";
      var112 = a3->var112;
      v223[121] = @"tiaGainIrShortRed";
      var113 = a3->var113;
      v223[122] = @"tiaGainRedLong";
      v341 = *&a3->var114;
      v223[123] = @"tiaGainRedShortIr";
      v223[124] = @"tiaGainRedShortRed";
      var116 = a3->var116;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v224 forKeys:v223 count:125];
    }

    else
    {
      v114 = *&a3->var12;
      v113[0] = @"agcOpcDuration";
      v113[1] = @"agcOpcGreenSampleRate";
      v113[2] = @"agcOpcNumConverged";
      v113[3] = @"agcOpcNumRetries";
      v58 = a3->var14;
      v115 = a3->var15;
      v116 = v58;
      v113[4] = @"droppedSessionWindowCpmsMaxSegmentLength";
      v113[5] = @"droppedSessionWindowCpmsTotalLength";
      v59 = a3->var46;
      v117 = a3->var47;
      v118 = v59;
      v60 = a3->var56;
      v113[6] = @"droppedSessionWindowDownTotalLength";
      v113[7] = @"droppedSessionWindowSaturationMaxSegmentLength";
      v62 = a3->var48;
      v61 = a3->var49;
      v119 = v60;
      v120 = v61;
      v113[8] = @"droppedSessionWindowSaturationTotalLength";
      v113[9] = @"highFrequencyWindow";
      v122 = *&a3->var57;
      v113[10] = @"highFrequencyWindowLength";
      v113[11] = @"iledGreen";
      v63 = a3->var121;
      v121 = v62;
      v123 = v63;
      v64 = a3->var119;
      v113[12] = @"iledIr";
      v113[13] = @"iledRed";
      var120 = a3->var120;
      v124 = v64;
      v125 = var120;
      v113[14] = @"incompleteReason";
      v24 = numberOrNsNull(a3->var25);
      v126 = v24;
      v113[15] = @"internalTemperature";
      v25 = numberOrNsNull(a3->var20);
      v66 = a3->var33;
      v127 = v25;
      v128 = v66;
      v113[16] = @"irWavelength";
      v113[17] = @"mavMax1s";
      v129 = a3->var123;
      v130 = *&a3->var124;
      v113[18] = @"mavMean1s";
      v113[19] = @"mavMedian1s";
      v67 = a3->var122;
      v113[20] = @"mavMin1s";
      v113[21] = @"mavStd1s";
      v68 = a3->var126;
      v131 = v67;
      v132 = v68;
      v69 = a3->var83;
      v113[22] = @"maxChannelConfidenceLong";
      v113[23] = @"maxChannelConfidenceShortIR";
      v70 = a3->var81;
      v133 = v69;
      v134 = v70;
      v71 = a3->var82;
      v113[24] = @"maxChannelConfidenceShortRed";
      v113[25] = @"meanAccelX";
      v136 = *&a3->var35;
      v113[26] = @"meanAccelY";
      v113[27] = @"meanAccelZ";
      v72 = a3->var37;
      v73 = a3->var38;
      v135 = v71;
      v137 = v72;
      v74 = a3->var45;
      v113[28] = @"meanPerfusionIndexGreenShort";
      v113[29] = @"meanPerfusionIndexIrLong";
      v75 = a3->var41;
      v76 = a3->var42;
      v138 = v74;
      v139 = v75;
      v113[30] = @"meanPerfusionIndexIrShort";
      v113[31] = @"meanPerfusionIndexRedLong";
      v77 = a3->var43;
      v78 = a3->var44;
      v140 = v76;
      v141 = v77;
      v113[32] = @"meanPerfusionIndexRedShort";
      v113[33] = @"meanSpO2Long";
      v80 = a3->var39;
      v79 = a3->var40;
      v142 = v78;
      v143 = v79;
      v113[34] = @"meanSpO2ShortIR";
      v113[35] = @"meanSpO2ShortRed";
      v144 = v73;
      v145 = v80;
      v81 = a3->var80;
      v113[36] = @"medianChannelConfidenceLong";
      v113[37] = @"medianChannelConfidenceShortIR";
      var78 = a3->var78;
      v146 = v81;
      v147 = var78;
      v83 = a3->var79;
      v113[38] = @"medianChannelConfidenceShortRed";
      v113[39] = @"medianGIRPIR";
      v84 = a3->var86;
      v148 = v83;
      v149 = v84;
      v85 = a3->var84;
      v113[40] = @"medianMeasurementConfidence";
      v113[41] = @"medianWeightedStdDev";
      v86 = a3->var85;
      v150 = v85;
      v151 = v86;
      v87 = a3->var77;
      v113[42] = @"minChannelConfidenceLong";
      v113[43] = @"minChannelConfidenceShortIR";
      v88 = a3->var75;
      v152 = v87;
      v153 = v88;
      v89 = a3->var76;
      v113[44] = @"minChannelConfidenceShortRed";
      v113[45] = @"numChannelsPassingGIRPIR";
      v90 = a3->var8;
      v154 = v89;
      v155 = v90;
      v113[46] = @"numChannelsPassingSNRMax";
      v113[47] = @"numChannelsPassingSNRMaxLong";
      v91 = a3->var60;
      v156 = a3->var59;
      v157 = v91;
      v113[48] = @"numChannelsPassingSNRMaxShortIR";
      v113[49] = @"numChannelsPassingSNRMaxShortRed";
      v92 = a3->var62;
      v158 = a3->var61;
      v159 = v92;
      v113[50] = @"numChannelsPassingSNRMin";
      v113[51] = @"numChannelsPassingSNRMinLong";
      v93 = a3->var64;
      v160 = a3->var63;
      v161 = v93;
      v94 = a3->var65;
      v113[52] = @"numChannelsPassingSNRMinShortIR";
      v113[53] = @"numChannelsPassingSNRMinShortRed";
      v95 = a3->var66;
      v162 = v94;
      v163 = v95;
      v113[54] = @"numFailedWinAggGIRPIR";
      v113[55] = @"numFailedWinStd";
      v96 = a3->var29;
      v164 = a3->var28;
      v165 = v96;
      v97 = a3->var67;
      v113[56] = @"numHighConfidenceChannelsMax";
      v113[57] = @"numHighConfidenceChannelsMaxLong";
      v98 = a3->var73;
      v166 = v97;
      v167 = v98;
      v99 = a3->var69;
      v113[58] = @"numHighConfidenceChannelsMaxShortIR";
      v113[59] = @"numHighConfidenceChannelsMaxShortRed";
      v100 = a3->var71;
      v168 = v99;
      v169 = v100;
      v101 = a3->var68;
      v113[60] = @"numHighConfidenceChannelsMin";
      v113[61] = @"numHighConfidenceChannelsMinLong";
      v102 = a3->var74;
      v170 = v101;
      v171 = v102;
      v103 = a3->var70;
      v113[62] = @"numHighConfidenceChannelsMinShortIR";
      v113[63] = @"numHighConfidenceChannelsMinShortRed";
      v104 = a3->var72;
      v172 = v103;
      v173 = v104;
      v113[64] = @"numMotionPrompts";
      var24 = a3->var24;
      var23 = a3->var23;
      v113[65] = @"numPosturePrompts";
      v175 = var24;
      v113[66] = @"numValidChannels";
      v49 = numberOrNsNull(a3->var10);
      v176 = v49;
      v113[67] = @"postedHeartRate";
      v50 = numberOrNsNull(a3->var21);
      v177 = v50;
      v113[68] = @"postedHeartRateRounded";
      v51 = numberOrNsNull(a3->var21);
      v178 = v51;
      v113[69] = @"postedSpO2Rounded";
      v57 = numberOrNsNull(a3->var22);
      v113[70] = @"ppgAcPeakToPeakBlank";
      v180 = a3->var94;
      v113[71] = @"ppgAcPeakToPeakGreen";
      v181 = a3->var93;
      v113[72] = @"ppgAcPeakToPeakIrLong";
      v182 = a3->var87;
      v113[73] = @"ppgAcPeakToPeakIrShortIr";
      v183 = *&a3->var88;
      v113[74] = @"ppgAcPeakToPeakIrShortRed";
      v113[75] = @"ppgAcPeakToPeakRedLong";
      var90 = a3->var90;
      v113[76] = @"ppgAcPeakToPeakRedShortIr";
      v106 = *&a3->var91;
      v113[77] = @"ppgAcPeakToPeakRedShortRed";
      v113[78] = @"ppgAcStdBlank";
      v186 = a3->var102;
      v113[79] = @"ppgAcStdGreen";
      v187 = a3->var101;
      v113[80] = @"ppgAcStdIrLong";
      v188 = a3->var95;
      v113[81] = @"ppgAcStdIrShortIr";
      v189 = a3->var96;
      v113[82] = @"ppgAcStdIrShortRed";
      v190 = a3->var97;
      v113[83] = @"ppgAcStdRedLong";
      var98 = a3->var98;
      v113[84] = @"ppgAcStdRedShortIr";
      v192 = a3->var99;
      v113[85] = @"ppgAcStdRedShortRed";
      v193 = a3->var100;
      v113[86] = @"ppgMeanBlank";
      v194 = a3->var110;
      v113[87] = @"ppgMeanGreen";
      v195 = a3->var109;
      v113[88] = @"ppgMeanIrLong";
      v196 = a3->var103;
      v113[89] = @"ppgMeanIrShortIr";
      v197 = a3->var104;
      v113[90] = @"ppgMeanIrShortRed";
      v198 = a3->var105;
      v113[91] = @"ppgMeanRedLong";
      v199 = a3->var106;
      v113[92] = @"ppgMeanRedShortIr";
      v200 = a3->var107;
      v113[93] = @"ppgMeanRedShortRed";
      var108 = a3->var108;
      v113[94] = @"rawSpO2";
      v202 = a3->var0;
      v113[95] = @"rawSpO2NoConfidenceGate";
      v107 = a3->var5;
      v203 = a3->var4;
      v113[96] = @"rawSpO2NoConfidenceGateWindow0";
      v204 = v107;
      v113[97] = @"rawSpO2NoConfidenceGateWindow1";
      v108 = a3->var7;
      v205 = a3->var6;
      v113[98] = @"rawSpO2NoConfidenceGateWindow2";
      v206 = v108;
      v113[99] = @"realTimeMaxMAV";
      var30 = a3->var30;
      var31 = a3->var31;
      v113[100] = @"realTimeMedianMAV";
      var32 = a3->var32;
      v113[101] = @"realTimeMinMAV";
      v179 = v57;
      v185 = v106;
      v209 = var30;
      v113[102] = @"redWavelength";
      v210 = a3->var34;
      v113[103] = @"sessionCompleted";
      v211 = a3->var26;
      v113[104] = @"sessionDuration";
      v110 = [MEMORY[0x277CCABB0] numberWithDouble:{a4, @"agcOpcDuration", @"agcOpcGreenSampleRate", @"agcOpcNumConverged", @"agcOpcNumRetries", @"droppedSessionWindowCpmsMaxSegmentLength", @"droppedSessionWindowCpmsTotalLength", @"droppedSessionWindowDownTotalLength", @"droppedSessionWindowSaturationMaxSegmentLength", @"droppedSessionWindowSaturationTotalLength", @"highFrequencyWindow", @"highFrequencyWindowLength", @"iledGreen", @"iledIr", @"iledRed", @"incompleteReason", @"internalTemperature", @"irWavelength", @"mavMax1s", @"mavMean1s", @"mavMedian1s", @"mavMin1s", @"mavStd1s", @"maxChannelConfidenceLong", @"maxChannelConfidenceShortIR", @"maxChannelConfidenceShortRed", @"meanAccelX", @"meanAccelY", @"meanAccelZ", @"meanPerfusionIndexGreenShort", @"meanPerfusionIndexIrLong", @"meanPerfusionIndexIrShort", @"meanPerfusionIndexRedLong", @"meanPerfusionIndexRedShort", @"meanSpO2Long", @"meanSpO2ShortIR", @"meanSpO2ShortRed", @"medianChannelConfidenceLong", @"medianChannelConfidenceShortIR", @"medianChannelConfidenceShortRed", @"medianGIRPIR", @"medianMeasurementConfidence", @"medianWeightedStdDev", @"minChannelConfidenceLong", @"minChannelConfidenceShortIR", @"minChannelConfidenceShortRed", @"numChannelsPassingGIRPIR", @"numChannelsPassingSNRMax", @"numChannelsPassingSNRMaxLong", @"numChannelsPassingSNRMaxShortIR", @"numChannelsPassingSNRMaxShortRed", @"numChannelsPassingSNRMin", @"numChannelsPassingSNRMinLong", @"numChannelsPassingSNRMinShortIR", @"numChannelsPassingSNRMinShortRed", @"numFailedWinAggGIRPIR", @"numFailedWinStd", @"numHighConfidenceChannelsMax", @"numHighConfidenceChannelsMaxLong", @"numHighConfidenceChannelsMaxShortIR", @"numHighConfidenceChannelsMaxShortRed"}];
      v113[105] = @"sessionSampleCount";
      v213 = a3->var17;
      v113[106] = @"sessionSuccessful";
      v214 = a3->var27;
      v113[107] = @"systemInstanceString";
      v113[108] = @"tiaGainBlank";
      v216 = a3->var118;
      v212 = v110;
      v113[109] = @"tiaGainGreen";
      v217 = a3->var117;
      v215 = v8;
      v113[110] = @"tiaGainIrLong";
      v218 = a3->var111;
      v113[111] = @"tiaGainIrShortIr";
      v219 = a3->var112;
      v113[112] = @"tiaGainIrShortRed";
      v220 = a3->var113;
      v113[113] = @"tiaGainRedLong";
      v221 = *&a3->var114;
      v113[114] = @"tiaGainRedShortIr";
      v113[115] = @"tiaGainRedShortRed";
      v222 = a3->var116;
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
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v4 = [WeakRetained forBackground];

  if ((v4 & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 8));
    [v6 handlePostureStatusChange:v3];
  }
}

- (uint64_t)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:
{
  {
    return a1 + 8;
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