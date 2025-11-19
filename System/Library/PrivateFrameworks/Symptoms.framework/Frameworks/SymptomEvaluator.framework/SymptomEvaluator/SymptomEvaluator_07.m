uint64_t __symptomConnectionCreate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = transportDictionary;
  transportDictionary = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t symptomConnectionDestroy(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a2];
  v5 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = transportDictionary;
    v7 = v5;
    v8 = [v6 description];
    *buf = 134218242;
    v20 = a2;
    v21 = 2080;
    v22 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "symptomConnectionDestroy for %llu, dictionary %s", buf, 0x16u);
  }

  v9 = [transportDictionary objectForKey:v4];
  v10 = v9;
  if (v9)
  {
    if (v9 == a1)
    {
      [v9 disconnect];
      [transportDictionary removeObjectForKey:v4];
      v16 = 1;
      goto LABEL_12;
    }

    v11 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v20 = a2;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = a1;
      v12 = "Mismatched  entry for key %llu on delete, found %p, given %p";
      v13 = v11;
      v14 = 32;
LABEL_9:
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  else
  {
    v15 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = a2;
      v12 = "No entry for key %llu on delete";
      v13 = v15;
      v14 = 12;
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t InitializeEngine(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x12u, 0x90uLL, DeallocateEngineData);
  v2 = *(*(a1 + 48) + 144);
  *(v2 + 88) = 1;
  AddWatchItem(a1, "statistics", 0, v2 + 76, 20, 0, 0);
  v3 = *(*(a1 + 48) + 144) + 80;

  return AddWatchItem(a1, "focus", 0, v3, 0, 0, 0);
}

uint64_t DeallocateEngineData(uint64_t a1)
{
  DeallocateCallList(a1, *(*(*(a1 + 48) + 144) + 48));
  result = DeallocateCallList(a1, *(*(*(a1 + 48) + 144) + 56));
  v3 = *(*(*(a1 + 48) + 144) + 64);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 16);
      v5 = *(a1 + 48);
      *(*(v5 + 472) + 32) = v3;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
      *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t EnvPopFocus(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 144) + 64);
  if (v1)
  {
    return RemoveFocus(a1, *v1);
  }

  else
  {
    return 0;
  }
}

uint64_t EnvGetNextFocus(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + 16;
  }

  else
  {
    v2 = *(*(a1 + 48) + 144) + 64;
  }

  return *v2;
}

uint64_t ClearFocusStackCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "list-focus-stack", 0, 0);
  if (result != -1)
  {

    return EnvClearFocusStack(a1);
  }

  return result;
}

uint64_t EnvClearFocusStack(uint64_t result)
{
  v1 = *(*(result + 48) + 144);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = result;
    do
    {
      result = RemoveFocus(v3, *v2);
      v1 = *(*(v3 + 48) + 144);
      v2 = *(v1 + 64);
    }

    while (v2);
  }

  *(v1 + 72) = 1;
  return result;
}

BOOL EnvRemoveRunFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 144) + 48) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 144) + 48), &v3);
  return v3 != 0;
}

BOOL EnvRemoveBeforeRunFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 144) + 56) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 144) + 56), &v3);
  return v3 != 0;
}

unint64_t RunCommand(void *a1)
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  result = EnvArgCountCheck(a1, "run", 2u, 1);
  if (result != -1)
  {
    if (result == 1)
    {
      result = EnvArgTypeCheck(a1, "run", 1, 1, &v4);
      if (!result)
      {
        return result;
      }

      v3 = *(v5 + 24);
    }

    else
    {
      v3 = -1;
    }

    return EnvRun(a1, v3);
  }

  return result;
}

uint64_t HaltCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "halt", 0, 0);
  *(*(*(a1 + 48) + 144) + 8) = 1;
  return result;
}

void EnvSetBreak(uint64_t a1, uint64_t a2)
{
  for (; a2; a2 = *(a2 + 96))
  {
    *(a2 + 56) |= 0x800u;
  }
}

uint64_t EnvRemoveBreak(uint64_t a1, uint64_t a2)
{
  for (result = 0; a2; a2 = *(a2 + 96))
  {
    if ((*(a2 + 56) & 0x800) != 0)
    {
      *(a2 + 56) &= ~0x800u;
      result = 1;
    }
  }

  return result;
}

uint64_t RemoveAllBreakpoints(uint64_t a1)
{
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v3 = result;
    do
    {
      NextDefrule = EnvGetNextDefrule(a1, 0);
      if (NextDefrule)
      {
        v5 = NextDefrule;
        do
        {
          v6 = v5;
          do
          {
            if ((*(v6 + 56) & 0x800) != 0)
            {
              *(v6 + 56) &= ~0x800u;
            }

            v6 = *(v6 + 96);
          }

          while (v6);
          v5 = EnvGetNextDefrule(a1, v5);
        }

        while (v5);
      }

      result = EnvGetNextDefmodule(a1, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t SetBreakCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "set-break", 0, 1);
  if (result != -1)
  {
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    result = EnvArgTypeCheck(a1, "set-break", 1, 2, &v4);
    if (result)
    {
      v3 = *(v5 + 24);
      result = EnvFindDefrule(a1, v3);
      if (result)
      {
        do
        {
          *(result + 56) |= 0x800u;
          result = *(result + 96);
        }

        while (result);
      }

      else
      {
        return CantFindItemErrorMessage(a1, "defrule", v3);
      }
    }
  }

  return result;
}

uint64_t RemoveBreakCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "remove-break", 2u, 1);
  if (result != -1)
  {
    if (result)
    {
      v6 = 0u;
      v7 = 0u;
      v5 = 0u;
      result = EnvArgTypeCheck(a1, "remove-break", 1, 2, &v5);
      if (result)
      {
        v3 = *(v6 + 24);
        result = EnvFindDefrule(a1, v3);
        if (result)
        {
          v4 = 1;
          do
          {
            while ((*(result + 56) & 0x800) != 0)
            {
              v4 = 0;
              *(result + 56) &= ~0x800u;
              result = *(result + 96);
              if (!result)
              {
                return result;
              }
            }

            result = *(result + 96);
          }

          while (result);
          if (v4)
          {
            EnvPrintRouter(a1, "werror", "Rule ");
            EnvPrintRouter(a1, "werror", v3);
            return EnvPrintRouter(a1, "werror", " does not have a breakpoint set.\n");
          }
        }

        else
        {
          return CantFindItemErrorMessage(a1, "defrule", v3);
        }
      }
    }

    else
    {

      return RemoveAllBreakpoints(a1);
    }
  }

  return result;
}

uint64_t ShowBreaksCommand(uint64_t a1)
{
  v3 = 0;
  result = EnvArgCountCheck(a1, "show-breaks", 2u, 1);
  if (result != -1)
  {
    if (result == 1)
    {
      result = GetModuleName(a1, "show-breaks", 1, &v3);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      result = EnvGetCurrentModule(a1);
    }

    return ListItemsDriver(a1, "wdisplay", result, 0, 0, EnvGetNextDefrule, GetConstructNameString, 0, EnvDefruleHasBreakpoint);
  }

  return result;
}

uint64_t ListFocusStackCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "list-focus-stack", 0, 0);
  if (result != -1)
  {

    return EnvListFocusStack(a1, "wdisplay");
  }

  return result;
}

uint64_t EnvListFocusStack(uint64_t result, FILE *a2)
{
  v2 = *(*(*(result + 48) + 144) + 64);
  if (v2)
  {
    v4 = result;
    do
    {
      ConstructNameString = EnvGetConstructNameString(v4, *v2);
      EnvPrintRouter(v4, a2, ConstructNameString);
      result = EnvPrintRouter(v4, a2, "\n");
      v2 = v2[2];
    }

    while (v2);
  }

  return result;
}

void *GetFocusStackFunction(uint64_t a1, uint64_t a2)
{
  result = EnvArgCountCheck(a1, "get-focus-stack", 0, 0);
  if (result != -1)
  {

    return EnvGetFocusStack(a1, a2);
  }

  return result;
}

void *EnvGetFocusStack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 48) + 144) + 64);
  if (v4)
  {
    v5 = -1;
    do
    {
      v4 = *(v4 + 16);
      ++v5;
    }

    while (v4);
    *(a2 + 8) = 4;
    *(a2 + 24) = 0;
    *(a2 + 32) = v5;
    result = EnvCreateMultifield(a1, v5 + 1);
    *(a2 + 16) = result;
    v7 = *(*(*(a1 + 48) + 144) + 64);
    if (v7)
    {
      v8 = result + 4;
      do
      {
        *(v8 - 4) = 2;
        *v8 = **v7;
        v8 += 2;
        v7 = *(v7 + 16);
      }

      while (v7);
    }
  }

  else
  {
    *(a2 + 8) = 4;
    *(a2 + 24) = xmmword_2328169C0;
    result = EnvCreateMultifield(a1, 0);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t PopFocusFunction(uint64_t a1)
{
  EnvArgCountCheck(a1, "pop-focus", 0, 0);
  v2 = *(*(*(a1 + 48) + 144) + 64);
  if (v2)
  {
    v3 = RemoveFocus(a1, *v2);
    if (v3)
    {
      return *v3;
    }
  }

  return EnvFalseSymbol(a1);
}

uint64_t GetFocusFunction(uint64_t a1)
{
  EnvArgCountCheck(a1, "get-focus", 0, 0);
  v2 = *(*(*(a1 + 48) + 144) + 64);
  if (v2)
  {
    v3 = *v2;
    if (v3)
    {
      return *v3;
    }
  }

  return EnvFalseSymbol(a1);
}

uint64_t EnvGetFocus(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 144) + 64);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t FocusCommand(uint64_t a1)
{
  v2 = EnvArgCountCheck(a1, "focus", 1u, 1);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v2;
  if (v2 < 1)
  {
    return 1;
  }

  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  while (1)
  {
    result = EnvArgTypeCheck(a1, "focus", v3, 2, &v8);
    if (!result)
    {
      break;
    }

    v5 = *(v9 + 24);
    Defmodule = EnvFindDefmodule(a1, v5);
    if (!Defmodule)
    {
      CantFindItemErrorMessage(a1, "defmodule", v5);
      return 0;
    }

    EnvFocus(a1, Defmodule);
    v7 = __OFSUB__(v3--, 1);
    if ((v3 < 0) ^ v7 | (v3 == 0))
    {
      return 1;
    }
  }

  return result;
}

void configure_symptom_logging(uint64_t a1, void *a2)
{
  v2 = a2;
  if (logHandlesPred != -1)
  {
    configure_symptom_logging_cold_1();
  }

  initializeActivityMeasurements();
  v3 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PrelaunchSequenceInterval", "", buf, 2u);
  }

  markMeasurement(1, 1);
  v4 = measureLaunchXPCHandle();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessLaunch", "Immediately after called into main", buf, 2u);
  }

  v5 = prefs_store_init(0, &__block_literal_global_35);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __configure_symptom_logging_block_invoke_36;
  aBlock[3] = &unk_27898F078;
  v8 = v2;
  v6 = v2;
  prefs_start_monitoring(v5, aBlock);
  sharedPrefsStore = v5;
}

void __configure_symptom_logging_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Initializing os_log handles for all categories...", buf, 2u);
  }

  v0 = os_log_create("com.apple.symptomsd", "netepochs");
  v1 = netepochsLogHandle;
  netepochsLogHandle = v0;

  v2 = os_log_create("com.apple.symptomsd", "scoring");
  v3 = scoringLogHandle;
  scoringLogHandle = v2;

  v4 = os_log_create("com.apple.symptomsd", "rnf");
  v5 = rnfLogHandle;
  rnfLogHandle = v4;

  v6 = os_log_create("com.apple.symptomsd", "bbh");
  v7 = bbhLogHandle;
  bbhLogHandle = v6;

  v8 = os_log_create("com.apple.symptomsd", "noi");
  v9 = noiLogHandle;
  noiLogHandle = v8;

  v10 = os_log_create("com.apple.symptomsd", "proc_state");
  v11 = procStateLogHandle;
  procStateLogHandle = v10;

  v12 = os_log_create("com.apple.symptomsd", "debuggability");
  v13 = debuggabilityLogHandle;
  debuggabilityLogHandle = v12;

  v14 = os_log_create("com.apple.symptomsd", "configuration");
  v15 = configurationLogHandle;
  configurationLogHandle = v14;

  v16 = os_log_create("com.apple.symptomsd", "domaintracking");
  v17 = domainTrackingLogHandle;
  domainTrackingLogHandle = v16;

  v18 = os_log_create("com.apple.symptomsd", "evaluation");
  v19 = evaluationLogHandle;
  evaluationLogHandle = v18;

  v20 = os_log_create("com.apple.symptomsd", "redirect");
  v21 = redirectLogHandle;
  redirectLogHandle = v20;

  v22 = os_log_create("com.apple.symptomsd", "filter");
  v23 = filterLogHandle;
  filterLogHandle = v22;

  v24 = os_log_create("com.apple.symptomsd", "transport");
  v25 = transportLogHandle;
  transportLogHandle = v24;

  v26 = os_log_create("com.apple.symptomsd", "analytics");
  v27 = analyticsLogHandle;
  analyticsLogHandle = v26;

  v28 = os_log_create("com.apple.symptomsd", "attribution");
  v29 = attributionLogHandle;
  attributionLogHandle = v28;

  v30 = os_log_create("com.apple.symptomsd", "flow");
  v31 = flowLogHandle;
  flowLogHandle = v30;

  v32 = os_log_create("com.apple.symptomsd", "flow-scrutiny");
  v33 = flowScrutinyLogHandle;
  flowScrutinyLogHandle = v32;

  v34 = os_log_create("com.apple.symptomsd", "signposts");
  v35 = signpostLogHandle;
  signpostLogHandle = v34;

  v36 = os_log_create("com.apple.symptomsd", "system_settings");
  v37 = systemSettingsLogHandle;
  systemSettingsLogHandle = v36;

  v38 = os_log_create("com.apple.symptomsd", "metrics");
  v39 = metricsLogHandle;
  metricsLogHandle = v38;

  v40 = os_log_create("com.apple.symptomsd", "metricstream");
  v41 = metricStreamLogHandle;
  metricStreamLogHandle = v40;

  v42 = os_log_create("com.apple.symptomsd", "motion");
  v43 = motionLogHandle;
  motionLogHandle = v42;

  v44 = os_log_create("com.apple.symptomsd", "live_link");
  v45 = liveLinkLogHandle;
  liveLinkLogHandle = v44;

  v46 = os_log_create("com.apple.symptomsd", "appexperience");
  v47 = appExperienceLogHandle;
  appExperienceLogHandle = v46;

  v48 = os_log_create("com.apple.symptomsd", "pvar");
  v49 = nwPVarLogHandle;
  nwPVarLogHandle = v48;

  v50 = os_log_create("com.apple.symptomsd", "other");
  v51 = otherLogHandle;
  otherLogHandle = v50;

  v52 = os_log_create("com.apple.symptomsd", "outrank");
  v53 = outrankLogHandle;
  outrankLogHandle = v52;

  v54 = os_log_create("com.apple.symptomsd", "apparent_time");
  v55 = apparentTimeLogHandle;
  apparentTimeLogHandle = v54;

  v56 = os_log_create("com.apple.symptomsd", "autolinkupgrade");
  v57 = aluLogHandle;
  aluLogHandle = v56;

  v58 = os_log_create("com.apple.symptomsd", "rpm");
  v59 = rpmLogHandle;
  rpmLogHandle = v58;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v60 = 0;
    _os_log_impl(&dword_23255B000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Initialized os_log handles for all categories.", v60, 2u);
  }
}

void __configure_symptom_logging_block_invoke_32(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SYMPTOM_CONFIG: prefs callback, prefs = %p\n", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __configure_symptom_logging_block_invoke_36(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __configure_symptom_logging_block_invoke_2;
  v2[3] = &unk_27898C440;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __configure_symptom_logging_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "SYMPTOM_CONFIG: init callback, prefs = %p\n", &v6, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void configure_symptom_evaluator_handling(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    size = 0;
    v5 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Taking embedded default configuration", buf, 2u);
    }

    v6 = getsectiondata(&dword_23255B000, "__TEXT", "evaluator_cfg", &size);
    if (v6)
    {
      v7 = size == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Can't get section data", buf, 2u);
      }

      v10 = 0;
      v3 = 0;
      v9 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v6 length:? freeWhenDone:?];
      v18 = 0;
      v3 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:2 format:0 error:&v18];
      v11 = v18;
      v9 = v11;
      if (!v3)
      {
        v12 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          v14 = [v9 description];
          v15 = [v14 UTF8String];
          *buf = 136315138;
          v21 = v15;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Malformed default symptom plist %s", buf, 0xCu);
        }

        v3 = 0;
      }
    }
  }

  if (!v4)
  {
    v4 = @"MinimalSyndromeHandler";
  }

  [SymptomStore configure:v3];
  v16 = [v3 objectForKey:@"ADDITONAL_HANDLER_ARRAY"];
  [SimpleSyndromeHandler setDefaultNextStage:v4];
  [ConfigurationHandler configureItems:v3];

  v17 = *MEMORY[0x277D85DE8];
}

void configure_symptom_network_diagnostics()
{
  v0 = _os_feature_enabled_impl();
  v1 = configurationLogHandle;
  v2 = os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v2)
    {
      *v3 = 0;
      _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_DEFAULT, "Ready to initialize NDF", v3, 2u);
    }

    +[NDFCoreShim sharedInstance];
  }

  else if (v2)
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_DEFAULT, "NDF is not enabled", buf, 2u);
  }
}

void activate_symptom_evaluator_handling()
{
  v0 = [ManagedEventHandler getHandlerByName:@"startup"];
  [v0 didReceiveSyndrome:0];
}

void configure_analytics_launchpad_for_helper()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"HANDLER_CLASS";
  v3[1] = @"HANDLER_CONFIG";
  v4[0] = @"AnalyticsLaunchpad";
  v4[1] = MEMORY[0x277CBEC10];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [ConfigurationHandler configureItems:v1];

  v2 = *MEMORY[0x277D85DE8];
}

void init_symptom_evaluator_listening(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "com.apple.usymptomsd";
  }

  v2 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "About to start listening on %s", &v4, 0xCu);
  }

  symtrans_main(v1);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t init_managed_event_listening(const char *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "com.apple.symptoms.symptomsd.managed_events";
  }

  return [ManagedEventTransport setListeningPort:v1];
}

_BYTE *CreateCStringFromBitMask(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    CreateCStringFromBitMask_cold_2(&v14);
  }

  v4 = 9 * a2;
  v5 = malloc_type_malloc(9 * a2, 0x9273045DuLL);
  if (!v5)
  {
    CreateCStringFromBitMask_cold_1(&v14);
  }

  v6 = v5;
  bzero(v5, v4);
  if (a2 > 4)
  {
    v7 = 0x8000000000000000;
  }

  else
  {
    v7 = qword_232816F20[a2 - 1];
  }

  v8 = 0;
  v9 = v4 - 1;
  do
  {
    if ((v7 & a1) != 0)
    {
      v10 = 49;
    }

    else
    {
      v10 = 48;
    }

    v11 = v8 + 1;
    v6[v8] = v10;
    if (v8 >= 7 && v11 < v9)
    {
      v12 = v8 + 2;
      if (((v12 - (v11 >> 3)) & 7) == 0)
      {
        v6[v11] = 32;
        v11 = v12;
      }
    }

    v7 >>= 1;
    v8 = v11;
  }

  while (v11 < v9);
  return v6;
}

