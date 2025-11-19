@interface AppHistoryScreenerEpisode
- (AppHistoryScreenerEpisode)initWithLabel:(id)a3 exportLabel:(id)a4;
- (BOOL)canAcceptEpisodeWithRedactionAndTax;
- (float)computeReward;
- (id)_fetchWithLabel:(id)a3 exportLabel:(id)a4;
- (id)description;
- (void)accrueReward:(float)a3;
- (void)accrueRewardFromFlow:(id)a3;
- (void)dealloc;
@end

@implementation AppHistoryScreenerEpisode

- (AppHistoryScreenerEpisode)initWithLabel:(id)a3 exportLabel:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = AppHistoryScreenerEpisode;
  v8 = [(AppHistoryScreenerEpisode *)&v29 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(AppHistoryScreenerEpisode *)v8 _fetchWithLabel:v6 exportLabel:v7];
    pvar = v9->pvar;
    v9->pvar = v10;

    v12 = v9->pvar;
    v28 = 0;
    v13 = [(NWPVarBandit *)v12 predictValueGivenContext:0 generationId:&v28];
    v14 = v28;
    v15 = v28;
    objc_storeStrong(&v9->genID, v14);
    v9->_screenIn = [v13 intValue] != 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    partialRewards = v9->partialRewards;
    v9->partialRewards = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    partialCeilingLifts = v9->partialCeilingLifts;
    v9->partialCeilingLifts = v18;

    [FlowSample acquireNominalCeilingValuesForCellDL:&v9->baselineCeilingRx andUL:&v9->baselineCeilingTx];
    v20 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      screenIn = v9->_screenIn;
      baselineCeilingRx = v9->baselineCeilingRx;
      baselineCeilingTx = v9->baselineCeilingTx;
      v25 = v9->pvar;
      genID = v9->genID;
      *buf = 67110146;
      v31 = screenIn;
      v32 = 2112;
      v33 = genID;
      v34 = 2048;
      v35 = baselineCeilingRx;
      v36 = 2048;
      v37 = baselineCeilingTx;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "App episode screenIn: %d, genID: %@, baseRx: %f, baseTx: %f for pvar: %@", buf, 0x30u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)description
{
  if (self->_screenIn)
  {
    v2 = "IN";
  }

  else
  {
    v2 = "OUT";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%p> screenIn: %s, genID: %@, pvar: %@", self, v2, self->genID, self->pvar];
}

- (id)_fetchWithLabel:(id)a3 exportLabel:(id)a4
{
  v36[5] = *MEMORY[0x277D85DE8];
  v5 = COERCE_DOUBLE(a3);
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277D6B408]) initFromLastCheckpointForLabel:*&v5];
  if (v7)
  {
    v8 = v7;
    v9 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = v5;
    v10 = "App episode gets checkpointed pvar for label: %@";
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D6B408]);
    LODWORD(v12) = 1.0;
    v8 = [v11 initInNumRangeFrom:&unk_2847EFE50 to:&unk_2847EFE60 stride:*&v5 withLabel:v12];
    [v8 setExportLabel:v6];
    v13 = *MEMORY[0x277D6B4D0];
    v35[0] = *MEMORY[0x277D6B4C8];
    v35[1] = v13;
    v36[0] = MEMORY[0x277CBEC38];
    v36[1] = &unk_2847EFE70;
    v14 = *MEMORY[0x277D6B4E8];
    v35[2] = *MEMORY[0x277D6B4D8];
    v35[3] = v14;
    v36[2] = &unk_2847EFE70;
    v36[3] = &unk_2847EFE50;
    v35[4] = *MEMORY[0x277D6B4F0];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:resetLearningAfterTheseManyEpisodes];
    v36[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
    [v8 setHyperParams:v16];

    [v8 setInitialValue:&unk_2847EFE60];
    v9 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = v5;
    v10 = "App episode gets new pvar for label: %@";
  }

  _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
