@interface PICleanupAvailability
+ (BOOL)_deviceSupportsCleanup;
+ (id)_fetchCleanupAvailability;
+ (id)ensureAvailability:(BOOL)a3;
+ (int64_t)status;
@end

@implementation PICleanupAvailability

+ (int64_t)status
{
  v2 = [a1 ensureAvailability:0];
  v3 = [v2 status];

  return v3;
}

+ (id)ensureAvailability:(BOOL)a3
{
  v3 = a3;
  if (ensureAvailability__once != -1)
  {
    dispatch_once(&ensureAvailability__once, &__block_literal_global_29685);
  }

  v5 = ensureAvailability__availability;
  if (ensureAvailability__availability)
  {
    v6 = !v3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PICleanupAvailability_ensureAvailability___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(ensureAvailability__availabilityQueue, block);
    v5 = ensureAvailability__availability;
  }

  return v5;
}

uint64_t __44__PICleanupAvailability_ensureAvailability___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _fetchCleanupAvailability];
  v2 = ensureAvailability__availability;
  ensureAvailability__availability = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __44__PICleanupAvailability_ensureAvailability___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PICleanupAvailability", v2);
  v1 = ensureAvailability__availabilityQueue;
  ensureAvailability__availabilityQueue = v0;
}

+ (id)_fetchCleanupAvailability
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a1 _deviceSupportsCleanup])
  {
    domain_answer = os_eligibility_get_domain_answer();
    if (domain_answer)
    {
      v3 = domain_answer;
      v4 = strerror(domain_answer);
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26_29688);
      }

      v5 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v12[0] = v3;
        LOWORD(v12[1]) = 2080;
        *(&v12[1] + 2) = v4;
        _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "os_eligibility_get_domain_answer failed with errno %d: %s", buf, 0x12u);
      }

      v6 = 0;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26_29688);
      }

      v10 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_DEFAULT, "Cleanup available", buf, 2u);
      }

      v6 = 1;
    }

    v7 = [[_PICleanupAvailability alloc] initWithStatus:v6];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26_29688);
    }

    v8 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7694000, v8, OS_LOG_TYPE_DEFAULT, "Cleanup unavailable (device support)", buf, 2u);
    }

    v7 = [[_PICleanupAvailability alloc] initWithStatus:0];
  }

  return v7;
}

+ (BOOL)_deviceSupportsCleanup
{
  v7 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69B3AB0] overrideCleanupHardwareCheck])
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26_29688);
    }

    v2 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_1C7694000, v2, OS_LOG_TYPE_DEFAULT, "Cleanup device support check overridden to YES", v6, 2u);
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = MGGetBoolAnswer();
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26_29688);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEFAULT, "Cleanup device support %d (Gen Model Query)", v6, 8u);
    }
  }

  return v3;
}

@end