uint64_t ConstructJoins(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = a4;
  v11 = a3;
  if (a4 == 1)
  {
    if (a3)
    {
      v12 = *(a3 + 200);
      if (v12)
      {
        v13 = 0;
        v14 = a3;
        while (1)
        {
          v15 = v14;
          v14 = v12;
          while (*v14 == 154)
          {
            v16 = *(v14 + 76);
            v17 = *(v15 + 80);
            if (v16 > v17 || *(v15 + 76) > v17)
            {
              break;
            }

            v18 = *(v14 + 80);
            if (v16 == v18)
            {
              goto LABEL_12;
            }

            if (v13)
            {
              v19 = *(v13 + 80);
              if (v19 != v16)
              {
                if (v19 < v16)
                {
                  v27 = *(v15 + 16);
                  if ((v27 & 5) == 0)
                  {
                    if (v19 > v18)
                    {
                      v18 = *(v13 + 80);
                    }

                    *(v15 + 76) = v18;
                    v31 = v27 | 1;
                    goto LABEL_46;
                  }

                  v28 = *(v15 + 16) & 7;
                  if (v28 <= 3)
                  {
                    if (v28 == 1 || v28 == 3)
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    if (v28 == 4)
                    {
                      if (v19 > v18)
                      {
                        v18 = *(v13 + 80);
                      }

                      *(v15 + 76) = v18;
                      v32 = v27 & 0xFFFFFFF8;
LABEL_45:
                      v31 = v32 | 3;
LABEL_46:
                      *(v15 + 16) = v31;
                      v21 = a1;
                      v33 = CombineExpressions(a1, *(v15 + 88), *(v15 + 96));
                      *(v15 + 88) = v33;
                      *(v15 + 88) = CombineExpressions(a1, v33, *(v14 + 88));
                      *(v15 + 96) = 0;
                      goto LABEL_47;
                    }

                    if (v28 == 5 || v28 == 7)
                    {
LABEL_39:
                      v22 = *(v15 + 104);
                      v20 = *(v14 + 88);
                      goto LABEL_40;
                    }
                  }

                  v21 = a1;
                  v29 = a1;
                  v30 = 2;
                }

                else
                {
                  v21 = a1;
                  v29 = a1;
                  v30 = 3;
                }

                goto LABEL_29;
              }

LABEL_12:
              v20 = *(v14 + 88);
              if (*(v15 + 16))
              {
                v22 = *(v15 + 104);
LABEL_40:
                v21 = a1;
                *(v15 + 104) = CombineExpressions(a1, v22, v20);
                goto LABEL_47;
              }

              v21 = a1;
              *(v15 + 88) = CombineExpressions(a1, *(v15 + 88), v20);
              goto LABEL_47;
            }

            v23 = *(v15 + 16);
            if ((v23 & 5) == 0)
            {
              *(v15 + 76) = v18;
              v31 = v23 | 1;
              goto LABEL_46;
            }

            v24 = *(v15 + 16) & 7;
            if (v24 <= 3)
            {
              if (v24 == 1 || v24 == 3)
              {
                goto LABEL_39;
              }

LABEL_33:
              v21 = a1;
              v29 = a1;
              v30 = 1;
LABEL_29:
              SystemError(v29, "RULEBLD", v30);
              EnvExitRouter(v21, 1);
              goto LABEL_47;
            }

            if (v24 == 4)
            {
              *(v15 + 76) = v18;
              v32 = v23 & 0xFFFFFFF8;
              goto LABEL_45;
            }

            if (v24 == 5)
            {
              goto LABEL_39;
            }

            if (v24 != 7)
            {
              goto LABEL_33;
            }

            *(v15 + 76) = v18;
            *(v15 + 16) = v23 & 0xFFFFFFFB;
            v21 = a1;
            v25 = CombineExpressions(a1, *(v15 + 104), *(v15 + 96));
            *(v15 + 104) = v25;
            v26 = CombineExpressions(a1, v25, *(v14 + 88));
            *(v15 + 96) = 0;
            *(v15 + 104) = v26;
LABEL_47:
            *(v14 + 88) = 0;
            v34 = *(v14 + 200);
            *(v14 + 200) = 0;
            *(v15 + 200) = v34;
            *(v15 + 80) = *(v14 + 80);
            ReturnLHSParseNodes(v21, v14);
            v14 = v34;
            if (!v34)
            {
              goto LABEL_51;
            }
          }

          v12 = *(v14 + 200);
          v13 = v15;
          if (!v12)
          {
            goto LABEL_51;
          }
        }
      }

      goto LABEL_52;
    }
  }

  else
  {
LABEL_51:
    if (v11)
    {
LABEL_52:
      v81 = 0;
      v35 = 1;
      v36 = a1;
      v37 = a6;
      v38 = a7;
      v86 = v10;
      while (1)
      {
        v39 = *(v11 + 200);
        v40 = *(v11 + 80);
        if (v40 <= v10)
        {
          v43 = 0;
          v42 = 0;
          if (!v39)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (!v39)
          {
            goto LABEL_57;
          }

          while (1)
          {
            v41 = *(v39 + 80);
            if (v41 <= v10)
            {
              break;
            }

            v39 = *(v39 + 200);
            if (!v39)
            {
              goto LABEL_57;
            }
          }

          v43 = v41 < v10;
          v39 = *(v39 + 200);
          if (!v39)
          {
LABEL_57:
            v42 = 0;
LABEL_60:
            v89 = 1;
            goto LABEL_66;
          }

          if (*v39 == 154 && *(v39 + 76) >= v10)
          {
            v42 = *(v39 + 88);
            v39 = *(v39 + 200);
            if (!v39)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v42 = 0;
          }
        }

        if (v40 < v10)
        {
          goto LABEL_60;
        }

        if (*v39 == 154 && *(v11 + 76) > v10 && *(v39 + 80) < v10)
        {
          v43 = 1;
        }

        v89 = v43;
LABEL_66:
        v44 = *(v11 + 76);
        v85 = v38;
        if (v44 <= v10)
        {
          v48 = v37;
          if (*(v11 + 192))
          {
            v59 = *(v11 + 48);
            v60 = *(v59 + 16);
            v54 = (*(v59 + 48))(v36, v11);
            v53 = 0;
            v51 = *(v11 + 16) >> 1;
            v55 = (v11 + 88);
            v52 = *(v11 + 104);
            v56 = *(v11 + 144);
            v57 = *(v11 + 152);
            v88 = (v60 & 7) << 7;
            v58 = v54;
          }

          else
          {
            v54 = 0;
            v53 = 0;
            v88 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v51 = *(v11 + 16) >> 1;
            v55 = (v11 + 88);
            v52 = *(v11 + 104);
          }

          v47 = a2;
        }

        else
        {
          v45 = *(v11 + 16) >> 2;
          v46 = v36;
          v47 = a2;
          v48 = v37;
          v49 = v42;
          v50 = ConstructJoins(v46, a2, v11, (v86 + 1), a5);
          LOBYTE(v51) = v45;
          v10 = v86;
          v52 = v49;
          v53 = v50;
          v54 = 0;
          v88 = 0;
          v55 = (v11 + 96);
          v56 = *(v11 + 112);
          v57 = *(v11 + 120);
          v58 = v50;
        }

        v61 = *v55;
        v63 = v10 == 1 && v35 == v47;
        if (a5)
        {
          v64 = *(a5 + 112);
        }

        else if (*(v11 + 192))
        {
          if (v54)
          {
            v64 = 0;
            v65 = 0;
            v81 = *(v54 + 16);
            goto LABEL_81;
          }

          v64 = *(v53 + 112);
        }

        else
        {
          v64 = *(*(*(a1 + 48) + 128) + 40);
        }

        v65 = 1;
        if (v48 != 1)
        {
          goto LABEL_88;
        }

LABEL_81:
        v66 = *(v11 + 16) & 1;
        v82 = *v55;
        v83 = v54;
        v67 = a5;
        v68 = v52;
        v69 = v51;
        v70 = v44;
        v71 = v53;
        v72 = v35;
        v73 = v56;
        v74 = v11;
        v75 = v57;
        ShareableJoin = FindShareableJoin(v64, v81, v65, v58, v85, v66, v51 & 1, v63, v61, v52, v56, v57);
        v61 = v82;
        v54 = v83;
        v57 = v75;
        v11 = v74;
        v56 = v73;
        v35 = v72;
        v53 = v71;
        v44 = v70;
        LOBYTE(v51) = v69;
        v10 = v86;
        v52 = v68;
        a5 = v67;
        if (ShareableJoin)
        {
          v77 = ShareableJoin;
          v36 = a1;
          if (EnvGetWatchItem(a1, "compilations") == 1 && GetPrintWhileLoading(a1))
          {
            EnvPrintRouter(a1, "wdialog", "=j");
          }

          v37 = 1;
          a5 = v77;
          if (v89)
          {
            goto LABEL_107;
          }
        }

        else
        {
LABEL_88:
          v78 = *(v11 + 16);
          v36 = a1;
          if (v44 <= v10)
          {
            NewJoin = CreateNewJoin(a1, v61, v52, a5, v54, 0, *(v11 + 16) & 1, v51 & 1, v56, v57);
          }

          else
          {
            NewJoin = CreateNewJoin(a1, v61, v52, a5, v53, 1, *(v11 + 16) & 1, v51 & 1, v56, v57);
          }

          a5 = NewJoin;
          v37 = 0;
          *NewJoin = *NewJoin & 0xFFFFFC7F | v88;
          if (v89)
          {
            goto LABEL_107;
          }
        }

        v38 = 0;
        ++v35;
        v11 = v39;
        if (!v39)
        {
          goto LABEL_107;
        }
      }
    }
  }

  v36 = a1;
  a5 = FindShareableJoin(*(*(*(a1 + 48) + 128) + 40), 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0);
  if (!a5)
  {
    a5 = CreateNewJoin(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  }

LABEL_107:
  if (v10 == 1)
  {
    a5 = CreateNewJoin(v36, 0, 0, a5, 0, 0, 0, 0, 0, 0);
    if (EnvGetWatchItem(v36, "compilations") == 1)
    {
      if (GetPrintWhileLoading(v36))
      {
        EnvPrintRouter(v36, "wdialog", "\n");
      }
    }
  }

  return a5;
}

uint64_t FindShareableJoin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12)
{
  v19 = a1;
  if (a3)
  {
    if (!a1)
    {
      return 0;
    }

    a2 = *(a1 + 8);
  }

  if (a2)
  {
    do
    {
      if (*(a2 + 104) == a4)
      {
        v20 = *a2;
        if ((*a2 & 1) == a5 && (a7 || ((v20 >> 3) & 1) == a6) && ((v20 >> 4) & 1) == a7 && (a8 != 1 || (v20 & 2) != 0 || !BetaMemoryNotEmpty(a2)) && IdenticalExpression(*(a2 + 72), a9) == 1 && IdenticalExpression(*(a2 + 80), a10) == 1 && IdenticalExpression(*(a2 + 88), a11) == 1 && IdenticalExpression(*(a2 + 96), a12) == 1)
        {
          break;
        }
      }

      if (a3)
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          return 0;
        }

        v21 = (v19 + 8);
      }

      else
      {
        v21 = (a2 + 128);
      }

      a2 = *v21;
    }

    while (*v21);
  }

  return a2;
}

char *CreateNewJoin(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned __int16 *a9, unsigned __int16 *a10)
{
  if (EnvGetWatchItem(a1, "compilations") == 1 && GetPrintWhileLoading(a1))
  {
    EnvPrintRouter(a1, "wdialog", "+j");
  }

  v17 = *(a1 + 48);
  v18 = *(v17 + 472);
  v19 = *(*(v18 + 40) + 1152);
  if (v19)
  {
    *(v18 + 32) = v19;
    *(*(*(v17 + 472) + 40) + 1152) = **(*(v17 + 472) + 32);
    v20 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v20 = genalloc(a1, 0x90uLL);
  }

  v21 = a7;
  v22 = a7 | a6 | a8;
  if (a4 || v22)
  {
    v80 = a5;
    v23 = *(a1 + 48);
    v24 = *(v23 + 472);
    v25 = *(*(v24 + 40) + 256);
    v26 = a2;
    v27 = a3;
    if (a9)
    {
      if (v25)
      {
        *(v24 + 32) = v25;
        *(*(*(v23 + 472) + 40) + 256) = **(*(v23 + 472) + 32);
        v28 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v28 = genalloc(a1, 0x20uLL);
      }

      *(v20 + 7) = v28;
      v30 = (v20 + 56);
      v31 = genalloc(a1, 0x88uLL);
      *(*(v20 + 7) + 16) = v31;
      v31[16] = 0;
      *(v31 + 6) = 0u;
      *(v31 + 7) = 0u;
      *(v31 + 4) = 0u;
      *(v31 + 5) = 0u;
      *(v31 + 2) = 0u;
      *(v31 + 3) = 0u;
      v32 = 17;
      *v31 = 0u;
      *(v31 + 1) = 0u;
    }

    else
    {
      if (v25)
      {
        *(v24 + 32) = v25;
        *(*(*(v23 + 472) + 40) + 256) = **(*(v23 + 472) + 32);
        v29 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v29 = genalloc(a1, 0x20uLL);
      }

      *(v20 + 7) = v29;
      v30 = (v20 + 56);
      v33 = genalloc(a1, 8uLL);
      *(*(v20 + 7) + 16) = v33;
      *v33 = 0;
      v32 = 1;
    }

    v34 = *v30;
    v34[3] = 0;
    *v34 = v32;
    v34[1] = 0;
    a3 = v27;
    a2 = v26;
    a5 = v80;
    if (!a4 && v22)
    {
      CreateEmptyPartialMatch(a1);
      **(*(v20 + 7) + 16) = v35;
      v36 = *(v20 + 7);
      *(**(v36 + 16) + 16) = v20;
      *(v36 + 8) = 1;
    }
  }

  else
  {
    *(v20 + 7) = 0;
  }

  if (a6)
  {
    v37 = *(a1 + 48);
    v38 = *(v37 + 472);
    v39 = *(*(v38 + 40) + 256);
    if (a9)
    {
      if (v39)
      {
        *(v38 + 32) = v39;
        *(*(*(v37 + 472) + 40) + 256) = **(*(v37 + 472) + 32);
        v40 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v40 = genalloc(a1, 0x20uLL);
      }

      *(v20 + 8) = v40;
      *(*(v20 + 8) + 16) = genalloc(a1, 0x88uLL);
      v42 = genalloc(a1, 0x88uLL);
      v43 = *(v20 + 8);
      *(v43 + 24) = v42;
      v44 = *(v43 + 16);
      *v44 = 0u;
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0u;
      *(v44 + 48) = 0u;
      *(v44 + 64) = 0u;
      *(v44 + 80) = 0u;
      *(v44 + 96) = 0u;
      *(v44 + 112) = 0u;
      *(v44 + 128) = 0;
      v45 = *(*(v20 + 8) + 24);
      *(v45 + 128) = 0;
      *(v45 + 96) = 0u;
      *(v45 + 112) = 0u;
      *(v45 + 64) = 0u;
      *(v45 + 80) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 0u;
      *v45 = 0u;
      *(v45 + 16) = 0u;
      v46 = *(v20 + 8);
      v47 = xmmword_232816A90;
    }

    else
    {
      if (v39)
      {
        *(v38 + 32) = v39;
        *(*(*(v37 + 472) + 40) + 256) = **(*(v37 + 472) + 32);
        v41 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v41 = genalloc(a1, 0x20uLL);
      }

      *(v20 + 8) = v41;
      *(*(v20 + 8) + 16) = genalloc(a1, 8uLL);
      v52 = genalloc(a1, 8uLL);
      v53 = *(v20 + 8);
      *(v53 + 24) = v52;
      **(v53 + 16) = 0;
      **(*(v20 + 8) + 24) = 0;
      v46 = *(v20 + 8);
      v47 = xmmword_232816AA0;
    }
  }

  else
  {
    if (a5)
    {
      *(v20 + 8) = 0;
      goto LABEL_39;
    }

    v48 = *(a1 + 48);
    v49 = *(v48 + 472);
    v50 = *(*(v49 + 40) + 256);
    if (v50)
    {
      *(v49 + 32) = v50;
      *(*(*(v48 + 472) + 40) + 256) = **(*(v48 + 472) + 32);
      v51 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v51 = genalloc(a1, 0x20uLL);
    }

    *(v20 + 8) = v51;
    *(*(v20 + 8) + 16) = genalloc(a1, 8uLL);
    *(*(v20 + 8) + 24) = genalloc(a1, 8uLL);
    CreateEmptyPartialMatch(a1);
    **(*(v20 + 8) + 16) = v54;
    v55 = *(*(v20 + 8) + 16);
    *(*v55 + 16) = v20;
    **v55 |= 4u;
    **(*(v20 + 8) + 24) = **(*(v20 + 8) + 16);
    v46 = *(v20 + 8);
    v47 = vdupq_n_s64(1uLL);
  }

  *v46 = v47;
LABEL_39:
  *(v20 + 14) = 0;
  v56 = *v20 & 0xFFFFFFF3 | (4 * (a6 & 1)) & 0xF7 | (8 * (v21 & 1));
  if (a8)
  {
    v56 = *v20 & 0xFFFFFFF3 | (4 * (a6 & 1)) & 0xF7;
  }

  *v20 = v56 & 0xFFFFFFAF | (16 * (a8 & 1));
  *v20 = *v20 & 0xFFFFFFDD | (32 * (EnvGetIncrementalReset(a1) & 1));
  *(v20 + 17) = 0;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 6) = 0;
  *(v20 + 9) = AddHashedExpression(a1, a2);
  *(v20 + 10) = AddHashedExpression(a1, a3);
  *(v20 + 11) = AddHashedExpression(a1, a9);
  *(v20 + 12) = AddHashedExpression(a1, a10);
  *(v20 + 15) = a4;
  v57 = *v20;
  if (a4)
  {
    *v20 = v57 & 0xFFFFFFFE;
    *v20 = (*a4 + 1024) & 0x3FFFC00 | v57 & 0xFC0003FE;
    v58 = *(a1 + 48);
    v59 = *(v58 + 472);
    v60 = *(*(v59 + 40) + 256);
    if (v60)
    {
      *(v59 + 32) = v60;
      *(*(*(v58 + 472) + 40) + 256) = **(*(v58 + 472) + 32);
      v61 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v61 = genalloc(a1, 0x20uLL);
    }

    v61[1] = v20;
    *v61 = 0;
    v62 = *(a4 + 112);
    if (a6 && v62)
    {
      v61[2] = *(v62 + 16);
      *(v62 + 16) = v61;
    }

    else
    {
      v61[2] = v62;
      *(a4 + 112) = v61;
    }
  }

  else
  {
    *v20 = v57 & 0xFC0003FE | 0x401;
  }

  *(v20 + 13) = a5;
  v63 = *v20;
  if (!a5)
  {
    if (v63)
    {
      v69 = *(a1 + 48);
      v70 = *(v69 + 472);
      v71 = *(*(v70 + 40) + 256);
      if (v71)
      {
        *(v70 + 32) = v71;
        *(*(*(v69 + 472) + 40) + 256) = **(*(v69 + 472) + 32);
        v72 = *(a1 + 48);
        v73 = *(*(v72 + 472) + 32);
      }

      else
      {
        v73 = genalloc(a1, 0x20uLL);
        v72 = *(a1 + 48);
      }

      v73[1] = v20;
      *v73 = 1;
      v73[2] = *(*(v72 + 128) + 40);
      *(*(v72 + 128) + 40) = v73;
    }

    goto LABEL_69;
  }

  if ((v63 & 1) != 0 && (v63 & 0xC) != 0 && (v63 & 0x10) == 0)
  {
    v64 = *(a1 + 48);
    v65 = *(v64 + 472);
    v66 = *(*(v65 + 40) + 256);
    if (v66)
    {
      *(v65 + 32) = v66;
      *(*(*(v64 + 472) + 40) + 256) = **(*(v64 + 472) + 32);
      v67 = *(a1 + 48);
      v68 = *(*(v67 + 472) + 32);
    }

    else
    {
      v68 = genalloc(a1, 0x20uLL);
      v67 = *(a1 + 48);
    }

    v68[1] = v20;
    *v68 = 0;
    v68[2] = *(*(v67 + 128) + 48);
    *(*(v67 + 128) + 48) = v68;
  }

  if (a6)
  {
    v74 = *(a1 + 48);
    v75 = *(v74 + 472);
    v76 = *(*(v75 + 40) + 256);
    if (v76)
    {
      *(v75 + 32) = v76;
      *(*(*(v74 + 472) + 40) + 256) = **(*(v74 + 472) + 32);
      v77 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v77 = genalloc(a1, 0x20uLL);
    }

    *v77 = 1;
    v78 = *(a5 + 112);
    v77[1] = v20;
    v77[2] = v78;
    *(a5 + 112) = v77;
LABEL_69:
    *(v20 + 16) = 0;
    return v20;
  }

  *(v20 + 16) = *(a5 + 16);
  *(a5 + 16) = v20;
  return v20;
}

uint64_t AWDSymptomsNetworkTCPFlowThroughputEstimatorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v22 = PBReaderReadString();
        v23 = 16;
LABEL_37:
        v24 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_57;
      }

      if (v13 == 4)
      {
        v22 = PBReaderReadString();
        v23 = 40;
        goto LABEL_37;
      }

      if (v13 != 5)
      {
        goto LABEL_47;
      }

      v14 = objc_alloc_init(AWDSymptomsNetworkTCPFlowThroughputEvent);
      [a1 addFlowThroughputEvent:v14];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !AWDSymptomsNetworkTCPFlowThroughputEventReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_57:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v28 = [a2 position] + 1;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v27 |= (v34[0] & 0x7F) << v25;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v11 = v26++ >= 9;
        if (v11)
        {
          v31 = 0;
          goto LABEL_52;
        }
      }

      if ([a2 hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v27;
      }

LABEL_52:
      *(a1 + 8) = v31;
      goto LABEL_57;
    }

    if (v13 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v34[0] & 0x7F) << v15;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_56;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_56:
      *(a1 + 32) = v21;
      goto LABEL_57;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_57;
  }

  return [a2 hasError] ^ 1;
}

uint64_t GenericDispatch(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6)
{
  memset(v47, 0, sizeof(v47));
  *(a6 + 8) = 2;
  result = EnvFalseSymbol(a1);
  *(a6 + 16) = result;
  v13 = a1[6];
  v14 = *(v13 + 352);
  *(v14 + 8) = 0;
  if (!*(v14 + 12))
  {
    v15 = *(v13 + 440);
    v16 = *(v15 + 112);
    v42[0] = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    v42[1] = v16;
    *(v15 + 112) = v42;
    v40 = ExecutingConstruct(a1);
    SetExecutingConstruct(a1, 1);
    v17 = a1[6];
    v18 = *(v17 + 216);
    v19 = *(v18 + 136);
    v20 = *(v18 + 144);
    *(v18 + 136) = a2;
    ++*(*(v17 + 352) + 16);
    ++*(a2 + 48);
    v21 = CountArguments(a5);
    DefruleName = EnvGetDefruleName(a1, a2);
    PushProcParameters(a1, a5, v21, DefruleName, "generic function", UnboundMethodErr);
    v23 = a1[6];
    if (*(*(v23 + 352) + 8))
    {
      v24 = v23 + 352;
      --*(a2 + 48);
      *(*(v23 + 216) + 136) = v19;
      *(*(v23 + 216) + 144) = v20;
    }

    else
    {
      if (a4)
      {
        if (IsMethodApplicable(a1, a4))
        {
          ++*(a4 + 1);
          v25 = a1[6];
          *(v25[27] + 144) = a4;
        }

        else
        {
          PrintErrorID(a1, "GENRCEXE", 4, 0);
          SetEvaluationError(a1, 1);
          *(*(a1[6] + 216) + 144) = 0;
          EnvPrintRouter(a1, "werror", "Generic function ");
          v27 = EnvGetDefruleName(a1, a2);
          EnvPrintRouter(a1, "werror", v27);
          EnvPrintRouter(a1, "werror", " method #");
          PrintLongInteger(a1, "werror", *a4, v28, v29, v30, v31, v32);
          EnvPrintRouter(a1, "werror", " is not applicable to the given arguments.\n");
          v25 = a1[6];
        }
      }

      else
      {
        ApplicableMethod = FindApplicableMethod(a1, a2, a3);
        v25 = a1[6];
        *(v25[27] + 144) = ApplicableMethod;
      }

      v33 = v25[27];
      v34 = *(v33 + 144);
      if (v34)
      {
        if (*(*(v33 + 136) + 52))
        {
          WatchGeneric(a1, ">>");
          v25 = a1[6];
          v34 = *(v25[27] + 144);
        }

        v35 = *(v34 + 16);
        if ((v35 & 2) != 0)
        {
          WatchMethod(a1, ">>");
          v25 = a1[6];
          v34 = *(v25[27] + 144);
          v35 = *(v34 + 16);
        }

        if (v35)
        {
          v41[1] = *(*(v34 + 32) + 8);
          v41[0] = 30;
          v41[3] = 0;
          v41[2] = GetProcParamExpressions(a1);
          EvaluateExpression(a1, v41, a6);
        }

        else
        {
          StartProfile(a1, v47, (v34 + 48), *(v25[15] + 72));
          EvaluateProcActions(a1, **(*(*(a1[6] + 216) + 136) + 16), *(*(*(a1[6] + 216) + 144) + 32), *(*(*(a1[6] + 216) + 144) + 14), a6, UnboundMethodErr);
          EndProfile(a1, v47);
        }

        v37 = *(a1[6] + 216);
        v38 = *(v37 + 144);
        --*(v38 + 4);
        if ((*(v38 + 16) & 2) != 0)
        {
          WatchMethod(a1, "<<");
          v37 = *(a1[6] + 216);
        }

        if (*(*(v37 + 136) + 52))
        {
          WatchGeneric(a1, "<<");
        }
      }

      else if (!*(v25[44] + 8))
      {
        PrintErrorID(a1, "GENRCEXE", 1, 0);
        EnvPrintRouter(a1, "werror", "No applicable methods for ");
        v36 = EnvGetDefruleName(a1, a2);
        EnvPrintRouter(a1, "werror", v36);
        EnvPrintRouter(a1, "werror", ".\n");
        SetEvaluationError(a1, 1);
      }

      --*(a2 + 48);
      **(a1[6] + 104) = 0;
      PopProcParameters(a1);
      v39 = a1[6];
      *(*(v39 + 216) + 136) = v19;
      *(*(v39 + 216) + 144) = v20;
      v24 = v39 + 352;
    }

    --*(*v24 + 16);
    RestorePriorGarbageFrame(a1, v42, v16, a6);
    CallPeriodicTasks(a1);
    return SetExecutingConstruct(a1, v40);
  }

  return result;
}

uint64_t UnboundMethodErr(uint64_t a1)
{
  EnvPrintRouter(a1, "werror", "generic function ");
  DefruleName = EnvGetDefruleName(a1, *(*(*(a1 + 48) + 216) + 136));
  EnvPrintRouter(a1, "werror", DefruleName);
  EnvPrintRouter(a1, "werror", " method #");
  PrintLongInteger(a1, "werror", **(*(*(a1 + 48) + 216) + 144), v3, v4, v5, v6, v7);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t IsMethodApplicable(uint64_t a1, uint64_t a2)
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 48) + 296);
  v3 = *(v2 + 16);
  v4 = *(a2 + 10);
  if (v3 < v4 || v3 > v4 && *(a2 + 12) != -1)
  {
    return 0;
  }

  if (v3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 24) + 24 * v8;
      v11 = *(v10 + 16);
      if (*(v10 + 16))
      {
        if (v11 < 1 || (v12 = *(*(v2 + 8) + 48 * v9 + 8), v13 = *(**v10 + 24), v12 == v13))
        {
          LOWORD(v14) = 0;
        }

        else
        {
          v15 = 1;
          while (1)
          {
            v14 = v15;
            if (SubsumeType(v12, v13))
            {
              break;
            }

            if (v14 < *(v10 + 16))
            {
              v13 = *(*(*v10 + 8 * v14) + 24);
              v15 = v14 + 1;
              if (v12 != v13)
              {
                continue;
              }
            }

            goto LABEL_17;
          }

          LOWORD(v14) = v14 - 1;
LABEL_17:
          LOWORD(v11) = *(v10 + 16);
        }

        if (v14 == v11)
        {
          return 0;
        }
      }

      v16 = *(v10 + 8);
      if (v16)
      {
        *(*(*(a1 + 48) + 216) + 152) = *(*(*(a1 + 48) + 296) + 8) + 48 * v9;
        EvaluateExpression(a1, v16, &v18);
        if (WORD4(v18) == 2)
        {
          v17 = v19;
          if (v17 == EnvFalseSymbol(a1))
          {
            return 0;
          }
        }
      }

      if (*(a2 + 8) - 1 != v8)
      {
        ++v8;
      }

      ++v9;
      v2 = *(*(a1 + 48) + 296);
      if (*(v2 + 16) <= v9)
      {
        return 1;
      }
    }
  }

  return 1;
}

