void CommandLoop(void *a1)
{
  EnvPrintRouter(a1, "wclips", *(*(a1[6] + 320) + 40));
  SetHaltExecution(a1, 0);
  SetEvaluationError(a1, 0);
  CleanCurrentGarbageFrame(a1, 0);
  CallPeriodicTasks(a1);
  EnvPrintRouter(a1, "wclips", "CLIPS> ");
  v2 = a1[6];
  v3 = *(*(v2 + 320) + 56);
  if (v3)
  {
    v3(a1);
    v2 = a1[6];
  }

  v4 = *(v2 + 368);
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = MEMORY[0x277D85E00];
  while (1)
  {
    if (!BatchActive(a1) || (v6 = LLGetcBatch(a1, "stdin", 1), v6 == -1))
    {
      (*(*(a1[6] + 320) + 48))(a1);
    }

    else
    {
      ExpandCommandString(a1, v6);
    }

    if (GetHaltExecution(a1) == 1)
    {
      SetHaltExecution(a1, 0);
      SetEvaluationError(a1, 0);
      FlushCommandString(a1);
      fflush(*v5);
      EnvPrintRouter(a1, "wclips", "\n");
      EnvPrintRouter(a1, "wclips", "CLIPS> ");
      v7 = *(*(a1[6] + 320) + 56);
      if (v7)
      {
        v7(a1);
      }
    }

    ExecuteIfCommandComplete(a1);
  }
}

uint64_t PrintPrompt(uint64_t a1)
{
  result = EnvPrintRouter(a1, "wclips", "CLIPS> ");
  v3 = *(*(*(a1 + 48) + 320) + 56);
  if (v3)
  {

    return v3(a1);
  }

  return result;
}

uint64_t ExecuteIfCommandComplete(void *a1)
{
  if (!CompleteCommand(*(*(a1[6] + 320) + 16)))
  {
    return 0;
  }

  v2 = a1[6];
  v3 = *(v2 + 368);
  if (!*v3)
  {
    return 0;
  }

  if (!*(v3 + 8))
  {
    return 0;
  }

  v4 = *(*(v2 + 320) + 64);
  if (v4)
  {
    if (!v4(a1))
    {
      return 0;
    }
  }

  FlushPPBuffer(a1);
  SetPPBufferStatus(a1, 0);
  v5 = a1[6];
  v6 = *(v5 + 368);
  *v6 = 0;
  *(v6 + 8) = 0;
  v7 = 1;
  RouteCommand(a1, *(*(v5 + 320) + 16), 1);
  FlushPPBuffer(a1);
  SetHaltExecution(a1, 0);
  SetEvaluationError(a1, 0);
  FlushCommandString(a1);
  CleanCurrentGarbageFrame(a1, 0);
  CallPeriodicTasks(a1);
  EnvPrintRouter(a1, "wclips", "CLIPS> ");
  v8 = *(*(a1[6] + 320) + 56);
  if (v8)
  {
    v8(a1);
  }

  return v7;
}

uint64_t CommandLoopBatch(void *a1)
{
  SetHaltExecution(a1, 0);
  SetEvaluationError(a1, 0);
  CleanCurrentGarbageFrame(a1, 0);
  CallPeriodicTasks(a1);
  EnvPrintRouter(a1, "wclips", "CLIPS> ");
  v2 = a1[6];
  v3 = *(*(v2 + 320) + 56);
  if (v3)
  {
    v3(a1);
    v2 = a1[6];
  }

  v4 = *(v2 + 368);
  *v4 = 0;
  *(v4 + 8) = 1;

  return CommandLoopBatchDriver(a1);
}

uint64_t CommandLoopBatchDriver(void *a1)
{
  v2 = MEMORY[0x277D85E00];
  while (1)
  {
    if (*(*(a1[6] + 320) + 4) == 1)
    {
      CloseAllBatchSources(a1);
      *(*(a1[6] + 320) + 4) = 0;
    }

    result = BatchActive(a1);
    if (result != 1)
    {
      break;
    }

    result = LLGetcBatch(a1, "stdin", 1);
    if (result == -1)
    {
      break;
    }

    ExpandCommandString(a1, result);
    if (GetHaltExecution(a1) == 1)
    {
      SetHaltExecution(a1, 0);
      SetEvaluationError(a1, 0);
      FlushCommandString(a1);
      fflush(*v2);
      EnvPrintRouter(a1, "wclips", "\n");
      EnvPrintRouter(a1, "wclips", "CLIPS> ");
      v4 = *(*(a1[6] + 320) + 56);
      if (v4)
      {
        v4(a1);
      }
    }

    ExecuteIfCommandComplete(a1);
  }

  return result;
}

uint64_t CommandLoopOnceThenBatch(void *a1)
{
  result = ExecuteIfCommandComplete(a1);
  if (result)
  {

    return CommandLoopBatchDriver(a1);
  }

  return result;
}

BOOL RouteCommand(void *a1, char *__s, int a3)
{
  if (!__s)
  {
    return 0;
  }

  memset(v39, 0, sizeof(v39));
  v37 = 0;
  v38 = 0;
  v36 = 0;
  OpenStringSource(a1, "command", __s, 0);
  GetToken(a1, "command", &v36);
  if (v36 <= 0x24u)
  {
    if (((1 << v36) & 0x10F) != 0)
    {
      CloseStringSource(a1, "command");
      if (a3)
      {
        PrintAtom(a1, "stdout", v36, v37, v5, v6, v7, v8, v9);
LABEL_9:
        EnvPrintRouter(a1, "stdout", "\n");
        return 1;
      }

      return 1;
    }

    if (((1 << v36) & 0x1A00000000) != 0)
    {
      CloseStringSource(a1, "command");
      v10 = GenConstant(a1, v36, v37);
      EvaluateExpression(a1, v10, v39);
      v17 = a1[6];
      *(*(v17 + 472) + 32) = v10;
      **(*(v17 + 472) + 32) = *(*(*(v17 + 472) + 40) + 256);
      *(*(*(v17 + 472) + 40) + 256) = *(*(v17 + 472) + 32);
      if (a3)
      {
        PrintDataObject(a1, "stdout", v39, v16, v11, v12, v13, v14, v15);
        goto LABEL_9;
      }

      return 1;
    }
  }

  if (v36 != 170)
  {
    PrintErrorID(a1, "COMMLINE", 1, 0);
    v23 = "Expected a '(', constant, or variable\n";
LABEL_19:
    EnvPrintRouter(a1, "werror", v23);
    CloseStringSource(a1, "command");
    return 0;
  }

  GetToken(a1, "command", &v36);
  if (v36 != 2)
  {
    PrintErrorID(a1, "COMMLINE", 2, 0);
    v23 = "Expected a command.\n";
    goto LABEL_19;
  }

  v19 = *(v37 + 24);
  v20 = ParseConstruct(a1, v19, "command");
  if (v20 == -1)
  {
    v25 = a1[6];
    v26 = *(*(v25 + 336) + 20);
    v18 = 1;
    *(*(v25 + 320) + 32) = 1;
    v27 = Function2Parse(a1, "command", v19);
    *(*(a1[6] + 320) + 32) = 0;
    ClearParsedBindNames(a1);
    CloseStringSource(a1, "command");
    if (v27)
    {
      ExpressionInstall(a1, v27);
      v28 = *(a1[6] + 320);
      *v28 = 1;
      *(v28 + 8) = v27;
      EvaluateExpression(a1, v27, v39);
      v29 = a1[6];
      *(*(v29 + 320) + 8) = 0;
      **(v29 + 320) = 0;
      ExpressionDeinstall(a1, v27);
      ReturnExpression(a1, v27);
      *(*(a1[6] + 336) + 20) = v26;
      if (a3 && WORD4(v39[0]) != 175)
      {
        PrintDataObject(a1, "stdout", v39, v35, v30, v31, v32, v33, v34);
        EnvPrintRouter(a1, "stdout", "\n");
      }
    }

    else
    {
      v18 = 0;
      *(*(a1[6] + 336) + 20) = v26;
    }
  }

  else
  {
    v21 = v20;
    CloseStringSource(a1, "command");
    if (v21 == 1)
    {
      EnvPrintRouter(a1, "werror", "\nERROR:\n");
      PPBuffer = GetPPBuffer(a1);
      PrintInChunks(a1, "werror", PPBuffer);
      EnvPrintRouter(a1, "werror", "\n");
    }

    DestroyPPBuffer(a1);
    return v21 == 0;
  }

  return v18;
}

uint64_t CommandCompleteAndNotEmpty(uint64_t a1)
{
  result = CompleteCommand(*(*(*(a1 + 48) + 320) + 16));
  if (result)
  {
    v3 = *(*(a1 + 48) + 368);
    return *v3 && *(v3 + 8) != 0;
  }

  return result;
}

uint64_t SetEventFunction(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 320);
  result = *(v2 + 48);
  *(v2 + 48) = a2;
  return result;
}

const char *GetCommandCompletionString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return "";
  }

  v4 = *(a2 + a3 - 1);
  v5 = v4 > 0x22;
  v6 = (1 << v4) & 0x500003600;
  v7 = v5 || v6 == 0;
  result = "";
  if (!v7)
  {
    return result;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  memset(v13, 0, sizeof(v13));
  OpenTextSource(a1, "CommandCompletion", a2, 0, a3);
  *(*(*(a1 + 48) + 456) + 32) = 1;
  GetToken(a1, "CommandCompletion", v13);
  CopyToken(&v14, v13);
  while (LOWORD(v13[0]) != 172)
  {
    CopyToken(&v14, v13);
    GetToken(a1, "CommandCompletion", v13);
  }

  CloseStringSource(a1, "CommandCompletion");
  result = 0;
  *(*(*(a1 + 48) + 456) + 32) = 0;
  if (v14 > 0x20u)
  {
    if (v14 - 33 < 2)
    {
      return result;
    }

    if (v14 == 35 || v14 == 36)
    {
      return *(v15 + 24);
    }

    goto LABEL_19;
  }

  if (v14 == 2)
  {
    v9 = *(v15 + 24);
    v11 = *v9;
    v10 = v9 + 1;
    if (v11 == 91)
    {
      return v10;
    }

    else
    {
      return *(v15 + 24);
    }
  }

  if (v14 == 3)
  {
    v12 = strlen(*(v15 + 24));
    return GetCommandCompletionString(a1, *(v15 + 24), v12);
  }

  if (v14 != 8)
  {
LABEL_19:
    if (v14 >= 2u)
    {
      return "";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t InitializeEvaluationData(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x2Cu, 0x518uLL, DeallocateEvaluationData);

  return InstallExternalAddressType(a1, &off_284795088);
}

uint64_t PrintCAddress(uint64_t a1, FILE *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  EnvPrintRouter(a1, a2, "<Pointer-C-");
  gensprintf(v14, "%p", v6, v7, v8, v9, v10, v11, *(a3 + 24));
  EnvPrintRouter(a1, a2, v14);
  result = EnvPrintRouter(a1, a2, ">");
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

double NewCAddress(uint64_t a1, uint64_t a2)
{
  if (EnvRtnArgCount(a1) == 1)
  {
    *(a2 + 8) = 5;
    *(a2 + 16) = EnvAddExternalAddress(a1, 0, 0);
  }

  else
  {
    PrintErrorID(a1, "NEW", 1, 0);
    EnvPrintRouter(a1, "werror", "Function new expected no additional arguments for the C external language type.\n");
    *&result = 0x100000001;
    *(*(*(a1 + 48) + 352) + 8) = 0x100000001;
  }

  return result;
}

uint64_t DeallocateEvaluationData(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 352);
  if (*(v2 + 20) >= 1)
  {
    v3 = 0;
    do
    {
      *(*(v1 + 472) + 32) = *(v2 + 8 * v3 + 1224);
      **(*(v1 + 472) + 32) = *(*(*(v1 + 472) + 40) + 384);
      *(*(*(v1 + 472) + 40) + 384) = *(*(v1 + 472) + 32);
      ++v3;
      v1 = *(result + 48);
      v2 = *(v1 + 352);
    }

    while (v3 < *(v2 + 20));
  }

  return result;
}

uint64_t InstallExternalAddressType(uint64_t a1, _OWORD *a2)
{
  v4 = *(*(*(a1 + 48) + 352) + 20);
  if (v4 == 10)
  {
    SystemError(a1, "EVALUATN", 6);
    EnvExitRouter(a1, 1);
  }

  v5 = genalloc(a1, 0x30uLL);
  v7 = a2[1];
  v6 = a2[2];
  *v5 = *a2;
  v5[1] = v7;
  v5[2] = v6;
  v8 = *(*(a1 + 48) + 352);
  v9 = *(v8 + 20);
  *(v8 + 20) = v9 + 1;
  *(v8 + 8 * v9 + 1224) = v5;
  return v4;
}

uint64_t EvaluateExpression(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  memset(v37, 0, sizeof(v37));
  if (!a2)
  {
    *(a3 + 8) = 2;
    *(a3 + 16) = EnvFalseSymbol(a1);
    return *(*(*(a1 + 48) + 352) + 8);
  }

  v6 = *a2;
  if (*a2 <= 4u)
  {
    if (v6 >= 4)
    {
      if (v6 == 4)
      {
        *(a3 + 8) = 4;
        v7 = *(a2 + 1);
        *(a3 + 16) = *(v7 + 16);
        *(a3 + 24) = *(v7 + 24);
        return *(*(*(a1 + 48) + 352) + 8);
      }

LABEL_18:
      v13 = *(a1 + 48);
      v14 = *(v13 + 352);
      v15 = v14[v6 + 3];
      if (!v15)
      {
        SystemError(a1, "EVALUATN", 3);
        EnvExitRouter(a1, 1);
        v13 = *(a1 + 48);
        v14 = *(v13 + 352);
        v6 = *a2;
        v15 = v14[v6 + 3];
      }

      if ((*(v15 + 8) & 0x2000) == 0)
      {
        if (!*(v15 + 40))
        {
          SystemError(a1, "EVALUATN", 4);
          EnvExitRouter(a1, 1);
          v13 = *(a1 + 48);
          v14 = *(v13 + 352);
          v6 = *a2;
        }

        v16 = *v14;
        *v14 = a2;
        StartProfile(a1, v37, (*(*(v13 + 352) + 8 * v6 + 24) + 104), *(*(v13 + 120) + 68));
        (*(*(*(*(a1 + 48) + 352) + 8 * *a2 + 24) + 40))(a1, *(a2 + 1), a3);
        EndProfile(a1, v37);
        **(*(a1 + 48) + 352) = v16;
        return *(*(*(a1 + 48) + 352) + 8);
      }
    }

LABEL_24:
    *(a3 + 8) = v6;
    goto LABEL_25;
  }

  if (*a2 <= 0x22u)
  {
    if (v6 == 5)
    {
      goto LABEL_24;
    }

    if (v6 != 30)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 1);
    v9 = SetEnvironmentFunctionContext(a1, *(v8 + 72));
    StartProfile(a1, v37, (v8 + 64), *(*(*(a1 + 48) + 120) + 68));
    v10 = *(*(a1 + 48) + 352);
    v11 = *v10;
    *v10 = a2;
    switch(*(v8 + 16))
    {
      case 'a':
        v25 = 5;
        goto LABEL_49;
      case 'b':
        *(a3 + 8) = 2;
        v22 = *(v8 + 24);
        if (*(v8 + 52))
        {
          if (!(v22)(a1))
          {
LABEL_62:
            v34 = EnvFalseSymbol(a1);
LABEL_68:
            *(a3 + 16) = v34;
LABEL_69:
            EndProfile(a1, v37);
            SetEnvironmentFunctionContext(a1, v9);
            **(*(a1 + 48) + 352) = v11;
            return *(*(*(a1 + 48) + 352) + 8);
          }
        }

        else if (!v22())
        {
          goto LABEL_62;
        }

        v34 = EnvTrueSymbol(a1);
        goto LABEL_68;
      case 'c':
        v27 = *(v8 + 24);
        if (*(v8 + 52))
        {
          v28 = (v27)(a1);
        }

        else
        {
          v28 = v27();
        }

        __s1[0] = v28;
        __s1[1] = 0;
        *(a3 + 8) = 2;
        v34 = EnvAddSymbol(a1, __s1);
        goto LABEL_68;
      case 'd':
        *(a3 + 8) = 0;
        v23 = *(v8 + 24);
        if (*(v8 + 52))
        {
          (v23)(a1);
        }

        else
        {
          v24 = v23();
        }

        goto LABEL_59;
      case 'f':
        *(a3 + 8) = 0;
        v20 = *(v8 + 24);
        if (*(v8 + 52))
        {
          (v20)(a1);
        }

        else
        {
          v21 = v20();
        }

        v24 = v21;
LABEL_59:
        v34 = EnvAddDouble(a1, v24);
        goto LABEL_68;
      case 'g':
      case 'l':
        *(a3 + 8) = 1;
        v18 = *(v8 + 24);
        if (*(v8 + 52))
        {
          v19 = (v18)(a1);
        }

        else
        {
          v19 = v18();
        }

        v35 = v19;
        goto LABEL_67;
      case 'i':
        *(a3 + 8) = 1;
        v29 = *(v8 + 24);
        if (*(v8 + 52))
        {
          v30 = (v29)(a1);
        }

        else
        {
          v30 = v29();
        }

        v35 = v30;
LABEL_67:
        v34 = EnvAddLong(a1, v35);
        goto LABEL_68;
      case 'j':
      case 'k':
      case 'm':
      case 'n':
      case 'u':
        v12 = *(v8 + 24);
        if (*(v8 + 52))
        {
          v12(a1, a3);
        }

        else
        {
          (v12)(a3);
        }

        goto LABEL_69;
      case 's':
        v25 = 3;
        goto LABEL_49;
      case 'v':
        v26 = *(v8 + 24);
        if (*(v8 + 52))
        {
          (v26)(a1);
        }

        else
        {
          v26();
        }

        *(a3 + 8) = 175;
        goto LABEL_62;
      case 'w':
        v25 = 2;
LABEL_49:
        *(a3 + 8) = v25;
        v33 = *(v8 + 24);
        if (*(v8 + 52))
        {
          v34 = (v33)(a1);
        }

        else
        {
          v34 = v33();
        }

        goto LABEL_68;
      case 'y':
        *(a3 + 8) = 6;
        v31 = *(v8 + 24);
        if (*(v8 + 52))
        {
          v32 = (v31)(a1);
        }

        else
        {
          v32 = v31();
        }

        *(a3 + 16) = v32;
        if (!v32)
        {
          *(a3 + 16) = *(*(a1 + 48) + 24) + 8;
        }

        goto LABEL_69;
      default:
        SystemError(a1, "EVALUATN", 2);
        EnvExitRouter(a1, 1);
        goto LABEL_69;
    }
  }

  if ((v6 - 35) >= 2)
  {
    if (v6 == 40)
    {
      *(a3 + 8) = 40;
LABEL_25:
      *(a3 + 16) = *(a2 + 1);
      return *(*(*(a1 + 48) + 352) + 8);
    }

    goto LABEL_18;
  }

  if (!GetBoundVariable(a1, a3, *(a2 + 1)))
  {
    PrintErrorID(a1, "EVALUATN", 1, 0);
    EnvPrintRouter(a1, "werror", "Variable ");
    EnvPrintRouter(a1, "werror", *(*(a2 + 1) + 24));
    EnvPrintRouter(a1, "werror", " is unbound\n");
    *(a3 + 8) = 2;
    *(a3 + 16) = EnvFalseSymbol(a1);
    *(*(*(a1 + 48) + 352) + 8) = 0x100000001;
  }

  return *(*(*(a1 + 48) + 352) + 8);
}

uint64_t SetEvaluationError(uint64_t result, int a2)
{
  v2 = *(*(result + 48) + 352);
  *(v2 + 8) = a2;
  if (a2 == 1)
  {
    *(v2 + 12) = 1;
  }

  return result;
}

uint64_t InstallPrimitive(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(*(result + 48) + 352);
  v5 = a3;
  if (*(v4 + 8 * a3 + 24))
  {
    v6 = result;
    SystemError(result, "EVALUATN", 5);
    result = EnvExitRouter(v6, 1);
    v4 = *(*(v6 + 48) + 352);
  }

  *(v4 + 8 * v5 + 24) = a2;
  return result;
}

uint64_t ReturnValues(uint64_t result, uint64_t *a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = v4;
      v4 = v4[5];
      result = ValueDeinstall(v5, v6);
      if (a3)
      {
        if (*v6)
        {
          result = DecrementSymbolCount(v5, *v6);
        }
      }

      v7 = *(v5 + 48);
      *(*(v7 + 472) + 32) = v6;
      **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 384);
      *(*(*(v7 + 472) + 40) + 384) = *(*(v7 + 472) + 32);
    }

    while (v4);
  }

  return result;
}

uint64_t ValueDeinstall(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 4)
  {
    return MultifieldDeinstall(a1, *(a2 + 16));
  }

  else
  {
    return AtomDeinstall(a1, *(a2 + 8), *(a2 + 16));
  }
}

double PrintDataObject(uint64_t a1, FILE *__s2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a3 + 8);
  if (v12 > 0x28)
  {
    goto LABEL_10;
  }

  if (((1 << v12) & 0x1000000006FLL) != 0)
  {
LABEL_3:
    v13 = *(a3 + 16);

    PrintAtom(a1, __s2, v12, v13, a6, a7, a8, a9, a4);
    return result;
  }

  if (v12 == 4)
  {
    v15 = *(a3 + 16);
    v16 = *(a3 + 24);
    v17 = *(a3 + 32);

    PrintMultifield(a1, __s2, v15, v16, v17, 1, a8, a9, a4);
  }

  else
  {
LABEL_10:
    if (v12 == 175)
    {
      goto LABEL_3;
    }

    v18 = *(*(*(a1 + 48) + 352) + 8 * v12 + 24);
    if (v18 && ((v19 = *(v18 + 24)) != 0 || (v19 = *(v18 + 16)) != 0))
    {
      v20 = *(a3 + 16);

      v19();
    }

    else
    {
      EnvPrintRouter(a1, __s2, "<UnknownPrintType");
      PrintLongInteger(a1, __s2, *(a3 + 8), v21, v22, v23, v24, v25);
      EnvPrintRouter(a1, __s2, ">");
      *&result = 0x100000001;
      *(*(*(a1 + 48) + 352) + 8) = 0x100000001;
    }
  }

  return result;
}

double EnvSetMultifieldErrorValue(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 4;
  *(a2 + 16) = EnvCreateMultifield(a1, 0);
  *&result = 1;
  *(a2 + 24) = xmmword_232816AA0;
  return result;
}

uint64_t ValueInstall(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 4)
  {
    return MultifieldInstall(a1, *(a2 + 16));
  }

  else
  {
    return AtomInstall(a1, *(a2 + 8), *(a2 + 16));
  }
}

uint64_t AtomInstall(uint64_t result, int a2, uint64_t a3)
{
  if (a2 <= 3)
  {
    if ((a2 - 2) >= 2 && a2 >= 2)
    {
      goto LABEL_11;
    }

LABEL_15:
    ++*(a3 + 8);
    return result;
  }

  if (a2 > 32)
  {
    if (a2 == 175)
    {
      return result;
    }

    if (a2 == 33)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 == 4)
    {
      return MultifieldInstall(result, a3);
    }

    if (a2 == 5)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  v3 = *(*(*(result + 48) + 352) + 8 * a2 + 24);
  if (!v3)
  {
    return result;
  }

  if ((*(v3 + 8) & 0x4000) != 0)
  {
    goto LABEL_15;
  }

  v4 = *(v3 + 64);
  if (v4)
  {
    return v4();
  }

  return result;
}

