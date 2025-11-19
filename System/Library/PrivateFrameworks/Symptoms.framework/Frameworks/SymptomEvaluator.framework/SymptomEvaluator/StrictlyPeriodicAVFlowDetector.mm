@interface StrictlyPeriodicAVFlowDetector
- (StrictlyPeriodicAVFlowDetector)init;
- (id)getState:(BOOL)a3;
- (int)possibleAVFlowScore:(id)a3 result:(AVFlowDetectionResult *)a4;
- (int)setConfiguration:(id)a3;
- (void)setDefaults;
@end

@implementation StrictlyPeriodicAVFlowDetector

- (void)setDefaults
{
  self->_maxPeriodicAVTCPFlowBusyInterval = 4.5;
  self->_minPeriodicAVTCPFlowCycleTime = 4.5;
  self->_maxPeriodicAVTCPFlowCycleTime = 20.0;
  self->_maxPeriodicAVTCPFlowCycleVariance = 2.5;
  self->_minPeriodicAVTCPFlowCyclesToConsider = 4;
  self->_maxPeriodicAVTCPFlowCyclesToConsider = 7;
  self->_maxPeriodicAVUDPFlowBusyInterval = 4.5;
  self->_minPeriodicAVUDPFlowCycleTime = 4.5;
  self->_maxPeriodicAVUDPFlowCycleTime = 20.0;
  self->_maxPeriodicAVUDPFlowCycleVariance = 2.5;
  self->_minPeriodicAVUDPFlowCyclesToConsider = 4;
  self->_maxPeriodicAVUDPFlowCyclesToConsider = 10;
  self->_scoreBaselinePass = 60;
  self->_scorePerCycleIncrement = 2;
  self->_scoreTCIncrement = 10;
  self->_scoreMax = 80;
}

- (StrictlyPeriodicAVFlowDetector)init
{
  v5.receiver = self;
  v5.super_class = StrictlyPeriodicAVFlowDetector;
  v2 = [(StrictlyPeriodicAVFlowDetector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(StrictlyPeriodicAVFlowDetector *)v2 setDefaults];
  }

  return v3;
}

- (int)setConfiguration:(id)a3
{
  v4 = a3;
  [v4 extractKey:@"PeriodicTCPMaxBusy" toDouble:&self->_maxPeriodicAVTCPFlowBusyInterval defaultTo:4.5];
  [v4 extractKey:@"PeriodicTCPMinCycleTime" toDouble:&self->_minPeriodicAVTCPFlowCycleTime defaultTo:4.5];
  [v4 extractKey:@"PeriodicTCPMaxCycleTime" toDouble:&self->_maxPeriodicAVTCPFlowCycleTime defaultTo:20.0];
  [v4 extractKey:@"PeriodicTCPMaxCycleVariance" toDouble:&self->_maxPeriodicAVTCPFlowCycleVariance defaultTo:2.5];
  [v4 extractKey:@"PeriodicTCPMinCyclesToConsider" toNSUInteger:&self->_minPeriodicAVTCPFlowCyclesToConsider defaultTo:4];
  [v4 extractKey:@"PeriodicTCPMaxCyclesToConsider" toNSUInteger:&self->_maxPeriodicAVTCPFlowCyclesToConsider defaultTo:7];
  [v4 extractKey:@"PeriodicUDPMaxBusy" toDouble:&self->_maxPeriodicAVUDPFlowBusyInterval defaultTo:4.5];
  [v4 extractKey:@"PeriodicUDPMinCycleTime" toDouble:&self->_minPeriodicAVUDPFlowCycleTime defaultTo:4.5];
  [v4 extractKey:@"PeriodicUDPMaxCycleTime" toDouble:&self->_maxPeriodicAVUDPFlowCycleTime defaultTo:20.0];
  [v4 extractKey:@"PeriodicUDPMaxCycleVariance" toDouble:&self->_maxPeriodicAVUDPFlowCycleVariance defaultTo:2.5];
  [v4 extractKey:@"PeriodicUDPMinCyclesToConsider" toNSUInteger:&self->_minPeriodicAVUDPFlowCyclesToConsider defaultTo:4];
  [v4 extractKey:@"PeriodicUDPMaxCyclesToConsider" toNSUInteger:&self->_maxPeriodicAVUDPFlowCyclesToConsider defaultTo:10];
  [v4 extractKey:@"PeriodicScoreBaseline" toUint32:&self->_scoreBaselinePass defaultTo:60];
  [v4 extractKey:@"PeriodicScorePerCycleIncrement" toUint32:&self->_scorePerCycleIncrement defaultTo:2];
  [v4 extractKey:@"PeriodicScoreTCIncrement" toUint32:&self->_scoreTCIncrement defaultTo:10];
  [v4 extractKey:@"PeriodicScoreMax" toUint32:&self->_scoreTCIncrement defaultTo:80];

  return 0;
}

