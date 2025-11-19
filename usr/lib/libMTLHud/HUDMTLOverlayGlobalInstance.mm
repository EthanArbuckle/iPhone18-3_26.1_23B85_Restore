@interface HUDMTLOverlayGlobalInstance
@end

@implementation HUDMTLOverlayGlobalInstance

void ___HUDMTLOverlayGlobalInstance_block_invoke(id a1)
{
  word_767B8 = 0;
  _HUDMTLOverlayGlobalInstance_tracker = HUDUIInvalidOverlay;
  qword_767B0 = HUDInvalidGPUTimeline;
  v1 = HUDDispatchQueueGet(a1);
  notify_register_dispatch("com.apple.metal.hud.notify.ResetMetrics", dword_767C4, v1, &__block_literal_global_380);

  v3 = HUDDispatchQueueGet(v2);
  notify_register_dispatch("com.apple.metal.hud.notify.CycleAlignment", &dword_767C4[1], v3, &__block_literal_global_383);

  v5 = HUDDispatchQueueGet(v4);
  notify_register_dispatch("com.apple.metal.hud.notify.ToggleEnabled", &dword_767C4[2], v5, &__block_literal_global_386);

  v7 = HUDDispatchQueueGet(v6);
  notify_register_dispatch("com.apple.metal.hud.notify.ToggleLogEnabled", &dword_767C4[3], v7, &__block_literal_global_389);

  v9 = HUDDispatchQueueGet(v8);
  notify_register_dispatch("com.apple.metal.hud.notify.PerformanceReport-5s", &dword_767C4[4], v9, &__block_literal_global_392);

  v11 = HUDDispatchQueueGet(v10);
  notify_register_dispatch("com.apple.metal.hud.notify.PerformanceReport-30s", &dword_767C4[5], v11, &__block_literal_global_395);

  v13 = HUDDispatchQueueGet(v12);
  notify_register_dispatch("com.apple.metal.hud.notify.PerformanceReport-60s", &dword_767C4[6], v13, &__block_literal_global_398);

  v15 = HUDDispatchQueueGet(v14);
  notify_register_dispatch("com.apple.metal.hud.notify.PerformanceReport-300s", &dword_767C4[7], v15, &__block_literal_global_401);

  v17 = HUDDispatchQueueGet(v16);
  notify_register_dispatch("com.apple.metal.hud.notify.PerformanceReport-1800s", &dword_767C4[7], v17, &__block_literal_global_404);
}

void ___HUDMTLOverlayGlobalInstance_block_invoke_3(id a1, int a2)
{
  HUDMTLOverlayCycleAlignment__alignmentIndex = (HUDMTLOverlayCycleAlignment__alignmentIndex + 1) % 9u;
  v2 = HUDMTLOverlayCycleAlignment__MTLHUDAlignments[HUDMTLOverlayCycleAlignment__alignmentIndex];
  *(HUDGetGlobalConfig() + 8) = v2;
}

void ___HUDMTLOverlayGlobalInstance_block_invoke_6(id a1, int a2)
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  [v2 generateReport:0 forTimeInNs:5000000000];
}

void ___HUDMTLOverlayGlobalInstance_block_invoke_7(id a1, int a2)
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  [v2 generateReport:0 forTimeInNs:30000000000];
}

void ___HUDMTLOverlayGlobalInstance_block_invoke_8(id a1, int a2)
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  [v2 generateReport:0 forTimeInNs:60000000000];
}

void ___HUDMTLOverlayGlobalInstance_block_invoke_9(id a1, int a2)
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  [v2 generateReport:0 forTimeInNs:300000000000];
}

void ___HUDMTLOverlayGlobalInstance_block_invoke_10(id a1, int a2)
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  [v2 generateReport:0 forTimeInNs:1800000000000];
}

@end