uint64_t AtomDeinstall(uint64_t result, int a2, uint64_t a3)
{
  if (a2 <= 3)
  {
    if ((a2 - 2) >= 2)
    {
      if (!a2)
      {
        return DecrementFloatCount(result, a3);
      }

      if (a2 == 1)
      {
        return DecrementIntegerCount(result, a3);
      }

      goto LABEL_15;
    }

    return DecrementSymbolCount(result, a3);
  }

  if (a2 > 32)
  {
    if (a2 == 175)
    {
      return result;
    }

    if (a2 == 33)
    {
      return DecrementSymbolCount(result, a3);
    }
  }

  else
  {
    if (a2 == 4)
    {
      return MultifieldDeinstall(result, a3);
    }

    if (a2 == 5)
    {
      return DecrementExternalAddressCount(result, a3);
    }
  }

LABEL_15:
  v3 = *(*(*(result + 48) + 352) + 8 * a2 + 24);
  if (v3)
  {
    if ((*(v3 + 8) & 0x4000) != 0)
    {
      return DecrementBitMapCount(result, a3);
    }

    else
    {
      v4 = *(v3 + 56);
      if (v4)
      {
        return v4();
      }
    }
  }

  return result;
}

uint64_t EnvFunctionCall(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  memset(v9, 0, sizeof(v9));
  if (GetFunctionReference(a1, a2, v9))
  {
    return FunctionCall2(a1, v9, a3, a4);
  }

  PrintErrorID(a1, "EVALUATN", 2, 0);
  EnvPrintRouter(a1, "werror", "No function, generic function or deffunction of name ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " exists for external call.\n");
  return 1;
}

uint64_t GetFunctionReference(uint64_t a1, char *a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *a3 = 175;
  *(a3 + 8) = 0;
  result = LookupDeffunctionInScope(a1, a2);
  if (result)
  {
    v7 = 32;
  }

  else
  {
    result = LookupDefgenericInScope(a1, a2);
    if (result)
    {
      v7 = 31;
    }

    else
    {
      result = FindFunction(a1, a2);
      if (!result)
      {
        return result;
      }

      v7 = 30;
    }
  }

  *a3 = v7;
  *(a3 + 8) = result;
  return 1;
}

uint64_t FunctionCall2(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v14 = 0;
  v8 = *(a1 + 48);
  v9 = *(v8 + 440);
  if (*(*(v9 + 112) + 2) && (**(v8 + 320) || **(v8 + 352) || *(v9 + 16) || (CleanCurrentGarbageFrame(a1, 0), CallPeriodicTasks(a1), v8 = *(a1 + 48), *(*(*(v8 + 440) + 112) + 2))))
  {
    v10 = *(v8 + 352);
    *(v10 + 12) = 0;
  }

  else
  {
    v10 = *(v8 + 352);
  }

  *(v10 + 8) = 0;
  *(a4 + 8) = 2;
  *(a4 + 16) = EnvFalseSymbol(a1);
  v11 = ParseConstantArguments(a1, a3, &v14);
  if (v14 == 1)
  {
    return 1;
  }

  v13 = v11;
  *(a2 + 16) = v11;
  v14 = EvaluateExpression(a1, a2, a4);
  ReturnExpression(a1, v13);
  *(a2 + 16) = 0;
  return v14;
}

void *CopyDataObject(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a3 + 8);
  if (v5 == 4)
  {
    v7 = result;
    result = DuplicateMultifield(result, a2, a3);
    if (a4)
    {
      v8 = *(a2 + 16);

      return AddToMultifieldList(v7, v8);
    }
  }

  else
  {
    *(a2 + 8) = v5;
    *(a2 + 16) = *(a3 + 16);
  }

  return result;
}

__n128 TransferDataObjectValues(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *a1 = *a2;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void *ConvertValueToExpression(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  if (v4 != 4)
  {
    Function = *(a2 + 16);
LABEL_11:

    return GenConstant(a1, v4, Function);
  }

  v5 = *(a2 + 24);
  if (v5 > *(a2 + 32))
  {
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = v5 - 1;
  v9 = 16 * v5;
  do
  {
    result = GenConstant(v3, *(*(a2 + 16) + v9 + 24), *(*(a2 + 16) + v9 + 32));
    v11 = result;
    if (v6)
    {
      v6[3] = result;
      result = v7;
    }

    ++v8;
    v9 += 16;
    v6 = v11;
    v7 = result;
  }

  while (v8 < *(a2 + 32));
  if (!result)
  {
LABEL_10:
    Function = FindFunction(v3, "create$");
    a1 = v3;
    LOWORD(v4) = 30;
    goto LABEL_11;
  }

  return result;
}

unint64_t GetAtomicHashValue(int a1, unint64_t a2, int a3)
{
  if (a1 > 1)
  {
    if ((a1 - 2) < 2)
    {
      a2 = *(a2 + 16) >> 3;
      goto LABEL_10;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_7:
    a2 = *(a2 + 24);
    goto LABEL_10;
  }

  if (a1 <= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  a2 = a1;
LABEL_10:
  LODWORD(v3) = a3 + 29;
  if (a3 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  return a2 * v3;
}

void *FunctionReferenceExpression(uint64_t a1, char *a2)
{
  v4 = LookupDeffunctionInScope(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = 32;
  }

  else
  {
    v8 = LookupDefgenericInScope(a1, a2);
    if (v8)
    {
      v5 = v8;
      v6 = a1;
      v7 = 31;
    }

    else
    {
      result = FindFunction(a1, a2);
      if (!result)
      {
        return result;
      }

      v5 = result;
      v6 = a1;
      v7 = 30;
    }
  }

  return GenConstant(v6, v7, v5);
}

uint64_t DOsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 != 4)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  result = MultifieldDOsEqual(a1, a2);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL EvaluateAndStoreInDataObject(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 8) = 4;
  *(a4 + 24) = xmmword_2328169C0;
  if (a3)
  {
    if (a2 || *(a3 + 24))
    {
      StoreInMultifield(a1, a4, a3, a5);
    }

    else
    {
      EvaluateExpression(a1, a3, a4);
    }

    return *(*(*(a1 + 48) + 352) + 8) == 0;
  }

  else
  {
    if (a5)
    {
      Multifield = EnvCreateMultifield(a1, 0);
    }

    else
    {
      Multifield = CreateMultifield2(a1, 0);
    }

    *(a4 + 16) = Multifield;
    return 1;
  }
}

uint64_t DeallocateDeffactsBloadData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 208);
  v3 = 56 * *(v2 + 8);
  if (v3)
  {
    result = genfree(result, *v2, v3);
    v2 = *(*(v1 + 48) + 208);
  }

  v4 = 24 * *(v2 + 24);
  if (v4)
  {
    v5 = *(v2 + 16);

    return genfree(v1, v5, v4);
  }

  return result;
}

uint64_t BsaveFind_3(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 208) + 24));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 208) + 8));
  v2 = *(*(a1 + 48) + 208);
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v4 = result;
    do
    {
      EnvSetCurrentModule(a1, v4);
      ++*(*(*(a1 + 48) + 208) + 24);
      NextDeffacts = EnvGetNextDeffacts(a1, 0);
      if (NextDeffacts)
      {
        v6 = NextDeffacts;
        do
        {
          v7 = *(*(a1 + 48) + 208);
          v8 = *(v7 + 8);
          *(v7 + 8) = v8 + 1;
          MarkConstructHeaderNeededItems(v6, v8);
          *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(v6[6]);
          MarkNeededItems(a1, v6[6]);
          v6 = EnvGetNextDeffacts(a1, v6);
        }

        while (v6);
      }

      result = EnvGetNextDefmodule(a1, v4);
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BsaveExpressions_0(void *a1, FILE *a2)
{
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v5 = result;
    do
    {
      EnvSetCurrentModule(a1, v5);
      NextDeffacts = EnvGetNextDeffacts(a1, 0);
      if (NextDeffacts)
      {
        v7 = NextDeffacts;
        do
        {
          BsaveExpression(a1, *(v7 + 48), a2);
          v7 = EnvGetNextDeffacts(a1, v7);
        }

        while (v7);
      }

      result = EnvGetNextDefmodule(a1, v5);
      v5 = result;
    }

    while (result);
  }

  return result;
}

const void *BsaveStorage_3(uint64_t a1, FILE *__stream)
{
  v5 = 16;
  GenWrite(&v5, 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 208) + 8), 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 208) + 24), 8uLL, __stream);
}

uint64_t BsaveBinaryItem_2(uint64_t a1, FILE *__stream)
{
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  v16 = 24 * *(*(*(a1 + 48) + 208) + 24) + 32 * *(*(*(a1 + 48) + 208) + 8);
  GenWrite(&v16, 8uLL, __stream);
  *(*(*(a1 + 48) + 208) + 8) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v5);
      ModuleItem = GetModuleItem(a1, 0, *(**(a1 + 48) + 8));
      AssignBsaveDefmdlItemHdrVals(v13, ModuleItem);
      GenWrite(v13, 0x18uLL, __stream);
      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  v7 = EnvGetNextDefmodule(a1, 0);
  if (v7)
  {
    v8 = v7;
    do
    {
      EnvSetCurrentModule(a1, v8);
      NextDeffacts = EnvGetNextDeffacts(a1, 0);
      if (NextDeffacts)
      {
        v10 = NextDeffacts;
        do
        {
          AssignBsaveConstructHeaderVals(&v14, v10);
          v11 = *(v10 + 48);
          if (v11)
          {
            *(&v15 + 1) = *(*(*(a1 + 48) + 360) + 64);
            *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(v11);
          }

          else
          {
            *(&v15 + 1) = -1;
          }

          GenWrite(&v14, 0x20uLL, __stream);
          v10 = EnvGetNextDeffacts(a1, v10);
        }

        while (v10);
      }

      v8 = EnvGetNextDefmodule(a1, v8);
    }

    while (v8);
  }

  RestoreBloadCount(a1, (*(*(a1 + 48) + 208) + 24));
  return RestoreBloadCount(a1, (*(*(a1 + 48) + 208) + 8));
}

size_t BloadStorage_3(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 208) + 8), 8uLL);
  result = GenReadBinary(a1, (*(*(a1 + 48) + 208) + 24), 8uLL);
  v3 = *(a1 + 48);
  v4 = *(v3 + 208);
  v5 = v4[3];
  if (v5)
  {
    __ptr = 24 * v5;
    result = genalloc(a1, 24 * v5);
    v6 = *(a1 + 48);
    *(*(v6 + 208) + 16) = result;
    v7 = *(v6 + 208);
    v8 = v7[1];
    if (v8)
    {
      __ptr = 56 * v8;
      result = genalloc(a1, 56 * v8);
      **(*(a1 + 48) + 208) = result;
    }

    else
    {
      *v7 = 0;
    }
  }

  else
  {
    *v4 = 0;
    *(*(v3 + 208) + 16) = 0;
  }

  return result;
}

uint64_t BloadBinaryItem_3(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 208) + 24), 24, UpdateDeffactsModule);
  return BloadandRefresh(a1, *(*(*(a1 + 48) + 208) + 8), 32, UpdateDeffacts);
}

uint64_t ClearBload_4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = *(v2 + 208);
  v4 = *(v3 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      result = UnmarkConstructHeader(v1, (*v3 + v5));
      ++v6;
      v2 = *(v1 + 48);
      v3 = *(v2 + 208);
      v4 = *(v3 + 8);
      v5 += 56;
    }

    while (v6 < v4);
  }

  if (56 * v4)
  {
    result = genfree(v1, *v3, 56 * v4);
    v2 = *(v1 + 48);
  }

  v7 = *(v2 + 208);
  *(v7 + 8) = 0;
  v8 = 24 * *(v7 + 24);
  if (v8)
  {
    result = genfree(v1, *(v7 + 16), v8);
    v7 = *(*(v1 + 48) + 208);
  }

  *(v7 + 24) = 0;
  return result;
}

uint64_t UpdateDeffacts(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = UpdateConstructHeader(a1, a2, (**(*(a1 + 48) + 208) + 56 * a3), 24, *(*(*(a1 + 48) + 208) + 16), 56, **(*(a1 + 48) + 208));
  v7 = a2[3];
  v8 = *(a1 + 48);
  if (v7 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(v8 + 360) + 56) + 32 * v7;
  }

  *(**(v8 + 208) + 56 * a3 + 48) = v9;
  return result;
}

uint64_t InitializeStringRouter(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x30u, 8uLL, DeallocateStringRouterData);

  return EnvAddRouter(a1, "string", 0, FindString, PrintString, GetcString, UngetcString, 0);
}

uint64_t DeallocateStringRouterData(uint64_t result)
{
  v1 = **(*(result + 48) + 384);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = v1[6];
      v4 = strlen(*v1);
      result = rm(v2, *v1, v4 + 1);
      v5 = *(v2 + 48);
      *(*(v5 + 472) + 32) = v1;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 448);
      *(*(*(v5 + 472) + 40) + 448) = *(*(v5 + 472) + 32);
      v1 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t FindString(uint64_t a1, char *__s2)
{
  v2 = **(*(a1 + 48) + 384);
  if (!v2)
  {
    return 0;
  }

  while (strcmp(*v2, __s2))
  {
    v2 = *(v2 + 48);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PrintString(uint64_t a1, char *a2, const char *a3)
{
  StringRouter = FindStringRouter(a1, a2);
  if (!StringRouter)
  {
    SystemError(a1, "ROUTER", 3);
    EnvExitRouter(a1, 1);
  }

  if (*(StringRouter + 40) == 1)
  {
    v6 = *(StringRouter + 32);
    if (v6)
    {
      v7 = *(StringRouter + 24);
      if (v7 + 1 < v6)
      {
        genstrncpy((*(StringRouter + 16) + v7), a3, v6 + ~v7);
        *(StringRouter + 24) += strlen(a3);
      }
    }
  }

  return 1;
}

uint64_t GetcString(uint64_t a1, char *a2)
{
  StringRouter = FindStringRouter(a1, a2);
  if (!StringRouter)
  {
    SystemError(a1, "ROUTER", 1);
    EnvExitRouter(a1, 1);
  }

  if (*(StringRouter + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(StringRouter + 24);
  if (v5 >= *(StringRouter + 32))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *(*(StringRouter + 8) + v5);
  }

  *(StringRouter + 24) = v5 + 1;
  return result;
}

uint64_t UngetcString(uint64_t a1, int a2, char *__s2)
{
  StringRouter = FindStringRouter(a1, __s2);
  if (!StringRouter)
  {
    SystemError(a1, "ROUTER", 2);
    EnvExitRouter(a1, 1);
  }

  if (*(StringRouter + 40))
  {
    return 0;
  }

  v6 = *(StringRouter + 24);
  if (v6)
  {
    *(StringRouter + 24) = v6 - 1;
  }

  return 1;
}

uint64_t OpenStringSource(uint64_t a1, char *a2, char *__s, uint64_t a4)
{
  if (__s)
  {
    v8 = strlen(__s);
  }

  else
  {
    a4 = 0;
    v8 = 0;
  }

  return CreateReadStringSource(a1, a2, __s, a4, v8);
}

uint64_t CreateReadStringSource(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (FindStringRouter(a1, a2))
  {
    return 0;
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 472);
  v13 = *(*(v12 + 40) + 448);
  if (v13)
  {
    *(v12 + 32) = v13;
    *(*(*(v11 + 472) + 40) + 448) = **(*(v11 + 472) + 32);
    v14 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v14 = genalloc(a1, 0x38uLL);
  }

  v15 = strlen(a2);
  v16 = gm1(a1, v15 + 1);
  genstrcpy(v16, a2);
  *v14 = v16;
  v14[1] = a3;
  v14[2] = 0;
  v14[3] = a4;
  *(v14 + 10) = 0;
  v14[4] = a5;
  v17 = *(a1 + 48);
  v14[6] = **(v17 + 384);
  **(v17 + 384) = v14;
  return 1;
}

uint64_t OpenTextSource(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    a4 = 0;
    a5 = 0;
  }

  return CreateReadStringSource(a1, a2, a3, a4, a5);
}

uint64_t CloseStringSource(uint64_t a1, const char *a2)
{
  v2 = *(*(a1 + 48) + 384);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v6 = *v3;
  if (strcmp(*v3, a2))
  {
    while (1)
    {
      v7 = v3;
      v3 = *(v3 + 48);
      if (!v3)
      {
        return 0;
      }

      v6 = *v3;
      if (!strcmp(*v3, a2))
      {
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  v9 = (v7 + 48);
  if (!v7)
  {
    v9 = v2;
  }

  *v9 = *(v3 + 48);
  v10 = strlen(v6);
  rm(a1, v6, v10 + 1);
  v11 = *(a1 + 48);
  *(*(v11 + 472) + 32) = v3;
  **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 448);
  *(*(*(v11 + 472) + 40) + 448) = *(*(v11 + 472) + 32);
  return 1;
}

uint64_t OpenStringDestination(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (FindStringRouter(a1, a2))
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 472);
  v11 = *(*(v10 + 40) + 448);
  if (v11)
  {
    *(v10 + 32) = v11;
    *(*(*(v9 + 472) + 40) + 448) = **(*(v9 + 472) + 32);
    v12 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v12 = genalloc(a1, 0x38uLL);
  }

  v13 = strlen(a2);
  v14 = gm1(a1, v13 + 1);
  genstrcpy(v14, a2);
  *v12 = v14;
  v12[1] = 0;
  v12[2] = a3;
  v12[3] = 0;
  result = 1;
  *(v12 + 10) = 1;
  v12[4] = a4;
  v15 = *(a1 + 48);
  v12[6] = **(v15 + 384);
  **(v15 + 384) = v12;
  return result;
}

uint64_t FindStringRouter(uint64_t a1, char *__s2)
{
  for (i = **(*(a1 + 48) + 384); i; i = *(i + 48))
  {
    if (!strcmp(*i, __s2))
    {
      break;
    }
  }

  return i;
}

id sockAddrToString(void *a1)
{
  v3 = 0;
  validateSockAddrToString(a1, 1, &v3);
  v1 = v3;

  return v1;
}

BOOL validateSockAddrToString(void *a1, int a2, __CFString **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if ([v5 length] <= 0xF)
  {
    goto LABEL_18;
  }

  v6 = [v5 bytes];
  v7 = *v6;
  if ([v5 length] < v7)
  {
    goto LABEL_18;
  }

  v8 = v6[1];
  if (v8 == 30)
  {
    v9 = *v6;
    if (v9 < 0x1C || *(v6 + 2) || *(v6 + 3) || *(v6 + 4) || *(v6 + 5))
    {
      goto LABEL_13;
    }

LABEL_18:
    v11 = 0;
    if (a3)
    {
      *a3 = @"?";
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    goto LABEL_18;
  }

  v9 = *v6;
  if (v9 >= 0x10 && !*(v6 + 1))
  {
    goto LABEL_18;
  }

LABEL_13:
  if (a2)
  {
    v10 = getnameinfo(v6, v9, v16, 0x39u, v15, 6u, 10);
    v11 = v10 == 0;
    if (v10)
    {
      if (!a3)
      {
        goto LABEL_20;
      }

      v12 = @"?";
    }

    else
    {
      v17 = 0;
      v15[5] = 0;
      if (!a3)
      {
        goto LABEL_20;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s, %s", v16, v15];
    }

    *a3 = v12;
    goto LABEL_20;
  }

  if (getnameinfo(v6, v9, v16, 0x39u, 0, 0, 2))
  {
    goto LABEL_18;
  }

  v17 = 0;
  if (a3)
  {
    *a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v16];
  }

  v11 = 1;
LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

id ipAddrToStringWithPrefix(void *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 length];
  if (v4 != 16)
  {
    v5 = v4;
    if (v4 != 4)
    {
      v11 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v18 = 138478083;
        v19 = v3;
        v20 = 2048;
        v21 = v5;
        v8 = "Unexpected IP address %{private}@ length %lu";
        v12 = v18;
        v13 = v11;
        v14 = 22;
LABEL_17:
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v8, v12, v14);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v6 = [v3 bytes];
    if (a2 == 24)
    {
      v17[0].s_addr = 0;
      inet_aton("255.255.255.0", v17);
      *v6 &= v17[0].s_addr;
    }

    if (!inet_ntop(2, v6, v18, 0x10u))
    {
      v7 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17[0].s_addr) = 0;
        v8 = "inet_ntop v4 error";
LABEL_16:
        v12 = v17;
        v13 = v7;
        v14 = 2;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_11:
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
    goto LABEL_19;
  }

  v9 = [v3 bytes];
  if (a2 == 56)
  {
    *(v9 + 15) = 0;
    *(v9 + 7) = 0;
  }

  if (inet_ntop(30, v9, v18, 0x2Eu))
  {
    goto LABEL_11;
  }

  v7 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17[0].s_addr) = 0;
    v8 = "inet_ntop v6 error";
    goto LABEL_16;
  }

LABEL_18:
  v10 = 0;
LABEL_19:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t privateIPv4Address(void *a1, _BYTE *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "isPrivate is NULL, cannot check if private";
LABEL_14:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_25;
  }

  v5 = [v3 UTF8String];
  if (!v5)
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Address is NULL, cannot check if private";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *a2 = 0;
  *buf = 0;
  v21 = 0;
  v6 = inet_pton(2, v5, &buf[4]);
  v7 = v6;
  if (!v6)
  {
    v13 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v18 = 138477827;
    v19 = v4;
    v10 = "Invalid address: %{private}@";
LABEL_20:
    v14 = v13;
    v15 = OS_LOG_TYPE_ERROR;
LABEL_24:
    _os_log_impl(&dword_23255B000, v14, v15, v10, &v18, 0xCu);
    goto LABEL_25;
  }

  if (v6 != 1)
  {
    v13 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v18 = 138477827;
    v19 = v4;
    v10 = "Error converting address: %{private}@";
    goto LABEL_20;
  }

  v8 = bswap32(*&buf[4]);
  if (HIWORD(v8) == 49320 || (v8 & 0xFF000000) == 0xA000000 || (v8 & 0xFFF00000) == 0xAC100000)
  {
    *a2 = 1;
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      v18 = 138477827;
      v19 = v4;
      v10 = "Address %{private}@ is private";
      goto LABEL_23;
    }
  }

  else
  {
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      v18 = 138477827;
      v19 = v4;
      v10 = "Address %{private}@ is not private";
LABEL_23:
      v14 = v9;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_24;
    }
  }

LABEL_25:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void *InitializeDeffacts(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0, 0x10uLL, DeallocateDeffactsData);
  *(**(a1 + 48) + 8) = RegisterModuleItem(a1, "deffacts", AllocateModule_2, ReturnModule_2, BloadDeffactsModuleReference, 0, EnvFindDeffactsInModule);
  DeffactsBasicCommands(a1);
  result = AddConstruct(a1, "deffacts", "deffacts", ParseDeffacts, EnvFindDeffacts, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDeffacts, SetNextConstruct, EnvIsDeffactsDeletable, EnvUndeffacts, ReturnDeffacts);
  ***(a1 + 48) = result;
  return result;
}

uint64_t DeallocateDeffactsData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDeffactsAction, *(**(a1 + 48) + 8), 0, 0);
    result = EnvGetNextDefmodule(a1, 0);
    if (result)
    {
      v3 = result;
      do
      {
        ModuleItem = GetModuleItem(a1, v3, *(**(a1 + 48) + 8));
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

BOOL EnvIsDeffactsDeletable(uint64_t a1)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    return *(*(*(a1 + 48) + 336) + 12) == 0;
  }

  return result;
}

uint64_t ReturnDeffacts(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    ExpressionDeinstall(result, *(a2 + 48));
    ReturnPackedExpression(v3, *(a2 + 48));
    result = DeinstallConstructHeader(v3, a2);
    v4 = *(v3 + 48);
    *(*(v4 + 472) + 32) = a2;
    **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 448);
    *(*(*(v4 + 472) + 40) + 448) = *(*(v4 + 472) + 32);
  }

  return result;
}

uint64_t DestroyDeffactsAction(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    ReturnPackedExpression(result, *(a2 + 48));
    result = DestroyConstructHeader(v3, a2);
    v4 = *(v3 + 48);
    *(*(v4 + 472) + 32) = a2;
    **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 448);
    *(*(*(v4 + 472) + 40) + 448) = *(*(v4 + 472) + 32);
  }

  return result;
}

void *AllocateModule_2(uint64_t a1)
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

