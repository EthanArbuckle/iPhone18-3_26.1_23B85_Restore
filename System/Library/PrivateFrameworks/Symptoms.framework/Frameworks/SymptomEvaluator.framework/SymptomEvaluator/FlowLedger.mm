@interface FlowLedger
- (BOOL)statisticsForAccumulatedSamples:(unint64_t *)a3 sampleDuration:(double *)a4 avgRxTput:(double *)a5 avgCeilingRxTput:(double *)a6 avgTxTput:(double *)a7 avgCeilingTxTput:(double *)a8;
- (BOOL)statisticsForSampleCount:(unint64_t *)a3 sampleDuration:(double *)a4 minRxTput:(double *)a5 avgRxTput:(double *)a6 maxRxTput:(double *)a7 avgCeilingRxTput:(double *)a8 normalizedRxStdDeviation:(double *)a9 minTxTput:(double *)a10 avgTxTput:(double *)a11 maxTxTput:(double *)a12 avgCeilingTxTput:(double *)a13 normalizedTxStdDeviation:(double *)a14 requiredMinSampleCount:(unint64_t)a15;
- (double)recentCellRxThroughput;
- (double)recentCellTxThroughput;
- (double)recentRxThroughput;
- (double)recentTxThroughput;
- (double)recentWiFiRxThroughput;
- (double)recentWiFiTxThroughput;
- (id)briefDescription;
- (id)description;
- (id)expectedTransferStateToString:(unsigned int)a3;
- (id)statisticsDescription;
@end

@implementation FlowLedger

- (double)recentRxThroughput
{
  v2 = 0.0;
  if (!self->_lastSampleWasIdle)
  {
    v4 = [(NSMutableArray *)self->_nonIdleSamples lastObject];
    v5 = v4;
    if (v4 && ([v4 elapsedTime], v6 > 1.0))
    {
      [v5 averageRxThroughput];
      v2 = v7;
    }

    else if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
    {
      v8 = [v5 totalObservedRxBytes];
      [v5 elapsedTime];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:[(NSMutableArray *)self->_nonIdleSamples count]- 2];
      v12 = [v11 totalObservedRxBytes];
      [v11 elapsedTime];
      v14 = v10 + v13;
      v2 = 0.0;
      if (v14 > 1.0)
      {
        v2 = mbpsThroughput(v12 + v8, v14);
      }
    }
  }

  return v2;
}

- (double)recentTxThroughput
{
  v2 = 0.0;
  if (!self->_lastSampleWasIdle)
  {
    v4 = [(NSMutableArray *)self->_nonIdleSamples lastObject];
    v5 = v4;
    if (v4 && ([v4 elapsedTime], v6 > 1.0))
    {
      [v5 averageTxThroughput];
      v2 = v7;
    }

    else if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
    {
      v8 = [v5 totalObservedTxBytes];
      [v5 elapsedTime];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:[(NSMutableArray *)self->_nonIdleSamples count]- 2];
      v12 = [v11 totalObservedTxBytes];
      [v11 elapsedTime];
      v14 = v10 + v13;
      v2 = 0.0;
      if (v14 > 1.0)
      {
        v2 = mbpsThroughput(v12 + v8, v14);
      }
    }
  }

  return v2;
}

- (double)recentCellRxThroughput
{
  v2 = 0.0;
  if (!self->_lastSampleWasIdle)
  {
    v4 = [(NSMutableArray *)self->_nonIdleSamples lastObject];
    v5 = v4;
    if (v4 && ([v4 elapsedTime], v6 > 1.0))
    {
      [v5 averageCellRxThroughput];
      v2 = v7;
    }

    else if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
    {
      v8 = [v5 totalObservedCellRxBytes];
      [v5 elapsedTime];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:[(NSMutableArray *)self->_nonIdleSamples count]- 2];
      v12 = [v11 totalObservedCellRxBytes];
      [v11 elapsedTime];
      v14 = v10 + v13;
      v2 = 0.0;
      if (v14 > 1.0)
      {
        v2 = mbpsThroughput(v12 + v8, v14);
      }
    }
  }

  return v2;
}

