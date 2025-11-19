void __CheckConsistencyWithDeviceState_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setAddCleanupActionsToResultsSummary:{objc_msgSend(v4, "isManagedByTSM")}];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v10 = 0;
  v8 = CleanupActionsForCredentialPair(0, v6, [v6 type], &v10);
  v9 = v10;
  [v7 addCleanupActions:v8 cleanupReason:v9 forDeviceCredential:v6 passCredential:0];
}

uint64_t __CreateDeviceCredentialMap_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

void __CreateDeviceCredentialMap_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 pk_indexDictionaryByApplyingBlock:&__block_literal_global_274];
  [v4 setObject:v6 forKey:v5];
}

id __CreateDeviceCredentialMap_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 address];
  v3 = [v2 mostSpecificIdentifier];

  return v3;
}

void __GetExpectedDeviceCredentialsForPassCredential_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v10 = [v4 objectForKey:v5];

  v6 = [v10 objectForKey:a1[5]];
  [v10 removeObjectForKey:a1[5]];
  v7 = a1[6];
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v7 setObject:v8 forKey:v9];

  if (!v6)
  {
  }
}

uint64_t CleanupActionsForCredentialPair(void *a1, void *a2, uint64_t a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if ((-[__CFString containsSubkeys](v7, "containsSubkeys") & 1) != 0 || (-[__CFString appletProperties](v8, "appletProperties"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isContainer], v9, v10))
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v7;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Skipping consistency check credential because credential is a container (local: %@, device: %@)", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_128;
  }

  v42 = a4;
  if (a3 == 2)
  {
    v13 = 8;
  }

  else
  {
    v13 = 1;
  }

  if (a3 == 2)
  {
    v14 = 16;
  }

  else
  {
    v14 = 3;
  }

  if (a3 == 2)
  {
    v15 = 64;
  }

  else
  {
    v15 = 1;
  }

  if (a3 == 2)
  {
    v16 = 64;
  }

  else
  {
    v16 = 3;
  }

  v17 = [(__CFString *)v7 state];
  v18 = [(__CFString *)v8 state];
  v19 = v18;
  if (!v7 || !v8)
  {
    if (v7)
    {
      if (v17 < 0xA)
      {
        goto LABEL_28;
      }

      if (v17 == 10)
      {
        v12 = 0;
        v11 = @"removed pass and no device credential";
        goto LABEL_106;
      }

      if (v17 == 15)
      {
LABEL_28:
        v11 = @"active pass but no device credential";
        goto LABEL_29;
      }
    }

    else if (v8)
    {
      v12 = 0;
      v11 = &stru_1F227FD28;
      if (v18 > 3)
      {
        if (v18 == 4)
        {
          v12 = 8 * (a3 == 1);
          v11 = @"no pass and incomplete device credential";
          goto LABEL_106;
        }

        if (v18 != 5)
        {
          if (v18 != 6)
          {
            goto LABEL_106;
          }

          v11 = @"no pass and frozen credential";
LABEL_79:
          v12 = v13;
          goto LABEL_106;
        }
      }

      else
      {
        if (v18 < 2)
        {
          v11 = @"no pass and active device credential";
          goto LABEL_105;
        }

        if ((v18 - 2) >= 2)
        {
          goto LABEL_106;
        }
      }

      if (a3 == 2)
      {
        v12 = 8;
      }

      else
      {
        v12 = a3 == 1;
      }

      v11 = @"no pass and non active device credential";
      goto LABEL_106;
    }

    v12 = 0;
    v11 = &stru_1F227FD28;
    goto LABEL_106;
  }

  v13 = v14;
  v12 = 0;
  v11 = &stru_1F227FD28;
  if (v17 > 3)
  {
    if (v17 > 0xF)
    {
      goto LABEL_106;
    }

    if (((1 << v17) & 0x3C0) == 0)
    {
      if (((1 << v17) & 0x420) == 0)
      {
        if (((1 << v17) & 0x8010) == 0)
        {
          goto LABEL_106;
        }

LABEL_38:
        v12 = 0;
        if (v18 <= 2)
        {
          if (v18)
          {
            if (v18 == 1)
            {
              v22 = [(__CFString *)v7 keyMaterialHashForDeviceCredentialType];
              v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
              v24 = [v22 objectForKeyedSubscript:v23];

              v25 = [(__CFString *)v8 keyMaterialHash];
              v26 = v25;
              if (v24 && v25 && ![v24 isEqual:v25])
              {
                v11 = @"key material hashes don't match";
                v12 = 2;
              }

              else
              {
                v12 = 0;
                v11 = @"active pass state and active credential state";
              }

              goto LABEL_106;
            }

            if (v18 != 2)
            {
              goto LABEL_106;
            }

            goto LABEL_78;
          }

          goto LABEL_90;
        }

        if ((v18 - 5) < 2)
        {
          goto LABEL_78;
        }

        if (v18 != 3)
        {
          if (v18 != 4)
          {
            goto LABEL_106;
          }

          if (([(__CFString *)v8 shouldRegister]& 1) != 0)
          {
            v11 = @"active pass and untracked device credential";
            goto LABEL_77;
          }

LABEL_78:
          v11 = @"active pass state, but non active credential state";
          goto LABEL_79;
        }

        v11 = @"active pass but invalid device credential";
LABEL_29:
        v12 = v16;
        goto LABEL_106;
      }

      goto LABEL_49;
    }

    if (v18 <= 6)
    {
      if (((1 << v18) & 0x6C) != 0)
      {
        goto LABEL_45;
      }

      if (v18 == 1)
      {
        v12 = 32 * (a3 == 2);
        v11 = @"suspended pass state and active credential state";
        goto LABEL_106;
      }

      if (v18 == 4)
      {
        if (([(__CFString *)v8 shouldRegister]& 1) != 0)
        {
          v11 = @"suspended pass and untracked device credential";
          goto LABEL_77;
        }

LABEL_45:
        if (a3 == 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = 3;
        }

        v11 = @"suspended pass state, but non active credential state";
        goto LABEL_106;
      }
    }

    if (v18)
    {
      v12 = 0;
      goto LABEL_106;
    }

LABEL_90:
    v11 = @"device credential should not be in an unknown state";
    goto LABEL_105;
  }

  if ((v17 - 2) < 2)
  {
    v12 = 0;
    if (v18 > 2)
    {
      if (v18 > 4)
      {
        if (v18 != 5)
        {
          if (v18 != 6)
          {
            goto LABEL_106;
          }

          v11 = @"personalizing pass but suspended device credential";
LABEL_130:
          v12 = 1;
          goto LABEL_106;
        }
      }

      else
      {
        if (v18 == 3)
        {
          v11 = @"personalizing pass but invalid device credential";
          v12 = v15;
          goto LABEL_106;
        }

        if (([(__CFString *)v8 shouldRegister]& 1) != 0)
        {
          v11 = @"personalizing pass and untracked device credential";
LABEL_77:
          v12 = 4;
          goto LABEL_106;
        }
      }

      v11 = @"personalizing pass but incomplete device credential";
      goto LABEL_130;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        v11 = @"personalizing pass but active device credential";
        v12 = 2;
        goto LABEL_106;
      }

      if (v18 == 2)
      {
        v11 = @"personalizing pass but suspended device credential";
        goto LABEL_79;
      }

      goto LABEL_106;
    }

    goto LABEL_90;
  }

  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_106;
    }

    goto LABEL_38;
  }

LABEL_49:
  v20 = [(__CFString *)v8 appletProperties];
  v21 = [v20 isLocked];

  if (v21)
  {
    v11 = @"removed pass and locked applet";
LABEL_105:
    v12 = 8;
    goto LABEL_106;
  }

  v12 = 0;
  v11 = &stru_1F227FD28;
  if (v19 <= 2)
  {
    if (v19 >= 2)
    {
      if (v19 == 2)
      {
        v12 = 8 * (a3 == 2);
        v11 = @"removed pass and suspended device credential";
      }

      goto LABEL_106;
    }

    v11 = @"removed pass and active device credential";
    goto LABEL_105;
  }

  if ((v19 - 3) < 2)
  {
    v11 = @"removed pass and incomplete device credential";
    goto LABEL_105;
  }

  if (v19 == 5)
  {
    v12 = 0;
    v11 = @"removed pass and empty device credential";
    goto LABEL_106;
  }

  if (v19 == 6)
  {
    v11 = @"removed pass and frozen device credential";
    goto LABEL_130;
  }

LABEL_106:
  v27 = [(__CFString *)v8 isoProperties];
  v28 = v27;
  if (v27)
  {
    v29 = v42;
    if (([v27 hasKeyMeterial] & 1) == 0)
    {
      v12 |= 0x40uLL;
      v11 = [(__CFString *)v11 stringByAppendingString:@", and missing iso key material"];
    }

    if ([v28 requireKeySync])
    {
      v12 |= 0x80uLL;
      v30 = [(__CFString *)v11 stringByAppendingString:@", and requires key sync"];

      v11 = v30;
    }
  }

  else
  {
    v29 = v42;
  }

  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  v32 = @"N";
  if (a3 == 2)
  {
    v33 = @"Y";
  }

  else
  {
    v33 = @"N";
  }

  if (a3 == 2)
  {
    v34 = @"N";
  }

  else
  {
    v34 = @"Y";
  }

  if (a3 == 1)
  {
    v32 = @"Y";
  }

  v35 = [v31 initWithFormat:@"(canUpdateDeviceCredential: %@, shouldKeepActiveDeviceCredentialWithSuspendedPass: %@, shouldSyncForOrphanedSuspendedDeviceCredentials: %@, passCredential: %@, deviceCredential: %@)", v33, v34, v32, v7, v8];
  v36 = PKLogFacilityTypeGetObject(7uLL);
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v37)
    {
      v38 = PKConsistencyCheckCleanupActionsToString(v12);
      *buf = 138412802;
      v44 = v38;
      v45 = 2112;
      v46 = v11;
      v47 = 2112;
      v48 = v35;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Requesting %@ cleanup actions because %@. %@", buf, 0x20u);
    }
  }

  else if (v37)
  {
    *buf = 138412546;
    v44 = v11;
    v45 = 2112;
    v46 = v35;
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Requesting no cleanup actions because %@. %@", buf, 0x16u);
  }

  if (v29)
  {
    v39 = objc_alloc(MEMORY[0x1E696AEC0]);
    v40 = PKConsistencyCheckCleanupActionsToString(v12);
    *v29 = [v39 initWithFormat:@"%@. performing: %@", v11, v40];
  }

LABEL_128:
  return v12;
}

id ErrorWithCodeAndDescription(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = a2;
  v4 = MEMORY[0x1E695DF20];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"PKPassKitErrorDomain" code:a1 userInfo:v6];

  return v7;
}

void sub_1AD9ACE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak(&a44);
  objc_destroyWeak((v44 - 248));
  _Block_object_dispose((v44 - 176), 8);
  _Block_object_dispose((v44 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1AD9AEBF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_4()
{
  if (qword_1EB5B7E98 != -1)
  {
    dispatch_once(&qword_1EB5B7E98, &__block_literal_global_217_0);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1EB5B7E90 = result;
  getNPKCompanionAgentConnectionClass_4[0] = NPKCompanionAgentConnectionFunction_4;
  return result;
}

void *__LoadNanoPassKit_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_4 = result;
  return result;
}

Class initBYFlowSkipController()
{
  if (qword_1EB5B7EB0 != -1)
  {
    dispatch_once(&qword_1EB5B7EB0, &__block_literal_global_221);
  }

  result = objc_getClass("BYFlowSkipController");
  qword_1EB5B7EA0 = result;
  _MergedGlobals_181 = BYFlowSkipControllerFunction;
  return result;
}

void *__LoadSetupAssistant_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  qword_1EB5B7EA8 = result;
  return result;
}

id initBYFlowSkipIdentifierApplePay()
{
  if (qword_1EB5B7EB0 != -1)
  {
    dispatch_once(&qword_1EB5B7EB0, &__block_literal_global_221);
  }

  v0 = dlsym(qword_1EB5B7EA8, "BYFlowSkipIdentifierApplePay");
  objc_storeStrong(&qword_1EB5B7E88, *v0);
  off_1ED6D1190 = BYFlowSkipIdentifierApplePayFunction;
  v1 = qword_1EB5B7E88;

  return v1;
}

void sub_1AD9B0644(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    v19 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 description];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v20;
      _os_log_error_impl(&dword_1AD337000, v19, OS_LOG_TYPE_ERROR, "Failed to decode verification record with exception: %{public}@", &buf, 0xCu);
    }

    [v17 setVerificationStatus:0];
    [v17 setAllChannels:0];
    [v17 setRequiredFieldData:0];
    [v17 setChannel:0];
    [v17 setCurrentStepIdentifier:0];
    [v17 setPreviousStepIdentifier:0];

    objc_end_catch();
    JUMPOUT(0x1AD9B0600);
  }

  _Unwind_Resume(a1);
}

void sub_1AD9B2B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKAccountEventTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0x19)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DFE88[a1 - 1];
  }
}

uint64_t PKAccountEventTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1 == @"rewardsadded")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_80:
    v4 = 0;
    goto LABEL_81;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"rewardsadded"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"rewardsredeemed" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"rewardsredeemed"], v6, (v7 & 1) != 0))
    {
      v4 = 1;
      goto LABEL_81;
    }

    v8 = v6;
    if (v8 == @"statementavailable" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"statementavailable"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_81;
    }

    v11 = v9;
    if (v11 == @"dispute" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"dispute"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_81;
    }

    v14 = v12;
    if (v14 == @"paymentscheduled" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"paymentscheduled"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_81;
    }

    v17 = v15;
    if (v17 == @"paymentcancelled" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"paymentcancelled"], v18, (v19 & 1) != 0))
    {
      v4 = 8;
      goto LABEL_81;
    }

    v20 = v18;
    if (v20 == @"paymentposted" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"paymentposted"], v21, (v22 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_81;
    }

    v23 = v21;
    if (v23 == @"paymentfailed" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"paymentfailed"], v24, (v25 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_81;
    }

    v26 = v24;
    if (v26 == @"transferscheduled" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"transferscheduled"], v27, (v28 & 1) != 0))
    {
      v4 = 19;
      goto LABEL_81;
    }

    v29 = v27;
    if (v29 == @"transfercancelled" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"transfercancelled"], v30, (v31 & 1) != 0))
    {
      v4 = 22;
      goto LABEL_81;
    }

    v32 = v30;
    if (v32 == @"transferposted" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"transferposted"], v33, (v34 & 1) != 0))
    {
      v4 = 20;
      goto LABEL_81;
    }

    v35 = v33;
    if (v35 == @"transferfailed" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"transferfailed"], v36, (v37 & 1) != 0))
    {
      v4 = 21;
      goto LABEL_81;
    }

    v38 = v36;
    if (v38 == @"transferpending" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"transferpending"], v39, (v40 & 1) != 0))
    {
      v4 = 23;
      goto LABEL_81;
    }

    v41 = v39;
    if (v41 == @"transfercompleted" || (v42 = v41, v43 = [(__CFString *)v41 isEqualToString:@"transfercompleted"], v42, (v43 & 1) != 0))
    {
      v4 = 24;
      goto LABEL_81;
    }

    v44 = v42;
    if (v44 == @"holdplaced" || (v45 = v44, v46 = [(__CFString *)v44 isEqualToString:@"holdplaced"], v45, (v46 & 1) != 0))
    {
      v4 = 25;
      goto LABEL_81;
    }

    v47 = v45;
    if (v47 == @"holdremoval" || (v48 = v47, v49 = [(__CFString *)v47 isEqualToString:@"holdremoval"], v48, (v49 & 1) != 0))
    {
      v4 = 26;
      goto LABEL_81;
    }

    v50 = v48;
    if (v50 == @"paymentreminder" || (v51 = v50, v52 = [(__CFString *)v50 isEqualToString:@"paymentreminder"], v51, (v52 & 1) != 0))
    {
      v4 = 9;
      goto LABEL_81;
    }

    v53 = v51;
    if (v53 == @"credittermsupdated" || (v54 = v53, v55 = [(__CFString *)v53 isEqualToString:@"credittermsupdated"], v54, (v55 & 1) != 0))
    {
      v4 = 10;
      goto LABEL_81;
    }

    v56 = v54;
    if (v56 == @"physicalcardstatusupdate" || (v57 = v56, v58 = [(__CFString *)v56 isEqualToString:@"physicalcardstatusupdate"], v57, (v58 & 1) != 0))
    {
      v4 = 11;
      goto LABEL_81;
    }

    v59 = v57;
    if (v59 == @"physicalcardshippingupdate" || (v60 = v59, v61 = [(__CFString *)v59 isEqualToString:@"physicalcardshippingupdate"], v60, (v61 & 1) != 0))
    {
      v4 = 12;
      goto LABEL_81;
    }

    v62 = v60;
    if (v62 == @"virtualcardstatusupdate" || (v63 = v62, v64 = [(__CFString *)v62 isEqualToString:@"virtualcardstatusupdate"], v63, (v64 & 1) != 0))
    {
      v4 = 13;
      goto LABEL_81;
    }

    v65 = v63;
    if (v65 == @"billpaymentselectedsuggestedamountdata" || (v66 = v65, v67 = [(__CFString *)v65 isEqualToString:@"billpaymentselectedsuggestedamountdata"], v66, (v67 & 1) != 0))
    {
      v4 = 14;
      goto LABEL_81;
    }

    v68 = v66;
    if (v68 == @"userinfoupdated" || (v69 = v68, v70 = [(__CFString *)v68 isEqualToString:@"userinfoupdated"], v69, (v70 & 1) != 0))
    {
      v4 = 15;
      goto LABEL_81;
    }

    v71 = v69;
    if (v71 == @"missedpayment" || (v72 = v71, v73 = [(__CFString *)v71 isEqualToString:@"missedpayment"], v72, (v73 & 1) != 0))
    {
      v4 = 16;
      goto LABEL_81;
    }

    v74 = v72;
    if (v74 == @"creditbureauwarning" || (v75 = v74, v76 = [(__CFString *)v74 isEqualToString:@"creditbureauwarning"], v75, (v76 & 1) != 0))
    {
      v4 = 17;
      goto LABEL_81;
    }

    v77 = v75;
    if (v77 == @"chargeoffprevention" || (v78 = v77, v79 = [(__CFString *)v77 isEqualToString:@"chargeoffprevention"], v78, v79))
    {
      v4 = 18;
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_4:
  v4 = 2;
LABEL_81:

  return v4;
}

uint64_t PKProtobufCloudStoreZoneInvitationReadFrom(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v31 = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v31 & 0x7F) << v18;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_48;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_48:
            *(a1 + 40) = v24;
            goto LABEL_43;
          case 2:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 3:
            v14 = PBReaderReadData();
            v15 = 24;
            break;
          default:
            goto LABEL_38;
        }

        goto LABEL_42;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_42;
      }

      if (v13 != 6)
      {
LABEL_38:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_43;
      }

      *(a1 + 56) |= 1u;
      v29 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v29;
LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 16;
LABEL_42:
    v26 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_1AD9B6FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD9B7AA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD9B9340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9BAD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PKPassPersonalizationRequestToken(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (PKDisablePersonalizationValidation())
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKPassPersonalizationRequestToken_block_invoke_28;
    block[3] = &unk_1E79C4428;
    v13 = v4;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }

  else if (v3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v2/%@/token/", v3];
    v7 = PKMerchantServicesURL();
    v8 = [v7 URLByAppendingPathComponent:v6];

    v9 = [MEMORY[0x1E695AC18] requestWithURL:v8];
    [v9 setHTTPMethod:@"GET"];

    v10 = [MEMORY[0x1E695AC78] sharedSession];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __PKPassPersonalizationRequestToken_block_invoke;
    v14[3] = &unk_1E79CB9F0;
    v15 = v4;
    v11 = [v10 dataTaskWithRequest:v9 completionHandler:v14];
    [v11 resume];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __PKPassPersonalizationRequestToken_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(a1 + 32))
  {
    v11 = v9;
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = v11;
    }

    else
    {
      v16 = [v8 statusCode];
      if (v16 != 200)
      {
        v18 = v16;
        v15 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v21 = v18;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Merchant Services Pass Personalization Token Request received failure status: %ld", buf, 0xCu);
        }

        v13 = 0;
        v14 = 0;
        goto LABEL_14;
      }

      v19 = 0;
      v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v19];
      v14 = v19;
      objc_opt_class();
      v13 = 0;
      if (objc_opt_isKindOfClass())
      {
        v13 = [v17 objectForKeyedSubscript:@"personalizationToken"];
      }

      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v15 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Merchant Services Pass Personalization Token Request Error: %@", buf, 0xCu);
    }

LABEL_14:

LABEL_15:
    (*(*(a1 + 32) + 16))();
  }
}

void __PKPassPersonalizationRequestToken_block_invoke_28(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v2 = *(a1 + 32);
    v3 = [v4 UUIDString];
    (*(v2 + 16))(v2, v3);
  }
}

void PKPassPersonalizationReport(void *a1, void *a2, void *a3, uint64_t a4)
{
  v20 = a1;
  v7 = a2;
  v8 = a3;
  if (!PKDisablePersonalizationValidation())
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = [v9 stringWithFormat:@"v2/%@/token/%@/", v20, v7];
    v12 = PKMerchantServicesURL();
    v13 = [v12 URLByAppendingPathComponent:v11];

    v14 = [MEMORY[0x1E695AC18] requestWithURL:v13];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 setObject:v10 forKeyedSubscript:@"signatureData"];

    if (a4 == 1)
    {
      v16 = @"VAS";
    }

    else
    {
      v16 = 0;
    }

    [v15 setObject:v16 forKeyedSubscript:@"source"];
    v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v15 options:1 error:0];
    [v14 setHTTPBody:v17];
    [v14 setHTTPMethod:@"POST"];

    v18 = [MEMORY[0x1E695AC78] sharedSession];
    v19 = [v18 dataTaskWithRequest:v14 completionHandler:&__block_literal_global_198];
    [v19 resume];
  }
}

void __PKPassPersonalizationReport_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      v10 = "Merchant Services Pass Personalization Report Error %@";
LABEL_7:
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = [v7 statusCode];
  if (v11 != 200)
  {
    v12 = v11;
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v12;
      v10 = "Merchant Services Pass Personalization Report received failure status: %ld";
      goto LABEL_7;
    }

LABEL_8:
  }
}

id PKPassSecurePreviewContextCreateMessagesPreview(NSURL *a1, NSURL *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  MessagesPreview = 0;
  if (v3 && v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v3 options:1 error:0];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pass.%@", @"pkpass"];
    v10 = [(NSURL *)v5 URLByAppendingPathComponent:v9 isDirectory:1];
    v11 = [[PKSerializedDataAccessor alloc] initWithData:v8 error:0 outputURL:v10];

    v12 = [(PKObject *)PKPass createWithValidatedFileDataAccessor:v11];
    MessagesPreview = PKPassSecurePreviewContextCreateMessagesPreview(v12);

    objc_autoreleasePoolPop(v7);
  }

  return MessagesPreview;
}

id PKPassSecurePreviewContextCreateMessagesPreview(PKPass *a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [(PKObject *)v1 uniqueID];
      *buf = 138412290;
      v97 = v3;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPassSecurePreviewContext: generating preview information for pass %@.", buf, 0xCu);
    }

    v4 = [(PKObject *)v1 displayProfile];
    if ([v4 passStyle] == 9)
    {
      v83 = v4;
      v5 = v1;
      v6 = [(PKObject *)v5 displayProfile];
      v7 = [v6 backgroundColor];
      v8 = [v6 foregroundColor];
      v9 = [v6 labelColor];
      v10 = [v7 CGColor];
      if (v10)
      {
        v11 = PKColorGetRelativeLuminance(v10) / 100.0;
        if (v11 <= 0.00885645168)
        {
          v12 = v11 * 7.78703704 + 0.137931034;
        }

        else
        {
          v12 = pow(v11, 0.333333333);
        }

        v19 = (v12 * 116.0 + -16.0) / 100.0 > 0.9;
      }

      else
      {
        v19 = 0;
      }

      if ([v6 supportsAutomaticForegroundVibrancy])
      {
        v32 = 1.0;
        if (v19)
        {
          v32 = 0.0;
        }

        v33 = [PKColor colorWithR:v32 G:v32 B:v32 A:1.0];

        v8 = v33;
      }

      else if (!v8)
      {
        v8 = [PKColor colorWithR:0.0 G:0.0 B:0.0 A:1.0];
      }

      v81 = v1;
      if ([v6 supportsAutomaticLabelVibrancy])
      {
        v34 = 0.333;
        if (!v19)
        {
          v34 = 1.0;
        }

        v35 = [PKColor colorWithR:v34 G:v34 B:v34 A:1.0];

        v9 = v35;
      }

      else if (!v9)
      {
        v9 = [PKColor colorWithR:0.462745098 G:0.462745098 B:0.462745098 A:1.0];
      }

      v36 = [PKPassSecurePreviewContext alloc];
      v37 = [v7 string];
      v38 = [v8 string];
      v39 = [v8 string];
      [v9 string];
      v40 = v86 = v7;
      v13 = [(PKPassSecurePreviewContext *)v36 _initWithBackgroundColor:v37 primaryColor:v38 secondaryColor:v39 tertiaryColor:v40];

      v41 = [(PKPass *)v5 stringForSemanticKey:@"eventName"];
      v42 = PKLocalizedTicketingString(&cfstr_SharePreviewSu_6.isa, 0);
      [v13 setPrimaryText:v41];
      [v13 setSecondaryText:0];
      [v13 setTertiaryText:v42];
      v43 = [(PKPass *)v5 iconImage];
      [v13 setIcon:{objc_msgSend(v43, "imageRef")}];

      v44 = [(PKPass *)v5 logoImage];

      [v13 setImage:{objc_msgSend(v44, "imageRef")}];
      v1 = v81;
      v4 = v83;
      goto LABEL_73;
    }

    v88 = 0;
    v89 = 0;
    v87 = 0;
    v14 = v1;
    v15 = [(PKPass *)v14 frontFieldBuckets];
    v16 = [v15 objectAtIndexedSubscript:1];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 pk_objectsPassingTest:&__block_literal_global_199];
    }

    else
    {
      v18 = 0;
    }

    v20 = [v15 objectAtIndexedSubscript:2];
    v21 = v20;
    if (v20)
    {
      v79 = [v20 pk_objectsPassingTest:&__block_literal_global_199];
    }

    else
    {
      v79 = 0;
    }

    v22 = [v15 objectAtIndexedSubscript:3];
    v23 = v22;
    if (v22)
    {
      v78 = [v22 pk_objectsPassingTest:&__block_literal_global_199];
    }

    else
    {
      v78 = 0;
    }

    v24 = [(PKPass *)v14 organizationName];
    v25 = v87;
    v87 = v24;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __MessagePreviewExtractFields_block_invoke;
    aBlock[3] = &__block_descriptor_56_e18_B16__0__NSString_8l;
    aBlock[4] = &v89;
    aBlock[5] = &v88;
    aBlock[6] = &v87;
    v26 = _Block_copy(aBlock);
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __MessagePreviewExtractFields_block_invoke_2;
    v94[3] = &__block_descriptor_56_e5_B8__0l;
    v94[4] = &v89;
    v94[5] = &v88;
    v94[6] = &v87;
    v85 = _Block_copy(v94);
    if (-[PKPass style](v14, "style") != 4 || (v27 = [v18 count]) == 0)
    {
      v80 = v18;
      v31 = 0;
      goto LABEL_51;
    }

    v28 = v4;
    if (v27 == 1)
    {
      v29 = [v18 objectAtIndexedSubscript:0];
      v30 = StringFromField(v29);
LABEL_50:

      v31 = v26[2](v26, v30);
      v80 = 0;
      v4 = v28;
LABEL_51:
      v77 = v14;
      v50 = [(PKPass *)v14 localizedDescription];
      v26[2](v26, v50);

      if (v85[2]())
      {
        goto LABEL_69;
      }

      v76 = v15;
      v51 = [v80 firstObject];
      v52 = StringFromField(v51);
      v53 = v26[2](v26, v52);

      if (v53)
      {
        v15 = v76;
        if (v85[2]())
        {
          goto LABEL_69;
        }

        v31 = 1;
      }

      v82 = v1;
      v84 = v4;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v54 = v79;
      v55 = [v54 countByEnumeratingWithState:&v90 objects:buf count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v91;
        while (2)
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v91 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = StringFromField(*(*(&v90 + 1) + 8 * i));
            v60 = v26[2](v26, v59);

            if (v60)
            {
              if (v85[2]())
              {
                v1 = v82;
                v15 = v76;
                goto LABEL_68;
              }

              v31 = 1;
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v90 objects:buf count:16];
          if (v56)
          {
            continue;
          }

          break;
        }
      }

      v1 = v82;
      v4 = v84;
      v15 = v76;
      if ((v31 & 1) == 0)
      {
        v54 = [v78 firstObject];
        v61 = StringFromField(v54);
        v26[2](v26, v61);

LABEL_68:
        v4 = v84;
      }