unint64_t FindApplicableMethod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3 + 56;
    v6 = *(a2 + 56);
  }

  else
  {
    v6 = *(a2 + 56);
    v5 = v6;
  }

  if (v5 >= v6 + 56 * *(a2 + 64))
  {
    return 0;
  }

  while (1)
  {
    ++*(v5 + 4);
    if (IsMethodApplicable(a1, v5))
    {
      break;
    }

    --*(v5 + 4);
    v5 += 56;
    if (v5 >= *(a2 + 56) + 56 * *(a2 + 64))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t WatchGeneric(uint64_t a1, char *a2)
{
  EnvPrintRouter(a1, "wtrace", "GNC ");
  EnvPrintRouter(a1, "wtrace", a2);
  EnvPrintRouter(a1, "wtrace", " ");
  v4 = **(*(*(*(a1 + 48) + 216) + 136) + 16);
  if (v4 != EnvGetCurrentModule(a1))
  {
    ConstructNameString = EnvGetConstructNameString(a1, **(*(*(*(a1 + 48) + 216) + 136) + 16));
    EnvPrintRouter(a1, "wtrace", ConstructNameString);
    EnvPrintRouter(a1, "wtrace", "::");
  }

  EnvPrintRouter(a1, "wtrace", *(**(*(*(a1 + 48) + 216) + 136) + 24));
  EnvPrintRouter(a1, "wtrace", " ");
  EnvPrintRouter(a1, "wtrace", " ED:");
  PrintLongInteger(a1, "wtrace", *(*(*(a1 + 48) + 352) + 16), v6, v7, v8, v9, v10);

  return PrintProcParamArray(a1, "wtrace");
}

uint64_t WatchMethod(uint64_t a1, char *a2)
{
  EnvPrintRouter(a1, "wtrace", "MTH ");
  EnvPrintRouter(a1, "wtrace", a2);
  EnvPrintRouter(a1, "wtrace", " ");
  v4 = **(*(*(*(a1 + 48) + 216) + 136) + 16);
  if (v4 != EnvGetCurrentModule(a1))
  {
    ConstructNameString = EnvGetConstructNameString(a1, **(*(*(*(a1 + 48) + 216) + 136) + 16));
    EnvPrintRouter(a1, "wtrace", ConstructNameString);
    EnvPrintRouter(a1, "wtrace", "::");
  }

  EnvPrintRouter(a1, "wtrace", *(**(*(*(a1 + 48) + 216) + 136) + 24));
  EnvPrintRouter(a1, "wtrace", ":#");
  v11 = *(*(*(a1 + 48) + 216) + 144);
  if (v11[8])
  {
    EnvPrintRouter(a1, "wtrace", "SYS");
    v11 = *(*(*(a1 + 48) + 216) + 144);
  }

  PrintLongInteger(a1, "wtrace", *v11, v6, v7, v8, v9, v10);
  EnvPrintRouter(a1, "wtrace", " ");
  EnvPrintRouter(a1, "wtrace", " ED:");
  PrintLongInteger(a1, "wtrace", *(*(*(a1 + 48) + 352) + 16), v12, v13, v14, v15, v16);

  return PrintProcParamArray(a1, "wtrace");
}

unint64_t NextMethodP(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 216);
  v2 = *(v1 + 144);
  if (!v2)
  {
    return 0;
  }

  result = FindApplicableMethod(a1, *(v1 + 136), v2);
  if (result)
  {
    --*(result + 4);
    return 1;
  }

  return result;
}

void CallNextMethod(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  v4 = *(a1 + 48);
  if (!*(*(v4 + 352) + 12))
  {
    v5 = *(v4 + 216);
    v6 = *(v5 + 144);
    if (v6 && (ApplicableMethod = FindApplicableMethod(a1, *(v5 + 136), *(v5 + 144)), v8 = *(a1 + 48), *(*(v8 + 216) + 144) = ApplicableMethod, v5 = *(v8 + 216), (v9 = *(v5 + 144)) != 0))
    {
      v10 = *(v9 + 16);
      if ((v10 & 2) != 0)
      {
        WatchMethod(a1, ">>");
        v8 = *(a1 + 48);
        v5 = *(v8 + 216);
        v9 = *(v5 + 144);
        v10 = *(v9 + 16);
      }

      if (v10)
      {
        v14[1] = *(*(v9 + 32) + 8);
        v14[0] = 30;
        v14[3] = 0;
        v14[2] = GetProcParamExpressions(a1);
        EvaluateExpression(a1, v14, a2);
      }

      else
      {
        StartProfile(a1, v15, (*(v5 + 136) + 40), *(*(v8 + 120) + 72));
        EvaluateProcActions(a1, **(*(*(*(a1 + 48) + 216) + 136) + 16), *(*(*(*(a1 + 48) + 216) + 144) + 32), *(*(*(*(a1 + 48) + 216) + 144) + 14), a2, UnboundMethodErr);
        EndProfile(a1, v15);
      }

      v11 = *(a1 + 48);
      v12 = *(v11 + 216);
      v13 = *(v12 + 144);
      --*(v13 + 4);
      if ((*(v13 + 16) & 2) != 0)
      {
        WatchMethod(a1, "<<");
        v11 = *(a1 + 48);
        v12 = *(v11 + 216);
      }

      *(v12 + 144) = v6;
      **(v11 + 104) = 0;
    }

    else
    {
      *(v5 + 144) = v6;
      PrintErrorID(a1, "GENRCEXE", 2, 0);
      EnvPrintRouter(a1, "werror", "Shadowed methods not applicable in current context.\n");

      SetEvaluationError(a1, 1);
    }
  }
}

uint64_t CallSpecificMethod(void *a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgTypeCheck(a1, "call-specific-method", 1, 2, &v8);
  if (result)
  {
    result = CheckGenericExists(a1, "call-specific-method", *(v9 + 24));
    if (result)
    {
      v5 = result;
      result = EnvArgTypeCheck(a1, "call-specific-method", 2, 1, &v8);
      if (result)
      {
        result = CheckMethodExists(a1, "call-specific-method", v5, *(v9 + 24));
        if (result != -1)
        {
          v6 = 56 * result;
          v7 = *(v5 + 56) + 56 * result;
          ++*(v7 + 4);
          result = GenericDispatch(a1, v5, 0, v7, *(*(*(**(a1[6] + 352) + 16) + 24) + 24), a2);
          --*(*(v5 + 56) + v6 + 4);
        }
      }
    }
  }

  return result;
}

uint64_t OverrideNextMethod(void *a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  result = EnvFalseSymbol(a1);
  *(a2 + 16) = result;
  v5 = a1[6];
  v6 = *(v5 + 352);
  if (!v6[3])
  {
    v7 = *(v5 + 216);
    v8 = *(v7 + 144);
    if (v8)
    {
      v9 = *(v7 + 136);
      v10 = *(*v6 + 16);

      return GenericDispatch(a1, v9, v8, 0, v10, a2);
    }

    else
    {
      PrintErrorID(a1, "GENRCEXE", 2, 0);
      EnvPrintRouter(a1, "werror", "Shadowed methods not applicable in current context.\n");

      return SetEvaluationError(a1, 1);
    }
  }

  return result;
}

__n128 GetGenericCurrentArgument(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(*(v2 + 216) + 152);
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 16) = *(v3 + 16);
  result = *(*(*(v2 + 216) + 152) + 24);
  *(a2 + 24) = result;
  return result;
}

void *AllocateDefgenericModule(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 192);
  if (!v3)
  {
    return genalloc(a1, 0x18uLL);
  }

  *(v2 + 32) = v3;
  *(*(*(v1 + 472) + 40) + 192) = **(*(v1 + 472) + 32);
  return *(*(*(a1 + 48) + 472) + 32);
}

uint64_t FreeDefgenericModule(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 216));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
  *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
  return result;
}

uint64_t ClearDefmethods(uint64_t a1)
{
  if (Bloaded(a1) == 1)
  {
    return 0;
  }

  NextDefgeneric = EnvGetNextDefgeneric(a1, 0);
  if (!NextDefgeneric)
  {
    return 1;
  }

  v4 = NextDefgeneric;
  LODWORD(v2) = 1;
  do
  {
    if (RemoveAllExplicitMethods(a1, v4))
    {
      v2 = v2;
    }

    else
    {
      v2 = 0;
    }

    v4 = EnvGetNextDefgeneric(a1, v4);
  }

  while (v4);
  return v2;
}

uint64_t RemoveAllExplicitMethods(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 64);
  if (v4 < 1)
  {
    goto LABEL_20;
  }

  v6 = (*(a2 + 56) + 4);
  do
  {
    v7 = *v6;
    v6 += 14;
    if (v7)
    {
      return 0;
    }

    --v4;
  }

  while (v4);
  v8 = 0;
  v9 = 0;
  v10 = 16;
  do
  {
    v11 = (*(a2 + 56) + v10);
    v13 = *v11;
    v12 = (v11 - 16);
    if (v13)
    {
      ++v8;
    }

    else
    {
      DeleteMethodInfo(a1, a2, v12);
      v5 = *(a2 + 64);
    }

    ++v9;
    v10 += 56;
  }

  while (v9 < v5);
  if (!v8)
  {
    v4 = v5;
LABEL_20:
    if (v5)
    {
      rm(a1, *(a2 + 56), 56 * v4);
    }

    *(a2 + 64) = 0;
    *(a2 + 56) = 0;
    return 1;
  }

  v14 = gm2(a1, 56 * v8);
  v15 = v14;
  v16 = *(a2 + 64);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = (*(a2 + 56) + v17);
      if (v20[1])
      {
        v16 = &v14[7 * v18++];
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        *(v16 + 48) = *(v20 + 6);
        *(v16 + 16) = v22;
        *(v16 + 32) = v23;
        *v16 = v21;
        LOWORD(v16) = *(a2 + 64);
      }

      ++v19;
      v17 += 56;
    }

    while (v19 < v16);
    v16 = v16;
  }

  rm(a1, *(a2 + 56), 56 * v16);
  *(a2 + 64) = v8;
  *(a2 + 56) = v15;
  return 1;
}

uint64_t MethodsExecuting(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = (*(a1 + 56) + 4);
  while (1)
  {
    v3 = *v2;
    v2 += 14;
    if (v3)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DeleteMethodInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 216) + 160) = *(a2 + 48);
  ExpressionDeinstall(a1, *(a3 + 32));
  ReturnPackedExpression(a1, *(a3 + 32));
  result = ClearUserDataList(a1, *(a3 + 48));
  v7 = *(a3 + 40);
  if (v7)
  {
    v8 = strlen(*(a3 + 40));
    result = rm(a1, v7, v8 + 1);
  }

  LODWORD(v9) = *(a3 + 8);
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(a3 + 24) + 24 * v10;
      LODWORD(v12) = *(v11 + 16);
      if (v12 >= 1)
      {
        v13 = 0;
        do
        {
          DecrementIntegerCount(a1, *(*v11 + 8 * v13++));
          v12 = *(v11 + 16);
        }

        while (v13 < v12);
      }

      if (*v11)
      {
        rm(a1, *v11, 8 * v12);
      }

      ExpressionDeinstall(a1, *(v11 + 8));
      result = ReturnPackedExpression(a1, *(v11 + 8));
      ++v10;
      v9 = *(a3 + 8);
    }

    while (v10 < v9);
  }

  v14 = *(a3 + 24);
  if (v14)
  {
    result = rm(a1, v14, 24 * v9);
  }

  *(a2 + 48) = *(*(*(a1 + 48) + 216) + 160);
  return result;
}

uint64_t RemoveDefgeneric(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 < 1)
  {
    v7 = *(a2 + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      DeleteMethodInfo(a1, a2, *(a2 + 56) + v5);
      ++v6;
      v7 = *(a2 + 64);
      v5 += 56;
    }

    while (v6 < v7);
    LOWORD(v4) = *(a2 + 64);
  }

  if (v4)
  {
    rm(a1, *(a2 + 56), 56 * v7);
  }

  DefgenericNamePointer = GetDefgenericNamePointer(a2);
  DecrementSymbolCount(a1, DefgenericNamePointer);
  EnvSetDefgenericPPForm(a1, a2, 0);
  result = ClearUserDataList(a1, *(a2 + 40));
  v10 = *(a1 + 48);
  *(*(v10 + 472) + 32) = a2;
  **(*(v10 + 472) + 32) = *(*(*(v10 + 472) + 40) + 576);
  *(*(*(v10 + 472) + 40) + 576) = *(*(v10 + 472) + 32);
  return result;
}

uint64_t ClearDefgenerics(uint64_t a1)
{
  if (Bloaded(a1) == 1)
  {
    return 0;
  }

  NextDefgeneric = EnvGetNextDefgeneric(a1, 0);
  if (!NextDefgeneric)
  {
    return 1;
  }

  v4 = NextDefgeneric;
  v2 = 1;
  do
  {
    v5 = EnvGetNextDefgeneric(a1, v4);
    if (RemoveAllExplicitMethods(a1, v4))
    {
      RemoveConstructFromModule(a1, v4);
      RemoveDefgeneric(a1, v4);
    }

    else
    {
      DefruleName = EnvGetDefruleName(a1, v4);
      CantDeleteItemErrorMessage(a1, "generic function", DefruleName);
      v2 = 0;
    }

    v4 = v5;
  }

  while (v5);
  return v2;
}

uint64_t MethodAlterError(uint64_t a1, uint64_t a2)
{
  PrintErrorID(a1, "GENRCFUN", 1, 0);
  EnvPrintRouter(a1, "werror", "Defgeneric ");
  DefruleName = EnvGetDefruleName(a1, a2);
  EnvPrintRouter(a1, "werror", DefruleName);

  return EnvPrintRouter(a1, "werror", " cannot be modified while one of its methods is executing.\n");
}

uint64_t DestroyMethodInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ReturnPackedExpression(a1, *(a3 + 32));
  result = ClearUserDataList(a1, *(a3 + 48));
  v6 = *(a3 + 40);
  if (v6)
  {
    v7 = strlen(*(a3 + 40));
    result = rm(a1, v6, v7 + 1);
  }

  LODWORD(v8) = *(a3 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a3 + 24);
      v12 = *(v11 + v9);
      if (v12)
      {
        rm(a1, v12, 8 * *(v11 + v9 + 16));
      }

      result = ReturnPackedExpression(a1, *(v11 + v9 + 8));
      ++v10;
      v8 = *(a3 + 8);
      v9 += 24;
    }

    while (v10 < v8);
  }

  v13 = *(a3 + 24);
  if (v13)
  {

    return rm(a1, v13, 24 * v8);
  }

  return result;
}

BOOL SubsumeType(unsigned int a1, int a2)
{
  if ((a2 - 9) < 2 || a1 <= 1 && a2 == 11 || a2 == 12 && (a1 & 0xFFFFFFFE) == 2 || a2 == 13 && a1 - 5 < 3)
  {
    return 1;
  }

  return a2 == 12 && a1 - 7 < 2;
}

uint64_t FindMethodByIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2 < 1)
  {
    return -1;
  }

  result = 0;
  v5 = *(a1 + 56);
  while (1)
  {
    v6 = *v5;
    v5 += 28;
    if (v6 == a2)
    {
      break;
    }

    if (v2 == ++result)
    {
      return -1;
    }
  }

  return result;
}

char *PrintMethod(uint64_t a1, char *__dst, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  *__dst = 0;
  if (*(a4 + 16))
  {
    genstrncpy(__dst, "SYS", __n);
  }

  gensprintf(__s2, "%-2d ", __n, a4, a5, a6, a7, a8, *a4);
  result = genstrncat(__dst, __s2, __n - 3);
  v13 = *(a4 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(a4 + 24) + 24 * i;
      if (v13 - 1 == i && *(a4 + 12) == -1)
      {
        if (!*(v15 + 16) && !*(v15 + 8))
        {
          v27 = strlen(__dst);
          result = genstrncat(__dst, "$?", __n - v27);
          break;
        }

        v16 = "($? ";
      }

      else
      {
        v16 = "(";
      }

      v17 = strlen(__dst);
      genstrncat(__dst, v16, __n - v17);
      v18 = *(v15 + 16);
      if (v18 >= 1)
      {
        v19 = 0;
        do
        {
          v20 = TypeName(a1, *(*(*v15 + 8 * v19) + 24));
          v21 = strlen(__dst);
          genstrncat(__dst, v20, __n - v21);
          v18 = *(v15 + 16);
          if (v18 - 1 > v19)
          {
            v22 = strlen(__dst);
            genstrncat(__dst, " ", __n - v22);
            LOWORD(v18) = *(v15 + 16);
          }

          ++v19;
        }

        while (v19 < v18);
      }

      if (*(v15 + 8))
      {
        if (v18)
        {
          v23 = strlen(__dst);
          genstrncat(__dst, " ", __n - v23);
        }

        v24 = strlen(__dst);
        genstrncat(__dst, "<qry>", __n - v24);
      }

      v25 = strlen(__dst);
      result = genstrncat(__dst, ")", __n - v25);
      v13 = *(a4 + 8);
      if (v13 - 1 != i)
      {
        v26 = strlen(__dst);
        result = genstrncat(__dst, " ", __n - v26);
        LOWORD(v13) = *(a4 + 8);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

const char *TypeName(uint64_t a1, unsigned int a2)
{
  if (a2 < 0xF)
  {
    return off_27898F100[a2];
  }

  PrintErrorID(a1, "INSCOM", 1, 0);
  EnvPrintRouter(a1, "werror", "Undefined type in function type.\n");
  SetEvaluationError(a1, 1);
  return "<UNKNOWN-TYPE>";
}

uint64_t PreviewGeneric(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  *(*(*(a1 + 48) + 352) + 8) = 0;
  result = EnvArgTypeCheck(a1, "preview-generic", 1, 2, &v25);
  if (result)
  {
    v3 = LookupDefgenericByMdlOrScope(a1, *(v26 + 24));
    if (v3)
    {
      v4 = v3;
      v5 = ExecutingConstruct(a1);
      SetExecutingConstruct(a1, 1);
      v6 = *(a1 + 48);
      v7 = *(v6 + 216);
      v8 = *(v7 + 136);
      *(v7 + 136) = v4;
      v9 = *(v6 + 352);
      ++v9[4];
      v10 = *(*(*v9 + 16) + 24);
      v11 = CountArguments(v10);
      DefruleName = EnvGetDefruleName(a1, v4);
      PushProcParameters(a1, v10, v11, DefruleName, "generic function", UnboundMethodErr);
      if (!*(*(*(a1 + 48) + 352) + 8))
      {
        ++*(v4 + 48);
        if (*(v4 + 64) < 1)
        {
          goto LABEL_10;
        }

        v13 = 0;
        v14 = 0;
        v15 = *(v4 + 56);
        v16 = 4;
        do
        {
          ++*(v15 + v16);
          if (IsMethodApplicable(a1, v15 + v16 - 4))
          {
            v17 = EnvGetDefruleName(a1, v4);
            EnvPrintRouter(a1, "wdisplay", v17);
            EnvPrintRouter(a1, "wdisplay", " #");
            PrintMethod(a1, __dst, 0xFFuLL, *(v4 + 56) + v16 - 4, v18, v19, v20, v21);
            EnvPrintRouter(a1, "wdisplay", __dst);
            EnvPrintRouter(a1, "wdisplay", "\n");
            v13 = 1;
          }

          v15 = *(v4 + 56);
          --*(v15 + v16);
          ++v14;
          v16 += 56;
        }

        while (v14 < *(v4 + 64));
        if (!v13)
        {
LABEL_10:
          EnvPrintRouter(a1, "wdisplay", "No applicable methods for ");
          v22 = EnvGetDefruleName(a1, v4);
          EnvPrintRouter(a1, "wdisplay", v22);
          EnvPrintRouter(a1, "wdisplay", ".\n");
        }

        --*(v4 + 48);
      }

      PopProcParameters(a1);
      v23 = *(a1 + 48);
      *(*(v23 + 216) + 136) = v8;
      --*(*(v23 + 352) + 16);
      result = SetExecutingConstruct(a1, v5);
    }

    else
    {
      PrintErrorID(a1, "GENRCFUN", 3, 0);
      EnvPrintRouter(a1, "werror", "Unable to find generic function ");
      EnvPrintRouter(a1, "werror", *(v26 + 24));
      result = EnvPrintRouter(a1, "werror", " in function preview-generic.\n");
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CheckGenericExists(uint64_t a1, char *a2, char *a3)
{
  v6 = LookupDefgenericByMdlOrScope(a1, a3);
  if (!v6)
  {
    PrintErrorID(a1, "GENRCFUN", 3, 0);
    EnvPrintRouter(a1, "werror", "Unable to find generic function ");
    EnvPrintRouter(a1, "werror", a3);
    EnvPrintRouter(a1, "werror", " in function ");
    EnvPrintRouter(a1, "werror", a2);
    EnvPrintRouter(a1, "werror", ".\n");
    SetEvaluationError(a1, 1);
  }

  return v6;
}

uint64_t CheckMethodExists(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 64);
  if (v8 < 1)
  {
LABEL_5:
    PrintErrorID(a1, "GENRCFUN", 2, 0);
    EnvPrintRouter(a1, "werror", "Unable to find method ");
    DefruleName = EnvGetDefruleName(a1, a3);
    EnvPrintRouter(a1, "werror", DefruleName);
    EnvPrintRouter(a1, "werror", " #");
    PrintLongInteger(a1, "werror", a4, v13, v14, v15, v16, v17);
    EnvPrintRouter(a1, "werror", " in function ");
    EnvPrintRouter(a1, "werror", a2);
    EnvPrintRouter(a1, "werror", ".\n");
    SetEvaluationError(a1, 1);
    return -1;
  }

  else
  {
    result = 0;
    v10 = *(a3 + 56);
    while (1)
    {
      v11 = *v10;
      v10 += 28;
      if (v11 == a4)
      {
        break;
      }

      if (v8 == ++result)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t PrintGenericName(uint64_t a1, FILE *a2, uint64_t **a3)
{
  v6 = *a3[2];
  if (v6 != EnvGetCurrentModule(a1))
  {
    ConstructNameString = EnvGetConstructNameString(a1, *a3[2]);
    EnvPrintRouter(a1, a2, ConstructNameString);
    EnvPrintRouter(a1, a2, "::");
  }

  v8 = (*a3)[3];

  return EnvPrintRouter(a1, a2, v8);
}

void *InitializeMemory(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x3Bu, 0x38uLL, 0);
  *(*(*(a1 + 48) + 472) + 24) = DefaultOutOfMemoryFunction;
  result = EnvironmentZoneMalloc(0xFA0uLL);
  v3 = *(a1 + 48);
  *(*(v3 + 472) + 40) = result;
  if (*(*(v3 + 472) + 40))
  {
    for (i = 0; i != 4000; i += 8)
    {
      *(*(*(*(a1 + 48) + 472) + 40) + i) = 0;
    }
  }

  else
  {
    PrintErrorID(a1, "MEMORY", 1, 1);
    EnvPrintRouter(a1, "werror", "Out of memory.\n");

    return EnvExitRouter(a1, 1);
  }

  return result;
}

uint64_t DefaultOutOfMemoryFunction(uint64_t a1)
{
  PrintErrorID(a1, "MEMORY", 1, 1);
  EnvPrintRouter(a1, "werror", "Out of memory.\n");
  EnvExitRouter(a1, 1);
  return 1;
}

void *genalloc(uint64_t a1, size_t size)
{
  result = EnvironmentZoneMalloc(size);
  if (!result)
  {
    v5 = 5 * size <= 0x1000 ? 4096 : 5 * size;
    EnvReleaseMem(a1, v5);
    result = EnvironmentZoneMalloc(size);
    if (!result)
    {
      EnvReleaseMem(a1, -1);
      while (1)
      {
        result = EnvironmentZoneMalloc(size);
        if (result)
        {
          break;
        }

        if ((*(*(*(a1 + 48) + 472) + 24))(a1, size))
        {
          return 0;
        }
      }
    }
  }

  v6 = vdupq_n_s64(1uLL);
  v6.i64[0] = size;
  **(*(a1 + 48) + 472) = vaddq_s64(**(*(a1 + 48) + 472), v6);
  return result;
}

uint64_t EnvReleaseMem(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 499;
  do
  {
    YieldTime(a1);
    v7 = *(*(*(a1 + 48) + 472) + 40);
    v8 = v6;
    v9 = *(v7 + 8 * v6);
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
        EnvironmentZoneFree(v10);
        v11 = *(*(a1 + 48) + 472);
        v12 = v11[1] - 1;
        *v11 -= v8;
        v11[1] = v12;
        ++v5;
        if (__ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v5, 2) <= 0x28F5C28F5C28F5CuLL)
        {
          YieldTime(a1);
        }

        v4 += v8;
      }

      while (v9);
      v7 = *(*(*(a1 + 48) + 472) + 40);
    }

    v13 = v4 <= a2 || a2 <= 0;
    *(v7 + 8 * v8) = 0;
    if (!v13)
    {
      break;
    }

    v6 = v8 - 1;
  }

  while (v8 > 8);
  return v4;
}

uint64_t EnvSetOutOfMemoryFunction(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 472);
  result = *(v2 + 24);
  *(v2 + 24) = a2;
  return result;
}

uint64_t genfree(uint64_t a1, void *ptr, uint64_t a3)
{
  EnvironmentZoneFree(ptr);
  v5 = *(*(a1 + 48) + 472);
  v6 = v5[1] - 1;
  *v5 -= a3;
  v5[1] = v6;
  return 0;
}

void *genrealloc(uint64_t a1, void *a2, unint64_t a3, size_t a4)
{
  if (a4)
  {
    v8 = gm2(a1, a4);
    if (!a2)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      return v8;
    }
  }

  if (a3 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  if (v9)
  {
    v10 = 0;
    for (i = 0; i < v9; v10 = ++i)
    {
      *(v8 + v10) = *(a2 + v10);
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  v12 = v10;
  if (v10 < a4)
  {
    v13 = v10 + 1;
    do
    {
      *(v8 + v12) = 0;
      v12 = v13++;
    }

    while (v12 < a4);
  }

  rm(a1, a2, a3);
  return v8;
}

uint64_t UpdateMemoryUsed(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 472);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

uint64_t UpdateMemoryRequests(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 472);
  result = *(v2 + 8) + a2;
  *(v2 + 8) = result;
  return result;
}

void *gm1(uint64_t a1, unint64_t a2)
{
  if (a2 <= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = a2;
  }

  if (a2 >= 0x1F4)
  {
    v3 = v2;
LABEL_9:
    v5 = genalloc(a1, v3);
    goto LABEL_10;
  }

  v4 = *(*(*(a1 + 48) + 472) + 40);
  v5 = *(v4 + 8 * v2);
  if (!v5)
  {
    v3 = v2;
    goto LABEL_9;
  }

  *(v4 + 8 * v2) = *v5;
LABEL_10:
  bzero(v5, v2);
  return v5;
}

void *gm3(uint64_t a1, size_t a2)
{
  v2 = a2;
  if (a2 <= 8)
  {
    a2 = 8;
  }

  if (v2 >= 0x1F4)
  {
    return genalloc(a1, a2);
  }

  v3 = *(*(*(a1 + 48) + 472) + 40);
  v4 = *(v3 + 8 * a2);
  if (!v4)
  {
    return genalloc(a1, a2);
  }

  *(v3 + 8 * a2) = *v4;
  return v4;
}

uint64_t PoolSize(uint64_t a1)
{
  result = 0;
  v3 = *(*(*(a1 + 48) + 472) + 40);
  v4 = -8;
  for (i = 8; i != 500; ++i)
  {
    v6 = (v3 + 8 * i);
    result += v4;
    do
    {
      v6 = *v6;
      result += i;
    }

    while (v6);
    --v4;
  }

  return result;
}

uint64_t EnvSetConserveMemory(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 472);
  result = *(v2 + 16);
  *(v2 + 16) = a2;
  return result;
}

_BYTE *genmemcpy(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

void sub_2327250B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232726594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232726860(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t AWDSymptomsABCEnhancedBetaFeedbackStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FactPNGetVar1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(*(a1 + 48) + 24);
  v6 = *(v5 + 400);
  if (*v4)
  {
    *(a3 + 8) = 6;
    goto LABEL_6;
  }

  if ((*v4 & 2) == 0)
  {
    v7 = *(v5 + 408);
    v8 = *(v4 + 2);
    v9 = *(v4 + 4);
    v10 = v6 + 16 * *(v4 + 4);
    v19 = -1;
    v11 = AdjustFieldPosition(a1, v7, v8, v9, &v19);
    v12 = v19;
    if (v19 != -1)
    {
      *(a3 + 8) = 4;
      *(a3 + 16) = *(v10 + 136);
      *(a3 + 24) = v11;
      *(a3 + 32) = (v11 + v12 - 1);
      return 1;
    }

    v18 = *(v10 + 136) + 16 * v11;
    *(a3 + 8) = *(v18 + 24);
    v6 = *(v18 + 32);
LABEL_6:
    *(a3 + 16) = v6;
    return 1;
  }

  v14 = v6 + 16 * *(v4 + 4);
  v15 = *(v14 + 128);
  *(a3 + 8) = v15;
  v16 = *(v14 + 136);
  *(a3 + 16) = v16;
  if (v15 == 4)
  {
    v17 = *(v16 + 8) - 1;
    *(a3 + 24) = 0;
    *(a3 + 32) = v17;
  }

  return 1;
}

uint64_t AdjustFieldPosition(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  if (a2)
  {
    v5 = a3;
    while (1)
    {
      if (*(a2 + 8) == a4)
      {
        if (*a2 == a3)
        {
          *a5 = *(a2 + 24) - *(a2 + 16) + 1;
          return v5;
        }

        if (*a2 > a3)
        {
          return v5;
        }

        v5 += *(a2 + 24) - *(a2 + 16);
      }

      a2 = *(a2 + 32);
      if (!a2)
      {
        return v5;
      }
    }
  }

  LOWORD(v5) = a3;
  return v5;
}

uint64_t FactPNGetVar2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 48) + 24) + 400) + 16 * **(a2 + 24);
  *(a3 + 8) = *(v3 + 128);
  *(a3 + 16) = *(v3 + 136);
  return 1;
}