- (double)recentCellTxThroughput
{
  v2 = 0.0;
  if (!self->_lastSampleWasIdle)
  {
    v4 = [(NSMutableArray *)self->_nonIdleSamples lastObject];
    v5 = v4;
    if (v4 && ([v4 elapsedTime], v6 > 1.0))
    {
      [v5 averageCellTxThroughput];
      v2 = v7;
    }

    else if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
    {
      v8 = [v5 totalObservedCellTxBytes];
      [v5 elapsedTime];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:[(NSMutableArray *)self->_nonIdleSamples count]- 2];
      v12 = [v11 totalObservedCellTxBytes];
      [v11 elapsedTime];
      v14 = v10 + v13;
      v2 = 0.0;
      if (v14 > 1.0)
      {
        v2 = mbpsThroughput(v12 + v8, v14);
      }
    }
  }

  return v2;
}

- (double)recentWiFiRxThroughput
{
  v2 = 0.0;
  if (!self->_lastSampleWasIdle)
  {
    v4 = [(NSMutableArray *)self->_nonIdleSamples lastObject];
    v5 = v4;
    if (v4 && ([v4 elapsedTime], v6 > 1.0))
    {
      [v5 averageWiFiRxThroughput];
      v2 = v7;
    }

    else if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
    {
      v8 = [v5 totalObservedWiFiRxBytes];
      [v5 elapsedTime];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:[(NSMutableArray *)self->_nonIdleSamples count]- 2];
      v12 = [v11 totalObservedWiFiRxBytes];
      [v11 elapsedTime];
      v14 = v10 + v13;
      v2 = 0.0;
      if (v14 > 1.0)
      {
        v2 = mbpsThroughput(v12 + v8, v14);
      }
    }
  }

  return v2;
}

- (double)recentWiFiTxThroughput
{
  v2 = 0.0;
  if (!self->_lastSampleWasIdle)
  {
    v4 = [(NSMutableArray *)self->_nonIdleSamples lastObject];
    v5 = v4;
    if (v4 && ([v4 elapsedTime], v6 > 1.0))
    {
      [v5 averageWiFiTxThroughput];
      v2 = v7;
    }

    else if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
    {
      v8 = [v5 totalObservedWiFiTxBytes];
      [v5 elapsedTime];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:[(NSMutableArray *)self->_nonIdleSamples count]- 2];
      v12 = [v11 totalObservedWiFiTxBytes];
      [v11 elapsedTime];
      v14 = v10 + v13;
      v2 = 0.0;
      if (v14 > 1.0)
      {
        v2 = mbpsThroughput(v12 + v8, v14);
      }
    }
  }

  return v2;
}