uint64_t ReturnModule_2(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, ***(a1 + 48));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
  *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
  return result;
}

uint64_t DefglobalBinarySetup(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x3Cu, 0x20uLL, DeallocateDefglobalBloadData);
  AddAfterBloadFunction(a1, "defglobal", ResetDefglobals, 50);
  return AddBinaryItem(a1, "defglobal", 0, BsaveFind_4, 0, BsaveStorage_4, BsaveBinaryItem_3, BloadStorageDefglobals, BloadBinaryItem_4, ClearBload_5);
}

uint64_t DeallocateDefglobalBloadData(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = *(v2 + 480);
  v4 = *(v3 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *v3 + v5;
      if (*(v7 + 72) == 4)
      {
        result = ReturnMultifield(v1, *(v7 + 80));
        v2 = *(v1 + 48);
      }

      ++v6;
      v3 = *(v2 + 480);
      v4 = *(v3 + 8);
      v5 += 120;
    }

    while (v6 < v4);
  }

  if (120 * v4)
  {
    result = genfree(v1, *v3, 120 * v4);
    v2 = *(v1 + 48);
  }

  v8 = *(v2 + 480);
  v9 = 24 * *(v8 + 24);
  if (v9)
  {
    v10 = *(v8 + 16);

    return genfree(v1, v10, v9);
  }

  return result;
}

uint64_t BsaveFind_4(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 480) + 24));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 480) + 8));
  v2 = *(*(a1 + 48) + 480);
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v4 = result;
    do
    {
      EnvSetCurrentModule(a1, v4);
      ++*(*(*(a1 + 48) + 480) + 24);
      NextDefglobal = EnvGetNextDefglobal(a1, 0);
      if (NextDefglobal)
      {
        v6 = NextDefglobal;
        do
        {
          v7 = *(*(a1 + 48) + 480);
          v8 = *(v7 + 8);
          *(v7 + 8) = v8 + 1;
          MarkConstructHeaderNeededItems(v6, v8);
          v6 = EnvGetNextDefglobal(a1, v6);
        }

        while (v6);
      }

      result = EnvGetNextDefmodule(a1, v4);
      v4 = result;
    }

    while (result);
  }

  return result;
}

const void *BsaveStorage_4(uint64_t a1, FILE *__stream)
{
  v5 = 16;
  GenWrite(&v5, 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 480) + 8), 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 480) + 24), 8uLL, __stream);
}

uint64_t BsaveBinaryItem_3(uint64_t a1, FILE *__stream)
{
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  v16 = 24 * *(*(*(a1 + 48) + 480) + 24) + 32 * *(*(*(a1 + 48) + 480) + 8);
  GenWrite(&v16, 8uLL, __stream);
  *(*(*(a1 + 48) + 480) + 8) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v5);
      ModuleItem = FindModuleItem(a1, "defglobal");
      v7 = GetModuleItem(a1, 0, *(ModuleItem + 8));
      AssignBsaveDefmdlItemHdrVals(v13, v7);
      GenWrite(v13, 0x18uLL, __stream);
      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  *(*(*(a1 + 48) + 480) + 8) = 0;
  v8 = EnvGetNextDefmodule(a1, 0);
  if (v8)
  {
    v9 = v8;
    do
    {
      EnvSetCurrentModule(a1, v9);
      NextDefglobal = EnvGetNextDefglobal(a1, 0);
      if (NextDefglobal)
      {
        v11 = NextDefglobal;
        do
        {
          AssignBsaveConstructHeaderVals(&v14, v11);
          *(&v15 + 1) = HashedExpressionIndex(a1, *(v11 + 112));
          GenWrite(&v14, 0x20uLL, __stream);
          v11 = EnvGetNextDefglobal(a1, v11);
        }

        while (v11);
      }

      v9 = EnvGetNextDefmodule(a1, v9);
    }

    while (v9);
  }

  RestoreBloadCount(a1, (*(*(a1 + 48) + 480) + 24));
  return RestoreBloadCount(a1, (*(*(a1 + 48) + 480) + 8));
}

void *BloadStorageDefglobals(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 480) + 8), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 480) + 24), 8uLL);
  v2 = *(a1 + 48);
  v3 = *(v2 + 480);
  v4 = v3[3];
  if (!v4)
  {
    *v3 = 0;
    *(*(v2 + 480) + 16) = 0;
    v4 = *(*(v2 + 480) + 24);
  }

  __ptr = 24 * v4;
  result = genalloc(a1, 24 * v4);
  v6 = *(a1 + 48);
  *(*(v6 + 480) + 16) = result;
  v7 = *(v6 + 480);
  v8 = v7[1];
  if (v8)
  {
    __ptr = 120 * v8;
    result = genalloc(a1, 120 * v8);
    **(*(a1 + 48) + 480) = result;
  }

  else
  {
    *v7 = 0;
  }

  return result;
}

uint64_t BloadBinaryItem_4(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 480) + 24), 24, UpdateDefglobalModule);
  return BloadandRefresh(a1, *(*(*(a1 + 48) + 480) + 8), 32, UpdateDefglobal);
}

uint64_t ClearBload_5(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = *(v2 + 480);
  v4 = *(v3 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    for (i = 0; i < v4; ++i)
    {
      UnmarkConstructHeader(v1, (*v3 + v5));
      result = ValueDeinstall(v1, **(*(v1 + 48) + 480) + v5 + 64);
      v2 = *(v1 + 48);
      v3 = *(v2 + 480);
      v7 = *v3 + v5;
      if (*(v7 + 72) == 4)
      {
        result = ReturnMultifield(v1, *(v7 + 80));
        v2 = *(v1 + 48);
        v3 = *(v2 + 480);
      }

      v4 = *(v3 + 8);
      v5 += 120;
    }
  }

  if (120 * v4)
  {
    result = genfree(v1, *v3, 120 * v4);
    v2 = *(v1 + 48);
  }

  v8 = *(v2 + 480);
  *(v8 + 8) = 0;
  v9 = 24 * *(v8 + 24);
  if (v9)
  {
    result = genfree(v1, *(v8 + 16), v9);
    v8 = *(*(v1 + 48) + 480);
  }

  *(v8 + 24) = 0;
  return result;
}

uint64_t UpdateDefglobal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = 120 * a3;
  result = UpdateConstructHeader(a1, a2, (**(*(a1 + 48) + 480) + 120 * a3), 24, *(*(*(a1 + 48) + 480) + 16), 120, **(*(a1 + 48) + 480));
  *(**(*(a1 + 48) + 480) + v5 + 48) = *(**(*(a1 + 48) + 480) + v5 + 48) & 0xFE | *(*(*(a1 + 48) + 8) + 16) & 1;
  v7 = a2[3];
  v8 = *(a1 + 48);
  if (v7 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(v8 + 360) + 56) + 32 * v7;
  }

  *(**(v8 + 480) + v5 + 112) = v9;
  *(**(v8 + 480) + v5 + 72) = 175;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __softlink__BiomeLibrary()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr;
  v7 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBiomeLibrarySymbolLoc_block_invoke;
    v3[3] = &unk_27898F390;
    v3[4] = &v4;
    __getBiomeLibrarySymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    __softlink__BiomeLibrary_cold_1();
  }

  v1 = v0();

  return v1;
}

void sub_2327B3E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2789902B0;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    __getBiomeLibrarySymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CheckConstraintParseConflicts(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if ((*a2 & 1) == 0)
  {
    if ((*a2 & 0x802) == 0x800)
    {
      v5 = "allowed-symbols";
      goto LABEL_34;
    }

    if ((*a2 & 0x1004) == 0x1000)
    {
      v5 = "allowed-strings";
      goto LABEL_34;
    }

    if ((*a2 & 0x4010) == 0x4000)
    {
      v5 = "allowed-integers/numbers";
      goto LABEL_34;
    }

    if ((*a2 & 0x2008) == 0x2000)
    {
      v5 = "allowed-floats/numbers";
      goto LABEL_34;
    }

    if ((*a2 & 0x8060) == 0x8000)
    {
      v5 = "allowed-classes";
      goto LABEL_34;
    }

    if ((v4 & 0x10020) == 0x10000)
    {
      v5 = "allowed-instance-names";
      goto LABEL_34;
    }

    if ((v4 & 0x400) != 0)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v5 = "allowed-values";
        while (!ConstraintCheckValue(a1, *v6, *(v6 + 1), a2))
        {
          v6 = *(v6 + 3);
          if (!v6)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_34;
      }
    }
  }

LABEL_19:
  v7 = *(a2 + 32);
  if ((!v7 || (*a2 & 1) != 0 || ((v8 = *v7, (*a2 & 0x10) != 0) || v8 != 1) && *a2 & 8 | v8) && ((v9 = *(a2 + 24)) == 0 || (*a2 & 1) != 0 || ((v10 = *v9, (*a2 & 0x10) != 0) || v10 != 1) && *a2 & 8 | v10))
  {
    if (!*(a2 + 8) || (*a2 & 0x61) != 0)
    {
      return 1;
    }

    v5 = "allowed-class";
  }

  else
  {
    v5 = "range";
  }

LABEL_34:
  AttributeConflictErrorMessage(a1, "type", v5);
  return 0;
}

uint64_t AttributeConflictErrorMessage(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "CSTRNPSR", 1, 1);
  EnvPrintRouter(a1, "werror", "The ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " attribute conflicts with the ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", " attribute.\n");
}

uint64_t ParseStandardConstraint(char *a1, char *a2, char *__s1, void *a4, __int16 *a5, int a6)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!strcmp(__s1, "type"))
  {
    LOWORD(v12) = *a5;
    LOWORD(v13) = *a5;
  }

  else if (!strcmp(__s1, "range"))
  {
    v12 = *a5;
    v13 = v12 >> 1;
  }

  else if (!strcmp(__s1, "cardinality"))
  {
    v12 = *a5;
    v13 = v12 >> 11;
  }

  else if (!strcmp(__s1, "allowed-values"))
  {
    v12 = *a5;
    v13 = v12 >> 8;
  }

  else if (!strcmp(__s1, "allowed-symbols"))
  {
    v12 = *a5;
    v13 = v12 >> 2;
  }

  else if (!strcmp(__s1, "allowed-strings"))
  {
    v12 = *a5;
    v13 = v12 >> 3;
  }

  else if (!strcmp(__s1, "allowed-lexemes"))
  {
    v12 = *a5;
    v13 = v12 >> 4;
  }

  else if (!strcmp(__s1, "allowed-instance-names"))
  {
    v12 = *a5;
    v13 = v12 >> 10;
  }

  else if (!strcmp(__s1, "allowed-classes"))
  {
    v12 = *a5;
    v13 = v12 >> 9;
  }

  else if (!strcmp(__s1, "allowed-integers"))
  {
    v12 = *a5;
    v13 = v12 >> 6;
  }

  else if (!strcmp(__s1, "allowed-floats"))
  {
    v12 = *a5;
    v13 = v12 >> 5;
  }

  else
  {
    if (strcmp(__s1, "allowed-numbers"))
    {
LABEL_44:
      AlreadyParsedErrorMessage(a1, __s1, " attribute");
      v16 = 0;
      goto LABEL_152;
    }

    v12 = *a5;
    v13 = v12 >> 7;
  }

  if (v13)
  {
    goto LABEL_44;
  }

  if (!strcmp(__s1, "range") || !strcmp(__s1, "cardinality"))
  {
    v16 = ParseRangeCardinalityAttribute(a1, a2, a4, a5, __s1, a6);
    goto LABEL_118;
  }

  if (!strcmp(__s1, "type"))
  {
    v57 = 0;
    v58 = 0;
    __s1a = 0;
    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v57);
    if (v57 != 171)
    {
      v18 = 0;
      v17 = 0;
      while (1)
      {
        SavePPBuffer(a1, " ");
        if (v57 == 35)
        {
          if (v17 | v18 | strcmp(__s1a, "?VARIABLE"))
          {
            goto LABEL_101;
          }

          v17 = 0;
          v18 = 1;
        }

        else
        {
          if (v57 != 2 || v18 == 1)
          {
            goto LABEL_101;
          }

          v23 = *(v58 + 24);
          if (!strcmp(v23, "SYMBOL"))
          {
            v24 = 2;
          }

          else if (!strcmp(v23, "STRING"))
          {
            v24 = 3;
          }

          else if (!strcmp(v23, "LEXEME"))
          {
            v24 = 181;
          }

          else if (!strcmp(v23, "INTEGER"))
          {
            v24 = 1;
          }

          else
          {
            v24 = strcmp(v23, "FLOAT");
            if (v24)
            {
              if (!strcmp(v23, "NUMBER"))
              {
                v24 = 180;
              }

              else if (!strcmp(v23, "INSTANCE-NAME"))
              {
                v24 = 8;
              }

              else if (!strcmp(v23, "INSTANCE-ADDRESS"))
              {
                v24 = 7;
              }

              else if (!strcmp(v23, "INSTANCE"))
              {
                v24 = 182;
              }

              else if (!strcmp(v23, "EXTERNAL-ADDRESS"))
              {
                v24 = 5;
              }

              else
              {
                if (strcmp(v23, "FACT-ADDRESS"))
                {
                  goto LABEL_101;
                }

                v24 = 6;
              }
            }
          }

          if (SetConstraintType(v24, a4))
          {
            goto LABEL_101;
          }

          v18 = 0;
          *a4 &= ~1u;
          v17 = 1;
        }

        GetToken(a1, a2, &v57);
        if (v57 == 171)
        {
          goto LABEL_99;
        }
      }
    }

    v17 = 0;
    v18 = 0;
LABEL_99:
    PPBackup(a1);
    PPBackup(a1);
    SavePPBuffer(a1, ")");
    if (v18 | v17)
    {
      goto LABEL_100;
    }