LABEL_69:

      v62 = [v4 backgroundColor];
      v63 = [v62 string];

      v64 = [v4 foregroundColor];
      v65 = [v64 string];

      v66 = [v4 labelColor];
      v67 = [v66 string];

      if (v63)
      {
        if (v65)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v72 = [PKColor colorWithR:0.91372549 G:0.91372549 B:0.91372549 A:1.0];
        v63 = [v72 string];

        if (v65)
        {
LABEL_71:
          if (v67)
          {
LABEL_72:
            v13 = [[PKPassSecurePreviewContext alloc] _initWithBackgroundColor:v63 primaryColor:v65 secondaryColor:v65 tertiaryColor:v67];
            [v13 setPrimaryText:v89];
            [v13 setSecondaryText:v88];
            [v13 setTertiaryText:v87];
            v68 = [(PKPass *)v77 iconImage];
            [v13 setIcon:{objc_msgSend(v68, "imageRef")}];

            v69 = [(PKPass *)v77 logoImage];
            [v13 setImage:{objc_msgSend(v69, "imageRef")}];

            v70 = [(PKPass *)v77 backgroundImage];
            [v13 setBackgroundImage:{objc_msgSend(v70, "imageRef")}];

LABEL_73:
            goto LABEL_74;
          }

LABEL_77:
          v74 = [PKColor colorWithR:0.462745098 G:0.462745098 B:0.462745098 A:1.0];
          v67 = [v74 string];

          goto LABEL_72;
        }
      }

      v73 = [PKColor colorWithR:0.0 G:0.0 B:0.0 A:1.0];
      v65 = [v73 string];

      if (v67)
      {
        goto LABEL_72;
      }

      goto LABEL_77;
    }

    v75 = v15;
    v45 = [v18 objectAtIndexedSubscript:0];
    v29 = StringFromField(v45);

    v46 = [v18 objectAtIndexedSubscript:1];
    v47 = StringFromField(v46);

    if (v29 && v47)
    {
      v48 = PKCoreLocalizedString(&cfstr_BoardingPassPr.isa, &cfstr_12_0.isa, v29, v47);
    }

    else
    {
      if (!(v29 | v47))
      {
        v30 = 0;
        goto LABEL_49;
      }

      if (v29)
      {
        v49 = v29;
      }

      else
      {
        v49 = v47;
      }

      v48 = v49;
    }

    v30 = v48;
LABEL_49:

    v15 = v75;
    goto LABEL_50;
  }

  v13 = 0;
LABEL_74:

  return v13;
}