uint64_t FactPNGetVar3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(*(*(*(a1 + 48) + 24) + 400) + 16 * v3[3] + 136);
  v5 = *v3;
  if ((~v5 & 3) != 0)
  {
    if (v5)
    {
      v7 = v3[1];
    }

    else
    {
      v7 = *(v4 + 8) + ~v3[2];
    }

    v8 = v4 + 24 + 16 * v7;
    *(a3 + 8) = *v8;
    *(a3 + 16) = *(v8 + 8);
  }

  else
  {
    *(a3 + 8) = 4;
    v6 = v3[1];
    *(a3 + 16) = v4;
    *(a3 + 24) = v6;
    *(a3 + 32) = *(v4 + 8) + ~v3[2];
  }

  return 1;
}

BOOL FactPNConstant1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 48);
  v4 = *(*(v3 + 24) + 400) + 16 * *(v2 + 1);
  v6 = *(v4 + 128);
  v5 = v4 + 128;
  v7 = *(**(v3 + 352) + 16);
  if (*v7 == v6)
  {
    return (*v2 ^ (*(v7 + 1) != *(v5 + 8))) & 1;
  }

  else
  {
    return (*v2 & 1) == 0;
  }
}

BOOL FactPNConstant2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 48);
  v4 = *(*(v3 + 24) + 400) + 16 * *(v2 + 2);
  v6 = *(v4 + 128);
  v5 = (v4 + 128);
  if (v6 == 4)
  {
    v7 = *(v5 + 1);
    v8 = v7 + 24;
    if ((*v2 & 2) != 0)
    {
      v9 = *(v2 + 1);
    }

    else
    {
      v9 = *(v7 + 8) + ~*(v2 + 1);
    }

    v5 = (v8 + 16 * v9);
  }

  v10 = *(**(v3 + 352) + 16);
  if (*v10 == *v5)
  {
    return (*v2 ^ (*(v10 + 1) != *(v5 + 1))) & 1;
  }

  else
  {
    return (*v2 & 1) == 0;
  }
}

uint64_t FactJNGetVar1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  if ((*v4 & 4) != 0)
  {
    v5 = *(*(a1 + 48) + 144);
LABEL_7:
    v9 = *(v5 + 96) + 8 * *(v4 + 2);
    goto LABEL_10;
  }

  v5 = *(*(a1 + 48) + 144);
  v6 = *(v5 + 104);
  if ((*v4 & 8) != 0)
  {
    v9 = v6 + 8 * *(v4 + 2);
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v4 + 2);
  if (v7 == ((**(v5 + 112) >> 10) - 1))
  {
    v8 = (v6 + 136);
    goto LABEL_11;
  }

  v9 = *(v5 + 96) + 8 * v7;
LABEL_10:
  v8 = (v9 + 136);
LABEL_11:
  v10 = *v8;
  v11 = *v10;
  if (*v4)
  {
    *(a3 + 8) = 6;
    *(a3 + 16) = v11;
    return 1;
  }

  v12 = *(v4 + 4);
  v13 = v11 + 16 * v12;
  v16 = *(v13 + 128);
  v15 = v13 + 128;
  v14 = v16;
  if ((*v4 & 2) == 0)
  {
    if (v14 == 4)
    {
      v17 = v10[1];
      v18 = *(v4 + 6);
      v26 = -1;
      v19 = AdjustFieldPosition(a1, v17, v18, v12, &v26);
      v20 = v26;
      if (v26 != -1)
      {
        *(a3 + 8) = 4;
        *(a3 + 16) = *(v15 + 8);
        *(a3 + 24) = v19;
        *(a3 + 32) = (v19 + v20 - 1);
        return 1;
      }

      v24 = *(v15 + 8) + 16 * v19;
      *(a3 + 8) = *(v24 + 24);
      v23 = *(v24 + 32);
    }

    else
    {
      *(a3 + 8) = v14;
      v23 = *(v15 + 8);
    }

    *(a3 + 16) = v23;
    return 1;
  }

  *(a3 + 8) = v14;
  v21 = *(v15 + 8);
  *(a3 + 16) = v21;
  if (v14 == 4)
  {
    v22 = *(v21 + 8) - 1;
    *(a3 + 24) = 0;
    *(a3 + 32) = v22;
  }

  return 1;
}

uint64_t FactJNGetVar2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  if (*v3)
  {
    v4 = *(*(a1 + 48) + 144);
    goto LABEL_7;
  }

  v4 = *(*(a1 + 48) + 144);
  v5 = *(v4 + 104);
  if ((*v3 & 2) != 0)
  {
    v8 = v5 + 8 * *(v3 + 2);
    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_7:
    v8 = *(v4 + 96) + 8 * *(v3 + 2);
LABEL_10:
    v7 = (v8 + 136);
    goto LABEL_11;
  }

  v6 = *(v3 + 2);
  if (v6 != ((**(v4 + 112) >> 10) - 1))
  {
    v8 = *(v4 + 96) + 8 * v6;
    goto LABEL_10;
  }

  v7 = (v5 + 136);
LABEL_11:
  v9 = **v7 + 16 * *(v3 + 4);
  *(a3 + 8) = *(v9 + 128);
  *(a3 + 16) = *(v9 + 136);
  return 1;
}

uint64_t FactJNGetVar3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *v3;
  if ((v4 & 4) != 0)
  {
    v5 = *(*(a1 + 48) + 144);
LABEL_7:
    v9 = *(v5 + 96) + 8 * v3[3];
    goto LABEL_10;
  }

  v5 = *(*(a1 + 48) + 144);
  v6 = *(v5 + 104);
  if ((v4 & 8) != 0)
  {
    v9 = v6 + 8 * v3[3];
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v3[3];
  if (v7 == ((**(v5 + 112) >> 10) - 1))
  {
    v8 = (v6 + 136);
    goto LABEL_11;
  }

  v9 = *(v5 + 96) + 8 * v7;
LABEL_10:
  v8 = (v9 + 136);
LABEL_11:
  v10 = *(**v8 + 16 * v3[4] + 136);
  if ((~v4 & 3) != 0)
  {
    if (v4)
    {
      v12 = v3[1];
    }

    else
    {
      v12 = *(v10 + 8) + ~v3[2];
    }

    v13 = v10 + 24 + 16 * v12;
    *(a3 + 8) = *v13;
    *(a3 + 16) = *(v13 + 8);
  }

  else
  {
    *(a3 + 8) = 4;
    v11 = v3[1];
    *(a3 + 16) = v10;
    *(a3 + 24) = v11;
    *(a3 + 32) = *(v10 + 8) + ~v3[2];
  }

  return 1;
}

uint64_t FactSlotLength(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 2;
  *(a3 + 16) = EnvFalseSymbol(a1);
  v6 = *(a2 + 24);
  v7 = *(*(a1 + 48) + 24);
  v8 = *(v7 + 408);
  for (i = 0; v8; v8 = *(v8 + 32))
  {
    if (*(v8 + 8) == *(v6 + 4))
    {
      i = i + *(v8 + 24) - *(v8 + 16) + 1;
    }
  }

  v10 = *(*(*(v7 + 400) + 16 * *(v6 + 4) + 136) + 8);
  v11 = i + *(v6 + 2);
  if (v10 < v11)
  {
    return 0;
  }

  v12 = *v6 & 1;
  if (v10 > v11 && v12 != 0)
  {
    return 0;
  }

  *(a3 + 16) = EnvTrueSymbol(a1);
  return 1;
}

uint64_t FactJNCompVars1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2[2];
  v4 = *(*(a1 + 48) + 144);
  v5 = *(v4 + 104);
  v6 = **(v5 + 8 * v2[1] + 136);
  v7 = *v2;
  if ((v7 & 0x20) == 0)
  {
    v5 = *(v4 + 96);
  }

  v8 = v2[4];
  v9 = v6 + 16 * v2[3];
  v12 = *(v9 + 128);
  v10 = v9 + 128;
  v11 = v12;
  v13 = **(v5 + 8 * v3 + 136) + 16 * v8;
  v15 = *(v13 + 128);
  v14 = v13 + 128;
  v16 = v11 != v15 || *(v10 + 8) != *(v14 + 8);
  return (v7 >> v16) & 1;
}

uint64_t FactJNCompVars2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(*(a1 + 48) + 144);
  v4 = *(v3 + 104);
  v5 = **(v4 + 8 * v2[3] + 136);
  v6 = *v2;
  if ((v6 & 0x20) == 0)
  {
    v4 = *(v3 + 96);
  }

  v7 = v5 + 16 * v2[5];
  v9 = *(v7 + 128);
  v8 = (v7 + 128);
  if (v9 == 4)
  {
    v10 = *(v8 + 1);
    v11 = v10 + 24;
    if ((v6 & 0x40) != 0)
    {
      v12 = v2[1];
    }

    else
    {
      v12 = *(v10 + 8) + ~v2[1];
    }

    v8 = (v11 + 16 * v12);
  }

  v13 = **(v4 + 8 * v2[4] + 136) + 16 * v2[6];
  v15 = *(v13 + 128);
  v14 = (v13 + 128);
  if (v15 == 4)
  {
    v16 = *(v14 + 1);
    if (v6 < 0)
    {
      v17 = v2[2];
    }

    else
    {
      v17 = *(v16 + 8) + ~v2[2];
    }

    v14 = (v16 + 24 + 16 * v17);
  }

  v18 = *v8 != *v14 || *(v8 + 1) != *(v14 + 1);
  return (v6 >> v18) & 1;
}

uint64_t FactPNCompVars1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(*(*(a1 + 48) + 24) + 400) + 128;
  v6 = (v5 + 16 * *(v4 + 1));
  v7 = (v5 + 16 * *(v4 + 2));
  if (*v6 == *v7)
  {
    v8 = *v4 >> (*(v6 + 1) != *(v7 + 1));
  }

  else
  {
    v8 = *v4 >> 1;
  }

  *(a3 + 8) = 2;
  if (v8)
  {
    v9 = EnvTrueSymbol(a1);
  }

  else
  {
    v9 = EnvFalseSymbol(a1);
  }

  *(a3 + 16) = v9;
  return v8 & 1;
}

uint64_t SetupGenericFunctions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x1Bu, 0xC0uLL, DeallocateDefgenericData);
  v2 = *(*(a1 + 48) + 216);
  v3 = unk_284794958;
  v2[5] = xmmword_284794948;
  v2[6] = v3;
  v2[7] = xmmword_284794968;
  v4 = *&off_284794918;
  v2[1] = xmmword_284794908;
  v2[2] = v4;
  v5 = unk_284794938;
  v2[3] = xmmword_284794928;
  v2[4] = v5;
  InstallPrimitive(a1, *(*(a1 + 48) + 216) + 16, 31);
  *(*(*(a1 + 48) + 216) + 8) = RegisterModuleItem(a1, "defgeneric", AllocateDefgenericModule, FreeDefgenericModule, BloadDefgenericModuleReference, 0, EnvFindDefgenericInModule);
  **(*(a1 + 48) + 216) = AddConstruct(a1, "defgeneric", "defgenerics", ParseDefgeneric, EnvFindDefgeneric, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDefgeneric, SetNextConstruct, EnvIsDefgenericDeletable, EnvUndefgeneric, RemoveDefgeneric);
  AddClearReadyFunction(a1, "defgeneric", ClearDefgenericsReady, 0);
  SetupGenericsBload(a1);
  AddPortConstructItem(a1, "defgeneric", 2);
  AddConstruct(a1, "defmethod", "defmethods", ParseDefmethod, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  AddSaveFunction(a1, "defgeneric", SaveDefgenerics, 1000);
  AddSaveFunction(a1, "defmethod", SaveDefmethods, -1000);
  EnvDefineFunction2(a1, "undefgeneric", 118, UndefgenericCommand, "UndefgenericCommand", "11w");
  EnvDefineFunction2(a1, "undefmethod", 118, UndefmethodCommand, "UndefmethodCommand", "22*wg");
  EnvDefineFunction2(a1, "call-next-method", 117, CallNextMethod, "CallNextMethod", "00");
  FuncSeqOvlFlags(a1, "call-next-method", 1, 0);
  EnvDefineFunction2(a1, "call-specific-method", 117, CallSpecificMethod, "CallSpecificMethod", "2**wi");
  FuncSeqOvlFlags(a1, "call-specific-method", 1, 0);
  EnvDefineFunction2(a1, "override-next-method", 117, OverrideNextMethod, "OverrideNextMethod", 0);
  FuncSeqOvlFlags(a1, "override-next-method", 1, 0);
  EnvDefineFunction2(a1, "next-methodp", 98, NextMethodP, "NextMethodP", "00");
  FuncSeqOvlFlags(a1, "next-methodp", 1, 0);
  EnvDefineFunction2(a1, "(gnrc-current-arg)", 117, GetGenericCurrentArgument, "GetGenericCurrentArgument", 0);
  EnvDefineFunction2(a1, "ppdefgeneric", 118, PPDefgenericCommand, "PPDefgenericCommand", "11w");
  EnvDefineFunction2(a1, "list-defgenerics", 118, ListDefgenericsCommand, "ListDefgenericsCommand", "01");
  EnvDefineFunction2(a1, "ppdefmethod", 118, PPDefmethodCommand, "PPDefmethodCommand", "22*wi");
  EnvDefineFunction2(a1, "list-defmethods", 118, ListDefmethodsCommand, "ListDefmethodsCommand", "01w");
  EnvDefineFunction2(a1, "preview-generic", 118, PreviewGeneric, "PreviewGeneric", "1**w");
  EnvDefineFunction2(a1, "get-defgeneric-list", 109, GetDefgenericListFunction, "GetDefgenericListFunction", "01");
  EnvDefineFunction2(a1, "get-defmethod-list", 109, GetDefmethodListCommand, "GetDefmethodListCommand", "01w");
  EnvDefineFunction2(a1, "get-method-restrictions", 109, GetMethodRestrictionsCommand, "GetMethodRestrictionsCommand", "22iw");
  EnvDefineFunction2(a1, "defgeneric-module", 119, GetDefgenericModuleCommand, "GetDefgenericModuleCommand", "11w");
  EnvDefineFunction2(a1, "type", 117, TypeCommand, "TypeCommand", "11u");
  AddWatchItem(a1, "generic-functions", 0, *(*(a1 + 48) + 216) + 128, 34, DefgenericWatchAccess, DefgenericWatchPrint);
  v6 = *(*(a1 + 48) + 216) + 132;

  return AddWatchItem(a1, "methods", 0, v6, 33, DefmethodWatchAccess, DefmethodWatchPrint);
}

BOOL EvaluateGenericCall(void *a1, uint64_t a2, uint64_t a3)
{
  GenericDispatch(a1, a2, 0, 0, *(**(a1[6] + 352) + 16), a3);
  result = 1;
  if (*(a3 + 8) == 2)
  {
    v5 = *(a3 + 16);
    if (v5 == EnvFalseSymbol(a1))
    {
      return 0;
    }
  }

  return result;
}

uint64_t DecrementGenericBusyCount(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 48) + 336) + 4))
  {
    --*(a2 + 48);
  }

  return result;
}

uint64_t IncrementGenericBusyCount(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 48) + 336);
  if (!*(v2 + 44))
  {
    ++*(v2 + 20);
  }

  ++*(a2 + 48);
  return result;
}

uint64_t DeallocateDefgenericData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDefgenericAction, *(*(*(a1 + 48) + 216) + 8), 0, 0);
    result = EnvGetNextDefmodule(a1, 0);
    if (result)
    {
      v3 = result;
      do
      {
        ModuleItem = GetModuleItem(a1, v3, *(*(*(a1 + 48) + 216) + 8));
        v5 = *(a1 + 48);
        *(*(v5 + 472) + 32) = ModuleItem;
        **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
        *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
        result = EnvGetNextDefmodule(a1, v3);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

BOOL EnvIsDefgenericDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    return *(a2 + 48) == 0;
  }

  return result;
}

uint64_t EnvUndefgeneric(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = ConstructsDeletable(a1);
    if (result)
    {
      if (*(a2 + 48))
      {
        return 0;
      }

      else
      {
        RemoveConstructFromModule(a1, a2);
        RemoveDefgeneric(a1, a2);
        return 1;
      }
    }
  }

  else
  {
    v5 = ClearDefmethods(a1);
    if (ClearDefgenerics(a1))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    return !v6;
  }

  return result;
}

uint64_t UndefmethodCommand(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  result = EnvArgTypeCheck(a1, "undefmethod", 1, 2, &v9);
  if (result)
  {
    v3 = LookupConstruct(a1, **(*(a1 + 48) + 216), *(v10 + 24), 1);
    if (!v3)
    {
      v6 = *(v10 + 24);
      if (*v6 != 42 || v6[1])
      {
        PrintErrorID(a1, "GENRCCOM", 1, 0);
        EnvPrintRouter(a1, "werror", "No such generic function ");
        EnvPrintRouter(a1, "werror", *(v10 + 24));
        v7 = " in function undefmethod.\n";
        v8 = a1;
        return EnvPrintRouter(v8, "werror", v7);
      }
    }

    EnvRtnUnknown(a1, 2, &v9);
    if (WORD4(v9) == 1)
    {
      v5 = *(v10 + 24);
      if (v5)
      {
        return EnvUndefmethod(a1, v3, v5);
      }
    }

    else if (WORD4(v9) == 2)
    {
      v4 = *(v10 + 24);
      if (*v4 == 42 && !v4[1])
      {
        v5 = 0;
        return EnvUndefmethod(a1, v3, v5);
      }
    }

    PrintErrorID(a1, "GENRCCOM", 2, 0);
    v7 = "Expected a valid method index in function undefmethod.\n";
    v8 = a1;
    return EnvPrintRouter(v8, "werror", v7);
  }

  return result;
}

