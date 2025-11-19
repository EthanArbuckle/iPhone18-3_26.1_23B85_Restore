id SUCoreBorder_MSUPreflightUpdate(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = 0;
  v3 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUPreflightUpdate", &v12);
  v4 = v3;
  if (!v3)
  {
    v8 = MSUPreflightUpdate();
    v9 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUPreflightUpdate", &v12);
    if (v9)
    {
      v10 = v9;
      LOBYTE(v8) = _SUCoreBorder_MSUSimulate(v9, v8, &v12);
    }

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = v12;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v3, 1, &v12))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12)
  {
    v5 = [MEMORY[0x277D64428] sharedDiag];
    v6 = v12;
    [v5 trackAnomaly:@"SUCoreBorder_MSUPreflightUpdate" forReason:@"preflight (prior to SU download) was successful with error" withResult:0 withError:v12];
  }

  v7 = 0;
LABEL_10:

  return v7;
}

id _SUCoreBorder_MSUFunctionAtBegin(void *a1, void *a2)
{
  v3 = MEMORY[0x277D644A0];
  v4 = a1;
  v5 = [v3 sharedSimulator];
  v6 = [v5 begin:@"msu" atFunction:v4];

  if (v6)
  {
    if ([v6 simAction] == 1)
    {
      _SUCoreBorder_MSUSetSimulatedError(v6, a2);
    }

    else if ([v6 simAction] == 3)
    {
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

id _SUCoreBorder_MSUFunctionAtEnd(void *a1, void *a2)
{
  v3 = MEMORY[0x277D644A0];
  v4 = a1;
  v5 = [v3 sharedSimulator];
  v6 = [v5 end:@"msu" atFunction:v4];

  if (v6)
  {
    if ([v6 simAction] == 1)
    {
      _SUCoreBorder_MSUSetSimulatedError(v6, a2);
    }

    else if ([v6 simAction] == 3)
    {
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

uint64_t _SUCoreBorder_MSUSimulate(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [v5 simAction];
  if (v6 == 3)
  {
    if (a3)
    {
      *a3 = 0;
    }

    a2 = 1;
  }

  else if (v6 == 1)
  {
    _SUCoreBorder_MSUSetSimulatedError(v5, a3);
    a2 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [v7 trackAnomaly:@"_SUCoreBorder_MSUSimulate" forReason:v8 withResult:8113 withError:0];
  }

  return a2;
}

id SUCoreBorder_MSUPrepareUpdateWithMAAsset(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v5 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUPrepareUpdateWithMAAsset", &v14);
  v6 = v5;
  if (v5)
  {
    if (_SUCoreBorder_MSUSimulate(v5, 1, &v14))
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = v14;
    if (v14)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v7 buildError:8804 underlying:0 description:@"MSUPrepareUpdateWithMAAsset was not successful (yet no error provided)"];
    goto LABEL_10;
  }

  v10 = MSUPrepareUpdateWithMAAsset();
  v11 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUPrepareUpdateWithMAAsset", &v14);
  if (v11)
  {
    v12 = v11;
    LOBYTE(v10) = _SUCoreBorder_MSUSimulate(v11, v10, &v14);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    v7 = [MEMORY[0x277D64428] sharedDiag];
    v8 = v14;
    [v7 trackAnomaly:@"SUCoreBorder_MSUPrepareUpdateWithMAAsset" forReason:@"prepare was successful with error" withResult:0 withError:v14];

    v9 = 0;
LABEL_10:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

id SUCoreBorder_MSUPrepareUpdate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v5 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUPrepareUpdate", &v14);
  v6 = v5;
  if (v5)
  {
    if (_SUCoreBorder_MSUSimulate(v5, 1, &v14))
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = v14;
    if (v14)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v7 buildError:8804 underlying:0 description:@"MSUPrepareUpdate was not successful (yet no error provided)"];
    goto LABEL_10;
  }

  v10 = MSUPrepareUpdate();
  v11 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUPrepareUpdate", &v14);
  if (v11)
  {
    v12 = v11;
    LOBYTE(v10) = _SUCoreBorder_MSUSimulate(v11, v10, &v14);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    v7 = [MEMORY[0x277D64428] sharedDiag];
    v8 = v14;
    [v7 trackAnomaly:@"SUCoreBorder_MSUPrepareUpdate" forReason:@"prepare was successful with error" withResult:0 withError:v14];

    v9 = 0;
LABEL_10:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

id SUCoreBorder_MSUApplyUpdate(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = 0;
  v3 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUApplyUpdate", &v12);
  v4 = v3;
  if (!v3)
  {
    v8 = MSUApplyUpdate();
    v9 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUApplyUpdate", &v12);
    if (v9)
    {
      v10 = v9;
      LOBYTE(v8) = _SUCoreBorder_MSUSimulate(v9, v8, &v12);
    }

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = v12;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v3, 1, &v12))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12)
  {
    v5 = [MEMORY[0x277D64428] sharedDiag];
    v6 = v12;
    [v5 trackAnomaly:@"SUCoreBorder_MSUApplyUpdate" forReason:@"apply was successful with error" withResult:0 withError:v12];
  }

  v7 = 0;
LABEL_10:

  return v7;
}

id SUCoreBorder_MSUSuspendUpdate()
{
  v9 = 0;
  v0 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUSuspendUpdate", &v9);
  v1 = v0;
  if (!v0)
  {
    v5 = MSUSuspendUpdate();
    v6 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUSuspendUpdate", &v9);
    if (v6)
    {
      v7 = v6;
      LOBYTE(v5) = _SUCoreBorder_MSUSimulate(v6, v5, &v9);
    }

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v4 = v9;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v0, 1, &v9))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v9)
  {
    v2 = [MEMORY[0x277D64428] sharedDiag];
    v3 = v9;
    [v2 trackAnomaly:@"SUCoreBorder_MSUSuspendUpdate" forReason:@"suspend was successful with error" withResult:0 withError:v9];
  }

  v4 = 0;
LABEL_10:

  return v4;
}

id SUCoreBorder_MSUPurgeSuspendedUpdate()
{
  v9 = 0;
  v0 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUPurgeSuspendedUpdate", &v9);
  v1 = v0;
  if (!v0)
  {
    v5 = MSUPurgeSuspendedUpdate();
    v6 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUPurgeSuspendedUpdate", &v9);
    if (v6)
    {
      v7 = v6;
      LOBYTE(v5) = _SUCoreBorder_MSUSimulate(v6, v5, &v9);
    }

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v4 = v9;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v0, 1, &v9))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v9)
  {
    v2 = [MEMORY[0x277D64428] sharedDiag];
    v3 = v9;
    [v2 trackAnomaly:@"SUCoreBorder_MSUPurgeSuspendedUpdate" forReason:@"purge suspeneded update was successful with error" withResult:0 withError:v9];
  }

  v4 = 0;
LABEL_10:

  return v4;
}

id SUCoreBorder_MSUResumeUpdateWithOptions(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUResumeUpdateWithOptions", &v11);
  v3 = v2;
  if (!v2)
  {
    v7 = MSUResumeUpdateWithOptions();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUResumeUpdateWithOptions", &v11);
    if (v8)
    {
      v9 = v8;
      LOBYTE(v7) = _SUCoreBorder_MSUSimulate(v8, v7, &v11);
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = v11;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v2, 1, &v11))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    v4 = [MEMORY[0x277D64428] sharedDiag];
    v5 = v11;
    [v4 trackAnomaly:@"SUCoreBorder_MSUResumeUpdateWithOptions" forReason:@"resume was successful with error" withResult:0 withError:v11];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id SUCoreBorder_MSUBrainIsLoadable(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUUpdateBrainIsLoadable", &v11);
  v3 = v2;
  if (!v2)
  {
    IsLoadable = MSUBrainIsLoadable();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUUpdateBrainIsLoadable", &v11);
    if (v8)
    {
      v9 = v8;
      LOBYTE(IsLoadable) = _SUCoreBorder_MSUSimulate(v8, IsLoadable, &v11);
    }

    if (IsLoadable)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = v11;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v2, 1, &v11))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    v4 = [MEMORY[0x277D64428] sharedDiag];
    v5 = v11;
    [v4 trackAnomaly:@"SUCoreBorder_MSUBrainIsLoadable" forReason:@"brainIsLoadable returned YES with error" withResult:0 withError:v11];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id SUCoreBorder_MSUAssetCalculatePrepareSize(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUAssetCalculatePrepareSize", &v11);
  v3 = v2;
  if (!v2)
  {
    v7 = MSUAssetCalculatePrepareSizes();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUAssetCalculatePrepareSize", &v11);
    if (v8)
    {
      v9 = v8;
      LOBYTE(v7) = _SUCoreBorder_MSUSimulate(v8, v7, &v11);
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = v11;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v2, 1, &v11))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    v4 = [MEMORY[0x277D64428] sharedDiag];
    v5 = v11;
    [v4 trackAnomaly:@"SUCoreBorder_MSUAssetCalculatePrepareSize" forReason:@"asset calculate prepare size was successful with error" withResult:0 withError:v11];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id SUCoreBorder_MSUAssetCalculateApplySize(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUAssetCalculateApplySize", &v11);
  v3 = v2;
  if (!v2)
  {
    v7 = MSUAssetCalculateApplySizes();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUAssetCalculateApplySize", &v11);
    if (v8)
    {
      v9 = v8;
      LOBYTE(v7) = _SUCoreBorder_MSUSimulate(v8, v7, &v11);
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = v11;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v2, 1, &v11))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    v4 = [MEMORY[0x277D64428] sharedDiag];
    v5 = v11;
    [v4 trackAnomaly:@"SUCoreBorder_MSUAssetCalculateApplySize" forReason:@"asset calculate apply size was successful with error" withResult:0 withError:v11];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

uint64_t SUCoreBorder_MSURetrievePreviousUpdateState()
{
  v0 = _SUCoreBorder_MSUFunctionAtBegin(@"MSURetrievePreviousUpdateState", 0);
  v1 = v0;
  if (v0)
  {
    updated = _SUCoreBorder_MSUSimulate(v0, 1, 0);
  }

  else
  {
    updated = MSURetrievePreviousUpdateState();
    v3 = _SUCoreBorder_MSUFunctionAtEnd(@"MSURetrievePreviousUpdateState", 0);
    v4 = v3;
    if (v3)
    {
      updated = _SUCoreBorder_MSUSimulate(v3, updated, 0);
    }
  }

  return updated;
}

id SUCoreBorder_MSUGetUpdateInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUGetUpdateInfo", 0);
  v6 = v5;
  if (v5)
  {
    v7 = _SUCoreBorder_MSUGetUpdateInfo(v5);
  }

  else
  {
    v7 = MSUGetUpdateInfo();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUGetUpdateInfo", 0);
    v9 = v8;
    if (v8)
    {
      v10 = _SUCoreBorder_MSUGetUpdateInfo(v8);

      v7 = v10;
    }
  }

  return v7;
}

id _SUCoreBorder_MSUGetUpdateInfo(void *a1)
{
  v1 = a1;
  v2 = [v1 simAction];
  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (v2 == 3)
    {
      v3 = MEMORY[0x277CBEAC0];
      v4 = [v1 updateInfoPlist];
      v5 = [v3 dictionaryWithContentsOfFile:v4];
    }

    else
    {
      v4 = [MEMORY[0x277D64428] sharedDiag];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v1];
      [v4 trackAnomaly:@"_SUCoreBorder_MSUGetUpdateInfo" forReason:v6 withResult:8113 withError:0];

      v5 = 0;
    }
  }

  return v5;
}

id SUCoreBorder_MSUCommitStash(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = _SUCoreBorder_MSUFunctionAtBegin(@"MSUCommitStash", &v11);
  v3 = v2;
  if (!v2)
  {
    v7 = MSUCommitStash();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSUCommitStash", 0);
    if (v8)
    {
      v9 = v8;
      LOBYTE(v7) = _SUCoreBorder_MSUSimulate(v8, v7, &v11);
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = v11;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v2, 1, &v11))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    v4 = [MEMORY[0x277D64428] sharedDiag];
    v5 = v11;
    [v4 trackAnomaly:@"SUCoreBorder_MSUCommitStash" forReason:@"StashCommit was successful with error" withResult:0 withError:v11];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id SUCoreBorder_MSURollbackUpdatePrepare(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = 0;
  v3 = _SUCoreBorder_MSUFunctionAtBegin(@"MSURollbackUpdatePrepare", &v12);
  v4 = v3;
  if (!v3)
  {
    v8 = MSUPrepareUpdate();
    v9 = _SUCoreBorder_MSUFunctionAtEnd(@"MSURollbackUpdatePrepare", &v12);
    if (v9)
    {
      v10 = v9;
      LOBYTE(v8) = _SUCoreBorder_MSUSimulate(v9, v8, &v12);
    }

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = v12;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v3, 1, &v12))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12)
  {
    v5 = [MEMORY[0x277D64428] sharedDiag];
    v6 = v12;
    [v5 trackAnomaly:@"SUCoreBorder_MSURollbackUpdate" forReason:@"rollback was successful with error" withResult:0 withError:v12];
  }

  v7 = 0;
LABEL_10:

  return v7;
}