LABEL_7:
  [v8 setTelemetryReporter:&__block_literal_global_45];
  v17 = +[CellThroughputAdviser sharedInstance];
  [v17 exploreExploitLearningRatioForHighTransferSize];
  v19 = v18;

  if (v19 >= 0.0 && v19 <= 1.0)
  {
    v23 = v19;
  }

  else
  {
    v22 = flowScrutinyLogHandle;
    v23 = 0.4;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v32 = v19;
      v33 = 2048;
      v34 = 0.4;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "App episode given invalid ratio %.2f, using default %.2f", buf, 0x16u);
    }
  }

  *&v20 = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:{v20, *MEMORY[0x277D6B4E0]}];
  v30 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v8 setHyperParams:v25];

  v26 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v32 = v5;
    v33 = 2048;
    v34 = v23;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "App episode pvar for label: %@ has ratio: %.2f", buf, 0x16u);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v8;
}

void __57__AppHistoryScreenerEpisode__fetchWithLabel_exportLabel___block_invoke(float a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v29[0] = @"label";
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 exportLabel];
  v30[0] = v13;
  v29[1] = @"bandit_model";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "model")}];
  v30[1] = v14;
  v29[2] = @"logical_clock";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "logicalClock")}];
  v30[2] = v15;
  v29[3] = @"pull_count";
  v16 = MEMORY[0x277CCABB0];
  v17 = [v12 pullCount];

  v18 = [v16 numberWithUnsignedInteger:v17];
  v30[3] = v18;
  v29[4] = @"action";
  v19 = [v10 description];

  v30[4] = v19;
  v29[5] = @"action_metadata";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v30[5] = v20;
  v29[6] = @"reward";
  *&v21 = a1;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v29[7] = @"epsilon";
  v30[6] = v22;
  v30[7] = v11;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:8];

  v24 = [MEMORY[0x277D6B400] _backgroundQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AppHistoryScreenerEpisode__fetchWithLabel_exportLabel___block_invoke_2;
  block[3] = &unk_27898A0C8;
  v28 = v23;
  v25 = v23;
  dispatch_async(v24, block);

  v26 = *MEMORY[0x277D85DE8];
}

void __57__AppHistoryScreenerEpisode__fetchWithLabel_exportLabel___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v2 = AnalyticsSendEventLazy();
  v3 = nwPVarLogHandle;
  if (v2)
  {
    if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v12 = v4;
      v5 = "posting telemetry for %@";
      v6 = v3;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_23255B000, v6, v7, v5, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v12 = v8;
    v5 = "failing to send telemetry for %@";
    v6 = v3;
    v7 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(AppHistoryScreenerEpisode *)self canAcceptEpisodeWithRedactionAndTax])
  {
    [(AppHistoryScreenerEpisode *)self computeReward];
    v4 = v3;
    pvar = self->pvar;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_screenIn];
    *&v7 = v4;
    [(NWPVarBandit *)pvar setReward:v6 onValue:self->genID forPredictionGenerationId:v7];

    v8 = [(NWPVarBandit *)self->pvar checkpoint];
    v9 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    [(NWPVarBandit *)self->pvar label];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v11 = self->_screenIn ^ (self->genID == 0);
    v12 = [(NWPVarBandit *)self->pvar pullCount];
    v13 = self->genID == 0;
    energyTaxBracket = self->energyTaxBracket;
    *buf = 134219266;
    v25 = v4;
    v26 = 2112;
    *v27 = v10;
    *&v27[8] = 1024;
    *&v27[10] = v11;
    v28 = 2048;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 2048;
    v33 = energyTaxBracket;
    v15 = "App episode rewarded with: %.6f for label: %@, screenIn: %d, pullCount: %lu, redacted: %d, energy-tax: %.2f";
    v16 = v9;
    v17 = 54;
LABEL_6:
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

    goto LABEL_7;
  }

  v18 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->pvar;
    v9 = v18;
    [(NWPVarBandit *)v19 label];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    screenIn = self->_screenIn;
    v21 = [(NWPVarBandit *)self->pvar pullCount];
    *buf = 138412802;
    v25 = v10;
    v26 = 1024;
    *v27 = screenIn;
    *&v27[4] = 2048;
    *&v27[6] = v21;
    v15 = "App episode ignored, not learnable, label: %@, screenIn: %d, pullCount: %lu";
    v16 = v9;
    v17 = 28;
    goto LABEL_6;
  }

