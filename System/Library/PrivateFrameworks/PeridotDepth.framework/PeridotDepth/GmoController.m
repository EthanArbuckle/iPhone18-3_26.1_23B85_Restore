@interface GmoController
- (BOOL)homographyRunConditionsWithTimestamp:(double)a3;
- (GmoController)initWithUnitInfo:(PeridotUnitInfo *)a3;
- (SessionState)sessionCalcState;
- (id).cxx_construct;
- (int)processFrameWithBank:(const GmoProcessBankInputs *)a3 gmoResult:(GmoResult *)a4;
- (vector<common::PeridotSpotValues<CGPoint>,)localSpotsLocRefDist;
- (vector<common::PeridotSpotValues<float>,)localNa;
- (vector<std::vector<SpecsResults>,)specsOut;
- (void)setGmoCfgBits:(GmoCfgBits)a3;
- (void)setSessionPersistentData:(SessionStatePersistentData *)a3;
@end

@implementation GmoController

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 110) = 0;
  *(self + 104) = 0u;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  return self;
}

- (vector<std::vector<SpecsResults>,)specsOut
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[6].__end_;
  cap = self[6].__cap_;
  if (cap != end)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((cap - end) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (vector<common::PeridotSpotValues<float>,)localNa
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[5].__end_;
  cap = self[5].__cap_;
  if (cap != end)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 6)) < 0x92492492492493)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (vector<common::PeridotSpotValues<CGPoint>,)localSpotsLocRefDist
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[4].__end_;
  cap = self[4].__cap_;
  if (cap != end)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 8)) < 0x24924924924925)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (SessionState)sessionCalcState
{
  v4 = retstr;
  if (self->_hCtrlLast.hOk && self->_solutionOKLast)
  {
    gmoCoreAnalyticsTelemetry::reportLongTermStats(&self->_ca);
    p_coreAnalyticsPersistentData = &self->_sessionState.persistent.coreAnalyticsPersistentData;
    v7 = *&self->_ca._longTermEventPersistentData.lastEventYear;
    if (self->_ca._isFireLongTermEvent)
    {
      self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[29] = 0.0;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[21] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[25] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[13] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[17] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[5] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[9] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[27] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[1] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[19] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[23] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[11] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[15] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[3] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[7] = 0u;
      *&p_coreAnalyticsPersistentData->coreAnalyticsLongTermData.sessionCount = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.homogDoneCount = 0u;
      self->_ca._isFireLongTermEvent = 0;
    }

    else
    {
      memcpy(p_coreAnalyticsPersistentData, &self->_ca._longTermEventPersistentData, sizeof(CoreAnalyticsPersistentData));
      ++self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.sessionCount;
    }

    *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.lastEventYear = v7;
    v4 = retstr;
  }

  return memcpy(v4, &self->_sessionState, sizeof(SessionState));
}

- (void)setSessionPersistentData:(SessionStatePersistentData *)a3
{
  if (a3)
  {
    memcpy(&self->_sessionState, a3, sizeof(self->_sessionState));
    self->_ca._longTermEventPersistentData.homogDoneCount = self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.homogDoneCount;
    *&self->_ca._longTermEventPersistentData.sessionCount = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.sessionCount;
    v4 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[20];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[16] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[16];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[20] = v4;
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[24] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[24];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[28] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[28];
    v5 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[4];
    *self->_ca._longTermEventPersistentData.calibErrP95Arr = *self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr;
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[4] = v5;
    v6 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[12];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[8] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[8];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[12] = v6;
    v7 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[12];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[8] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[8];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[12] = v7;
    v8 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[4];
    *self->_ca._longTermEventPersistentData.calibErrP50Arr = *self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr;
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[4] = v8;
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[28] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[28];
    v9 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[24];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[20] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[20];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[24] = v9;
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[16] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[16];
  }
}

- (BOOL)homographyRunConditionsWithTimestamp:(double)a3
{
  bankCounter = self->_bankCounter;
  if (a3 - self->_lastHomographyAttemptTimeSec >= self->_timeBetweenHomographyAttemps && (self->_bankCounter & 7) == 0)
  {
    if (self->_minFramesBetweenHomogCycle > bankCounter >> 3 && bankCounter <= 0x1DF)
    {
      return 0;
    }
  }

  else if (bankCounter < 0x1E0)
  {
    return 0;
  }

  self->_lastHomographyAttemptTimeSec = a3;
  return 1;
}