- (id)getState:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    maxPeriodicAVTCPFlowBusyInterval = self->_maxPeriodicAVTCPFlowBusyInterval;
    maxPeriodicAVTCPFlowCycleTime = self->_maxPeriodicAVTCPFlowCycleTime;
    minPeriodicAVTCPFlowCyclesToConsider = self->_minPeriodicAVTCPFlowCyclesToConsider;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"StrictlyPeriodicAVFlowDetector config TCP max busy %.1f cycle time min %.1f max %.1f var %.1f periods min %d max %d", *&maxPeriodicAVTCPFlowBusyInterval, *&self->_minPeriodicAVTCPFlowCycleTime, *&maxPeriodicAVTCPFlowCycleTime, *&self->_maxPeriodicAVTCPFlowCycleVariance, minPeriodicAVTCPFlowCyclesToConsider, self->_maxPeriodicAVTCPFlowCyclesToConsider];
    [v5 addObject:v9];
    maxPeriodicAVUDPFlowBusyInterval = self->_maxPeriodicAVUDPFlowBusyInterval;
    maxPeriodicAVUDPFlowCycleTime = self->_maxPeriodicAVUDPFlowCycleTime;
    minPeriodicAVUDPFlowCyclesToConsider = self->_minPeriodicAVUDPFlowCyclesToConsider;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"StrictlyPeriodicAVFlowDetector config UDP max busy %.1f cycle time min %.1f max %.1f var %.1f periods min %d max %d", *&maxPeriodicAVUDPFlowBusyInterval, *&self->_minPeriodicAVUDPFlowCycleTime, *&maxPeriodicAVUDPFlowCycleTime, *&self->_maxPeriodicAVUDPFlowCycleVariance, minPeriodicAVUDPFlowCyclesToConsider, self->_maxPeriodicAVUDPFlowCyclesToConsider];

    [v5 addObject:v13];
  }

  return v5;
}