LABEL_8:
  v23.receiver = self;
  v23.super_class = AppHistoryScreenerEpisode;
  [(AppHistoryScreenerEpisode *)&v23 dealloc];
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)canAcceptEpisodeWithRedactionAndTax
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->partialCeilingLifts count]&& self->baselineCeilingRx > 0.0 && self->baselineCeilingTx > 0.0)
  {
    v3 = [(NSMutableArray *)self->partialCeilingLifts sortedArrayUsingSelector:sel_compare_];
    v4 = [v3 lastObject];
    v5 = [v4 integerValue];

    if (v5)
    {
      if (v5 < 1)
      {
        v25 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          partialCeilingLifts = self->partialCeilingLifts;
          v27 = v25;
          v28 = [(NSMutableArray *)partialCeilingLifts count];
          baselineCeilingRx = self->baselineCeilingRx;
          baselineCeilingTx = self->baselineCeilingTx;
          *v37 = 134218754;
          *&v37[4] = v28;
          *&v37[12] = 2048;
          *&v37[14] = baselineCeilingRx;
          *&v37[22] = 2048;
          v38 = baselineCeilingTx;
          LOWORD(v39) = 2112;
          *(&v39 + 2) = v3;
          _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "App episode with %lu flows, dropped resources from the start, (%f,%f) vs %@", v37, 0x2Au);
        }

        v13 = 0;
        goto LABEL_27;
      }

      if (![(AppHistoryScreenerEpisode *)self screenIn])
      {
        v6 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = self->baselineCeilingRx;
      v17 = [(AppHistoryScreenerEpisode *)self screenIn];
      if (v16 == 43.0)
      {
        if (v17)
        {
          v18 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v19 = self->partialCeilingLifts;
            v20 = v18;
            v21 = [(NSMutableArray *)v19 count];
            v22 = self->baselineCeilingRx;
            v23 = self->baselineCeilingTx;
            *v37 = 134218754;
            *&v37[4] = v21;
            *&v37[12] = 2048;
            *&v37[14] = v22;
            *&v37[22] = 2048;
            v38 = v23;
            LOWORD(v39) = 2112;
            *(&v39 + 2) = v3;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "App episode with %lu flows, redacting screenIN to OUT, (%f,%f) vs %@", v37, 0x2Au);
          }

          [(AppHistoryScreenerEpisode *)self setScreenIn:0];
          genID = self->genID;
          self->genID = 0;
        }

        self->energyTaxBracket = findEnergyTaxBracketFor(self->dataVolume);
      }

      else if (!v17)
      {
        v6 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
LABEL_25:
          v31 = self->partialCeilingLifts;
          v32 = v6;
          v33 = [(NSMutableArray *)v31 count];
          v34 = self->baselineCeilingRx;
          v35 = self->baselineCeilingTx;
          *v37 = 134218754;
          *&v37[4] = v33;
          *&v37[12] = 2048;
          *&v37[14] = v34;
          *&v37[22] = 2048;
          v38 = v35;
          LOWORD(v39) = 2112;
          *(&v39 + 2) = v3;
          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "App episode with %lu flows, redacting screenOUT to IN, (%f,%f) vs %@", v37, 0x2Au);
        }

LABEL_26:
        v13 = 1;
        [(AppHistoryScreenerEpisode *)self setScreenIn:1, *v37, *&v37[16], *&v38, v39];
        v36 = self->genID;
        self->genID = 0;

        goto LABEL_27;
      }
    }

    v13 = 1;