- (int)processFrameWithBank:(const GmoProcessBankInputs *)a3 gmoResult:(GmoResult *)a4
{
  v4 = (MEMORY[0x28223BE20])(self, a2, a3);
  __p[315] = *MEMORY[0x277D85DE8];
  if (*(v4 + 64) <= 0x1DFuLL)
  {
    v7 = v6;
    v8 = v5;
    v9 = v4;
    [*(v4 + 40) addDbgDataFor_gmoBankInput:?];
    *v7 = 0;
    if (![*(v9 + 40) bankNumInHomogCycle])
    {
      v10 = (*(v9 + 32) + 36444);
      __p[1] = 64;
      __p[0] = v10;
      [*(v9 + 40) startOfHomogCycle];
      [*(v9 + 40) addDbgDataFor_gmoInit:__p];
      [*(v9 + 40) addDbgDataFor_gmoConfig:v9 + 12];
      [*(v9 + 40) addDbgDataFor_operationalSpotLocation10m:v9 + 1148];
      [*(v9 + 40) addDbgDataFor_factorySpotLocation10m:v9 + 2052];
      [*(v9 + 40) addDbgDataFor_operationalSpotLocation70cm:*(v9 + 32) + 344396];
      [*(v9 + 40) addDbgDataFor_factorySpotLocation70cm:*(v9 + 32) + 342588];
    }

    if (*(v9 + 8) == 1)
    {
      if ([*(v9 + 48) configureEngineWithSpecConfig:v8 + 8966])
      {
        return 1;
      }

      *(v9 + 8) = 0;
    }

    if (![*(v9 + 48) calculateSpecQs:v8 pulsesPerphase:10134 specsOut:*(*(v9 + 152) + 24 * (*(v9 + 64) >> 3)) + 756 * *v8])
    {
      v11 = *(v9 + 64) >> 3;
      v12 = *v8;
      v13 = (*(v9 + 128) + 448 * v11 + 56 * *v8);
      *v13 = v8[21] * 100.0;
      v13[1] = v8[27] * 100.0;
      v13[2] = v8[33] * 100.0;
      v13[3] = v8[39] * 100.0;
      v13[4] = v8[45] * 100.0;
      v13[5] = v8[51] * 100.0;
      v13[6] = v8[57] * 100.0;
      v13[7] = v8[63] * 100.0;
      v13[8] = v8[69] * 100.0;
      v13[9] = v8[75] * 100.0;
      v13[10] = v8[81] * 100.0;
      v13[11] = v8[87] * 100.0;
      v13[12] = v8[93] * 100.0;
      v13[13] = v8[99] * 100.0;
      if (![*(v9 + 48) findSpotLocation:*(*(v9 + 152) + 24 * v11) + 756 * v12 withAnchors:v8 + 2231 spotLocationEstimation:&v16 outBound:&v15])
      {
        operator new();
      }
    }
  }

  return 1;
}

- (void)setGmoCfgBits:(GmoCfgBits)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[GmoController setGmoCfgBits:]";
    v9 = 1024;
    v10.all = a3.all;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Setting GMO Config to: 0x%X", &v7, 0x12u);
  }

  self->_gmoCfgBits = a3;
  if ((a3.all & 0x80000000) != 0)
  {
    v5 = objc_alloc_init(GmoDbgServices);
    dbgSrvc = self->_dbgSrvc;
    self->_dbgSrvc = v5;
  }
}

- (GmoController)initWithUnitInfo:(PeridotUnitInfo *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = GmoController;
  v4 = [(GmoController *)&v56 init];
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v58 = "[GmoController initWithUnitInfo:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Init ...", buf, 0xCu);
    }

    v4->_sessionState.persistent.pattern = [&unk_283811050 intValue];
    v4->_sessionState.persistent.version = [&unk_283811068 intValue];
    v4->_gmoCfgBits.all = 0;
    v4->_unitInfo = a3;
    v4->_gmoRefDist = 10000;
    v4->_isSphere = a3->var0.operationalSpotLocations.normalRange.isSphere;
    *&v4->_spotSizeSigma = 0x40C000003EC28F5CLL;
    v5 = [GmoEngine alloc];
    *&v6 = v4->_spotSizeSigma;
    v7 = [(GmoEngine *)v5 initWithPulseShape:&v4->_unitInfo->var0.pulseShape pulseShapeSize:64 spotSizeSigma:v6 unitInfo:?];
    engine = v4->_engine;
    v4->_engine = v7;

    v4->_engineNeedsConfiguration = 1;
    begin = v4->_localSpotsLocRefDist.__begin_;
    end = v4->_localSpotsLocRefDist.__end_;
    v11 = end - begin;
    v12 = 0x6DB6DB6DB6DB6DB7 * ((end - begin) >> 8);
    if (v12 > 0x3B)
    {
      if (v11 == 107520)
      {
        goto LABEL_17;
      }

      v18 = begin + 107520;
    }

    else
    {
      v13 = 60 - v12;
      cap = v4->_localSpotsLocRefDist.__cap_;
      if (0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 8) < v13)
      {
        v15 = 0x6DB6DB6DB6DB6DB7 * ((cap - begin) >> 8);
        v16 = 2 * v15;
        if (2 * v15 <= 0x3C)
        {
          v16 = 60;
        }

        if (v15 >= 0x12492492492492)
        {
          v17 = 0x24924924924924;
        }

        else
        {
          v17 = v16;
        }

        if (v17 <= 0x24924924924924)
        {
          operator new();
        }

        goto LABEL_65;
      }

      bzero(v4->_localSpotsLocRefDist.__end_, 1792 * ((((105728 - v11) >> 8) * 0x2492492492492493uLL) >> 64) + 1792);
      v18 = &end[1792 * ((((105728 - v11) >> 8) * 0x2492492492492493uLL) >> 64) + 1792];
    }

    v4->_localSpotsLocRefDist.__end_ = v18;