id SUCoreBorder_MSURollbackUpdateSuspend()
{
  v9 = 0;
  v0 = _SUCoreBorder_MSUFunctionAtBegin(@"MSURollbackUpdateSuspend", &v9);
  v1 = v0;
  if (!v0)
  {
    v5 = MSUSuspendUpdate();
    v6 = _SUCoreBorder_MSUFunctionAtEnd(@"MSURollbackUpdateSuspend", &v9);
    if (v6)
    {
      v7 = v6;
      LOBYTE(v5) = _SUCoreBorder_MSUSimulate(v6, v5, &v9);
    }

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v4 = v9;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v0, 1, &v9))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v9)
  {
    v2 = [MEMORY[0x277D64428] sharedDiag];
    v3 = v9;
    [v2 trackAnomaly:@"SUCoreBorder_MSURollbackUpdateSuspend" forReason:@"suspend was successful with error" withResult:0 withError:v9];
  }

  v4 = 0;
LABEL_10:

  return v4;
}

id SUCoreBorder_MSURollbackUpdateResumeWithOptions(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = _SUCoreBorder_MSUFunctionAtBegin(@"MSURollbackUpdateResume", &v11);
  v3 = v2;
  if (!v2)
  {
    v7 = MSUResumeUpdateWithOptions();
    v8 = _SUCoreBorder_MSUFunctionAtEnd(@"MSURollbackUpdateResume", &v11);
    if (v8)
    {
      v9 = v8;
      LOBYTE(v7) = _SUCoreBorder_MSUSimulate(v8, v7, &v11);
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = v11;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v2, 1, &v11))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    v4 = [MEMORY[0x277D64428] sharedDiag];
    v5 = v11;
    [v4 trackAnomaly:@"SUCoreBorder_MSURollbackUpdateResumeWithOptions" forReason:@"resume was successful with error" withResult:0 withError:v11];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

id SUCoreBorder_MSURollbackUpdateApply(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = 0;
  v3 = _SUCoreBorder_MSUFunctionAtBegin(@"MSURollbackUpdateApply", &v12);
  v4 = v3;
  if (!v3)
  {
    v8 = MSUApplyUpdate();
    v9 = _SUCoreBorder_MSUFunctionAtEnd(@"MSURollbackUpdateApply", &v12);
    if (v9)
    {
      v10 = v9;
      LOBYTE(v8) = _SUCoreBorder_MSUSimulate(v9, v8, &v12);
    }

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = v12;
    goto LABEL_10;
  }

  if (!_SUCoreBorder_MSUSimulate(v3, 1, &v12))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12)
  {
    v5 = [MEMORY[0x277D64428] sharedDiag];
    v6 = v12;
    [v5 trackAnomaly:@"SUCoreBorder_MSUApplyUpdate" forReason:@"apply was successful with error" withResult:0 withError:v12];
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t _SUCoreBorder_MSUSetSimulatedError(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    if (*a2)
    {
      a2 = 0;
    }

    else
    {
      *a2 = [v3 buildErrorWithDescription:@"_SUCoreBorder_MSUSetSimulatedError"];
      a2 = 1;
    }
  }

  return a2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUCoreBorder_MAPurgeAll(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  obj = 0;
  v5 = _SUCoreBorder_MAFunctionAtBegin(@"MAPurgeAll", &obj);
  objc_storeStrong(&v16, obj);
  if (v5)
  {
    v6 = v12 + 5;
    v7[0] = v12[5];
    _SUCoreBorder_MASimulate(v5, v7);
    objc_storeStrong(v6, v7[0]);
    if (v4)
    {
      (v4)[2](v4, v12[5]);
    }
  }

  else
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SUCoreBorder_MAPurgeAll_block_invoke;
    v7[4] = &unk_27892C920;
    v9 = &v11;
    v8 = v4;
    MAPurgeAll();
  }

  _Block_object_dispose(&v11, 8);
}

void sub_231943378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _SUCoreBorder_MAFunctionAtBegin(void *a1, void *a2)
{
  v3 = MEMORY[0x277D644A0];
  v4 = a1;
  v5 = [v3 sharedSimulator];
  v6 = [v5 begin:@"ma" atFunction:v4];

  if (v6)
  {
    if ([v6 simAction] == 1)
    {
      _SUCoreBorder_MASetSimulatedError(v6, a2);
    }

    else if ([v6 simAction] == 3)
    {
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

id _SUCoreBorder_MAFunctionAtEnd(void *a1, void *a2)
{
  v3 = MEMORY[0x277D644A0];
  v4 = a1;
  v5 = [v3 sharedSimulator];
  v6 = [v5 end:@"ma" atFunction:v4];

  if (v6)
  {
    if ([v6 simAction] == 1)
    {
      _SUCoreBorder_MASetSimulatedError(v6, a2);
    }

    else if ([v6 simAction] == 3)
    {
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

void _SUCoreBorder_MASimulate(void *a1, void *a2)
{
  v7 = a1;
  v3 = [v7 simAction];
  if (v3 == 3)
  {
    v4 = v7;
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (v3 == 1)
    {
      _SUCoreBorder_MASetSimulatedError(v7, a2);
    }

    else
    {
      v5 = [MEMORY[0x277D64428] sharedDiag];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v7];
      [v5 trackAnomaly:@"_SUCoreBorder_MASimulate" forReason:v6 withResult:8113 withError:0];
    }

    v4 = v7;
  }
}

void _SUCoreBorder_MASetSimulatedError(void *a1, void *a2)
{
  v3 = a1;
  if (a2 && !*a2)
  {
    v4 = v3;
    *a2 = [v3 buildErrorWithDescription:@"SUCoreError created by _SUCoreBorder_MASetSimulatedError"];
    v3 = v4;
  }
}

uint64_t _isUpdateBrainAssetType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.MobileAsset.RecoveryOSUpdateBrain"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.MobileAsset.MobileSoftwareUpdate.MacUpdateBrain"];
  }

  return v2;
}

id _getNewUpdateBrainMAAssetAttributesDictionary(void *a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v21 = -272716322;
  v5 = MEMORY[0x277CBEA90];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [[v5 alloc] initWithBytes:&v21 length:4];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = MGCopyAnswer();
  if ([v11 hasPrefix:@"AudioAccessory"])
  {
    v12 = 21;
  }

  else
  {
    v12 = 20;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v10 setSafeObject:v13 forKey:@"_CompatibilityVersion"];

  [v10 setSafeObject:v7 forKey:@"Build"];
  [v10 setSafeObject:v6 forKey:@"AssetPurpose"];

  [v10 setSafeObject:@"zip" forKey:@"_CompressionAlgorithm"];
  [v10 setSafeObject:@"9999099099000000" forKey:@"_ContentVersion"];
  [v10 setSafeObject:@"https://xp.apple.com/report" forKey:@"_EventRecordingServiceURL"];
  [v10 setSafeObject:MEMORY[0x277CBEC38] forKey:@"_IsZipStreamable"];
  [v10 setSafeObject:@"2072" forKey:@"_MasteredVersion"];
  [v10 setSafeObject:v9 forKey:@"_Measurement"];
  [v10 setSafeObject:@"SHA-1" forKey:@"_MeasurementAlgorithm"];
  v14 = [MEMORY[0x277CCABB0] numberWithLong:1234];
  [v10 setSafeObject:v14 forKey:@"_UnarchivedSize"];

  v15 = [MEMORY[0x277CCABB0] numberWithLong:1234];
  [v10 setSafeObject:v15 forKey:@"_DownloadSize"];

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setSafeObject:v8 forKey:@"AssetType"];

  [v16 setSafeObject:@"SimulatedUpdateBrainAssetId" forKey:@"AssetId"];
  v17 = [MEMORY[0x277CCABB0] numberWithLong:1];
  [v16 setSafeObject:v17 forKey:@"AssetState"];

  v22[0] = @"AssetProperties";
  v22[1] = @"AssetAddedProperties";
  v23[0] = v10;
  v23[1] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id _getNewSoftwareUpdateMAAssetAttributesDictionary(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v47 = a1;
  v13 = a4;
  v48 = -272716322;
  v14 = MEMORY[0x277CBEA90];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = a2;
  v20 = [[v14 alloc] initWithBytes:&v48 length:4];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setSafeObject:v19 forKey:@"Build"];
  [v21 setSafeObject:v18 forKey:@"OSVersion"];

  v22 = [MEMORY[0x277D289D8] _translateBuildVersionToRestoreVersionTuple:v19];

  [v21 setSafeObject:v22 forKey:@"RestoreVersion"];
  [v21 setSafeObject:v22 forKey:@"TargetBridgeUpdateVersion"];
  [v21 setSafeObject:v22 forKey:@"TargetSFRUpdateVersion"];
  [v21 setSafeObject:v13 forKey:@"ReleaseType"];
  [v21 setSafeObject:v17 forKey:@"PrerequisiteBuild"];

  [v21 setSafeObject:v16 forKey:@"PrerequisiteOSVersion"];
  [v21 setSafeObject:v15 forKey:@"AssetPurpose"];

  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v13 containsString:@"Internal"] & 1) != 0)
  {
    v23 = @"PreRelease";
  }

  else
  {
    v23 = @"Release";
  }

  [v21 setSafeObject:v23 forKey:@"SUDocumentationID"];
  [v21 setSafeObject:@"SimulatedBaseURL" forKey:@"__BaseURL"];
  [v21 setSafeObject:@"SimulatedRelativePath" forKey:@"__RelativePath"];
  if ([v47 containsString:@"Documentation"])
  {
    [v21 setSafeObject:@"SimulatedDevice" forKey:@"Device"];
    v24 = [MEMORY[0x277CCABB0] numberWithLong:1234];
    [v21 setSafeObject:v24 forKey:@"SUSLAVersionRequired"];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"SimulatedSupportedDeviceModels", 0}];
    [v21 setSafeObject:v24 forKey:@"SupportedDeviceModels"];
    v25 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"SimulatedSupportedDevices", 0}];
    [v21 setSafeObject:v25 forKey:@"SupportedDevices"];
    [v21 setSafeObject:@"SimulatedSystemName" forKey:@"SUProductSystemName"];
    [v21 setSafeObject:@"Apple Inc." forKey:@"SUPublisher"];
    [v21 setSafeObject:v20 forKey:@"RSEPDigest"];
    [v21 setSafeObject:v20 forKey:@"SEPDigest"];
    v26 = MEMORY[0x277CBEC38];
    [v21 setSafeObject:MEMORY[0x277CBEC38] forKey:@"SUInstallTonightEnabled"];
    [v21 setSafeObject:v26 forKey:@"SUMultiPassEnabled"];
    [v21 setSafeObject:v26 forKey:@"SUConvReqd"];
    [v21 setSafeObject:@"1234" forKey:@"InstallationSize-Snapshot"];
    [v21 setSafeObject:@"1234" forKey:@"InstallationSize"];
    v27 = [MEMORY[0x277CCABB0] numberWithLong:1234];
    [v21 setSafeObject:v27 forKey:@"MinimumSystemPartition"];

    v28 = [MEMORY[0x277CCABB0] numberWithLong:1234];
    [v21 setSafeObject:v28 forKey:@"ActualMinimumSystemPartition"];

    [v21 setSafeObject:@"https://ns.itunes.apple.com/nowserving" forKey:@"__QueuingServiceURL"];
    [v21 setSafeObject:@"https://xp.apple.com/report" forKey:@"_EventRecordingServiceURL"];
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = [MEMORY[0x277CCABB0] numberWithLong:80];
    [v29 setSafeObject:v30 forKey:@"8"];

    v31 = [MEMORY[0x277CCABB0] numberWithLong:160];
    [v29 setSafeObject:v31 forKey:@"16"];

    v32 = [MEMORY[0x277CCABB0] numberWithLong:320];
    [v29 setSafeObject:v32 forKey:@"32"];

    v33 = [MEMORY[0x277CCABB0] numberWithLong:640];
    [v29 setSafeObject:v33 forKey:@"64"];

    v34 = [MEMORY[0x277CCABB0] numberWithLong:1280];
    [v29 setSafeObject:v34 forKey:@"128"];

    v35 = [MEMORY[0x277CCABB0] numberWithLong:1280];
    [v29 setSafeObject:v35 forKey:@"256"];

    v36 = [MEMORY[0x277CCABB0] numberWithLong:1280];
    [v29 setSafeObject:v36 forKey:@"512"];

    v37 = [MEMORY[0x277CCABB0] numberWithLong:1280];
    [v29 setSafeObject:v37 forKey:@"768"];

    v38 = [MEMORY[0x277CCABB0] numberWithLong:1280];
    [v29 setSafeObject:v38 forKey:@"1024"];

    [v21 setSafeObject:v29 forKey:@"SystemPartitionPadding"];
  }

  [v21 setSafeObject:v20 forKey:@"_Measurement"];
  [v21 setSafeObject:@"SHA-1" forKey:@"_MeasurementAlgorithm"];
  v39 = MEMORY[0x277CBEC38];
  [v21 setSafeObject:MEMORY[0x277CBEC38] forKey:@"__CanUseLocalCacheServer"];
  [v21 setSafeObject:v39 forKey:@"_IsZipStreamable"];
  [v21 setSafeObject:@"NeverCollected" forKey:@"__AssetDefaultGarbageCollectionBehavior"];
  v40 = [MEMORY[0x277CCABB0] numberWithLong:1234];
  [v21 setSafeObject:v40 forKey:@"_UnarchivedSize"];

  v41 = [MEMORY[0x277CCABB0] numberWithLong:1234];
  [v21 setSafeObject:v41 forKey:@"_DownloadSize"];

  [v21 setSafeObject:@"zip" forKey:@"_CompressionAlgorithm"];
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v42 setSafeObject:v47 forKey:@"AssetType"];
  [v42 setSafeObject:@"SimulatedSoftwareUpdateAssetId" forKey:@"AssetId"];
  v43 = [MEMORY[0x277CCABB0] numberWithLong:1];
  [v42 setSafeObject:v43 forKey:@"AssetState"];

  v49[0] = @"AssetProperties";
  v49[1] = @"AssetAddedProperties";
  v50[0] = v21;
  v50[1] = v42;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