uint64_t PPDefmethodCommand(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  result = EnvArgTypeCheck(a1, "ppdefmethod", 1, 2, &v6);
  if (result)
  {
    v3 = *(v7 + 24);
    result = EnvArgTypeCheck(a1, "ppdefmethod", 2, 1, &v6);
    if (result)
    {
      result = CheckGenericExists(a1, "ppdefmethod", v3);
      if (result)
      {
        v4 = result;
        result = CheckMethodExists(a1, "ppdefmethod", result, *(v7 + 24));
        if (result != -1)
        {
          v5 = *(*(v4 + 56) + 56 * result + 40);
          if (v5)
          {
            return PrintInChunks(a1, "wdisplay", v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t ListDefmethodsCommand(uint64_t a1)
{
  if (EnvRtnArgCount(a1))
  {
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    result = EnvArgTypeCheck(a1, "list-defmethods", 1, 2, &v4);
    if (result)
    {
      result = CheckGenericExists(a1, "list-defmethods", *(v5 + 24));
      if (result)
      {
        v3 = ListMethodsForGeneric(a1, "wdisplay", result);
        return PrintTally(a1, "wdisplay", v3, "method", "methods");
      }
    }
  }

  else
  {

    return EnvListDefmethods(a1, "wdisplay", 0);
  }

  return result;
}

void GetDefmethodListCommand(uint64_t a1, uint64_t a2)
{
  if (EnvRtnArgCount(a1))
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    if (EnvArgTypeCheck(a1, "get-defmethod-list", 1, 2, &v5) && (v4 = CheckGenericExists(a1, "get-defmethod-list", *(v6 + 24))) != 0)
    {
      EnvGetDefmethodList(a1, v4, a2);
    }

    else
    {
      EnvSetMultifieldErrorValue(a1, a2);
    }
  }

  else
  {

    EnvGetDefmethodList(a1, 0, a2);
  }
}

double GetMethodRestrictionsCommand(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (!EnvArgTypeCheck(a1, "get-method-restrictions", 1, 2, &v7))
  {
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  v4 = CheckGenericExists(a1, "get-method-restrictions", *(v8 + 24));
  if (!v4)
  {
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  v5 = v4;
  if (!EnvArgTypeCheck(a1, "get-method-restrictions", 2, 1, &v7) || CheckMethodExists(a1, "get-method-restrictions", v5, *(v8 + 24)) == -1)
  {
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  EnvGetMethodRestrictions(a1, v5, *(v8 + 24), a2);
  return result;
}

uint64_t *TypeCommand(uint64_t a1, uint64_t a2)
{
  EvaluateExpression(a1, *(**(*(a1 + 48) + 352) + 16), a2);
  v4 = TypeName(a1, *(a2 + 8));
  result = EnvAddSymbol(a1, v4);
  *(a2 + 16) = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t DefmethodWatchAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = "watch";
  }

  else
  {
    v4 = "unwatch";
  }

  return DefmethodWatchSupport(a1, v4, 0, a3, 0, EnvSetDefmethodWatch, a4);
}

uint64_t EnvGetNextDefmethod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    MethodByIndex = FindMethodByIndex(a2, a3);
    if (MethodByIndex + 1 != *(a2 + 64))
    {
      v5 = (*(a2 + 56) + 56 * (MethodByIndex + 1));
      return *v5;
    }
  }

  else
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      return *v5;
    }
  }

  return 0;
}

BOOL EnvIsDefmethodDeletable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    v6 = *(a2 + 56);
    return (*(v6 + 56 * FindMethodByIndex(a2, a3) + 16) & 1) == 0 && MethodsExecuting(a2) == 0;
  }

  return result;
}

uint64_t EnvUndefmethod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (Bloaded(a1) == 1)
  {
    PrintErrorID(a1, "PRNTUTIL", 4, 0);
    EnvPrintRouter(a1, "werror", "Unable to delete method ");
    if (a2)
    {
      ConstructNameString = GetConstructNameString(a2);
      EnvPrintRouter(a1, "werror", ConstructNameString);
      EnvPrintRouter(a1, "werror", " #");
      PrintLongInteger(a1, "werror", a3, v7, v8, v9, v10, v11);
    }

    else
    {
      EnvPrintRouter(a1, "werror", "*");
    }

    v12 = ".\n";
    goto LABEL_9;
  }

  if (a2)
  {
    if (!MethodsExecuting(a2))
    {
      if (a3)
      {
        v15 = CheckMethodExists(a1, "undefmethod", a2, a3);
        if (v15 == -1)
        {
          return 0;
        }

        v16 = v15;
        v17 = *(a2 + 56) + 56 * v15;
        if (*(v17 + 16))
        {
          v13 = 1;
          SetEvaluationError(a1, 1);
          PrintErrorID(a1, "GENRCCOM", 4, 0);
          EnvPrintRouter(a1, "werror", "Cannot remove implicit system function method for generic function ");
          v20 = GetConstructNameString(a2);
          EnvPrintRouter(a1, "werror", v20);
          EnvPrintRouter(a1, "werror", ".\n");
          return v13;
        }

        DeleteMethodInfo(a1, a2, v17);
        v18 = *(a2 + 64) - 1;
        if (*(a2 + 64) == 1)
        {
          rm(a1, *(a2 + 56), 0x38uLL);
          v19 = 0;
          *(a2 + 64) = 0;
        }

        else
        {
          *(a2 + 64) = v18;
          v21 = gm2(a1, 56 * v18);
          v19 = v21;
          v22 = *(a2 + 64);
          if (v22 >= 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = v21;
            do
            {
              if (v16 == v24)
              {
                v26 = v23 + 1;
              }

              else
              {
                v26 = v23;
              }

              v27 = *(a2 + 56) + 56 * v26;
              v28 = *v27;
              v29 = *(v27 + 16);
              v30 = *(v27 + 32);
              v25[6] = *(v27 + 48);
              *(v25 + 1) = v29;
              *(v25 + 2) = v30;
              *v25 = v28;
              v25 += 7;
              ++v24;
              v23 = v26 + 1;
              v22 = *(a2 + 64);
            }

            while (v24 < v22);
          }

          rm(a1, *(a2 + 56), 56 * v22 + 56);
        }

        *(a2 + 56) = v19;
      }

      else
      {
        RemoveAllExplicitMethods(a1, a2);
      }

      return 1;
    }

    MethodAlterError(a1, a2);
    return 0;
  }

  if (a3)
  {
    PrintErrorID(a1, "GENRCCOM", 3, 0);
    v12 = "Incomplete method specification for deletion.\n";
LABEL_9:
    EnvPrintRouter(a1, "werror", v12);
    return 0;
  }

  return ClearDefmethods(a1);
}

char *EnvGetDefmethodDescription(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 56) + 56 * FindMethodByIndex(a4, a5);

  return PrintMethod(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t EnvSetDefmethodWatch(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = FindMethodByIndex(a3, a4);
  *(*(a3 + 56) + 56 * result + 16) = *(*(a3 + 56) + 56 * result + 16) & 0xFD | (2 * (a2 & 1));
  return result;
}

uint64_t EnvListDefmethods(uint64_t a1, FILE *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = ListMethodsForGeneric(a1, a2, a3);
  }

  else
  {
    NextConstructItem = GetNextConstructItem(a1, 0, *(*(*(a1 + 48) + 216) + 8));
    if (NextConstructItem)
    {
      v7 = NextConstructItem;
      v5 = 0;
      do
      {
        v8 = ListMethodsForGeneric(a1, a2, v7);
        if (GetNextConstructItem(a1, v7, *(*(*(a1 + 48) + 216) + 8)))
        {
          EnvPrintRouter(a1, a2, "\n");
        }

        v5 += v8;
        v7 = GetNextConstructItem(a1, v7, *(*(*(a1 + 48) + 216) + 8));
      }

      while (v7);
    }

    else
    {
      v5 = 0;
    }
  }

  return PrintTally(a1, a2, v5, "method", "methods");
}

uint64_t ListMethodsForGeneric(uint64_t a1, FILE *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  result = *(a3 + 64);
  if (result >= 1)
  {
    v7 = 0;
    for (i = 0; i < result; ++i)
    {
      ConstructNameString = GetConstructNameString(a3);
      EnvPrintRouter(a1, a2, ConstructNameString);
      EnvPrintRouter(a1, a2, " #");
      PrintMethod(a1, __dst, 0xFFuLL, *(a3 + 56) + v7, v10, v11, v12, v13);
      EnvPrintRouter(a1, a2, __dst);
      EnvPrintRouter(a1, a2, "\n");
      result = *(a3 + 64);
      v7 += 56;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *EnvGetDefmethodList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 48) + 216) + 8);
  if (a2)
  {
    v6 = a2;
    NextConstructItem = GetNextConstructItem(a1, a2, v5);
    SetNextConstruct(v6, 0);
  }

  else
  {
    v6 = GetNextConstructItem(a1, 0, v5);
    if (!v6)
    {
      NextConstructItem = 0;
      v11 = 0;
      v10 = 1;
      goto LABEL_8;
    }

    NextConstructItem = GetNextConstructItem(a1, v6, *(*(*(a1 + 48) + 216) + 8));
  }

  v8 = 0;
  v9 = v6;
  do
  {
    v8 += *(v9 + 64);
    v9 = GetNextConstructItem(a1, v9, *(*(*(a1 + 48) + 216) + 8));
  }

  while (v9);
  v10 = 0;
  v11 = 2 * v8;
LABEL_8:
  *(a3 + 8) = 4;
  *(a3 + 24) = 0;
  *(a3 + 32) = v11 - 1;
  result = EnvCreateMultifield(a1, v11);
  *(a3 + 16) = result;
  if ((v10 & 1) == 0)
  {
    v13 = result + 2;
    v14 = 1;
    v15 = v6;
    do
    {
      if (*(v15 + 64) >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = &v13[2 * v14];
        do
        {
          *(v18 - 4) = 2;
          *v18 = GetConstructNamePointer(v15);
          *(v18 + 4) = 1;
          v14 += 2;
          v18[2] = EnvAddLong(a1, *(*(v15 + 56) + v16));
          ++v17;
          v16 += 56;
          v18 += 4;
        }

        while (v17 < *(v15 + 64));
      }

      v15 = GetNextConstructItem(a1, v15, *(*(*(a1 + 48) + 216) + 8));
    }

    while (v15);

    return SetNextConstruct(v6, NextConstructItem);
  }

  return result;
}

void *EnvGetMethodRestrictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 56);
  v7 = v6 + 56 * FindMethodByIndex(a2, a3);
  v8 = *(v7 + 8);
  if (v8 < 1)
  {
    v10 = 3;
  }

  else
  {
    v9 = (*(v7 + 24) + 16);
    v10 = 3;
    do
    {
      v11 = *v9;
      v9 += 12;
      v10 += v11 + 3;
      --v8;
    }

    while (v8);
  }

  Multifield = EnvCreateMultifield(a1, v10);
  *(a4 + 8) = 4;
  *(a4 + 16) = Multifield;
  *(a4 + 24) = 0;
  *(a4 + 32) = v10 - 1;
  *(Multifield + 12) = 1;
  v13 = Multifield + 3;
  Multifield[4] = EnvAddLong(a1, *(v7 + 10));
  *(Multifield + 20) = 1;
  Multifield[6] = EnvAddLong(a1, *(v7 + 12));
  *(Multifield + 28) = 1;
  result = EnvAddLong(a1, *(v7 + 8));
  Multifield[8] = result;
  v15 = *(v7 + 8);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v15 + 4;
    v26 = Multifield + 2;
    v18 = 4;
    do
    {
      v19 = *(v7 + 24) + 24 * v16;
      v20 = &v13[2 * v18];
      *(v20 - 8) = 1;
      *(v20 - 1) = EnvAddLong(a1, v17);
      v21 = &v13[2 * v17];
      *(v21 - 8) = 2;
      if (*(v19 + 8))
      {
        v22 = EnvTrueSymbol(a1);
      }

      else
      {
        v22 = EnvFalseSymbol(a1);
      }

      *(v21 - 1) = v22;
      *v21 = 1;
      result = EnvAddLong(a1, *(v19 + 16));
      v17 += 2;
      v21[1] = result;
      if (*(v19 + 16) >= 1)
      {
        v23 = 0;
        v24 = &v26[2 * v17];
        do
        {
          *(v24 - 4) = 2;
          v25 = TypeName(a1, *(*(*v19 + 8 * v23) + 24));
          result = EnvAddSymbol(a1, v25);
          *v24 = result;
          v24 += 2;
          ++v23;
        }

        while (v23 < *(v19 + 16));
        v17 += v23;
      }

      ++v18;
      ++v16;
    }

    while (v16 < *(v7 + 8));
  }

  return result;
}

uint64_t DestroyDefgenericAction(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 64);
    if (v4 < 1)
    {
      v7 = *(a2 + 64);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        DestroyMethodInfo(v3, a2, *(a2 + 56) + v5);
        ++v6;
        v7 = *(a2 + 64);
        v5 += 56;
      }

      while (v6 < v7);
      LOWORD(v4) = *(a2 + 64);
    }

    if (v4)
    {
      rm(v3, *(a2 + 56), 56 * v7);
    }

    result = DestroyConstructHeader(v3, a2);
    v8 = *(v3 + 48);
    *(*(v8 + 472) + 32) = a2;
    **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 576);
    *(*(*(v8 + 472) + 40) + 576) = *(*(v8 + 472) + 32);
  }

  return result;
}

uint64_t SaveDefmethodsForDefgeneric(uint64_t result, uint64_t a2, FILE *a3)
{
  v3 = *(a2 + 64);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = 40;
    do
    {
      v9 = *(*(a2 + 56) + v8);
      if (v9)
      {
        PrintInChunks(v6, a3, v9);
        result = EnvPrintRouter(v6, a3, "\n");
        LOWORD(v3) = *(a2 + 64);
      }

      ++v7;
      v8 += 56;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t DefmethodWatchSupport(uint64_t a1, char *a2, FILE *a3, uint64_t a4, uint64_t (*a5)(uint64_t, FILE *, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (a7)
  {
    v12 = a7;
    v13 = 0;
    for (i = 2; ; ++i)
    {
      if (EvaluateExpression(a1, v12, &v35))
      {
        return 0;
      }

      if (WORD4(v35) != 2 || (v15 = LookupConstruct(a1, **(*(a1 + 48) + 216), *(v36 + 24), 1)) == 0)
      {
        v30 = "generic function name";
LABEL_43:
        ExpectedTypeError1(a1, a2, i, v30);
        return 0;
      }

      v16 = v15;
      v17 = *(v12 + 24);
      if (!v17)
      {
        break;
      }

      if (EvaluateExpression(a1, *(v12 + 24), &v32))
      {
        return 0;
      }

      ++i;
      if (WORD4(v32) != 1 || *(v33 + 24) < 1 || FindMethodByIndex(v16, v13) == -1)
      {
        v30 = "method index";
        goto LABEL_43;
      }

      v13 = *(v33 + 24);
      if (!v13)
      {
        goto LABEL_15;
      }

      if (a6)
      {
        a6(a1, a4, v16, *(v33 + 24));
      }

      else
      {
        a5(a1, a3, v16, *(v33 + 24));
      }

LABEL_22:
      v12 = *(v17 + 24);
      if (!v12)
      {
        return 1;
      }
    }

    v17 = v12;
LABEL_15:
    v18 = *(v16 + 56);
    if (v18)
    {
      for (j = *v18; j; j = EnvGetNextDefmethod(v20, v16, j))
      {
        if (a6)
        {
          v20 = a6(a1, a4, v16, j);
        }

        else
        {
          v20 = a5(a1, a3, v16, j);
        }
      }
    }

    v13 = 0;
    goto LABEL_22;
  }

  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v22 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v22);
      if (!a6)
      {
        ConstructNameString = EnvGetConstructNameString(a1, v22);
        EnvPrintRouter(a1, a3, ConstructNameString);
        EnvPrintRouter(a1, a3, ":\n");
      }

      NextConstructItem = GetNextConstructItem(a1, 0, *(*(*(a1 + 48) + 216) + 8));
      if (NextConstructItem)
      {
        v25 = NextConstructItem;
        do
        {
          v26 = *(v25 + 56);
          if (v26)
          {
            for (k = *v26; k; k = EnvGetNextDefmethod(v28, v25, k))
            {
              if (a6)
              {
                v28 = a6(a1, a4, v25, k);
              }

              else
              {
                EnvPrintRouter(a1, a3, "   ");
                v28 = a5(a1, a3, v25, k);
              }
            }
          }

          v25 = GetNextConstructItem(a1, v25, *(*(*(a1 + 48) + 216) + 8));
        }

        while (v25);
      }

      v22 = EnvGetNextDefmodule(a1, v22);
    }

    while (v22);
  }

  RestoreCurrentModule(a1);
  return 1;
}

