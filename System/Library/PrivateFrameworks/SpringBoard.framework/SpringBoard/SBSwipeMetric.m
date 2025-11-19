@interface SBSwipeMetric
- (SBSwipeMetric)init;
@end

@implementation SBSwipeMetric

uint64_t __21__SBSwipeMetric_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 33)
  {
    return 0;
  }

  v4 = [a3 eventPayload];
  v5 = *(a1 + 32) + 24;
  *v5 = CGPointFromState(v4);
  *(v5 + 8) = v6;
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67648]];
  *(*(a1 + 32) + 40) = [v7 unsignedIntegerValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67658]];
  [v8 doubleValue];
  *(*(a1 + 32) + 48) = v9 * 1000.0;

  return 1;
}

- (SBSwipeMetric)init
{
  v16.receiver = self;
  v16.super_class = SBSwipeMetric;
  v2 = [(SBAnalyticsStateMachineEventHandler *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __21__SBSwipeMetric_init__block_invoke;
    v14[3] = &unk_2783BD218;
    v4 = v2;
    v15 = v4;
    v5 = [SBAnalyticsStateMachineEdge edgeFromState:0 transition:v14];
    [(SBAnalyticsStateMachineEventHandler *)v4 addEdge:v5];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __21__SBSwipeMetric_init__block_invoke_2;
    v12 = &unk_2783BD218;
    v6 = v4;
    v13 = v6;
    v7 = [SBAnalyticsStateMachineEdge edgeFromState:1 transition:&v9];
    [(SBAnalyticsStateMachineEventHandler *)v6 addEdge:v7, v9, v10, v11, v12];
  }

  return v3;
}

uint64_t __21__SBSwipeMetric_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a2 != 34)
  {
    return 1;
  }

  v4 = [a3 eventPayload];
  v5 = CGPointFromState(v4);
  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67628]];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67638]];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67640]];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67630]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67650]];
  [v19 doubleValue];
  v21 = v20;

  v22 = +[SBDefaults localDefaults];
  v23 = [v22 appSwitcherDefaults];

  v24 = [v23 bottomEdgeGestureSwipeCount];
  [v23 setBottomEdgeGestureSwipeCount:v24 + 1];
  v25 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v44 = 134217984;
    v45 = v24;
    _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "----SWIPE BEGIN %lu----", &v44, 0xCu);
  }

  v26 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = NSStringFromCGPoint(*(*(a1 + 32) + 24));
    v44 = 138543362;
    v45 = v27;
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "initialLocation: %{public}@", &v44, 0xCu);
  }

  v28 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v49.x = v5;
    v49.y = v7;
    v29 = NSStringFromCGPoint(v49);
    v44 = 138543362;
    v45 = v29;
    _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_INFO, "finalLocation: %{public}@", &v44, 0xCu);
  }

  v30 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(*(a1 + 32) + 40) - 1;
    if (v31 > 3)
    {
      v32 = @"unknown";
    }

    else
    {
      v32 = off_2783BD238[v31];
    }

    v44 = 138543362;
    v45 = v32;
    _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_INFO, "orientation: %{public}@", &v44, 0xCu);
  }

  v34 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    if (v9 > 3)
    {
      v35 = @"home";
    }

    else
    {
      v35 = off_2783BD258[v9];
    }

    v44 = 138543362;
    v45 = v35;
    _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_INFO, "finalAction: %{public}@", &v44, 0xCu);
  }

  v36 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v44 = 134217984;
    v45 = v21;
    _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_INFO, "peakSpeed: %g", &v44, 0xCu);
  }

  v37 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v44 = 134218240;
    v45 = v12;
    v46 = 2048;
    v47 = v15;
    _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_INFO, "liftOffVelocity: (%g, %g)", &v44, 0x16u);
  }

  v38 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v44 = 134217984;
    v45 = v18;
    _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_INFO, "liftOffAngle: %g", &v44, 0xCu);
  }

  v39 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = *(*(a1 + 32) + 48);
    v44 = 134217984;
    v45 = v40;
    _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_INFO, "timestampDelta: %g", &v44, 0xCu);
  }

  v41 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    [v4 timestamp];
    v44 = 134217984;
    v45 = v42;
    _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_INFO, "timestamp: %g", &v44, 0xCu);
  }

  v43 = SBLogSystemGestureHome();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = 134217984;
    v45 = v24;
    _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_INFO, "----SWIPE END %lu----", &v44, 0xCu);
  }

  return 0;
}

@end