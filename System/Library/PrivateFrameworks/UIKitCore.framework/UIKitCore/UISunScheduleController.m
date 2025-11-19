@interface UISunScheduleController
@end

@implementation UISunScheduleController

void __61___UISunScheduleController__setNextEventTimerToAbsoluteTime___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = formatAbsoluteTime(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Timer fired for: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusWithAbsoluteTime:*(a1 + 40)];
}

@end