uint64_t PrintMethodWatchFlag(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  ConstructNameString = GetConstructNameString(a3);
  EnvPrintRouter(a1, a2, ConstructNameString);
  EnvPrintRouter(a1, a2, " ");
  MethodByIndex = FindMethodByIndex(a3, a4);
  PrintMethod(a1, __dst, 0x3BuLL, *(a3 + 56) + 56 * MethodByIndex, v10, v11, v12, v13);
  EnvPrintRouter(a1, a2, __dst);
  if ((*(*(a3 + 56) + 56 * FindMethodByIndex(a3, a4) + 16) & 2) != 0)
  {
    v14 = " = on\n";
  }

  else
  {
    v14 = " = off\n";
  }

  result = EnvPrintRouter(a1, a2, v14);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AWDSymptomsNetworkDebuggabilityFrameworkIssueReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v96) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v96 & 0x7F) << v5;
        if ((v96 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v14 > 9)
        {
          switch(v14)
          {
            case 0xA:
              v54 = 0;
              v55 = 0;
              v56 = 0;
              a1[132] |= 0x40u;
              while (1)
              {
                LOBYTE(v96) = 0;
                v57 = [a2 position] + 1;
                if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                {
                  v59 = [a2 data];
                  [v59 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v56 |= (v96 & 0x7F) << v54;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v11 = v55++ >= 9;
                if (v11)
                {
                  v34 = 0;
                  goto LABEL_169;
                }
              }

              if ([a2 hasError])
              {
                v34 = 0;
              }

              else
              {
                v34 = v56;
              }

LABEL_169:
              v82 = 112;
              goto LABEL_170;
            case 0xB:
              v47 = PBReaderReadString();
              if (v47)
              {
                [a1 addNdfSignature:v47];
              }

              goto LABEL_138;
            case 0xC:
              v35 = 0;
              v36 = 0;
              v37 = 0;
              a1[132] |= 0x10u;
              while (1)
              {
                LOBYTE(v96) = 0;
                v38 = [a2 position] + 1;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
                {
                  v40 = [a2 data];
                  [v40 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v37 |= (v96 & 0x7F) << v35;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v11 = v36++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v37;
              }

LABEL_157:
              v81 = 88;
              goto LABEL_175;
          }
        }

        else
        {
          switch(v14)
          {
            case 7:
              v47 = PBReaderReadString();
              if (v47)
              {
                [a1 addNdfAppName:v47];
              }

LABEL_138:

              goto LABEL_176;
            case 8:
              if (v13 != 2)
              {
                v90 = 0;
                v91 = 0;
                v92 = 0;
                while (1)
                {
                  LOBYTE(v96) = 0;
                  v93 = [a2 position] + 1;
                  if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
                  {
                    v95 = [a2 data];
                    [v95 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v92 |= (v96 & 0x7F) << v90;
                  if ((v96 & 0x80) == 0)
                  {
                    goto LABEL_196;
                  }

                  v90 += 7;
                  v11 = v91++ >= 9;
                  if (v11)
                  {
                    goto LABEL_197;
                  }
                }
              }

              v96 = 0;
              v97 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v68 = [a2 position];
                if (v68 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  goto LABEL_141;
                }

                v69 = 0;
                v70 = 0;
                v71 = 0;
                while (1)
                {
                  v98 = 0;
                  v72 = [a2 position] + 1;
                  if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
                  {
                    v74 = [a2 data];
                    [v74 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v71 |= (v98 & 0x7F) << v69;
                  if ((v98 & 0x80) == 0)
                  {
                    break;
                  }

                  v69 += 7;
                  v11 = v70++ >= 9;
                  if (v11)
                  {
                    goto LABEL_126;
                  }
                }

                [a2 hasError];
LABEL_126:
                PBRepeatedInt32Add();
              }

            case 9:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              a1[132] |= 8u;
              while (1)
              {
                LOBYTE(v96) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v96 & 0x7F) << v22;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v24;
              }

LABEL_149:
              v81 = 80;
              goto LABEL_175;
          }
        }
      }

      else if (v14 > 3)
      {
        switch(v14)
        {
          case 4:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            a1[132] |= 4u;
            while (1)
            {
              LOBYTE(v96) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v96 & 0x7F) << v48;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_165;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v50;
            }

LABEL_165:
            v81 = 72;
            goto LABEL_175;
          case 5:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            a1[132] |= 2u;
            while (1)
            {
              LOBYTE(v96) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v96 & 0x7F) << v75;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_174;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v77;
            }

LABEL_174:
            v81 = 64;
            goto LABEL_175;
          case 6:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            a1[132] |= 0x80u;
            while (1)
            {
              LOBYTE(v96) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v96 & 0x7F) << v28;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_153;
              }
            }

            if ([a2 hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v30;
            }

LABEL_153:
            v82 = 128;
LABEL_170:
            *&a1[v82] = v34;
            goto LABEL_176;
        }
      }

      else
      {
        switch(v14)
        {
          case 1:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            a1[132] |= 0x20u;
            while (1)
            {
              LOBYTE(v96) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v96 & 0x7F) << v41;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_161;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v43;
            }

LABEL_161:
            v81 = 96;
            goto LABEL_175;
          case 2:
            if (v13 != 2)
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
              while (1)
              {
                LOBYTE(v96) = 0;
                v87 = [a2 position] + 1;
                if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
                {
                  v89 = [a2 data];
                  [v89 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v86 |= (v96 & 0x7F) << v84;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                v11 = v85++ >= 9;
                if (v11)
                {
                  goto LABEL_197;
                }
              }

LABEL_196:
              [a2 hasError];
LABEL_197:
              PBRepeatedInt32Add();
              goto LABEL_176;
            }

            v96 = 0;
            v97 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v61 = [a2 position];
              if (v61 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v62 = 0;
              v63 = 0;
              v64 = 0;
              while (1)
              {
                v98 = 0;
                v65 = [a2 position] + 1;
                if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
                {
                  v67 = [a2 data];
                  [v67 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v64 |= (v98 & 0x7F) << v62;
                if ((v98 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                v11 = v63++ >= 9;
                if (v11)
                {
                  goto LABEL_111;
                }
              }

              [a2 hasError];
LABEL_111:
              PBRepeatedInt32Add();
            }

LABEL_141:
            PBReaderRecallMark();
            goto LABEL_176;
          case 3:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            a1[132] |= 1u;
            while (1)
            {
              LOBYTE(v96) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v96 & 0x7F) << v15;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_145;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_145:
            v81 = 56;
LABEL_175:
            *&a1[v81] = v21;
            goto LABEL_176;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_176:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_23272DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t EnvLoad(void *a1, char *a2)
{
  result = GenOpen(a1, a2, "r");
  if (result)
  {
    v5 = result;
    SetFastLoad(a1, result);
    v6 = CopyString(a1, *(*(a1[6] + 336) + 64));
    EnvSetParsingFileName(a1, a2);
    ConstructsFromLogicalName = LoadConstructsFromLogicalName(a1, v5);
    EnvSetParsingFileName(a1, v6);
    DeleteString(a1, v6);
    SetFastLoad(a1, 0);
    GenClose(a1, v5);
    if (ConstructsFromLogicalName)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t EnvSetParsingFileName(uint64_t result, char *__s)
{
  v2 = *(*(result + 48) + 336);
  if (*(v2 + 144))
  {
    v4 = result;
    if (__s)
    {
      v5 = strlen(__s);
      v6 = genalloc(v4, v5 + 1);
      result = genstrcpy(v6, __s);
      v2 = *(*(v4 + 48) + 336);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 64);
    if (v7)
    {
      v8 = strlen(*(v2 + 64));
      result = genfree(v4, v7, v8 + 1);
      v2 = *(*(v4 + 48) + 336);
    }

    *(v2 + 64) = v6;
  }

  return result;
}

uint64_t LoadConstructsFromLogicalName(void *a1, char *a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 1;
  CreateErrorCaptureRouter(a1);
  v4 = SetLineCount(a1, 1);
  v5 = a1[6];
  v6 = *(v5 + 368);
  v7 = *(v6 + 16);
  *(v6 + 16) = a2;
  if (*(*(*(v5 + 440) + 112) + 2))
  {
    SetHaltExecution(a1, 0);
  }

  SetEvaluationError(a1, 0);
  v8 = *(a1[6] + 440);
  v9 = *(v8 + 112);
  v13[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v13[1] = v9;
  *(v8 + 112) = v13;
  GetToken(a1, a2, &v19);
  if (FindConstructBeginning(a1, a2, &v19, 0, &v18) && !GetHaltExecution(a1))
  {
    while (1)
    {
      FlushPPBuffer(a1);
      if (ParseConstruct(a1, *(v20 + 24), a2) == 1)
      {
        EnvPrintRouter(a1, "werror", "\nERROR:\n");
        PPBuffer = GetPPBuffer(a1);
        PrintInChunks(a1, "werror", PPBuffer);
        EnvPrintRouter(a1, "werror", "\n");
        FlushParsingMessages(a1);
        v18 = 0;
        v11 = 1;
      }

      else
      {
        FlushParsingMessages(a1);
        v11 = 0;
      }

      GetToken(a1, a2, &v19);
      if (!FindConstructBeginning(a1, a2, &v19, v11, &v18))
      {
        break;
      }

      ++*(v20 + 8);
      CleanCurrentGarbageFrame(a1, 0);
      CallPeriodicTasks(a1);
      YieldTime(a1);
      DecrementSymbolCount(a1, v20);
      if (GetHaltExecution(a1))
      {
        goto LABEL_12;
      }
    }

    CleanCurrentGarbageFrame(a1, 0);
    CallPeriodicTasks(a1);
    YieldTime(a1);
  }

LABEL_12:
  if (EnvGetWatchItem(a1, "compilations") != 1 && GetPrintWhileLoading(a1))
  {
    EnvPrintRouter(a1, "wdialog", "\n");
  }

  DestroyPPBuffer(a1);
  RestorePriorGarbageFrame(a1, v13, v9, 0);
  CallPeriodicTasks(a1);
  SetLineCount(a1, v4);
  *(*(a1[6] + 368) + 16) = v7;
  FlushParsingMessages(a1);
  DeleteErrorCaptureRouter(a1);
  return v18;
}

uint64_t EnvSetErrorFileName(uint64_t result, char *__s)
{
  v2 = *(*(result + 48) + 336);
  if (*(v2 + 144))
  {
    v4 = result;
    if (__s)
    {
      v5 = strlen(__s);
      v6 = genalloc(v4, v5 + 1);
      result = genstrcpy(v6, __s);
      v2 = *(*(v4 + 48) + 336);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 72);
    if (v7)
    {
      v8 = strlen(*(v2 + 72));
      result = genfree(v4, v7, v8 + 1);
      v2 = *(*(v4 + 48) + 336);
    }

    *(v2 + 72) = v6;
  }

  return result;
}

uint64_t EnvSetWarningFileName(uint64_t result, char *__s)
{
  v2 = *(*(result + 48) + 336);
  if (*(v2 + 144))
  {
    v4 = result;
    if (__s)
    {
      v5 = strlen(__s);
      v6 = genalloc(v4, v5 + 1);
      result = genstrcpy(v6, __s);
      v2 = *(*(v4 + 48) + 336);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 80);
    if (v7)
    {
      v8 = strlen(*(v2 + 80));
      result = genfree(v4, v7, v8 + 1);
      v2 = *(*(v4 + 48) + 336);
    }

    *(v2 + 80) = v6;
  }

  return result;
}

uint64_t CreateErrorCaptureRouter(uint64_t result)
{
  v1 = *(*(result + 48) + 336);
  if (*(v1 + 144))
  {
    v2 = *(v1 + 104);
    if (!v2)
    {
      v3 = result;
      result = EnvAddRouter(result, "error-capture", 40, FindError, PrintError, 0, 0, 0);
      v1 = *(*(v3 + 48) + 336);
      v2 = *(v1 + 104);
    }

    *(v1 + 104) = v2 + 1;
  }

  return result;
}

uint64_t FindConstructBeginning(uint64_t a1, char *a2, unsigned __int16 *a3, int a4, _DWORD *a5)
{
  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = *a3;
    if (v12 == 170)
    {
      v10 = 1;
      goto LABEL_11;
    }

    if (v12 == 172)
    {
      return 0;
    }

    if (v10 == 1 && v12 == 2 && FindConstruct(a1, *(*(a3 + 1) + 24)))
    {
      return 1;
    }

    v10 = 0;
    if (v11)
    {
      v11 = 0;
      if (!a4)
      {
        *a5 = 0;
        a4 = 1;
        PrintErrorID(a1, "CSTRCPSR", 1, 1);
        EnvPrintRouter(a1, "werror", "Expected the beginning of a construct.\n");
        v10 = 0;
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_11:
    GetToken(a1, a2, a3);
  }
}

uint64_t ParseConstruct(void *a1, char *a2, uint64_t a3)
{
  Construct = FindConstruct(a1, a2);
  if (!Construct)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = Construct;
  v7 = *(a1[6] + 440);
  v8 = *(v7 + 112);
  v14[0] = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v14[1] = v8;
  *(v7 + 112) = v14;
  HaltExecution = GetHaltExecution(a1);
  SetEvaluationError(a1, 0);
  SetHaltExecution(a1, 0);
  ClearParsedBindNames(a1);
  v10 = PushRtnBrkContexts(a1);
  v11 = a1[6];
  *(*(v11 + 360) + 80) = 0;
  *(*(v11 + 336) + 44) = 1;
  v12 = (*(v6 + 16))(a1, a3, v10);
  *(*(a1[6] + 336) + 44) = 0;
  PopRtnBrkContexts(a1);
  ClearParsedBindNames(a1);
  SetPPBufferStatus(a1, 0);
  SetHaltExecution(a1, HaltExecution);
  RestorePriorGarbageFrame(a1, v14, v8, 0);
  CallPeriodicTasks(a1);
  return v12;
}

uint64_t FlushParsingMessages(uint64_t result)
{
  v1 = *(*(result + 48) + 336);
  v2 = v1[18];
  if (v2)
  {
    v3 = result;
    v4 = v1[6];
    if (v4)
    {
      v2(result, v1[9], 0, v4, v1[11]);
      v1 = *(*(v3 + 48) + 336);
    }

    v5 = v1[7];
    if (v5)
    {
      (v1[18])(v3, v1[10], v5, 0, v1[12]);
    }

    EnvSetErrorFileName(v3, 0);
    v6 = *(v3 + 48);
    v7 = *(v6 + 336);
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = strlen(*(v7 + 48));
      genfree(v3, v8, v9 + 1);
      v6 = *(v3 + 48);
      v7 = *(v6 + 336);
    }

    *(v7 + 48) = 0;
    v10 = *(v6 + 336);
    *(v10 + 112) = 0;
    *(v10 + 120) = 0;
    result = EnvSetWarningFileName(v3, 0);
    v11 = *(v3 + 48);
    v12 = *(v11 + 336);
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = strlen(*(v12 + 56));
      result = genfree(v3, v13, v14 + 1);
      v11 = *(v3 + 48);
      v12 = *(v11 + 336);
    }

    *(v12 + 56) = 0;
    v15 = *(v11 + 336);
    *(v15 + 128) = 0;
    *(v15 + 136) = 0;
  }

  return result;
}

uint64_t DeleteErrorCaptureRouter(uint64_t result)
{
  v1 = *(*(result + 48) + 336);
  if (*(v1 + 144))
  {
    v2 = *(v1 + 104) - 1;
    *(v1 + 104) = v2;
    if (!v2)
    {
      return EnvDeleteRouter(result, "error-capture");
    }
  }

  return result;
}

uint64_t PrintError(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "werror"))
  {
    v6 = 112;
    v7 = 120;
    v8 = 48;
    goto LABEL_5;
  }

  if (!strcmp(__s1, "wwarning"))
  {
    v6 = 128;
    v7 = 136;
    v8 = 56;
LABEL_5:
    *(*(*(a1 + 48) + 336) + v8) = AppendToString(a1, a3, *(*(*(a1 + 48) + 336) + v8), (*(*(a1 + 48) + 336) + v7), (*(*(a1 + 48) + 336) + v6));
  }

  EnvDeactivateRouter(a1, "error-capture");
  EnvPrintRouter(a1, __s1, a3);
  EnvActivateRouter(a1, "error-capture");
  return 1;
}

uint64_t *GetConstructNameAndComment(uint64_t a1, char *a2, unsigned __int16 *a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t), unsigned int (*a6)(uint64_t, uint64_t), char *a7, int a8, int a9, int a10, int a11)
{
  GetToken(a1, a2, a3);
  if (*a3 != 2)
  {
    PrintErrorID(a1, "CSTRCPSR", 2, 1);
    EnvPrintRouter(a1, "werror", "Missing name for ");
    EnvPrintRouter(a1, "werror", a4);
    v26 = " construct\n";
    v27 = a1;
    goto LABEL_9;
  }

  v42 = a7;
  ConstructName = *(a3 + 1);
  ModuleSeparator = FindModuleSeparator(ConstructName[3]);
  if (!ModuleSeparator)
  {
    v41 = a8;
    CurrentModule = EnvGetCurrentModule(a1);
    if (a10)
    {
      PPBackup(a1);
      ConstructNameString = EnvGetConstructNameString(a1, CurrentModule);
      SavePPBuffer(a1, ConstructNameString);
      SavePPBuffer(a1, "::");
      SavePPBuffer(a1, ConstructName[3]);
    }

    goto LABEL_12;
  }

  if (!a10)
  {
    v29 = "module specifier";
LABEL_19:
    SyntaxErrorMessage(a1, v29);
    return 0;
  }

  v21 = ModuleSeparator;
  ModuleName = ExtractModuleName(a1, ModuleSeparator, ConstructName[3]);
  if (!ModuleName)
  {
    v29 = "construct name";
    goto LABEL_19;
  }

  v23 = ModuleName;
  v41 = a8;
  Defmodule = EnvFindDefmodule(a1, ModuleName[3]);
  if (!Defmodule)
  {
    CantFindItemErrorMessage(a1, "defmodule", v23[3]);
    return 0;
  }

  CurrentModule = Defmodule;
  EnvSetCurrentModule(a1, Defmodule);
  ConstructName = ExtractConstructName(a1, v21, ConstructName[3]);
  if (!ConstructName)
  {
    SyntaxErrorMessage(a1, "construct name");
    return ConstructName;
  }

LABEL_12:
  if (FindImportExportConflict(a1, a4, CurrentModule, ConstructName[3]))
  {
    ImportExportConflictMessage(a1, a4, ConstructName[3], 0, 0);
    return 0;
  }

  if (a5)
  {
    v30 = v41;
    if (!*(*(*(a1 + 48) + 336) + 40))
    {
      v33 = a5(a1, ConstructName[3]);
      if (v33)
      {
        if (!a6 || a6(a1, v33))
        {
          v31 = 0;
          goto LABEL_28;
        }

        PrintErrorID(a1, "CSTRCPSR", 4, 1);
        EnvPrintRouter(a1, "werror", "Cannot redefine ");
        EnvPrintRouter(a1, "werror", a4);
        EnvPrintRouter(a1, "werror", " ");
        EnvPrintRouter(a1, "werror", ConstructName[3]);
        v26 = " while it is in use.\n";
        v27 = a1;
LABEL_9:
        EnvPrintRouter(v27, "werror", v26);
        return 0;
      }
    }

    v31 = 1;
  }

  else
  {
    v31 = 1;
    v30 = v41;
  }

LABEL_28:
  if (EnvGetWatchItem(a1, "compilations") == 1 && GetPrintWhileLoading(a1) && !*(*(*(a1 + 48) + 336) + 40))
  {
    if (a11)
    {
      v37 = 1;
    }

    else
    {
      v37 = v31;
    }

    if (v37)
    {
      v38 = "wdialog";
      v39 = "Defining ";
    }

    else
    {
      PrintWarningID(a1, "CSTRCPSR", 1, 1);
      v38 = "wwarning";
      v39 = "Redefining ";
    }

    EnvPrintRouter(a1, v38, v39);
    EnvPrintRouter(a1, v38, a4);
    EnvPrintRouter(a1, v38, ": ");
    EnvPrintRouter(a1, v38, ConstructName[3]);
    if (v30)
    {
      v36 = "\n";
    }

    else
    {
      v36 = " ";
    }

    v35 = a1;
    v34 = v38;
  }

  else
  {
    if (!GetPrintWhileLoading(a1) || *(*(*(a1 + 48) + 336) + 40))
    {
      goto LABEL_45;
    }

    v34 = "wdialog";
    v35 = a1;
    v36 = v42;
  }

  EnvPrintRouter(v35, v34, v36);
LABEL_45:
  GetToken(a1, a2, a3);
  v40 = *a3;
  if (a9 && v40 == 3)
  {
    PPBackup(a1);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, *(a3 + 2));
    GetToken(a1, a2, a3);
    v40 = *a3;
  }

  if (v40 != 171)
  {
    PPBackup(a1);
    SavePPBuffer(a1, "\n   ");
    SavePPBuffer(a1, *(a3 + 2));
  }

  return ConstructName;
}

uint64_t ImportExportConflictMessage(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  PrintErrorID(a1, "CSTRCPSR", 3, 1);
  EnvPrintRouter(a1, "werror", "Cannot define ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " ");
  EnvPrintRouter(a1, "werror", a3);
  EnvPrintRouter(a1, "werror", " because of an import/export conflict");
  if (a4)
  {
    EnvPrintRouter(a1, "werror", " caused by the ");
    EnvPrintRouter(a1, "werror", a4);
    EnvPrintRouter(a1, "werror", " ");
    EnvPrintRouter(a1, "werror", a5);
  }

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t RemoveConstructFromModule(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (*(a2 + 16) + 8);
  do
  {
    v6 = v4;
    v4 = *v5;
    v5 = (*v5 + 32);
  }

  while (v4 != a2);
  if (!a2)
  {
    SystemError(result, "CSTRCPSR", 1);
    result = EnvExitRouter(v3, 1);
  }

  v7 = *(a2 + 32);
  if (v6)
  {
    *(v6 + 32) = v7;
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
    *(v8 + 8) = v7;
  }

  if (*(v8 + 16) == a2)
  {
    *(v8 + 16) = v6;
  }

  return result;
}

id SFGetQueueAttribute(unsigned int a1)
{
  if (SFGetQueueAttribute_onceToken != -1)
  {
    SFGetQueueAttribute_cold_1();
  }

  if (a1 > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_27898F2F8[a1];
  }

  return v2;
}

void __SFGetQueueAttribute_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = SFGetQueueAttribute_SFQueueAttributeBackground;
  SFGetQueueAttribute_SFQueueAttributeBackground = v0;

  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = SFGetQueueAttribute_SFQueueAttributeUtility;
  SFGetQueueAttribute_SFQueueAttributeUtility = v2;

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = SFGetQueueAttribute_SFQueueAttributeUserInitiated;
  SFGetQueueAttribute_SFQueueAttributeUserInitiated = v4;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
  v8 = SFGetQueueAttribute_SFQueueAttributeBackgroundAutorelease;
  SFGetQueueAttribute_SFQueueAttributeBackgroundAutorelease = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
  v11 = SFGetQueueAttribute_SFQueueAttributeUtilityAutorelease;
  SFGetQueueAttribute_SFQueueAttributeUtilityAutorelease = v10;

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
  v13 = SFGetQueueAttribute_SFQueueAttributeUserInitiatedAutorelease;
  SFGetQueueAttribute_SFQueueAttributeUserInitiatedAutorelease = v12;
}

id SFGetStandardQueue(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (SFGetStandardQueue_pred != -1)
  {
    SFGetStandardQueue_cold_1();
  }

  v2 = 0;
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        v3 = SFGetStandardQueue_SFTargetQueueWiFiShim;
      }

      else
      {
        if (a1 != 6)
        {
          goto LABEL_21;
        }

        v3 = SFGetStandardQueue_SFTargetQueueNAEPriority;
      }
    }

    else if (a1 == 3)
    {
      v3 = SFGetStandardQueue_SFTargetQueueNAE;
    }

    else
    {
      v3 = SFGetStandardQueue_SFTargetQueueService;
    }

    goto LABEL_20;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = SFGetStandardQueue_SFTargetQueueFlowHandling;
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      v3 = SFGetStandardQueue_SFTargetQueueNOI;
    }

LABEL_20:
    v2 = v3;
    goto LABEL_21;
  }

  v4 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "SFStandardQueue called for unknown identifier %d", v7, 8u);
  }

  v2 = 0;
LABEL_21:
  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

void __SFGetStandardQueue_block_invoke()
{
  v0 = SFGetQueueAttribute(0);
  v1 = dispatch_queue_create("com.apple.symptoms.standard.flows.queue", v0);
  v2 = SFGetStandardQueue_SFTargetQueueFlowHandling;
  SFGetStandardQueue_SFTargetQueueFlowHandling = v1;

  v3 = SFGetQueueAttribute(0);
  v4 = dispatch_queue_create("com.apple.symptoms.standard.network.queue", v3);
  v5 = SFGetStandardQueue_SFTargetQueueNAE;
  SFGetStandardQueue_SFTargetQueueNAE = v4;

  v6 = SFGetQueueAttribute(1u);
  v7 = dispatch_queue_create("com.apple.symptoms.standard.noi.queue", v6);
  v8 = SFGetStandardQueue_SFTargetQueueNOI;
  SFGetStandardQueue_SFTargetQueueNOI = v7;

  v9 = SFGetQueueAttribute(4u);
  v10 = dispatch_queue_create("com.apple.symptoms.standard.service.queue", v9);
  v11 = SFGetStandardQueue_SFTargetQueueService;
  SFGetStandardQueue_SFTargetQueueService = v10;

  v12 = SFGetQueueAttribute(4u);
  v13 = dispatch_queue_create("com.apple.symptoms.wifishim.queue", v12);
  v14 = SFGetStandardQueue_SFTargetQueueWiFiShim;
  SFGetStandardQueue_SFTargetQueueWiFiShim = v13;

  v17 = SFGetQueueAttribute(2u);
  v15 = dispatch_queue_create("com.apple.symptoms.priority.network.queue", v17);
  v16 = SFGetStandardQueue_SFTargetQueueNAEPriority;
  SFGetStandardQueue_SFTargetQueueNAEPriority = v15;
}

id SFGetAnalyticsQueue(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (SFGetAnalyticsQueue_pred != -1)
  {
    SFGetAnalyticsQueue_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v4 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "SFAnalyticsQueue called for unknown identifier %d", v7, 8u);
    }

    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a1 == 2)
  {
    v2 = SFGetAnalyticsQueue_SFAnalyticsQueueNAE;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v2 = SFGetAnalyticsQueue_SFAnalyticsQueueFlows;
LABEL_7:
    v3 = v2;
    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
LABEL_12:
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

void __SFGetAnalyticsQueue_block_invoke()
{
  v0 = SFGetQueueAttribute(3u);
  v1 = SFGetStandardQueue(1);
  v2 = dispatch_queue_create_with_target_V2("com.apple.symptoms.analytics.flows.queue", v0, v1);
  v3 = SFGetAnalyticsQueue_SFAnalyticsQueueFlows;
  SFGetAnalyticsQueue_SFAnalyticsQueueFlows = v2;

  attr = SFGetQueueAttribute(3u);
  v4 = SFGetStandardQueue(3);
  v5 = dispatch_queue_create_with_target_V2("com.apple.symptoms.analytics.nets.queue", attr, v4);
  v6 = SFGetAnalyticsQueue_SFAnalyticsQueueNAE;
  SFGetAnalyticsQueue_SFAnalyticsQueueNAE = v5;
}

const char *qos_string(int a1)
{
  if (a1 <= 16)
  {
    if (!a1)
    {
      return "Unspecified";
    }

    if (a1 != 5)
    {
      if (a1 == 9)
      {
        return "Background";
      }

      return "Unknown";
    }

    return "Maintenance";
  }

  else if (a1 > 24)
  {
    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return "UserInitiated";
      }

      return "Unknown";
    }

    return "UserInteractive";
  }

  else
  {
    if (a1 != 17)
    {
      if (a1 == 21)
      {
        return "Default";
      }

      return "Unknown";
    }

    return "Utility";
  }
}

uint64_t ParseDefrule(uint64_t a1, char *a2)
{
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SavePPBuffer(a1, "(defrule ");
  v4 = Bloaded(a1);
  v5 = *(a1 + 48);
  if (v4 == 1 && !*(*(v5 + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "defrule");
    return 1;
  }

  memset(v59, 0, sizeof(v59));
  v58 = 0;
  *(*(v5 + 128) + 60) = 0;
  ConstructNameAndComment = GetConstructNameAndComment(a1, a2, v59, "defrule", EnvFindDefruleInModule, EnvUndefrule, "*", 0, 1, 1, 0);
  if (!ConstructNameAndComment)
  {
    return 1;
  }

  v7 = ConstructNameAndComment;
  v8 = ParseRuleLHS(a1, a2, v59, ConstructNameAndComment[3], &v58);
  if (v58)
  {
    v9 = *(a1 + 48);
LABEL_6:
    ReturnPackedExpression(a1, *(*(v9 + 152) + 104));
    *(*(*(a1 + 48) + 152) + 104) = 0;
    return 1;
  }

  v10 = v8;
  ClearParsedBindNames(a1);
  *(*(*(a1 + 48) + 360) + 80) = 1;
  v60[0] = 0;
  v60[1] = 0;
  __s = 0;
  SavePPBuffer(a1, "\n   ");
  SetIndentDepth(a1, 3);
  v11 = GroupActions(a1, a2, v60, 1, 0, 0);
  if (!v11)
  {
LABEL_15:
    ReturnPackedExpression(a1, *(*(*(a1 + 48) + 152) + 104));
    *(*(*(a1 + 48) + 152) + 104) = 0;
    ReturnLHSParseNodes(a1, v10);
    return 1;
  }

  v12 = v11;
  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, __s);
  if (LOWORD(v60[0]) != 171)
  {
    SyntaxErrorMessage(a1, "defrule");
    ReturnExpression(a1, v12);
    goto LABEL_15;
  }

  v58 = 0;
  v13 = v10 != 0;
  if (v10 && *v10 == 152)
  {
    v14 = *(v10 + 192);
    v57 = CountParsedBindNames(a1);
    if (!v14)
    {
LABEL_78:
      v17 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v57 = CountParsedBindNames(a1);
    v14 = v10;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (2)
  {
    v56 = v16;
    while (1)
    {
      if (v13)
      {
        v19 = *v14;
        if (v19 == 150)
        {
          v18 = v14;
        }

        else if (v19 == 151)
        {
          v18 = *(v14 + 24);
        }
      }

      else
      {
        v18 = 0;
      }

      if (VariableAnalysis(a1, v18) || PostPatternAnalysis(a1, v18))
      {
        goto LABEL_75;
      }

      if (!v18)
      {
        goto LABEL_42;
      }

      v20 = 1;
      v21 = 1;
      v22 = v18;
LABEL_30:
      v23 = 0;
      do
      {
        if (*v22 == 150 && *(v22 + 80) == 1)
        {
          if ((*(v22 + 16) & 8) != 0)
          {
            if ((*(v18 + 16) & 8) != 0)
            {
              if (!v23)
              {
                v21 = 0;
                ++v20;
                v22 = *(v22 + 200);
                if (v22)
                {
                  goto LABEL_30;
                }

                goto LABEL_43;
              }

              v49 = 2;
              v50 = "Gaps may not exist between logical CEs\n";
            }

            else
            {
              v49 = 1;
              v50 = "Logical CEs must be placed first in a rule\n";
            }

            PrintErrorID(a1, "RULEPSR", v49, 1);
            EnvPrintRouter(a1, "werror", v50);
            v58 = 1;
            goto LABEL_76;
          }

          v23 = 1;
        }

        v22 = *(v22 + 200);
      }

      while (v22);
      if ((v21 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_42:
      v20 = 0;
LABEL_43:
      if (CheckRHSForConstraintErrors(a1, v12, v18))
      {
LABEL_75:
        v58 = 1;
LABEL_76:
        ReturnDefrule(a1, v17);
        goto LABEL_78;
      }

      v24 = CopyExpression(a1, v12);
      if (ReplaceProcVars(a1, "RHS of defrule", v24, 0, 0, ReplaceRHSVariable, v18))
      {
        v58 = 1;
        ReturnDefrule(a1, v17);
        ReturnExpression(a1, v24);
        goto LABEL_78;
      }

      if (!*(*(*(a1 + 48) + 336) + 40))
      {
        break;
      }

      ReturnExpression(a1, v24);
      if (v13)
      {
        v14 = *(v14 + 25);
      }

      v13 = 1;
      if (!v14)
      {
        goto LABEL_79;
      }
    }

    v54 = v14;
    v55 = v12;
    ExpressionInstall(a1, v24);
    v53 = PackExpression(a1, v24);
    ReturnExpression(a1, v24);
    v25 = ConstructJoins(a1, v20, v18, 1, 0, 1, 1);
    if (v18)
    {
      v51 = v17;
      v52 = v10;
      v26 = 0;
      v27 = v18;
      do
      {
        v26 += ExpressionComplexity(a1, *(v27 + 88)) + 1;
        for (i = *(v27 + 192); i; i = *(i + 192))
        {
          if ((*(i + 16) & 0x10) != 0)
          {
            for (j = *(i + 200); j; j = *(j + 192))
            {
              v26 += ExpressionComplexity(a1, *(j + 88));
            }
          }

          else
          {
            v26 += ExpressionComplexity(a1, *(i + 88));
          }
        }

        v27 = *(v27 + 200);
      }

      while (v27);
      v30 = v26 & 0x7FF;
      v17 = v51;
      v10 = v52;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a1 + 48);
    v32 = *(v31 + 472);
    v33 = *(*(v32 + 40) + 832);
    if (v33)
    {
      *(v32 + 32) = v33;
      *(*(*(v31 + 472) + 40) + 832) = **(*(v31 + 472) + 32);
      v34 = *(a1 + 48);
      v16 = *(*(v34 + 472) + 32);
    }

    else
    {
      v16 = genalloc(a1, 0x68uLL);
      v34 = *(a1 + 48);
    }

    v16[12] = 0;
    v16[4] = 0;
    v16[5] = 0;
    *v16 = v7;
    v16[1] = 0;
    ++v7[1];
    v16[9] = v53;
    v16[10] = 0;
    v35 = *(*(v34 + 152) + 92);
    *(v16 + 28) = v16[7] & 0x4000 | v30;
    *(v16 + 28) = v30 & 0xBFFF | ((*(*(*(a1 + 48) + 152) + 96) & 1) << 14);
    v16[8] = *(*(*(a1 + 48) + 152) + 104);
    *(v16 + 12) = v35;
    *(v16 + 13) = v57;
    ModuleItem = FindModuleItem(a1, "defrule");
    v16[2] = GetModuleItem(a1, 0, *(ModuleItem + 8));
    *(v25 + 136) = v16;
    v16[11] = v25;
    v14 = v54;
    do
    {
      if (v20 == (*v25 >> 10))
      {
        v16[10] = v25;
        *v25 |= 2u;
      }

      v25 = *(v25 + 120);
    }

    while (v25);
    if (v17)
    {
      v56[12] = v16;
    }

    else
    {
      ExpressionInstall(a1, v16[8]);
      v17 = v16;
    }

    v12 = v55;
    if (v13)
    {
      v14 = *(v54 + 25);
    }

    v13 = 1;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_79:
  ReturnExpression(a1, v12);
  ClearParsedBindNames(a1);
  ReturnLHSParseNodes(a1, v10);
  v9 = *(a1 + 48);
  if (v58)
  {
    goto LABEL_6;
  }

  v37 = *(*(v9 + 336) + 40);
  v38 = *(v9 + 152);
  if (v37)
  {
    ReturnPackedExpression(a1, *(v38 + 104));
    result = 0;
    *(*(*(a1 + 48) + 152) + 104) = 0;
  }

  else
  {
    *(v38 + 104) = 0;
    SavePPBuffer(a1, "\n");
    ConserveMemory = EnvGetConserveMemory(a1);
    v40 = 0;
    if (ConserveMemory != 1)
    {
      v40 = CopyPPBuffer(a1);
    }

    *(v17 + 8) = v40;
    v41 = FindModuleItem(a1, "defrule");
    v42 = GetModuleItem(a1, 0, *(v41 + 8));
    v43 = *(v17 + 8);
    v44 = v17;
    do
    {
      v44[1] = v43;
      v44[2] = v42;
      v44 = v44[12];
    }

    while (v44);
    v45 = *(v17 + 16);
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = (v46 + 32);
    }

    else
    {
      v47 = (v45 + 8);
    }

    *v47 = v17;
    *(v45 + 16) = v17;
    v48 = *(*(*(a1 + 48) + 128) + 60);
    if (v48)
    {
      EnvSetBreak(a1, v17);
      v48 = *(*(*(a1 + 48) + 128) + 60);
    }

    if ((v48 & 2) != 0 || EnvGetWatchItem(a1, "activations"))
    {
      EnvSetDefruleWatchActivations(a1, 1, v17);
    }

    if ((*(*(*(a1 + 48) + 128) + 60) & 4) != 0 || EnvGetWatchItem(a1, "rules"))
    {
      EnvSetDefruleWatchFirings(a1, 1, v17);
    }

    IncrementalReset(a1, v17);
    return 0;
  }

  return result;
}

unsigned __int16 *FindVariable(uint64_t a1, unsigned __int16 *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      if (*a2 == 150 && (a2[8] & 3) == 0 && *(a2 + 19) <= 1)
      {
        if (*(a2 + 1) == a1)
        {
          v2 = a2;
        }

        v4 = *(a2 + 24);
        if (v4)
        {
          break;
        }
      }

LABEL_27:
      a2 = *(a2 + 25);
      if (!a2)
      {
        return v2;
      }
    }

    while ((v4[8] & 0x10) != 0)
    {
      v5 = *(v4 + 25);
      if (v5)
      {
        v3 = v4;
LABEL_15:
        if (*v5 - 35 <= 1 && *(v5 + 1) == a1)
        {
          v2 = v5;
        }

        v6 = *(v5 + 24);
        if (v3)
        {
          v7 = v6 == 0;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          v4 = v3;
        }

        else
        {
          v4 = v5;
        }

        if (!v6)
        {
          v3 = 0;
        }

        goto LABEL_26;
      }

      v3 = 0;
LABEL_26:
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_27;
      }
    }

    v5 = v4;
    goto LABEL_15;
  }

  return v2;
}

uint64_t ReplaceRHSVariable(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v6 = *a2;
  if ((v6 - 35) >= 2)
  {
    if (v6 == 30)
    {
      v9 = *(a2 + 1);
      if (v9 == FindFunction(a1, "modify"))
      {
        v11 = "modify";
      }

      else
      {
        v10 = *(a2 + 1);
        if (v10 != FindFunction(a1, "duplicate"))
        {
          return 0;
        }

        v11 = "duplicate";
      }

      if (!UpdateModifyDuplicate(a1, a2, v11, a3))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    result = FindVariable(*(a2 + 1), a3);
    if (!result)
    {
      return result;
    }

    v8 = *(result + 48);
    if (v8)
    {
      (*(v8 + 72))(a1, a2, result, 0);
      return 1;
    }
  }

  return 0;
}

uint64_t ExpressionComplexity(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  do
  {
    v5 = *v2;
    if (v5 == 30)
    {
      v6 = v2[1];
      v7 = *(*(a1 + 48) + 360);
      if (v6 == *v7 || v6 == v7[4] || v6 == v7[1])
      {
        v4 = ExpressionComplexity(a1, v2[2]) + v4;
      }

      else
      {
        v4 = (v4 + 1);
      }
    }

    else
    {
      v8 = *(*(*(a1 + 48) + 352) + 8 * v5 + 24);
      if (v8)
      {
        v4 = v4 + (*(v8 + 8) >> 15);
      }
    }

    v2 = v2[3];
  }

  while (v2);
  return v4;
}

uint64_t DefruleBasicCommands(uint64_t a1)
{
  EnvAddResetFunction(a1, "defrule", ResetDefrules, 70);
  EnvAddResetFunction(a1, "defrule", ResetDefrulesPrime, 10);
  AddSaveFunction(a1, "defrule", SaveDefrules, 0);
  AddClearReadyFunction(a1, "defrule", ClearDefrulesReady, 0);
  EnvAddClearFunction(a1, "defrule", ClearDefrules, 0);
  AddWatchItem(a1, "rules", 0, *(*(a1 + 48) + 128) + 56, 70, DefruleWatchAccess, DefruleWatchPrint);
  EnvDefineFunction2(a1, "get-defrule-list", 109, GetDefruleListFunction, "GetDefruleListFunction", "01w");
  EnvDefineFunction2(a1, "undefrule", 118, UndefruleCommand, "UndefruleCommand", "11w");
  EnvDefineFunction2(a1, "defrule-module", 119, DefruleModuleFunction, "DefruleModuleFunction", "11w");
  EnvDefineFunction2(a1, "rules", 118, ListDefrulesCommand, "ListDefrulesCommand", "01w");
  EnvDefineFunction2(a1, "list-defrules", 118, ListDefrulesCommand, "ListDefrulesCommand", "01w");
  EnvDefineFunction2(a1, "ppdefrule", 118, PPDefruleCommand, "PPDefruleCommand", "11w");

  return DefruleBinarySetup(a1);
}

uint64_t ResetDefrules(void *a1)
{
  *(*(a1[6] + 128) + 16) = 1;
  EnvClearFocusStack(a1);
  Defmodule = EnvFindDefmodule(a1, "MAIN");
  result = EnvFocus(a1, Defmodule);
  v4 = *(a1[6] + 128);
  v5 = *(v4 + 40);
  if (v5)
  {
    do
    {
      result = PosEntryRetractAlpha(a1, **(*(*(v5 + 8) + 64) + 16), 0);
      v5 = *(v5 + 16);
    }

    while (v5);
    v4 = *(a1[6] + 128);
  }

  for (i = *(v4 + 48); i; i = *(i + 16))
  {
    v7 = *(i + 8);
    if ((*v7 & 0xC) != 0 && (*v7 & 0x10) == 0)
    {
      v9 = **(*(v7 + 56) + 16);
      if (v9[3])
      {
        result = RemoveBlockedLink(v9);
      }

      v9[3] = v9;
      v10 = v9[7];
      if (v10)
      {
        result = PosEntryRetractBeta(a1, v9, v10, 0);
      }
    }
  }

  return result;
}

uint64_t ResetDefrulesPrime(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 128);
  v3 = *(v2 + 40);
  if (v3)
  {
    do
    {
      result = NetworkAssert(v1, **(*(*(v3 + 8) + 64) + 16), *(v3 + 8));
      v3 = *(v3 + 16);
    }

    while (v3);
    v2 = *(v1[6] + 128);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 8);
      if ((*v5 & 0xC) == 0 || (*v5 & 0x10) != 0)
      {
        goto LABEL_14;
      }

      v7 = **(*(v5 + 56) + 16);
      if (!*(v5 + 80))
      {
        goto LABEL_13;
      }

      result = EvaluateSecondaryNetworkTest(v1, **(*(v5 + 56) + 16), v5);
      if (result)
      {
        break;
      }

LABEL_14:
      v4 = *(v4 + 16);
      if (!v4)
      {
        return result;
      }
    }

    v5 = *(v4 + 8);
LABEL_13:
    *(v7 + 24) = 0;
    result = EPMDrive(v1, v7, v5, 0);
    goto LABEL_14;
  }

  return result;
}