uint64_t PKPassesSecurePreviewContextCreateMessagesPreview(NSURL *a1, NSURL *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_autoreleasePoolPush();
    v9 = [[PKPassesXPCContainer alloc] initWithFileURL:v3];
    v10 = v9;
    if (v9)
    {
      [(PKPassesXPCContainer *)v9 setTemporaryOutputDirectory:v5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___Z49PKPassesSecurePreviewContextCreateMessagesPreviewP5NSURLS0__block_invoke;
      v13[3] = &unk_1E79E0138;
      v11 = v7;
      v14 = v11;
      if ([(PKPassesXPCContainer *)v10 unarchivePassesWithOptions:0 usingBlock:v13])
      {
        [v11 removeAllObjects];
      }
    }

    objc_autoreleasePoolPop(v8);
    if ([v7 count])
    {
      v6 = [v7 copy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void ___Z49PKPassesSecurePreviewContextCreateMessagesPreviewP5NSURLS0__block_invoke(uint64_t a1, PKPass *a2)
{
  MessagesPreview = PKPassSecurePreviewContextCreateMessagesPreview(a2);
  if (MessagesPreview)
  {
    v4 = MessagesPreview;
    [*(a1 + 32) addObject:MessagesPreview];
    MessagesPreview = v4;
  }
}

uint64_t __MessagePreviewExtractFields_block_invoke(id **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    goto LABEL_23;
  }

  v5 = *a1[4];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    goto LABEL_17;
  }

  if (v5)
  {
    v8 = [v5 isEqualToString:v6];

    if (v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = *a1[5];
  v9 = v7;
  v7 = v9;
  if (v5 == v9)
  {
    goto LABEL_17;
  }

  if (v5)
  {
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = *a1[6];
  v11 = v7;
  v7 = v11;
  if (v5 == v11)
  {
LABEL_17:

    v13 = 0;
  }

  else
  {
    if (v5)
    {
      v12 = [v5 isEqualToString:v11];

      if (v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v14 = a1[4];
    if (*v14 && (v14 = a1[5], *v14))
    {
      v15 = a1[6];
      if (*v15)
      {
LABEL_23:
        v13 = 0;
        goto LABEL_24;
      }

      v18 = v7;
      v5 = *v15;
      *v15 = v18;
    }

    else
    {
      v17 = v7;
      v5 = *v14;
      *v14 = v17;
    }

    v13 = 1;
  }

LABEL_24:
  return v13;
}

id StringFromField(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [v1 value];
    v4 = TrimmedString(v3, v2);

    if (!v4)
    {
      v5 = [v1 label];
      v4 = TrimmedString(v5, v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id TrimmedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v3 stringByTrimmingCharactersInSet:v4];

      v3 = v6;
    }

    if (![v3 length])
    {

      v3 = 0;
    }
  }

  return v3;
}

void sub_1AD9BECB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKPeerPaymentDocumentSubmissionStatusFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"success" isEqualToString:v1])
  {
    v2 = 0;
  }

  else if ([@"unreadable" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"invalid" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"unavailable" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  return v2;
}

uint64_t PKPeerPaymentUpdateUserInfoResponseStateFromString(void *a1)
{
  v1 = a1;
  if ([@"inProgress" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"complete" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1AD9C4B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9C4CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9C4ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKDemoPersonToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E79E0420[a1];
  }
}

__CFString *PKDemoMerchantToString(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return 0;
  }

  else
  {
    return off_1E79E0470[a1];
  }
}

id _demoDirectory()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"Demo"];

  return v1;
}

id _demoMerchantToDictionary(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Peet's Coffee" forKeyedSubscript:@"name"];
      [v1 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Jose" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"2" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"33" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B5690 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v2 setObject:@"food.coffee" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media3.fl.yelpcdn.com/bphoto/MvTju6357spmcvSg7WEJYw/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"12523575549507233739" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6EB0 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6EC0 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Peet's Coffee" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 256-4584" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"https://locations.peets.com/ll/US/CA/San%20Jose/1110-Blossom-Hill-Rd_*-Suite-20" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v3 setObject:@"food.coffee" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"8699818702873385130" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"Peet's Coffee" forKeyedSubscript:@"name"];
      [v3 setObject:@"https://www.peets.com" forKeyedSubscript:@"url"];
      v4 = @"https://is2-ssl.mzstatic.com/image/thumb/Purple113/v4/bb/b0/29/bbb0298c-c522-d1d4-dd5c-850e3ff6718c/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/258x258.png";
      goto LABEL_27;
    case 1:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Whole Foods Market" forKeyedSubscript:@"name"];
      [v1 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Jose" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"45" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"325" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v2 setObject:@"food.grocery" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media1.fl.yelpcdn.com/bphoto/M5xWlUAsdqCfl11jlG8etw/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"7107539818895359605" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6ED0 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6EE0 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Whole Foods Market" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (408) 266-3700" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"http://www.wholefoodsmarket.com/stores/blossomhill" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v3 setObject:@"food.grocery" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"6434975174002562436" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"http://is3.mzstatic.com/image/thumb/PjQoyHYEsy9smuX4TuBlqg/258x258.png" forKeyedSubscript:@"logoURL"];
      [v3 setObject:@"Whole Foods Market" forKeyedSubscript:@"name"];
      v4 = @"https://www.wholefoodsmarket.com";
      goto LABEL_21;
    case 2:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Chevron" forKeyedSubscript:@"name"];
      [v1 setObject:@"transport" forKeyedSubscript:@"category"];
      [v1 setObject:@"physical" forKeyedSubscript:@"source"];
      [v1 setObject:@"Cupertino" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"other" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"20" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"75" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56C0 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"transport" forKeyedSubscript:@"category"];
      [v2 setObject:@"auto.servicestations.gasstations" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media3.fl.yelpcdn.com/bphoto/ocrS3xTiwLw0K9rBxgINmw/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"5052521753504112381" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6EF0 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6F00 forKeyedSubscript:@"locationLongitude"];
      v10 = @"Chevron";
      [v2 setObject:@"Chevron" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (408) 773-9135" forKeyedSubscript:@"phoneNumber"];
      v11 = @"https://www.chevronwithtechron.com";
      [v2 setObject:@"https://www.chevronwithtechron.com" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:@"transport" forKeyedSubscript:@"category"];
      [v12 setObject:@"auto.servicestations.gasstations" forKeyedSubscript:@"detailedCategory"];
      [v12 setObject:@"8388699129838932645" forKeyedSubscript:@"identifier"];
      v13 = @"http://is5.mzstatic.com/image/thumb/mkwRWC6j4lvL-OtJ2SficQ/258x258.png";
      goto LABEL_13;
    case 3:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Nike" forKeyedSubscript:@"name"];
      [v1 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Francisco" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"75" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"150" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56D8 forKeyedSubscript:@"weight"];
      [v1 setObject:@"Nike Welcome Offer" forKeyedSubscript:@"promotionName"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v2 setObject:@"shopping.sportgoods.sportswear" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media1.fl.yelpcdn.com/bphoto/PKY8lr10v6UM2xkFDvJLeA/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"13850976901029022184" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6F10 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6F20 forKeyedSubscript:@"locationLongitude"];
      v10 = @"Nike";
      [v2 setObject:@"Nike" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 392-6453" forKeyedSubscript:@"phoneNumber"];
      v11 = @"https://www.nike.com/us/en_us/retail/en/nike-san-francisco";
      [v2 setObject:@"https://www.nike.com/us/en_us/retail/en/nike-san-francisco" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v12 setObject:@"shopping.sportgoods.sportswear" forKeyedSubscript:@"detailedCategory"];
      [v12 setObject:@"18052478740434780013" forKeyedSubscript:@"identifier"];
      v13 = @"http://is4.mzstatic.com/image/thumb/uiZuRrog_gNY3v3gBe5lng/258x258.png";
LABEL_13:
      [v12 setObject:v13 forKeyedSubscript:@"logoURL"];
      [v12 setObject:v10 forKeyedSubscript:@"name"];
      [v12 setObject:v11 forKeyedSubscript:@"url"];
      [v1 setObject:v12 forKeyedSubscript:@"brand"];

      goto LABEL_29;
    case 4:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = @"Apple";
      [v1 setObject:@"Apple" forKeyedSubscript:@"name"];
      [v1 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"Cupertino" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"appleProperty" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"500" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"2000" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v2 setObject:@"https://s3-media2.fl.yelpcdn.com/bphoto/WUo5Cci0WPeoxVcfXCss1A/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"1958998683143492575" forKeyedSubscript:@"identifier"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:&unk_1F23B6F30 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6F40 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"+1 (408) 551-2150" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"Apple Store" forKeyedSubscript:@"name"];
      [v2 setObject:@"http://www.apple.com" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v6 setObject:@"shopping.electronics" forKeyedSubscript:@"detailedCategory"];
      [v6 setObject:@"9300435704289333803" forKeyedSubscript:@"identifier"];
      v7 = @"http://is4.mzstatic.com/image/thumb/K49ahzkGx-YwYXtz5aTCmg/258x258.png";
      goto LABEL_7;
    case 5:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Emerald Hills Golfland" forKeyedSubscript:@"name"];
      [v1 setObject:@"fun" forKeyedSubscript:@"category"];
      [v1 setObject:@"physical" forKeyedSubscript:@"source"];
      [v1 setObject:@"Emerald Hills" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"other" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"30" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"64" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B5708 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fun" forKeyedSubscript:@"category"];
      [v2 setObject:@"active.mini_golf" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media4.fl.yelpcdn.com/bphoto/bGurp77hGWMUuf6n6fFy3Q/ls.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"13841128588646925096" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6F70 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6F80 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Emerald Hills Golfland" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (408) 225-1533" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"https://www.golfland.com" forKeyedSubscript:@"url"];
      v14 = @"merchant";
      goto LABEL_19;
    case 6:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Office Depot" forKeyedSubscript:@"name"];
      [v1 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Jose" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"60" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"200" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56F0 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v2 setObject:@"shopping.officeequipment" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media1.fl.yelpcdn.com/bphoto/wIBZ8Ey6BrdSGLWk9kUzcQ/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"13177365867137550586" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6F50 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6F60 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Office Depot" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 978-1129" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"http://www.officedepot.com/" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v3 setObject:@"shopping.officeequipment" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"641873487358131409" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"Office Depot" forKeyedSubscript:@"name"];
      [v3 setObject:@"https://www.officedepot.com" forKeyedSubscript:@"url"];
      v4 = @"https://is1-ssl.mzstatic.com/image/thumb/Purple123/v4/42/10/b3/4210b318-44f3-d1cd-8a3e-818564739479/AppIcon-0-1x_U007emarketing-0-0-85-220-0-5.png/258x258.png";
      goto LABEL_27;
    case 7:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Pinkberry" forKeyedSubscript:@"name"];
      [v1 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Jose" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"6" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"30" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v2 setObject:@"food.icecream" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media2.fl.yelpcdn.com/bphoto/U5J9IBnR5Wy92f0-clFMtA/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"16323079565812879485" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6F90 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6FA0 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Pinkberry" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 979-0566" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"http://www.pinkberry.com/store-detail/?id=150" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v3 setObject:@"food.icecream" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"9233233224678842766" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"Pinkberry" forKeyedSubscript:@"name"];
      [v3 setObject:@"https://is2-ssl.mzstatic.com/image/thumb/Purple128/v4/73/d5/2e/73d52ea3-56b6-4434-19f4-742bd56e7c96/AppIcon-1x_U007emarketing-85-220-0-4.png/258x258.png" forKeyedSubscript:@"logoURL"];
      v4 = @"https://www.pinkberry.com";
      goto LABEL_21;
    case 8:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Walgreens" forKeyedSubscript:@"name"];
      [v1 setObject:@"health" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"Cupertino" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"9" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"77" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B5690 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"health" forKeyedSubscript:@"category"];
      [v2 setObject:@"health.pharmacy" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media3.fl.yelpcdn.com/bphoto/J_Agicvd7XNALYMgCrIz3g/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"2409139575249846953" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6FB0 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6FC0 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Walgreens" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (408) 973-8402" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"https://www.walgreens.com/locator/Walgreens-20011+BOLLINGER+RD-CUPERTINO-CA-95014/id=4416" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"health" forKeyedSubscript:@"category"];
      [v3 setObject:@"health.pharmacy" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"8800788010572972211" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"Walgreens" forKeyedSubscript:@"name"];
      [v3 setObject:@"https://www.walgreens.com" forKeyedSubscript:@"url"];
      v4 = @"https://is5-ssl.mzstatic.com/image/thumb/Purple123/v4/39/ef/d6/39efd6c3-635a-7fe1-a76a-f0d56f8c5177/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-10.png/258x258.png";
LABEL_27:
      v16 = @"logoURL";
      v15 = v3;
      goto LABEL_28;
    case 9:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Pizza My Heart" forKeyedSubscript:@"name"];
      [v1 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v1 setObject:@"physical" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Jose" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"other" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"10" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"40" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v2 setObject:@"restaurants.pizza" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media1.fl.yelpcdn.com/bphoto/SvLGvBzWQWhoU4kCEcV8SA/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"3549532470965725063" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6FD0 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B6FE0 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Pizza My Heart" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (408) 238-6000" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"http://www.pizzamyheart.com" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v3 setObject:@"restaurants.pizza" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"16865611693206952470" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"Pizza My Heart" forKeyedSubscript:@"name"];
      v4 = @"https://www.pizzamyheart.com";
      goto LABEL_21;
    case 10:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Century Theaters" forKeyedSubscript:@"name"];
      [v1 setObject:@"fun" forKeyedSubscript:@"category"];
      [v1 setObject:@"physical" forKeyedSubscript:@"source"];
      [v1 setObject:@"Mountain View" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"other" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"10" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"65" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fun" forKeyedSubscript:@"category"];
      [v2 setObject:@"arts.movietheaters" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media2.fl.yelpcdn.com/bphoto/kBRUvU83ge7wJ9h58j8heg/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"1698195371786223970" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B6FF0 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B7000 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Century Cinema 16" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (650) 961-3828" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"https://www.cinemark.com/california-bay-area/century-cinema-16#theatreInfo" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:@"fun" forKeyedSubscript:@"category"];
      [v6 setObject:@"arts.movietheaters" forKeyedSubscript:@"detailedCategory"];
      [v6 setObject:@"2148123788736123850" forKeyedSubscript:@"identifier"];
      [v6 setObject:@"Cinemark" forKeyedSubscript:@"name"];
      [v6 setObject:@"https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/dd/3c/04/dd3c047c-fe85-6b79-441b-73bbf107b09d/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/258x258.png" forKeyedSubscript:@"logoURL"];
      v9 = @"http://www.cinemark.com";
      goto LABEL_25;
    case 11:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Uber" forKeyedSubscript:@"name"];
      [v1 setObject:@"transport" forKeyedSubscript:@"category"];
      [v1 setObject:@"inApp" forKeyedSubscript:@"source"];
      [v1 setObject:@"appleProperty" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"10" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"130" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56C0 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"transport" forKeyedSubscript:@"category"];
      [v2 setObject:@"hotelstravel.transport.taxis" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"5687913007838781136" forKeyedSubscript:@"identifier"];
      [v2 setObject:@"http://is3.mzstatic.com/image/thumb/tNsnko4LBpi_ggPTUMaYHA/258x258.png" forKeyedSubscript:@"logoURL"];
      [v2 setObject:@"Uber" forKeyedSubscript:@"name"];
      v8 = @"https://www.uber.com";
      goto LABEL_17;
    case 12:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Target" forKeyedSubscript:@"name"];
      [v1 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Francisco" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"80" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"300" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v2 setObject:@"shopping" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media1.fl.yelpcdn.com/bphoto/LJZSfXfjUiUePmmV_vimow/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"6109895895934163460" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B7010 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B7020 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Target" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 343-6272" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"http://www.target.com/sl/san-francisco-central/2766" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:@"shopping" forKeyedSubscript:@"category"];
      [v6 setObject:@"shopping" forKeyedSubscript:@"detailedCategory"];
      [v6 setObject:@"13819248678283629176" forKeyedSubscript:@"identifier"];
      [v6 setObject:@"Target" forKeyedSubscript:@"name"];
      [v6 setObject:@"http://is3.mzstatic.com/image/thumb/tvs32psbmkjVzpHV329qiA/258x258.png" forKeyedSubscript:@"logoURL"];
      v9 = @"https://www.target.com";
      goto LABEL_25;
    case 13:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"CVS Pharmacy" forKeyedSubscript:@"name"];
      [v1 setObject:@"health" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Francisco" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"2" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"25" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56A8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"health" forKeyedSubscript:@"category"];
      [v2 setObject:@"health.pharmacy" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media4.fl.yelpcdn.com/bphoto/Y2Pi_hsmiyoo8zKSe5Klqw/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"1580462163505354756" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B7030 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B7040 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"CVS Pharmacy" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 777-1654" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"https://www.cvs.com/store-locator/cvs-pharmacy-address/map/581+Market+Street-San+Francisco-CA-94105/storeid=10035" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"health" forKeyedSubscript:@"category"];
      [v3 setObject:@"health.pharmacy" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"4281817736107171455" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"http://is3.mzstatic.com/image/thumb/jn4Z3GeMK1r3fMOJW0ef0Q/258x258.png" forKeyedSubscript:@"logoURL"];
      [v3 setObject:@"CVS Pharmacy" forKeyedSubscript:@"name"];
      v4 = @"https://www.cvs.com";
      goto LABEL_21;
    case 14:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Starbucks" forKeyedSubscript:@"name"];
      [v1 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Francisco" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"6" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"25" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B5690 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v2 setObject:@"food.coffee" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"https://s3-media3.fl.yelpcdn.com/bphoto/kvPAZ4exiLtlrIoErd6pgg/o.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:@"1914599672845470212" forKeyedSubscript:@"identifier"];
      [v2 setObject:&unk_1F23B7050 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B7060 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"Starbucks" forKeyedSubscript:@"name"];
      [v2 setObject:@"+1 (415) 677-4493" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"https://www.starbucks.com/store-locator/store/13347/4th-market-s-f-780-market-street-san-francisco-ca-941022514-us" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v3 setObject:@"food.coffee" forKeyedSubscript:@"detailedCategory"];
      [v3 setObject:@"3856448028047449189" forKeyedSubscript:@"identifier"];
      [v3 setObject:@"Starbucks" forKeyedSubscript:@"name"];
      [v3 setObject:@"http://is2.mzstatic.com/image/thumb/d0QFCu6-S6Ob689quo6-ZQ/258x258.png" forKeyedSubscript:@"logoURL"];
      v4 = @"https://www.starbucks.com";
LABEL_21:
      v15 = v3;
      v16 = @"url";
LABEL_28:
      [v15 setObject:v4 forKeyedSubscript:v16];
      [v1 setObject:v3 forKeyedSubscript:@"brand"];

      goto LABEL_29;
    case 15:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Apple Services" forKeyedSubscript:@"name"];
      [v1 setObject:@"fun" forKeyedSubscript:@"category"];
      [v1 setObject:@"inApp" forKeyedSubscript:@"source"];
      [v1 setObject:@"appleProperty" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"6.93" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"14.99" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56C0 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fun" forKeyedSubscript:@"category"];
      [v2 setObject:@"arts" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"16845198511709503341" forKeyedSubscript:@"identifier"];
      [v2 setObject:@"https://is3-ssl.mzstatic.com/image/thumb/K49ahzkGx-YwYXtz5aTCmg/258x258.png" forKeyedSubscript:@"logoURL"];
      [v2 setObject:@"Apple Services" forKeyedSubscript:@"name"];
      v8 = @"https://www.apple.com";
      goto LABEL_17;
    case 16:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = @"Safeway";
      [v1 setObject:@"Safeway" forKeyedSubscript:@"name"];
      [v1 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v1 setObject:@"contactless" forKeyedSubscript:@"source"];
      [v1 setObject:@"San Francisco" forKeyedSubscript:@"city"];
      [v1 setObject:@"CA" forKeyedSubscript:@"state"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"40" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"120" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56D8 forKeyedSubscript:@"weight"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v2 setObject:@"https://s3-media2.fl.yelpcdn.com/bphoto/nxjPpnOIgeiY4dz3gFIs3Q/ls.jpg" forKeyedSubscript:@"heroImageURL"];
      [v2 setObject:@"6657540014897774705" forKeyedSubscript:@"identifier"];
      [v2 setObject:@"Yelp" forKeyedSubscript:@"heroImageProvider"];
      [v2 setObject:&unk_1F23B7070 forKeyedSubscript:@"locationLatitude"];
      [v2 setObject:&unk_1F23B7080 forKeyedSubscript:@"locationLongitude"];
      [v2 setObject:@"+1 (415) 861-7660" forKeyedSubscript:@"phoneNumber"];
      [v2 setObject:@"Safeway" forKeyedSubscript:@"name"];
      [v2 setObject:@"https://local.safeway.com/safeway/ca/san-francisco/2020-market-st.html" forKeyedSubscript:@"url"];
      [v1 setObject:v2 forKeyedSubscript:@"merchant"];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:@"fooddrinks" forKeyedSubscript:@"category"];
      [v6 setObject:@"food.grocery" forKeyedSubscript:@"detailedCategory"];
      [v6 setObject:@"7225859074585575614" forKeyedSubscript:@"identifier"];
      v7 = @"http://is3.mzstatic.com/image/thumb/I7FQ1qzEyzGdT4fXopFtqg/258x258.png";
LABEL_7:
      [v6 setObject:v7 forKeyedSubscript:@"logoURL"];
      [v6 setObject:v5 forKeyedSubscript:@"name"];
      [v6 setObject:@"+1 (800) 692-7753" forKeyedSubscript:@"phoneNumber"];
      v9 = @"https://www.apple.com";
LABEL_25:
      [v6 setObject:v9 forKeyedSubscript:@"url"];
      [v1 setObject:v6 forKeyedSubscript:@"brand"];

      goto LABEL_29;
    case 17:
      v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v1 setObject:@"Netflix" forKeyedSubscript:@"name"];
      [v1 setObject:@"fun" forKeyedSubscript:@"category"];
      [v1 setObject:@"inApp" forKeyedSubscript:@"source"];
      [v1 setObject:@"applePay" forKeyedSubscript:@"rewardsType"];
      [v1 setObject:@"14.99" forKeyedSubscript:@"minAmount"];
      [v1 setObject:@"14.99" forKeyedSubscript:@"maxAmount"];
      [v1 setObject:&unk_1F23B56C0 forKeyedSubscript:@"weight"];
      [v1 setObject:@"b9a617c9-67e7-4e9b-8176-839700ec85b0" forKeyedSubscript:@"panIdentifier"];
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v2 setObject:@"fun" forKeyedSubscript:@"category"];
      [v2 setObject:@"arts" forKeyedSubscript:@"detailedCategory"];
      [v2 setObject:@"16845198511709503342" forKeyedSubscript:@"identifier"];
      [v2 setObject:@"https://is3-ssl.mzstatic.com/image/thumb/Purple124/v4/82/04/9e/82049e66-32c2-52a3-8c38-c7ea5ca8a676/AppIcon-1x_U007emarketing-0-10-0-0-85-220-0.png/258x258.png" forKeyedSubscript:@"logoURL"];
      [v2 setObject:@"Netflix" forKeyedSubscript:@"name"];
      v8 = @"https://www.netflix.com";
LABEL_17:
      [v2 setObject:v8 forKeyedSubscript:@"url"];
      v14 = @"brand";
LABEL_19:
      [v1 setObject:v2 forKeyedSubscript:v14];
LABEL_29:

      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

id _demoPersonToDictionary(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = v2;
  if (a1 <= 9)
  {
    v4 = off_1E79E0500[a1];
    v5 = off_1E79E0550[a1];
    v6 = off_1E79E05A0[a1];
    v7 = off_1E79E05F0[a1];
    v8 = off_1E79E0640[a1];
    [v2 setObject:v4 forKeyedSubscript:@"counterpartHandle"];
    [v3 setObject:v5 forKeyedSubscript:@"memo"];
    [v3 setObject:v6 forKeyedSubscript:@"type"];
    [v3 setObject:v7 forKeyedSubscript:@"minAmount"];
    [v3 setObject:v8 forKeyedSubscript:@"maxAmount"];
  }

  return v3;
}

id _demoTransactionArrayForItemIdentifier(void *a1, int a2)
{
  v74 = a1;
  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [MEMORY[0x1E695DF00] date];
  v64 = [MEMORY[0x1E695DEE8] currentCalendar];
  v65 = v2;
  v60 = [v64 components:112 fromDate:v2];
  v3 = [v60 day];
  v70 = 0;
  for (i = 0; i != 18; ++i)
  {
    v5 = _weightForMerchant(i);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AB90] notANumber];
      v7 = [v5 isEqual:v6];

      if ((v7 & 1) == 0)
      {
        v70 += [v5 integerValue];
      }
    }
  }

  v8 = 0;
  v9 = (v3 * 1.5);
  if (v9 <= 2)
  {
    v9 = 2;
  }

  if (v3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3;
  }

  v61 = v9 - 1;
  v62 = v10;
  do
  {
    v11 = arc4random();
    v13 = v61;
    v12 = v62;
    if (v8)
    {
      v12 = 30;
      v13 = 39;
    }

    v14 = v11 % v13 + v12;
    v15 = (v14 * 0.75);
    v66 = v14;
    if (!a2)
    {
      v15 = v14;
    }

    v71 = v15;
    v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v16 setMonth:-v8];
    v68 = v16;
    v17 = [v64 dateByAddingComponents:v16 toDate:v65 options:0];
    v76 = PKStartOfMonth(v17);
    v69 = v8;
    v67 = v17;
    if (v8)
    {
      v18 = PKEndOfMonth(v17);
    }

    else
    {
      v18 = v17;
    }

    v75 = v18;
    if (v71)
    {
      for (j = 0; j != v71; ++j)
      {
        v20 = 0;
        v21 = arc4random() % v70;
        while (1)
        {
          v22 = _weightForMerchant(v20);
          v23 = [v22 integerValue];

          v24 = v21 < v23;
          v21 -= v23;
          if (v24)
          {
            break;
          }

          if (++v20 == 18)
          {
            goto LABEL_26;
          }
        }

        if (v20)
        {
          goto LABEL_27;
        }

LABEL_26:
        v20 = arc4random() % 0x12;
LABEL_27:
        v25 = PKDemoMerchantToString(v20);
        v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v26 setObject:v74 forKeyedSubscript:@"itemIdentifier"];
        [v26 setObject:v25 forKeyedSubscript:@"merchantIdentifier"];
        v27 = _demoMerchantToDictionary(v20);
        v28 = [v27 objectForKey:@"minAmount"];
        v29 = [v27 objectForKey:@"maxAmount"];
        if ([v28 length] && objc_msgSend(v29, "length"))
        {
          [v28 floatValue];
          v31 = v30;
          [v29 floatValue];
          v33 = v32;
          v34 = v31;
        }

        else
        {
          v33 = 500.0;
          v34 = 5.0;
        }

        v35 = _randomAmount(v34, v33);
        v36 = [v35 stringValue];
        [v26 setObject:v36 forKeyedSubscript:@"amount"];

        [v26 setObject:@"USD" forKeyedSubscript:@"currencyCode"];
        [v26 setObject:@"USD" forKeyedSubscript:@"source"];
        v37 = _dateFormatter();
        v38 = _randomDateBetweenDates(v76, v75);
        v39 = [v37 stringFromDate:v38];
        [v26 setObject:v39 forKeyedSubscript:@"date"];

        [v73 addObject:v26];
      }
    }

    v72 = v66 - v71;
    if (v72 >= 1)
    {
      for (k = 0; k < v72; ++k)
      {
        v41 = arc4random();
        v42 = PKDemoPersonToString(v41 % 0xA);
        v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v43 setObject:v74 forKeyedSubscript:@"itemIdentifier"];
        [v43 setObject:v42 forKeyedSubscript:@"counterpartIdentifier"];
        v44 = v42;
        if ([@"JonHerlihy" isEqualToString:v44])
        {
          v45 = 0;
        }

        else if ([@"KatieAbeles" isEqualToString:v44])
        {
          v45 = 1;
        }

        else if ([@"NancyNi" isEqualToString:v44])
        {
          v45 = 2;
        }

        else if ([@"BrianCarey" isEqualToString:v44])
        {
          v45 = 3;
        }

        else if ([@"RobertFabian" isEqualToString:v44])
        {
          v45 = 4;
        }

        else if ([@"RobynGlennon" isEqualToString:v44])
        {
          v45 = 5;
        }

        else if ([@"DaveKnox" isEqualToString:v44])
        {
          v45 = 6;
        }

        else if ([@"MelissaHouse" isEqualToString:v44])
        {
          v45 = 7;
        }

        else if ([@"LillySevilla" isEqualToString:v44])
        {
          v45 = 8;
        }

        else if ([@"GrayMcCarty" isEqualToString:v44])
        {
          v45 = 9;
        }

        else
        {
          v45 = 0;
        }

        v46 = _demoPersonToDictionary(v45);
        v47 = [v46 objectForKey:@"minAmount"];
        v48 = [v46 objectForKey:@"maxAmount"];
        if ([v47 length] && objc_msgSend(v48, "length"))
        {
          [v47 floatValue];
          v50 = v49;
          [v48 floatValue];
          v52 = v51;
          v53 = v50;
        }

        else
        {
          v52 = 500.0;
          v53 = 5.0;
        }

        v54 = _randomAmount(v53, v52);
        v55 = [v54 stringValue];
        [v43 setObject:v55 forKeyedSubscript:@"amount"];

        [v43 setObject:@"USD" forKeyedSubscript:@"currencyCode"];
        v56 = _dateFormatter();
        v57 = _randomDateBetweenDates(v76, v75);
        v58 = [v56 stringFromDate:v57];
        [v43 setObject:v58 forKeyedSubscript:@"date"];

        [v73 addObject:v43];
      }
    }

    v8 = v69 + 1;
  }

  while (v69 != 2);

  return v73;
}

PKMerchant *_merchantFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"brand"];
  v3 = [v1 objectForKeyedSubscript:@"merchant"];
  v4 = [v1 objectForKeyedSubscript:@"name"];
  v35 = [v1 objectForKeyedSubscript:@"city"];
  v34 = [v1 objectForKeyedSubscript:@"state"];

  v5 = [v3 objectForKey:@"identifier"];
  v6 = [v3 objectForKeyedSubscript:@"category"];
  v29 = PKMerchantCategoryFromString(v6);

  v7 = [v3 objectForKey:@"phoneNumber"];
  v8 = [v3 objectForKey:@"merchantURL"];
  v44 = [v3 objectForKey:@"locationLatitude"];
  v43 = [v3 objectForKey:@"locationLongitude"];
  v42 = [v3 objectForKey:@"detailedCategory"];
  v41 = [v3 objectForKey:@"heroImageURL"];
  v36 = [v3 objectForKey:@"heroImageProvider"];
  v40 = [v3 objectForKey:@"name"];
  v45 = [v2 objectForKey:@"identifier"];
  v9 = [v2 objectForKey:@"category"];
  v30 = PKMerchantCategoryFromString(v9);

  v39 = [v2 objectForKey:@"detailedCategory"];
  v38 = [v2 objectForKey:@"logoURL"];
  v37 = [v2 objectForKey:@"url"];
  v31 = v2;
  v32 = [v2 objectForKey:@"name"];
  if (v5)
  {
    v10 = objc_alloc_init(PKMapsMerchant);
    v11 = [MEMORY[0x1E696AB90] decimalNumberWithString:v5];
    -[PKMapsMerchant setIdentifier:](v10, "setIdentifier:", [v11 unsignedIntegerValue]);

    [(PKMapsMerchant *)v10 setPhoneNumber:v7];
    v12 = v7;
    if (v8)
    {
      v13 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      [(PKMapsMerchant *)v10 setURL:v13];
    }

    if (v44 && v43)
    {
      v14 = objc_alloc(MEMORY[0x1E6985C40]);
      [v44 doubleValue];
      v16 = v15;
      [v43 doubleValue];
      v18 = [v14 initWithLatitude:v16 longitude:v17];
      [(PKMapsMerchant *)v10 setLocation:v18];
    }

    [(PKMapsMerchant *)v10 setCategory:v29, v29];
    [(PKMapsMerchant *)v10 setDetailedCategory:v42];
    if (v41)
    {
      v19 = [MEMORY[0x1E695DFF8] URLWithString:v41];
      [(PKMapsMerchant *)v10 setHeroImageURL:v19];

      [(PKMapsMerchant *)v10 setHeroImageAttributionName:v36];
    }

    [(PKMapsMerchant *)v10 setName:v40];
  }

  else
  {
    v10 = 0;
    v12 = v7;
  }

  v33 = v8;
  if (v45)
  {
    v20 = objc_alloc_init(PKMapsBrand);
    v21 = [MEMORY[0x1E696AB90] decimalNumberWithString:v45];
    -[PKMapsBrand setIdentifier:](v20, "setIdentifier:", [v21 unsignedIntegerValue]);

    if (v37)
    {
      v22 = [MEMORY[0x1E695DFF8] URLWithString:?];
      [(PKMapsBrand *)v20 setURL:v22];
    }

    [(PKMapsBrand *)v20 setCategory:v30, v29];
    [(PKMapsBrand *)v20 setDetailedCategory:v39];
    if (v38)
    {
      v23 = [MEMORY[0x1E695DFF8] URLWithString:?];
      [(PKMapsBrand *)v20 setLogoURL:v23];
    }

    v24 = v12;
    v25 = v5;
    v26 = v32;
    [(PKMapsBrand *)v20 setName:v32];
  }

  else
  {
    v24 = v12;
    v25 = v5;
    v20 = 0;
    v26 = v32;
  }

  v27 = objc_alloc_init(PKMerchant);
  [(PKMerchant *)v27 setName:v4];
  [(PKMerchant *)v27 setRawName:v4];
  [(PKMerchant *)v27 setMapsMerchant:v10];
  [(PKMerchant *)v27 setMapsBrand:v20];
  [(PKMerchant *)v27 setCity:v35];
  [(PKMerchant *)v27 setState:v34];

  return v27;
}

id _randomAmount(float a1, float a2)
{
  *&v2 = a1 + (vcvts_n_f32_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * (a2 - a1));
  v3 = MEMORY[0x1E696AB90];
  v4 = [MEMORY[0x1E696AB90] numberWithFloat:v2];
  v5 = v4;
  if (v4)
  {
    [v4 decimalValue];
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
  }

  v6 = [v3 decimalNumberWithDecimal:v11];

  v7 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v8 = [v6 decimalNumberByRoundingAccordingToBehavior:v7];

  v9 = [v8 pk_absoluteValue];

  return v9;
}

id _dateFormatter()
{
  if (qword_1ED6D20D8 != -1)
  {
    dispatch_once(&qword_1ED6D20D8, &__block_literal_global_201);
  }

  v1 = _MergedGlobals_269;

  return v1;
}

PKPaymentTransaction *_commonTransactionForAmount(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(PKPaymentTransaction);
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  [(PKPaymentTransaction *)v11 setIdentifier:v13];

  [(PKPaymentTransaction *)v11 setAmount:v10];
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = @"USD";
  }

  [(PKPaymentTransaction *)v11 setCurrencyCode:v14];

  [(PKPaymentTransaction *)v11 setTransactionDate:v8];
  v15 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v8 sinceDate:20.0];

  [(PKPaymentTransaction *)v11 setTransactionStatusChangedDate:v15];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0000000000000000%016d", arc4random_uniform(v16)];
  [(PKPaymentTransaction *)v11 setPaymentHash:v17];

  [(PKPaymentTransaction *)v11 setTransactionStatus:1];
  [(PKPaymentTransaction *)v11 setHasNotificationServiceData:1];
  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = [v18 UUIDString];
  [(PKPaymentTransaction *)v11 setServiceIdentifier:v19];

  [(PKPaymentTransaction *)v11 setProcessedForLocation:1];
  [(PKPaymentTransaction *)v11 setProcessedForStations:1];
  [(PKPaymentTransaction *)v11 setProcessedForMerchantCleanup:1];
  v20 = [v7 accountType];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = 2;
  }

  [(PKPaymentTransaction *)v11 setAccountType:v21];
  [(PKPaymentTransaction *)v11 setOriginatedByDevice:1];
  [(PKPaymentTransaction *)v11 setTechnologyType:2];
  v22 = [v7 accountIdentifier];
  [(PKPaymentTransaction *)v11 setAccountIdentifier:v22];

  [(PKPaymentTransaction *)v11 addUpdateReasons:64];
  v23 = [v7 transactionSourceIdentifier];
  [(PKPaymentTransaction *)v11 setTransactionSourceIdentifier:v23];

  v24 = [v7 altDSID];

  [(PKPaymentTransaction *)v11 setAltDSID:v24];

  return v11;
}

void _updateTransactionWithCounterpartData(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v8 = [v3 objectForKeyedSubscript:@"counterpartHandle"];
    v5 = [v3 objectForKeyedSubscript:@"memo"];
    v6 = [v3 objectForKeyedSubscript:@"type"];

    v7 = PKPaymentTransactionPeerPaymentSubtypeFromString(v6);
    [v4 setTransactionType:3];
    [v4 setPeerPaymentType:v7];
    [v4 setPeerPaymentStatus:1];
    [v4 setPeerPaymentMemo:v5];
    [v4 setPeerPaymentCounterpartHandle:v8];
  }
}

void _updateTransactionWithMerchantData(void *a1, void *a2, void *a3, void *a4, PKAccountEvent **a5)
{
  v69 = a1;
  v9 = a2;
  v10 = a4;
  v11 = a3;
  v12 = [v9 objectForKey:@"source"];
  v13 = PKPaymentTransactionSourceFromString(v12);

  [v69 setTransactionSource:v13];
  [v69 setTransactionType:0];
  v14 = [v11 city];
  [v69 setLocality:v14];

  v15 = [v11 state];
  [v69 setAdministrativeArea:v15];

  [v69 setMerchant:v11];
  v16 = [v9 objectForKeyedSubscript:@"panIdentifier"];
  [v69 setPANIdentifier:v16];

  v17 = [v9 objectForKeyedSubscript:@"rewardsType"];
  v18 = PKPaymentTransactionRewardsItemTypeFromString(v17);

  v19 = [v10 accountType];
  v20 = [v10 accountIdentifier];
  if ([v20 length] && v19 == 2)
  {
    [v69 setAccountIdentifier:v20];
    v21 = [v9 objectForKeyedSubscript:@"promotionName"];
    v22 = [v10 redemptionType];
    v23 = v69;
    v24 = v21;
    v25 = 0x1E696A000;
    if (v18)
    {
      v67 = a5;
      v26 = objc_alloc_init(PKPaymentTransactionRewardsItem);
      [(PKPaymentTransactionRewardsItem *)v26 setType:v18];
      v27 = [MEMORY[0x1E696AB90] zero];
      v28 = v27;
      v65 = v22;
      v66 = v20;
      if (v18 > 3)
      {
        v29 = v27;
      }

      else
      {
        v29 = [MEMORY[0x1E696AB90] decimalNumberWithString:off_1E79E0690[v18 - 1]];
      }

      v30 = [v23 amount];
      v31 = [v30 decimalNumberByMultiplyingBy:v29];

      v32 = PKCurrencyAmountCreate(v31, &cfstr_Usd.isa, 0);
      [(PKPaymentTransactionRewardsItem *)v26 setCurrencyAmount:v32];

      [(PKPaymentTransactionRewardsItem *)v26 setEligibleValueUnit:1];
      v33 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100"];
      v64 = v29;
      v34 = [v29 decimalNumberByMultiplyingBy:v33];
      [(PKPaymentTransactionRewardsItem *)v26 setEligibleValue:v34];

      v35 = [MEMORY[0x1E696AFB0] UUID];
      v36 = [v35 UUIDString];
      [(PKPaymentTransactionRewardsItem *)v26 setIdentifier:v36];

      [(PKPaymentTransactionRewardsItem *)v26 setState:2];
      v37 = [MEMORY[0x1E695DF70] array];
      [v37 addObject:v26];
      v38 = v31;
      v39 = v38;
      v68 = v24;
      if (v24)
      {
        v40 = objc_alloc_init(PKPaymentTransactionRewardsItem);
        [(PKPaymentTransactionRewardsItem *)v40 setType:5];
        v41 = [objc_alloc(MEMORY[0x1E696AB90]) initWithInt:75];
        v42 = PKCurrencyAmountCreate(v41, &cfstr_Usd.isa, 0);
        [(PKPaymentTransactionRewardsItem *)v40 setCurrencyAmount:v42];

        [(PKPaymentTransactionRewardsItem *)v40 setEligibleValueUnit:2];
        [(PKPaymentTransactionRewardsItem *)v40 setEligibleValue:v41];
        v43 = [MEMORY[0x1E696AFB0] UUID];
        v44 = [v43 UUIDString];
        [(PKPaymentTransactionRewardsItem *)v40 setIdentifier:v44];

        [(PKPaymentTransactionRewardsItem *)v40 setState:2];
        [(PKPaymentTransactionRewardsItem *)v40 setPromotionName:v68];
        [v37 addObject:v40];
        v39 = [(NSDecimalNumber *)v38 decimalNumberByAdding:v41];
      }

      v45 = objc_alloc_init(PKPaymentTransactionRewards);
      v46 = [v37 copy];
      [(PKPaymentTransactionRewards *)v45 setRewardsItems:v46];

      [v23 setRewards:v45];
      [v23 setRewardsTotalAmount:v39];
      [v23 setRewardsTotalCurrencyCode:@"USD"];
      [v23 setRedemptionType:v65];

      v20 = v66;
      a5 = v67;
      v25 = 0x1E696A000uLL;
      v24 = v68;
    }

    v47 = [v23 rewards];
    if (v47)
    {
      v48 = v47;
      v49 = [v23 redemptionType];

      if (v49)
      {
        v50 = objc_alloc_init(PKAccountEvent);
        v51 = [*(v25 + 4016) UUID];
        v52 = [v51 UUIDString];
        [(PKAccountEvent *)v50 setIdentifier:v52];

        [(PKAccountEvent *)v50 setAccountIdentifier:v20];
        v53 = [v10 altDSID];
        [(PKAccountEvent *)v50 setAltDSID:v53];

        v54 = [v23 transactionDate];
        [(PKAccountEvent *)v50 setDate:v54];

        [(PKAccountEvent *)v50 setType:1];
        v55 = objc_alloc_init(PKAccountRewards);
        v56 = [v23 serviceIdentifier];
        [(PKAccountRewards *)v55 setIdentifier:v56];

        v57 = MEMORY[0x1E695DFD8];
        v58 = [v23 serviceIdentifier];
        v59 = [v57 setWithObject:v58];
        [(PKAccountRewards *)v55 setTransactionIdentifiers:v59];

        [(PKAccountRewards *)v55 setStatus:@"success"];
        v60 = [v23 rewards];
        [(PKAccountRewards *)v55 setRewards:v60];

        -[PKAccountRewards setType:](v55, "setType:", [v23 redemptionType]);
        v61 = [v23 rewardsTotalCurrencyAmount];
        [(PKAccountRewards *)v55 setCurrencyAmount:v61];

        v62 = [MEMORY[0x1E695DFD8] setWithObject:v55];
        [(PKAccountEvent *)v50 setItems:v62];

        if (a5)
        {
          v63 = v50;
          *a5 = v50;
        }
      }
    }
  }
}

id _removeFutureTransactionsFromTransaction(void *a1)
{
  v1 = MEMORY[0x1E695DF00];
  v2 = a1;
  v3 = [v1 date];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___removeFutureTransactionsFromTransaction_block_invoke;
  v7[3] = &unk_1E79DAB88;
  v8 = v3;
  v4 = v3;
  v5 = [v2 pk_objectsPassingTest:v7];

  return v5;
}

BOOL ___removeFutureTransactionsFromTransaction_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transactionDate];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

uint64_t ___dateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_269;
  _MergedGlobals_269 = v0;

  v2 = _MergedGlobals_269;

  return [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mmZZZ"];
}

id _randomDateBetweenDates(void *a1, void *a2)
{
  v3 = a1;
  [a2 timeIntervalSinceDate:v3];
  v5 = [v3 dateByAddingTimeInterval:v4 * (arc4random() / 4294967300.0)];

  return v5;
}

id _weightForMerchant(uint64_t a1)
{
  v1 = _demoMerchantToDictionary(a1);
  v2 = [v1 objectForKeyedSubscript:@"weight"];
  if (!v2 || ([MEMORY[0x1E696AB90] notANumber], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "isEqual:", v3), v3, v4))
  {
    v5 = [MEMORY[0x1E696AB90] zero];

    v2 = v5;
  }

  return v2;
}

uint64_t PKProtobufPaymentApplicationReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v105) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v105 & 0x7F) << v6;
      if ((v105 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_98;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_98;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_98;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_98;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_98;
      case 6u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 152) |= 0x20u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v105 & 0x7F) << v37;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_166;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v39;
        }

LABEL_166:
        v100 = 128;
        goto LABEL_187;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_98;
      case 8u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 152) |= 0x100u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v105 & 0x7F) << v56;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_174;
          }
        }

        v30 = (v58 != 0) & ~[a2 hasError];
LABEL_174:
        v101 = 146;
        goto LABEL_195;
      case 9u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 152) |= 0x200u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v105 & 0x7F) << v75;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_182;
          }
        }

        v30 = (v77 != 0) & ~[a2 hasError];
LABEL_182:
        v101 = 147;
        goto LABEL_195;
      case 0xAu:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 152) |= 8u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v105 & 0x7F) << v69;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_180;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v71;
        }

LABEL_180:
        v100 = 104;
        goto LABEL_187;
      case 0xBu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 152) |= 0x80u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v105 & 0x7F) << v24;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_160;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_160:
        v101 = 145;
        goto LABEL_195;
      case 0xCu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 152) |= 1u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v105 & 0x7F) << v43;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_170;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_170:
        v102 = -(v49 & 1) ^ (v49 >> 1);
        v103 = 8;
        goto LABEL_192;
      case 0xDu:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_98;
      case 0xEu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 152) |= 0x10u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v105 & 0x7F) << v17;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_158;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_158:
        v100 = 108;
        goto LABEL_187;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_98;
      case 0x10u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 152) |= 0x40u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v105 & 0x7F) << v63;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_176;
          }
        }

        v30 = (v65 != 0) & ~[a2 hasError];
LABEL_176:
        v101 = 144;
        goto LABEL_195;
      case 0x11u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 152) |= 2u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v105 & 0x7F) << v87;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v12 = v88++ >= 9;
          if (v12)
          {
            v93 = 0;
            goto LABEL_191;
          }
        }

        if ([a2 hasError])
        {
          v93 = 0;
        }

        else
        {
          v93 = v89;
        }

LABEL_191:
        v102 = -(v93 & 1) ^ (v93 >> 1);
        v103 = 16;
LABEL_192:
        *(a1 + v103) = v102;
        goto LABEL_196;
      case 0x12u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 152) |= 4u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v105 & 0x7F) << v81;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v12 = v82++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_186;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v83;
        }

LABEL_186:
        v100 = 48;
LABEL_187:
        *(a1 + v100) = v23;
        goto LABEL_196;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_98;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 32;
LABEL_98:
        v62 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_196;
      case 0x15u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 152) |= 0x800u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v105 & 0x7F) << v94;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_194;
          }
        }

        v30 = (v96 != 0) & ~[a2 hasError];