- (BOOL)statisticsForSampleCount:(unint64_t *)a3 sampleDuration:(double *)a4 minRxTput:(double *)a5 avgRxTput:(double *)a6 maxRxTput:(double *)a7 avgCeilingRxTput:(double *)a8 normalizedRxStdDeviation:(double *)a9 minTxTput:(double *)a10 avgTxTput:(double *)a11 maxTxTput:(double *)a12 avgCeilingTxTput:(double *)a13 normalizedTxStdDeviation:(double *)a14 requiredMinSampleCount:(unint64_t)a15
{
  v22 = [(NSMutableArray *)self->_nonIdleSamples count];
  v23 = v22;
  if (v22)
  {
    v24 = v22 >= a15;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (!v25)
  {
    return v25;
  }

  v77 = a6;
  v78 = a8;
  v80 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:0];
  [v80 elapsedTime];
  v27 = (__PAIR128__(v23, 4.0) - v26) >> 64;
  v75 = a5;
  if (a3)
  {
    v28 = *a3;
    if (*a3)
    {
LABEL_10:
      if (v27 < v28)
      {
        v28 = v27;
      }

      if (v28 <= a15)
      {
        v27 = a15;
      }

      else
      {
        v27 = v28;
      }

      goto LABEL_17;
    }
  }

  if (a4)
  {
    v29 = *a4;
    if (*a4 != 0.0)
    {
      if (!a3 || (v28 = *a3) == 0)
      {
        if (v27)
        {
          v67 = 0.0;
          v68 = 1;
          v69 = v27;
          while (1)
          {
            v70 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:v69, v29];
            [v70 elapsedTime];
            v67 = v67 + v71;
            v72 = *a4;

            if (v67 > v72)
            {
              break;
            }

            ++v68;
            if (!--v69)
            {
              goto LABEL_17;
            }
          }

          v27 = v68;
        }

        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

LABEL_17:
  v76 = a7;
  v79 = v27;
  v30 = [(NSMutableArray *)self->_nonIdleSamples count]- v27;
  if (v30 >= [(NSMutableArray *)self->_nonIdleSamples count])
  {
    v32 = 0;
    v31 = 0;
    v40 = 0.0;
    v39 = 0.0;
    v37 = 0.0;
    v36 = 0.0;
    v35 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = v30;
    v39 = 0.0;
    v40 = 0.0;
    do
    {
      v41 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:v38];
      [v41 elapsedTime];
      v43 = v42;
      v44 = [v41 totalObservedRxBytes];
      v45 = [v41 totalObservedTxBytes];
      [v41 maxRxThroughput];
      if (v46 > v35)
      {
        [v41 maxRxThroughput];
        v35 = v47;
      }

      [v41 maxTxThroughput];
      if (v48 > v36)
      {
        [v41 maxTxThroughput];
        v36 = v49;
      }

      [v41 minRxThroughput];
      if (v33 == 0.0 || v50 < v33)
      {
        [v41 minRxThroughput];
        v33 = v51;
      }

      [v41 minTxThroughput];
      if (v34 == 0.0 || v52 < v34)
      {
        [v41 minTxThroughput];
        v34 = v53;
      }

      v40 = v40 + v43;
      v31 += v44;
      v32 += v45;
      [v41 ceilingRxThroughput];
      v37 = v37 + v54;
      [v41 ceilingTxThroughput];
      v39 = v39 + v55;

      ++v38;
    }

    while (v38 < [(NSMutableArray *)self->_nonIdleSamples count]);
  }

  v74 = v36;
  v56 = mbpsThroughput(v31, v40);
  v57 = mbpsThroughput(v32, v40);
  v58 = [(NSMutableArray *)self->_nonIdleSamples count];
  v59 = [(NSMutableArray *)self->_nonIdleSamples count];
  if (v75)
  {
    *v75 = v33;
  }

  if (v76)
  {
    *v76 = v35;
  }

  if (v77)
  {
    *v77 = v56;
  }

  if (v78)
  {
    *v78 = v37 / (v58 - v30);
  }

  if (a10)
  {
    *a10 = v34;
  }

  if (a12)
  {
    *a12 = v74;
  }

  if (a11)
  {
    *a11 = v57;
  }

  if (a13)
  {
    *a13 = v39 / (v59 - v30);
  }

  if (a4)
  {
    *a4 = v40;
  }

  if (a3)
  {
    *a3 = v79;
  }

  v60 = 0.0;
  v61 = 0.0;
  if ([(NSMutableArray *)self->_nonIdleSamples count]>= 2)
  {
    v62 = 1;
    do
    {
      v63 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:v62];
      [v63 averageRxThroughput];
      v60 = v60 + (v64 - v56) * (v64 - v56);
      [v63 averageTxThroughput];
      v61 = v61 + (v65 - v57) * (v65 - v57);

      ++v62;
    }

    while ([(NSMutableArray *)self->_nonIdleSamples count]> v62);
  }

  v66 = v79;
  if (a9)
  {
    *a9 = sqrt(v60 / v66) / v56;
  }

  if (a14)
  {
    *a14 = sqrt(v61 / v66) / v57;
  }

  LOBYTE(v25) = 1;
  return v25;
}