uint64_t ClearDefrulesReady(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 144);
  if (*v1 || *(v1 + 92))
  {
    return 0;
  }

  EnvClearFocusStack(a1);
  result = EnvGetCurrentModule(a1);
  if (result)
  {
    result = 1;
    *(*(*(a1 + 48) + 128) + 16) = 1;
  }

  return result;
}

uint64_t ClearDefrules(uint64_t a1)
{
  Defmodule = EnvFindDefmodule(a1, "MAIN");

  return EnvFocus(a1, Defmodule);
}

uint64_t DefruleWatchAccess(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = EnvGetDefruleWatchActivations;
    v5 = EnvSetDefruleWatchActivations;
  }

  else
  {
    v4 = EnvGetDefruleWatchFirings;
    v5 = EnvSetDefruleWatchFirings;
  }

  return ConstructSetWatchAccess(a1, **(*(a1 + 48) + 128), a3, a4, v4, v5);
}

uint64_t EnvGetDefruleWatchActivations(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while ((*(a2 + 56) & 0x1000) == 0)
  {
    a2 = *(a2 + 96);
    if (!a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t EnvGetDefruleWatchFirings(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while ((*(a2 + 56) & 0x2000) == 0)
  {
    a2 = *(a2 + 96);
    if (!a2)
    {
      return 0;
    }
  }

  return 1;
}

void EnvSetDefruleWatchActivations(uint64_t a1, char a2, uint64_t a3)
{
  for (; a3; a3 = *(a3 + 96))
  {
    *(a3 + 56) = *(a3 + 56) & 0xEFFF | ((a2 & 1) << 12);
  }
}

void EnvSetDefruleWatchFirings(uint64_t a1, char a2, uint64_t a3)
{
  for (; a3; a3 = *(a3 + 96))
  {
    *(a3 + 56) = *(a3 + 56) & 0xDFFF | ((a2 & 1) << 13);
  }
}

uint64_t AddConstructToModule(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v2 + 32);
  }

  else
  {
    v3 = (v1 + 8);
  }

  *v3 = result;
  *(v1 + 16) = result;
  *(result + 32) = 0;
  return result;
}

uint64_t DeleteNamedConstruct(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (Bloaded(a1) == 1)
  {
    return 0;
  }

  v7 = (*(a3 + 24))(a1, a2);
  if (!v7)
  {
    v9 = *a2;
    if (v9 == 42)
    {
      if (!a2[1])
      {
        goto LABEL_11;
      }
    }

    else if (42 == v9)
    {
LABEL_11:
      (*(a3 + 80))(a1, 0);
      return 1;
    }

    return 0;
  }

  v8 = *(a3 + 80);

  return v8(a1, v7);
}

uint64_t FindNamedConstructInModuleOrImports(uint64_t a1, char *a2, char **a3)
{
  result = FindNamedConstructInModule(a1, a2, a3);
  if (!result)
  {
    if (!FindModuleSeparator(a2))
    {
      v7 = 0;
      result = FindImportedConstruct(a1, *a3, 0, a2, &v7, 1, 0);
      if (v7 < 2)
      {
        return result;
      }

      AmbiguousReferenceErrorMessage(a1, *a3, a2);
    }

    return 0;
  }

  return result;
}

uint64_t FindNamedConstructInModule(uint64_t a1, const char *a2, uint64_t a3)
{
  SaveCurrentModule(a1);
  ModuleAndConstructName = ExtractModuleAndConstructName(a1, a2);
  if (ModuleAndConstructName && (SymbolHN = FindSymbolHN(a1, ModuleAndConstructName)) != 0 && (v8 = SymbolHN, *(SymbolHN + 8)))
  {
    for (i = (*(a3 + 56))(a1, 0); ; i = (*(a3 + 56))(a1, v10))
    {
      v10 = i;
      if (!i || v8 == (*(a3 + 32))(i))
      {
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  RestoreCurrentModule(a1);
  return v10;
}

uint64_t UndefconstructCommand(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x277D85DE8];
  gensprintf(v15, "%s name", a3, a4, a5, a6, a7, a8, *a3);
  result = GetConstructName(a1, a2, v15);
  if (!result)
  {
    goto LABEL_10;
  }

  v12 = result;
  if (!(*(a3 + 24))(a1, result))
  {
    v13 = *v12;
    if (v13 == 42)
    {
      if (!v12[1])
      {
        goto LABEL_3;
      }
    }

    else if (42 == v13)
    {
      goto LABEL_3;
    }

    result = CantFindItemErrorMessage(a1, *a3, v12);
    goto LABEL_10;
  }

LABEL_3:
  result = DeleteNamedConstruct(a1, v12, a3);
  if (!result)
  {
    result = CantDeleteItemErrorMessage(a1, *a3, v12);
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPConstructCommand(uint64_t a1, char *a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  gensprintf(v14, "%s name", a3, a4, a5, a6, a7, a8, *a3);
  result = GetConstructName(a1, a2, v14);
  if (result)
  {
    v12 = result;
    result = PPConstruct(a1, result, "wdisplay", a3);
    if (!result)
    {
      result = CantFindItemErrorMessage(a1, *a3, v12);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPConstruct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 24))();
  if (result)
  {
    v8 = result;
    if ((*(a4 + 40))(a1, result))
    {
      v9 = (*(a4 + 40))(a1, v8);
      PrintInChunks(a1, a3, v9);
    }

    return 1;
  }

  return result;
}

uint64_t GetConstructModuleCommand(uint64_t a1, char *a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x277D85DE8];
  gensprintf(v16, "%s name", a3, a4, a5, a6, a7, a8, *a3);
  ConstructName = GetConstructName(a1, a2, v16);
  if (!ConstructName)
  {
    goto LABEL_5;
  }

  v12 = ConstructName;
  ConstructModule = GetConstructModule(a1, ConstructName, a3);
  if (!ConstructModule)
  {
    CantFindItemErrorMessage(a1, *a3, v12);
LABEL_5:
    result = EnvFalseSymbol(a1);
    goto LABEL_6;
  }

  result = *ConstructModule;
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *GetConstructModule(uint64_t a1, char *a2, char **a3)
{
  ModuleSeparator = FindModuleSeparator(a2);
  if (ModuleSeparator && (ModuleName = ExtractModuleName(a1, ModuleSeparator, a2)) != 0)
  {
    v8 = ModuleName[3];

    return EnvFindDefmodule(a1, v8);
  }

  else
  {
    v10 = 0;
    result = FindImportedConstruct(a1, *a3, 0, a2, &v10, 1, 0);
    if (result)
    {
      return *result[2];
    }
  }

  return result;
}

uint64_t Undefconstruct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!(*(a3 + 72))(a1))
    {
      return 0;
    }

    RemoveConstructFromModule(a1, a2);
    (*(a3 + 88))(a1, a2);
    v6 = *(a1 + 48);
    v7 = *(v6 + 440);
    if (!*(*(v7 + 112) + 2) || **(v6 + 320) || **(v6 + 352))
    {
      return 1;
    }

    v8 = 1;
    if (*(v7 + 16))
    {
      return v8;
    }

LABEL_22:
    CleanCurrentGarbageFrame(a1, 0);
    CallPeriodicTasks(a1);
    return v8;
  }

  v9 = (*(a3 + 56))(a1);
  if (v9)
  {
    v10 = v9;
    v8 = 1;
    do
    {
      v11 = (*(a3 + 56))(a1, v10);
      if ((*(a3 + 72))(a1, v10))
      {
        RemoveConstructFromModule(a1, v10);
        (*(a3 + 88))(a1, v10);
      }

      else
      {
        v12 = *a3;
        v13 = (*(a3 + 32))(v10);
        CantDeleteItemErrorMessage(a1, v12, *(v13 + 24));
        v8 = 0;
      }

      v10 = v11;
    }

    while (v11);
  }

  else
  {
    v8 = 1;
  }

  v14 = *(a1 + 48);
  v15 = *(v14 + 440);
  if (*(*(v15 + 112) + 2) && !**(v14 + 320) && !**(v14 + 352) && !*(v15 + 16))
  {
    goto LABEL_22;
  }

  return v8;
}

uint64_t SaveConstruct(uint64_t a1, uint64_t a2, FILE *a3, uint64_t a4)
{
  SaveCurrentModule(a1);
  EnvSetCurrentModule(a1, a2);
  v8 = (*(a4 + 56))(a1, 0);
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = (*(a4 + 40))(a1, v9);
      if (v10)
      {
        PrintInChunks(a1, a3, v10);
        EnvPrintRouter(a1, a3, "\n");
      }

      v9 = (*(a4 + 56))(a1, v9);
    }

    while (v9);
  }

  return RestoreCurrentModule(a1);
}

void GetConstructListFunction(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v8 = EnvArgCountCheck(a1, a2, 2u, 1);
  if (v8 == 1)
  {
    EnvRtnUnknown(a1, 1, &v12);
    if (WORD4(v12) == 2)
    {
      Defmodule = EnvFindDefmodule(a1, *(v13 + 24));
      if (Defmodule)
      {
LABEL_12:
        GetConstructList(a1, a3, a4, Defmodule);
        return;
      }

      v10 = *(v13 + 24);
      v11 = *v10;
      if (v11 == 42)
      {
        if (v10[1])
        {
          goto LABEL_10;
        }
      }

      else if (42 != v11)
      {
        goto LABEL_10;
      }

      Defmodule = 0;
      goto LABEL_12;
    }

LABEL_10:
    EnvSetMultifieldErrorValue(a1, a3);
    ExpectedTypeError1(a1, a2, 1, "defmodule name");
    return;
  }

  if (v8 != -1)
  {
    Defmodule = EnvGetCurrentModule(a1);
    goto LABEL_12;
  }

  EnvSetMultifieldErrorValue(a1, a3);
}

uint64_t GetConstructList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SaveCurrentModule(a1);
  v8 = a4;
  if (a4 || (v8 = EnvGetNextDefmodule(a1, 0)) != 0)
  {
    v9 = 0;
    v10 = 80;
    NextDefmodule = v8;
    do
    {
      EnvSetCurrentModule(a1, NextDefmodule);
      v12 = (*(a3 + 56))(a1, 0);
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        do
        {
          ++v9;
          v15 = (*(a3 + 32))(v13);
          v16 = strlen(*(v15 + 24));
          if (v16 > v14)
          {
            v14 = v16;
          }

          v13 = (*(a3 + 56))(a1, v13);
        }

        while (v13);
        v17 = v14 + 5;
      }

      else
      {
        v17 = 5;
      }

      ConstructNameString = EnvGetConstructNameString(a1, NextDefmodule);
      v19 = strlen(ConstructNameString);
      if (v17 + v19 > v10)
      {
        v10 = v17 + v19;
      }

      if (a4)
      {
        break;
      }

      NextDefmodule = EnvGetNextDefmodule(a1, NextDefmodule);
    }

    while (NextDefmodule);
    v20 = 0;
  }

  else
  {
    v9 = 0;
    v20 = 1;
    v10 = 80;
  }

  v32 = v10;
  v21 = genalloc(a1, v10);
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v9 - 1;
  Multifield = EnvCreateMultifield(a1, v9);
  *(a2 + 16) = Multifield;
  if ((v20 & 1) == 0)
  {
    v33 = Multifield + 2;
    v23 = 1;
    do
    {
      EnvSetCurrentModule(a1, v8);
      v24 = (*(a3 + 56))(a1, 0);
      if (v24)
      {
        v25 = v24;
        v26 = &v33[2 * v23];
        do
        {
          v27 = (*(a3 + 32))(v25);
          v28 = v27;
          *(v26 - 4) = 2;
          if (a4)
          {
            v29 = *(v27 + 24);
          }

          else
          {
            v30 = EnvGetConstructNameString(a1, v8);
            genstrcpy(v21, v30);
            genstrcat(v21, "::");
            genstrcat(v21, *(v28 + 24));
            v29 = v21;
          }

          *v26 = EnvAddSymbol(a1, v29);
          v26 += 2;
          ++v23;
          v25 = (*(a3 + 56))(a1, v25);
        }

        while (v25);
      }

      if (a4)
      {
        break;
      }

      v8 = EnvGetNextDefmodule(a1, v8);
    }

    while (v8);
  }

  genfree(a1, v21, v32);

  return RestoreCurrentModule(a1);
}

uint64_t ListConstructCommand(uint64_t a1, char *a2, uint64_t a3)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  result = EnvArgCountCheck(a1, a2, 2u, 1);
  if (result != -1)
  {
    if (result == 1)
    {
      EnvRtnUnknown(a1, 1, &v10);
      if (WORD4(v10) != 2)
      {
        return ExpectedTypeError1(a1, a2, 1, "defmodule name");
      }

      Defmodule = EnvFindDefmodule(a1, *(v11 + 24));
      if (!Defmodule)
      {
        v8 = *(v11 + 24);
        v9 = *v8;
        if (v9 == 42)
        {
          if (v8[1])
          {
            return ExpectedTypeError1(a1, a2, 1, "defmodule name");
          }
        }

        else if (42 != v9)
        {
          return ExpectedTypeError1(a1, a2, 1, "defmodule name");
        }

        Defmodule = 0;
      }
    }

    else
    {
      Defmodule = EnvGetCurrentModule(a1);
    }

    return ListConstruct(a1, a3, "wdisplay", Defmodule);
  }

  return result;
}