LABEL_194:
        v101 = 149;
        goto LABEL_195;
      case 0x17u:
        v16 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
        objc_storeStrong((a1 + 64), v16);
        v105 = 0;
        v106 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufCustomPrecisionAmountReadFrom(v16, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_35;
      case 0x18u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 152) |= 0x1000u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v105 & 0x7F) << v31;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_162;
          }
        }

        v30 = (v33 != 0) & ~[a2 hasError];
LABEL_162:
        v101 = 150;
        goto LABEL_195;
      case 0x19u:
        v16 = objc_alloc_init(PKProtobufNSDecimalNumber);
        objc_storeStrong((a1 + 56), v16);
        v105 = 0;
        v106 = 0;
        if (PBReaderPlaceMark() && PKProtobufNSDecimalNumberReadFrom(v16, a2))
        {
LABEL_35:
          PBReaderRecallMark();

LABEL_196:
          v4 = a2;
          continue;
        }

LABEL_198:

        return 0;
      case 0x1Au:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 152) |= 0x400u;
        while (1)
        {
          LOBYTE(v105) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v105 & 0x7F) << v50;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            LOBYTE(v30) = 0;
            goto LABEL_172;
          }
        }

        v30 = (v52 != 0) & ~[a2 hasError];
LABEL_172:
        v101 = 148;
LABEL_195:
        *(a1 + v101) = v30;
        goto LABEL_196;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_196;
    }
  }
}

__CFString *PKStringFromAccountVirtualCardStatusUpdateReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0700[a1 - 1];
  }
}

uint64_t PKAccountVirtualCardStatusUpdateReasonFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1 == @"expiration")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"expiration"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"fraud" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"fraud"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"stolen" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"stolen"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"other" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"other"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

__CFString *PKPeerPaymentEncryptionCertificateDestinationToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"recipientData";
  }

  else
  {
    return @"unknown";
  }
}

BOOL PKPeerPaymentEncryptionCertificateDestinationFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"recipientData")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"recipientData"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKFeatureApplicationOfferDetailsInfoLayoutToString(uint64_t a1)
{
  v1 = @"text";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"table";
  }

  else
  {
    return v1;
  }
}

uint64_t PKFeatureApplicationStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"new"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"prescreened"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"preapproved"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"open"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"decisioning"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"pending"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"approved"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"declined"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"withdrawn"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"accepted"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"booked"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"rejected"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"expired"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"closed"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"cancelled"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"removed"])
  {
    v2 = 15;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKFeatureApplicationStateToString(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0758[a1 - 1];
  }
}

uint64_t PKFeatureApplicationStateIsPendingInvitation(unint64_t a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  else
  {
    return (a1 != 1) & ((a1 > 0x10) | (0x1017Eu >> a1));
  }
}

uint64_t PKFeatureApplicationStateReasonFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"inProcess"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"manualReview"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"outOfBandIDV"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"factaPhoneMatch"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"factaExtendedAlert"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"creditFreeze"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"duplicateApplication"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"manualIDVReview"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"invitationAcceptance"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"mergePending"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"otherOwnerPendingAcceptance"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"rejectedByOriginator"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"rejectedByAccountUser"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"ineligible"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"pathToOfferCompleted"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"counterOffer"])
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKFeatureApplicationStateReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"none";
  }

  else
  {
    return off_1E79E07D8[a1 - 1];
  }
}

uint64_t PKFeatureApplicationTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"primary")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_22:
    v4 = v2 == 0;
    goto LABEL_23;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"primary"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"accountUser" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"accountUser"], v6, (v7 & 1) != 0) || (v8 = v6, v8 == @"invite") || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"invite"], v9, (v10 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_23;
    }

    v11 = v9;
    if (v11 == @"joint" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"joint"], v12, (v13 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_23;
    }

    v14 = v12;
    if (v14 == @"updateUserInfo" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"updateUserInfo"], v15, (v16 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_23;
    }

    v17 = v15;
    if (v17 == @"fccStepUp" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"fccStepUp"], v18, (v19 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_23;
    }

    v20 = v18;
    if (v20 == @"verification" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"verification"], v21, (v22 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_4:
  v4 = 1;
LABEL_23:

  return v4;
}

__CFString *PKFeatureApplicationTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0858[a1 - 1];
  }
}

__CFString *PKFeatureApplicationChannelToString(uint64_t a1)
{
  v1 = @"paymentSheet";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"wallet";
  }

  else
  {
    return v1;
  }
}

uint64_t PKFeatureApplicationChannelFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"wallet")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"wallet"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"paymentSheet" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"paymentSheet"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKFeatureApplicationUpdateUserInfoSubTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"updatePhoneNumber")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"updatePhoneNumber"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"updateAddress" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"updateAddress"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"updateIncome" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"updateIncome"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"addBeneficiary" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"addBeneficiary"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

__CFString *PKFeatureApplicationUpdateUserInfoSubTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0888[a1 - 1];
  }
}

BOOL PKFeatureApplicationAssociatedIntentFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"changeRewardsDestination")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"changeRewardsDestination"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKFeatureApplicationAssociatedIntentToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"changeRewardsDestination";
  }

  else
  {
    return @"unknown";
  }
}

uint64_t PKProtobufRecurringPaymentRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v20[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20[0] & 0x7F) << v5;
        if ((v20[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 8;
LABEL_35:
            v14 = *(a1 + v17);
            *(a1 + v17) = v16;
            goto LABEL_36;
          case 5:
            v16 = PBReaderReadString();
            v17 = 16;
            goto LABEL_35;
          case 6:
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 24;
            goto LABEL_35;
          case 2:
            v14 = objc_alloc_init(PKProtobufPaymentSummaryItem);
            v15 = 32;
            goto LABEL_31;
          case 3:
            v14 = objc_alloc_init(PKProtobufPaymentSummaryItem);
            v15 = 48;
LABEL_31:
            objc_storeStrong((a1 + v15), v14);
            v20[0] = 0;
            v20[1] = 0;
            if (!PBReaderPlaceMark() || !PKProtobufPaymentSummaryItemReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
LABEL_36:

            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PKPaymentTransactionTagTypeToLocalizedString(uint64_t a1)
{
  v3 = a1 - 1;
  if (a1 - 1) <= 0x12 && ((0x607FFu >> v3))
  {
    v4 = PKLocalizedString(&off_1E79E0A08[v3]->isa, 0, v1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKPaymentAuthorizationHostInterface()
{
  if (qword_1ED6D2108 != -1)
  {
    dispatch_once(&qword_1ED6D2108, &__block_literal_global_205);
  }

  v1 = _MergedGlobals_272;

  return v1;
}

void __PKPaymentAuthorizationHostInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23DB860];
  v1 = _MergedGlobals_272;
  _MergedGlobals_272 = v0;
}

__CFString *PKExternalDeviceMigrationCardEntryTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0AB8[a1 - 1];
  }
}

uint64_t PKExternalDeviceMigrationCardEntryTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"unknown" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"unknown"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"barcode.coupon" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"barcode.coupon"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"barcode.gift-card" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"barcode.gift-card"], v11, (v12 & 1) != 0))
      {
        v5 = 2;
        goto LABEL_7;
      }

      v13 = v11;
      if (v13 == @"barcode.event-ticket" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"barcode.event-ticket"], v14, (v15 & 1) != 0))
      {
        v5 = 3;
        goto LABEL_7;
      }

      v16 = v14;
      if (v16 == @"barcode.boarding" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"barcode.boarding"], v17, (v18 & 1) != 0))
      {
        v5 = 4;
        goto LABEL_7;
      }

      v19 = v17;
      if (v19 == @"barcode.generic" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"barcode.generic"], v20, (v21 & 1) != 0))
      {
        v5 = 5;
        goto LABEL_7;
      }

      v22 = v20;
      if (v22 == @"secure-element.payment" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"secure-element.payment"], v23, (v24 & 1) != 0))
      {
        v5 = 6;
        goto LABEL_7;
      }

      v25 = v23;
      if (v25 == @"secure-element.access" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"secure-element.access"], v26, (v27 & 1) != 0))
      {
        v5 = 7;
        goto LABEL_7;
      }

      v28 = v26;
      if (v28 == @"secure-element.identity" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"secure-element.identity"], v29, (v30 & 1) != 0))
      {
        v5 = 8;
        goto LABEL_7;
      }

      v31 = v29;
      if (v31 == @"secure-element.transit" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"secure-element.transit"], v32, (v33 & 1) != 0))
      {
        v5 = 9;
        goto LABEL_7;
      }

      v34 = v32;
      if (v34 == @"secure-element.generic" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"secure-element.generic"], v35, v36))
      {
        v5 = 10;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t PKExternalDeviceMigrationCardEntryTypeFromPass(void *a1)
{
  v1 = a1;
  v2 = [v1 passType];
  if (v2 == 1)
  {
    v5 = [v1 secureElementPass];
    v6 = [v5 cardType];

    if ((v6 - 1) >= 4)
    {
      v7 = 10;
      goto LABEL_11;
    }

    v4 = &unk_1ADB9B2A0 + 8 * v6 - 8;
  }

  else
  {
    if (v2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v3 = [v1 style];
    if (v3 >= 0xE)
    {
      v7 = 5;
      goto LABEL_11;
    }

    v4 = &unk_1ADB9B230 + 8 * v3;
  }

  v7 = *v4;
LABEL_11:

  return v7;
}

__CFString *PKPaymentSetupFeatureStateToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0B50[a1];
  }
}

__CFString *PKPaymentSetupFeatureTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0B30[a1];
  }
}

__CFString *PKPassTileForeignReferenceTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"balance";
  }

  else
  {
    return 0;
  }
}

BOOL PKPassTileForeignReferenceTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"balance")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"balance"], v2, v2, (v3 & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_1AD9E4C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9E7D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9EC2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentTransactionRecategorizationEnabled(void *a1)
{
  v1 = a1;
  if (v1 && _os_feature_enabled_impl() && [v1 accountType] == 2)
  {
    v2 = v1;
    v3 = [v2 transactionType];
    v4 = 1;
    if (v3 <= 0x16)
    {
      if (((1 << v3) & 0x7FDFFE) != 0)
      {
        v4 = 0;
      }

      else if (!v3)
      {
        v6 = [v2 transactionStatus];
        if ((v6 + 1) >= 9)
        {
          v4 = 1;
        }

        else
        {
          v4 = 6u >> (v6 + 1);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PKPaymentTransactionCategoryAccessLevel(void *a1)
{
  if (!PKPaymentTransactionRecategorizationEnabled(a1))
  {
    return 0;
  }

  if (PKIsPhone())
  {
    return 7;
  }

  return 1;
}

BOOL PKUserLegalAgreementTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"provisioningTermsCondition")
  {
    if (!v1 || (v3 = [@"provisioningTermsCondition" isEqualToString:v1], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKUserLegalAgreementTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"provisioningTermsCondition";
  }

  else
  {
    return @"unknown";
  }
}

__CFString *PKTransactionSourceTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E0F38[a1];
  }
}

void sub_1AD9F1818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9F2A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9F2B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9F4180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9F4528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *PKXPCForwarderIsInvalidated(void *a1)
{
  result = a1;
  if (result)
  {
    v2 = atomic_load(result + 12);

    return (v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *PKSystemIconConfigurationColorStyleToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"monochrome";
  }

  else
  {
    return off_1E79E10B0[a1];
  }
}

uint64_t PKSystemIconConfigurationColorStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"monochrome")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"monochrome"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 != @"hierarchical")
    {
      v6 = v5;
      v7 = [(__CFString *)v5 isEqualToString:@"hierarchical"];

      if ((v7 & 1) == 0)
      {
        v9 = v6;
        if (v9 == @"palette" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"palette"], v10, (v11 & 1) != 0))
        {
          v4 = 2;
          goto LABEL_8;
        }

        v12 = v10;
        if (v12 == @"multicolor" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"multicolor"], v13, v14))
        {
          v4 = 3;
          goto LABEL_8;
        }
      }
    }

    goto LABEL_7;
  }

LABEL_4:
  v4 = 1;
LABEL_8:

  return v4;
}

__CFString *PKSystemIconConfigurationColorTypeToString(uint64_t a1)
{
  if (a1)
  {
    return @"builtIn";
  }

  else
  {
    return @"hex";
  }
}

uint64_t PKSystemIconConfigurationColorTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"hex")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_7:

    v4 = 1;
    goto LABEL_8;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"hex"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 != @"builtIn")
    {
      [(__CFString *)v5 isEqualToString:@"builtIn"];
    }

    goto LABEL_7;
  }

LABEL_4:
  v4 = 0;
LABEL_8:

  return v4;
}

__CFString *PKSystemIconConfigurationColorBuiltInToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"primary";
  }

  else
  {
    return off_1E79E10D0[a1 - 1];
  }
}

uint64_t PKSystemIconConfigurationColorBuiltInFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"primary" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"primary"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"secondary" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"secondary"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"tertiary" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"tertiary"], v11, (v12 & 1) != 0))
      {
        v5 = 2;
        goto LABEL_7;
      }

      v13 = v11;
      if (v13 == @"quaternary" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"quaternary"], v14, v15))
      {
        v5 = 3;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t PKProtobufPaymentRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v108) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v108 & 0x7F) << v6;
      if ((v108 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_196;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_196;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_196;
      case 4u:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addSupportedNetworks:v16];
        }

        goto LABEL_176;
      case 5u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 264) |= 4u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v108 & 0x7F) << v62;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_222;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v64;
        }

LABEL_222:
        v106 = 112;
        goto LABEL_244;
      case 6u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 264) |= 0x80u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v108 & 0x7F) << v68;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_226;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v70;
        }

LABEL_226:
        v106 = 172;
        goto LABEL_244;
      case 7u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 264) |= 0x100u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v108 & 0x7F) << v86;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_235;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v88;
        }

LABEL_235:
        v106 = 184;
        goto LABEL_244;
      case 8u:
        v14 = PBReaderReadData();
        v15 = 48;
        goto LABEL_196;
      case 9u:
        v14 = PBReaderReadData();
        v15 = 200;
        goto LABEL_196;
      case 0xAu:
        v16 = objc_alloc_init(PKProtobufPaymentSummaryItem);
        [a1 addSummaryItems:v16];
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufPaymentSummaryItemReadFrom(v16, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0xBu:
        v16 = objc_alloc_init(PKProtobufShippingMethod);
        [a1 addShippingMethods:v16];
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufShippingMethodReadFrom(v16, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0xCu:
        v14 = PBReaderReadData();
        v15 = 16;
        goto LABEL_196;
      case 0xDu:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_196;
      case 0xFu:
        v16 = objc_alloc_init(PKProtobufPaymentMerchantSession);
        objc_storeStrong((a1 + 128), v16);
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufPaymentMerchantSessionReadFrom(v16, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0x10u:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addThumbnailURLs:v16];
        }

        goto LABEL_176;
      case 0x11u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 264) |= 0x200u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v108 & 0x7F) << v80;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_230;
          }
        }

        v23 = (v82 != 0) & ~[a2 hasError];
LABEL_230:
        v105 = 256;
        goto LABEL_231;
      case 0x12u:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addRequiredShippingContactFields:v16];
        }

        goto LABEL_176;
      case 0x13u:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addRequiredBillingContactFields:v16];
        }

        goto LABEL_176;
      case 0x14u:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addSupportedCountries:v16];
        }

        goto LABEL_176;
      case 0x15u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 264) |= 1u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v108 & 0x7F) << v50;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_216;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v52;
        }

LABEL_216:
        v106 = 8;
        goto LABEL_244;
      case 0x18u:
        v16 = objc_alloc_init(PKProtobufPaymentContentItem);
        [a1 addContentItems:v16];
        v108 = 0;
        v109 = 0;
        if (PBReaderPlaceMark() && PKProtobufPaymentContentItemReadFrom(v16, a2))
        {
          goto LABEL_175;
        }

        goto LABEL_247;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_196;
      case 0x1Au:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_196;
      case 0x1Bu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 264) |= 0x2000u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v108 & 0x7F) << v44;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_212;
          }
        }

        v23 = (v46 != 0) & ~[a2 hasError];
LABEL_212:
        v105 = 260;
        goto LABEL_231;
      case 0x1Cu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 264) |= 0x800u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v108 & 0x7F) << v74;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_228;
          }
        }

        v23 = (v76 != 0) & ~[a2 hasError];
LABEL_228:
        v105 = 258;
        goto LABEL_231;
      case 0x1Du:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 264) |= 0x20u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v108 & 0x7F) << v31;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_206;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_206:
        v106 = 164;
        goto LABEL_244;
      case 0x1Eu:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 264) |= 2u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v108 & 0x7F) << v98;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_243;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v100;
        }

LABEL_243:
        v106 = 56;
        goto LABEL_244;
      case 0x1Fu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 264) |= 0x10u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v108 & 0x7F) << v92;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_239;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v94;
        }

LABEL_239:
        v106 = 160;
        goto LABEL_244;
      case 0x20u:
        v16 = objc_alloc_init(PKProtobufShippingMethods);
        objc_storeStrong((a1 + 40), v16);
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufShippingMethodsReadFrom(&v16->super.super.isa, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0x21u:
        v16 = objc_alloc_init(PKProtobufRecurringPaymentRequest);
        objc_storeStrong((a1 + 152), v16);
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufRecurringPaymentRequestReadFrom(v16, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0x22u:
        v16 = objc_alloc_init(PKProtobufPaymentTokenContext);
        [a1 addMultiTokenContexts:v16];
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufPaymentTokenContextReadFrom(v16, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0x23u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 264) |= 0x400u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v108 & 0x7F) << v56;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_218;
          }
        }

        v23 = (v58 != 0) & ~[a2 hasError];
LABEL_218:
        v105 = 257;
        goto LABEL_231;
      case 0x24u:
        v16 = objc_alloc_init(PKProtobufAutomaticReloadPaymentRequest);
        objc_storeStrong((a1 + 32), v16);
        v108 = 0;
        v109 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufAutomaticReloadPaymentRequestReadFrom(v16, a2))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      case 0x25u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 264) |= 0x40u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v108 & 0x7F) << v38;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_210;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v40;
        }

LABEL_210:
        v106 = 168;
        goto LABEL_244;
      case 0x26u:
        v16 = objc_alloc_init(PKProtobufDeferredPaymentRequest);
        objc_storeStrong((a1 + 88), v16);
        v108 = 0;
        v109 = 0;
        if (PBReaderPlaceMark() && PKProtobufDeferredPaymentRequestReadFrom(v16, a2))
        {
LABEL_175:
          PBReaderRecallMark();
LABEL_176:

LABEL_245:
          v4 = a2;
          continue;
        }

LABEL_247:

        return 0;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_196;
      case 0x28u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 264) |= 8u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v108 & 0x7F) << v24;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_202;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_202:
        v37 = -(v30 & 1) ^ (v30 >> 1);
        v106 = 116;
LABEL_244:
        *(a1 + v106) = v37;
        goto LABEL_245;
      case 0x29u:
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_196:
        v104 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_245;
      case 0x2Bu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 264) |= 0x1000u;
        while (1)
        {
          LOBYTE(v108) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v108 & 0x7F) << v17;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_198;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_198:
        v105 = 259;
LABEL_231:
        *(a1 + v105) = v23;
        goto LABEL_245;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_245;
    }
  }
}

void sub_1ADA035CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

__CFString *PKACAccountChangeTypeDescription(__CFString *result)
{
  if (!result)
  {
    return @"appleaccount";
  }

  if (result == 1)
  {
    return @"itunesstore";
  }

  __break(1u);
  return result;
}

__CFString *PKACAccountChangeOperationDescription(__CFString *result)
{
  if (result < 4)
  {
    return off_1E79E1348[result];
  }

  __break(1u);
  return result;
}

__CFString *PKACAccountChangeEventDescription(__CFString *result)
{
  if (result < 3)
  {
    return off_1E79E1368[result];
  }

  __break(1u);
  return result;
}

uint64_t PKRemoteImageScaleFactorFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"1x")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [@"1x" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"2x" || (v6 = v5, v7 = [@"2x" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"3x" || (v9 = v8, v10 = [@"3x" isEqualToString:v8], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

double PKRemoteImageDimensionFromValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (([v1 pk_isZeroNumber] & 1) == 0)
    {
      [v2 doubleValue];
      v4 = v5;
      goto LABEL_7;
    }

    *&v3 = 1.79769313e308;
  }

  else
  {
    *&v3 = -1.79769313e308;
  }

  v4 = *&v3;
LABEL_7:

  return v4;
}

CFTypeRef PKPassIconImage(PKImage *a1, double *a2)
{
  v3 = a1;
  if (!v3)
  {
    v4 = PKPassKitCoreBundle();
    v3 = [PKImage imageNamed:@"GenericIcon" inBundle:v4];
  }

  [(PKImage *)v3 scale];
  v6 = v5;
  v7 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  [v7 setScale:v6];
  v8 = IconImageFromImage(v3, v7, a2);

  return v8;
}

CFTypeRef IconImageFromImage(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    v7 = a1;
    v8 = [v7 imageRef];
    [v7 scale];
    v10 = v9;

    v11 = v5;
    v12 = 0;
    if (v11 && v8)
    {
      v13 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v8 scale:v10];
      v14 = objc_alloc(MEMORY[0x1E69A8A00]);
      v20[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v16 = [v14 initWithImages:v15];

      v12 = [v16 CGImageForDescriptor:v11];
      if (a3)
      {
        [v11 scale];
        *a3 = v17;
      }

      if (v12)
      {
        v18 = CFRetain(v12);
        v12 = CFAutorelease(v18);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

CFTypeRef PKPassNotificationIconImage(PKImage *a1, double *a2)
{
  v3 = a1;
  if (!v3)
  {
    v4 = PKPassKitCoreBundle();
    v3 = [PKImage imageNamed:@"GenericIcon" inBundle:v4];
  }

  [(PKImage *)v3 scale];
  v6 = DefaultNotificationIconDescriptor(v5);
  v7 = IconImageFromImage(v3, v6, a2);

  return v7;
}

id DefaultNotificationIconDescriptor(double a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:76.0 scale:{76.0, 2.0}];
  [v2 setScale:a1];

  return v2;
}

CFTypeRef PKPassMailAttachmentIconImage(PKImage *a1, double *a2)
{
  v3 = a1;
  if (!v3)
  {
    v4 = PKPassKitCoreBundle();
    v3 = [PKImage imageNamed:@"GenericIcon" inBundle:v4];
  }

  [(PKImage *)v3 scale];
  v6 = v5;
  if (PKIsPad())
  {
    v7 = @"com.apple.IconServices.ImageDescriptor.LargeHomeScreen";
  }

  else
  {
    v7 = *MEMORY[0x1E69A8A78];
  }

  v8 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v7];
  [v8 setScale:v6];
  v9 = IconImageFromImage(v3, v8, a2);

  return v9;
}

void sub_1ADA0CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADA0FB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADA10E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADA11A5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1ADA16034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ADA16640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v23 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1ADA16DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ADA170C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ADA18AEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t PKProtobufCommonSharingMessageTypeCheckerReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 15)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKPassTileValueTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"text";
  }

  else
  {
    return off_1E79E1910[a1 - 1];
  }
}

uint64_t PKPassTileValueTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"text" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"text"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    if (v5 == @"date" || (v6 = v5, v2) && (v7 = [(__CFString *)v5 isEqualToString:@"date"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 1;
    }

    else
    {
      v8 = v6;
      if (v8 == @"number" || (v9 = v8, v2) && (v10 = [(__CFString *)v8 isEqualToString:@"number"], v9, v9, (v10 & 1) != 0))
      {
        v4 = 2;
      }

      else
      {
        v11 = v9;
        v12 = v11;
        if (v11 == @"foreignReference")
        {
          v4 = 3;
        }

        else
        {
          v4 = 0;
        }

        if (v11 != @"foreignReference" && v2)
        {
          if ([(__CFString *)v11 isEqualToString:@"foreignReference"])
          {
            v4 = 3;
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  return v4;
}

__CFString *PKPaymentTransactionAccountTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1C18[a1];
  }
}

uint64_t PKPaymentTransactionAccountTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"ccs")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"ccs"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"peerpayment" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"peerpayment"], v6, (v7 & 1) != 0))
    {
      v4 = 1;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"savings" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"savings"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"asp" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"asp"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 2;
LABEL_15:

  return v4;
}

uint64_t PKPaymentTransactionAccountTypeFromAccountType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1ADB9B320[a1];
  }
}

uint64_t PKPaymentTransactionTransitSubtypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (![v1 caseInsensitiveCompare:@"metro"])
    {
      v3 = 2;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"metroUpgrade"])
    {
      v3 = 1026;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"lightrail"])
    {
      v3 = 7;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"cableCar"])
    {
      v3 = 8;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"renewal"])
    {
      v3 = 518;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"bus"])
    {
      v3 = 3;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"train"])
    {
      v3 = 4;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"ferry"])
    {
      v3 = 260;
      goto LABEL_44;
    }

    if (![v2 caseInsensitiveCompare:@"transit"])
    {
      v3 = 1;
      goto LABEL_44;
    }

    if ([v2 caseInsensitiveCompare:@"unknown"])
    {
      if (![v2 caseInsensitiveCompare:@"cardRead"])
      {
        v3 = 517;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"deposit"])
      {
        v3 = 513;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"withdrawal"])
      {
        v3 = 516;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"refund"])
      {
        v3 = 514;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"other"])
      {
        v3 = 5;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"special"])
      {
        v3 = 6;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"bike"])
      {
        v3 = 261;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"taxi"])
      {
        v3 = 259;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"maglev"])
      {
        v3 = 258;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"shinkansen"])
      {
        v3 = 257;
        goto LABEL_44;
      }

      if (![v2 caseInsensitiveCompare:@"greenCar"])
      {
        v3 = 1025;
        goto LABEL_44;
      }
    }
  }

  v3 = 0;
LABEL_44:

  return v3;
}