- (BOOL)statisticsForAccumulatedSamples:(unint64_t *)a3 sampleDuration:(double *)a4 avgRxTput:(double *)a5 avgCeilingRxTput:(double *)a6 avgTxTput:(double *)a7 avgCeilingTxTput:(double *)a8
{
  v51 = *MEMORY[0x277D85DE8];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  nonIdleSamples = self->_nonIdleSamples;
  if (nonIdleSamples && [(NSMutableArray *)nonIdleSamples count])
  {
    v17 = [(NSMutableArray *)self->_nonIdleSamples objectAtIndexedSubscript:0];
    [v17 elapsedTime];
    if (v18 > 4.0)
    {
      [v15 addObject:v17];
    }
  }

  alternatingIdleNonIdlePeriods = self->_alternatingIdleNonIdlePeriods;
  if (alternatingIdleNonIdlePeriods && [(NSMutableArray *)alternatingIdleNonIdlePeriods count])
  {
    v20 = [(NSMutableArray *)self->_alternatingIdleNonIdlePeriods objectAtIndexedSubscript:0];
    [v15 addObject:v20];
  }

  v21 = [v15 count];
  if (v21)
  {
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v44 = a4;
    v45 = a3;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = 0;
      v27 = *v47;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v32 = *(*(&v46 + 1) + 8 * i);
          [v32 elapsedTime];
          v29 = v29 + v33;
          v25 += [v32 totalObservedRxBytes];
          v26 += [v32 totalObservedTxBytes];
          [v32 ceilingRxThroughput];
          v30 = v30 + v34;
          [v32 ceilingTxThroughput];
          v28 = v28 + v35;
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
    }

    v36 = mbpsThroughput(v25, v29);
    v37 = mbpsThroughput(v26, v29);
    if (a5)
    {
      *a5 = v36;
    }

    v38 = v21;
    if (v41)
    {
      *v41 = v30 / v38;
    }

    if (v42)
    {
      *v42 = v37;
    }

    if (v43)
    {
      *v43 = v28 / v38;
    }

    if (v44)
    {
      *v44 = v29;
    }

    if (v45)
    {
      *v45 = v21;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v21 != 0;
}

- (id)statisticsDescription
{
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  v2 = [(FlowLedger *)self statisticsForSampleCount:&v17 sampleDuration:&v16 minRxTput:&v15 avgRxTput:&v11 maxRxTput:&v13 avgCeilingRxTput:&v9 normalizedRxStdDeviation:&v7 minTxTput:&v14 avgTxTput:&v10 maxTxTput:&v12 avgCeilingTxTput:&v8 normalizedTxStdDeviation:&v6 requiredMinSampleCount:3];
  v3 = 0;
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = [v4 initWithFormat:@"sample duration %.3f cnt %lu tput Mbps rx min %.6f avg %.6f max %.6f avg-ceil %.2f tx min %.6f avg %.6f max %.6f avg-ceil %.2f deviation rx %.3f tx %.3f", v16, v17, v15, v11, v13, v9, v14, v10, v12, v8, v7, v6];
  }

  return v3;
}