id _getNewDocumentationMAAssetAttributesDictionary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v25 = -272716322;
  v9 = MEMORY[0x277CBEA90];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [[v9 alloc] initWithBytes:&v25 length:4];
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setSafeObject:v13 forKey:@"Build"];

  [v16 setSafeObject:v12 forKey:@"OSVersion"];
  [v16 setSafeObject:v11 forKey:@"SUDocumentationID"];

  [v16 setSafeObject:v10 forKey:@"AssetPurpose"];
  [v16 setSafeObject:v15 forKey:@"_Measurement"];
  [v16 setSafeObject:@"SHA-1" forKey:@"_MeasurementAlgorithm"];
  v17 = MEMORY[0x277CBEC38];
  [v16 setSafeObject:MEMORY[0x277CBEC38] forKey:@"__CanUseLocalCacheServer"];
  [v16 setSafeObject:v17 forKey:@"_IsZipStreamable"];
  [v16 setSafeObject:@"NeverCollected" forKey:@"__AssetDefaultGarbageCollectionBehavior"];
  v18 = [MEMORY[0x277CCABB0] numberWithLong:1234];
  [v16 setSafeObject:v18 forKey:@"_UnarchivedSize"];

  v19 = [MEMORY[0x277CCABB0] numberWithLong:1234];
  [v16 setSafeObject:v19 forKey:@"_DownloadSize"];

  [v16 setSafeObject:@"zip" forKey:@"_CompressionAlgorithm"];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v20 setSafeObject:v14 forKey:@"AssetType"];

  [v20 setSafeObject:@"SimulatedDocAssetId" forKey:@"AssetId"];
  v21 = [MEMORY[0x277CCABB0] numberWithLong:1];
  [v20 setSafeObject:v21 forKey:@"AssetState"];

  v26[0] = @"AssetProperties";
  v26[1] = @"AssetAddedProperties";
  v27[0] = v16;
  v27[1] = v20;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23195988C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2319650B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2383746D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231966000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2319662A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231966668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_231966974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231966D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231967660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2319678A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231967BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231967D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_27892DC30;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231978B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27892DC50;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231984A44(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = +[SUCoreDDMUtilities sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__SUCorePolicyDDMConfiguration_initWithStatePersistencePath___block_invoke_cold_2();
    }

    objc_end_catch();
    JUMPOUT(0x231984A14);
  }

  _Unwind_Resume(exception_object);
}