id PKPaymentTransactionTransitSubtypeToLocalizedTitle(uint64_t a1)
{
  v2 = 0;
  if (a1 > 259)
  {
    if (a1 > 515)
    {
      if (a1 <= 517)
      {
        if (a1 == 516)
        {
          v4 = @"TRANSIT_TRANSACTION_TITLE_WITHDRAWAL";
        }

        else
        {
          v4 = @"TRANSIT_TRANSACTION_TITLE_CARD_READ";
        }
      }

      else
      {
        switch(a1)
        {
          case 518:
            v4 = @"TRANSIT_TRANSACTION_TITLE_RENEWAL";
            break;
          case 1025:
            v4 = @"TRANSIT_TRANSACTION_TITLE_GREEN_CAR";
            break;
          case 1026:
            v3 = @"TRANSIT_TRANSACTION_TITLE_METRO_UPGRADE";
            goto LABEL_43;
          default:
            goto LABEL_46;
        }
      }
    }

    else
    {
      if (a1 <= 512)
      {
        if (a1 == 260)
        {
          v3 = @"TRANSIT_TRANSACTION_TITLE_FERRY";
        }

        else
        {
          if (a1 != 261)
          {
            goto LABEL_46;
          }

          v3 = @"TRANSIT_TRANSACTION_TITLE_BIKE";
        }

        goto LABEL_43;
      }

      if (a1 == 513)
      {
        v4 = @"TRANSIT_TRANSACTION_TITLE_DEPOSIT";
      }

      else if (a1 == 514)
      {
        v4 = @"TRANSIT_TRANSACTION_TITLE_REFUND";
      }

      else
      {
        v4 = @"TRANSIT_TRANSACTION_TITLE_PURCHASE";
      }
    }
  }

  else
  {
    if (a1 > 6)
    {
      if (a1 <= 256)
      {
        if (a1 != 7)
        {
          if (a1 != 8)
          {
            goto LABEL_46;
          }

          v4 = @"TRANSIT_TRANSACTION_TITLE_CABLE_CAR";
          goto LABEL_45;
        }

        v3 = @"TRANSIT_TRANSACTION_TITLE_LIGHT_RAIL";
      }

      else
      {
        if (a1 == 257)
        {
          v4 = @"TRANSIT_TRANSACTION_TITLE_SHINKANSEN";
          goto LABEL_45;
        }

        if (a1 == 258)
        {
          v3 = @"TRANSIT_TRANSACTION_TITLE_MAGLEV";
        }

        else
        {
          v3 = @"TRANSIT_TRANSACTION_TITLE_TAXI";
        }
      }

LABEL_43:
      v2 = PKLocalizedTransitString(&v3->isa, 0);
      goto LABEL_46;
    }

    if (a1 > 3)
    {
      if ((a1 - 5) >= 2)
      {
        if (a1 != 4)
        {
          goto LABEL_46;
        }

        v3 = @"TRANSIT_TRANSACTION_TITLE_TRAIN";
        goto LABEL_43;
      }
    }

    else if (a1 != 1)
    {
      if (a1 == 2)
      {
        v3 = @"TRANSIT_TRANSACTION_TITLE_METRO";
      }

      else
      {
        if (a1 != 3)
        {
          goto LABEL_46;
        }

        v3 = @"TRANSIT_TRANSACTION_TITLE_BUS";
      }

      goto LABEL_43;
    }

    v4 = @"TRANSIT_TRANSACTION_TITLE_TRANSIT";
  }

LABEL_45:
  v2 = PKLocalizedPaymentString(&v4->isa, 0);
LABEL_46:

  return v2;
}

uint64_t PKPaymentTransactionTransitSubtypeIsPaymentActivity(uint64_t a1)
{
  result = 0;
  if (a1 <= 256)
  {
    if ((a1 - 1) >= 8)
    {
      return result;
    }

    return 1;
  }

  if ((a1 - 257) < 5 || a1 == 1025 || a1 == 515)
  {
    return 1;
  }

  return result;
}

uint64_t PKPaymentTransactionPeerPaymentSubtypeFromString(void *a1)
{
  v1 = a1;
  if ([@"send" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"receive" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"request" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"upcomingPayment" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"recurringPayment" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"thresholdTopUp" isEqualToString:v1])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPaymentTransactionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"purchase" isEqualToString:v1])
  {
    v2 = 0;
  }

  else if ([@"refund" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"peerpayment" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"fee" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"withdrawal" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"topup" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"disbursement" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"adjustment" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"transit" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"rewards" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"billpayment" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"interest" isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([@"installmentPayment" isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([@"installment" isEqualToString:v1])
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentTransactionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0x15)
  {
    return @"purchase";
  }

  else
  {
    return off_1E79E1A30[a1 - 1];
  }
}

uint64_t PKPaymentTransactionAdjustmentSubtypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"provisionaldispute" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"provisionaldisputereversal" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"disputefinal" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"chargebackcredit" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"merchantadjustment" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"balancewriteoff" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"courtesy" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"forfeiture" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"withdrawalreversal" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"checkissued" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"credit" isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([@"creditreversal" isEqualToString:v1])
  {
    v2 = 14;
  }

  else if ([@"feereversal" isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([@"interestreversal" isEqualToString:v1])
  {
    v2 = 12;
  }

  else if ([@"refund" isEqualToString:v1])
  {
    v2 = 15;
  }

  else if ([@"refundreversal" isEqualToString:v1])
  {
    v2 = 16;
  }

  else if ([@"debitreversal" isEqualToString:v1])
  {
    v2 = 18;
  }

  else if ([@"redemptionreversal" isEqualToString:v1])
  {
    v2 = 19;
  }

  else if ([@"debit" isEqualToString:v1])
  {
    v2 = 20;
  }

  else if ([@"other" isEqualToString:v1])
  {
    v2 = 17;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentTransactionTopUpSubtypeToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E79E1AE0[a1];
  }
}

uint64_t PKPaymentTransactionTopUpSubtypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"directDeposit")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_26:
    v4 = 0;
    goto LABEL_27;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"directDeposit"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"atm" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"atm"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_27;
    }

    v8 = v6;
    if (v8 == @"transfer" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"transfer"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_27;
    }

    v11 = v9;
    if (v11 == @"check" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"check"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_27;
    }

    v14 = v12;
    if (v14 == @"inWallet" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"inWallet"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_27;
    }

    v17 = v15;
    if (v17 == @"inStore" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"inStore"], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_27;
    }

    v20 = v18;
    if (v20 == @"amp" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"amp"], v21, (v22 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_27;
    }

    v23 = v21;
    if (v23 == @"redemption" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"redemption"], v24, v25))
    {
      v4 = 8;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_4:
  v4 = 1;
LABEL_27:

  return v4;
}

id PKLocalizedTitleForTransactionWithAdjustment(void *a1)
{
  v1 = a1;
  v2 = [v1 adjustmentTypeReason];
  if (v2 <= 6)
  {
    if (v2 == 3)
    {
      v9 = @"TRANSACTION_DETAIL_REWARDS_ADJUSTMENT_TITLE";
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_11;
      }

      v9 = @"TRANSACTION_DETAIL_REWARDS_STATEMENT_CREDIT_TITLE";
    }

    v8 = 2;
    goto LABEL_16;
  }

  if ((v2 - 7) < 2)
  {
    v10 = [v1 merchantProvidedTitle];
    if ([v10 length])
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2 == 9)
    {
      v8 = [v1 featureIdentifier];
      v9 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_CHECK_DEPOSIT";
      goto LABEL_16;
    }

    if (v2 == 10)
    {
      v8 = [v1 featureIdentifier];
      v9 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_FDIC";
      goto LABEL_16;
    }
  }

LABEL_11:
  if ([v1 featureIdentifier] != 5)
  {
    v11 = PKLocalizedPaymentString(&cfstr_TransactionTyp_2.isa, 0);
    goto LABEL_17;
  }

  v9 = @"TRANSACTION_TYPE_ADJUSTMENT";
  v8 = 5;
LABEL_16:
  v11 = PKLocalizedFeatureString(v9, v8, 0, v3, v4, v5, v6, v7, v13);
LABEL_17:
  v10 = v11;
LABEL_18:

  return v10;
}

id PKLocalizedSubtitleForTransactionWithAdjustment(void *a1)
{
  v1 = a1;
  v2 = [v1 featureIdentifier];
  v3 = [v1 adjustmentTypeReason];
  if (v3 <= 6)
  {
    if (v3 == 3)
    {
      v11 = [v1 amount];
      v12 = [v11 pk_isNegativeNumber];

      if (v12)
      {
        v10 = @"TRANSACTION_DETAIL_REWARDS_ADJUSTMENT_CREDIT_SUBTITLE";
      }

      else
      {
        v10 = @"TRANSACTION_DETAIL_REWARDS_ADJUSTMENT_SUBTITLE";
      }
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_19;
      }

      v10 = @"TRANSACTION_DETAIL_REWARDS_STATEMENT_CREDIT_SUBTITLE";
    }

LABEL_14:
    v13 = 2;
    goto LABEL_18;
  }

  if ((v3 - 7) < 2)
  {
    v9 = [v1 merchantProvidedDescription];
    if ([v9 length])
    {
      goto LABEL_51;
    }

    goto LABEL_19;
  }

  if (v3 != 10)
  {
LABEL_19:
    switch([v1 adjustmentType])
    {
      case 1:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_PROVISIONAL_DISPUTE";
        goto LABEL_49;
      case 2:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_PROVISISIONAL_DISPUTE_REVERSAL";
        goto LABEL_33;
      case 3:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_DISPUTE_FINAL";
LABEL_33:
        if (v2 != 5)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      case 4:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_CHARGEBACK_CREDIT";
        goto LABEL_49;
      case 5:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_MERCHANT_ADJUSTMENT";
        goto LABEL_49;
      case 6:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_BALANCE_WRITEOFF";
        goto LABEL_49;
      case 7:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_COURTESY";
        goto LABEL_49;
      case 8:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_FORFEITURE";
        goto LABEL_49;
      case 9:
        if (v2 == 5)
        {
          v17 = [v1 transfers];
          v18 = [v17 count];

          if (v18)
          {
            goto LABEL_42;
          }
        }

        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_WITHDRAWAL_REVERSAL";
        goto LABEL_49;
      case 10:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_CHECK_ISSUED";
        goto LABEL_49;
      case 11:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_FEE_REVERSAL";
        goto LABEL_14;
      case 12:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_INTEREST_REVERSAL";
        goto LABEL_14;
      case 13:
        v13 = [v1 featureIdentifier];
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_CREDIT";
        goto LABEL_18;
      case 14:
        if (v2 != 5 || ([v1 transfers], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, !v16))
        {
          v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_CREDIT_REVERSAL";
          goto LABEL_14;
        }

LABEL_42:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_ACH_RETURN";
LABEL_43:
        v13 = 5;
        break;
      case 15:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_REFUND";
        goto LABEL_49;
      case 16:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_REFUND_REVERSAL";
        goto LABEL_49;
      case 18:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_DEBIT_REVERSAL";
        goto LABEL_49;
      case 19:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_REDEMPTION_REVERSAL";
        goto LABEL_49;
      case 20:
        v10 = @"TRANSACTION_ADJUSTMENT_SUBTYPE_DEBIT";
LABEL_49:
        v14 = PKLocalizedPaymentString(&v10->isa, 0);
        goto LABEL_50;
      default:
        v19 = [v1 merchant];
        v20 = [v19 displayName];

        if ([v20 length])
        {
          v21 = [v1 merchant];
          v22 = [v21 displayName];
          v9 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_17.isa, &stru_1F2281668.isa, v22);
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_51;
    }

    goto LABEL_18;
  }

  if ([v1 adjustmentType] != 13)
  {
    if ([v1 adjustmentType] == 17)
    {
      v10 = @"TRANSACTION_TYPE_WITHDRAWAL_CASH";
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v10 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_17:
  v13 = v2;
LABEL_18:
  v14 = PKLocalizedFeatureString(v10, v13, 0, v4, v5, v6, v7, v8, v24);
LABEL_50:
  v9 = v14;
LABEL_51:

  return v9;
}

uint64_t PKPaymentTransactionAdjustmentSubtypeReasonFromString(void *a1)
{
  v1 = a1;
  if ([@"other" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"goodwill" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"negativeRewards" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"balanceAdjustment" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"smallBalanceCredit" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"statementCreditRewards" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"accountClosed" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"accountGraduated" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"checkDeposit" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"FDIC" isEqualToString:v1])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPaymentTransactionSourceFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"contactless"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"inapp"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"web"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"physical"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"virtual"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"digital"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"serviceprovider"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"account"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentTransactionSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1B28[a1 - 1];
  }
}

__CFString *PKPaymentTransactionSuppressBehaviorToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1B68[a1];
  }
}

__CFString *PKPaymentTransactionRewardsEligibilityReasonToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1B80[a1];
  }
}

BOOL PKPaymentTransactionShouldAuthenticateForMechanism(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 transactionStatus];
  v5 = [v3 authenticationContext];

  ShouldAuthenticateForMechanismWithTransactionStatus = PKPaymentTransactionShouldAuthenticateForMechanismWithTransactionStatus(v4, v5, a2);
  return ShouldAuthenticateForMechanismWithTransactionStatus;
}

BOOL PKPaymentTransactionShouldAuthenticateForMechanismWithTransactionStatus(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = !a1 && ([v5 complete] & 1) == 0 && (objc_msgSend(v6, "requestedAuthenticationMechanisms") & a3) != 0;

  return v7;
}

BOOL PKPaymentTransactionHasAuthenticationRequest(void *a1)
{
  v1 = a1;
  if ([v1 transactionStatus])
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 authenticationContext];
    v2 = [v3 requestedAuthenticationMechanisms] != 0;
  }

  return v2;
}

id PKTransactionPaymentHashForBarcodeIdentifier(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 SHA256Hash];
  v3 = [v2 hexEncoding];

  return v3;
}

__CFString *PKPaymentTransactionPeerPaymentSubtypeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1B98[a1 - 1];
  }
}

__CFString *PKPaymentTransactionAdjustmentSubtypeReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1BC8[a1 - 1];
  }
}

__CFString *PKPeerPaymentIdentityVerificationContextToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1D50[a1];
  }
}

uint64_t PKPeerPaymentRegistrationFlowStateFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"default"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"incomingsendpayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"personalizedincomingsendpayment"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"incomingrequestpayment"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"outgoingsendpayment"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"outgoingrequestpayment"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"dailycashonboarding"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentRegistrationFlowStateToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1D68[a1];
  }
}

__CFString *PKPeerPaymentMessagesContextToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"group";
  }

  if (a1 == 1)
  {
    return @"individual";
  }

  else
  {
    return v1;
  }
}

__CFString *PKPeerPaymentAssociatedAccountSetupTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"dailyCash";
  }

  else
  {
    return @"default";
  }
}

uint64_t PKPeerPaymentStatusFromString(void *a1)
{
  result = PKPaymentTransactionStatusFromString(a1);
  if ((result & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return -1;
  }

  return result;
}

uint64_t PKPeerPaymentMessageTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"Payment" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"Request" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"RecurringPayment" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentMessageTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E79E1DA0[a1 - 1];
  }
}

uint64_t PKPeerPaymentMessageSourceFromString(void *a1)
{
  v1 = a1;
  if ([@"wallet" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"messages" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"siri" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentMessageSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1DB8[a1 - 1];
  }
}

__CFString *PKPeerPaymentRecurringPaymentFrequencyToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1DD0[a1 - 1];
  }
}

uint64_t PKPeerPaymentRecurringPaymentFrequencyFromString(void *a1)
{
  v1 = a1;
  if ([@"weekly" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"biweekly" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"monthly" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"daily" isEqualToString:v1])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKPeerPaymentRecurringPaymentFrequencyToLocalizedString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = PKLocalizedPeerPaymentRecurringString(&off_1E79E1DF0[a1 - 1]->isa, 0, v1);
  }

  return v3;
}

id PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v6 = @"FREQUENCY_MONTHLY_TITLE";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_12;
      }

      v6 = @"FREQUENCY_DAILY_TITLE";
    }

    v4 = PKLocalizedPeerPaymentRecurringString(&v6->isa, 0);
  }

  else
  {
    if (a1 == 1)
    {
      v5 = @"FREQUENCY_WEEKLY_TITLE";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_12;
      }

      v5 = @"FREQUENCY_BIWEEKLY_TITLE";
    }

    v7 = PKLocalizedWeekdaySpecificStringKeyForKey(v5, v3);
    v4 = PKLocalizedPeerPaymentRecurringString(v7, 0);
  }

LABEL_12:

  return v4;
}

__CFString *PKPeerPaymentRecurringPaymentStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1E10[a1 - 1];
  }
}

uint64_t PKPeerPaymentRecurringPaymentStatusFromString(void *a1)
{
  v1 = a1;
  if ([@"active" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"paused" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"failed" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"failedStopped" isEqualToString:v1])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentRecurringPaymentTransactionStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E1E30[a1 - 1];
  }
}

uint64_t PKPeerPaymentRecurringPaymentTransactionStatusFromString(void *a1)
{
  v1 = a1;
  if ([@"success" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"inProgress" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"failed" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentRecurringPaymentActionToString(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"pause";
  }

  if (a1 == 2)
  {
    return @"cancel";
  }

  else
  {
    return v1;
  }
}

void sub_1ADA2B694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

id PKPassFromPlaceholderConfiguration(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v34 = 0;
    v7 = [[PKPlaceholderPassGenerator alloc] initWithPassTemplate:v4 error:&v34];
    v8 = v34;
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = [v3 subcredential];
      v12 = [v3 automaticSelectionCriterion];
      v13 = [v11 identifier];
      v29 = v9;
      if ([v13 length] < 5)
      {
        v14 = v13;
      }

      else
      {
        v14 = [v13 substringFromIndex:{objc_msgSend(v13, "length") - 4}];
      }

      v15 = v14;
      [(PKPlaceholderPassGenerator *)v7 setSerialNumber:v13];
      [(PKPlaceholderPassGenerator *)v7 setPrimaryAccountIdentifier:v13];
      v16 = objc_alloc_init(PKPaymentApplication);
      [(PKPaymentApplication *)v16 setDPANIdentifier:v13];
      [(PKPaymentApplication *)v16 setDPANSuffix:v15];
      [(PKPaymentApplication *)v16 setApplicationIdentifier:@"A000000809434343444B417631"];
      v17 = +[PKSecureElement primarySecureElementIdentifier];
      [(PKPaymentApplication *)v16 setSecureElementIdentifier:v17];

      -[PKPaymentApplication setState:](v16, "setState:", [v3 paymentApplicationState]);
      [(PKPaymentApplication *)v16 setSupportsContactlessPayment:1];
      [(PKPaymentApplication *)v16 setSupportsInAppPayment:0];
      -[PKPaymentApplication setSupportsOptionalAuthentication:](v16, "setSupportsOptionalAuthentication:", [v12 supportsExpress]);
      v27 = v15;
      v28 = v12;
      if (v12)
      {
        v36 = v12;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        [(PKPaymentApplication *)v16 setAutomaticSelectionCriteria:v18];
      }

      else
      {
        [(PKPaymentApplication *)v16 setAutomaticSelectionCriteria:0];
      }

      v19 = [MEMORY[0x1E695DFD8] setWithObject:v11];
      [(PKPaymentApplication *)v16 setSubcredentials:v19];

      [(PKPlaceholderPassGenerator *)v7 insertPaymentApplication:v16];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = [v3 passFields];
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(PKPlaceholderPassGenerator *)v7 insertPassField:*(*(&v30 + 1) + 8 * i)];
          }

          v22 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v22);
      }

      v25 = [v3 associatedApplicationIdentifiers];
      [(PKPlaceholderPassGenerator *)v7 setAssociatedApplicationIdentifiers:v25];

      v6 = [(PKPlaceholderPassGenerator *)v7 generatePass];

      v9 = v29;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create placeholder pass generator: %@", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  return v6;
}

uint64_t PKProtobufRemotePaymentResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PKProtobufPayment);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !PKProtobufPaymentReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

PKOSVersionRequirementRange *PKOSVersionRequirementRangeFromLayoutAssetDictionary(void *a1)
{
  v1 = [a1 PKDictionaryForKey:@"osVersionRange"];
  if (v1)
  {
    v2 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKValidatePaymentOfferCollection(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 sessionIdentifier];

    if (v7)
    {
      v8 = [v5 installmentAssessment];
      v9 = _PKValidatePaymentOfferInstallmentAssessment(v8, a2, v6);

      goto LABEL_7;
    }

    v10 = @"There is no session identifier set on the payment offer collection";
  }

  else
  {
    v10 = @"There is no payment offer collection";
  }

  v9 = _PKPaymentOffersMalformedError(v10);
LABEL_7:

  return v9;
}

id _PKValidatePaymentOfferInstallmentAssessment(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 identifier];

    v8 = v7 != 0;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = @"There is no identifier on the installment assessment";
    }
  }

  else
  {
    v8 = 0;
    v9 = @"There is no installment assessment on the payment offer collection";
  }

  if ([v5 offerEligibility] == 1)
  {
    v10 = [v5 offers];
    if ([v10 count])
    {
      v11 = 0;
    }

    else
    {
      v12 = [v5 action];
      v11 = v12 == 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((a2 - 2) < 2)
  {
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    if (!v8)
    {
      goto LABEL_27;
    }

    if (v6)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v9 = @"There is no installment offers or action defined on the payment offer collection with a currencyAmount set";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
LABEL_15:
    if (v8)
    {
      v9 = 0;
    }

    if (v8 && v11)
    {
      v9 = @"There is no installment offers or action defined on the payment offer collection";
LABEL_27:
      v14 = _PKPaymentOffersMalformedError(v9);

      goto LABEL_29;
    }
  }

  if (v9)
  {
    goto LABEL_27;
  }

LABEL_28:
  v14 = 0;
LABEL_29:

  return v14;
}

id _PKPaymentOffersMalformedError(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setObject:v2 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-9000 userInfo:v3];

  return v4;
}

__CFString *PKMerchantCategoryToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2090[a1 - 1];
  }
}

uint64_t PKMerchantCategoryFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"fooddrinks")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  v3 = [@"fooddrinks" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"shopping" || (v6 = v5, v7 = [@"shopping" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_24;
    }

    v8 = v6;
    if (v8 == @"travel" || (v9 = v8, v10 = [@"travel" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_24;
    }

    v11 = v9;
    if (v11 == @"services" || (v12 = v11, v13 = [@"services" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_24;
    }

    v14 = v12;
    if (v14 == @"fun" || (v15 = v14, v16 = [@"fun" isEqualToString:v14], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_24;
    }

    v17 = v15;
    if (v17 == @"health" || (v18 = v17, v19 = [@"health" isEqualToString:v17], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_24;
    }

    v20 = v18;
    if (v20 == @"transport" || (v21 = v20, v22 = [@"transport" isEqualToString:v20], v21, v22))
    {
      v4 = 7;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_4:
  v4 = 1;
LABEL_24:

  return v4;
}

id PKLocalizedStringFromMerchantCategory(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v3 = @"TRANSACTIONS_CATEGORY_OTHER";
  }

  else
  {
    v3 = off_1E79E20C8[a1 - 1];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0, v1);

  return v4;
}

id PKMerchantFormattedDisplayName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    v3 = [v1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

    v4 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
    v5 = [v1 rangeOfCharacterFromSet:v4] != 0x7FFFFFFFFFFFFFFFLL;

    v6 = [v1 canBeConvertedToEncoding:5];
    v48 = [MEMORY[0x1E696AD60] string];
    v7 = v1;
    v8 = [v7 lowercaseString];
    v9 = [v8 hasPrefix:@"apl*"];

    if (v9)
    {
      v10 = [v7 substringFromIndex:4];

      v7 = v10;
    }

    v47 = v1;
    if ([v7 rangeOfString:@"*"] == 3)
    {
      v11 = [v7 substringToIndex:4];
      v12 = [v11 pk_uppercaseStringForPreferredLocale];
      [v48 appendString:v12];

      [v48 appendString:@" "];
      v13 = [v7 substringFromIndex:4];

      v7 = v13;
    }

    v46 = v7;
    v14 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v7];
    v15 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v14 setCharactersToBeSkipped:v15];
    v49 = 0;
    v16 = [v14 scanUpToCharactersFromSet:v15 intoString:&v49];
    v17 = v49;
    v18 = v17;
    if (v16)
    {
      v45 = (v3 ^ v5) & v6;
      v19 = v48;
      while (![(__CFString *)v18 length])
      {
LABEL_39:
        v49 = v18;
        v39 = [v14 scanUpToCharactersFromSet:v15 intoString:&v49];
        v40 = v49;

        v18 = v40;
        if ((v39 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if ([(__CFString *)v18 length]== 3)
      {
        v20 = [(__CFString *)v18 substringWithRange:1, 1];
        v21 = [v20 isEqual:@"&"];
      }

      else
      {
        v21 = 0;
      }

      if (![(__CFString *)v18 containsString:@"."]|| ([(__CFString *)v18 hasPrefix:@"."]& 1) != 0 || ([(__CFString *)v18 hasSuffix:@"."]& 1) != 0)
      {
        if ((v45 ^ 1 | v21))
        {
          v22 = v18;
          goto LABEL_26;
        }

        v23 = [(__CFString *)v18 pk_lowercaseStringForPreferredLocale];
        v24 = [v23 componentsSeparatedByString:@"-"];
        v22 = [v24 mutableCopy];

        if ([v22 count])
        {
          v25 = 0;
          do
          {
            v26 = [v22 objectAtIndex:v25];
            if ([v22 count] < 2 || (objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "rangeOfCharacterFromSet:", v27), v27, v28 == 0x7FFFFFFFFFFFFFFFLL))
            {
              v29 = [v26 pk_uppercaseFirstStringForPreferredLocale];
            }

            else
            {
              v29 = [v26 pk_uppercaseStringForPreferredLocale];
            }

            v30 = v29;
            [v22 replaceObjectAtIndex:v25 withObject:v29];

            ++v25;
          }

          while ([v22 count] > v25);
        }

        v31 = [v22 componentsJoinedByString:@"-"];

        v19 = v48;
      }

      else
      {
        v41 = [(__CFString *)v18 componentsSeparatedByString:@"."];
        v42 = [v41 count];

        if (v45)
        {
          v22 = [(__CFString *)v18 pk_lowercaseStringForPreferredLocale];
        }

        else
        {
          v22 = v18;
        }

        if (![v22 hasPrefix:@"www."] || v42 < 3)
        {
LABEL_26:
          v32 = v22;
          v33 = v32;
          if (v32 == @"atm")
          {
            v18 = @"ATM";
          }

          else
          {
            if (!v32)
            {
              v18 = 0;
LABEL_36:
              v37 = [v14 isAtEnd];
              v38 = @" ";
              if (v37)
              {
                v38 = &stru_1F227FD28;
              }

              [v19 appendFormat:@"%@%@", v18, v38];
              goto LABEL_39;
            }

            v34 = [(__CFString *)v32 caseInsensitiveCompare:@"atm"];

            if (v34)
            {
              v35 = v33;
              if (v35 != @"plc")
              {
                v18 = v35;
                v36 = [(__CFString *)v35 caseInsensitiveCompare:?];

                if (v36)
                {
                  goto LABEL_36;
                }
              }

              v18 = @"PLC";
            }

            else
            {
              v18 = @"ATM";
            }
          }

          goto LABEL_36;
        }

        v31 = [v22 substringFromIndex:4];
      }

      v22 = v31;
      goto LABEL_26;
    }

    v40 = v17;
    v19 = v48;
LABEL_49:
    [v19 replaceOccurrencesOfString:@"itunes" withString:@"iTunes" options:1 range:{0, objc_msgSend(v19, "length")}];
    v43 = [v19 copy];

    v1 = v47;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

__CFString *PKTransactionCommutePlanUnitTypeToString(uint64_t a1)
{
  v1 = @"unknown plan";
  if (a1 == 1)
  {
    v1 = @"count plan";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"timed plan";
  }
}

uint64_t PKRemoteAssetManifestItemEncryptionSourceFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"kml")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 1;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"kml"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"sesd" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"sesd"], v6, (v7 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"none" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"none"], v9, v10))
    {
      v4 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 2;
LABEL_12:

  return v4;
}

uint64_t encryptionSourceFromManifestItemDictionary(void *a1)
{
  v1 = [a1 objectForKey:@"encryptionSource"];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = PKRemoteAssetManifestItemEncryptionSourceFromString(v1);
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_1ADA3F2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADA3FD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ADA405D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ADA409C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufPaymentStatusReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKPhysicalCardShippingStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E79E2348[a1 - 1];
  }
}

uint64_t PKPhysicalCardShippingStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"shipped")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"shipped"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"outForDelivery" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"outForDelivery"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"delivered" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"delivered"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"deliveryException" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"deliveryException"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

void sub_1ADA465D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ADA4A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKSelectedPaymentOfferTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"installment";
  }

  if (a1 == 2)
  {
    return @"rewards";
  }

  else
  {
    return v1;
  }
}