- (int)possibleAVFlowScore:(id)a3 result:(AVFlowDetectionResult *)a4
{
  v109 = *MEMORY[0x277D85DE8];
  v7 = a3;
  maxPeriodicAVUDPFlowBusyInterval = self->_maxPeriodicAVUDPFlowBusyInterval;
  minPeriodicAVUDPFlowCycleTime = self->_minPeriodicAVUDPFlowCycleTime;
  maxPeriodicAVUDPFlowCycleTime = self->_maxPeriodicAVUDPFlowCycleTime;
  maxPeriodicAVUDPFlowCycleVariance = self->_maxPeriodicAVUDPFlowCycleVariance;
  minPeriodicAVUDPFlowCyclesToConsider = self->_minPeriodicAVUDPFlowCyclesToConsider;
  maxPeriodicAVUDPFlowCyclesToConsider = self->_maxPeriodicAVUDPFlowCyclesToConsider;
  if (([v7 flowIsTCP] & 1) != 0 || objc_msgSend(v7, "flowIsQUIC"))
  {
    maxPeriodicAVUDPFlowBusyInterval = self->_maxPeriodicAVTCPFlowBusyInterval;
    minPeriodicAVUDPFlowCycleTime = self->_minPeriodicAVTCPFlowCycleTime;
    maxPeriodicAVUDPFlowCycleTime = self->_maxPeriodicAVTCPFlowCycleTime;
    maxPeriodicAVUDPFlowCycleVariance = self->_maxPeriodicAVTCPFlowCycleVariance;
    minPeriodicAVUDPFlowCyclesToConsider = self->_minPeriodicAVTCPFlowCyclesToConsider;
    maxPeriodicAVUDPFlowCyclesToConsider = self->_maxPeriodicAVTCPFlowCyclesToConsider;
  }

  v14 = [v7 alternatingIdleNonIdlePeriods];
  if (v14)
  {
    v15 = [v7 alternatingIdleNonIdlePeriods];
    v16 = [v15 count];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v7 nonIdleSamples];
  if (v17)
  {
    v18 = v17;
    v19 = [v7 nonIdleSamples];
    v4 = [v19 count];

    if (v4)
    {
      ++v16;
    }
  }

  v20 = flowScrutinyLogHandle;
  if (minPeriodicAVUDPFlowCyclesToConsider > v16 >> 1)
  {
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v99 = v7;
      v21 = "ContinuousAVFlowDetector screened out %@";
      v22 = v20;
      v23 = 12;
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v24 = flowScrutinyLogHandle;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v7 nonIdleSamples];
    if (v25)
    {
      v4 = [v7 nonIdleSamples];
      v26 = [v4 count] != 0;
    }

    else
    {
      v26 = 0;
    }

    *buf = 67110146;
    *v99 = v16;
    *&v99[4] = 1024;
    *&v99[6] = v16 / 2;
    *&v99[10] = 1024;
    *&v99[12] = v26;
    *&v99[16] = 1024;
    *&v99[18] = minPeriodicAVUDPFlowCyclesToConsider;
    *&v99[22] = 2112;
    *&v99[24] = v7;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector considering periods %d with %d from current cycles %d limit %d %@", buf, 0x24u);
    if (v25)
    {
    }
  }

  v27 = [v7 nonIdleSamples];
  v93 = v7;
  if (v27 && (v28 = v27, [v7 nonIdleSamples], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, v28, v30))
  {
    v91 = maxPeriodicAVUDPFlowCyclesToConsider;
    v89 = a4;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v31 = [v7 nonIdleSamples];
    v32 = [v31 countByEnumeratingWithState:&v94 objects:v108 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = 0;
      v36 = *v95;
      v37 = 0.0;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v95 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v39 = *(*(&v94 + 1) + 8 * i);
          [v39 elapsedTime];
          v37 = v37 + v40;
          v35 += [v39 totalObservedRxBytes];
          v34 += [v39 totalObservedTxBytes];
        }

        v33 = [v31 countByEnumeratingWithState:&v94 objects:v108 count:16];
      }

      while (v33);
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v37 = 0.0;
    }

    if (v37 > maxPeriodicAVUDPFlowBusyInterval)
    {
      v52 = flowScrutinyLogHandle;
      v48 = 0.0;
      v7 = v93;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *v99 = v37;
        *&v99[8] = 2048;
        *&v99[10] = maxPeriodicAVUDPFlowBusyInterval;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector FAIL excess recent busy period %.3f max %.3f", buf, 0x16u);
      }

      v47 = 0;
      v49 = 0.0;
      v50 = 0.0;
      v51 = maxPeriodicAVUDPFlowCycleTime;
      a4 = v89;
      goto LABEL_79;
    }

    v7 = v93;
    v53 = [v93 alternatingIdleNonIdlePeriods];
    v42 = [v53 lastObject];

    v48 = mbpsThroughput(v35, v37);
    [v42 elapsedTime];
    v51 = v37 + v54;
    v55 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector counted last idle", buf, 2u);
    }

    v47 = 1;
    v50 = v51;
    maxPeriodicAVUDPFlowCyclesToConsider = v91;
  }

  else
  {
    v41 = [v7 alternatingIdleNonIdlePeriods];
    v42 = [v41 lastObject];

    [v42 elapsedTime];
    if (v43 > maxPeriodicAVUDPFlowCycleTime)
    {
      v44 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = v44;
        [v42 elapsedTime];
        *buf = 134218240;
        *v99 = v46;
        *&v99[8] = 2048;
        *&v99[10] = maxPeriodicAVUDPFlowCycleTime;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector FAIL excess recent idle period %.3f max cycle time %.3f", buf, 0x16u);
      }

      v47 = 0;
      v48 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v51 = maxPeriodicAVUDPFlowCycleTime;
      goto LABEL_79;
    }

    v89 = a4;
    v47 = 0;
    v35 = 0;
    v34 = 0;
    v50 = 0.0;
    v51 = maxPeriodicAVUDPFlowCycleTime;
    v48 = 0.0;
  }

  v90 = minPeriodicAVUDPFlowCycleTime;

  v56 = [v7 alternatingIdleNonIdlePeriods];
  v57 = [v56 count];

  v49 = 0.0;
  if (v57 < 3)
  {
    goto LABEL_78;
  }

  v92 = maxPeriodicAVUDPFlowCyclesToConsider;
  if (maxPeriodicAVUDPFlowCyclesToConsider <= v47 + 1)
  {
    v58 = v47 + 1;
  }

  else
  {
    v58 = maxPeriodicAVUDPFlowCyclesToConsider;
  }

  v88 = v58;
  v59 = (v57 & 0x7FFFFFFF) + 2;
  v60 = v50;
  while (1)
  {
    v61 = [v7 alternatingIdleNonIdlePeriods];
    v62 = [v61 objectAtIndexedSubscript:v59 - 4];

    v63 = [v7 alternatingIdleNonIdlePeriods];
    v64 = [v63 objectAtIndexedSubscript:v59 - 5];

    v65 = [v62 totalObservedRxBytes];
    v66 = [v62 totalObservedTxBytes];
    [v64 elapsedTime];
    v68 = v67;
    [v62 elapsedTime];
    v70 = v68 + v69;
    if (v70 < v51 || v51 == 0.0)
    {
      v51 = v70;
    }

    if (v70 > v50)
    {
      v50 = v70;
    }

    [v62 maxRxThroughput];
    if (v72 > v48)
    {
      [v62 maxRxThroughput];
      v48 = v73;
    }

    v60 = v60 + v70;
    v49 = v60 / (v47 + 1);
    v74 = v50 - v51;
    if (v47 >= 4)
    {
      break;
    }

    if (v74 >= maxPeriodicAVUDPFlowCycleVariance)
    {
      goto LABEL_74;
    }

LABEL_68:
    [v62 elapsedTime];
    if (v77 > maxPeriodicAVUDPFlowBusyInterval)
    {
      goto LABEL_74;
    }

    v35 += v65;
    v34 += v66;
    if (v34)
    {
      if (v35 / v34 < 6)
      {
        goto LABEL_74;
      }
    }

    if (v47 + 1 >= v92)
    {
      v47 = v88;
      goto LABEL_77;
    }

    v59 -= 2;
    ++v47;
    v7 = v93;
    if (v59 <= 4)
    {
      goto LABEL_78;
    }
  }

  if (v49 > v90 && v49 < maxPeriodicAVUDPFlowCycleTime && v74 < maxPeriodicAVUDPFlowCycleVariance)
  {
    goto LABEL_68;
  }