LABEL_27:

    goto LABEL_12;
  }

  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v8 = self->partialCeilingLifts;
    v9 = v7;
    v10 = [(NSMutableArray *)v8 count];
    v11 = self->baselineCeilingRx;
    v12 = self->baselineCeilingTx;
    *v37 = 134218496;
    *&v37[4] = v10;
    *&v37[12] = 2048;
    *&v37[14] = v11;
    *&v37[22] = 2048;
    v38 = v12;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "App episode with %lu flows, or no baseline, (%f,%f)", v37, 0x20u);
  }

  v13 = 0;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (float)computeReward
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->partialRewards count];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSMutableArray *)self->partialRewards sortedArrayUsingSelector:sel_compare_];
    v6 = [v5 objectAtIndexedSubscript:((v4 + 1) >> 1) - 1];
    [v6 floatValue];
    v8 = v7;

    if (v8 <= 0.0)
    {
      v16 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        partialRewards = self->partialRewards;
        v20 = 138412290;
        v21 = *&partialRewards;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "App episode computed zero median reward given rewards %@", &v20, 0xCu);
      }

      v11 = NAN;
    }

    else
    {
      v9 = log((1.0 - self->energyTaxBracket) * (v8 * v4) + 1.0);
      v10 = v9 / sqrt(v9 * v9 + 1.0);
      if (v10 >= 0.0001)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0.0001;
      }

      v12 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        v13 = self->partialRewards;
        dataVolume = self->dataVolume;
        energyTaxBracket = self->energyTaxBracket;
        v20 = 134219266;
        v21 = v8;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = v11;
        v26 = 2112;
        v27 = v13;
        v28 = 2048;
        v29 = energyTaxBracket;
        v30 = 2048;
        v31 = dataVolume;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "App episode computed median reward %.6f numFlows %lu actual %.6f given rewards %@ energy_tax %.2f on volume %llu", &v20, 0x3Eu);
      }
    }
  }

  else
  {
    v11 = NAN;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)accrueRewardFromFlow:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = COERCE_DOUBLE(a3);
  v52 = 0.0;
  v53 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
  v5 = [*&v4 statisticsForSampleCount:&v53 sampleDuration:&v51 minRxTput:0 avgRxTput:&v49 maxRxTput:0 avgCeilingRxTput:&v45 normalizedRxStdDeviation:0 minTxTput:0 avgTxTput:&v47 maxTxTput:0 avgCeilingTxTput:&v43 normalizedTxStdDeviation:0 requiredMinSampleCount:0];
  v6 = [*&v4 statisticsForAccumulatedSamples:&v52 sampleDuration:&v50 avgRxTput:&v48 avgCeilingRxTput:&v44 avgTxTput:&v46 avgCeilingTxTput:&v42];
  if ((v5 & 1) == 0 && !v6)
  {
    v7 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v4;
      v8 = "App episode failed to compute reward for flow: %@";
LABEL_5:
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_34:
      _os_log_impl(&dword_23255B000, v9, v10, v8, buf, v11);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (v50 > v51)
  {
    v12 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134221058;
      v55 = v52;
      v56 = 2048;
      v57 = v53;
      v58 = 2048;
      v59 = v50;
      v60 = 2048;
      v61 = v51;
      v62 = 2048;
      v63 = v48;
      v64 = 2048;
      v65 = v49;
      v66 = 2048;
      v67 = v44;
      v68 = 2048;
      v69 = v45;
      v70 = 2048;
      v71 = v46;
      v72 = 2048;
      v73 = v47;
      v74 = 2048;
      v75 = v42;
      v76 = 2048;
      v77 = v43;
      v78 = 2112;
      v79 = v4;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "App episode switching to accumulated samples: %zu (%zu) elapsed %.2f (%.2f) rx avg %.2f (%.2f) ceil %.2f (%.2f), tx avg %.2f (%.2f) ceil %.2f (%.2f), %@", buf, 0x84u);
    }

    v53 = v52;
    v51 = v50;
    v49 = v48;
    v47 = v46;
    v45 = v44;
    v43 = v42;
  }

  v40 = 0.0;
  v41 = 0.0;
  [FlowSample acquireNominalCeilingValuesForCellDL:&v41 andUL:&v40];
  baselineCeilingTx = self->baselineCeilingTx;
  if (v45 >= (self->baselineCeilingRx + v41) * 0.5)
  {
    v14 = v45;
  }

  else
  {
    v14 = (self->baselineCeilingRx + v41) * 0.5;
  }

  if (v43 >= (baselineCeilingTx + v40) * 0.5)
  {
    v15 = v43;
  }

  else
  {
    v15 = (baselineCeilingTx + v40) * 0.5;
  }

  v16 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v55 = v14;
    v56 = 2048;
    v57 = v45;
    v58 = 2048;
    v59 = v15;
    v60 = 2048;
    v61 = v43;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "App episode redacting ceiling rx %f (was %f), tx %f (was %f)", buf, 0x2Au);
  }

  v45 = v14;
  v43 = v15;
  v17 = v49;
  v18 = v47;
  if (v49 > v47)
  {
    v19 = v14 - self->baselineCeilingRx;
    v20 = [*&v4 totalObservedCellRxBytes];
    v21 = 1.0;
    v22 = 43.0;
    if (v45 <= 43.0)
    {
      goto LABEL_25;
    }

    v23 = v49;
    goto LABEL_23;
  }

  v19 = v15 - self->baselineCeilingTx;
  v20 = [*&v4 totalObservedCellTxBytes];
  v21 = 1.0;
  v22 = 9.0;
  if (v43 > 9.0)
  {
    v23 = v47;
    v14 = v15;
    v17 = v18;
LABEL_23:
    v21 = v23 / v22;
    goto LABEL_25;
  }

  v14 = v15;
  v17 = v18;