void sub_231984F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231985560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2319856BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231985A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231985EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2319861C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2319865B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231986910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231986E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2319870EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23198749C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23198779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231987E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2319880D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_23198B8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2319908C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231990AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231990CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231990EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_231993928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SUCoreStringForDDMStatusNotificationType(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_27892E0B0[a1];
  }
}

uint64_t preflightSUDownloadCallback(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1 safeDescriptionWithName:@"status"];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[MSU] software update preflight download SU %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t preflightPersonalizeCallback(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1 safeDescriptionWithName:@"status"];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[MSU] preflight personalize %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t preflightFDRRecoveryCallback(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1 safeDescriptionWithName:@"status"];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[MSU] preflight FDRRecovery %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t preflightWakeupCallback(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1 safeDescriptionWithName:@"status"];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[MSU] preflight wakeup %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t preflightPrerequisiteCheckCallback(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1 safeDescriptionWithName:@"status"];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[MSU] preflight prerequisite check %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t prepareCallback(uint64_t a1, void **a2)
{
  if (!a2)
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      prepareCallback_cold_2();
    }

    goto LABEL_10;
  }

  v4 = *a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v9 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      prepareCallback_cold_1();
    }

LABEL_10:

    return 0;
  }

  v5 = *a2;

  return [v5 prepareProgress:a1];
}

uint64_t applyCallback(uint64_t a1, void **a2)
{
  if (!a2)
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      applyCallback_cold_2();
    }

    goto LABEL_10;
  }

  v4 = *a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v9 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      applyCallback_cold_1();
    }

LABEL_10:

    return 0;
  }

  v5 = *a2;

  return [v5 applyProgress:a1];
}

void sub_2319CC92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 40);
  v5 = *a2;
  return result;
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2319DA144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}