LABEL_74:
  v78 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v79 = v78;
    [v62 elapsedTime];
    *buf = 67109888;
    *v99 = v59 - 4;
    *&v99[4] = 2048;
    *&v99[6] = v47;
    *&v99[14] = 2048;
    *&v99[16] = v80;
    *&v99[24] = 2048;
    *&v99[26] = maxPeriodicAVUDPFlowBusyInterval;
    _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector stop iterating at index %d cycle count %zu busy period %.3f max %.3f", buf, 0x26u);
  }

LABEL_77:
  v7 = v93;

LABEL_78:
  a4 = v89;
  minPeriodicAVUDPFlowCycleTime = v90;
LABEL_79:
  v81 = flowScrutinyLogHandle;
  v82 = os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG);
  if (v47 >= minPeriodicAVUDPFlowCyclesToConsider)
  {
    if (v82)
    {
      *buf = 134219776;
      *v99 = v47;
      *&v99[8] = 2048;
      *&v99[10] = v49;
      *&v99[18] = 2048;
      *&v99[20] = v51;
      *&v99[28] = 2048;
      *&v99[30] = v50;
      v100 = 2048;
      v101 = v50 - v51;
      v102 = 2048;
      v103 = minPeriodicAVUDPFlowCycleTime;
      v104 = 2048;
      v105 = maxPeriodicAVUDPFlowCycleTime;
      v106 = 2048;
      v107 = maxPeriodicAVUDPFlowCycleVariance;
      _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_DEBUG, "ContinuousAVFlowDetector PASS numCycles %zd cycle time avg %.3f min %.3f max %.3f diff %.3f bounds min %.3f max %.3f variance %.3f", buf, 0x52u);
    }

    v86 = self->_scoreBaselinePass + self->_scorePerCycleIncrement * v47;
    if ([v7 trafficClassIsAudioVideo])
    {
      v86 += self->_scoreTCIncrement;
    }

    if (v86 >= self->_scoreMax)
    {
      scoreMax = self->_scoreMax;
    }

    else
    {
      scoreMax = v86;
    }

    if (a4 && scoreMax > a4->var0)
    {
      a4->var1 = v48;
      a4->var0 = scoreMax;
      var2 = a4->var2;
      a4->var2 = @"PeriodicAVFlow";
    }
  }

  else
  {
    if (v82)
    {
      *buf = 134219776;
      *v99 = v47;
      *&v99[8] = 2048;
      *&v99[10] = v49;
      *&v99[18] = 2048;
      *&v99[20] = v51;
      *&v99[28] = 2048;
      *&v99[30] = v50;
      v100 = 2048;
      v101 = v50 - v51;
      v102 = 2048;
      v103 = minPeriodicAVUDPFlowCycleTime;
      v104 = 2048;
      v105 = maxPeriodicAVUDPFlowCycleTime;
      v106 = 2048;
      v107 = maxPeriodicAVUDPFlowCycleVariance;
      v21 = "ContinuousAVFlowDetector FAIL numCycles %zd cycle times avg %.3f min %.3f max %.3f diff %.3f bounds min %.3f max %.3f variance %.3f";
      v22 = v81;
      v23 = 82;
LABEL_82:
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, v21, buf, v23);
    }

LABEL_83:
    scoreMax = 0;
  }

  v84 = *MEMORY[0x277D85DE8];
  return scoreMax;
}

@end