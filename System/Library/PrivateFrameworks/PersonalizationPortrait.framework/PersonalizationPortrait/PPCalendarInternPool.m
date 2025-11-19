@interface PPCalendarInternPool
- (PPCalendarInternPool)init;
- (id)internedCalendarWithEKCalendar:(id)a3;
@end

@implementation PPCalendarInternPool

- (id)internedCalendarWithEKCalendar:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__574;
  v16 = __Block_byref_object_dispose__575;
  v17 = 0;
  poolLock = self->_poolLock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PPCalendarInternPool_internedCalendarWithEKCalendar___block_invoke;
  v9[3] = &unk_1E77F6478;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)poolLock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__PPCalendarInternPool_internedCalendarWithEKCalendar___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) calendarIdentifier];
  v5 = v4;
  v6 = @"unknown-calendar";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [*(a1 + 32) source];
  v9 = [v8 sourceIdentifier];
  v10 = v9;
  v11 = @"unknown-source";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [(__CFString *)v12 stringByAppendingString:@":"];

  v14 = [v13 stringByAppendingString:v7];

  v15 = [v3 objectForKeyedSubscript:v14];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v18, kCGRenderingIntentDefault, [*(a1 + 32) CGColor], 0);
    CGColorSpaceRelease(v18);
    v20 = [*(a1 + 32) title];
    v21 = v20;
    v22 = &stru_1F1B327D8;
    if (v20)
    {
      v22 = v20;
    }

    v23 = v22;

    v24 = [[PPCalendar alloc] initWithCalendarIdentifier:v7 title:v23 color:CopyByMatchingToColorSpace];
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    CGColorRelease(CopyByMatchingToColorSpace);
    if ([v3 count] > 0xFF)
    {
      v27 = pp_events_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = 134217984;
        v30 = 256;
        _os_log_debug_impl(&dword_1A7FD3000, v27, OS_LOG_TYPE_DEBUG, "Interned PPCalendars reached max count: %tu", &v29, 0xCu);
      }
    }

    else
    {
      [v3 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v14];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (PPCalendarInternPool)init
{
  v8.receiver = self;
  v8.super_class = PPCalendarInternPool;
  v2 = [(PPCalendarInternPool *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    poolLock = v2->_poolLock;
    v2->_poolLock = v5;
  }

  return v2;
}

@end