__CFString *PKSelectedPaymentOfferStorageTypeToString(uint64_t a1)
{
  if (a1)
  {
    return @"persistent";
  }

  else
  {
    return @"default";
  }
}

__CFString *PKSelectedPaymentOfferInstallmentSelectionTypeToString(uint64_t a1)
{
  v1 = @"selectedOffer";
  if (a1 == 1)
  {
    v1 = @"postPurchaseFollowup";
  }

  if (a1 == 2)
  {
    return @"confirmationRecordFollowUp";
  }

  else
  {
    return v1;
  }
}

void sub_1ADA4ED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKAddressFieldsToContactKeys(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 4) != 0)
  {
    [v2 addObject:*MEMORY[0x1E695C208]];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:*MEMORY[0x1E695C330]];
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:*MEMORY[0x1E695C360]];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:*MEMORY[0x1E695C230]];
    [v3 addObject:*MEMORY[0x1E695C240]];
  }

LABEL_6:
  v4 = [v3 copy];

  return v4;
}

uint64_t PKProtobufCustomPrecisionAmountReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          v30 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v30 & 0x7F) << v20;
          if ((v30 & 0x80) == 0)
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
        *(a1 + 8) = -(v26 & 1) ^ (v26 >> 1);
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
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
        *(a1 + 16) = v19;
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

__CFString *PKPaymentOfferCapabilityFeatureToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2540[a1];
  }
}

uint64_t PKPaymentOfferCapabilityFeatureFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"issuerInstallments")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"issuerInstallments"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"rewards" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"rewards"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"payInFull" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"payInFull"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"merchandising" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"merchandising"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

uint64_t PKProtobufRelaySharingMessageReadFrom(_DWORD *a1, void *a2)
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
        v27 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = PBReaderReadString();
            v15 = 12;
            goto LABEL_48;
          }

          if (v13 == 4)
          {
            v14 = PBReaderReadData();
            v15 = 14;
            goto LABEL_48;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v28 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v28 & 0x7F) << v17;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_56;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_56:
            a1[18] = v23;
            goto LABEL_49;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_48;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 10;
          goto LABEL_48;
        }

        if (v13 == 6)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addMailboxURLs:v16];
          }

          goto LABEL_49;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadData();
            v15 = 4;
            goto LABEL_48;
          case 8:
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_48;
          case 9:
            v14 = PBReaderReadString();
            v15 = 2;
LABEL_48:
            v24 = *&a1[v15];
            *&a1[v15] = v14;

            goto LABEL_49;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_49:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKProtobufCommonSharingMessageReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            v33 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v33 & 0x7F) << v13;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_62:
              v31 = 120;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_62;
        case 2u:
          v20 = PBReaderReadString();
          v21 = 56;
          goto LABEL_50;
        case 3u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 136) |= 1u;
          break;
        case 4u:
          v20 = PBReaderReadString();
          v21 = 24;
          goto LABEL_50;
        case 5u:
          v20 = PBReaderReadString();
          v21 = 128;
          goto LABEL_50;
        case 6u:
          v20 = PBReaderReadString();
          v21 = 112;
          goto LABEL_50;
        case 7u:
          v20 = PBReaderReadData();
          v21 = 48;
          goto LABEL_50;
        case 8u:
          v20 = PBReaderReadString();
          v21 = 88;
          goto LABEL_50;
        case 9u:
          v20 = PBReaderReadString();
          v21 = 96;
          goto LABEL_50;
        case 0xAu:
          v20 = PBReaderReadString();
          v21 = 104;
          goto LABEL_50;
        case 0xBu:
          v20 = PBReaderReadString();
          v21 = 72;
          goto LABEL_50;
        case 0xCu:
          v20 = PBReaderReadData();
          v21 = 80;
          goto LABEL_50;
        case 0xDu:
          v20 = PBReaderReadString();
          v21 = 8;
          goto LABEL_50;
        case 0xEu:
          v20 = PBReaderReadString();
          v21 = 16;
          goto LABEL_50;
        case 0xFu:
          v20 = PBReaderReadString();
          v21 = 40;
          goto LABEL_50;
        case 0x10u:
          v20 = PBReaderReadData();
          v21 = 32;
LABEL_50:
          v28 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_51;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_51;
      }

      while (1)
      {
        v34 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v34 & 0x7F) << v22;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_58;
        }
      }

      v19 = [a2 hasError] ? 0 : v24;
LABEL_58:
      v31 = 64;
LABEL_63:
      *(a1 + v31) = v19;
LABEL_51:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _Queue()
{
  if (qword_1ED6D2148 != -1)
  {
    dispatch_once(&qword_1ED6D2148, &__block_literal_global_217);
  }

  v1 = _MergedGlobals_276;

  return v1;
}

id _NotificationHandlerMap()
{
  if (qword_1ED6D2158 != -1)
  {
    dispatch_once(&qword_1ED6D2158, &__block_literal_global_7);
  }

  v1 = qword_1ED6D2150;

  return v1;
}

void _NotificationResponseHandler(uint64_t a1, uint64_t a2)
{
  v4 = _Queue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___NotificationResponseHandler_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a2;
  v5 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_21;
  block[3] = &unk_1E79C4428;
  v8 = v5;
  dispatch_async(v4, block);
}

void sub_1ADA5C2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKEngagementRequestCommandFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"fetchProperty" || v1 && ((v3 = [(__CFString *)v1 isEqualToString:@"fetchProperty"], v2, (v3 & 1) != 0) || (v4 = v2, v4 == @"fetchFinHealthProperty") || (v5 = v4, v6 = [(__CFString *)v4 isEqualToString:@"fetchFinHealthProperty"], v5, v6)))
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t PKLoadNearField()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  return PKLoadNearField_frameworkLibrary;
}

id PKGetClassNFSession()
{
  if (PKGetClassNFSession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFSession_onceToken, &__block_literal_global_19);
  }

  v1 = PKGetClassNFSession_cls;

  return v1;
}

Class __PKGetClassNFSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFSession");
  PKGetClassNFSession_cls = result;
  return result;
}

id PKGetClassNFRemoteAdminManager()
{
  if (PKGetClassNFRemoteAdminManager_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFRemoteAdminManager_onceToken, &__block_literal_global_25);
  }

  v1 = PKGetClassNFRemoteAdminManager_cls;

  return v1;
}

Class __PKGetClassNFRemoteAdminManager_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFRemoteAdminManager");
  PKGetClassNFRemoteAdminManager_cls = result;
  return result;
}

id PKGetClassNFRemoteAdminCardIngestionRequest()
{
  if (PKGetClassNFRemoteAdminCardIngestionRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFRemoteAdminCardIngestionRequest_onceToken, &__block_literal_global_28_0);
  }

  v1 = PKGetClassNFRemoteAdminCardIngestionRequest_cls;

  return v1;
}

Class __PKGetClassNFRemoteAdminCardIngestionRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFRemoteAdminCardIngestionRequest");
  PKGetClassNFRemoteAdminCardIngestionRequest_cls = result;
  return result;
}

void PKRegisterNFRemoteAdminManagerListener(void *a1)
{
  v1 = a1;
  v2 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  [v2 registerEventListener:v1];
}

void PKUnregisterNFRemoteAdminManagerListener(void *a1)
{
  v1 = a1;
  v2 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  [v2 unregisterEventListener:v1];
}

id PKGetClassNFFieldNotification()
{
  if (qword_1ED6D2168 != -1)
  {
    dispatch_once(&qword_1ED6D2168, &__block_literal_global_34);
  }

  v1 = _MergedGlobals_277;

  return v1;
}

Class __PKGetClassNFFieldNotification_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFFieldNotification");
  _MergedGlobals_277 = result;
  return result;
}

id PKGetClassNFFieldNotificationECP1_0()
{
  if (qword_1ED6D2178 != -1)
  {
    dispatch_once(&qword_1ED6D2178, &__block_literal_global_37_0);
  }

  v1 = qword_1ED6D2170;

  return v1;
}

id PKGetClassNFFieldNotificationECP2_0()
{
  if (qword_1ED6D2188 != -1)
  {
    dispatch_once(&qword_1ED6D2188, &__block_literal_global_40_1);
  }

  v1 = qword_1ED6D2180;

  return v1;
}

id PKGetClassNFECommercePaymentSession()
{
  if (PKGetClassNFECommercePaymentSession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFECommercePaymentSession_onceToken, &__block_literal_global_43_0);
  }

  v1 = PKGetClassNFECommercePaymentSession_cls;

  return v1;
}

Class __PKGetClassNFECommercePaymentSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFECommercePaymentSession");
  PKGetClassNFECommercePaymentSession_cls = result;
  return result;
}

id PKGetClassNFECommercePaymentRequest()
{
  if (PKGetClassNFECommercePaymentRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFECommercePaymentRequest_onceToken, &__block_literal_global_46_2);
  }

  v1 = PKGetClassNFECommercePaymentRequest_cls;

  return v1;
}

Class __PKGetClassNFECommercePaymentRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFECommercePaymentRequest");
  PKGetClassNFECommercePaymentRequest_cls = result;
  return result;
}

id PKGetClassNFLoyaltyAndPaymentSession()
{
  if (PKGetClassNFLoyaltyAndPaymentSession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFLoyaltyAndPaymentSession_onceToken, &__block_literal_global_49);
  }

  v1 = PKGetClassNFLoyaltyAndPaymentSession_cls;

  return v1;
}

Class __PKGetClassNFLoyaltyAndPaymentSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFLoyaltyAndPaymentSession");
  PKGetClassNFLoyaltyAndPaymentSession_cls = result;
  return result;
}

id PKGetClassNFDigitalCarKeySession()
{
  if (PKGetClassNFDigitalCarKeySession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFDigitalCarKeySession_onceToken, &__block_literal_global_52_4);
  }

  v1 = PKGetClassNFDigitalCarKeySession_cls;

  return v1;
}

Class __PKGetClassNFDigitalCarKeySession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFDigitalCarKeySession");
  PKGetClassNFDigitalCarKeySession_cls = result;
  return result;
}

id PKGetClassNFUnifiedAccessSession()
{
  if (qword_1ED6D2198 != -1)
  {
    dispatch_once(&qword_1ED6D2198, &__block_literal_global_55_0);
  }

  v1 = qword_1ED6D2190;

  return v1;
}

Class __PKGetClassNFUnifiedAccessSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFUnifiedAccessSession");
  qword_1ED6D2190 = result;
  return result;
}

id PKGetClassNFValueAddedServiceCard()
{
  if (PKGetClassNFValueAddedServiceCard_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFValueAddedServiceCard_onceToken, &__block_literal_global_58);
  }

  v1 = PKGetClassNFValueAddedServiceCard_cls;

  return v1;
}

Class __PKGetClassNFValueAddedServiceCard_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFValueAddedServiceCard");
  PKGetClassNFValueAddedServiceCard_cls = result;
  return result;
}

id PKGetClassNFReaderSession()
{
  if (PKGetClassNFReaderSession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFReaderSession_onceToken, &__block_literal_global_61_0);
  }

  v1 = PKGetClassNFReaderSession_cls;

  return v1;
}

Class __PKGetClassNFReaderSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFReaderSession");
  PKGetClassNFReaderSession_cls = result;
  return result;
}

id PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey()
{
  if (PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_onceToken, &__block_literal_global_64_0);
  }

  v1 = PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_constant;

  return v1;
}

void __PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = dlsym(PKLoadNearField_frameworkLibrary, "NFSecureElementManagerSessionECDSACertificateKey");
    objc_storeStrong(&PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_constant, *v0);
  }

  else
  {
    v1 = PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_constant;
    PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_constant = @"ECDSA";

    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey_constant;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "NearField not loaded.\n\tSynthesizing default ECDSA Certificate Key: %@", &v3, 0xCu);
    }
  }
}

id PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey()
{
  if (PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_onceToken, &__block_literal_global_70_0);
  }

  v1 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_constant;

  return v1;
}

void __PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = dlsym(PKLoadNearField_frameworkLibrary, "NFSecureElementManagerSessionRSAACertificateKey");
    objc_storeStrong(&PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_constant, *v0);
  }

  else
  {
    v1 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_constant;
    PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_constant = @"RSA";

    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey_constant;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "NearField not loaded.\n\tSynthesizing default RSA Certificate Key: %@", &v3, 0xCu);
    }
  }
}

id PKGetConstantStringNFSignedPlatformData()
{
  if (PKGetConstantStringNFSignedPlatformData_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNFSignedPlatformData_onceToken, &__block_literal_global_76_0);
  }

  v1 = PKGetConstantStringNFSignedPlatformData_constant;

  return v1;
}

void __PKGetConstantStringNFSignedPlatformData_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NFSignedPlatformData");

    objc_storeStrong(&PKGetConstantStringNFSignedPlatformData_constant, v0);
  }
}

id PKGetConstantStringNFSignedPlatformSignatureBlob()
{
  if (PKGetConstantStringNFSignedPlatformSignatureBlob_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNFSignedPlatformSignatureBlob_onceToken, &__block_literal_global_79);
  }

  v1 = PKGetConstantStringNFSignedPlatformSignatureBlob_constant;

  return v1;
}

void __PKGetConstantStringNFSignedPlatformSignatureBlob_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NFSignedPlatformSignatureBlob");

    objc_storeStrong(&PKGetConstantStringNFSignedPlatformSignatureBlob_constant, v0);
  }
}

id PKGetClassNFPeerPaymentEnrollmentRequest()
{
  if (PKGetClassNFPeerPaymentEnrollmentRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFPeerPaymentEnrollmentRequest_onceToken, &__block_literal_global_82);
  }

  v1 = PKGetClassNFPeerPaymentEnrollmentRequest_cls;

  return v1;
}

Class __PKGetClassNFPeerPaymentEnrollmentRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFPeerPaymentEnrollmentRequest");
  PKGetClassNFPeerPaymentEnrollmentRequest_cls = result;
  return result;
}

id PKGetClassNFPeerPaymentEnrollmentResponse()
{
  if (qword_1ED6D21A8 != -1)
  {
    dispatch_once(&qword_1ED6D21A8, &__block_literal_global_85_0);
  }

  v1 = qword_1ED6D21A0;

  return v1;
}

Class __PKGetClassNFPeerPaymentEnrollmentResponse_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFPeerPaymentEnrollmentResponse");
  qword_1ED6D21A0 = result;
  return result;
}

id PKGetClassNFPeerPaymentRequest()
{
  if (PKGetClassNFPeerPaymentRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFPeerPaymentRequest_onceToken, &__block_literal_global_88_1);
  }

  v1 = PKGetClassNFPeerPaymentRequest_cls;

  return v1;
}

Class __PKGetClassNFPeerPaymentRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFPeerPaymentRequest");
  PKGetClassNFPeerPaymentRequest_cls = result;
  return result;
}

id PKGetClassNFPeerPaymentResponse()
{
  if (qword_1ED6D21B8 != -1)
  {
    dispatch_once(&qword_1ED6D21B8, &__block_literal_global_91);
  }

  v1 = qword_1ED6D21B0;

  return v1;
}

Class __PKGetClassNFPeerPaymentResponse_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFPeerPaymentResponse");
  qword_1ED6D21B0 = result;
  return result;
}

id PKGetClassNFPeerPaymentSession()
{
  if (PKGetClassNFPeerPaymentSession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFPeerPaymentSession_onceToken, &__block_literal_global_94_1);
  }

  v1 = PKGetClassNFPeerPaymentSession_cls;

  return v1;
}

Class __PKGetClassNFPeerPaymentSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFPeerPaymentSession");
  PKGetClassNFPeerPaymentSession_cls = result;
  return result;
}

id PKGetClassNFPeerPaymentTransferRequest()
{
  if (PKGetClassNFPeerPaymentTransferRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFPeerPaymentTransferRequest_onceToken, &__block_literal_global_97_0);
  }

  v1 = PKGetClassNFPeerPaymentTransferRequest_cls;

  return v1;
}

Class __PKGetClassNFPeerPaymentTransferRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFPeerPaymentTransferRequest");
  PKGetClassNFPeerPaymentTransferRequest_cls = result;
  return result;
}

id PKGetClassNFTrustSession()
{
  if (PKGetClassNFTrustSession_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFTrustSession_onceToken, &__block_literal_global_100_0);
  }

  v1 = PKGetClassNFTrustSession_cls;

  return v1;
}

Class __PKGetClassNFTrustSession_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFTrustSession");
  PKGetClassNFTrustSession_cls = result;
  return result;
}

id PKGetClassNFTrustLocalValidation()
{
  if (PKGetClassNFTrustLocalValidation_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFTrustLocalValidation_onceToken, &__block_literal_global_103);
  }

  v1 = PKGetClassNFTrustLocalValidation_cls;

  return v1;
}

Class __PKGetClassNFTrustLocalValidation_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFTrustLocalValidation");
  PKGetClassNFTrustLocalValidation_cls = result;
  return result;
}

id PKGetClassNFTrustKeyRequest()
{
  if (PKGetClassNFTrustKeyRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFTrustKeyRequest_onceToken, &__block_literal_global_106_0);
  }

  v1 = PKGetClassNFTrustKeyRequest_cls;

  return v1;
}

Class __PKGetClassNFTrustKeyRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFTrustKeyRequest");
  PKGetClassNFTrustKeyRequest_cls = result;
  return result;
}

id PKGetClassNFTrustSignRequest()
{
  if (PKGetClassNFTrustSignRequest_onceToken != -1)
  {
    dispatch_once(&PKGetClassNFTrustSignRequest_onceToken, &__block_literal_global_109_0);
  }

  v1 = PKGetClassNFTrustSignRequest_cls;

  return v1;
}

Class __PKGetClassNFTrustSignRequest_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFTrustSignRequest");
  PKGetClassNFTrustSignRequest_cls = result;
  return result;
}

id PKGetClassNFTrustSignResponse()
{
  if (qword_1ED6D21C8 != -1)
  {
    dispatch_once(&qword_1ED6D21C8, &__block_literal_global_112);
  }

  v1 = qword_1ED6D21C0;

  return v1;
}

Class __PKGetClassNFTrustSignResponse_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFTrustSignResponse");
  qword_1ED6D21C0 = result;
  return result;
}

uint64_t PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_STRING()
{
  if (qword_1ED6D21D8 != -1)
  {
    dispatch_once(&qword_1ED6D21D8, &__block_literal_global_118);
  }

  return qword_1ED6D21D0;
}

uint64_t PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_NUMBER()
{
  if (qword_1ED6D21E8 != -1)
  {
    dispatch_once(&qword_1ED6D21E8, &__block_literal_global_121);
  }

  return qword_1ED6D21E0;
}

id PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER()
{
  if (PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER_onceToken, &__block_literal_global_124_1);
  }

  v1 = PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER_constant;

  return v1;
}

id PKGetConstantStringNF_DCK_EVENT_KEY_NAME()
{
  if (qword_1ED6D21F8 != -1)
  {
    dispatch_once(&qword_1ED6D21F8, &__block_literal_global_127);
  }

  v1 = qword_1ED6D21F0;

  return v1;
}

id PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER()
{
  if (PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER_onceToken != -1)
  {
    dispatch_once(&PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER_onceToken, &__block_literal_global_130);
  }

  v1 = PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER_constant;

  return v1;
}

id PKGetConstantStringNF_DCK_EVENT_KEY_ERROR()
{
  if (qword_1ED6D2208 != -1)
  {
    dispatch_once(&qword_1ED6D2208, &__block_literal_global_133_0);
  }

  v1 = qword_1ED6D2200;

  return v1;
}

id PKGetConstantStringNF_DCK_EVENT_KEY_RKE_ACTIONS()
{
  if (qword_1ED6D2218 != -1)
  {
    dispatch_once(&qword_1ED6D2218, &__block_literal_global_136_0);
  }

  v1 = qword_1ED6D2210;

  return v1;
}

id PKGetConstantStringNF_DCK_EVENT_KEY_RANGING_SUSPENSION_REASONS()
{
  if (qword_1ED6D2228 != -1)
  {
    dispatch_once(&qword_1ED6D2228, &__block_literal_global_139);
  }

  v1 = qword_1ED6D2220;

  return v1;
}

__CFString *PKExternalProvisioningAuthorizationTypeToString(uint64_t a1)
{
  v1 = @"none";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"dpan";
  }

  else
  {
    return v1;
  }
}

uint64_t PKExternalProvisioningAuthorizationTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"none")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"none"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"dpan" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"dpan"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKSharedAccountParticpantCloudStoreZoneName(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &PKSharedAccountCloudStoreParticipantJointZoneNameRoot;
  if (!a3)
  {
    v3 = &PKSharedAccountCloudStoreParticipantIndividualZoneNameRoot;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"card-participant-", *v3, a1, @"-altDSID-", a2];
}

id PKResolvedBoardingPassSemantics(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 flight];
  if (v4)
  {
    v5 = [v3 liveDataConfiguration];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PKResolvedBoardingPassSemantics_block_invoke;
    aBlock[3] = &unk_1E79CA4C8;
    v6 = v5;
    v33 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [v3 allSemantics];
    v9 = [v8 mutableCopy];

    if (v7[2](v7, @"currentDepartureDate"))
    {
      v10 = objc_alloc_init(PKPassSemantic);
      v11 = [v4 departure];
      v12 = [v11 currentGateTime];

      [(PKPassSemantic *)v10 setDateValue:v12];
      [v9 setObject:v10 forKeyedSubscript:@"currentDepartureDate"];
    }

    if (v7[2](v7, @"currentBoardingDate"))
    {
      v13 = [v3 allSemantics];
      v14 = PKComputedBoardingDateForSemantics(v13, v4, v6);

      v15 = objc_alloc_init(PKPassSemantic);
      [(PKPassSemantic *)v15 setDateValue:v14];
      [v9 setObject:v15 forKeyedSubscript:@"currentBoardingDate"];
    }

    if (v7[2](v7, @"departureGate"))
    {
      v16 = objc_alloc_init(PKPassSemantic);
      v17 = [v4 departure];
      v18 = [v17 gate];
      [(PKPassSemantic *)v16 setStringValue:v18];

      [v9 setObject:v16 forKeyedSubscript:@"departureGate"];
    }

    if (v7[2](v7, @"departureTerminal"))
    {
      v19 = objc_alloc_init(PKPassSemantic);
      v20 = [v4 departure];
      v21 = [v20 terminal];
      [(PKPassSemantic *)v19 setStringValue:v21];

      [v9 setObject:v19 forKeyedSubscript:@"departureTerminal"];
    }

    if (v7[2](v7, @"currentArrivalDate"))
    {
      v22 = objc_alloc_init(PKPassSemantic);
      v23 = [v4 arrival];
      v24 = [v23 currentGateTime];
      [(PKPassSemantic *)v22 setDateValue:v24];

      [v9 setObject:v22 forKeyedSubscript:@"currentArrivalDate"];
    }

    if (v7[2](v7, @"destinationTerminal"))
    {
      v25 = objc_alloc_init(PKPassSemantic);
      v26 = [v4 arrival];
      v27 = [v26 terminal];
      [(PKPassSemantic *)v25 setStringValue:v27];

      [v9 setObject:v25 forKeyedSubscript:@"destinationTerminal"];
    }

    if (v7[2](v7, @"destinationGate"))
    {
      v28 = objc_alloc_init(PKPassSemantic);
      v29 = [v4 arrival];
      v30 = [v29 gate];
      [(PKPassSemantic *)v28 setStringValue:v30];

      [v9 setObject:v28 forKeyedSubscript:@"destinationGate"];
    }
  }

  else
  {
    v9 = [v3 allSemantics];
  }

  return v9;
}

uint64_t __PKResolvedBoardingPassSemantics_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 eligibleSemantics];
  v5 = [v4 containsObject:v3];

  return v5;
}