- (id)expectedTransferStateToString:(unsigned int)a3
{
  if (a3 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_27898F3B0[a3];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  flowUUID = self->_flowUUID;
  flowIdentifier = self->_flowIdentifier;
  v30 = v3;
  v27 = flowUUID;
  flowType = self->_flowType;
  v5 = [(FlowLedger *)self createdBy];
  if (self->_rxTransferSizeLowerThreshold || self->_rxTransferSizeUpperThreshold || self->_txTransferSizeLowerThreshold || self->_txTransferSizeUpperThreshold)
  {
    latestClassification = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-plus-transfer", self->_latestClassification];
    v26 = 1;
  }

  else
  {
    v26 = 0;
    latestClassification = self->_latestClassification;
  }

  v7 = dateStringMillisecondsFromReferenceInterval(self->_prevSampleTime);
  totalObservedCellRxBytes = self->_totalObservedCellRxBytes;
  totalObservedCellTxBytes = self->_totalObservedCellTxBytes;
  totalObservedWiFiRxBytes = self->_totalObservedWiFiRxBytes;
  totalObservedWiFiTxBytes = self->_totalObservedWiFiTxBytes;
  v25 = *&self->_flowIdleDuration;
  maxRxThroughput = self->_maxRxThroughput;
  maxTxThroughput = self->_maxTxThroughput;
  notedAsFGAudioVideoTC = self->_notedAsFGAudioVideoTC;
  notedAsAudioVideoTC = self->_notedAsAudioVideoTC;
  [(FlowLedger *)self recentCellRxThroughput];
  v17 = v16;
  [(FlowLedger *)self recentCellTxThroughput];
  v19 = v18;
  [(FlowLedger *)self recentWiFiRxThroughput];
  v21 = v20;
  [(FlowLedger *)self recentWiFiTxThroughput];
  v23 = [v30 initWithFormat:@"FlowLedger %lld flow-type %@ flow-uuid %@ from %@ classified %@ sample %@ cell/wifi rx-bytes %lld/%lld tx-bytes %lld/%lld idle %f non-idle %f max-rx-tput %.6f Mbps max-tx-put %.6f Mbps fgAV %d anyAV %d recent cell/wifi rx-tput %.6f/%.6f tx-tput %.6f/%.6f alternating %@ accumulating %@", flowIdentifier, flowType, v27, v5, latestClassification, v7, totalObservedCellRxBytes, totalObservedWiFiRxBytes, totalObservedCellTxBytes, totalObservedWiFiTxBytes, v25, *&maxRxThroughput, *&maxTxThroughput, notedAsFGAudioVideoTC, notedAsAudioVideoTC, v17, v19, v21, v22, self->_alternatingIdleNonIdlePeriods, self->_nonIdleSamples];

  if (v26)
  {
  }

  return v23;
}

- (id)briefDescription
{
  expectedTransferState = self->_expectedTransferState;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = v4;
  if (expectedTransferState == 2)
  {
    flowUUID = self->_flowUUID;
    v7 = [(FlowLedger *)self expectedTransferStateToString:self->_expectedTransferState];
    v8 = [v5 initWithFormat:@"FlowLedger <tbd> flowuuid %@ classified pending-flow-details  xfer-state %@ rxLo %d rxHi %d txLo %d txHi %d", flowUUID, v7, self->_rxTransferSizeLowerThreshold, self->_rxTransferSizeUpperThreshold, self->_txTransferSizeLowerThreshold, self->_txTransferSizeUpperThreshold];
  }

  else
  {
    flowType = self->_flowType;
    flowIdentifier = self->_flowIdentifier;
    latestClassification = self->_latestClassification;
    v25 = self->_flowUUID;
    v9 = self->_expectedTransferState;
    v28 = v4;
    if (v9 - 2 >= 4)
    {
      if (v9 == 6)
      {
        v10 = @"-transfer-cloaked";
      }

      else
      {
        v10 = &stru_2847966D8;
      }
    }

    else
    {
      v10 = off_27898F3E8[v9 - 2];
    }

    v23 = v10;
    v7 = dateStringMillisecondsFromReferenceInterval(self->_prevSampleTime);
    totalObservedCellRxBytes = self->_totalObservedCellRxBytes;
    totalObservedCellTxBytes = self->_totalObservedCellTxBytes;
    totalObservedWiFiRxBytes = self->_totalObservedWiFiRxBytes;
    totalObservedWiFiTxBytes = self->_totalObservedWiFiTxBytes;
    v22 = *&self->_flowIdleDuration;
    maxRxThroughput = self->_maxRxThroughput;
    maxTxThroughput = self->_maxTxThroughput;
    v17 = trafficClassToString(self->_trafficClass);
    notedAsFGAudioVideoTC = self->_notedAsFGAudioVideoTC;
    notedAsAudioVideoTC = self->_notedAsAudioVideoTC;
    v20 = [(FlowLedger *)self expectedTransferStateToString:self->_expectedTransferState];
    v8 = [v28 initWithFormat:@"FlowLedger %lld flow-type %@ flow-uuid %@ classified %@%@ sample %@ cell/wifi rx-bytes %lld/%lld tx-bytes %lld/%lld idle %f non-idle %f max-rx-tput %.6f Mbps max-tx-tput %.6f Mbps traffic-class %@ fgAV %d anyAV %d xfer-state %@ rxLo %d rxHi %d txLo %d txHi %d", flowIdentifier, flowType, v25, latestClassification, v23, v7, totalObservedCellRxBytes, totalObservedWiFiRxBytes, totalObservedCellTxBytes, totalObservedWiFiTxBytes, v22, *&maxRxThroughput, *&maxTxThroughput, v17, notedAsFGAudioVideoTC, notedAsAudioVideoTC, v20, self->_rxTransferSizeLowerThreshold, self->_rxTransferSizeUpperThreshold, self->_txTransferSizeLowerThreshold, self->_txTransferSizeUpperThreshold];
  }

  return v8;
}

@end