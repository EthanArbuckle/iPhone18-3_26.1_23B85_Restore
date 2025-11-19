@interface CellFallbackMetric
- (BOOL)postMetric;
- (id)description;
- (id)initCellFallbackMetricWithLevel:(int64_t)a3 policy:(unint64_t)a4 state:(id)a5;
- (unsigned)_interestingTrigger;
@end

@implementation CellFallbackMetric

- (id)description
{
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  state = self->_state;
  v4 = [v6 initWithFormat:@"state %@ advice %ld durationInState %.2f policy %lu motionState (%d/%d) previousState %d trigger (%u/%u) triggerInterfaceType (%d/%d) wifiIngressTriggers %@ interestingTrigger %u", state, self->_advice, *&self->_adviceHeldForSecs, self->_policy, self->_ingressMotionState, self->_egressMotionState, self->_comingFromState, self->_ingressTrigger, self->_egressTrigger, self->_ingressTriggerInterfaceType, self->_egressTriggerInterfaceType, self->_wifiIngressTriggers, -[CellFallbackMetric _interestingTrigger](self, "_interestingTrigger")];

  return v4;
}

- (unsigned)_interestingTrigger
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSMutableSet *)self->_wifiIngressTriggers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_49;
  }

  v5 = v4;
  v6 = 0;
  v7 = 1000;
  v8 = *v20;
  do
  {
    v9 = 0;
    do
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = [*(*(&v19 + 1) + 8 * v9) unsignedIntValue];
      comingFromState = self->_comingFromState;
      advice = self->_advice;
      if (advice == 3)
      {
        if (v10 == 33)
        {
          v15 = 1;
        }

        else
        {
          v15 = 999;
        }

        if (v10 == 32)
        {
          v15 = 0;
        }

        if (comingFromState == 2)
        {
          v14 = v15;
        }

        else
        {
          v14 = 999;
        }
      }

      else if (advice == 2)
      {
        if (comingFromState != 1)
        {
          goto LABEL_39;
        }

        if (v10 <= 24)
        {
          if (v10 == 7)
          {
            v14 = 1;
            goto LABEL_40;
          }

          if (v10 == 10)
          {
            v14 = 0;
            goto LABEL_40;
          }

LABEL_39:
          v14 = 999;
          goto LABEL_40;
        }

        if (v10 != 25)
        {
          if (v10 == 28)
          {
            v14 = 3;
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v14 = 2;
      }

      else
      {
        if ((v10 - 21) >= 2)
        {
          v13 = 999;
        }

        else
        {
          v13 = 3;
        }

        if (v10 == 20)
        {
          v13 = 1;
        }

        if (v10 == 23)
        {
          v13 = 2;
        }

        if (v10 == 5)
        {
          v13 = 0;
        }

        if (comingFromState)
        {
          v14 = 999;
        }

        else
        {
          v14 = v13;
        }

        if (advice != 1)
        {
          v14 = 999;
        }
      }

LABEL_40:
      if (v14 < v7)
      {
        v6 = v10;
        v7 = v14;
      }

      ++v9;
    }

    while (v5 != v9);
    v16 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v5 = v16;
  }

  while (v16);
LABEL_49:

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)initCellFallbackMetricWithLevel:(int64_t)a3 policy:(unint64_t)a4 state:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CellFallbackMetric;
  v10 = [(CellFallbackMetric *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_advice = a3;
    v10->_policy = a4;
    objc_storeStrong(&v10->_state, a5);
    v11->_adviceHeldForSecs = 0.0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    wifiIngressTriggers = v11->_wifiIngressTriggers;
    v11->_wifiIngressTriggers = v12;

    *&v11->_ingressMotionState = 0;
    *&v11->_ingressTrigger = 0;
    *&v11->_ingressTriggerInterfaceType = 0;
    v11->_comingFromState = 10;
  }

  return v11;
}

- (BOOL)postMetric
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v7 = self;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "CFSM Metric: About to post %{private}@ to CA", buf, 0xCu);
  }

  result = AnalyticsSendEventLazy();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id __32__CellFallbackMetric_postMetric__block_invoke(uint64_t a1)
{
  v18[12] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v18[0] = *(v2 + 8);
  v17[0] = @"state";
  v17[1] = @"advice";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:*(v2 + 32)];
  v18[1] = v16;
  v17[2] = @"policy";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 40)];
  v18[2] = v15;
  v17[3] = @"comingFromState";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 60)];
  v18[3] = v3;
  v17[4] = @"durationInState";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 72)];
  v18[4] = v4;
  v17[5] = @"ingressMotionState";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 52)];
  v18[5] = v5;
  v17[6] = @"egressMotionState";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 56)];
  v18[6] = v6;
  v17[7] = @"ingressTrigger";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 64)];
  v18[7] = v7;
  v17[8] = @"egressTrigger";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 68)];
  v18[8] = v8;
  v17[9] = @"interestingIngressTrigger";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "_interestingTrigger")}];
  v18[9] = v9;
  v17[10] = @"ingressTriggerInterfaceType";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 32) + 48)];
  v18[10] = v10;
  v17[11] = @"egressTriggerInterfaceType";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 32) + 49)];
  v18[11] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:12];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end