LABEL_101:
    v25 = "type attribute";
    goto LABEL_102;
  }

  v14 = strcmp(__s1, "allowed-symbols");
  if (v14 && strcmp(__s1, "allowed-strings") && strcmp(__s1, "allowed-lexemes") && strcmp(__s1, "allowed-integers") && strcmp(__s1, "allowed-floats") && strcmp(__s1, "allowed-numbers") && strcmp(__s1, "allowed-instance-names") && strcmp(__s1, "allowed-classes") && strcmp(__s1, "allowed-values"))
  {
    goto LABEL_117;
  }

  if (!strcmp(__s1, "allowed-values"))
  {
    if ((v12 & 0x4FC) != 0)
    {
      v19 = "allowed-strings";
      if ((v12 & 4) != 0)
      {
        v19 = "allowed-symbols";
      }

      if ((v12 & 0xC) == 0)
      {
        v19 = "allowed-lexemes";
      }

      if ((v12 & 0x1C) == 0)
      {
        v19 = "allowed-integers";
      }

      if ((v12 & 0x5C) == 0)
      {
        v19 = "allowed-floats";
      }

      v20 = "allowed-instance-names";
      if ((v12 & 0x400) == 0)
      {
        v20 = 0;
      }

      if ((v12 & 0x80) != 0)
      {
        v20 = "allowed-numbers";
      }

      if ((v12 & 0x7C) != 0)
      {
        v15 = v19;
      }

      else
      {
        v15 = v20;
      }

      v21 = "allowed-values";
      goto LABEL_110;
    }

    if ((v12 & 2) != 0)
    {
LABEL_43:
      v15 = "range";
LABEL_115:
      v26 = a1;
      v21 = __s1;
      goto LABEL_116;
    }
  }

  else
  {
    if ((!strcmp(__s1, "allowed-numbers") || !strcmp(__s1, "allowed-integers") || !strcmp(__s1, "allowed-floats")) && (v12 & 2) != 0)
    {
      goto LABEL_43;
    }

    if ((v12 & 0x100) != 0)
    {
      v15 = "allowed-values";
      goto LABEL_115;
    }
  }

  if (!strcmp(__s1, "allowed-numbers") && (v12 & 0x60) != 0)
  {
    if ((v12 & 0x20) != 0)
    {
      v15 = "allowed-floats";
    }

    else
    {
      v15 = "allowed-integers";
    }

    v21 = "allowed-numbers";
LABEL_110:
    v26 = a1;
LABEL_116:
    NoConjunctiveUseError(v26, v21, v15);
    goto LABEL_117;
  }

  if (!strcmp(__s1, "allowed-integers"))
  {
    if ((v12 & 0x80) != 0)
    {
LABEL_114:
      v15 = "allowed-number";
      goto LABEL_115;
    }
  }

  else
  {
    v27 = strcmp(__s1, "allowed-floats");
    if ((v12 & 0x80) != 0 && !v27)
    {
      goto LABEL_114;
    }
  }

  v29 = strcmp(__s1, "allowed-lexemes");
  if ((v12 & 0xC) != 0 && !v29)
  {
    if ((v12 & 4) != 0)
    {
      v15 = "allowed-symbols";
    }

    else
    {
      v15 = "allowed-strings";
    }

    v21 = "allowed-lexemes";
    goto LABEL_110;
  }

  if (v14)
  {
    v30 = strcmp(__s1, "allowed-strings");
    if ((v12 & 0x10) != 0 && !v30)
    {
      goto LABEL_149;
    }
  }

  else if ((v12 & 0x10) != 0)
  {
LABEL_149:
    v15 = "allowed-lexemes";
    goto LABEL_115;
  }

  if (!strcmp(__s1, "allowed-values"))
  {
    v34 = 1024;
    v33 = 173;
LABEL_173:
    *a4 |= v34;
    goto LABEL_174;
  }

  if (!strcmp(__s1, "allowed-symbols"))
  {
    v34 = 2048;
    v33 = 2;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-strings"))
  {
    v34 = 4096;
    v33 = 3;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-lexemes"))
  {
    v34 = 6144;
    v33 = 181;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-integers"))
  {
    v34 = 0x4000;
    v33 = 1;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-numbers"))
  {
    v34 = 24576;
    v33 = 180;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-instance-names"))
  {
    v34 = 0x10000;
    v33 = 8;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-classes"))
  {
    v34 = 0x8000;
    v33 = 182;
    goto LABEL_173;
  }

  if (!strcmp(__s1, "allowed-floats"))
  {
    v33 = 0;
    v34 = 0x2000;
    goto LABEL_173;
  }

  v33 = -1;
LABEL_174:
  v35 = strcmp(__s1, "allowed-classes");
  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 2;
  }

  v37 = 2;
  if (!v35)
  {
    v37 = 1;
  }

  v38 = a4[v37];
  if (v38)
  {
    do
    {
      v39 = v38;
      v38 = v38[3];
    }

    while (v38);
  }

  else
  {
    v39 = 0;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a2, &v54);
  if (v54 == 171)
  {
LABEL_184:
    gensprintf(&v57, "%s attribute", v40, v41, v42, v43, v44, v45, __s1);
    v25 = &v57;
LABEL_102:
    SyntaxErrorMessage(a1, v25);
LABEL_117:
    v16 = 0;
    goto LABEL_118;
  }

  v53 = v33;
  v46 = 0;
  v47 = 0;
  do
  {
    SavePPBuffer(a1, " ");
    v48 = v54;
    if (v54 <= 1u)
    {
      if (v54)
      {
        if (v54 != 1)
        {
          goto LABEL_184;
        }

        v47 = 1;
        if (v36 == 1)
        {
          goto LABEL_205;
        }
      }

      else
      {
        v47 = 1;
        if (!v36)
        {
          goto LABEL_205;
        }
      }

      if (v36 != 173 && v36 != 180)
      {
LABEL_219:
        PrintErrorID(a1, "CSTRNPSR", 4, 1);
        EnvPrintRouter(a1, "werror", "Value does not match the expected type for the ");
        EnvPrintRouter(a1, "werror", __s1);
        EnvPrintRouter(a1, "werror", " attribute\n");
        goto LABEL_117;
      }
    }

    else
    {
      if (v54 == 2)
      {
        v47 = 1;
        if (v36 == 2)
        {
          goto LABEL_205;
        }
      }

      else
      {
        if (v54 != 3)
        {
          if (v54 != 35 || strcmp(v56, "?VARIABLE"))
          {
            goto LABEL_184;
          }

          v46 = 1;
          goto LABEL_205;
        }

        v47 = 1;
        if (v36 == 3)
        {
          goto LABEL_205;
        }
      }

      if (v36 != 173 && v36 != 181)
      {
        goto LABEL_219;
      }
    }

LABEL_205:
    if (v47 && v46)
    {
      goto LABEL_184;
    }

    v49 = GenConstant(a1, v48, v55);
    if (v39)
    {
      v50 = v39 + 3;
    }

    else
    {
      v51 = strcmp(__s1, "allowed-classes");
      v50 = a4 + 1;
      if (v51)
      {
        v50 = a4 + 2;
      }
    }

    *v50 = v49;
    GetToken(a1, a2, &v54);
    v39 = v49;
  }

  while (v54 != 171);
  if (!(v47 | v46))
  {
    goto LABEL_184;
  }

  if (v46)
  {
    if (v53 > 7)
    {
      if (v53 <= 179)
      {
        if (v53 == 8)
        {
          v52 = -65537;
        }

        else
        {
          v52 = -1025;
        }
      }

      else if (v53 == 180)
      {
        v52 = -24577;
      }

      else if (v53 == 181)
      {
        v52 = -6145;
      }

      else
      {
        v52 = -32769;
      }

      goto LABEL_233;
    }

    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v52 = -2049;
      }

      else
      {
        v52 = -4097;
      }

LABEL_233:
      *a4 &= v52;
    }

    else
    {
      if (!v53)
      {
        v52 = -8193;
        goto LABEL_233;
      }

      if (v53 == 1)
      {
        v52 = -16385;
        goto LABEL_233;
      }
    }
  }

  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, ")");
LABEL_100:
  v16 = 1;
LABEL_118:
  if (!strcmp(__s1, "range"))
  {
    v28 = 2;
LABEL_151:
    *a5 |= v28;
    goto LABEL_152;
  }

  if (!strcmp(__s1, "type"))
  {
    v28 = 1;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "cardinality"))
  {
    v28 = 2048;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-symbols"))
  {
    v28 = 4;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-strings"))
  {
    v28 = 8;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-lexemes"))
  {
    v28 = 16;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-integers"))
  {
    v28 = 64;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-floats"))
  {
    v28 = 32;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-numbers"))
  {
    v28 = 128;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-values"))
  {
    v28 = 256;
    goto LABEL_151;
  }

  if (!strcmp(__s1, "allowed-classes"))
  {
    v28 = 512;
    goto LABEL_151;
  }

LABEL_152:
  v31 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t ParseRangeCardinalityAttribute(char *a1, char *a2, void *a3, __int16 *a4, char *__s1, int a6)
{
  v7 = __s1;
  v34 = *MEMORY[0x277D85DE8];
  v12 = strcmp(__s1, "range");
  v13 = *a4;
  if (!v12)
  {
    *a4 = v13 | 2;
    if ((v13 & 0x1E0) != 0)
    {
      v16 = "allowed-values";
      if ((v13 & 0x100) == 0)
      {
        v16 = "allowed-integers";
      }

      v17 = "allowed-numbers";
      if ((v13 & 0x80) == 0)
      {
        v17 = 0;
      }

      if ((v13 & 0x20) != 0)
      {
        v17 = "allowed-floats";
      }

      if ((v13 & 0x140) != 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      NoConjunctiveUseError(a1, "range", v18);
      goto LABEL_33;
    }

LABEL_17:
    v30 = 0;
    v31 = 0;
    __s1a = 0;
    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v30);
    if (v30 == 1 || !(v12 | v30))
    {
      if (v12)
      {
        if ((*(v31 + 24) & 0x8000000000000000) != 0)
        {
          PrintErrorID(a1, "CSTRNPSR", 6, 1);
          v14 = "Minimum cardinality value must be greater than or equal to zero\n";
          v15 = a1;
          goto LABEL_5;
        }

        v26 = a3 + 5;
        v25 = a3[5];
      }

      else
      {
        v26 = a3 + 3;
        v25 = a3[3];
      }

      ReturnExpression(a1, v25);
      *v26 = GenConstant(a1, v30, v31);
    }

    else if (v30 != 35 || strcmp(__s1a, "?VARIABLE"))
    {
      goto LABEL_31;
    }

    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v30);
    if (v30 == 1 || !(v12 | v30))
    {
      if (v12)
      {
        ReturnExpression(a1, a3[6]);
        a3[6] = GenConstant(a1, v30, v31);
        GetToken(a1, a2, &v30);
        if (v30 == 171)
        {
          goto LABEL_37;
        }
      }

      else
      {
        ReturnExpression(a1, a3[4]);
        a3[4] = GenConstant(a1, v30, v31);
        GetToken(a1, a2, &v30);
        if (v30 == 171)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (v30 != 35 || strcmp(__s1a, "?VARIABLE"))
      {
LABEL_31:
        gensprintf(v33, "%s attribute", v19, v20, v21, v22, v23, v24, v7);
        v27 = v33;
LABEL_32:
        SyntaxErrorMessage(a1, v27);
        goto LABEL_33;
      }

      GetToken(a1, a2, &v30);
      if (v30 == 171)
      {
        if (!v12)
        {
LABEL_41:
          if (CompareNumbers(a1, *a3[3], *(a3[3] + 8), *a3[4], *(a3[4] + 8)) == 1)
          {
            PrintErrorID(a1, "CSTRNPSR", 2, 1);
            EnvPrintRouter(a1, "werror", "Minimum range value must be less than\n");
            v14 = "or equal to the maximum range value\n";
            goto LABEL_4;
          }

          goto LABEL_43;
        }

LABEL_37:
        if (CompareNumbers(a1, *a3[5], *(a3[5] + 8), *a3[6], *(a3[6] + 8)) == 1)
        {
          PrintErrorID(a1, "CSTRNPSR", 2, 1);
          EnvPrintRouter(a1, "werror", "Minimum cardinality value must be less than\n");
          v14 = "or equal to the maximum cardinality value\n";
          goto LABEL_4;
        }

LABEL_43:
        result = 1;
        goto LABEL_34;
      }
    }

    v27 = "range attribute";
    goto LABEL_32;
  }

  *a4 = v13 | 0x800;
  if (a6)
  {
    goto LABEL_17;
  }

  PrintErrorID(a1, "CSTRNPSR", 5, 1);
  EnvPrintRouter(a1, "werror", "The cardinality attribute ");
  v14 = "can only be used with multifield slots.\n";
LABEL_4:
  v15 = a1;
LABEL_5:
  EnvPrintRouter(v15, "werror", v14);
LABEL_33:
  result = 0;
LABEL_34:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void *OverlayConstraint(void *result, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *a2;
  if (*a2)
  {
    if ((v8 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *a3 & 0xFFFFFFFE | *a4 & 1;
    *a3 = v9;
    v10 = v9 & 0xFFFFFFFD | (2 * ((*a4 >> 1) & 1));
    *a3 = v10;
    v11 = v10 & 0xFFFFFFFB | (4 * ((*a4 >> 2) & 1));
    *a3 = v11;
    v12 = v11 & 0xFFFFFFF7 | (8 * ((*a4 >> 3) & 1));
    *a3 = v12;
    v13 = v12 & 0xFFFFFFEF | (16 * ((*a4 >> 4) & 1));
    *a3 = v13;
    v14 = v13 & 0xFFFFFFDF | (32 * ((*a4 >> 5) & 1));
    *a3 = v14;
    v15 = v14 & 0xFFFFFFBF | (((*a4 >> 6) & 1) << 6);
    *a3 = v15;
    v16 = v15 & 0xFFFFFF7F | (((*a4 >> 7) & 1) << 7);
    *a3 = v16;
    v17 = v16 & 0xFFFFFDFF | (((*a4 >> 9) & 1) << 9);
    *a3 = v17;
    *a3 = v17 & 0xFFFFFEFF | (((*a4 >> 8) & 1) << 8);
    v8 = *a2;
    if ((*a2 & 2) != 0)
    {
LABEL_3:
      if ((v8 & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  ReturnExpression(result, *(a3 + 24));
  ReturnExpression(v7, *(a3 + 32));
  *(a3 + 24) = CopyExpression(v7, *(a4 + 24));
  result = CopyExpression(v7, *(a4 + 32));
  *(a3 + 32) = result;
  v8 = *a2;
  if ((*a2 & 0x200) != 0)
  {
LABEL_4:
    if ((v8 & 0x100) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_9;
  }

LABEL_8:
  ReturnExpression(v7, *(a3 + 8));
  result = CopyExpression(v7, *(a4 + 8));
  *(a3 + 8) = result;
  v8 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  if ((v8 & 0x4FC) != 0)
  {
    if ((v8 & 4) == 0 && (*(a4 + 1) & 8) != 0)
    {
      *a3 |= 0x800u;
      result = AddToRestrictionList(v7, 2, a3, a4);
      v8 = *a2;
    }

    if ((v8 & 8) == 0 && (*(a4 + 1) & 0x10) != 0)
    {
      *a3 |= 0x1000u;
      result = AddToRestrictionList(v7, 3, a3, a4);
      v8 = *a2;
    }

    if ((v8 & 0x10) == 0 && (~*a4 & 0x1800) == 0)
    {
      *a3 |= 0x1800u;
      AddToRestrictionList(v7, 2, a3, a4);
      result = AddToRestrictionList(v7, 3, a3, a4);
      v8 = *a2;
    }

    if ((v8 & 0x40) == 0 && (*(a4 + 1) & 0x40) != 0)
    {
      *a3 |= 0x4000u;
      result = AddToRestrictionList(v7, 1, a3, a4);
      v8 = *a2;
    }

    if ((v8 & 0x20) == 0 && (*(a4 + 1) & 0x20) != 0)
    {
      *a3 |= 0x2000u;
      result = AddToRestrictionList(v7, 0, a3, a4);
      v8 = *a2;
    }

    if ((v8 & 0x80) == 0 && (~*a4 & 0x6000) == 0)
    {
      *a3 |= 0x6000u;
      AddToRestrictionList(v7, 1, a3, a4);
      result = AddToRestrictionList(v7, 0, a3, a4);
      v8 = *a2;
    }

    if (v8 & 0x400) == 0 && (*(a4 + 2))
    {
      *a3 |= 0x10000u;
      result = AddToRestrictionList(v7, 8, a3, a4);
    }
  }

  else
  {
    v18 = *a3 & 0xFFFFFBFF | (((*a4 >> 10) & 1) << 10);
    *a3 = v18;
    v19 = v18 & 0xFFFFF7FF | (((*a4 >> 11) & 1) << 11);
    *a3 = v19;
    v20 = v19 & 0xFFFFEFFF | (((*a4 >> 12) & 1) << 12);
    *a3 = v20;
    v21 = v20 & 0xFFFFDFFF | (((*a4 >> 13) & 1) << 13);
    *a3 = v21;
    v22 = v21 & 0xFFFFBFFF | (((*a4 >> 14) & 1) << 14);
    *a3 = v22;
    v23 = v22 & 0xFFFF7FFF | (((*a4 >> 15) & 1) << 15);
    *a3 = v23;
    *a3 = v23 & 0xFFFEFFFF | ((HIWORD(*a4) & 1) << 16);
    result = CopyExpression(v7, *(a4 + 16));
    *(a3 + 16) = result;
  }

LABEL_32:
  if ((*a2 & 0x800) == 0)
  {
    ReturnExpression(v7, *(a3 + 40));
    ReturnExpression(v7, *(a3 + 48));
    *(a3 + 40) = CopyExpression(v7, *(a4 + 40));
    result = CopyExpression(v7, *(a4 + 48));
    *(a3 + 48) = result;
  }

  return result;
}

void *AddToRestrictionList(void *result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v7 = result;
    do
    {
      v8 = *v4;
      if (v8 == a2)
      {
        result = GenConstant(v7, v8, *(v4 + 1));
        result[3] = *(a3 + 16);
        *(a3 + 16) = result;
      }

      v4 = *(v4 + 3);
    }

    while (v4);
  }

  return result;
}

_WORD *OverlayConstraintParseRecord(_WORD *result, __int16 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    *result |= 1u;
    v2 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *result |= 2u;
  v2 = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *result |= 4u;
  v2 = *a2;
  if ((*a2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *result |= 8u;
  v2 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *result |= 0x10u;
  v2 = *a2;
  if ((*a2 & 0x40) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *result |= 0x40u;
  v2 = *a2;
  if ((*a2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *result |= 0x20u;
  v2 = *a2;
  if ((*a2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *result |= 0x80u;
  v2 = *a2;
  if ((*a2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *result |= 0x100u;
  v2 = *a2;
  if ((*a2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *result |= 0x400u;
  v2 = *a2;
  if ((*a2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

LABEL_25:
    *result |= 0x800u;
    return result;
  }

LABEL_24:
  *result |= 0x200u;
  if ((*a2 & 0x800) != 0)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t NoConjunctiveUseError(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "CSTRNPSR", 3, 1);
  EnvPrintRouter(a1, "werror", "The ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " attribute cannot be used\n");
  EnvPrintRouter(a1, "werror", "in conjunction with the ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", " attribute.\n");
}

uint64_t ProceduralFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0xDu, 0x18uLL, DeallocateProceduralFunctionData_0);
  EnvDefineFunction2(a1, "if", 117, IfFunction, "IfFunction", 0);
  EnvDefineFunction2(a1, "while", 117, WhileFunction, "WhileFunction", 0);
  EnvDefineFunction2(a1, "loop-for-count", 117, LoopForCountFunction, "LoopForCountFunction", 0);
  EnvDefineFunction2(a1, "(get-loop-count)", 103, GetLoopCount, "GetLoopCount", 0);
  EnvDefineFunction2(a1, "bind", 117, BindFunction, "BindFunction", 0);
  EnvDefineFunction2(a1, "progn", 117, PrognFunction, "PrognFunction", 0);
  EnvDefineFunction2(a1, "return", 117, ReturnFunction, "ReturnFunction", 0);
  EnvDefineFunction2(a1, "break", 118, BreakFunction, "BreakFunction", 0);
  EnvDefineFunction2(a1, "switch", 117, SwitchFunction, "SwitchFunction", 0);
  ProceduralFunctionParsers(a1);
  FuncSeqOvlFlags(a1, "progn", 0, 0);
  FuncSeqOvlFlags(a1, "if", 0, 0);
  FuncSeqOvlFlags(a1, "while", 0, 0);
  FuncSeqOvlFlags(a1, "loop-for-count", 0, 0);
  FuncSeqOvlFlags(a1, "return", 0, 0);
  FuncSeqOvlFlags(a1, "switch", 0, 0);
  EnvAddResetFunction(a1, "bind", FlushBindList, 0);

  return EnvAddClearFunction(a1, "bind", FlushBindList, 0);
}

uint64_t DeallocateProceduralFunctionData_0(uint64_t result)
{
  v1 = *(*(*(result + 48) + 104) + 16);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 40);
      v3 = *(result + 48);
      *(*(v3 + 472) + 32) = v1;
      **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 384);
      *(*(*(v3 + 472) + 40) + 384) = *(*(v3 + 472) + 32);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t IfFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(**(*(a1 + 48) + 352) + 16);
  if (!v4 || (v5 = *(v4 + 24)) == 0 || (v6 = *(v5 + 24)) != 0 && *(v6 + 24))
  {
    EnvArgRangeCheck(a1, "if", 2, 3);
    *(a2 + 8) = 2;
LABEL_6:
    result = EnvFalseSymbol(a1);
    *(a2 + 16) = result;
    return result;
  }

  EvaluateExpression(a1, v4, a2);
  v8 = *(*(a1 + 48) + 104);
  if (v8[1] == 1 || *v8 == 1)
  {
    *(a2 + 8) = 2;
    goto LABEL_6;
  }

  v9 = *(a2 + 16);
  result = EnvFalseSymbol(a1);
  if (v9 == result && (v6 ? (v10 = *(a2 + 8) == 2) : (v10 = 0), v10))
  {
    v12 = *(*(**(*(a1 + 48) + 352) + 16) + 24);
  }

  else
  {
    v11 = *(a2 + 16);
    result = EnvFalseSymbol(a1);
    if (v11 == result && *(a2 + 8) == 2)
    {
      goto LABEL_6;
    }

    v12 = *(**(*(a1 + 48) + 352) + 16);
  }

  v13 = *(v12 + 24);
  v14 = *v13;
  if (v14 < 4 || v14 == 5)
  {
    *(a2 + 8) = v14;
    *(a2 + 16) = *(v13 + 1);
  }

  else
  {

    return EvaluateExpression(a1, v13, a2);
  }

  return result;
}

uint64_t WhileFunction(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  memset(v18, 0, sizeof(v18));
  v4 = *(*(a1 + 48) + 440);
  v5 = *(v4 + 112);
  v13[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v13[1] = v5;
  *(v4 + 112) = v13;
  while (1)
  {
    EnvRtnUnknown(a1, 1, v18);
    v6 = *&v18[1];
    if (v6 == EnvFalseSymbol(v3) && WORD4(v18[0]) == 2)
    {
      break;
    }

    v7 = v3[6];
    if (*(*(v7 + 352) + 12) == 1)
    {
      break;
    }

    v8 = *(v7 + 104);
    if (v8[1] == 1)
    {
      break;
    }

    if (*v8 == 1)
    {
      break;
    }

    EnvRtnUnknown(v3, 2, v18);
    v9 = *(v3[6] + 104);
    if (v9[1] == 1 || *v9 == 1)
    {
      break;
    }

    CleanCurrentGarbageFrame(v3, 0);
    CallPeriodicTasks(v3);
    a1 = v3;
  }

  v10 = *(v3[6] + 104);
  v10[1] = 0;
  if (*v10 == 1)
  {
    *(a2 + 8) = WORD4(v18[0]);
    v11 = *&v18[1];
    *(a2 + 24) = *(&v18[1] + 8);
  }

  else
  {
    *(a2 + 8) = 2;
    v11 = EnvFalseSymbol(v3);
  }

  *(a2 + 16) = v11;
  RestorePriorGarbageFrame(v3, v13, v5, a2);
  return CallPeriodicTasks(v3);
}

uint64_t LoopForCountFunction(void *a1, uint64_t a2)
{
  memset(v26, 0, sizeof(v26));
  v4 = a1[6];
  v5 = *(v4 + 472);
  v6 = *(*(v5 + 40) + 128);
  if (v6)
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + 128) = **(*(v4 + 472) + 32);
    v7 = a1[6];
    v8 = *(*(v7 + 472) + 32);
  }

  else
  {
    v8 = genalloc(a1, 0x10uLL);
    v7 = a1[6];
  }

  v9 = *(*(v7 + 104) + 8);
  *v8 = 0;
  v8[1] = v9;
  *(*(v7 + 104) + 8) = v8;
  if (!EnvArgTypeCheck(a1, "loop-for-count", 1, 1, v26))
  {
    *(a2 + 8) = 2;
LABEL_18:
    result = EnvFalseSymbol(a1);
    *(a2 + 16) = result;
    v20 = a1[6];
    *(*(v20 + 104) + 8) = v8[1];
    *(*(v20 + 472) + 32) = v8;
    **(*(v20 + 472) + 32) = *(*(*(v20 + 472) + 40) + 128);
    *(*(*(v20 + 472) + 40) + 128) = *(*(v20 + 472) + 32);
    return result;
  }

  *v8 = *(*&v26[1] + 24);
  if (!EnvArgTypeCheck(a1, "loop-for-count", 2, 1, v26))
  {
    *(a2 + 8) = 2;
    goto LABEL_18;
  }

  v10 = a1[6];
  v11 = v10[55];
  v12 = *(v11 + 112);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21[0] = 0;
  v22 = 0u;
  v21[1] = v12;
  *(v11 + 112) = v21;
  v13 = *(*&v26[1] + 24);
  if (*v8 <= v13)
  {
    while (1)
    {
      v10 = a1[6];
      if (*(v10[44] + 12) == 1)
      {
        break;
      }

      v16 = v10[13];
      if (v16[1] == 1)
      {
        break;
      }

      if (*v16 == 1)
      {
        break;
      }

      EnvRtnUnknown(a1, 3, v26);
      v10 = a1[6];
      v17 = v10[13];
      if (v17[1] == 1 || *v17 == 1)
      {
        break;
      }

      CleanCurrentGarbageFrame(a1, 0);
      CallPeriodicTasks(a1);
      v18 = (*v8)++;
      if (v18 >= v13)
      {
        v10 = a1[6];
        break;
      }
    }
  }

  v14 = v10[13];
  v14[1] = 0;
  if (*v14 == 1)
  {
    *(a2 + 8) = WORD4(v26[0]);
    v15 = *&v26[1];
    *(a2 + 24) = *(&v26[1] + 8);
  }

  else
  {
    *(a2 + 8) = 2;
    v15 = EnvFalseSymbol(a1);
    v10 = a1[6];
  }

  *(a2 + 16) = v15;
  *(v10[13] + 8) = v8[1];
  *(v10[59] + 32) = v8;
  **(v10[59] + 32) = *(*(v10[59] + 40) + 128);
  *(*(v10[59] + 40) + 128) = *(v10[59] + 32);
  RestorePriorGarbageFrame(a1, v21, v12, a2);
  return CallPeriodicTasks(a1);
}

uint64_t GetLoopCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(*(**(v1 + 352) + 16) + 8) + 24);
  v3 = *(v1 + 104);
  v4 = v2 + 1;
  do
  {
    v3 = v3[1];
    --v4;
  }

  while (v4 > 0);
  return *v3;
}

uint64_t BindFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(**(*(a1 + 48) + 352) + 16);
  if (*v4 == 90)
  {
    v5 = 0;
    v6 = *(v4 + 8);
  }

  else
  {
    EvaluateExpression(a1, v4, a2);
    v6 = 0;
    v5 = *(a2 + 16);
    v4 = *(**(*(a1 + 48) + 352) + 16);
  }

  v7 = *(v4 + 24);
  if (v7)
  {
    if (*(v7 + 24))
    {
      StoreInMultifield(a1, a2, v7, 1);
    }

    else
    {
      EvaluateExpression(a1, *(v4 + 24), a2);
    }

    v8 = 0;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 1;
    if (v6)
    {
LABEL_15:

      return QSetDefglobalValue(a1, v6, a2, v8);
    }
  }

  v9 = *(a1 + 48);
  v10 = *(*(v9 + 104) + 16);
  if (v10)
  {
    if (*v10 == v5)
    {
      v11 = 0;
LABEL_23:
      ValueDeinstall(a1, v10);
      if (v7)
      {
        goto LABEL_31;
      }

      if (v11)
      {
        v15 = v11 + 40;
      }

      else
      {
        v15 = (*(*(a1 + 48) + 104) + 16);
      }

      *v15 = *(v10 + 5);
      DecrementSymbolCount(a1, *v10);
      v17 = *(a1 + 48);
      *(*(v17 + 472) + 32) = v10;
      **(*(v17 + 472) + 32) = *(*(*(v17 + 472) + 40) + 384);
      *(*(*(v17 + 472) + 40) + 384) = *(*(v17 + 472) + 32);
LABEL_36:
      *(a2 + 8) = 2;
      result = EnvFalseSymbol(a1);
      *(a2 + 16) = result;
      return result;
    }

    while (1)
    {
      v11 = v10;
      v10 = *(v10 + 5);
      if (!v10)
      {
        break;
      }

      if (*v10 == v5)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (!v7)
  {
    goto LABEL_36;
  }

  v13 = *(v9 + 472);
  v14 = *(*(v13 + 40) + 384);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v9 + 472) + 40) + 384) = **(*(v9 + 472) + 32);
    v10 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v10 = genalloc(a1, 0x30uLL);
  }

  *v10 = v5;
  ++*(v5 + 8);
  *(v10 + 5) = 0;
  if (v11)
  {
    v16 = v11 + 40;
  }

  else
  {
    v16 = (*(*(a1 + 48) + 104) + 16);
  }

  *v16 = v10;
LABEL_31:
  *(v10 + 4) = *(a2 + 8);
  *(v10 + 2) = *(a2 + 16);
  *(v10 + 24) = *(a2 + 24);

  return ValueInstall(a1, a2);
}

uint64_t PrognFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(**(*(a1 + 48) + 352) + 16);
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
    if (GetHaltExecution(a1) == 1)
    {
      break;
    }

    EvaluateExpression(a1, v4, a2);
    v5 = *(*(a1 + 48) + 104);
    if (v5[1] == 1)
    {
      break;
    }

    if (*v5 == 1)
    {
      break;
    }

    v4 = *(v4 + 24);
  }

  while (v4);
  result = GetHaltExecution(a1);
  if (result == 1)
  {
LABEL_7:
    *(a2 + 8) = 2;
    result = EnvFalseSymbol(a1);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t ReturnFunction(uint64_t a1, uint64_t a2)
{
  if (EnvRtnArgCount(a1))
  {
    result = EnvRtnUnknown(a1, 1, a2);
  }

  else
  {
    *(a2 + 8) = 175;
    result = EnvFalseSymbol(a1);
    *(a2 + 16) = result;
  }

  **(*(a1 + 48) + 104) = 1;
  return result;
}

uint64_t SwitchFunction(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EvaluateExpression(a1, *(**(*(a1 + 48) + 352) + 16), &v11);
  v5 = *(*(a1 + 48) + 352);
  if (!v5[2])
  {
    for (i = *(*v5 + 16); ; i = *(v7 + 24))
    {
      v7 = *(i + 24);
      if (!v7)
      {
        break;
      }

      if (*v7 == 175)
      {
        return EvaluateExpression(a1, *(v7 + 24), a2);
      }

      result = EvaluateExpression(a1, v7, &v8);
      if (*(*(*(a1 + 48) + 352) + 8))
      {
        return result;
      }

      if (WORD4(v11) == WORD4(v8))
      {
        if (WORD4(v11) == 4)
        {
          result = MultifieldDOsEqual(&v11, &v8);
          if (result)
          {
            return EvaluateExpression(a1, *(v7 + 24), a2);
          }
        }

        else if (v12 == v9)
        {
          return EvaluateExpression(a1, *(v7 + 24), a2);
        }
      }
    }
  }

  return result;
}

uint64_t FlushBindList(uint64_t a1)
{
  result = ReturnValues(a1, *(*(*(a1 + 48) + 104) + 16), 1);
  *(*(*(a1 + 48) + 104) + 16) = 0;
  return result;
}

uint64_t GetBoundVariable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 48) + 104) + 16);
  if (!v3)
  {
    return 0;
  }

  while (*v3 != a3)
  {
    v3 = *(v3 + 40);
    if (!v3)
    {
      return 0;
    }
  }

  *(a2 + 8) = *(v3 + 8);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 24) = *(v3 + 24);
  return 1;
}

uint64_t _routerGetCImpl(uint64_t a1, const char *a2)
{
  v3 = GetEnvironmentContext(a1);
  if (strcmp(a2, "cmd"))
  {
    goto LABEL_2;
  }

  v6 = [v3 currentCommand];
  if (!v6)
  {
    goto LABEL_2;
  }

  v7 = v6;
  v8 = [v3 commandStringLoc];
  v9 = [v3 currentCommand];
  v10 = [v9 length];

  if (v8 < v10)
  {
    v11 = [v3 commandStringLoc];
    [v3 setCommandStringLoc:{objc_msgSend(v3, "commandStringLoc") + 1}];
    v12 = [v3 currentCommand];
    v4 = [v12 characterAtIndex:v11];
  }

  else
  {
LABEL_2:
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t _routerUngetCImpl(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = GetEnvironmentContext(a1);
  if (!strcmp(a3, "cmd") && [v5 commandStringLoc])
  {
    [v5 setCommandStringLoc:{objc_msgSend(v5, "commandStringLoc") - 1}];
  }

  else
  {
    a2 = 0xFFFFFFFFLL;
  }

  return a2;
}

void _clearCallback(uint64_t a1)
{
  v2 = GetEnvironmentContext(a1);
  v1 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 clipsDidClear:v2];
  }
}

void _resetCallback(uint64_t a1)
{
  v2 = GetEnvironmentContext(a1);
  v1 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 clipsDidReset:v2];
  }
}

void shortObjCPrintFunc(uint64_t a1, FILE *a2, uint64_t a3)
{
  v6 = [*(a3 + 24) description];
  v5 = v6;
  EnvPrintRouter(a1, a2, [v6 UTF8String]);
}

void longObjCPrintFunc(uint64_t a1, FILE *a2, uint64_t a3)
{
  v6 = [*(a3 + 24) debugDescription];
  v5 = v6;
  EnvPrintRouter(a1, a2, [v6 UTF8String]);
}

uint64_t strongObjCReleaseFunc(uint64_t a1, void *a2)
{
  v3 = GetEnvironmentContext(a1);
  v4 = a2;
  if (v4)
  {
    v5 = [v3 clipsHeldObjects];
    v6 = [v5 containsObject:v4];

    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = [v3 clipsHeldObjects];
    [v7 removeObject:v4];
  }

  v8 = 1;
LABEL_6:

  return v8;
}

void sub_2327B8468(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_2327B8480(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x2327B848CLL);
}

uint64_t delegateCallbackRouter(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = GetEnvironmentContext(a1);
  v5 = GetEnvironmentFunctionContext(a1);
  v6 = [v5 methodSignature];
  v7 = EnvRtnArgCount(a1);
  v8 = [v6 numberOfArguments];
  v9 = v8 - 2;
  if (v8 - 2 == v7)
  {
    v10 = v8;
    if (v8 >= 3)
    {
      v11 = 2;
      while (1)
      {
        v12 = v6;
        v13 = [v6 getArgumentTypeAtIndex:v11];
        if (*v13 != 64)
        {
          break;
        }

        v37 = 0u;
        memset(buf, 0, sizeof(buf));
        EnvRtnUnknown(a1, v11 - 1, buf);
        v14 = [v4 objectForDO:buf];
        v15 = v14;
        if (v14)
        {
          v35 = v14;
          [v5 setArgument:&v35 atIndex:v11];
          [v5 retainArguments];
        }

        else
        {
          v35 = 0;
          [v5 setArgument:&v35 atIndex:v11];
        }

        if (v10 == ++v11)
        {
          goto LABEL_9;
        }
      }

      v24 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      v20 = "%s does NOT wantsObjC";
      v21 = v24;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 12;
      goto LABEL_20;
    }

LABEL_9:
    [v5 invoke];
    v16 = v6;
    v17 = *[v6 methodReturnType];
    if (v17 > 0x65)
    {
      if (v17 == 102)
      {
        *buf = 0;
        [v5 getReturnValue:buf];
        *(a2 + 8) = 0;
        v18 = EnvAddDouble(a1, *buf);
        goto LABEL_28;
      }

      if (v17 == 118)
      {
        *(a2 + 8) = 2;
        v18 = EnvTrueSymbol(a1);
        goto LABEL_28;
      }
    }

    else
    {
      if (v17 == 64)
      {
        *(a2 + 8) = 5;
        v35 = 0;
        [v5 getReturnValue:&v35];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a2 + 8) = 3;
          [v4 addObjectToEnvironment:v35];
          v18 = EnvAddSymbol(a1, [v35 UTF8String]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(a2 + 8) = 1;
            v18 = EnvAddLong(a1, [v35 integerValue]);
          }

          else
          {
            if (v35)
            {
              v31 = debuggabilityLogHandle;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = v35;
                v33 = objc_opt_class();
                v34 = NSStringFromClass(v33);
                *buf = 138412546;
                *&buf[4] = v32;
                *&buf[12] = 2112;
                *&buf[14] = v34;
                _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "Unsupported CLIPS external function return value is %@ (%@)", buf, 0x16u);
              }
            }

            v18 = [v4 addObjectToEnvironment:0];
          }
        }

        goto LABEL_28;
      }

      if (v17 == 73)
      {
        *buf = 0;
        [v5 getReturnValue:buf];
        *(a2 + 8) = 1;
        v18 = EnvAddLong(a1, *buf);
LABEL_28:
        v25 = 0;
        *(a2 + 16) = v18;
        goto LABEL_29;
      }
    }

    v26 = debuggabilityLogHandle;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v6;
      v28 = *[v6 methodReturnType];
      *buf = 67109120;
      *&buf[4] = v28;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "Unknown return type %c", buf, 8u);
    }

    goto LABEL_21;
  }

  v19 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    v20 = "The signature's arg count (%lu) doesn't match what CLIPS indicates %lu";
    v21 = v19;
    v22 = OS_LOG_TYPE_INFO;
    v23 = 22;
LABEL_20:
    _os_log_impl(&dword_23255B000, v21, v22, v20, buf, v23);
  }

LABEL_21:
  v25 = 0xFFFFFFFFLL;
LABEL_29:

  v29 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_2327B89F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exception thrown: %@"];
    [v9 reportError:v11];

    SetEvaluationError(v10, 1);
    objc_end_catch();
    JUMPOUT(0x2327B88D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_2327BA820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t AllocateDefmoduleGlobals(uint64_t a1)
{
  AllocateEnvironmentData(a1, 4u, 0x90uLL, 0);
  result = AddEnvironmentCleanupFunction(a1, "defmodules", DeallocateDefmoduleData, -1000);
  v3 = *(*(a1 + 48) + 32);
  *(v3 + 24) = 1;
  *(v3 + 80) = 1;
  return result;
}

uint64_t DeallocateDefmoduleData(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v3 + 112);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 16;
    do
    {
      v7 = *(*(v3 + 136) + v6);
      if (v7)
      {
        rm(a1, v7, 8 * *(v3 + 56));
        v2 = *(a1 + 48);
      }

      ++v5;
      v3 = *(v2 + 32);
      v4 = *(v3 + 112);
      v6 += 72;
    }

    while (v4 > v5);
  }

  if (72 * v4)
  {
    genfree(a1, *(v3 + 136), 72 * v4);
    v2 = *(a1 + 48);
    *(*(v2 + 32) + 32) = 0;
  }

  v8 = *(v2 + 32);
  v9 = 32 * *(v8 + 120);
  if (v9)
  {
    genfree(a1, *(v8 + 128), v9);
    v8 = *(*(a1 + 48) + 32);
  }

  v10 = *(v8 + 32);
  if (v10)
  {
    do
    {
      v11 = *(v10 + 64);
      ReturnDefmodule(a1, v10, 1);
      v10 = v11;
    }

    while (v11);
    v8 = *(*(a1 + 48) + 32);
  }

  v12 = *(v8 + 88);
  if (v12)
  {
    do
    {
      v13 = *(v12 + 16);
      v14 = *(a1 + 48);
      *(*(v14 + 472) + 32) = v12;
      **(*(v14 + 472) + 32) = *(*(*(v14 + 472) + 40) + 192);
      *(*(*(v14 + 472) + 40) + 192) = *(*(v14 + 472) + 32);
      v12 = v13;
    }

    while (v13);
    v8 = *(*(a1 + 48) + 32);
  }

  v15 = *(v8 + 16);
  if (v15)
  {
    do
    {
      v16 = *(v15 + 16);
      v17 = *(a1 + 48);
      *(*(v17 + 472) + 32) = v15;
      **(*(v17 + 472) + 32) = *(*(*(v17 + 472) + 40) + 192);
      *(*(*(v17 + 472) + 40) + 192) = *(*(v17 + 472) + 32);
      v15 = v16;
    }

    while (v16);
    v8 = *(*(a1 + 48) + 32);
  }

  v18 = *(v8 + 64);
  if (v18)
  {
    do
    {
      v19 = *(v18 + 56);
      v20 = *(a1 + 48);
      *(*(v20 + 472) + 32) = v18;
      **(*(v20 + 472) + 32) = *(*(*(v20 + 472) + 40) + 512);
      *(*(*(v20 + 472) + 40) + 512) = *(*(v20 + 472) + 32);
      v18 = v19;
    }

    while (v19);
    v8 = *(*(a1 + 48) + 32);
  }

  DeallocateCallList(a1, *(v8 + 104));
  v21 = *(*(*(a1 + 48) + 32) + 8);

  return DeallocateCallList(a1, v21);
}

uint64_t InitializeDefmodules(uint64_t a1)
{
  DefmoduleBasicCommands(a1);
  CreateMainModule(a1);
  AddConstruct(a1, "defmodule", "defmodules", ParseDefmodule, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  EnvDefineFunction2(a1, "get-current-module", 119, GetCurrentModuleCommand, "GetCurrentModuleCommand", "00");

  return EnvDefineFunction2(a1, "set-current-module", 119, SetCurrentModuleCommand, "SetCurrentModuleCommand", "11w");
}

uint64_t CreateMainModule(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 472);
  v4 = *(*(v3 + 40) + 576);
  if (v4)
  {
    *(v3 + 32) = v4;
    *(*(*(v2 + 472) + 40) + 576) = **(*(v2 + 472) + 32);
    v5 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v5 = genalloc(a1, 0x48uLL);
  }

  v6 = EnvAddSymbol(a1, "MAIN");
  ++v6[1];
  *v5 = v6;
  v5[1] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[6] = 0;
  v7 = *(*(*(a1 + 48) + 32) + 56);
  if (v7)
  {
    v5[2] = gm2(a1, 8 * v7);
    v8 = *(*(a1 + 48) + 32);
    if (*(v8 + 56) >= 1)
    {
      v9 = *(v8 + 64);
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *(v9 + 16);
          if (v11)
          {
            *(v5[2] + 8 * v10) = v11(a1);
            v12 = *(v5[2] + 8 * v10);
            v12[1] = 0;
            v12[2] = 0;
            *v12 = v5;
          }

          else
          {
            *(v5[2] + 8 * v10) = 0;
          }

          ++v10;
          v9 = *(v9 + 56);
        }

        while (v10 < *(*(*(a1 + 48) + 32) + 56) && v9 != 0);
      }
    }
  }

  else
  {
    v5[2] = 0;
  }

  SetNumberOfDefmodules(a1, 1);
  v14 = *(a1 + 48);
  *(*(v14 + 32) + 48) = v5;
  *(*(v14 + 32) + 32) = v5;

  return EnvSetCurrentModule(a1, v5);
}

uint64_t *GetCurrentModuleCommand(uint64_t a1)
{
  EnvArgCountCheck(a1, "get-current-module", 0, 0);
  v2 = *(*(*(a1 + 48) + 32) + 40);
  if (v2)
  {
    v3 = *(*v2 + 24);

    return EnvAddSymbol(a1, v3);
  }

  else
  {

    return EnvFalseSymbol(a1);
  }
}

uint64_t *SetCurrentModuleCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = *(*(*(a1 + 48) + 32) + 40);
  if (v2)
  {
    v3 = EnvAddSymbol(a1, *(*v2 + 24));
    if (EnvArgCountCheck(a1, "set-current-module", 0, 1) != -1 && EnvArgTypeCheck(a1, "set-current-module", 1, 2, &v7))
    {
      v4 = *(v8 + 24);
      Defmodule = EnvFindDefmodule(a1, v4);
      if (Defmodule)
      {
        EnvSetCurrentModule(a1, Defmodule);
      }

      else
      {
        CantFindItemErrorMessage(a1, "defmodule", v4);
      }
    }

    return v3;
  }

  else
  {

    return EnvFalseSymbol(a1);
  }
}

uint64_t RegisterModuleItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 48);
  v15 = *(v14 + 472);
  v16 = *(*(v15 + 40) + 512);
  if (v16)
  {
    *(v15 + 32) = v16;
    *(*(*(v14 + 472) + 40) + 512) = **(*(v14 + 472) + 32);
    v17 = *(a1 + 48);
    v18 = *(*(v17 + 472) + 32);
  }

  else
  {
    v18 = genalloc(a1, 0x40uLL);
    v17 = *(a1 + 48);
  }

  *v18 = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v19 = *(v17 + 32);
  v20 = *(v19 + 56);
  *(v19 + 56) = v20 + 1;
  *(v18 + 2) = v20;
  v18[7] = 0;
  v21 = *(v17 + 32);
  v23 = *v21;
  v22 = v21 + 8;
  v24 = (v23 + 56);
  if (v23)
  {
    v22 = v24;
  }

  *v22 = v18;
  **(v17 + 32) = v18;
  return v20;
}