id PKComputedBoardingDateForSemantics(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 objectForKey:?];
  v9 = [v8 dateValue];

  v10 = [v5 objectForKey:@"currentDepartureDate"];
  v11 = [v10 dateValue];

  v12 = [v5 objectForKey:@"originalBoardingDate"];
  v13 = [v12 dateValue];

  v14 = [v5 objectForKey:@"currentBoardingDate"];
  v15 = [v14 dateValue];

  v16 = v15 != 0;
  v17 = v11 != 0;
  if (v16 && v17)
  {
    v18 = v11;
  }

  else
  {
    v18 = v9;
  }

  if (v16 && v17)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13;
  }

  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v39 = v6;
    v22 = MEMORY[0x1E695DEE8];
    v23 = v19;
    v24 = v18;
    [v22 autoupdatingCurrentCalendar];
    v26 = v25 = v7;
    v37 = [v26 components:128 fromDate:v24 toDate:v23 options:0];

    v38 = v25;
    v27 = [v25 eligibleSemantics];
    v28 = [v27 containsObject:@"currentDepartureDate"];

    if (!v28 || ([v39 departure], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "currentGateTime"), v30 = objc_claimAutoreleasedReturnValue(), v29, !v30))
    {
      v31 = [v5 objectForKey:{@"currentDepartureDate", v37}];
      v32 = [v31 dateValue];
      v33 = v32;
      if (v32)
      {
        v30 = v32;
      }

      else
      {
        v34 = [v5 objectForKey:@"originalDepartureDate"];
        v30 = [v34 dateValue];
      }
    }

    v35 = v37;
    v21 = [v26 dateByAddingComponents:v37 toDate:v30 options:{0, v37}];

    v6 = v39;
    v7 = v38;
  }

  return v21;
}

id PKCurrentlyReleventFlightStepForFlight(void *a1)
{
  v2 = a1;
  v3 = [v2 state];
  if (v3 <= 8)
  {
    if (((1 << v3) & 0x1BC) != 0)
    {
      [v2 arrival];
    }

    else
    {
      [v2 departure];
    }
    v1 = ;
  }

  return v1;
}

uint64_t PKFieldValueAddedServiceModeForNFValueAddedServiceMode(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 0;
  }

  else
  {
    return 4 - a1;
  }
}

uint64_t PKFieldTerminalTypeForNFTerminalType(int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return 3;
    }

    return 0;
  }

  return 2;
}

uint64_t PKFieldAccessTerminalSubtypeNFTerminalSubtype(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9B3F8[a1];
  }
}

id PKFieldTechnologyDescriptions(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"A"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"B"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v3 addObject:@"F"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"ECP"];
  }

LABEL_6:
  if (![v3 count])
  {
    [v3 addObject:@"Unknown"];
  }

  return v3;
}

uint64_t PKLinkNearField()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  PKNearFieldRadioIsAvailable();

  return PKSecureElementIsAvailable();
}

uint64_t PKNearFieldSupportsSimultaneousRequestRouting()
{
  if (qword_1ED6D2238 != -1)
  {
    dispatch_once(&qword_1ED6D2238, &__block_literal_global_221);
  }

  return _MergedGlobals_278;
}

void __PKNearFieldSupportsSimultaneousRequestRouting_block_invoke()
{
  v0 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  _MergedGlobals_278 = [v0 areFeaturesSupported:2048 outError:0];
}

BOOL PKNearFieldRadioIsEnabled()
{
  v8 = *MEMORY[0x1E69E9840];
  if (!PKNearFieldRadioIsAvailable())
  {
    return 0;
  }

  v5 = 0;
  v0 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v1 = [v0 getRadioEnabledState:&v5];
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving the NFC radio enabled state failed with an error: %@", buf, 0xCu);
    }

    v3 = 0;
    v5 = 0;
  }

  else
  {
    v3 = v5 == 1;
  }

  return v3;
}

uint64_t PKNearFieldLowPowerSupportIsAvailable()
{
  if (qword_1ED6D2240 != -1)
  {
    dispatch_once(&qword_1ED6D2240, &__block_literal_global_48_0);
  }

  return byte_1ED6D2231;
}

void __PKNearFieldLowPowerSupportIsAvailable_block_invoke()
{
  v0 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  byte_1ED6D2231 = [v0 areFeaturesSupported:128 outError:0];
}

id PKAPRFromAPY(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100"];
  v5 = [v3 decimalNumberByDividingBy:v4];

  if (a2 >= 1 && v5)
  {
    v6 = [MEMORY[0x1E696AB90] one];
    v7 = MEMORY[0x1E696AB90];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v9 = v8;
    if (v8)
    {
      [v8 decimalValue];
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    v11 = [v7 decimalNumberWithDecimal:&v27];

    v12 = [v5 decimalNumberByAdding:v6];
    v13 = [v6 decimalNumberByDividingBy:v11];
    [v12 doubleValue];
    v15 = v14;
    [v13 doubleValue];
    v17 = pow(v15, v16);
    v18 = MEMORY[0x1E696AB90];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v20 = v19;
    if (v19)
    {
      [v19 decimalValue];
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    v21 = [v18 decimalNumberWithDecimal:&v27];
    v22 = [v21 decimalNumberBySubtracting:v6];

    v23 = [v22 decimalNumberByMultiplyingBy:v11];
    v24 = [v23 decimalNumberByMultiplyingByPowerOf10:2];

    v25 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v10 = [v24 decimalNumberByRoundingAccordingToBehavior:v25];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

__CFString *PKAccountStatementMetadataItemStatusToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"missing";
  }

  if (a1 == 1)
  {
    return @"onDevice";
  }

  else
  {
    return v1;
  }
}

__CFString *PKAccountStatementMetadataItemErrorToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2C68[a1];
  }
}

__CFString *PKAccountStatementMetadataItemTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"accountEvent";
  }

  if (a1 == 1)
  {
    return @"transaction";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAccountStatementMetadataItemTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"transaction")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"transaction"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"accountEvent" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"accountEvent"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKPassTileWidthClassHorizontalFlowToString(uint64_t a1)
{
  v1 = @"default";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"compact";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPassTileWidthClassHorizontalFlowFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"default" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"default"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    if (v5 == @"compact" || v2 && (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"compact"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t PDAccountEndpointBackOffAccountTypeFromFeatureIdentifier(unint64_t a1)
{
  if (a1 > 5)
  {
    return 2;
  }

  else
  {
    return qword_1ADB9B470[a1];
  }
}

id PDErrorDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 localizedDescription];
  v3 = [v1 userInfo];

  v4 = [v3 objectForKey:*MEMORY[0x1E696AA08]];
  v5 = [v4 localizedDescription];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v2, v5];
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;

  return v7;
}

__CFString *PKStringFromAccountPhysicalCardStatusUpdateReason(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2DC8[a1 - 1];
  }
}

uint64_t PKAccountPhysicalCardStatusUpdateReasonFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1 == @"expiration")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_32:
    v4 = 0;
    goto LABEL_33;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"expiration"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"fraud" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"fraud"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_33;
    }

    v8 = v6;
    if (v8 == @"lost" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"lost"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_33;
    }

    v11 = v9;
    if (v11 == @"damaged" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"damaged"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_33;
    }

    v14 = v12;
    if (v14 == @"stolen" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"stolen"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_33;
    }

    v17 = v15;
    if (v17 == @"returned" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"returned"], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_33;
    }

    v20 = v18;
    if (v20 == @"orderactivity" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"orderactivity"], v21, (v22 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_33;
    }

    v23 = v21;
    if (v23 == @"neveractivated" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"neveractivated"], v24, (v25 & 1) != 0))
    {
      v4 = 8;
      goto LABEL_33;
    }

    v26 = v24;
    if (v26 == @"activationlimit" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"activationlimit"], v27, (v28 & 1) != 0))
    {
      v4 = 9;
      goto LABEL_33;
    }

    v29 = v27;
    if (v29 == @"other" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"other"], v30, v31))
    {
      v4 = 10;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_4:
  v4 = 1;
LABEL_33:

  return v4;
}

__CFString *PKPaymentRewardsBalanceTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2E18[a1 - 1];
  }
}

uint64_t PKPaymentRewardsBalanceTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"points")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"points"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"miles" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"miles"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"cashback" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"cashback"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

__CFString *PKPaymentRewardsBalanceRoundingStrategyToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"undefined";
  }

  else
  {
    return off_1E79E2E30[a1 - 1];
  }
}

uint64_t PKPaymentRewardsBalanceRoundingStrategyFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"up")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"up"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"down" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"down"], v6, (v7 & 1) != 0))
    {
      v4 = 1;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"halfEven" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"halfEven"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 2;
LABEL_12:

  return v4;
}

__CFString *PKPeerPaymentQuoteRequestDestinationTypeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2EB0[a1];
  }
}

__CFString *PKPeerPaymentQuoteRequestSourceTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2EE0[a1 - 1];
  }
}

void sub_1ADA8D4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKPaymentRequestorToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E79E32B0[a1];
  }
}

__CFString *PKPaymentRequestTypeToString(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E79E32E0[a1];
  }
}

__CFString *PKShippingTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E79E3360[a1];
  }
}

__CFString *PKApplePayLaterAvailabilityToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79E3380[a1];
  }
}

id PKMerchantCapabilityToStrings(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"3DS"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"EMV"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"Credit"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v3 addObject:@"Debit"];
  if ((a1 & 0x10) != 0)
  {
LABEL_6:
    [v3 addObject:@"eWallet"];
  }

LABEL_7:
  v4 = [v3 copy];

  return v4;
}

uint64_t PKMerchantCapabilityFromStrings(void *a1)
{
  v1 = [a1 pk_arrayByApplyingBlock:&__block_literal_global_226];
  v2 = [v1 containsObject:@"3DS"];
  if ([v1 containsObject:@"EMV"])
  {
    v2 |= 2uLL;
  }

  if ([v1 containsObject:@"CREDIT"])
  {
    v2 |= 4uLL;
  }

  if ([v1 containsObject:@"DEBIT"])
  {
    v2 |= 8uLL;
  }

  if ([v1 containsObject:@"EWALLET"])
  {
    v2 |= 0x10uLL;
  }

  if ([v1 containsObject:@"PSD2"])
  {
    v2 |= 0x40uLL;
  }

  return v2;
}

void sub_1ADA8FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKAccountServicingEventStatusFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"new"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"open"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"pending"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"approved"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"rejected"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"withdrawn"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"unavailable"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountServicingEventStatusToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E3398[a1];
  }
}

__CFString *PKAccountServicingEventActivityTypeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E33D8[a1];
  }
}

uint64_t PKAccountServicingEventActivityTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"transaction"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"payment"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"statement"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"creditbureau"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"rewards"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKFlightStateToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E3408[a1 - 1];
  }
}

uint64_t PKFlightStateFromFUFlightState(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9B4B0[a1 - 1];
  }
}

uint64_t PKFlightStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"scheduled"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"enRoute"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"redirectedEnRoute"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"arrived"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"redirectedArrived"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"canceled"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"departed"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"landed"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKFlightStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E3448[a1 - 1];
  }
}

uint64_t PKFlightStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"early"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"onTime"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"delayed"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKFlightStatusFromFUFlightTimeStatus(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t PKFlightDataSourceFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PKFlightDataSourcePass"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PKFlightDataSourceFlightUtilities"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPassengerCapabilitiesFromStrings(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v1)
  {
    v3 = 0;
    goto LABEL_26;
  }

  v2 = v1;
  v3 = 0;
  v4 = *v25;
  v5 = @"PKPassengerCapabilityCarryon";
  v6 = @"PKPassengerCapabilityPreboarding";
  do
  {
    v7 = 0;
    do
    {
      v8 = v5;
      v9 = v6;
      if (*v25 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * v7);
      if (v10 == @"PKPassengerCapabilityPersonalItem")
      {
        goto LABEL_9;
      }

      v11 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      v12 = [@"PKPassengerCapabilityPersonalItem" isEqualToString:v10];

      if (v12)
      {
LABEL_9:
        v3 |= 1uLL;
        goto LABEL_10;
      }

      v13 = v11;
      v5 = v8;
      if (v13 != v8)
      {
        v14 = v13;
        v15 = [(__CFString *)v8 isEqualToString:v13];

        v5 = v8;
        if (!v15)
        {
          v16 = v14;
          v6 = v9;
          if (v16 == v9 || (v17 = v16, v18 = [(__CFString *)v9 isEqualToString:v16], v17, v6 = v9, v18))
          {
            v3 |= 4uLL;
          }

          else
          {
            v19 = v17;
            if (v19 == @"PKPassengerCapabilityPriorityBoarding" || (v20 = [@"PKPassengerCapabilityPriorityBoarding" isEqualToString:v19], v19, v20))
            {
              v3 |= 8uLL;
            }

LABEL_10:
            v6 = v9;
          }

          v5 = v8;
          goto LABEL_12;
        }
      }

      v3 |= 2uLL;
      v6 = v9;
LABEL_12:
      ++v7;
    }

    while (v2 != v7);
    v21 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    v2 = v21;
    v5 = v8;
    v6 = v9;
  }

  while (v21);
LABEL_26:

  return v3;
}

uint64_t PKTransitSecurityProgramsFromStrings(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a1;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  v1 = 0;
  if (v28)
  {
    v27 = *v30;
    v2 = @"PKTransitSecurityProgramTSAPreCheckTouchlessID";
    v3 = @"PKTransitSecurityProgramOSS";
    do
    {
      v4 = 0;
      do
      {
        v5 = v2;
        v6 = v3;
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v4);
        if (v7 == @"PKTransitSecurityProgramTSAPreCheck")
        {
          goto LABEL_9;
        }

        v8 = v7;
        if (!v7)
        {
          goto LABEL_10;
        }

        v9 = [@"PKTransitSecurityProgramTSAPreCheck" isEqualToString:v7];

        if (v9)
        {
LABEL_9:
          v1 |= 1uLL;
          goto LABEL_10;
        }

        v10 = v8;
        v2 = v5;
        if (v10 != v5)
        {
          v11 = v10;
          v12 = [(__CFString *)v5 isEqualToString:v10];

          v2 = v5;
          if (!v12)
          {
            v13 = v11;
            v3 = v6;
            if (v13 == v6 || (v14 = v13, v15 = [(__CFString *)v6 isEqualToString:v13], v14, v3 = v6, v15))
            {
              v1 |= 4uLL;
            }

            else
            {
              v16 = v14;
              if (v16 == @"PKTransitSecurityProgramITI" || (v17 = [@"PKTransitSecurityProgramITI" isEqualToString:v16], v16, v17))
              {
                v1 |= 8uLL;
              }

              else
              {
                v18 = v16;
                if (v18 == @"PKTransitSecurityProgramITD" || (v19 = [@"PKTransitSecurityProgramITD" isEqualToString:v18], v18, v19))
                {
                  v1 |= 0x10uLL;
                }

                else
                {
                  v20 = v18;
                  if (v20 == @"PKTransitSecurityProgramGlobalEntry" || (v21 = [@"PKTransitSecurityProgramGlobalEntry" isEqualToString:v20], v20, v21))
                  {
                    v1 |= 0x20uLL;
                  }

                  else
                  {
                    v22 = v20;
                    if (v22 == @"PKTransitSecurityProgramCLEAR" || (v23 = [@"PKTransitSecurityProgramCLEAR" isEqualToString:v22], v22, v23))
                    {
                      v1 |= 0x40uLL;
                    }
                  }
                }
              }

LABEL_10:
              v3 = v6;
            }

            v2 = v5;
            goto LABEL_12;
          }
        }

        v1 |= 2uLL;
        v3 = v6;
LABEL_12:
        ++v4;
      }

      while (v28 != v4);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v2 = v5;
      v3 = v6;
      v28 = v24;
    }

    while (v24);
  }

  return v1;
}

uint64_t PKIATAServiceSSRCodesFromStrings(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a1;
  v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v44)
  {
    v45 = 0;
    goto LABEL_57;
  }

  v45 = 0;
  v43 = *v47;
  v1 = @"BSCT";
  v2 = @"DEAF";
  do
  {
    v3 = 0;
    do
    {
      v4 = v1;
      v5 = v2;
      if (*v47 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v46 + 1) + 8 * v3);
      if (v6 == @"BLND")
      {
        goto LABEL_9;
      }

      v7 = v6;
      if (!v6)
      {
        goto LABEL_11;
      }

      v8 = [@"BLND" isEqualToString:v6];

      if (v8)
      {
LABEL_9:
        v9 = v45 | 1;
        goto LABEL_10;
      }

      v10 = v7;
      v1 = v4;
      if (v10 != v4)
      {
        v11 = v10;
        v12 = [(__CFString *)v4 isEqualToString:v10];

        v1 = v4;
        if (!v12)
        {
          v13 = v11;
          v2 = v5;
          if (v13 == v5 || (v14 = v13, v15 = [(__CFString *)v5 isEqualToString:v13], v14, v2 = v5, v15))
          {
            v45 |= 4uLL;
            goto LABEL_12;
          }

          v16 = v14;
          if (v16 == @"PETC" || (v17 = [@"PETC" isEqualToString:v16], v16, v17))
          {
            v9 = v45 | 8;
            goto LABEL_10;
          }

          v18 = v16;
          if (v18 == @"SVAN" || (v19 = [@"SVAN" isEqualToString:v18], v18, v19))
          {
            v9 = v45 | 0x10;
            goto LABEL_10;
          }

          v20 = v18;
          if (v20 == @"UMNR" || (v21 = [@"UMNR" isEqualToString:v20], v20, v21))
          {
            v9 = v45 | 0x20;
            goto LABEL_10;
          }

          v22 = v20;
          if (v22 == @"WCBD" || (v23 = [@"WCBD" isEqualToString:v22], v22, v23))
          {
            v9 = v45 | 0x40;
            goto LABEL_10;
          }

          v24 = v22;
          if (v24 == @"WCBW" || (v25 = [@"WCBW" isEqualToString:v24], v24, v25))
          {
            v9 = v45 | 0x80;
            goto LABEL_10;
          }

          v26 = v24;
          if (v26 == @"WCHC" || (v27 = [@"WCHC" isEqualToString:v26], v26, v27))
          {
            v9 = v45 | 0x100;
            goto LABEL_10;
          }

          v28 = v26;
          if (v28 == @"WCHR" || (v29 = [@"WCHR" isEqualToString:v28], v28, v29))
          {
            v9 = v45 | 0x200;
            goto LABEL_10;
          }

          v30 = v28;
          if (v30 == @"WCHS" || (v31 = [@"WCHS" isEqualToString:v30], v30, v31))
          {
            v9 = v45 | 0x400;
            goto LABEL_10;
          }

          v32 = v30;
          if (v32 == @"WCLB" || (v33 = [@"WCLB" isEqualToString:v32], v32, v33))
          {
            v9 = v45 | 0x800;
            goto LABEL_10;
          }

          v34 = v32;
          if (v34 == @"WCMP" || (v35 = v34, v36 = [@"WCMP" isEqualToString:v34], v35, v36))
          {
            v9 = v45 | 0x1000;
            goto LABEL_10;
          }

          v37 = v35;
          if (v37 == @"WCOB" || (v38 = v37, v39 = [@"WCOB" isEqualToString:v37], v38, v39))
          {
            v9 = v45 | 0x2000;
LABEL_10:
            v45 = v9;
          }

LABEL_11:
          v2 = v5;
LABEL_12:
          v1 = v4;
          goto LABEL_13;
        }
      }

      v45 |= 2uLL;
      v2 = v5;
LABEL_13:
      ++v3;
    }

    while (v44 != v3);
    v40 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    v1 = v4;
    v2 = v5;
    v44 = v40;
  }

  while (v40);
LABEL_57:

  return v45;
}

uint64_t PKIATAInformationSSRCodesFromStrings(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v16;
  do
  {
    v6 = 0;
    do
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      if (v7 == @"INFT")
      {
        goto LABEL_9;
      }

      v8 = v7;
      if (!v7)
      {
        goto LABEL_10;
      }

      v9 = [@"INFT" isEqualToString:v7];

      if (v9)
      {
LABEL_9:
        v4 |= 1uLL;
      }

      else
      {
        v10 = v8;
        if (v10 == @"TWOV" || (v11 = v10, v12 = [@"TWOV" isEqualToString:v10], v11, v12))
        {
          v4 |= 2uLL;
        }
      }

LABEL_10:
      ++v6;
    }

    while (v3 != v6);
    v13 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v3 = v13;
  }

  while (v13);
LABEL_18:

  return v4;
}

void sub_1ADA9B7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1ADA9CA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADA9F29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADAA85B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADAAE200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKAccountWebServiceDocumentTypeToString(uint64_t a1)
{
  v1 = @"statement";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"taxForm";
  }

  else
  {
    return v1;
  }
}

Class initMKWalletMerchantStylingInfo_1()
{
  if (qword_1ED6D2280 != -1)
  {
    dispatch_once(&qword_1ED6D2280, &__block_literal_global_229);
  }

  result = objc_getClass("MKWalletMerchantStylingInfo");
  _MergedGlobals_281 = result;
  getMKWalletMerchantStylingInfoClass_1[0] = MKWalletMerchantStylingInfoFunction_1;
  return result;
}

void *__LoadMapKit_block_invoke_4()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary_4 = result;
  return result;
}

id PKSeatingInformationNumberFormatter()
{
  if (_MergedGlobals_282 != -1)
  {
    dispatch_once(&_MergedGlobals_282, &__block_literal_global_230);
  }

  v1 = qword_1ED6D2290;

  return v1;
}

uint64_t __PKSeatingInformationNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = qword_1ED6D2290;
  qword_1ED6D2290 = v0;

  v2 = qword_1ED6D2290;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = qword_1ED6D2290;

  return [v4 setNumberStyle:0];
}

__CFString *PKPaymentSetupProductTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E3E68[a1 - 1];
  }
}

uint64_t PKPaymentSetupProductTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"bank" isEqualToString:v1] & 1) != 0 || (objc_msgSend(@"creditDebit", "isEqualToString:", v1))
  {
    v2 = 1;
  }

  else if ([@"bankApp" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"store" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"transit" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"eMoney" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"feature" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"default" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"eWallet" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"identity" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"issuerInstallments" isEqualToString:v1])
  {
    v2 = 12;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKSetupProductMethodTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"readerMode" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"digitalIssuance" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"inApp" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"appClip" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"cameraCapture" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"web" isEqualToString:v1])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentSupportedProvisioningMethodToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    v2 = @"unknown";
  }

  else
  {
    v2 = *off_1E79E3EC8[a1 - 1];
  }

  return v2;
}

uint64_t PKPaymentProductFlagsFromArray(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        if ([@"eMoneyDisabled" isEqualToString:*(*(&v8 + 1) + 8 * i)])
        {
          v4 = 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PKPaymentSetupHSA2RequirementFromString(void *a1)
{
  v1 = a1;
  if ([@"required" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = [@"recommended" isEqualToString:v1];
  }

  return v2;
}

__CFString *PKPaymentSetupProductStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E3F08[a1];
  }
}

uint64_t PKPaymentSetupProductStateFromString(void *a1)
{
  v1 = a1;
  if ([@"available" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"unavailable" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"notify" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"notifyRequested" isEqualToString:v1])
  {
    v2 = 4;
  }

  else
  {
    [@"unknown" isEqualToString:v1];
    v2 = 0;
  }

  return v2;
}

uint64_t PKComparePaymentSetupProductRegionPriority(uint64_t a1, uint64_t a2)
{
  if (a1 == 2 && a2 != 2)
  {
    return -1;
  }

  if (a1 != 2 && a2 == 2 || a1 == 1 && a2 != 1)
  {
    return 1;
  }

  v4 = a1 != 1 && a2 == 1;
  return v4 << 63 >> 63;
}

void __PKPaymentMinOSDictionaryFromDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 length])
  {
    if ([v8 isEqualToString:@"minOSVersion"])
    {
      v7 = @"iPhone";
    }

    else if ([v8 isEqualToString:@"miniPadOSVersion"])
    {
      v7 = @"iPad";
    }

    else if ([v8 isEqualToString:@"minWatchOSVersion"])
    {
      v7 = @"Watch";
    }

    else
    {
      if (![v8 isEqualToString:@"minMacOSVersion"])
      {
        goto LABEL_12;
      }

      v7 = @"Mac";
    }

    [*(a1 + 32) setObject:v6 forKey:v7];
  }

LABEL_12:
}

