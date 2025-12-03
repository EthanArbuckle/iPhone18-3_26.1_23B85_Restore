@interface ContinuousAVFlowDetector
- (ContinuousAVFlowDetector)init;
- (int)possibleAVFlowScore:(id)score result:(AVFlowDetectionResult *)result;
- (void)setDefaults;
@end

@implementation ContinuousAVFlowDetector

- (void)setDefaults
{
  self->_minUDPFlowSamplesForAudioVideoDetermination = 4;
  self->_minUDPFlowElapsedTimeForAudioVideoDetermination = 8.0;
  self->_minUDPFlowDuplexThroughputForAudioVideoDetermination = 0.0005;
  self->_minTCPFlowSamplesForAudioVideoDetermination = 8;
  self->_minTCPFlowElapsedTimeForAudioVideoDetermination = 16.0;
  self->_minTCPFlowDuplexThroughputForAudioVideoDetermination = 0.0005;
}

- (ContinuousAVFlowDetector)init
{
  v5.receiver = self;
  v5.super_class = ContinuousAVFlowDetector;
  v2 = [(ContinuousAVFlowDetector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ContinuousAVFlowDetector *)v2 setDefaults];
  }

  return v3;
}

- (int)possibleAVFlowScore:(id)score result:(AVFlowDetectionResult *)result
{
  v63 = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  v37 = 0.0;
  v38 = 0;
  v35 = 0.0;
  v36 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0.0;
  v28 = 0.0;
  v7 = 0.0;
  if (![scoreCopy statisticsForSampleCount:&v38 sampleDuration:&v37 minRxTput:&v36 avgRxTput:&v32 maxRxTput:&v34 avgCeilingRxTput:&v30 normalizedRxStdDeviation:&v28 minTxTput:&v35 avgTxTput:&v31 maxTxTput:&v33 avgCeilingTxTput:&v29 normalizedTxStdDeviation:&v27 requiredMinSampleCount:3])
  {
    v11 = 0;
    v12 = @"ContinuousAVFlowDetector-no-stats";
    goto LABEL_24;
  }

  if ([scoreCopy flowIsUDP])
  {
    v8 = &OBJC_IVAR___ContinuousAVFlowDetector__minUDPFlowDuplexThroughputForAudioVideoDetermination;
    v9 = &OBJC_IVAR___ContinuousAVFlowDetector__minUDPFlowElapsedTimeForAudioVideoDetermination;
    v10 = &OBJC_IVAR___ContinuousAVFlowDetector__minUDPFlowSamplesForAudioVideoDetermination;
  }

  else
  {
    if (([scoreCopy flowIsTCP] & 1) == 0 && !objc_msgSend(scoreCopy, "flowIsQUIC"))
    {
      v13 = -1;
      v15 = 1000000.0;
      v14 = 86400.0;
      goto LABEL_9;
    }

    v8 = &OBJC_IVAR___ContinuousAVFlowDetector__minTCPFlowDuplexThroughputForAudioVideoDetermination;
    v9 = &OBJC_IVAR___ContinuousAVFlowDetector__minTCPFlowElapsedTimeForAudioVideoDetermination;
    v10 = &OBJC_IVAR___ContinuousAVFlowDetector__minTCPFlowSamplesForAudioVideoDetermination;
  }

  v13 = *(&self->super.super.isa + *v10);
  v14 = *(&self->super.super.isa + *v9);
  v15 = *(&self->super.super.isa + *v8);
LABEL_9:
  v16 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v17 = v16;
    createdBy = [scoreCopy createdBy];
    flowType = [scoreCopy flowType];
    v20 = trafficClassToString([scoreCopy trafficClass]);
    *buf = 138415106;
    v40 = createdBy;
    v41 = 2112;
    v42 = flowType;
    v43 = 2112;
    v44 = v20;
    v45 = 2048;
    v46 = v37;
    v47 = 2048;
    v48 = v36;
    v49 = 2048;
    v50 = v32;
    v51 = 2048;
    v52 = v34;
    v53 = 1024;
    v54 = (v28 * 100.0);
    v55 = 2048;
    v56 = v35;
    v57 = 2048;
    v58 = v31;
    v59 = 2048;
    v60 = v33;
    v61 = 1024;
    v62 = (v27 * 100.0);
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector %@ %@ %@ long lived %.3fsecs tput (Mbps) rx min %.6f avg %.6f max %.6f (dev %d%%) tx min %.6f avg %.6f max %.6f (dev %d%%)", buf, 0x72u);
  }

  v21 = v38;
  v11 = 10;
  v12 = @"ContinuousAVFlowDetector-failed-conditional";
  if (v38 > v13 && v37 > v14 && v36 + v35 > v15)
  {
    if (v34 >= v33)
    {
      v7 = v34;
    }

    else
    {
      v7 = v33;
    }

    if ([scoreCopy trafficClassIsAudioVideo])
    {
      v22 = 60;
    }

    else
    {
      v22 = 50;
    }

    v23 = v22 + 2 * v21;
    if (v23 >= 80)
    {
      v11 = 80;
    }

    else
    {
      v11 = v23;
    }

    v12 = @"ContinuousAVFlowDetector-match";
  }

LABEL_24:
  if (result && v11 > result->var0)
  {
    result->var1 = v7;
    result->var0 = v11;
    var2 = result->var2;
    result->var2 = v12;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

@end