uint64_t FindModuleItem(uint64_t a1, char *__s2)
{
  for (i = *(*(*(a1 + 48) + 32) + 64); i; i = *(i + 56))
  {
    if (!strcmp(*i, __s2))
    {
      break;
    }
  }

  return i;
}

void *SaveCurrentModule(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 472);
  v4 = *(*(v3 + 40) + 192);
  if (v4)
  {
    *(v3 + 32) = v4;
    *(*(*(v2 + 472) + 40) + 192) = **(*(v2 + 472) + 32);
    v5 = *(a1 + 48);
    result = *(*(v5 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x18uLL);
    v5 = *(a1 + 48);
  }

  v7 = *(v5 + 32);
  *result = *(v7 + 24);
  *(v7 + 24) = 0;
  result[1] = *(v7 + 40);
  result[2] = *(*(v5 + 32) + 16);
  *(*(v5 + 32) + 16) = result;
  return result;
}

uint64_t RestoreCurrentModule(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  v4 = *(v3 + 8);
  *(v2 + 16) = *(v3 + 16);
  v5 = *(v1 + 32);
  *(v5 + 24) = *v3;
  *(v5 + 40) = v4;
  *(*(v1 + 472) + 32) = v3;
  **(*(v1 + 472) + 32) = *(*(*(v1 + 472) + 40) + 192);
  *(*(*(v1 + 472) + 40) + 192) = *(*(v1 + 472) + 32);
  return result;
}

uint64_t SetModuleItem(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a2 || (a2 = *(*(*(result + 48) + 32) + 40)) != 0)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(v4 + 8 * a3) = a4;
    }
  }

  return result;
}

uint64_t SetListOfDefmodules(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  *(*(v2 + 32) + 32) = a2;
  *(*(v2 + 32) + 48) = *(*(v2 + 32) + 32);
  v3 = *(v2 + 32);
  v6 = *(v3 + 48);
  v4 = (v3 + 48);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = *(v5 + 64);
      if (!v7)
      {
        break;
      }

      *v4 = v7;
      v8 = *(v2 + 32);
      v9 = *(v8 + 48);
      v4 = (v8 + 48);
      v5 = v9;
    }
  }

  return result;
}

uint64_t EnvGetNextDefmodule(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + 64;
  }

  else
  {
    v2 = *(*(a1 + 48) + 32) + 32;
  }

  return *v2;
}

uint64_t RemoveAllDefmodules(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = result;
    do
    {
      v5 = *(v3 + 64);
      result = ReturnDefmodule(v4, v3, 0);
      v1 = *(v4 + 48);
      *(*(v1 + 32) + 32) = v5;
      v2 = *(v1 + 32);
      v3 = *(v2 + 32);
    }

    while (v3);
  }

  *(v2 + 40) = 0;
  *(*(v1 + 32) + 48) = 0;
  return result;
}

uint64_t ReturnDefmodule(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      rm(a1, v6, 8 * *(*(*(a1 + 48) + 32) + 56));
    }
  }

  else
  {
    EnvSetCurrentModule(a1, a2);
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = *(v8 + 32);
      v10 = *(v9 + 64);
      v11 = *(v9 + 56);
      if (v11 >= 1 && v10 != 0)
      {
        v13 = 0;
        do
        {
          v14 = *(v10 + 24);
          if (v14)
          {
            v14(a1, *(*(a2 + 16) + 8 * v13));
            v8 = *(a1 + 48);
          }

          ++v13;
          v10 = *(v10 + 56);
          v11 = *(*(v8 + 32) + 56);
        }

        while (v13 < v11 && v10 != 0);
        v7 = *(a2 + 16);
      }

      rm(a1, v7, 8 * v11);
    }

    DecrementSymbolCount(a1, *a2);
  }

  for (i = *(a2 + 24); i; *(*(*(v20 + 472) + 40) + 256) = *(*(v20 + 472) + 32))
  {
    v17 = i;
    i = i[3];
    if (!a3)
    {
      if (*v17)
      {
        DecrementSymbolCount(a1, *v17);
      }

      v18 = v17[1];
      if (v18)
      {
        DecrementSymbolCount(a1, v18);
      }

      v19 = v17[2];
      if (v19)
      {
        DecrementSymbolCount(a1, v19);
      }
    }

    v20 = *(a1 + 48);
    *(*(v20 + 472) + 32) = v17;
    **(*(v20 + 472) + 32) = *(*(*(v20 + 472) + 40) + 256);
  }

  for (j = *(a2 + 32); j; *(*(*(v25 + 472) + 40) + 256) = *(*(v25 + 472) + 32))
  {
    v22 = j;
    j = j[3];
    if (!a3)
    {
      if (*v22)
      {
        DecrementSymbolCount(a1, *v22);
      }

      v23 = v22[1];
      if (v23)
      {
        DecrementSymbolCount(a1, v23);
      }

      v24 = v22[2];
      if (v24)
      {
        DecrementSymbolCount(a1, v24);
      }
    }

    v25 = *(a1 + 48);
    *(*(v25 + 472) + 32) = v22;
    **(*(v25 + 472) + 32) = *(*(*(v25 + 472) + 40) + 256);
  }

  v26 = *(a2 + 8);
  if (v26)
  {
    v27 = strlen(*(a2 + 8));
    rm(a1, v26, v27 + 1);
  }

  result = ClearUserDataList(a1, *(a2 + 56));
  v29 = *(a1 + 48);
  *(*(v29 + 472) + 32) = a2;
  **(*(v29 + 472) + 32) = *(*(*(v29 + 472) + 40) + 576);
  *(*(*(v29 + 472) + 40) + 576) = *(*(v29 + 472) + 32);
  return result;
}

void *AddAfterModuleChangeFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = AddFunctionToCallList(a1, a2, a4, a3, *(*(*(a1 + 48) + 32) + 8), 1);
  *(*(*(a1 + 48) + 32) + 8) = result;
  return result;
}

uint64_t IllegalModuleSpecifierMessage(uint64_t a1)
{
  PrintErrorID(a1, "MODULDEF", 1, 1);

  return EnvPrintRouter(a1, "werror", "Illegal use of the module specifier.\n");
}

uint64_t SetupDeffunctions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x17u, 0xB0uLL, DeallocateDeffunctionData);
  v2 = *(*(a1 + 48) + 184);
  v3 = unk_284795178;
  v2[5] = xmmword_284795168;
  v2[6] = v3;
  v2[7] = xmmword_284795188;
  v4 = *&off_284795138;
  v2[1] = xmmword_284795128;
  v2[2] = v4;
  v5 = unk_284795158;
  v2[3] = xmmword_284795148;
  v2[4] = v5;
  InstallPrimitive(a1, *(*(a1 + 48) + 184) + 16, 32);
  *(*(*(a1 + 48) + 184) + 8) = RegisterModuleItem(a1, "deffunction", AllocateModule_3, ReturnModule_3, BloadDeffunctionModuleReference, 0, EnvFindDeffunctionInModule);
  **(*(a1 + 48) + 184) = AddConstruct(a1, "deffunction", "deffunctions", ParseDeffunction, EnvFindDeffunction, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDeffunction, SetNextConstruct, EnvIsDeffunctionDeletable, EnvUndeffunction, RemoveDeffunction);
  AddClearReadyFunction(a1, "deffunction", ClearDeffunctionsReady, 0);
  AddPortConstructItem(a1, "deffunction", 2);
  AddSaveFunction(a1, "deffunction-headers", SaveDeffunctionHeaders, 1000);
  AddSaveFunction(a1, "deffunctions", SaveDeffunctions, 0);
  EnvDefineFunction2(a1, "undeffunction", 118, UndeffunctionCommand, "UndeffunctionCommand", "11w");
  EnvDefineFunction2(a1, "list-deffunctions", 118, ListDeffunctionsCommand, "ListDeffunctionsCommand", "01");
  EnvDefineFunction2(a1, "ppdeffunction", 118, PPDeffunctionCommand, "PPDeffunctionCommand", "11w");
  EnvDefineFunction2(a1, "get-deffunction-list", 109, GetDeffunctionListFunction, "GetDeffunctionListFunction", "01");
  EnvDefineFunction2(a1, "deffunction-module", 119, GetDeffunctionModuleCommand, "GetDeffunctionModuleCommand", "11w");
  SetupDeffunctionsBload(a1);
  v6 = *(*(a1 + 48) + 184) + 128;

  return AddWatchItem(a1, "deffunctions", 0, v6, 32, DeffunctionWatchAccess, DeffunctionWatchPrint);
}

BOOL EvaluateDeffunctionCall(void *a1, uint64_t a2, uint64_t a3)
{
  CallDeffunction(a1, a2, *(**(a1[6] + 352) + 16), a3);
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

uint64_t DecrementDeffunctionBusyCount(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 48) + 336) + 4))
  {
    --*(a2 + 48);
  }

  return result;
}

uint64_t IncrementDeffunctionBusyCount(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 48) + 336);
  if (!*(v2 + 44))
  {
    ++*(v2 + 20);
  }

  ++*(a2 + 48);
  return result;
}

uint64_t DeallocateDeffunctionData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDeffunctionAction, *(*(*(a1 + 48) + 184) + 8), 0, 0);
    result = EnvGetNextDefmodule(a1, 0);
    if (result)
    {
      v3 = result;
      do
      {
        ModuleItem = GetModuleItem(a1, v3, *(*(*(a1 + 48) + 184) + 8));
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

void *AllocateModule_3(uint64_t a1)
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

uint64_t ReturnModule_3(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 184));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
  *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
  return result;
}

BOOL EnvIsDeffunctionDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    return !*(a2 + 48) && *(a2 + 52) == 0;
  }

  return result;
}

uint64_t EnvUndeffunction(uint64_t a1, uint64_t a2)
{
  if (Bloaded(a1) == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (ConstructsDeletable(a1) && !*(a2 + 48) && !*(a2 + 52))
    {
      RemoveConstructFromModule(a1, a2);
      RemoveDeffunction(a1, a2);
      return 1;
    }

    return 0;
  }

  if (Bloaded(a1) == 1)
  {
    return 0;
  }

  NextConstructItem = GetNextConstructItem(a1, 0, *(*(*(a1 + 48) + 184) + 8));
  if (NextConstructItem)
  {
    v7 = NextConstructItem;
    v4 = 1;
    do
    {
      if (*(v7 + 52))
      {
        ConstructNameString = GetConstructNameString(v7);
        CantDeleteItemErrorMessage(a1, "deffunction", ConstructNameString);
        v4 = 0;
      }

      else
      {
        v9 = *(v7 + 48);
        ExpressionDeinstall(a1, *(v7 + 64));
        *(v7 + 48) = v9;
        ReturnPackedExpression(a1, *(v7 + 64));
        *(v7 + 64) = 0;
      }

      v7 = GetNextConstructItem(a1, v7, *(*(*(a1 + 48) + 184) + 8));
    }

    while (v7);
  }

  else
  {
    v4 = 1;
  }

  v10 = GetNextConstructItem(a1, 0, *(*(*(a1 + 48) + 184) + 8));
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = GetNextConstructItem(a1, v11, *(*(*(a1 + 48) + 184) + 8));
      if (!*(v11 + 52))
      {
        if (*(v11 + 48))
        {
          PrintWarningID(a1, "DFFNXFUN", 1, 0);
          EnvPrintRouter(a1, "wwarning", "Deffunction ");
          v13 = GetConstructNameString(v11);
          EnvPrintRouter(a1, "wwarning", v13);
          EnvPrintRouter(a1, "wwarning", " only partially deleted due to usage by other constructs.\n");
          SetConstructPPForm(a1, v11, 0);
          v4 = 0;
        }

        else
        {
          RemoveConstructFromModule(a1, v11);
          RemoveDeffunction(a1, v11);
        }
      }

      v11 = v12;
    }

    while (v12);
  }

  return v4;
}