unint64_t PKAppletSubcredentialEntitlementTypeFromValue(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

id PKObjectDescription(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = 0x1E696A000uLL;
  if (v2)
  {
    v4 = v2;
    v46 = v1;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E695DF70] array];
    if ([(objc_class *)v4 superclass])
    {
      v7 = off_1E79C0000;
      v47 = v6;
      v48 = v5;
      do
      {
        v8 = NSStringFromClass(v4);
        v9 = [v5 objectForKeyedSubscript:v8];
        if (!v9)
        {
          v49 = v8;
          v10 = [MEMORY[0x1E695DF70] array];
          outCount = 0;
          v11 = class_copyPropertyList(v4, &outCount);
          v12 = v11;
          if (outCount)
          {
            v13 = 0;
            while (1)
            {
              v14 = v12[v13];
              v15 = objc_alloc(v7[10]);
              if (v15)
              {
                v16 = v14 == 0;
              }

              else
              {
                v16 = 1;
              }

              if (v16)
              {
              }

              else
              {
                v53.receiver = v15;
                v53.super_class = PKObjectProperty;
                v17 = objc_msgSendSuper2(&v53, sel_init);
                if (v17)
                {
                  v18 = v17;
                  v19 = [*(v3 + 3776) stringWithUTF8String:property_getName(v14)];
                  v20 = v18[1];
                  v18[1] = v19;

                  v21 = property_copyAttributeValue(v14, "V");
                  if (v21)
                  {
                    v22 = v21;
                    v23 = [*(v3 + 3776) stringWithUTF8String:v21];
                    v24 = v18[2];
                    v18[2] = v23;

                    free(v22);
                  }

                  v25 = property_copyAttributeValue(v14, "T");
                  if (!v25)
                  {
                    goto LABEL_53;
                  }

                  v26 = v25;
                  v27 = [*(v3 + 3776) stringWithUTF8String:v25];
                  free(v26);
                  if ([v27 hasPrefix:@"@"] && objc_msgSend(v27, "length") >= 4)
                  {
                    v28 = [v27 substringWithRange:{2, objc_msgSend(v27, "length") - 3}];
                    v18[4] = 1;
                    v29 = NSClassFromString(v28);
                    v30 = v18[3];
                    v18[3] = v29;

                    goto LABEL_51;
                  }

                  v32 = *[v27 UTF8String];
                  if (v32 <= 0x63)
                  {
                    if (v32 <= 75)
                    {
                      if (v32 == 66)
                      {
                        v33 = v18[5];
                        v18[4] = 14;
                        v34 = @"BOOLValue";
                      }

                      else
                      {
                        if (v32 != 73)
                        {
                          goto LABEL_56;
                        }

                        v33 = v18[5];
                        v18[4] = 8;
                        v34 = @"unsignedIntValue";
                      }
                    }

                    else
                    {
                      switch(v32)
                      {
                        case 'L':
                          v33 = v18[5];
                          v18[4] = 10;
                          v34 = @"unsignedLongValue";
                          break;
                        case 'Q':
                          v33 = v18[5];
                          v18[4] = 11;
                          v34 = @"unsignedLongLongValue";
                          break;
                        case 'S':
                          v33 = v18[5];
                          v18[4] = 9;
                          v34 = @"unsignedShortValue";
                          break;
                        default:
                          goto LABEL_56;
                      }
                    }
                  }

                  else if (v32 > 107)
                  {
                    switch(v32)
                    {
                      case 'l':
                        v33 = v18[5];
                        v18[4] = 6;
                        v34 = @"longValue";
                        break;
                      case 'q':
                        v33 = v18[5];
                        v18[4] = 7;
                        v34 = @"longLongValue";
                        break;
                      case 's':
                        v33 = v18[5];
                        v18[4] = 5;
                        v34 = @"shortValue";
                        break;
                      default:
                        goto LABEL_56;
                    }
                  }

                  else
                  {
                    switch(v32)
                    {
                      case 'd':
                        v33 = v18[5];
                        v18[4] = 13;
                        v34 = @"doubleValue";
                        break;
                      case 'f':
                        v33 = v18[5];
                        v18[4] = 12;
                        v34 = @"floatValue";
                        break;
                      case 'i':
                        v33 = v18[5];
                        v18[4] = 4;
                        v34 = @"intValue";
                        break;
                      default:
LABEL_56:
                        v18[4] = 0;
LABEL_47:
                        v35 = [*(v3 + 3776) stringWithUTF8String:"q"];
                        v36 = v3;
                        v37 = [v35 isEqualToString:v27];

                        if (v37)
                        {
                          v28 = v18[5];
                          v18[4] = 2;
                          v18[5] = @"integerValue";
                          v7 = off_1E79C0000;
                          goto LABEL_51;
                        }

                        v38 = [*(v36 + 3776) stringWithUTF8String:"Q"];
                        v39 = [v38 isEqualToString:v27];

                        v7 = off_1E79C0000;
                        if (v39)
                        {
                          v28 = v18[5];
                          v18[4] = 3;
                          v18[5] = @"unsignedIntegerValue";
LABEL_51:
                        }

                        v3 = 0x1E696A000;
LABEL_53:
                        v31 = v18;

                        [v10 addObject:v31];
                        goto LABEL_54;
                    }
                  }

                  v18[5] = v34;

                  goto LABEL_47;
                }
              }

              v31 = 0;
LABEL_54:

              if (++v13 >= outCount)
              {
                goto LABEL_58;
              }
            }
          }

          if (v11)
          {
LABEL_58:
            free(v12);
          }

          [v10 removeObjectsInArray:&unk_1F23B48C8];
          v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
          v5 = v48;
          v8 = v49;
          [v48 setObject:v9 forKeyedSubscript:v49];

          v6 = v47;
        }

        [v6 addObjectsFromArray:v9];
        v4 = [(objc_class *)v4 superclass];
      }

      while ([(objc_class *)v4 superclass]);
    }

    v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

    v1 = v46;
  }

  else
  {
    v40 = 0;
  }

  v41 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), v1];
  if (v40)
  {
    v42 = [v40 valueForKey:@"name"];
    v43 = [v1 dictionaryWithValuesForKeys:v42];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __PKObjectDescription_block_invoke;
    v50[3] = &unk_1E79C9900;
    v51 = v41;
    [v43 enumerateKeysAndObjectsUsingBlock:v50];
  }

  [v41 appendFormat:@">"];
  v44 = [*(v3 + 3776) stringWithString:v41];

  return v44;
}

void __PKObjectDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFB0];
  v6 = a3;
  v7 = a2;
  v9 = [v5 null];
  v8 = @"(null)";
  if (v9 != v6)
  {
    v8 = v6;
  }

  [v4 appendFormat:@"; %@: %@", v7, v8];
}

id _PKJSONCompliantRepresentationForObject(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 superclass])
  {
    v3 = _PKPropertyTypeForObject(v2);
    if ((v3 - 3) > 6)
    {
      outCount = 0;
      v5 = objc_opt_class();
      v6 = class_copyIvarList(v5, &outCount);
      if (outCount)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ivar_getName(v6[v7])];
          if ([v9 hasPrefix:@"_"])
          {
            v10 = [v9 substringFromIndex:1];

            v9 = v10;
          }

          if (([&unk_1F23B48B0 containsObject:v9] & 1) == 0)
          {
            NSSelectorFromString(v9);
            if (objc_opt_respondsToSelector())
            {
              v11 = [v2 valueForKey:v9];
            }

            else
            {
              v12 = [v9 substringToIndex:1];
              v13 = MEMORY[0x1E696AEC0];
              v14 = [v12 uppercaseString];
              v15 = [v9 substringFromIndex:1];
              v16 = [v14 stringByAppendingString:v15];
              v17 = [v13 stringWithFormat:@"is%@", v16];

              NSSelectorFromString(v17);
              if (objc_opt_respondsToSelector())
              {
                v11 = [v2 valueForKey:v9];
              }

              else
              {
                v11 = 0;
              }
            }

            if (v11)
            {
              v18 = _PKPropertyTypeForObject(v11);
              v19 = _PKResultingValueForProperty(v11, v18);
              if (v19)
              {
                if (!v8)
                {
                  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
                }

                [v8 setObject:v19 forKey:v9];
              }
            }
          }

          ++v7;
        }

        while (v7 < outCount);
      }

      else
      {
        v8 = 0;
      }

      if ([v8 count])
      {
        v4 = [v8 copy];
      }

      else
      {
        v4 = 0;
      }

      free(v6);
    }

    else
    {
      v4 = _PKResultingValueForProperty(v2, v3);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _PKPropertyTypeForObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 5;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 6;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = 7;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 8;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v2 = 9;
              }

              else
              {
                v2 = 2;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

id _PKResultingValueForProperty(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        goto LABEL_20;
      }

      v12 = [v3 absoluteString];
    }

    else
    {
      if (a2 == 1)
      {
        goto LABEL_20;
      }

      v12 = _PKJSONCompliantRepresentationForObject(v3);
    }

LABEL_21:
    v13 = v12;
    goto LABEL_46;
  }

  if (a2 <= 6)
  {
    if (a2 == 5)
    {
      v12 = PKW3CDateStringFromDate(v3);
      goto LABEL_21;
    }

LABEL_20:
    v12 = v3;
    goto LABEL_21;
  }

  if (a2 == 7)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = v4;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = [v14 objectForKeyedSubscript:v19];
          if (v20)
          {
            [v5 setObject:v20 forKey:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v16);
    }

    if ([v5 count])
    {
      v13 = [v5 copy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (a2 == 8)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v32;
        do
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = _PKJSONCompliantRepresentationForObject(*(*(&v31 + 1) + 8 * j));
            [v5 safelyAddObject:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v6 = v4;
      v21 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v6);
            }

            v25 = _PKJSONCompliantRepresentationForObject(*(*(&v27 + 1) + 8 * k));
            [v5 safelyAddObject:{v25, v27}];
          }

          v22 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
        }

        while (v22);
      }
    }

    if ([v5 count])
    {
      v13 = [v5 copy];
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_46:

  return v13;
}

__CFString *PKMobileAssetStringsIdentifierFromFeatureIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79E4378[a1 - 1];
  }
}

void sub_1ADACCEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose((v62 - 248), 8);
  _Block_object_dispose((v62 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1ADACE2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADAD8B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADAD90B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADADD688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADADD834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ADAE31DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKPrecursorPassUpgradeRequestActionFromPKIdentityProofingDisplayMessageAction(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [[PKPrecursorPassUpgradeRequestAction alloc] _init];
    v3 = [v1 title];
    [v2 setLocalizedActionText:v3];

    v4 = [v1 actionType];
    v5 = 6;
    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4 == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    [v2 setActionType:v6];
    if ([v1 actionType] == 2)
    {
      v7 = [v1 actionURL];

      if (v7)
      {
        v8 = [v1 actionURL];
        [v2 setActionURL:v8];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class initCIDVUIProofingFlowManager_0()
{
  if (qword_1ED6D22C0 != -1)
  {
    dispatch_once(&qword_1ED6D22C0, &__block_literal_global_236);
  }

  result = objc_getClass("CIDVUIProofingFlowManager");
  _MergedGlobals_285 = result;
  getCIDVUIProofingFlowManagerClass_0[0] = CIDVUIProofingFlowManagerFunction_0;
  return result;
}

void *__LoadCoreIDVUI_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/CoreIDVUI.framework/CoreIDVUI", 2);
  LoadCoreIDVUI_frameworkLibrary_0 = result;
  return result;
}

uint64_t PKProtobufCloudStoreZoneInvitationResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(PKProtobufCloudStoreZoneInvitation);
        objc_storeStrong((a1 + 8), v21);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !PKProtobufCloudStoreZoneInvitationReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 20;
LABEL_51:
          *(a1 + v28) = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 16;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

unint64_t FKPaymentTransactionStatusFromPKPaymentTransactionStatus(unint64_t result)
{
  if (result >= 9)
  {
    return -1;
  }

  return result;
}

uint64_t FKPaymentTransactionTypeFromPKPaymentTransactionType(uint64_t result)
{
  if ((result - 1) >= 0x16)
  {
    return 0;
  }

  return result;
}

uint64_t PKMerchantCategoryFromFKPaymentTransactionCategory(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9B550[a1 - 1];
  }
}

uint64_t PKMerchantCategoryFromFKMerchantCategory(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  return result;
}

__CFString *PKPaymentRewardsRedemptionStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E4988[a1 - 1];
  }
}

uint64_t PKPaymentRewardsRedemptionStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"accepted")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"accepted"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"pending" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"pending"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_23;
    }

    v8 = v6;
    if (v8 == @"complete" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"complete"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_23;
    }

    v11 = v9;
    if (v11 == @"failed" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"failed"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_23;
    }

    v14 = v12;
    if (v14 == @"expired" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"expired"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_23;
    }

    v17 = v15;
    if (v17 == @"canceled" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"canceled"], v18, (v19 & 1) != 0) || (v20 = v18, v20 == @"cancelled") || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"cancelled"], v21, v22))
    {
      v4 = 6;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_4:
  v4 = 1;
LABEL_23:

  return v4;
}

uint64_t PKPassUpcomingPassInformationEntryTypeFromString(void *a1, void *a2)
{
  if (!a1)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  v5 = 0;
  v3 = a1;
  __PKPassUpcomingPassInformationEntryTypeFromString_block_invoke(&v5, v3, 0, a2);
  __PKPassUpcomingPassInformationEntryTypeFromString_block_invoke(&v5, v3, 1, a2);

  result = v5;
  if (a2 && (v5 & 1) == 0)
  {
LABEL_4:
    *a2 = 0;
  }

  return result;
}

void __PKPassUpcomingPassInformationEntryTypeFromString_block_invoke(_BYTE *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  if ((*a1 & 1) == 0)
  {
    v8 = @"event";
    if (a3 != 1)
    {
      v8 = 0;
    }

    if (!a3)
    {
      v8 = @"generic";
    }

    v14 = v7;
    v9 = v8;
    v10 = v14;
    v11 = v9;
    v12 = v11;
    if (v11 == v10)
    {

      v7 = v14;
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = [(__CFString *)v10 isEqualToString:v11];

      v7 = v14;
      if (!v13)
      {
        goto LABEL_11;
      }

      if (!a4)
      {
        goto LABEL_10;
      }
    }

    *a4 = a3;
LABEL_10:
    *a1 = 1;
  }

LABEL_11:
}

id PKValidateRequiredSemanticTag(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 objectForKeyedSubscript:v5];
  v14 = v6;
  if (v6)
  {
    if (a3)
    {
      v15 = v6;
      v16 = 0;
      *a3 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = PKValidationErrorWithReason(@"Semantics dictionary must contain tag '%@'", v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return v16;
}

id PKValidateAllRequiredSemanticTags(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = PKValidateRequiredSemanticTag(v3, *(*(&v12 + 1) + 8 * i), 0);
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id PKValidateAtLeastOneSemanticTag(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = PKValidateRequiredSemanticTag(v3, *(*(&v19 + 1) + 8 * i), 0);

        if (!v9)
        {

          v17 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v17 = PKValidationErrorWithReason(@"Semantics dictionary must contain one of '%@'", v10, v11, v12, v13, v14, v15, v16, v4);
LABEL_11:

  return v17;
}

void sub_1ADAFB2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFHSearchSuggestionController()
{
  if (qword_1EB5B7F08 != -1)
  {
    dispatch_once(&qword_1EB5B7F08, &__block_literal_global_142);
  }

  result = objc_getClass("FHSearchSuggestionController");
  qword_1EB5B7F00 = result;
  getFHSearchSuggestionControllerClass = FHSearchSuggestionControllerFunction;
  return result;
}

void *__LoadFinHealth_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealth.framework/FinHealth", 2);
  LoadFinHealth_frameworkLibrary_0 = result;
  return result;
}

id initFHInsightTypeOverallSpend_1()
{
  if (qword_1EB5B7F18 != -1)
  {
    dispatch_once(&qword_1EB5B7F18, &__block_literal_global_146);
  }

  v0 = dlsym(qword_1EB5B7F10, "FHInsightTypeOverallSpend");
  objc_storeStrong(&qword_1EB5B7EF8, *v0);
  _MergedGlobals_182 = FHInsightTypeOverallSpendFunction_1;
  v1 = qword_1EB5B7EF8;

  return v1;
}

void *__LoadFinHealthInsights_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealthInsights.framework/FinHealthInsights", 2);
  qword_1EB5B7F10 = result;
  return result;
}

id initFHInsightTypeCategorySpend_1()
{
  if (qword_1EB5B7F18 != -1)
  {
    dispatch_once(&qword_1EB5B7F18, &__block_literal_global_146);
  }

  v0 = dlsym(qword_1EB5B7F10, "FHInsightTypeCategorySpend");
  objc_storeStrong(&_MergedGlobals_7_1, *v0);
  off_1ED6D11A0 = FHInsightTypeCategorySpendFunction_1;
  v1 = _MergedGlobals_7_1;

  return v1;
}

uint64_t PKAppletSubcredentialVersionTypeFromKMLType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9B5D8[a1];
  }
}

uint64_t PKAppletSubcredentialCarKeyVehicleVersionFromInteger(uint64_t a1)
{
  v1 = 1;
  if (a1 == 257)
  {
    v1 = 2;
  }

  if (a1 == 768)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t PKAppletSubcredentialCarKeyVehicleVersionFromKMLVersion(uint64_t a1)
{
  v1 = 1;
  if (a1 == 257)
  {
    v1 = 2;
  }

  if (a1 == 768)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t PKAppletSubcredentialCarKeyVehicleVersionToKMLVersion(uint64_t a1)
{
  v1 = 256;
  if (a1 == 2)
  {
    v1 = 257;
  }

  if (a1 == 3)
  {
    return 768;
  }

  else
  {
    return v1;
  }
}

uint64_t PKAppletSubcredentialCarKeyVehicleVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"1.1")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"1.1"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"3.0" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"3.0"], v6, v7))
    {
      v4 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 2;
LABEL_9:

  return v4;
}

__CFString *PKAppletSubcredentialCarKeyVehicleVersionToString(uint64_t a1)
{
  v1 = @"1.0";
  if (a1 == 2)
  {
    v1 = @"1.1";
  }

  if (a1 == 3)
  {
    return @"3.0";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAppletSubcredentialCarKeyServerVersionFromInteger(uint64_t a1)
{
  if (a1 == 768)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t PKAppletSubcredentialCarKeyServerVersionFromKMLVersion(uint64_t a1)
{
  if (a1 == 768)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t PKAppletSubcredentialCarKeyServerVersionToKMLVersion(uint64_t a1)
{
  if (a1 == 2)
  {
    return 768;
  }

  else
  {
    return 256;
  }
}

uint64_t PKAppletSubcredentialCarKeyServerVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"3.0" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"3.0"], v2, v3))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

__CFString *PKAppletSubcredentialCarKeyServerVersionToString(uint64_t a1)
{
  if (a1 == 2)
  {
    return @"3.0";
  }

  else
  {
    return @"1.0";
  }
}

__n128 PKCarKeyAvailableVersionUpgradeFromKMLAvailableVersionUpgrade@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  if (a1->n128_u64[0] > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_1ADB9B5D8[a1->n128_u64[0]];
  }

  a2->n128_u64[0] = v2;
  a2->n128_u8[8] = a1->n128_u8[8];
  result = a1[1];
  a2[1] = result;
  return result;
}

uint64_t PKCarKeyAvailableVersionUpgradeNoneForType@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

BOOL PKAppletSubcredentialSupportsSharingInAChain(void *a1)
{
  v1 = a1;
  v2 = [v1 carKeyServerVersion] >= 2 && objc_msgSend(v1, "carKeyVehicleVersion") > 2;

  return v2;
}

id _PKDateFromRetryAfterHeader(void *a1)
{
  v1 = qword_1ED6D22E0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D22E0, &__block_literal_global_239);
  }

  v3 = [_MergedGlobals_287 dateFromString:v2];

  return v3;
}

uint64_t PKRetryAfterSecondsFromDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _PKDateFromRetryAfterHeader(v4);
  v6 = v5;
  if (v5)
  {
    [v5 timeIntervalSinceDate:v3];
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7;
  }

  else
  {
    v9 = [v4 integerValue];
    v8 = v9 & ~(v9 >> 63);
  }

  return v8;
}

uint64_t PKRetryAfterSecondsFromNow(void *a1)
{
  v1 = MEMORY[0x1E695DF00];
  v2 = a1;
  v3 = [v1 date];
  v4 = PKRetryAfterSecondsFromDate(v3, v2);

  return v4;
}

id PDPaymentServiceInterface()
{
  if (qword_1ED6D22F0 != -1)
  {
    dispatch_once(&qword_1ED6D22F0, &__block_literal_global_240);
  }

  v1 = _MergedGlobals_288;

  return v1;
}

void __PDPaymentServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F246E0D8];
  v1 = _MergedGlobals_288;
  _MergedGlobals_288 = v0;

  v2 = _MergedGlobals_288;

  _ConfigurePDPaymentServiceInterface(v2);
}

CFDataRef PKCreatePublicKeyFromDER(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  size = 0;
  v4 = 0;
  if (pkcc_x509_import_pub(BytePtr, &BytePtr[Length], &size, 0) && size)
  {
    v5 = malloc_type_malloc(size, 0x3B5A4022uLL);
    v7 = v5;
    pkcc_x509_import_pub(BytePtr, &BytePtr[Length], &size, &v7);
    v4 = CFDataCreate(*MEMORY[0x1E695E480], v5, size);
    free(v7);
  }

  return v4;
}

uint64_t pkcc_x509_import_pub(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  result = ccder_decode_sequence_tl();
  if (result)
  {
    result = ccder_decode_sequence_tl();
    if (result)
    {
      result = ccder_decode_oid();
      if (result)
      {
        if (!ccoid_equal())
        {
          return 0;
        }

        result = ccder_decode_oid();
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (!ccoid_equal())
        {
          return 0;
        }

        result = ccder_decode_bitstring();
        if (!result)
        {
          return result;
        }

        if (result - v10 == 33)
        {
          if (a4)
          {
            v7 = *a4;
            v8 = *v10;
            v9 = *(v10 + 16);
            *(v7 + 32) = *(v10 + 32);
            *v7 = v8;
            *(v7 + 16) = v9;
          }

          if (a3)
          {
            *a3 = 33;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFDataRef PKCreateDecryptedPassPayload(const __CFData *a1, const __CFData *a2, const __CFData *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1B26F8E30]();
  v9 = cczp_bitlen();
  if (!a1)
  {
    return 0;
  }

  v10 = v9;
  Length = CFDataGetLength(a1);
  v12 = 0;
  if (a2)
  {
    if (Length >= (v10 + 7) >> 3)
    {
      v13 = CFDataGetLength(a2);
      v12 = 0;
      if (a3)
      {
        if (v13 >= 5)
        {
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          ccsha256_di();
          ccaes_gcm_decrypt_mode();
          v14 = ccecies_decrypt_gcm_setup();
          MEMORY[0x1EEE9AC00](v14);
          *(&v23 - v15) = v8;
          CFDataGetBytePtr(a1);
          CFDataGetLength(a1);
          v12 = 0;
          if (!ccec_der_import_priv())
          {
            CFDataGetBytePtr(a2);
            CFDataGetLength(a2);
            v16 = ccecies_decrypt_gcm_plaintext_size();
            v24 = v16;
            if (v16 < 5)
            {
              v12 = 0;
            }

            else
            {
              v17 = &v23 - ((MEMORY[0x1EEE9AC00](v16) + 15) & 0xFFFFFFFFFFFFFFF0);
              BytePtr = CFDataGetBytePtr(a3);
              v19 = malloc_type_malloc(0x49uLL, 0x11FC3F0DuLL);
              if (v19)
              {
                v20 = v19;
                qmemcpy(v19, "\rid-aes256-GCMApplePay encrypted VAS data", 41);
                v21 = *(BytePtr + 1);
                *(v19 + 41) = *BytePtr;
                *(v19 + 57) = v21;
                v12 = 0;
                if (!ccecies_decrypt_gcm())
                {
                  if (a4)
                  {
                    *a4 = bswap32(*v17);
                  }

                  v12 = CFDataCreate(*MEMORY[0x1E695E480], v17 + 4, v24 - 4);
                }

                free(v20);
              }

              else
              {
                v12 = 0;
              }
            }
          }

          cc_clear();
        }
      }
    }
  }

  return v12;
}

uint64_t PKCreateEncryptedPassPayload(const __CFData *a1, const __CFData *a2, const __CFData *a3, unsigned int *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B26F8E30]();
  v8 = cczp_bitlen();
  if (!a1)
  {
    return 0;
  }

  v9 = v8;
  Length = CFDataGetLength(a1);
  v11 = 0;
  if (!a3 || !a2 || Length < (v9 + 7) >> 3)
  {
    return v11;
  }

  if (CFDataGetLength(a2) > 64)
  {
    return 0;
  }

  v11 = ccrng();
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  if (v11)
  {
    ccsha256_di();
    ccaes_gcm_encrypt_mode();
    ccecies_encrypt_gcm_setup();
    Current = CFAbsoluteTimeGetCurrent();
    v13 = CFDataGetLength(a2);
    v23 = &v23;
    v14 = (&v23 - ((MEMORY[0x1EEE9AC00](v13) + 19) & 0xFFFFFFFFFFFFFFF0));
    *v14 = bswap32(Current);
    BytePtr = CFDataGetBytePtr(a2);
    v16 = CFDataGetLength(a2);
    v17 = memmove(v14 + 1, BytePtr, v16);
    MEMORY[0x1EEE9AC00](v17);
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    if (ccec_compact_import_pub() || (v24 = ccecies_encrypt_gcm_ciphertext_size(), v24 > 0x7C) || (ccsha256_di(), ccdigest(), *bytes = v29, v18 = CFDataGetBytePtr(a3), (v19 = malloc_type_malloc(0x49uLL, 0x11FC3F0DuLL)) == 0))
    {
      v11 = 0;
    }

    else
    {
      v20 = v19;
      qmemcpy(v19, "\rid-aes256-GCMApplePay encrypted VAS data", 41);
      v21 = *(v18 + 1);
      *(v19 + 41) = *v18;
      *(v19 + 57) = v21;
      v11 = 0;
      if (!ccecies_encrypt_gcm())
      {
        v11 = CFDataCreate(*MEMORY[0x1E695E480], bytes, v24 + 4);
        if (a4)
        {
          *a4 = Current;
        }
      }

      free(v20);
    }

    cc_clear();
  }

  return v11;
}

id _PKAccountHash(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 lowercaseString];
  v2 = [v1 dataUsingEncoding:4];

  v3 = [v2 SHA256Hash];
  CCKeyDerivationPBKDF(2u, [v2 bytes], objc_msgSend(v2, "length"), objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"), 3u, 0xAu, derivedKey, 0x20uLL);
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:derivedKey length:32];

  return v4;
}

id PKAccountDSIDHash()
{
  v0 = PKCurrentUserAltDSID();
  v1 = v0;
  if (v0)
  {
    v2 = _PKAccountHash(v0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKAccountHash()
{
  v0 = +[PKAppleAccountManager sharedInstance];
  v1 = [v0 accountStore];

  v2 = [v1 aa_primaryAppleAccount];
  v3 = [v2 username];
  v4 = v3;
  if (v2)
  {
    v5 = _PKAccountHash(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PKPostalAddressHash(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CF68];
  v4 = a2;
  v5 = [v3 singleLineStringFromPostalAddress:a1 addCountryName:1];
  v6 = [v5 lowercaseString];
  v7 = [v6 dataUsingEncoding:4];

  v8 = [v4 dataUsingEncoding:4];

  CCKeyDerivationPBKDF(2u, [v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"), 3u, 0xAu, derivedKey, 0x20uLL);
  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:derivedKey length:32];

  return v9;
}

CFDataRef PKPublicKeyFromCertificate(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v1)) != 0)
  {
    v3 = v2;
    v4 = SecCertificateCopyKey(v2);
    if (v4)
    {
      v5 = v4;
      v6 = SecKeyCopyExternalRepresentation(v4, 0);
      CFRelease(v3);
      v3 = v5;
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t PKFelicaAppletTypeFromSPID(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 unsignedCharValue] - 1, v3 <= 2))
  {
    v4 = qword_1ADB9B5F0[v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *PKPeerPaymentPreferencesSendRestrictionTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79E4AA0[a1];
  }
}

uint64_t PKPeerPaymentPreferencesSendRestrictionTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"contacts")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"contacts"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"family" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"family"], v6, (v7 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"anyone" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"anyone"], v9, v10))
    {
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 2;
LABEL_12:

  return v4;
}

__CFString *PKPeerPaymentPreferencesReceiveRestrictionTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E79E4AC8[a1];
  }
}

uint64_t PKPeerPaymentPreferencesReceiveRestrictionTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"family")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"family"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"anyone" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"anyone"], v6, v7))
    {
      v4 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 2;
LABEL_9:

  return v4;
}

__CFString *PKPeerPaymentPreferencesNotificationTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"purchases";
  }

  else
  {
    return v1;
  }
}

BOOL PKPeerPaymentPreferencesNotificationTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"purchases")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"purchases"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t PKProtobufDisbursementSummaryItemReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}