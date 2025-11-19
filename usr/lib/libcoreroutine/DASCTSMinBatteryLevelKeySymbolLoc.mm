@interface DASCTSMinBatteryLevelKeySymbolLoc
@end

@implementation DASCTSMinBatteryLevelKeySymbolLoc

void *__get_DASCTSMinBatteryLevelKeySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_27DB59E88)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __DuetActivitySchedulerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2788CA6B8;
    v7 = 0;
    qword_27DB59E88 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_27DB59E88;
    if (qword_27DB59E88)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_27DB59E88;
LABEL_5:
  result = dlsym(v2, "_DASCTSMinBatteryLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_6 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end