uint64_t RemoveDeffunction(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    ConstructNamePointer = GetConstructNamePointer(a2);
    DecrementSymbolCount(v3, ConstructNamePointer);
    ExpressionDeinstall(v3, *(a2 + 64));
    ReturnPackedExpression(v3, *(a2 + 64));
    SetConstructPPForm(v3, a2, 0);
    result = ClearUserDataList(v3, *(a2 + 40));
    v5 = *(v3 + 48);
    *(*(v5 + 472) + 32) = a2;
    **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 704);
    *(*(*(v5 + 472) + 40) + 704) = *(*(v5 + 472) + 32);
  }

  return result;
}

uint64_t CheckDeffunctionCall(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a2 + 72);
  if (v5 > a3)
  {
    v6 = *(a2 + 76);
    ConstructNameString = GetConstructNameString(a2);
    v8 = *(a2 + 72);
    if (v6 == -1)
    {
      v9 = a1;
      v10 = 1;
LABEL_10:
      ExpectedCountError(v9, ConstructNameString, v10, v8);
      return 0;
    }

LABEL_9:
    v9 = a1;
    v10 = 0;
    goto LABEL_10;
  }

  if (v5 < a3 && *(a2 + 76) != -1)
  {
    ConstructNameString = GetConstructNameString(a2);
    v8 = *(a2 + 72);
    goto LABEL_9;
  }

  return 1;
}

uint64_t DestroyDeffunctionAction(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    ReturnPackedExpression(result, *(a2 + 64));
    result = DestroyConstructHeader(v3, a2);
    v4 = *(v3 + 48);
    *(*(v4 + 472) + 32) = a2;
    **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 704);
    *(*(*(v4 + 472) + 40) + 704) = *(*(v4 + 472) + 32);
  }

  return result;
}

uint64_t SaveDeffunctionHeader(uint64_t a1, uint64_t a2, FILE *a3)
{
  result = GetConstructPPForm(a1, a2);
  if (result)
  {
    EnvPrintRouter(a1, a3, "(deffunction ");
    ConstructModuleName = GetConstructModuleName(a2);
    EnvPrintRouter(a1, a3, ConstructModuleName);
    EnvPrintRouter(a1, a3, "::");
    ConstructNameString = GetConstructNameString(a2);
    EnvPrintRouter(a1, a3, ConstructNameString);
    EnvPrintRouter(a1, a3, " (");
    v9 = *(a2 + 72);
    if (v9 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        EnvPrintRouter(a1, a3, "?p");
        PrintLongInteger(a1, a3, i, v11, v12, v13, v14, v15);
        v9 = *(a2 + 72);
        if (i != v9 - 1)
        {
          EnvPrintRouter(a1, a3, " ");
          v9 = *(a2 + 72);
        }
      }
    }

    if (*(a2 + 76) == -1)
    {
      if (v9)
      {
        EnvPrintRouter(a1, a3, " ");
      }

      v16 = "$?wildargs))\n\n";
    }

    else
    {
      v16 = "))\n\n";
    }

    return EnvPrintRouter(a1, a3, v16);
  }

  return result;
}

uint64_t DeallocateWatchData(uint64_t result)
{
  v1 = **(*(result + 48) + 432);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 40);
      v3 = *(result + 48);
      *(*(v3 + 472) + 32) = v1;
      **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 384);
      *(*(*(v3 + 472) + 40) + 384) = *(*(v3 + 472) + 32);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t AddWatchItem(uint64_t a1, char *__s2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 48);
  v15 = **(v14 + 432);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      result = strcmp(*v15, __s2);
      if (!result)
      {
        break;
      }

      if (*(v15 + 20) > a5)
      {
        v16 = v15;
      }

      v15 = *(v15 + 40);
      if (!v15)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v16 = 0;
LABEL_9:
    v18 = *(v14 + 472);
    v19 = *(*(v18 + 40) + 384);
    if (v19)
    {
      *(v18 + 32) = v19;
      *(*(*(v14 + 472) + 40) + 384) = **(*(v14 + 472) + 32);
      v20 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v20 = genalloc(a1, 0x30uLL);
    }

    *v20 = __s2;
    v20[1] = a4;
    *(v20 + 4) = a3;
    *(v20 + 5) = a5;
    v20[3] = a6;
    v20[4] = a7;
    if (v16)
    {
      v22 = *(v16 + 40);
      v21 = (v16 + 40);
      v20[5] = v22;
    }

    else
    {
      v23 = *(a1 + 48);
      v20[5] = **(v23 + 432);
      v21 = *(v23 + 432);
    }

    *v21 = v20;
    return 1;
  }

  return result;
}

uint64_t EnvSetWatchItem(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4)
{
  if (a3 > 1)
  {
    return 0;
  }

  v9 = strcmp(__s1, "all");
  v10 = **(*(a1 + 48) + 432);
  if (!v9)
  {
    while (v10)
    {
      if (!a4)
      {
        **(v10 + 8) = a3;
      }

      v11 = *(v10 + 24);
      if (v11 && !v11(a1, *(v10 + 16), a3, a4))
      {
        goto LABEL_20;
      }

      v10 = *(v10 + 40);
    }

    return 1;
  }

  if (v10)
  {
    while (strcmp(__s1, *v10))
    {
      v10 = *(v10 + 40);
      if (!v10)
      {
        return 0;
      }
    }

    if (!a4)
    {
      **(v10 + 8) = a3;
    }

    v12 = *(v10 + 24);
    if (!v12 || v12(a1, *(v10 + 16), a3, a4))
    {
      return 1;
    }

LABEL_20:
    SetEvaluationError(a1, 1);
  }

  return 0;
}

uint64_t EnvGetWatchItem(uint64_t a1, char *__s1)
{
  v2 = **(*(a1 + 48) + 432);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  while (strcmp(__s1, *v2))
  {
    v2 = *(v2 + 40);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return **(v2 + 8);
}

uint64_t GetNthWatchName(uint64_t a1, int a2)
{
  v2 = **(*(a1 + 48) + 432);
  if (!v2)
  {
    return 0;
  }

  while (--a2)
  {
    v2 = v2[5];
    if (!v2)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t GetNthWatchValue(uint64_t a1, int a2)
{
  v2 = **(*(a1 + 48) + 432);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  while (--a2)
  {
    v2 = *(v2 + 40);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return **(v2 + 8);
}

uint64_t WatchCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  result = EnvArgTypeCheck(a1, "watch", 1, 2, &v7);
  if (result)
  {
    v6 = 0;
    v3 = *(v8 + 24);
    valid = ValidWatchItem(a1, v3, &v6);
    if (v6)
    {
      v5 = *(*(**(*(a1 + 48) + 352) + 16) + 24);
      if (!v5 || valid && *(valid + 24))
      {
        return EnvSetWatchItem(a1, v3, 1, v5);
      }

      else
      {
        SetEvaluationError(a1, 1);
        return ExpectedCountError(a1, "watch", 0, 1);
      }
    }

    else
    {
      SetEvaluationError(a1, 1);
      return ExpectedTypeError1(a1, "watch", 1, "watchable symbol");
    }
  }

  return result;
}

uint64_t ValidWatchItem(uint64_t a1, char *__s1, _DWORD *a3)
{
  *a3 = 1;
  if (!strcmp(__s1, "all"))
  {
    return 0;
  }

  v6 = **(*(a1 + 48) + 432);
  if (v6)
  {
    while (strcmp(__s1, *v6))
    {
      v6 = *(v6 + 40);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
    *a3 = 0;
  }

  return v6;
}

uint64_t UnwatchCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  result = EnvArgTypeCheck(a1, "unwatch", 1, 2, &v7);
  if (result)
  {
    v6 = 0;
    v3 = *(v8 + 24);
    valid = ValidWatchItem(a1, v3, &v6);
    if (v6)
    {
      v5 = *(*(**(*(a1 + 48) + 352) + 16) + 24);
      if (!v5 || valid && *(valid + 24))
      {
        return EnvSetWatchItem(a1, v3, 0, v5);
      }

      else
      {
        SetEvaluationError(a1, 1);
        return ExpectedCountError(a1, "unwatch", 0, 1);
      }
    }

    else
    {
      SetEvaluationError(a1, 1);
      return ExpectedTypeError1(a1, "unwatch", 1, "watchable symbol");
    }
  }

  return result;
}

uint64_t ListWatchItemsCommand(uint64_t result)
{
  v1 = result;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v2 = *(result + 48);
  if (*(**(v2 + 352) + 16))
  {
    result = EnvArgTypeCheck(result, "list-watch-items", 1, 2, &v11);
    if (result)
    {
      v10 = 0;
      valid = ValidWatchItem(v1, *(v12 + 24), &v10);
      if (valid)
      {
        v4 = v10 == 0;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        SetEvaluationError(v1, 1);
        return ExpectedTypeError1(v1, "list-watch-items", 1, "watchable symbol");
      }

      else
      {
        v7 = valid;
        if (*(valid + 32) || !*(*(**(*(v1 + 48) + 352) + 16) + 24))
        {
          EnvPrintRouter(v1, "wdisplay", *valid);
          if (**(v7 + 8))
          {
            v8 = " = on\n";
          }

          else
          {
            v8 = " = off\n";
          }

          result = EnvPrintRouter(v1, "wdisplay", v8);
          v9 = *(v7 + 32);
          if (v9)
          {
            result = v9(v1, "wdisplay", *(v7 + 16), *(*(**(*(v1 + 48) + 352) + 16) + 24));
            if (!result)
            {
              return SetEvaluationError(v1, 1);
            }
          }
        }

        else
        {
          SetEvaluationError(v1, 1);
          return ExpectedCountError(v1, "list-watch-items", 0, 1);
        }
      }
    }
  }

  else
  {
    for (i = **(v2 + 432); i; i = *(i + 40))
    {
      EnvPrintRouter(v1, "wdisplay", *i);
      if (**(i + 8))
      {
        v6 = " = on\n";
      }

      else
      {
        v6 = " = off\n";
      }

      result = EnvPrintRouter(v1, "wdisplay", v6);
    }
  }

  return result;
}

uint64_t GetWatchItemCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "get-watch-item", 0, 1) != -1)
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    result = EnvArgTypeCheck(a1, "get-watch-item", 1, 2, &v5);
    if (!result)
    {
      return result;
    }

    v4 = 0;
    v3 = *(v6 + 24);
    ValidWatchItem(a1, v3, &v4);
    if (v4)
    {
      return EnvGetWatchItem(a1, v3) == 1;
    }

    SetEvaluationError(a1, 1);
    ExpectedTypeError1(a1, "get-watch-item", 1, "watchable symbol");
  }

  return 0;
}

uint64_t WatchFunctionDefinitions(uint64_t a1)
{
  EnvDefineFunction2(a1, "watch", 118, WatchCommand, "WatchCommand", "1**w");
  EnvDefineFunction2(a1, "unwatch", 118, UnwatchCommand, "UnwatchCommand", "1**w");
  EnvDefineFunction2(a1, "get-watch-item", 98, GetWatchItemCommand, "GetWatchItemCommand", "11w");
  EnvDefineFunction2(a1, "list-watch-items", 118, ListWatchItemsCommand, "ListWatchItemsCommand", "0**w");
  EnvAddRouter(a1, "wtrace", 1000, RecognizeWatchRouters, CaptureWatchPrints, 0, 0, 0);

  return EnvDeactivateRouter(a1, "wtrace");
}

void *MarkConstructHeaderNeededItems(void *result, uint64_t a2)
{
  *(*result + 16) |= 4u;
  result[3] = a2;
  return result;
}

unint64_t *AssignBsaveConstructHeaderVals(unint64_t *result, uint64_t a2)
{
  v2 = *(**(a2 + 16) + 48);
  *result = *(*a2 + 16) >> 3;
  result[1] = v2;
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = -1;
  }

  result[2] = v4;
  return result;
}

uint64_t UpdateConstructHeader(uint64_t result, uint64_t *a2, void *a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *a2;
  a3[2] = a5 + a2[1] * a4;
  v8 = *(*(*(*(result + 48) + 392) + 120) + 8 * v7);
  ++*(v8 + 8);
  v9 = a2[2];
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a7 + v9 * a6;
  }

  *a3 = v8;
  a3[1] = 0;
  a3[3] = 0;
  a3[4] = v10;
  a3[5] = 0;
  return result;
}

void *ReturnDefrule(void *result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = a2;
  v3 = result;
  v4 = *(result[6] + 128);
  *(v4 + 60) = 0;
  v5 = (*(a2 + 56) >> 11) & 1;
  *(v4 + 60) = v5;
  v6 = *(a2 + 56);
  if ((v6 & 0x1000) != 0)
  {
    v5 |= 2u;
    *(v4 + 60) = v5;
    v6 = *(a2 + 56);
  }

  if ((v6 & 0x2000) != 0)
  {
    *(v4 + 60) = v5 | 4;
  }

  ClearRuleFromAgenda(result, a2);
  v7 = 0;
  do
  {
    v8 = *(v2 + 88);
    *(v2 + 88) = 0;
    if (v8 && (*(v8 + 136) = 0, !*(v8 + 112)))
    {
      DetachJoins(v3, v8, 0);
      if (v7)
      {
        goto LABEL_17;
      }
    }

    else if (v7)
    {
      goto LABEL_17;
    }

    v9 = *(v2 + 64);
    if (v9)
    {
      ExpressionDeinstall(v3, v9);
      ReturnPackedExpression(v3, *(v2 + 64));
      *(v2 + 64) = 0;
    }

    v10 = *(v2 + 8);
    if (v10)
    {
      v11 = strlen(*(v2 + 8));
      rm(v3, v10, v11 + 1);
      *(v2 + 8) = 0;
      for (i = *(v2 + 96); i; i = *(i + 96))
      {
        *(i + 8) = 0;
      }
    }

LABEL_17:
    v13 = *(v2 + 40);
    if (v13)
    {
      ClearUserDataList(v3, v13);
    }

    result = DecrementSymbolCount(v3, *v2);
    v14 = *(v2 + 72);
    if (v14)
    {
      ExpressionDeinstall(v3, v14);
      result = ReturnPackedExpression(v3, *(v2 + 72));
    }

    v15 = *(v2 + 96);
    v16 = v3[6];
    *(*(v16 + 472) + 32) = v2;
    **(*(v16 + 472) + 32) = *(*(*(v16 + 472) + 40) + 832);
    *(*(*(v16 + 472) + 40) + 832) = *(*(v16 + 472) + 32);
    v7 = 1;
    v2 = v15;
  }

  while (v15);
  if (!**(v3[6] + 144))
  {

    return FlushGarbagePartialMatches(v3);
  }

  return result;
}

uint64_t DestroyDefrule(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(v2 + 88);
      *(v2 + 88) = 0;
      if (v5 && (*(v5 + 136) = 0, !*(v5 + 112)))
      {
        result = DetachJoins(v3, v5, 1);
        if ((v4 & 1) == 0)
        {
LABEL_6:
          v6 = *(v2 + 64);
          if (v6)
          {
            result = ReturnPackedExpression(v3, v6);
          }

          v7 = *(v2 + 8);
          if (v7)
          {
            v8 = strlen(*(v2 + 8));
            result = rm(v3, v7, v8 + 1);
            for (i = *(v2 + 96); i; i = *(i + 96))
            {
              *(i + 8) = 0;
            }
          }
        }
      }

      else if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

      v10 = *(v2 + 40);
      if (v10)
      {
        result = ClearUserDataList(v3, v10);
      }

      v11 = *(v2 + 72);
      if (v11)
      {
        result = ReturnPackedExpression(v3, v11);
      }

      v12 = *(v2 + 96);
      v13 = *(v3 + 48);
      *(*(v13 + 472) + 32) = v2;
      **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 832);
      *(*(*(v13 + 472) + 40) + 832) = *(*(v13 + 472) + 32);
      v4 = 1;
      v2 = v12;
    }

    while (v12);
  }

  return result;
}

uint64_t DetachJoins(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  while (1)
  {
    v6 = *a2;
    if ((*a2 & 0x40) != 0)
    {
      return result;
    }

    if ((v6 & 4) != 0)
    {
      v7 = *(a2 + 104);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 120);
    if (a3)
    {
      DestroyBetaMemory(v5, a2, 0);
      DestroyBetaMemory(v5, a2, 1);
      goto LABEL_19;
    }

    if ((v6 & 4) == 0)
    {
      v9 = *(a2 + 104);
      if (v9)
      {
        v10 = v9[2];
        if (!v10)
        {
          goto LABEL_17;
        }

        if (v10 != a2)
        {
          while (1)
          {
            v11 = v10;
            v10 = *(v10 + 128);
            if (!v10)
            {
              goto LABEL_18;
            }

            if (v10 == a2)
            {
              *(v11 + 128) = *(v10 + 128);
              goto LABEL_18;
            }
          }
        }

        v12 = *(v10 + 128);
        v9[2] = v12;
        if (!v12)
        {
          v6 = *a2;
LABEL_17:
          DetachPattern(v5, (v6 >> 7) & 7, v9);
        }
      }
    }

LABEL_18:
    FlushBetaMemory(v5, a2, 0);
    FlushBetaMemory(v5, a2, 1);
LABEL_19:
    ReturnLeftMemory(v5, a2);
    result = ReturnRightMemory(v5, a2);
    if (!a3)
    {
      RemoveHashedExpression(v5, *(a2 + 72));
      RemoveHashedExpression(v5, *(a2 + 80));
      RemoveHashedExpression(v5, *(a2 + 88));
      result = RemoveHashedExpression(v5, *(a2 + 96));
    }

    v13 = *a2;
    if (*a2)
    {
      if (*(a2 + 104))
      {
        goto LABEL_23;
      }

      v20 = *(*(v5[6] + 128) + 40);
      if (!v20)
      {
        goto LABEL_23;
      }

      if (*(v20 + 8) == a2)
      {
        v22 = 0;
LABEL_44:
        v25 = *(v20 + 16);
        if (v22)
        {
          *(v22 + 16) = v25;
          v26 = v5[6];
        }

        else
        {
          v26 = v5[6];
          *(*(v26 + 128) + 40) = v25;
        }

        *(*(v26 + 472) + 32) = v20;
        **(*(v26 + 472) + 32) = *(*(*(v26 + 472) + 40) + 256);
        *(*(*(v26 + 472) + 40) + 256) = *(*(v26 + 472) + 32);
      }

      else
      {
        v21 = *(*(v5[6] + 128) + 40);
        while (1)
        {
          v20 = *(v21 + 16);
          if (!v20)
          {
            break;
          }

          v22 = v21;
          v21 = *(v21 + 16);
          if (*(v20 + 8) == a2)
          {
            goto LABEL_44;
          }
        }
      }

      v13 = *a2;
      if (*a2)
      {
LABEL_23:
        v14 = v13 & 0xC;
        v15 = v13 & 0x10;
        if (v14)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v17 = *(*(v5[6] + 128) + 48);
          if (v17)
          {
            if (*(v17 + 8) == a2)
            {
              v19 = 0;
LABEL_41:
              v23 = *(v17 + 16);
              if (v19)
              {
                *(v19 + 16) = v23;
                v24 = v5[6];
              }

              else
              {
                v24 = v5[6];
                *(*(v24 + 128) + 48) = v23;
              }

              *(*(v24 + 472) + 32) = v17;
              **(*(v24 + 472) + 32) = *(*(*(v24 + 472) + 40) + 256);
              *(*(*(v24 + 472) + 40) + 256) = *(*(v24 + 472) + 32);
            }

            else
            {
              v18 = *(*(v5[6] + 128) + 48);
              while (1)
              {
                v17 = *(v18 + 16);
                if (!v17)
                {
                  break;
                }

                v19 = v18;
                v18 = *(v18 + 16);
                if (*(v17 + 8) == a2)
                {
                  goto LABEL_41;
                }
              }
            }
          }
        }
      }
    }

    if (v8)
    {
      v27 = (v8 + 112);
      v28 = *(v8 + 112);
      if (v28)
      {
        if (*(v28 + 8) == a2)
        {
          v30 = 0;
LABEL_59:
          if (v30)
          {
            v27 = (v30 + 16);
          }

          *v27 = *(v28 + 16);
          v31 = v5[6];
          *(*(v31 + 472) + 32) = v28;
          **(*(v31 + 472) + 32) = *(*(*(v31 + 472) + 40) + 256);
          *(*(*(v31 + 472) + 40) + 256) = *(*(v31 + 472) + 32);
        }

        else
        {
          v29 = *(v8 + 112);
          while (1)
          {
            v28 = *(v29 + 16);
            if (!v28)
            {
              break;
            }

            v30 = v29;
            v29 = *(v29 + 16);
            if (*(v28 + 8) == a2)
            {
              goto LABEL_59;
            }
          }
        }
      }
    }

    if (v7)
    {
      v32 = *(v7 + 112);
      if (!v32)
      {
        goto LABEL_84;
      }

      if (*(v32 + 8) == a2)
      {
        v34 = 0;
LABEL_70:
        v35 = (v34 ? v34 + 16 : v7 + 112);
        *v35 = *(v32 + 16);
        v36 = v5[6];
        *(*(v36 + 472) + 32) = v32;
        **(*(v36 + 472) + 32) = *(*(*(v36 + 472) + 40) + 256);
        *(*(*(v36 + 472) + 40) + 256) = *(*(v36 + 472) + 32);
      }

      else
      {
        v33 = *(v7 + 112);
        while (1)
        {
          v32 = *(v33 + 16);
          if (!v32)
          {
            break;
          }

          v34 = v33;
          v33 = *(v33 + 16);
          if (*(v32 + 8) == a2)
          {
            goto LABEL_70;
          }
        }
      }

      if (!*(v7 + 112))
      {
LABEL_84:
        if (!*(v7 + 136))
        {
          if (v8)
          {
            v37 = *v8;
            *v8 |= 0x40u;
            result = DetachJoins(v5, v7, a3);
            *v8 = *v8 & 0xFFFFFFBF | (((v37 >> 6) & 1) << 6);
          }

          else
          {
            result = DetachJoins(v5, v7, a3);
          }
        }
      }
    }

    v38 = v5[6];
    *(*(v38 + 472) + 32) = a2;
    **(*(v38 + 472) + 32) = *(*(*(v38 + 472) + 40) + 1152);
    *(*(*(v38 + 472) + 40) + 1152) = *(*(v38 + 472) + 32);
    if (v8)
    {
      if (!*(v8 + 136))
      {
        a2 = v8;
        if (!*(v8 + 112))
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t (*resource_notify_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 827806) >= 0xFFFFFFFA)
  {
    return receive_resource_notify_subsystem[5 * (v1 - 827800) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _Xcpu_usage_violation(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 1144)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = receive_cpu_usage_violation(*(result + 12), result + 32, *(result + 68), result + 72, *(result + 1096), *(result + 1104), *(result + 1112), *(result + 1120), *(result + 1128), *(result + 1136));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xcpu_wakes_violation(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 1144)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = receive_cpu_wakes_violation(*(result + 12), result + 32, *(result + 68), result + 72, *(result + 1096), *(result + 1104), *(result + 1112), *(result + 1120), *(result + 1128), *(result + 1136));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xport_space_violation(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 120)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      v3 = *(result + 112);
      result = receive_port_space_violation(*(result + 12), result + 48, *(result + 84), *(result + 88), *(result + 96), *(result + 104), *(result + 28));
      *(a2 + 32) = result;
      return result;
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _Xfile_descriptors_violation(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 120)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      v3 = *(result + 112);
      result = receive_file_descriptors_violation(*(result + 12), result + 48, *(result + 84), *(result + 88), *(result + 96), *(result + 104), *(result + 28));
      *(a2 + 32) = result;
      return result;
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _Xkqworkloops_violation(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 120)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      v3 = *(result + 112);
      result = receive_kqworkloops_violation(*(result + 12), result + 48, *(result + 84), *(result + 88), *(result + 96), *(result + 104), *(result + 28));
      *(a2 + 32) = result;
      return result;
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t sub_2327C61F0()
{
  v0 = sub_2327D7398();
  __swift_allocate_value_buffer(v0, qword_2814D3D80);
  __swift_project_value_buffer(v0, qword_2814D3D80);
  return sub_2327D7388();
}

id sub_2327C6270()
{
  result = [objc_allocWithZone(NDFCoreShim) init];
  qword_27DDA4010 = result;
  return result;
}

uint64_t *sub_2327C62A4()
{
  if (qword_2814D4360 != -1)
  {
    swift_once();
  }

  return &qword_27DDA4010;
}

uint64_t sub_2327C62F8()
{
  if (qword_2814D4360 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDA4010;
  v1 = qword_27DDA4010;
  return v0;
}

id sub_2327C657C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2327D73B8();

  return v3;
}

id sub_2327C65C8()
{
  v1 = v0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05C0, &qword_232817628);
  v92 = *(v100 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v100, v3, v4, v5);
  v91 = &v86 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v98 = *(v103 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v103, v8, v9, v10);
  v94 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05C8, &qword_232817630);
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v12, v14, v15, v16);
  v106 = &v86 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05D0, &qword_232817638);
  v102 = *(v105 - 8);
  v18 = *(v102 + 64);
  MEMORY[0x28223BE20](v105, v19, v20, v21);
  v99 = &v86 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0530, &qword_2328172A8);
  v101 = *(v104 - 8);
  v23 = *(v101 + 64);
  MEMORY[0x28223BE20](v104, v24, v25, v26);
  v97 = &v86 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05D8, &qword_232817640);
  v95 = *(v28 - 8);
  v96 = v28;
  v29 = *(v95 + 64);
  MEMORY[0x28223BE20](v28, v30, v31, v32);
  v93 = &v86 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05E0, &qword_232817648);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37, v38, v39);
  v41 = &v86 - v40;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v42 = *(v89 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v89, v44, v45, v46);
  v48 = &v86 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05E8, &qword_232817650);
  v90 = *(v49 - 8);
  v50 = *(v90 + 64);
  MEMORY[0x28223BE20](v49, v51, v52, v53);
  v88 = &v86 - v54;
  if (qword_2814D3D78 != -1)
  {
    swift_once();
  }

  v55 = sub_2327D7398();
  __swift_project_value_buffer(v55, qword_2814D3D80);
  v56 = sub_2327D7378();
  v57 = sub_2327D74B8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v87 = v42;
    v59 = v58;
    *v58 = 0;
    _os_log_impl(&dword_23255B000, v56, v57, "NDFCoreShim: Initializing NDFCoreShim", v58, 2u);
    v42 = v87;
    MEMORY[0x238388C60](v59, -1, -1);
  }

  sub_2327D7368();
  *&v1[OBJC_IVAR___NDFCoreShim_ndfController] = sub_2327D7358();
  sub_2327D72D8();
  *&v1[OBJC_IVAR___NDFCoreShim_ndfConfiguration] = sub_2327D72C8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05F0, &qword_232817658);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  *(v63 + *(*v63 + 104)) = 0;
  v64 = *MEMORY[0x277D85778];
  (*(v35 + 104))(v41, v64, v34);
  v65 = v88;
  sub_2327D7428();
  (*(v35 + 8))(v41, v34);
  (*(v90 + 32))(v63 + *(*v63 + 88), v65, v49);
  (*(v42 + 32))(v63 + *(*v63 + 96), v48, v89);
  *&v1[OBJC_IVAR___NDFCoreShim_deviceStateProcessor] = v63;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05F8, &qword_232817660);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  *(v69 + *(*v69 + 104)) = 0;
  v70 = v102;
  v71 = v99;
  v72 = v105;
  (*(v102 + 104))(v99, v64, v105);
  v73 = v93;
  v74 = v97;
  sub_2327D7428();
  (*(v70 + 8))(v71, v72);
  (*(v95 + 32))(v69 + *(*v69 + 88), v73, v96);
  (*(v101 + 32))(v69 + *(*v69 + 96), v74, v104);
  *&v1[OBJC_IVAR___NDFCoreShim_networkConfigProcessor] = v69;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0600, &qword_232817668);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  v78 = swift_allocObject();
  *(v78 + *(*v78 + 104)) = 0;
  v80 = v91;
  v79 = v92;
  v81 = v100;
  (*(v92 + 104))(v91, v64, v100);
  v82 = v106;
  v83 = v94;
  sub_2327D7428();
  (*(v79 + 8))(v80, v81);
  (*(v107 + 32))(v78 + *(*v78 + 88), v82, v108);
  (*(v98 + 32))(v78 + *(*v78 + 96), v83, v103);
  *&v1[OBJC_IVAR___NDFCoreShim_networkStatusProcessor] = v78;
  v109.receiver = v1;
  v109.super_class = NDFCoreShim;
  v84 = objc_msgSendSuper2(&v109, sel_init);
  sub_2327C6F2C();

  return v84;
}

