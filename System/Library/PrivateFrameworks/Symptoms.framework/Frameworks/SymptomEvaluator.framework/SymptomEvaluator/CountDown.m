@interface CountDown
- (CountDown)init;
- (void)goOffNext:(unint64_t)a3 fromTime:(id)a4 forEpoch:(id)a5 timesTotal:(unint64_t)a6 onQueue:(id)a7 withIterationBlock:(id)a8 completionBlock:(id)a9;
- (void)stop;
@end

@implementation CountDown

- (CountDown)init
{
  v7.receiver = self;
  v7.super_class = CountDown;
  v2 = [(CountDown *)&v7 init];
  if (v2 && (v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]), timer = v2->timer, v2->timer = v3, timer, !v2->timer))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)goOffNext:(unint64_t)a3 fromTime:(id)a4 forEpoch:(id)a5 timesTotal:(unint64_t)a6 onQueue:(id)a7 withIterationBlock:(id)a8 completionBlock:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  objc_storeStrong(&self->_startTime, a4);
  timer = self->timer;
  if (v19)
  {
    v22 = dispatch_time(0, a3);
    dispatch_source_set_timer(timer, v22, a3, 0);
    v23 = self->timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke;
    handler[3] = &unk_27898FD88;
    v24 = v33;
    v33[0] = v18;
    v33[1] = self;
    v34 = v17;
    v37 = a6;
    v35 = v19;
    v36 = v20;
    dispatch_source_set_event_handler(v23, handler);

    v25 = v34;
  }

  else
  {
    v26 = dispatch_time(0, a6 * a3);
    dispatch_source_set_timer(timer, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
    v27 = self->timer;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke_65;
    v28[3] = &unk_27898C710;
    v24 = &v29;
    v29 = v18;
    v30 = v17;
    v31 = v20;
    dispatch_source_set_event_handler(v27, v28);

    v25 = v30;
  }

  dispatch_source_set_cancel_handler(self->timer, &__block_literal_global_68);
  dispatch_resume(self->timer);
}

void __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke_2;
  block[3] = &unk_27898FD60;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v11 = *(a1 + 72);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 16);
  if (![*(a1 + 40) active])
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: %p countdown on epoch that is no longer active", &v9, 0xCu);
    }

    goto LABEL_10;
  }

  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 64);
  if (v3 >= v2)
  {
    (*(*(a1 + 48) + 16))();
    v2 = *(*(a1 + 32) + 16);
    v3 = *(a1 + 64);
  }

  if (v3 != v2)
  {
LABEL_10:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(*(a1 + 56) + 16);
  v5 = *MEMORY[0x277D85DE8];

  v4();
}

void __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke_65(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke_2_66;
  v3[3] = &unk_27898C648;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

uint64_t __95__CountDown_goOffNext_fromTime_forEpoch_timesTotal_onQueue_withIterationBlock_completionBlock___block_invoke_2_66(uint64_t a1)
{
  result = [*(a1 + 32) active];
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)stop
{
  self->count = 0;
  timer = self->timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->timer;
    self->timer = 0;
  }
}

@end