LABEL_25:
  *&v24 = COERCE_DOUBLE(bytesInIntervalFromThroughput(v51, v17));
  if (v24 <= 0x100000)
  {
    v38 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219520;
      v55 = *&v24;
      v56 = 2048;
      v57 = v51;
      v58 = 2048;
      v59 = v53;
      v60 = 2048;
      v61 = v49;
      v62 = 2048;
      v63 = v45;
      v64 = 2048;
      v65 = v47;
      v66 = 2048;
      v67 = v43;
      v8 = "App episode ignoring flow size %llu duration %.3f cnt %lu tput Mbps rx avg %.6f ceiling %.6f tx avg  %.6f ceiling %.6f";
      v9 = v38;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 72;
      goto LABEL_34;
    }
  }

  else
  {
    if (v14 <= 0.0)
    {
      v7 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 138412290;
      v55 = v4;
      v8 = "App episode failed to compute reward (no avg ceiling) for flow: %@";
      goto LABEL_5;
    }

    v25 = v21 * v17;
    v26 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      pvar = self->pvar;
      v28 = v26;
      [(NWPVarBandit *)pvar label];
      v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      baselineCeilingRx = self->baselineCeilingRx;
      v31 = self->baselineCeilingTx;
      *buf = 134220802;
      v55 = v25;
      v56 = 2112;
      v57 = v29;
      v58 = 2048;
      v59 = *&v24;
      v60 = 2048;
      v61 = v51;
      v62 = 2048;
      v63 = v53;
      v64 = 2048;
      v65 = v49;
      v66 = 2048;
      v67 = v45;
      v68 = 2048;
      v69 = baselineCeilingRx;
      v70 = 2048;
      v71 = v47;
      v72 = 2048;
      v73 = v43;
      v74 = 2048;
      v75 = v31;
      v76 = 2048;
      v77 = v21;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "App episode reward=%.6f for label %@ flow size %llu duration %.3f cnt %lu tput Mbps rx avg %.6f ceil %.6f start-ceil %.2f tx avg %.6f ceil %.6f start-ceil %.2f gain-ratio %.2f", buf, 0x7Au);
    }

    v32 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v55 = v25;
      v56 = 2112;
      v57 = v4;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "App episode reward=%.6f for flow %@", buf, 0x16u);
    }

    partialRewards = self->partialRewards;
    *&v33 = v25;
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
    [(NSMutableArray *)partialRewards addObject:v35];

    partialCeilingLifts = self->partialCeilingLifts;
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [(NSMutableArray *)partialCeilingLifts addObject:v37];

    self->dataVolume += v20;
  }

LABEL_35:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)accrueReward:(float)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    partialRewards = self->partialRewards;
    screenIn = self->_screenIn;
    pvar = self->pvar;
    genID = self->genID;
    v14 = 134219010;
    v15 = a3;
    v16 = 2112;
    v17 = partialRewards;
    v18 = 2112;
    v19 = pvar;
    v20 = 1024;
    v21 = screenIn;
    v22 = 2112;
    v23 = genID;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "App episode accrue reward %f, priors: %@, for pvar: %@, screenIn: %d, genID: %@", &v14, 0x30u);
  }

  v11 = self->partialRewards;
  *&v6 = a3;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [(NSMutableArray *)v11 addObject:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end