uint64_t sub_2327C6F2C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8, v4, v5, v6);
  v9 = &v31 - v8;
  v10 = *(v0 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor);
    v12 = sub_2327D7418();
    v13 = *(*(v12 - 8) + 56);
    v13(v9, 1, 1, v12);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    v15[5] = v10;
    v15[6] = ObjectType;
    swift_retain_n();
    v16 = sub_2327C7494(0, 0, v9, &unk_232817678, v15);
    v17 = *(*v11 + 104);
    v18 = *(v11 + v17);
    *(v11 + v17) = v16;

    v19 = *(v0 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor);
    v13(v9, 1, 1, v12);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    v21[5] = v10;
    v21[6] = ObjectType;

    v22 = sub_2327C7494(0, 0, v9, &unk_232817688, v21);
    v23 = *(*v19 + 104);
    v24 = *(v19 + v23);
    *(v19 + v23) = v22;

    v25 = *(v0 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor);
    v13(v9, 1, 1, v12);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    v27[5] = v10;
    v27[6] = ObjectType;
    v28 = sub_2327C7494(0, 0, v9, &unk_232817698, v27);
    v29 = *(*v25 + 104);
    v30 = *(v25 + v29);
    *(v25 + v29) = v28;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2327C7348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(MEMORY[0x277D6B380] + 4);
  v10 = (*MEMORY[0x277D6B380] + MEMORY[0x277D6B380]);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_232569D64;

  return v10(a5);
}

uint64_t sub_2327C73FC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232569D64;

  return sub_2327C7348(v4, v5, v6, v2, v3);
}

uint64_t sub_2327C7494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12, v13);
  v15 = v30 - v14;
  sub_2327CFE08(a3, v30 - v14);
  v16 = sub_2327D7418();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_232569F54(v15);
  }

  else
  {
    sub_2327D7408();
    (*(v17 + 8))(v15, v16);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_2327D73F8();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = sub_2327D73D8() + 32;
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      if (v23 | v21)
      {
        v31[0] = 0;
        v31[1] = 0;
        v26 = v31;
        v31[2] = v21;
        v31[3] = v23;
      }

      else
      {
        v26 = 0;
      }

      v30[1] = 7;
      v30[2] = v26;
      v30[3] = v24;
      v28 = swift_task_create();

      sub_232569F54(a3);

      return v28;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232569F54(a3);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  if (v23 | v21)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v21;
    v31[7] = v23;
  }

  return swift_task_create();
}

uint64_t sub_2327C7794(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8, v8, v9, v10);
  v13 = &v18 - v12;
  v14 = *(v3 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v14)
  {
    v15 = sub_2327D7418();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;

    v17 = a1;
    sub_2327C7494(0, 0, v13, a3, v16);
  }

  return result;
}

uint64_t sub_2327C78B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(MEMORY[0x277D6B348] + 4);
  v10 = (*MEMORY[0x277D6B348] + MEMORY[0x277D6B348]);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_232569D68;

  return v10(a5);
}

uint64_t sub_2327C7964()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232569D64;

  return sub_2327C78B0(v4, v5, v6, v2, v3);
}

uint64_t sub_2327C7A1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8, v10, v11, v12);
  v15 = &v20 - v14;
  v16 = *(a1 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v16)
  {
    v17 = sub_2327D7418();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = a3;
    v19 = a3;

    sub_2327C7494(0, 0, v15, a5, v18);
  }

  return result;
}

uint64_t sub_2327C7B48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0528, &qword_2328172A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16, v17, v18);
  v20 = v22 - v19;
  (*(v6 + 16))(v12, *(v2 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(v2 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 96), v5);
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = 0;
  v23 = 0;

  sub_2327D7438();
  (*(v6 + 8))(v12, v5);
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_2327C7F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10, v11, v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0528, &qword_2328172A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18, v19, v20);
  v22 = v24 - v21;
  (*(v8 + 16))(v14, *(v3 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 96), v7);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v25 = 1;

  sub_2327D7438();
  (*(v8 + 8))(v14, v7);
  return (*(v16 + 8))(v22, v15);
}

void sub_2327C8388(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2327D7218();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2327C83EC(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0530, &qword_2328172A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0538, &qword_2328172B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v13, v16, v17, v18);
  v21 = &v24 - v20;
  if (a2)
  {
    (*(v6 + 16))(v12, *(v2 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + *(**(v2 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + 96), v5);
    v22 = *(a1 + 16);
    if (v22)
    {
      v25 = v13;
      v23 = sub_2327CE4B8(v22, 0);
      v28 = sub_2327CE53C(v29, v23 + 4, v22, a1);
      v26 = v32;
      v27 = v31;

      result = sub_2327CE694();
      if (v28 != v22)
      {
        __break(1u);
        return result;
      }

      v13 = v25;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v29[0] = v23;
    v29[1] = 0;
    LOBYTE(v30) = 0;
    sub_2327D7438();
    (*(v6 + 8))(v12, v5);
    return (*(v14 + 8))(v21, v13);
  }

  return result;
}

uint64_t sub_2327C86C0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0530, &qword_2328172A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10, v11, v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0538, &qword_2328172B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18, v19, v20);
  v22 = v24 - v21;
  (*(v8 + 16))(v14, *(v3 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + 96), v7);
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 | 0x40;

  sub_2327D7438();
  (*(v8 + 8))(v14, v7);
  return (*(v16 + 8))(v22, v15);
}

uint64_t sub_2327C8AA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0530, &qword_2328172A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0538, &qword_2328172B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14, v15, v16);
  v27 = &v23 - v17;
  (*(v4 + 16))(v10, *(v1 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + *(**(v1 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + 96), v3);
  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = *(v18 + 16);
  if (!v19)
  {

    v20 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v23 = v12;
  v24 = v11;
  v25 = v3;
  v20 = sub_2327CE4B8(v19, 0);
  v26 = sub_2327CE53C(v28, v20 + 4, v19, v18);

  result = sub_2327CE694();
  if (v26 == v19)
  {
    v11 = v24;
    v3 = v25;
    v12 = v23;
LABEL_8:
    v28[0] = v20;
    v28[1] = 0;
    LOBYTE(v29) = 0x80;
    v22 = v27;
    sub_2327D7438();
    (*(v4 + 8))(v10, v3);
    return (*(v12 + 8))(v22, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_2327C8DA8(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14, v15, v16);
  v18 = v20 - v17;
  (*(v4 + 16))(v10, *(v1 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(v1 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v3);
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = a1 & 1;
  v21 = 0;
  sub_2327D7438();
  (*(v4 + 8))(v10, v3);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_2327C9160(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10, v11, v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x28223BE20](v15, v18, v19, v20);
  v23 = v24 - v22;
  if (a3)
  {
    (*(v8 + 16))(v14, *(v3 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v7);
    v24[0] = a1 & 1;
    v24[1] = a2;
    v24[2] = a3;
    v25 = 2;

    sub_2327D7438();
    (*(v8 + 8))(v14, v7);
    return (*(v16 + 8))(v23, v15);
  }

  return result;
}

uint64_t sub_2327C9354(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14, v15, v16);
  v18 = v20 - v17;
  (*(v4 + 16))(v10, *(v1 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(v1 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v3);
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = a1 & 1;
  v21 = 1;
  sub_2327D7438();
  (*(v4 + 8))(v10, v3);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_2327C9714(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10, v11, v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18, v19, v20);
  v22 = v24 - v21;
  (*(v8 + 16))(v14, *(v3 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v7);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3 & 1;
  v25 = 3;

  sub_2327D7438();
  (*(v8 + 8))(v14, v7);
  return (*(v16 + 8))(v22, v15);
}

uint64_t sub_2327C9B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(MEMORY[0x277D6B378] + 4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_2327C9BC0;

  return MEMORY[0x2821D0788]();
}

uint64_t sub_2327C9BC0(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2327CFF78, 0, 0);
}

uint64_t sub_2327C9CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12, v13);
  v15 = &v20 - v14;
  v16 = *(v4 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (!v16)
  {
    return a3(0);
  }

  v17 = sub_2327D7418();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_2327C7494(0, 0, v15, &unk_2328172E0, v18);
}

uint64_t sub_2327C9E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = *(MEMORY[0x277D6B360] + 4);
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_2327C9F14;

  return MEMORY[0x2821D0780](a5, a6);
}

uint64_t sub_2327C9F14(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2327CA014, 0, 0);
}

uint64_t sub_2327CA014()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2327CA294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(MEMORY[0x277D6B388] + 4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_2327C9BC0;

  return MEMORY[0x2821D0790]();
}

uint64_t sub_2327CA368(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  v12 = &v17 - v11;
  v13 = *(v2 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v13)
  {
    v14 = sub_2327D7418();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = a1 & 1;
    *(v15 + 48) = a2;

    v16 = a2;
    sub_2327C7494(0, 0, v12, &unk_232817300, v15);
  }

  return result;
}

uint64_t sub_2327CA4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(MEMORY[0x277D6B3B0] + 4);
  v12 = (*MEMORY[0x277D6B3B0] + MEMORY[0x277D6B3B0]);
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_232569D64;

  return v12(a5, a6);
}

void sub_2327CA698(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, unint64_t, id), uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13, v14, v15);
  v17 = &v24 - v16;
  v18 = *(v5 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v18)
  {
    v19 = sub_2327D7418();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a3;
    v20[8] = a4;
    v20[9] = a5;

    sub_2327C7494(0, 0, v17, &unk_232817318, v20);
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v22 = sub_2327D73B8();
    v25 = [v21 initWithDomain:v22 code:107 userInfo:0];

    a4(0, 0xE000000000000000, v25);
    v23 = v25;
  }
}

uint64_t sub_2327CA898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v16;
  v12 = *(MEMORY[0x277D6B340] + 4);
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2327CA95C;

  return MEMORY[0x2821D0778](a5, a6, a7);
}

uint64_t sub_2327CA95C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_2327CAB08;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_2327CAA90;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2327CAA90()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 56), *(v0 + 48), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2327CAB08()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, 0xE000000000000000, v1);

  v5 = v0[1];

  return v5();
}

void sub_2327CAC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2327D73B8();
  if (a3)
  {
    v7 = sub_2327D7218();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_2327CACF0(uint64_t a1, void (*a2)(void, unint64_t, id), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10, v11);
  v13 = &v20 - v12;
  v14 = *(v3 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v14)
  {
    v15 = sub_2327D7418();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;
    v16[6] = a2;
    v16[7] = a3;

    sub_2327C7494(0, 0, v13, &unk_232817328, v16);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = sub_2327D73B8();
    v21 = [v17 initWithDomain:v18 code:107 userInfo:0];

    a2(0, 0xE000000000000000, v21);
    v19 = v21;
  }
}

uint64_t sub_2327CAED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = *(MEMORY[0x277D6B3D0] + 4);
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_2327CAF74;

  return MEMORY[0x2821D07A0](a5);
}

uint64_t sub_2327CAF74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_2327CFF64;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_2327CFF74;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2327CB16C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10, v11, v12);
  v14 = &v19 - v13;
  v15 = *(v4 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (!v15)
  {
    return a1(0);
  }

  v16 = sub_2327D7418();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;

  sub_2327C7494(0, 0, v14, a4, v17);
}

uint64_t sub_2327CB2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(MEMORY[0x277D6B3C8] + 4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_2327C9BC0;

  return MEMORY[0x2821D0798]();
}

void sub_2327CB384(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13, v14, v15);
  v17 = &v23 - v16;
  v18 = _Block_copy(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = *(a1 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v20)
  {
    v21 = sub_2327D7418();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = a6;
    v22[6] = v19;

    sub_2327C7494(0, 0, v17, a7, v22);
  }

  else
  {
    _Block_copy(v18);
    (*(v18 + 2))(v18, 0);

    _Block_release(v18);
  }
}

uint64_t sub_2327CB52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12, v13);
  v15 = &v20 - v14;
  v16 = *(v4 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (!v16)
  {
    return a3(0);
  }

  v17 = sub_2327D7418();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_2327C7494(0, 0, v15, &unk_232817348, v18);
}

uint64_t sub_2327CB688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = *(MEMORY[0x277D6B3D8] + 4);
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_2327C9BC0;

  return MEMORY[0x2821D07A8](a5, a6);
}

void sub_2327CB8FC(void (*a1)(void, id), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  v11 = &v18 - v10;
  v12 = *(v2 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v12)
  {
    v13 = sub_2327D7418();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = a1;
    v14[6] = a2;

    sub_2327C7494(0, 0, v11, &unk_232817358, v14);
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v16 = sub_2327D73B8();
    v19 = [v15 initWithDomain:v16 code:107 userInfo:0];

    a1(0, v19);
    v17 = v19;
  }
}

uint64_t sub_2327CBACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(MEMORY[0x277D6B3C0] + 4);
  v10 = (*MEMORY[0x277D6B3C0] + MEMORY[0x277D6B3C0]);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_2327CBB74;

  return v10();
}

uint64_t sub_2327CBB74(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_2327CBD0C;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v7 = sub_2327CBCA0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2327CBCA0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2327CBD0C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

void sub_2327CBE08(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2327D7218();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

char *sub_2327CBE78()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_2327D7458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7, v8, v9);
  v11 = &v21 - v10;
  v12 = *(v2 + 96);
  (*(v5 + 16))(&v21 - v10, &v1[v12], v4);
  sub_2327D7448();
  v13 = *(v5 + 8);
  v13(v11, v4);
  v14 = *v1;
  v15 = *(*v1 + 104);
  if (*&v1[v15])
  {
    v16 = *&v1[v15];

    sub_2327D7498();

    v14 = *v1;
  }

  v17 = *(v14 + 88);
  v18 = sub_2327D7488();
  (*(*(v18 - 8) + 8))(&v1[v17], v18);
  v13(&v1[v12], v4);
  v19 = *&v1[v15];

  return v1;
}

uint64_t sub_2327CC060()
{
  sub_2327CBE78();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2327CC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05E8, &qword_232817650);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0618, &qword_2328176B0);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2327CC1EC, 0, 0);
}

uint64_t sub_2327CC1EC()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_2814D3D78 != -1)
    {
      swift_once();
    }

    v4 = sub_2327D7398();
    v0[18] = __swift_project_value_buffer(v4, qword_2814D3D80);
    v5 = sub_2327D7378();
    v6 = sub_2327D74C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, v6, "Starting NDF device state operation processing", v7, 2u);
      MEMORY[0x238388C60](v7, -1, -1);
    }

    v8 = v0[16];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    (*(v10 + 16))(v9, *(v3 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 88), v11);
    sub_2327D7468();
    (*(v10 + 8))(v9, v11);
    v12 = *(MEMORY[0x277D85798] + 4);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_2327CC448;
    v14 = v0[16];
    v15 = v0[14];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v15);
  }

  else
  {
    v16 = v0[16];
    v17 = v0[13];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2327CC448()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CC544, 0, 0);
}

uint64_t sub_2327CC544()
{
  v1 = *(v0 + 16);
  *(v0 + 160) = v1;
  v2 = *(v0 + 24);
  *(v0 + 168) = v2;
  v3 = *(v0 + 40);
  *(v0 + 41) = v3;
  if (v3 == 255)
  {
    v8 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v9 = sub_2327D7378();
    v10 = sub_2327D74C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v9, v10, "NDF device state operation processing ended", v11, 2u);
      MEMORY[0x238388C60](v11, -1, -1);
    }

    v12 = *(v0 + 136);

    v13 = *(v0 + 128);
    v14 = *(v0 + 104);

    v15 = *(v0 + 8);

    return v15();
  }

  else if (v3)
  {
    v4 = *(MEMORY[0x277D6B390] + 4);
    v20 = (*MEMORY[0x277D6B390] + MEMORY[0x277D6B390]);
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_2327CC930;
    v6 = *(v0 + 80);

    return v20(v1);
  }

  else
  {
    v16 = v2;
    v17 = *(MEMORY[0x277D6B3A8] + 4);
    v21 = (*MEMORY[0x277D6B3A8] + MEMORY[0x277D6B3A8]);
    v18 = swift_task_alloc();
    *(v0 + 184) = v18;
    *v18 = v0;
    v18[1] = sub_2327CC77C;
    v19 = *(v0 + 80);

    return v21(v1, v16);
  }
}

uint64_t sub_2327CC77C()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CC878, 0, 0);
}

uint64_t sub_2327CC878()
{
  sub_2327CFD18(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 41));
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_2327CC448;
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v4);
}

uint64_t sub_2327CC930()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2327CCB0C;
  }

  else
  {
    v3 = sub_2327CCA44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2327CCA44()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(0);
  sub_2327CFD18(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 41));
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_2327CC448;
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v5);
}

uint64_t sub_2327CCB0C()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = v1;
  v3(v1);

  sub_2327CFD18(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 41));
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2327CC448;
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v8);
}

uint64_t sub_2327CCBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05D8, &qword_232817640);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0610, &qword_2328176A8);
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2327CCD2C, 0, 0);
}

uint64_t sub_2327CCD2C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_2814D3D78 != -1)
    {
      swift_once();
    }

    v4 = sub_2327D7398();
    v0[17] = __swift_project_value_buffer(v4, qword_2814D3D80);
    v5 = sub_2327D7378();
    v6 = sub_2327D74C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, v6, "Starting NDF network config operation processing", v7, 2u);
      MEMORY[0x238388C60](v7, -1, -1);
    }

    v8 = v0[15];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];

    (*(v10 + 16))(v9, *(v3 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + 88), v11);
    sub_2327D7468();
    (*(v10 + 8))(v9, v11);
    v12 = *(MEMORY[0x277D85798] + 4);
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_2327CCF88;
    v14 = v0[15];
    v15 = v0[13];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v15);
  }

  else
  {
    v16 = v0[15];
    v17 = v0[12];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2327CCF88()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CD084, 0, 0);
}

uint64_t sub_2327CD084()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v3 = *(v0 + 56);
  *(v0 + 57) = v3;
  if (v3 >= 0xFE)
  {
    v4 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v5 = sub_2327D7378();
    v6 = sub_2327D74C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, v6, "NDF network config operation processing ended", v7, 2u);
      MEMORY[0x238388C60](v7, -1, -1);
    }

    v8 = *(v0 + 128);

    v9 = *(v0 + 120);
    v10 = *(v0 + 96);

    v11 = *(v0 + 8);

    return v11();
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v13 = *(MEMORY[0x277D6B358] + 4);
      v21 = (*MEMORY[0x277D6B358] + MEMORY[0x277D6B358]);
      v14 = swift_task_alloc();
      *(v0 + 176) = v14;
      *v14 = v0;
      v14[1] = sub_2327CD4C8;
      v15 = *(v0 + 72);

      return v21(v2, v1, v3 & 1);
    }

    v19 = *(MEMORY[0x277D6B350] + 4);
    v22 = (*MEMORY[0x277D6B350] + MEMORY[0x277D6B350]);
    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v18 = sub_2327CD5C4;
  }

  else
  {
    v16 = *(MEMORY[0x277D6B370] + 4);
    v22 = (*MEMORY[0x277D6B370] + MEMORY[0x277D6B370]);
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v18 = sub_2327CD318;
  }

  v17[1] = v18;
  v20 = *(v0 + 72);

  return v22(v2);
}

uint64_t sub_2327CD318()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CD414, 0, 0);
}