LABEL_17:
    v19 = v4->_localNa.__begin_;
    v20 = v4->_localNa.__end_;
    v21 = v20 - v19;
    v22 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 6);
    if (v22 > 0x3B)
    {
      if (v21 == 26880)
      {
LABEL_30:
        v29 = v4->_specsOut.__begin_;
        v30 = v4->_specsOut.__end_;
        v31 = (v30 - v29);
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3);
        if (v32 > 0x3B)
        {
          if (v31 != 1440)
          {
            v38 = v29 + 1440;
            if (v30 != v29 + 1440)
            {
              v39 = v4->_specsOut.__end_;
              do
              {
                v41 = *(v39 - 3);
                v39 -= 24;
                v40 = v41;
                if (v41)
                {
                  *(v30 - 2) = v40;
                  operator delete(v40);
                }

                v30 = v39;
              }

              while (v39 != v38);
            }

            v4->_specsOut.__end_ = v38;
          }
        }

        else
        {
          v33 = 60 - v32;
          v34 = v4->_specsOut.__cap_;
          if (0xAAAAAAAAAAAAAAABLL * ((v34 - v30) >> 3) < v33)
          {
            v35 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v29) >> 3);
            v36 = 2 * v35;
            if (2 * v35 <= 0x3C)
            {
              v36 = 60;
            }

            if (v35 >= 0x555555555555555)
            {
              v37 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v37 = v36;
            }

            if (v37 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_65:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          bzero(v30, 24 * ((1416 - v31) / 0x18uLL) + 24);
          v4->_specsOut.__end_ = &v30[24 * ((1416 - v31) / 0x18uLL) + 24];
        }

        v42 = 0;
        while (1)
        {
          v44 = v4->_specsOut.__begin_ + v42;
          v45 = *v44;
          v46 = *(v44 + 1);
          v47 = v46 - *v44;
          v48 = 0xA53FA94FEA53FA95 * (v47 >> 2);
          if (v48 > 7)
          {
            if (v47 == 6048)
            {
              goto LABEL_50;
            }

            v43 = v45 + 6048;
          }

          else
          {
            v49 = 8 - v48;
            v50 = *(v44 + 2);
            if (0xA53FA94FEA53FA95 * ((v50 - v46) >> 2) < v49)
            {
              v51 = 0xA53FA94FEA53FA95 * ((v50 - v45) >> 2);
              v52 = 2 * v51;
              if (2 * v51 <= 8)
              {
                v52 = 8;
              }

              if (v51 >= 0x2B580AD602B580)
              {
                v53 = 0x56B015AC056B01;
              }

              else
              {
                v53 = v52;
              }

              if (v53 <= 0x56B015AC056B01)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            bzero(*(v44 + 1), 756 * ((5292 - v47) / 0x2F4uLL) + 756);
            v43 = v46 + 756 * ((5292 - v47) / 0x2F4uLL) + 756;
          }

          *(v44 + 1) = v43;
LABEL_50:
          v42 += 24;
          if (v42 == 1440)
          {
            peridot::compensateForParallax(v4->_unitInfo->var1);
          }
        }
      }

      v28 = v19 + 26880;
    }

    else
    {
      v23 = 60 - v22;
      v24 = v4->_localNa.__cap_;
      if (0x6DB6DB6DB6DB6DB7 * ((v24 - v20) >> 6) < v23)
      {
        v25 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v19) >> 6);
        v26 = 2 * v25;
        if (2 * v25 <= 0x3C)
        {
          v26 = 60;
        }

        if (v25 >= 0x49249249249249)
        {
          v27 = 0x92492492492492;
        }

        else
        {
          v27 = v26;
        }

        if (v27 <= 0x92492492492492)
        {
          operator new();
        }

        goto LABEL_65;
      }

      bzero(v4->_localNa.__end_, 448 * ((((26432 - v21) >> 6) * 0x2492492492492493uLL) >> 64) + 448);
      v28 = &v20[448 * ((((26432 - v21) >> 6) * 0x2492492492492493uLL) >> 64) + 448];
    }

    v4->_localNa.__end_ = v28;
    goto LABEL_30;
  }

  v54 = 0;

  return v54;
}

@end