uint64_t ListConstruct(uint64_t a1, uint64_t a2, FILE *a3, uint64_t a4)
{
  SaveCurrentModule(a1);
  NextDefmodule = a4;
  if (a4 || (NextDefmodule = EnvGetNextDefmodule(a1, 0)) != 0)
  {
    v9 = 0;
    while (1)
    {
      if (!a4)
      {
        ConstructNameString = EnvGetConstructNameString(a1, NextDefmodule);
        EnvPrintRouter(a1, a3, ConstructNameString);
        EnvPrintRouter(a1, a3, ":\n");
      }

      EnvSetCurrentModule(a1, NextDefmodule);
      result = (*(a2 + 56))(a1, 0);
      if (result)
      {
        break;
      }

LABEL_14:
      if (!a4)
      {
        NextDefmodule = EnvGetNextDefmodule(a1, NextDefmodule);
        if (NextDefmodule)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v12 = result;
    while (*(*(*(a1 + 48) + 352) + 12) != 1)
    {
      v13 = (*(a2 + 32))(v12);
      if (v13)
      {
        v14 = v13;
        if (!a4)
        {
          EnvPrintRouter(a1, "wdisplay", "   ");
        }

        EnvPrintRouter(a1, a3, *(v14 + 24));
        EnvPrintRouter(a1, a3, "\n");
      }

      ++v9;
      result = (*(a2 + 56))(a1, v12);
      v12 = result;
      if (!result)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v9 = 0;
LABEL_19:
    PrintTally(a1, "wdisplay", v9, *a2, *(a2 + 8));

    return RestoreCurrentModule(a1);
  }

  return result;
}

uint64_t GetNextConstructItem(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = a2 + 32;
  }

  else
  {
    result = GetModuleItem(a1, 0, a3);
    if (!result)
    {
      return result;
    }

    v3 = result + 8;
  }

  return *v3;
}

uint64_t FreeConstructHeaderModule(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      result = (*(a3 + 88))(v5);
      v3 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t DoForAllConstructs(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), int a3, int a4, uint64_t a5)
{
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v11 = NextDefmodule;
    v12 = 0;
    while (1)
    {
      EnvSetCurrentModule(a1, v11);
      v13 = *(GetModuleItem(a1, v11, a3) + 8);
      if (v13)
      {
        break;
      }

LABEL_7:
      v11 = EnvGetNextDefmodule(a1, v11);
      ++v12;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    while (!a4 || GetHaltExecution(a1) != 1)
    {
      a2(a1, v13, a5);
      v13 = *(v13 + 32);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:
  RestoreCurrentModule(a1);
  return v12;
}

uint64_t DoForAllConstructsInModule(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), int a4, int a5, uint64_t a6)
{
  SaveCurrentModule(a1);
  EnvSetCurrentModule(a1, a2);
  for (i = *(GetModuleItem(a1, a2, a4) + 8); i; i = *(i + 32))
  {
    if (a5 && GetHaltExecution(a1) == 1)
    {
      break;
    }

    a3(a1, i, a6);
  }

  return RestoreCurrentModule(a1);
}

uint64_t InitializeConstructHeader(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  ModuleItem = FindModuleItem(a1, a2);
  result = GetModuleItem(a1, 0, *(ModuleItem + 8));
  *a3 = a4;
  a3[1] = 0;
  a3[2] = result;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

uint64_t SetConstructPPForm(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = result;
    v7 = strlen(*(a2 + 8));
    result = rm(v6, v5, v7 + 1);
  }

  *(a2 + 8) = a3;
  return result;
}

uint64_t ConstructWatchSupport(uint64_t a1, uint64_t a2, char *a3, FILE *a4, uint64_t a5, int a6, uint64_t a7, unsigned int (*a8)(uint64_t, uint64_t), void (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (a5)
  {
    v14 = a5;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v16 = 2;
    while (!EvaluateExpression(a1, v14, &v25))
    {
      if (WORD4(v25) != 2 || (v17 = LookupConstruct(a1, a2, *(v26 + 24), 1)) == 0)
      {
        ExpectedTypeError1(a1, a3, v16, *a2);
        return 0;
      }

      if (a6)
      {
        a9(a1, a7, v17);
      }

      else
      {
        ConstructPrintWatch(a1, a4, a2, v17, a8);
      }

      ++v16;
      v14 = *(v14 + 24);
      if (!v14)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    SaveCurrentModule(a1);
    NextDefmodule = EnvGetNextDefmodule(a1, 0);
    if (NextDefmodule)
    {
      v19 = NextDefmodule;
      do
      {
        EnvSetCurrentModule(a1, v19);
        if (!a6)
        {
          ConstructNameString = EnvGetConstructNameString(a1, v19);
          EnvPrintRouter(a1, a4, ConstructNameString);
          EnvPrintRouter(a1, a4, ":\n");
        }

        v21 = (*(a2 + 56))(a1, 0);
        if (v21)
        {
          v22 = v21;
          do
          {
            if (a6)
            {
              a9(a1, a7, v22);
            }

            else
            {
              EnvPrintRouter(a1, a4, "   ");
              ConstructPrintWatch(a1, a4, a2, v22, a8);
            }

            v22 = (*(a2 + 56))(a1, v22);
          }

          while (v22);
        }

        v19 = EnvGetNextDefmodule(a1, v19);
      }

      while (v19);
    }

    RestoreCurrentModule(a1);
    return 1;
  }
}

uint64_t LookupConstruct(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v10 = 0;
  v8 = *a2;
  result = FindImportedConstruct(a1, *a2, 0, a3, &v10, 1, 0);
  if (result)
  {
    if (v10 < 2)
    {
      return result;
    }

    AmbiguousReferenceErrorMessage(a1, v8, a3);
  }

  else if (a4 && FindModuleSeparator(a3))
  {
    return (*(a2 + 24))(a1, a3);
  }

  return 0;
}

uint64_t ConstructPrintWatch(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t))
{
  v9 = (*(a3 + 32))(a4);
  EnvPrintRouter(a1, a2, *(v9 + 24));
  if (a5(a1, a4))
  {
    v10 = " = on\n";
  }

  else
  {
    v10 = " = off\n";
  }

  return EnvPrintRouter(a1, a2, v10);
}

uint64_t PredicateFunctionDefinitions(uint64_t a1)
{
  EnvDefineFunction2(a1, "not", 98, NotFunction, "NotFunction", "11");
  EnvDefineFunction2(a1, "and", 98, AndFunction, "AndFunction", "2*");
  EnvDefineFunction2(a1, "or", 98, OrFunction, "OrFunction", "2*");
  EnvDefineFunction2(a1, "eq", 98, EqFunction, "EqFunction", "2*");
  EnvDefineFunction2(a1, "neq", 98, NeqFunction, "NeqFunction", "2*");
  EnvDefineFunction2(a1, "<=", 98, LessThanOrEqualFunction, "LessThanOrEqualFunction", "2*n");
  EnvDefineFunction2(a1, ">=", 98, GreaterThanOrEqualFunction, "GreaterThanOrEqualFunction", "2*n");
  EnvDefineFunction2(a1, "<", 98, LessThanFunction, "LessThanFunction", "2*n");
  EnvDefineFunction2(a1, ">", 98, GreaterThanFunction, "GreaterThanFunction", "2*n");
  EnvDefineFunction2(a1, "=", 98, NumericEqualFunction, "NumericEqualFunction", "2*n");
  EnvDefineFunction2(a1, "<>", 98, NumericNotEqualFunction, "NumericNotEqualFunction", "2*n");
  EnvDefineFunction2(a1, "!=", 98, NumericNotEqualFunction, "NumericNotEqualFunction", "2*n");
  EnvDefineFunction2(a1, "symbolp", 98, SymbolpFunction, "SymbolpFunction", "11");
  EnvDefineFunction2(a1, "wordp", 98, SymbolpFunction, "SymbolpFunction", "11");
  EnvDefineFunction2(a1, "stringp", 98, StringpFunction, "StringpFunction", "11");
  EnvDefineFunction2(a1, "lexemep", 98, LexemepFunction, "LexemepFunction", "11");
  EnvDefineFunction2(a1, "numberp", 98, NumberpFunction, "NumberpFunction", "11");
  EnvDefineFunction2(a1, "integerp", 98, IntegerpFunction, "IntegerpFunction", "11");
  EnvDefineFunction2(a1, "floatp", 98, FloatpFunction, "FloatpFunction", "11");
  EnvDefineFunction2(a1, "oddp", 98, OddpFunction, "OddpFunction", "11i");
  EnvDefineFunction2(a1, "evenp", 98, EvenpFunction, "EvenpFunction", "11i");
  EnvDefineFunction2(a1, "multifieldp", 98, MultifieldpFunction, "MultifieldpFunction", "11");
  EnvDefineFunction2(a1, "sequencep", 98, MultifieldpFunction, "MultifieldpFunction", "11");

  return EnvDefineFunction2(a1, "pointerp", 98, PointerpFunction, "PointerpFunction", "11");
}

BOOL NotFunction(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v1 = *(**(*(a1 + 48) + 352) + 16);
  if (!v1 || EvaluateExpression(a1, v1, &v6))
  {
    return 0;
  }

  v4 = v7;
  return v4 == EnvFalseSymbol(a1) && WORD4(v6) == 2;
}

uint64_t AndFunction(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v1 = *(**(*(a1 + 48) + 352) + 16);
  if (!v1)
  {
    return 1;
  }

  while (!EvaluateExpression(a1, v1, &v6))
  {
    v3 = v7;
    if (v3 == EnvFalseSymbol(a1) && WORD4(v6) == 2)
    {
      break;
    }

    v1 = *(v1 + 24);
    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t OrFunction(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v1 = *(**(*(a1 + 48) + 352) + 16);
  if (v1)
  {
    while (!EvaluateExpression(a1, v1, &v6))
    {
      v3 = v7;
      if (v3 != EnvFalseSymbol(a1) || WORD4(v6) != 2)
      {
        return 1;
      }

      v1 = *(v1 + 24);
      if (!v1)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t EqFunction(uint64_t a1)
{
  result = EnvRtnArgCount(a1);
  if (result)
  {
    v3 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = *(**(*(a1 + 48) + 352) + 16);
    EvaluateExpression(a1, v4, &v9);
    if (v3 < 2)
    {
      return 1;
    }

    else
    {
      v5 = v3 - 1;
      while (1)
      {
        v4 = *(v4 + 24);
        EvaluateExpression(a1, v4, &v6);
        if (WORD4(v6) != WORD4(v9))
        {
          break;
        }

        if (WORD4(v6) == 4)
        {
          result = MultifieldDOsEqual(&v6, &v9);
          if (!result)
          {
            return result;
          }
        }

        else if (v7 != v10)
        {
          return 0;
        }

        if (!--v5)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t NeqFunction(uint64_t a1)
{
  result = EnvRtnArgCount(a1);
  if (result)
  {
    v3 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = *(**(*(a1 + 48) + 352) + 16);
    EvaluateExpression(a1, v4, &v9);
    if (v3 >= 2)
    {
      for (i = v3 - 1; i; --i)
      {
        v4 = *(v4 + 24);
        EvaluateExpression(a1, v4, &v6);
        if (WORD4(v6) == WORD4(v9))
        {
          if (WORD4(v6) == 4)
          {
            if (MultifieldDOsEqual(&v6, &v9) == 1)
            {
              return 0;
            }
          }

          else if (v7 == v10)
          {
            return 0;
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t LessThanOrEqualFunction(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = GetNumericArgument(a1, *(v1 + 16), "<=", &v14, 0, 1);
    if (!result)
    {
      return result;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = 2;
      do
      {
        result = GetNumericArgument(a1, v5, "<=", &v11, 0, v6);
        if (!result)
        {
          return result;
        }

        v7 = WORD4(v11);
        if (WORD4(v14) == 1)
        {
          v8 = *(v15 + 24);
          if (WORD4(v11) == 1)
          {
            v9 = v12;
            if (v8 > *(v12 + 24))
            {
              return 0;
            }

LABEL_12:
            v7 = 1;
            goto LABEL_16;
          }

          v9 = v12;
          if (*(v12 + 24) < v8)
          {
            return 0;
          }
        }

        else
        {
          v10 = *(v15 + 24);
          v9 = v12;
          if (WORD4(v11) == 1)
          {
            if (v10 > *(v12 + 24))
            {
              return 0;
            }

            goto LABEL_12;
          }

          if (v10 > *(v12 + 24))
          {
            return 0;
          }
        }

LABEL_16:
        WORD4(v14) = v7;
        *&v15 = v9;
        ++v6;
        v5 = *(v5 + 24);
      }

      while (v5);
    }
  }

  return 1;
}

uint64_t GreaterThanOrEqualFunction(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = GetNumericArgument(a1, *(v1 + 16), ">=", &v14, 0, 1);
    if (!result)
    {
      return result;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = 2;
      do
      {
        result = GetNumericArgument(a1, v5, ">=", &v11, 0, v6);
        if (!result)
        {
          return result;
        }

        v7 = WORD4(v11);
        if (WORD4(v14) == 1)
        {
          v8 = *(v15 + 24);
          if (WORD4(v11) == 1)
          {
            v9 = v12;
            if (v8 < *(v12 + 24))
            {
              return 0;
            }

LABEL_12:
            v7 = 1;
            goto LABEL_16;
          }

          v9 = v12;
          if (*(v12 + 24) > v8)
          {
            return 0;
          }
        }

        else
        {
          v10 = *(v15 + 24);
          v9 = v12;
          if (WORD4(v11) == 1)
          {
            if (v10 < *(v12 + 24))
            {
              return 0;
            }

            goto LABEL_12;
          }

          if (v10 < *(v12 + 24))
          {
            return 0;
          }
        }

LABEL_16:
        WORD4(v14) = v7;
        *&v15 = v9;
        ++v6;
        v5 = *(v5 + 24);
      }

      while (v5);
    }
  }

  return 1;
}

uint64_t LessThanFunction(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = GetNumericArgument(a1, *(v1 + 16), "<", &v14, 0, 1);
    if (!result)
    {
      return result;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = 2;
      do
      {
        result = GetNumericArgument(a1, v5, "<", &v11, 0, v6);
        if (!result)
        {
          return result;
        }

        v7 = WORD4(v11);
        if (WORD4(v14) == 1)
        {
          v8 = *(v15 + 24);
          if (WORD4(v11) == 1)
          {
            v9 = v12;
            if (v8 >= *(v12 + 24))
            {
              return 0;
            }

LABEL_12:
            v7 = 1;
            goto LABEL_16;
          }

          v9 = v12;
          if (*(v12 + 24) <= v8)
          {
            return 0;
          }
        }

        else
        {
          v10 = *(v15 + 24);
          v9 = v12;
          if (WORD4(v11) == 1)
          {
            if (v10 >= *(v12 + 24))
            {
              return 0;
            }

            goto LABEL_12;
          }

          if (v10 >= *(v12 + 24))
          {
            return 0;
          }
        }

LABEL_16:
        WORD4(v14) = v7;
        *&v15 = v9;
        ++v6;
        v5 = *(v5 + 24);
      }

      while (v5);
    }
  }

  return 1;
}

uint64_t GreaterThanFunction(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = GetNumericArgument(a1, *(v1 + 16), ">", &v14, 0, 1);
    if (!result)
    {
      return result;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = 2;
      do
      {
        result = GetNumericArgument(a1, v5, ">", &v11, 0, v6);
        if (!result)
        {
          return result;
        }

        v7 = WORD4(v11);
        if (WORD4(v14) == 1)
        {
          v8 = *(v15 + 24);
          if (WORD4(v11) == 1)
          {
            v9 = v12;
            if (v8 <= *(v12 + 24))
            {
              return 0;
            }

LABEL_12:
            v7 = 1;
            goto LABEL_16;
          }

          v9 = v12;
          if (*(v12 + 24) >= v8)
          {
            return 0;
          }
        }

        else
        {
          v10 = *(v15 + 24);
          v9 = v12;
          if (WORD4(v11) == 1)
          {
            if (v10 <= *(v12 + 24))
            {
              return 0;
            }

            goto LABEL_12;
          }

          if (v10 <= *(v12 + 24))
          {
            return 0;
          }
        }

LABEL_16:
        WORD4(v14) = v7;
        *&v15 = v9;
        ++v6;
        v5 = *(v5 + 24);
      }

      while (v5);
    }
  }

  return 1;
}

uint64_t NumericEqualFunction(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  result = GetNumericArgument(a1, *(v1 + 16), "=", &v12, 0, 1);
  if (!result)
  {
    return result;
  }

  v5 = *(v2 + 24);
  if (!v5)
  {
    return 1;
  }

  for (i = 2; ; ++i)
  {
    result = GetNumericArgument(a1, v5, "=", &v9, 0, i);
    if (!result)
    {
      break;
    }

    if (WORD4(v12) == 1)
    {
      v7 = *(v13 + 24);
      if (WORD4(v9) == 1)
      {
        if (v7 != *(v10 + 24))
        {
          return 0;
        }
      }

      else if (*(v10 + 24) != v7)
      {
        return 0;
      }
    }

    else
    {
      if (WORD4(v9) == 1)
      {
        v8 = *(v10 + 24);
      }

      else
      {
        v8 = *(v10 + 24);
      }

      if (*(v13 + 24) != v8)
      {
        return 0;
      }
    }

    v5 = *(v5 + 24);
    if (!v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t NumericNotEqualFunction(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  result = GetNumericArgument(a1, *(v1 + 16), "<>", &v12, 0, 1);
  if (!result)
  {
    return result;
  }

  v5 = *(v2 + 24);
  if (!v5)
  {
    return 1;
  }

  for (i = 2; ; ++i)
  {
    result = GetNumericArgument(a1, v5, "<>", &v9, 0, i);
    if (!result)
    {
      break;
    }

    if (WORD4(v12) == 1)
    {
      v7 = *(v13 + 24);
      if (WORD4(v9) == 1)
      {
        if (v7 == *(v10 + 24))
        {
          return 0;
        }
      }

      else if (*(v10 + 24) == v7)
      {
        return 0;
      }
    }

    else
    {
      if (WORD4(v9) == 1)
      {
        v8 = *(v10 + 24);
      }

      else
      {
        v8 = *(v10 + 24);
      }

      if (*(v13 + 24) == v8)
      {
        return 0;
      }
    }

    v5 = *(v5 + 24);
    if (!v5)
    {
      return 1;
    }
  }

  return result;
}

BOOL SymbolpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "symbolp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) == 2;
}

BOOL StringpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "stringp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) == 3;
}

BOOL LexemepFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "lexemep", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return (WORD4(v3[0]) & 0xFFFE) == 2;
}

BOOL NumberpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "numberp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) < 2u;
}

BOOL IntegerpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "integerp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) == 1;
}

BOOL FloatpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "floatp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) == 0;
}

uint64_t OddpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "oddp", 0, 1) == -1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  result = EnvArgTypeCheck(a1, "oddp", 1, 1, &v3);
  if (result)
  {
    return *(v4 + 24) != ((*(v4 + 24) + (*(v4 + 24) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

uint64_t EvenpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "evenp", 0, 1) == -1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  result = EnvArgTypeCheck(a1, "evenp", 1, 1, &v3);
  if (result)
  {
    return *(v4 + 24) == ((*(v4 + 24) + (*(v4 + 24) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

BOOL MultifieldpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "multifieldp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) == 4;
}

BOOL PointerpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "pointerp", 0, 1) == -1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  EnvRtnUnknown(a1, 1, v3);
  return WORD4(v3[0]) == 5;
}

uint64_t SetupFactQuery(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x3Fu, 0x20uLL, 0);
  v2 = EnvAddSymbol(a1, "(QDS)");
  v3 = *(a1 + 48);
  **(v3 + 504) = v2;
  ++*(**(v3 + 504) + 8);
  EnvDefineFunction2(a1, "(query-fact)", 117, GetQueryFact, "GetQueryFact", 0);
  EnvDefineFunction2(a1, "(query-fact-slot)", 117, GetQueryFactSlot, "GetQueryFactSlot", 0);
  EnvDefineFunction2(a1, "any-factp", 98, AnyFacts, "AnyFacts", 0);
  AddFunctionParser(a1, "any-factp", FactParseQueryNoAction);
  EnvDefineFunction2(a1, "find-fact", 109, QueryFindFact, "QueryFindFact", 0);
  AddFunctionParser(a1, "find-fact", FactParseQueryNoAction);
  EnvDefineFunction2(a1, "find-all-facts", 109, QueryFindAllFacts, "QueryFindAllFacts", 0);
  AddFunctionParser(a1, "find-all-facts", FactParseQueryNoAction);
  EnvDefineFunction2(a1, "do-for-fact", 117, QueryDoForFact, "QueryDoForFact", 0);
  AddFunctionParser(a1, "do-for-fact", FactParseQueryAction);
  EnvDefineFunction2(a1, "do-for-all-facts", 117, QueryDoForAllFacts, "QueryDoForAllFacts", 0);
  AddFunctionParser(a1, "do-for-all-facts", FactParseQueryAction);
  EnvDefineFunction2(a1, "delayed-do-for-all-facts", 117, DelayedQueryDoForAllFacts, "DelayedQueryDoForAllFacts", 0);

  return AddFunctionParser(a1, "delayed-do-for-all-facts", FactParseQueryAction);
}

uint64_t GetQueryFact(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(**(v2 + 352) + 16);
  v4 = *(*(v3 + 8) + 24);
  v5 = *(v2 + 504);
  if (v4)
  {
    v6 = *(v5 + 16);
    if (v4 >= 2)
    {
      v7 = v4 + 1;
      do
      {
        v6 = *(v6 + 8);
        --v7;
      }

      while (v7 > 2);
    }
  }

  else
  {
    v6 = v5 + 8;
  }

  v8 = *v6;
  *(a2 + 8) = 6;
  *(a2 + 16) = *(*v8 + ((*(*(*(v3 + 24) + 8) + 24) << 32) >> 29));
  return result;
}

uint64_t GetQueryFactSlot(uint64_t a1, uint64_t a2)
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  v4 = *(a1 + 48);
  v5 = *(**(v4 + 352) + 16);
  v6 = *(*(v5 + 8) + 24);
  v7 = *(v4 + 504);
  if (v6)
  {
    v8 = *(v7 + 16);
    if (v6 >= 2)
    {
      v9 = v6 + 1;
      do
      {
        v8 = *(v8 + 8);
        --v9;
      }

      while (v9 > 2);
    }
  }

  else
  {
    v8 = v7 + 8;
  }

  v22 = 0;
  v10 = *(v5 + 24);
  v11 = *(**v8 + ((*(*(v10 + 8) + 24) << 32) >> 29));
  EvaluateExpression(a1, *(v10 + 24), &v23);
  if (WORD4(v23) != 2)
  {
    ExpectedTypeError1(a1, "get", 1, "symbol");
    return SetEvaluationError(a1, 1);
  }

  v12 = *(v11 + 32);
  if ((*(v12 + 56) & 1) == 0)
  {
    result = FindSlot(v12, v24, &v22);
    if (result)
    {
      v14 = v22 - 1;
      goto LABEL_17;
    }

    v17 = *(v24 + 24);
    v16 = a1;
    return SlotExistError(v16, v17, "fact-set query");
  }

  v15 = *(v24 + 24);
  result = strcmp(v15, "implied");
  if (result)
  {
    v16 = a1;
    v17 = v15;
    return SlotExistError(v16, v17, "fact-set query");
  }

  v14 = 0;
LABEL_17:
  v18 = v11 + 16 * v14;
  v19 = *(v18 + 128);
  *(a2 + 8) = v19;
  v20 = *(v18 + 136);
  *(a2 + 16) = v20;
  if (v19 == 4)
  {
    v21 = *(v20 + 8) - 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = v21;
  }

  return result;
}

uint64_t *AnyFacts(void *a1)
{
  v18 = 0;
  result = DetermineQueryTemplates(a1, *(*(**(a1[6] + 352) + 16) + 24), "any-factp", &v18);
  if (result)
  {
    v3 = result;
    PushQueryCore(a1);
    v4 = a1[6];
    v5 = *(v4 + 472);
    v6 = *(*(v5 + 40) + 448);
    if (v6)
    {
      *(v5 + 32) = v6;
      *(*(*(v4 + 472) + 40) + 448) = **(*(v4 + 472) + 32);
      v7 = a1[6];
      v8 = *(*(v7 + 472) + 32);
    }

    else
    {
      v8 = genalloc(a1, 0x38uLL);
      v7 = a1[6];
    }

    *(*(v7 + 504) + 8) = v8;
    v9 = 8 * v18;
    v10 = gm2(a1, v9);
    v11 = a1[6];
    **(*(v11 + 504) + 8) = v10;
    *(*(*(v11 + 504) + 8) + 8) = *(**(v11 + 352) + 16);
    v12 = TestForFirstInChain(a1, v3, 0);
    v13 = *(a1[6] + 504);
    *(v13 + 24) = 0;
    rm(a1, **(v13 + 8), v9);
    v14 = a1[6];
    *(*(v14 + 472) + 32) = *(*(v14 + 504) + 8);
    **(*(v14 + 472) + 32) = *(*(*(v14 + 472) + 40) + 448);
    *(*(*(v14 + 472) + 40) + 448) = *(*(v14 + 472) + 32);
    v15 = a1[6];
    *(*(v15 + 504) + 8) = **(*(v15 + 504) + 16);
    v16 = *(v15 + 504);
    v17 = *(v16 + 16);
    *(v16 + 16) = *(v17 + 8);
    *(*(v15 + 472) + 32) = v17;
    **(*(v15 + 472) + 32) = *(*(*(v15 + 472) + 40) + 128);
    *(*(*(v15 + 472) + 40) + 128) = *(*(v15 + 472) + 32);
    DeleteQueryTemplates(a1, v3);
    return v12;
  }

  return result;
}