uint64_t sub_2327CD414()
{
  sub_2327CFCDC(*(v0 + 152), *(v0 + 160), *(v0 + 57));
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_2327CCF88;
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v4);
}

uint64_t sub_2327CD4C8()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CFF60, 0, 0);
}

uint64_t sub_2327CD5C4()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CFF60, 0, 0);
}

uint64_t sub_2327CD6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05C8, &qword_232817630);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0608, &qword_2328176A0);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2327CD7F4, 0, 0);
}

uint64_t sub_2327CD7F4()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_2814D3D78 != -1)
    {
      swift_once();
    }

    v4 = sub_2327D7398();
    v0[18] = __swift_project_value_buffer(v4, qword_2814D3D80);
    v5 = sub_2327D7378();
    v6 = sub_2327D74C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, v6, "Starting NDF network status operation processing", v7, 2u);
      MEMORY[0x238388C60](v7, -1, -1);
    }

    v8 = v0[16];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    (*(v10 + 16))(v9, *(v3 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(v3 + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 88), v11);
    sub_2327D7468();
    (*(v10 + 8))(v9, v11);
    v12 = *(MEMORY[0x277D85798] + 4);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_2327CDA50;
    v14 = v0[16];
    v15 = v0[14];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v15);
  }

  else
  {
    v16 = v0[16];
    v17 = v0[13];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2327CDA50()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CDB4C, 0, 0);
}

uint64_t sub_2327CDB4C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 160) = v2;
  *(v0 + 168) = v1;
  v3 = *(v0 + 32);
  *(v0 + 176) = v3;
  v4 = *(v0 + 40);
  if (v4 <= 1)
  {
    if (*(v0 + 40))
    {
      v27 = *(MEMORY[0x277D6B3A0] + 4);
      v30 = (*MEMORY[0x277D6B3A0] + MEMORY[0x277D6B3A0]);
      v14 = swift_task_alloc();
      *(v0 + 192) = v14;
      *v14 = v0;
      v15 = sub_2327CDFE8;
    }

    else
    {
      v13 = *(MEMORY[0x277D6B368] + 4);
      v30 = (*MEMORY[0x277D6B368] + MEMORY[0x277D6B368]);
      v14 = swift_task_alloc();
      *(v0 + 184) = v14;
      *v14 = v0;
      v15 = sub_2327CDE80;
    }

    v14[1] = v15;
    v28 = *(v0 + 80);

    return v30(v2 & 1);
  }

  else
  {
    if (v4 == 2)
    {
      v16 = *(MEMORY[0x277D6B3B8] + 4);
      v31 = (*MEMORY[0x277D6B3B8] + MEMORY[0x277D6B3B8]);
      v17 = swift_task_alloc();
      *(v0 + 200) = v17;
      *v17 = v0;
      v17[1] = sub_2327CE150;
      v18 = *(v0 + 80);
      v9 = v2 & 1;
      v10 = v1;
      v8 = v3;
      v11 = v31;

      return v11(v9, v10, v8);
    }

    if (v4 == 3)
    {
      v5 = *(MEMORY[0x277D6B398] + 4);
      v29 = (*MEMORY[0x277D6B398] + MEMORY[0x277D6B398]);
      v6 = swift_task_alloc();
      *(v0 + 208) = v6;
      *v6 = v0;
      v6[1] = sub_2327CE304;
      v7 = *(v0 + 80);
      v8 = v3 & 1;
      v9 = v2;
      v10 = v1;
      v11 = v29;

      return v11(v9, v10, v8);
    }

    v19 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v20 = sub_2327D7378();
    v21 = sub_2327D74C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23255B000, v20, v21, "NDF network status operation processing ended", v22, 2u);
      MEMORY[0x238388C60](v22, -1, -1);
    }

    v23 = *(v0 + 136);

    v24 = *(v0 + 128);
    v25 = *(v0 + 104);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_2327CDE80()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *v0;

  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v3;
  v5[1] = sub_2327CDA50;
  v6 = v1[16];
  v7 = v1[14];

  return MEMORY[0x2822003E8](v1 + 2, 0, 0, v7);
}

uint64_t sub_2327CDFE8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;

  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v3;
  v5[1] = sub_2327CDA50;
  v6 = v1[16];
  v7 = v1[14];

  return MEMORY[0x2822003E8](v1 + 2, 0, 0, v7);
}

uint64_t sub_2327CE150()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CE24C, 0, 0);
}

uint64_t sub_2327CE24C()
{
  sub_2327CFCA4(v0[20], v0[21], v0[22], 2);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_2327CDA50;
  v3 = v0[16];
  v4 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
}

uint64_t sub_2327CE304()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2327CE400, 0, 0);
}

uint64_t sub_2327CE400()
{
  sub_2327CFCA4(v0[20], v0[21], v0[22], 3);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_2327CDA50;
  v3 = v0[16];
  v4 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
}

void *sub_2327CE4B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0628, &qword_2328176C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2327CE53C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2327CE69C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232569D64;

  return sub_2327C9B28(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2327CE744()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232569D64;

  return sub_2327C9E60(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2327CE800()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232569D64;

  return sub_2327CA294(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2327CE8A8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232569D64;

  return sub_2327CA4A0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2327CE954()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_232569D64;

  return sub_2327CA898(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_2327CEA18()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_232569D64;

  return sub_2327CAED0(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_2327CEAC4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232569D64;

  return sub_2327CB2B0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2327CEB6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232569D64;

  return sub_2327CB688(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2327CEC28()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232569D64;

  return sub_2327CBACC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2327CECD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_2327D7488();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_2327D7458();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2327CEDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2327CEE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2327CEEB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2327CEF08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2327CEF9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2327CEFE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_2327CF048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12, v13, v14);
  v16 = &v26 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v18 = *(a4 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v18)
  {
    v19 = sub_2327D7418();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a3;
    v20[8] = sub_2327CFF6C;
    v20[9] = v17;
    _Block_copy(a5);

    sub_2327C7494(0, 0, v16, &unk_2328175F0, v20);
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    _Block_copy(a5);
    v22 = sub_2327D73B8();
    v23 = [v21 initWithDomain:v22 code:107 userInfo:0];

    v24 = sub_2327D73B8();
    v27 = sub_2327D7218();
    (a5)[2](a5, v24, v27);

    v25 = v27;
  }
}

void sub_2327CF2C0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8, v9, v10);
  v12 = &v22 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = *(a2 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v14)
  {
    v15 = sub_2327D7418();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;
    v16[6] = sub_2327CF7B8;
    v16[7] = v13;
    _Block_copy(a3);

    sub_2327C7494(0, 0, v12, &unk_2328175E8, v16);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    _Block_copy(a3);
    v18 = sub_2327D73B8();
    v19 = [v17 initWithDomain:v18 code:107 userInfo:0];

    v20 = sub_2327D73B8();
    v23 = sub_2327D7218();
    (a3)[2](a3, v20, v23);

    v21 = v23;
  }
}

void sub_2327CF518(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6, v7, v8);
  v10 = &v19 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = *(a1 + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v12)
  {
    v13 = sub_2327D7418();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = sub_2327CF750;
    v14[6] = v11;
    _Block_copy(a2);

    sub_2327C7494(0, 0, v10, &unk_2328175C8, v14);
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    _Block_copy(a2);
    v16 = sub_2327D73B8();
    v17 = [v15 initWithDomain:v16 code:107 userInfo:0];

    v20 = sub_2327D7218();
    a2[2](a2, 0, v20);

    v18 = v20;
  }
}

uint64_t objectdestroy_35Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_27Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_23Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2327CF868()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_232569D68;

  return sub_2327CA898(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2327CFA94()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232569D64;

  return sub_2327CC0B8(v4, v5, v6, v2, v3);
}

uint64_t sub_2327CFB2C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232569D64;

  return sub_2327CCBF8(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_150Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2327CFC0C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232569D64;

  return sub_2327CD6C0(v4, v5, v6, v2, v3);
}

uint64_t sub_2327CFCA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_2327CFCB8(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_2327CFCB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 3)
  {
  }

  return result;
}

uint64_t sub_2327CFCDC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_2327CFCF0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2327CFCF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 2u)
  {
  }

  return result;
}

uint64_t sub_2327CFD18(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_2327CFD30(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_2327CFD30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  else
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2327CFE08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2327CFE78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232569D68;

  return sub_232569C6C(a1, v5);
}

uint64_t _nlc_connect(_DWORD *a1)
{
  *sp = 0;
  v2 = MEMORY[0x277D85F18];
  bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.NetworkLinkConditioner", sp);
  if (bootstrap_look_up(*v2, "com.apple.NetworkLinkConditioner", sp))
  {
    puts("NLCd : Bootstrap failure");
    return 100;
  }

  else
  {
    v4 = nlc_connect(sp[0], a1, a1 + 1, &sp[1]);
    if (v4)
    {
      mach_error("nlc_connect:", v4);
    }

    return sp[1];
  }
}

uint64_t _nlc_disconnect(int *a1)
{
  v4 = 0;
  v2 = nlc_disconnect(*a1, a1[1], &v4);
  if (v2)
  {
    mach_error("nlc_disconnect:", v2);
  }

  mach_port_deallocate(*MEMORY[0x277D85F48], *a1);
  return v4;
}

uint64_t _nlc_start_simulation(mach_port_t *a1, __int128 *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = 0;
  *(a2 + 1) = 0;
  v3 = a2[11];
  v29 = a2[10];
  v30 = v3;
  v31 = a2[12];
  v4 = a2[7];
  v25 = a2[6];
  v26 = v4;
  v5 = a2[9];
  v27 = a2[8];
  v28 = v5;
  v6 = a2[3];
  v21 = a2[2];
  v22 = v6;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = nlc_simulate(*a1, &v19, 0xD0u, a1[1], &v18);
  if (v9)
  {
    mach_error("_nlc_start_simulation:", v9);
  }

  v10 = v30;
  a2[10] = v29;
  a2[11] = v10;
  a2[12] = v31;
  v11 = v26;
  a2[6] = v25;
  a2[7] = v11;
  v12 = v28;
  a2[8] = v27;
  a2[9] = v12;
  v13 = v22;
  a2[2] = v21;
  a2[3] = v13;
  v14 = v24;
  a2[4] = v23;
  a2[5] = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  result = v18;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _nlc_stop_simulation(mach_port_t *a1, __int128 *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = 0;
  *(a2 + 1) = 1;
  v3 = a2[11];
  v29 = a2[10];
  v30 = v3;
  v31 = a2[12];
  v4 = a2[7];
  v25 = a2[6];
  v26 = v4;
  v5 = a2[9];
  v27 = a2[8];
  v28 = v5;
  v6 = a2[3];
  v21 = a2[2];
  v22 = v6;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = nlc_stop_simulation(*a1, &v19, 0xD0u, a1[1], &v18);
  if (v9)
  {
    mach_error("_nlc_stop_simulation:", v9);
  }

  v10 = v30;
  a2[10] = v29;
  a2[11] = v10;
  a2[12] = v31;
  v11 = v26;
  a2[6] = v25;
  a2[7] = v11;
  v12 = v28;
  a2[8] = v27;
  a2[9] = v12;
  v13 = v22;
  a2[2] = v21;
  a2[3] = v13;
  v14 = v24;
  a2[4] = v23;
  a2[5] = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  result = v18;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _nlc_get_status(mach_port_t *a1, _DWORD *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  a2[1] = 2;
  __n = 208;
  v4 = *(a2 + 11);
  v15[10] = *(a2 + 10);
  v15[11] = v4;
  v15[12] = *(a2 + 12);
  v5 = *(a2 + 7);
  v15[6] = *(a2 + 6);
  v15[7] = v5;
  v6 = *(a2 + 9);
  v15[8] = *(a2 + 8);
  v15[9] = v6;
  v7 = *(a2 + 3);
  v15[2] = *(a2 + 2);
  v15[3] = v7;
  v8 = *(a2 + 5);
  v15[4] = *(a2 + 4);
  v15[5] = v8;
  v9 = *(a2 + 1);
  v15[0] = *a2;
  v15[1] = v9;
  bzero(__src, 0x400uLL);
  status = nlc_get_status(*a1, v15, 0xD0u, __src, &__n, a1[1], &__n + 1);
  if (status)
  {
    mach_error("_nlc_get_status:", status);
  }

  memcpy(a2, __src, __n);
  result = HIDWORD(__n);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t nlc_connect(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v19, 0, sizeof(v19));
  *&reply_port_12[4] = 0u;
  reply_port = 0;
  v8 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v8;
  v14 = 5395;
  *reply_port_12 = 0x9D4C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    v9 = reply_port_8;
  }

  else
  {
    v9 = v8;
  }

  v10 = mach_msg(&v14, 3, 0x18u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v10)
    {
      if (*&reply_port_12[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&reply_port_12[4] == 40368)
      {
        if (v14 < 0)
        {
          v11 = 4294966996;
          if (*&reply_port_12[8] == 1 && reply_port == 56 && !reply_port_4 && HIWORD(v19[0]) << 16 == 1114112)
          {
            v11 = 0;
            v12 = v19[3];
            *a2 = *&reply_port_12[12];
            *a3 = v12;
            *a4 = v19[4];
            return v11;
          }
        }

        else if (reply_port == 36)
        {
          v11 = 4294966996;
          if (*&reply_port_12[16])
          {
            if (reply_port_4)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&reply_port_12[16];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  return v11;
}

uint64_t nlc_disconnect(int a1, int a2, _DWORD *a3)
{
  memset(&reply_port[16], 0, 28);
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = a2;
  v5 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v5;
  v11 = 5395;
  *&reply_port[12] = 0x9D4D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&reply_port[8];
  }

  else
  {
    v6 = v5;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
      return v8;
    }

    if (*&reply_port[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&reply_port[16] == 40369)
    {
      if ((v11 & 0x80000000) == 0)
      {
        if (*reply_port == 40)
        {
          if (!*&reply_port[4])
          {
            v8 = *&reply_port[28];
            if (!*&reply_port[28])
            {
              *a3 = *&reply_port[32];
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (*reply_port == 36)
        {
          if (*&reply_port[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&reply_port[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&reply_port[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(*&reply_port[8]);
  return v8;
}

uint64_t nlc_simulate(mach_port_t a1, uint64_t a2, unsigned int a3, mach_port_t a4, _DWORD *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *reply_port = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v19) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v10) = a4;
    v11 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v11;
    reply_port[0] = 5395;
    *&v18 = 0x9D4E00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(reply_port);
      v12 = reply_port[3];
    }

    else
    {
      v12 = v11;
    }

    v13 = mach_msg(reply_port, 3, v10 + 40, 0x30u, v12, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (DWORD1(v18) == 71)
    {
      v5 = 4294966988;
    }

    else if (DWORD1(v18) == 40370)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v5 = v19;
            if (!v19)
            {
              *a5 = DWORD1(v19);
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v19;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(reply_port);
    goto LABEL_27;
  }

  v5 = 4294966989;
LABEL_27:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t nlc_stop_simulation(mach_port_t a1, uint64_t a2, unsigned int a3, mach_port_t a4, _DWORD *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *reply_port = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v19) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v10) = a4;
    v11 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v11;
    reply_port[0] = 5395;
    *&v18 = 0x9D4F00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(reply_port);
      v12 = reply_port[3];
    }

    else
    {
      v12 = v11;
    }

    v13 = mach_msg(reply_port, 3, v10 + 40, 0x30u, v12, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (DWORD1(v18) == 71)
    {
      v5 = 4294966988;
    }

    else if (DWORD1(v18) == 40371)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v5 = v19;
            if (!v19)
            {
              *a5 = DWORD1(v19);
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v19;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(reply_port);
    goto LABEL_27;
  }

  v5 = 4294966989;
LABEL_27:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t nlc_get_status(mach_port_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5, mach_port_t a6, _DWORD *a7)
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *__n = 0u;
  v28 = 0u;
  *reply_port = 0u;
  v26 = 0u;
  *(&v26 + 1) = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(__n[0]) = a3;
    v14 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v14) = a6;
    v15 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v15;
    reply_port[0] = 5395;
    *&v26 = 0x9D5000000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(reply_port);
      v16 = reply_port[3];
    }

    else
    {
      v16 = v15;
    }

    v17 = mach_msg(reply_port, 3, v14 + 40, 0x434u, v16, 0, 0);
    v7 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      goto LABEL_29;
    }

    if (v17)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_29;
    }

    if (DWORD1(v26) == 71)
    {
      v7 = 4294966988;
    }

    else if (DWORD1(v26) == 40372)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] - 1069 <= 0xFFFFFBFE)
        {
          if (LODWORD(__n[0]))
          {
            v18 = reply_port[2] == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && reply_port[1] == 36)
          {
            v7 = LODWORD(__n[0]);
          }

          else
          {
            v7 = 4294966996;
          }

          goto LABEL_28;
        }

        if (!reply_port[2])
        {
          v7 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_28;
          }

          v22 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) <= 0x400)
          {
            v7 = 4294966996;
            if (reply_port[1] - 44 >= HIDWORD(__n[0]))
            {
              v23 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port[1] == v23 + 44)
              {
                v24 = &reply_port[-256] + v23;
                memcpy(a4, &__n[1], HIDWORD(__n[0]));
                v7 = 0;
                *a5 = v22;
                *a7 = *(v24 + 266);
                goto LABEL_29;
              }
            }

            goto LABEL_28;
          }
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(reply_port);
    goto LABEL_29;
  }

  v7 = 4294966989;
LABEL_29:
  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

char *netdiag_str_array_find(const char **a1, char *__s2)
{
  v3 = *a1;
  if (v3)
  {
    v5 = a1 + 1;
    do
    {
      if (!*v3)
      {
        break;
      }

      if (!strcmp(v3, __s2))
      {
        return __s2;
      }

      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  return 0;
}

char **netdiag_get_logging_keys(uint64_t *a1)
{
  v1 = gNetDiagLoggingKeysCount;
  if (!gNetDiagLoggingKeysCount)
  {
    v2 = gNetDiagLoggingKeys[0];
    if (gNetDiagLoggingKeys[0])
    {
      v3 = 0;
      while (*v2)
      {
        v1 = v3 + 1;
        v2 = gNetDiagLoggingKeys[++v3];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v1 = v3;
    }

    else
    {
      v1 = 0;
    }

LABEL_9:
    gNetDiagLoggingKeysCount = v1;
  }

  if (a1)
  {
    *a1 = v1;
  }

  return gNetDiagLoggingKeys;
}

char **netdiag_get_task_keys(uint64_t *a1)
{
  v1 = gNetDiagTaskKeysCount;
  if (!gNetDiagTaskKeysCount)
  {
    v2 = gNetDiagTaskKeys[0];
    if (gNetDiagTaskKeys[0])
    {
      v3 = 0;
      while (*v2)
      {
        v1 = v3 + 1;
        v2 = gNetDiagTaskKeys[++v3];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v1 = v3;
    }

    else
    {
      v1 = 0;
    }

LABEL_9:
    gNetDiagTaskKeysCount = v1;
  }

  if (a1)
  {
    *a1 = v1;
  }

  return gNetDiagTaskKeys;
}

char **netdiag_get_option_keys(uint64_t *a1)
{
  v1 = gNetDiagOptionKeysCount;
  if (!gNetDiagOptionKeysCount)
  {
    v2 = gNetDiagOptionKeys[0];
    if (gNetDiagOptionKeys[0])
    {
      v3 = 0;
      while (*v2)
      {
        v1 = v3 + 1;
        v2 = gNetDiagOptionKeys[++v3];
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v1 = v3;
    }

    else
    {
      v1 = 0;
    }

LABEL_9:
    gNetDiagOptionKeysCount = v1;
  }

  if (a1)
  {
    *a1 = v1;
  }

  return gNetDiagOptionKeys;
}

const char *netdiag_xpc_type_str(uint64_t a1)
{
  v2 = MEMORY[0x277D86450];
  v3 = &qword_2789904C8;
  result = "<XPC_TYPE_UNKNOWN>";
  while (v2 != a1)
  {
    v5 = *v3;
    v3 += 2;
    v2 = v5;
    if (!v5)
    {
      return result;
    }
  }

  return *(v3 - 1);
}

void initializeActivityMeasurements_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void allocateMeasurementType_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void allocateMeasurementType_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void allocateMeasurementType_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void allocateMeasurementType_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void allocateMeasurementType_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void allocateMeasurementType_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void allocateMeasurementType_cold_7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void allocateMeasurementType_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void allocateMeasurementType_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void destroyMeasurementType_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __destroyMeasurementType_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __destroyMeasurementType_block_invoke_56_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void getMeasurement_cold_1(unsigned __int8 a1, unsigned __int8 a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_23255B000, log, OS_LOG_TYPE_DEBUG, "getMeasurement : type:%d event:%d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

void __setMeasurement_block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = &_prelaunchActivityMeasurements;
  _os_log_error_impl(&dword_23255B000, log, OS_LOG_TYPE_ERROR, "> setMeasurement : _prelaunchActivityMeasurements is NULL %p", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __setMeasurement_block_invoke_60_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = &_launchSequenceActivityMeasurements;
  _os_log_error_impl(&dword_23255B000, log, OS_LOG_TYPE_ERROR, "> setMeasurement : _launchSequenceActivityMeasurements is NULL %p", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void analyticsDictionaryForPrelaunchSequence_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void analyticsDictionaryForPrelaunchSequence_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void analyticsDictionaryForLaunchSequence_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void analyticsDictionaryForLaunchSequence_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sf_synchronize_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_4(&dword_23255B000, v0, v1, "Invalid parameter %s", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void EnvironmentZoneMalloc_cold_1(uint64_t a1, char **a2)
{
  v4 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    v6 = a1;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_FAULT, "malloc_zone_malloc(..., %zu) failed", buf, 0xCu);
  }

  *a2 = 0;
  asprintf(a2, "malloc_zone_malloc(..., %zu) failed", a1);
  qword_27DDA0B50 = *a2;
  __break(1u);
}

void EnvironmentZoneMalloc_cold_2(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_malloc called with size 0", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict_malloc called with size 0");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

void CreateCStringFromBitMask_cold_1(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict allocator failed", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict allocator failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

void CreateCStringFromBitMask_cold_2(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_malloc called with size 0", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict_malloc called with size 0");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

void my_client_handle_new_cold_1(char **a1)
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    *buf = 134218240;
    v4 = 1;
    v5 = 2048;
    v6 = 144;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_FAULT, "strict_calloc(%zu, %zu) failed", buf, 0x16u);
  }

  *a1 = 0;
  asprintf(a1, "strict_calloc(%zu, %zu) failed", 1uLL, 0x90uLL);
  qword_27DDA0B50 = *a1;
  __break(1u);
}

void dateStringMillisecondsFromTimeInterval_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v5 = *MEMORY[0x277D85DE8];
}

void dateStringMillisecondsFromTimeInterval_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    v1 = *v0;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v7 = *MEMORY[0x277D85DE8];
}

void formattedDateStringForTimeInterval_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v5 = *MEMORY[0x277D85DE8];
}

void formattedDateStringForTimeInterval_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    v1 = *v0;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v7 = *MEMORY[0x277D85DE8];
}

void timeStringMillisecondsFromTimeInterval_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  OUTLINED_FUNCTION_1_6();
  v5 = *MEMORY[0x277D85DE8];
}

void timeStringMillisecondsFromTimeInterval_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    v1 = *v0;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v7 = *MEMORY[0x277D85DE8];
}

void timeStringMillisecondsDuration_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  OUTLINED_FUNCTION_1_6();
  v5 = *MEMORY[0x277D85DE8];
}

void timeStringMillisecondsDuration_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v5 = *MEMORY[0x277D85DE8];
}

void timeStringMillisecondsDuration_cold_3()
{
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3())
  {
    v1 = *v0;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_1_6();
  v7 = *MEMORY[0x277D85DE8];
}

void __softlink__BiomeLibrary_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<BMLibraryBase> __softlink__BiomeLibrary(void)"];
  [v0 handleFailureInFunction:v1 file:@"GeoDBHandler.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getBiomeLibrarySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GeoDBHandler.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}