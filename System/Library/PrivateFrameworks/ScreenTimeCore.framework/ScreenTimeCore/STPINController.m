@interface STPINController
+ (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)a3;
- (BOOL)_authenticateWithPIN:(id)a3 forUser:(id)a4 allowPasscodeRecovery:(BOOL)a5 error:(id *)a6;
- (BOOL)_isPINValid:(id)a3;
- (BOOL)_saveChangesForUser:(id)a3 error:(id *)a4;
- (BOOL)_setPasscode:(id)a3 recoveryAppleID:(id)a4 forUser:(id)a5 error:(id *)a6;
- (BOOL)authenticateWithPIN:(id)a3 error:(id *)a4;
- (BOOL)canRecoveryAuthenticate;
- (STPINController)initWithUser:(id)a3;
- (id)_timeoutEndDateForAttemptNumber:(int64_t)a3;
- (void)_beginTimeoutUntilDate:(id)a3;
- (void)_setNewPIN:(id)a3 currentPIN:(id)a4 recoveryAppleIDPrompt:(id)a5 completionHandler:(id)a6;
- (void)authenticateWithPIN:(id)a3 allowPasscodeRecovery:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation STPINController

- (STPINController)initWithUser:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = STPINController;
  v6 = [(STPINController *)&v12 init];
  if (v6)
  {
    v7 = +[STLog pinController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(STPINController *)v6 initWithUser:v5, v7];
    }

    objc_storeStrong(&v6->_user, a3);
    v8 = [v5 passcodeEntryTimeoutEndDate];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DF00] now];
      v10 = [v8 compare:v9];

      if (v10 == 1)
      {
        objc_storeStrong(&v6->_timeoutEndDate, v8);
        [(STPINController *)v6 _beginTimeoutUntilDate:v8];
      }
    }
  }

  return v6;
}

- (BOOL)canRecoveryAuthenticate
{
  v3 = [(STPINController *)self user];
  v4 = [v3 effectiveRecoveryAltDSID];

  v5 = [v3 dsid];
  if ([v5 integerValue])
  {
    v6 = [v3 familyMemberType];
    if ([v6 isEqualToString:@"Child"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Teen"))
    {
      v7 = 0;
    }

    else
    {
      v8 = [v3 altDSID];
      v7 = v8 != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [(STPINController *)self timeoutEndDate];
  if (v9)
  {
    v10 = [v3 passcodeRecoveryAttemptCount] < 1;
  }

  else
  {
    v10 = 1;
  }

  return (v4 != 0 || v7) && v10;
}

- (BOOL)_isPINValid:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 == [objc_opt_class() pinLength])
  {
    v5 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v6 = [v5 invertedSet];

    v7 = [v3 rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setNewPIN:(id)a3 currentPIN:(id)a4 recoveryAppleIDPrompt:(id)a5 completionHandler:(id)a6
{
  v66[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 || [(STPINController *)self _isPINValid:v11])
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__11;
    v59 = __Block_byref_object_dispose__11;
    v60 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v15 = [(STPINController *)self user];
    v16 = [v15 managedObjectContext];
    [v16 setMergePolicy:*MEMORY[0x1E695D370]];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke;
    v41[3] = &unk_1E7CE7B18;
    v17 = v16;
    v42 = v17;
    v18 = v15;
    v43 = v18;
    v44 = v12;
    v48 = &v55;
    v19 = v11;
    v45 = v19;
    v49 = &v51;
    v20 = v13;
    v50 = &v61;
    v46 = self;
    v47 = v20;
    [v17 performBlockAndWait:v41];
    if (*(v62 + 24) == 1)
    {
      if (*(v52 + 24) == 1)
      {
        if (!v20)
        {
          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          [v32 handleFailureInMethod:a2 object:self file:@"STPINController.m" lineNumber:169 description:@"Recovery Apple ID prompt must not be nil"];
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_41;
        v33[3] = &unk_1E7CE7B68;
        v39 = &v61;
        v34 = v17;
        v35 = self;
        v36 = v19;
        v37 = v18;
        v40 = &v55;
        v38 = v14;
        (*(v20 + 2))(v20, v33);

        goto LABEL_12;
      }

      v21 = 0;
    }

    else
    {
      v21 = v56[5];
    }

    (*(v14 + 2))(v14, v21);
LABEL_12:

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);

    _Block_object_dispose(&v61, 8);
    goto LABEL_13;
  }

  v22 = +[STScreenTimeCoreBundle bundle];
  v23 = [v22 localizedStringForKey:@"PINInvalidError" value:&stru_1F3040980 table:0];
  v24 = [v22 localizedStringForKey:@"EnterValidPIN" value:&stru_1F3040980 table:0];
  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = [MEMORY[0x1E695DF58] currentLocale];
  v27 = [v25 initWithFormat:v24 locale:v26, objc_msgSend(objc_opt_class(), "pinLength")];

  v28 = *MEMORY[0x1E696A598];
  v65[0] = *MEMORY[0x1E696A578];
  v65[1] = v28;
  v66[0] = v23;
  v66[1] = v27;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:20 userInfo:v29];
  (*(v14 + 2))(v14, v30);

LABEL_13:
  v31 = *MEMORY[0x1E69E9840];
}

void __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) refreshObject:*(a1 + 40) mergeChanges:1];
  v2 = *(a1 + 40);
  if (v2 && ([v2 isDeleted] & 1) == 0)
  {
    v3 = [*(a1 + 40) effectivePasscode];
    if (v3 && ([*(a1 + 48) isEqualToString:v3] & 1) == 0)
    {
      v4 = +[STScreenTimeCoreBundle bundle];
      v5 = [v4 localizedStringForKey:@"PINIncorrectError" value:&stru_1F3040980 table:0];

      v6 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E696A578];
      v38[0] = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v8 = [v6 initWithDomain:@"STErrorDomain" code:18 userInfo:v7];
      v9 = *(*(a1 + 80) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = a1 + 80;
    v12 = *(*(a1 + 80) + 8);
    v14 = *(v12 + 40);
    v13 = (v12 + 40);
    if (!v14)
    {
      if (*(a1 + 56))
      {
        v15 = [*(a1 + 40) effectiveRecoveryAltDSID];
        v16 = [*(a1 + 40) familyMemberType];
        if (!*(a1 + 72) || v15)
        {
          v26 = a1 + 88;
          *(*(*(a1 + 88) + 8) + 24) = 0;
        }

        else
        {
          v17 = [*(a1 + 40) dsid];
          v18 = [v17 integerValue];
          v19 = 1;
          if (v18 && v16)
          {
            if ([v16 isEqualToString:@"Unknown"])
            {
              v19 = 1;
            }

            else if ([v16 isEqualToString:@"Adult"])
            {
              v19 = [*(a1 + 40) isManaged] ^ 1;
            }

            else
            {
              v19 = 0;
            }
          }

          v26 = a1 + 88;
          *(*(*(a1 + 88) + 8) + 24) = v19;
        }

        if (*(*(*v26 + 8) + 24))
        {
          *(*(*(a1 + 96) + 8) + 24) = 1;
        }

        else
        {
          v29 = *(a1 + 56);
          v28 = *(a1 + 64);
          v30 = *(a1 + 40);
          v31 = *(*(a1 + 80) + 8);
          v36 = *(v31 + 40);
          v32 = [v28 _setPasscode:v29 recoveryAppleID:v15 forUser:v30 error:&v36];
          objc_storeStrong((v31 + 40), v36);
          *(*(*(a1 + 96) + 8) + 24) = v32;
        }
      }

      else
      {
        v20 = *(a1 + 40);
        obj = 0;
        v21 = [STBlueprint deleteManagedUserBlueprintForUser:v20 error:&obj];
        objc_storeStrong(v13, obj);
        *(*(*(a1 + 96) + 8) + 24) = v21;
        if (*(*(*(a1 + 96) + 8) + 24) == 1)
        {
          [*(a1 + 40) setEffectivePasscode:0];
          [*(a1 + 40) setEffectiveRecoveryAltDSID:0];
          [*(a1 + 40) setContactsEditable:1];
          [*(a1 + 40) setIsCommunicationSafetySendingRestricted:0];
          [*(a1 + 40) setIsCommunicationSafetyReceivingRestricted:0];
          [*(a1 + 40) setIsCommunicationSafetyNotificationEnabled:0];
          [*(a1 + 40) setIsCommunicationSafetyAnalyticsEnabled:0];
          v22 = *(a1 + 64);
          v23 = *(a1 + 40);
          v24 = *(*(a1 + 80) + 8);
          v34 = *(v24 + 40);
          v25 = [v22 _saveChangesForUser:v23 error:&v34];
          objc_storeStrong((v24 + 40), v34);
          *(*(*(a1 + 96) + 8) + 24) = v25;
        }

        else
        {
          v27 = +[STLog pinController];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_cold_1(v11);
          }
        }
      }
    }
  }

  else
  {
    v3 = +[STLog pinController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_cold_2(a1);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7CE7B40;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v14 = *(a1 + 72);
    v10[4] = v4;
    v11 = v6;
    v12 = v3;
    v7 = *(a1 + 56);
    v8 = *(a1 + 80);
    v13 = v7;
    v15 = v8;
    [v5 performBlockAndWait:v10];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(*(a1 + 80) + 8) + 40);
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v9);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 _setPasscode:v3 recoveryAppleID:v4 forUser:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[8] + 8) + 24) = v7;
}

- (BOOL)_setPasscode:(id)a3 recoveryAppleID:(id)a4 forUser:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([STBlueprint saveManagedUserBlueprintForUser:v12 error:a6])
  {
    [v12 setEffectivePasscode:v10];
    [v12 setEffectiveRecoveryAltDSID:v11];
    v13 = [(STPINController *)self _saveChangesForUser:v12 error:a6];
  }

  else
  {
    v14 = +[STLog pinController];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STPINController _setPasscode:a6 recoveryAppleID:? forUser:? error:?];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_saveChangesForUser:(id)a3 error:(id *)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 managedObjectContext];
  v7 = [v6 save:a4];

  if ((v7 & 1) == 0)
  {
    v8 = +[STLog pinController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(STPINController *)v5 _saveChangesForUser:a4 error:v8];
    }

    v9 = +[STScreenTimeCoreBundle bundle];
    v10 = [v9 localizedStringForKey:@"PersistPINError" value:&stru_1F3040980 table:0];

    v11 = *MEMORY[0x1E696A578];
    v18[0] = v10;
    v12 = *MEMORY[0x1E696AA08];
    v17[0] = v11;
    v17[1] = v12;
    v13 = STXPCSafeErrorFromCoreDataError(*a4, 1);
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)authenticateWithPIN:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STPINController *)self user];
  v8 = [v7 managedObjectContext];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__STPINController_authenticateWithPIN_error___block_invoke;
  v13[3] = &unk_1E7CE7B90;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [v8 performBlockAndWait:v13];
  if (a4)
  {
    *a4 = v18[5];
  }

  v11 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __45__STPINController_authenticateWithPIN_error___block_invoke(uint64_t a1)
{
  v2 = a1 + 56;
  v1 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(v2 - 16);
  v5 = *(v2 - 8);
  v6 = *(v1 + 8);
  obj = *(v6 + 40);
  v7 = [v3 _authenticateWithPIN:v4 forUser:v5 allowPasscodeRecovery:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if ((v7 & 1) == 0)
  {
    v8 = +[STLog pinController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __45__STPINController_authenticateWithPIN_error___block_invoke_cold_1(v2);
    }
  }
}

- (void)authenticateWithPIN:(id)a3 allowPasscodeRecovery:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(STPINController *)self user];
  v11 = [v10 managedObjectContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__STPINController_authenticateWithPIN_allowPasscodeRecovery_completionHandler___block_invoke;
  v15[3] = &unk_1E7CE7BB8;
  v15[4] = self;
  v16 = v8;
  v19 = a4;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  [v11 performBlock:v15];
}

void __79__STPINController_authenticateWithPIN_allowPasscodeRecovery_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v10 = 0;
  v6 = [v2 _authenticateWithPIN:v3 forUser:v4 allowPasscodeRecovery:v5 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = +[STLog pinController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__STPINController_authenticateWithPIN_allowPasscodeRecovery_completionHandler___block_invoke_cold_1();
    }
  }

  v9 = STSafeErrorFromCoreDataError(v7);
  (*(*(a1 + 56) + 16))(*(a1 + 56), v9, [*(a1 + 48) passcodeEntryAttemptCount]);
}

- (BOOL)_authenticateWithPIN:(id)a3 forUser:(id)a4 allowPasscodeRecovery:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v47[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [(STPINController *)self timeoutEndDate];

  if (!v12 || v7 && [(STPINController *)self canRecoveryAuthenticate])
  {
    v13 = [v11 managedObjectContext];
    [v13 refreshObject:v11 mergeChanges:1];
    if (!v11 || [v11 isDeleted])
    {
      v14 = +[STLog pinController];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STPINController _authenticateWithPIN:v11 forUser:v14 allowPasscodeRecovery:? error:?];
      }

      if (a6)
      {
        v15 = 0;
        *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:11 userInfo:0];
LABEL_37:

        goto LABEL_38;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_37;
    }

    v19 = [v11 effectivePasscode];
    if (v19)
    {
      if (([v10 isEqualToString:v19] & 1) == 0)
      {
        if (v12)
        {
          [v11 setPasscodeRecoveryAttemptCount:{objc_msgSend(v11, "passcodeRecoveryAttemptCount") + 1}];
          v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:25 userInfo:0];
        }

        else
        {
          v26 = [v11 passcodeEntryAttemptCount];
          [v11 setPasscodeEntryAttemptCount:v26 + 1];
          v27 = +[STScreenTimeCoreBundle bundle];
          v28 = [v27 localizedStringForKey:@"PINIncorrectError" value:&stru_1F3040980 table:0];

          if (v26 < 5)
          {
            v42[0] = *MEMORY[0x1E696A578];
            v42[1] = @"PINAuthenticationAttempts";
            v43[0] = v28;
            v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v26 + 1];
            v43[1] = v29;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
          }

          else
          {
            v29 = [(STPINController *)self _timeoutEndDateForAttemptNumber:v26 + 1];
            [(STPINController *)self _beginTimeoutUntilDate:v29];
            [v11 setPasscodeEntryTimeoutEndDate:v29];
            v30 = *MEMORY[0x1E696A578];
            v45[0] = v28;
            v44[0] = v30;
            v44[1] = @"PINAuthenticationAttempts";
            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v26 + 1];
            v44[2] = @"PINTimeoutDate";
            v45[1] = v31;
            v45[2] = v29;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
          }

          v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:18 userInfo:v32];
        }

        goto LABEL_30;
      }

      [v11 setPasscodeEntryAttemptCount:0];
      [v11 setPasscodeEntryTimeoutEndDate:0];
      [v11 setPasscodeRecoveryAttemptCount:0];
      [(STPINController *)self setTimeoutEndDate:0];
      v20 = 0;
      if (!_os_feature_enabled_impl())
      {
LABEL_30:
        v39 = 0;
        v33 = [v13 save:&v39];
        v34 = v39;
        if ((v33 & 1) == 0)
        {
          v35 = +[STLog pinController];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            [STPINController _authenticateWithPIN:forUser:allowPasscodeRecovery:error:];
          }
        }

        if (a6)
        {
          v36 = v20;
          *a6 = v20;
        }

        v15 = v20 == 0;

        goto LABEL_37;
      }

      v21 = [MEMORY[0x1E695DF00] now];
      v22 = [v11 localUserDeviceState];
      v23 = [v22 device];
      [v23 setLastPasscodeUseDate:v21];

      v24 = +[STLog pinController];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v21;
        _os_log_impl(&dword_1B831F000, v24, OS_LOG_TYPE_DEFAULT, "Updating last passcode use date: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v25 = +[STLog pinController];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [STPINController _authenticateWithPIN:v25 forUser:? allowPasscodeRecovery:? error:?];
      }

      [v11 setPasscodeEntryAttemptCount:0];
    }

    v20 = 0;
    goto LABEL_30;
  }

  if (a6)
  {
    v16 = +[STScreenTimeCoreBundle bundle];
    v13 = [v16 localizedStringForKey:@"PINEntryTimeoutError" value:&stru_1F3040980 table:0];

    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v46 = *MEMORY[0x1E696A578];
    v47[0] = v13;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    *a6 = [v17 initWithDomain:@"STErrorDomain" code:24 userInfo:v18];

    goto LABEL_12;
  }

  v15 = 0;
LABEL_38:

  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_timeoutEndDateForAttemptNumber:(int64_t)a3
{
  v3 = 0.0;
  v4 = a3 - 6;
  if (a3 >= 6)
  {
    if (v4 > 2)
    {
      v3 = 3600.0;
    }

    else
    {
      v3 = dbl_1B83E7B40[v4];
    }
  }

  return [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v3];
}

- (void)_beginTimeoutUntilDate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(STPINController *)self setTimeoutEndDate:v4];
  [v4 timeIntervalSinceNow];
  v6 = v5;
  if (!csr_check())
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 integerForKey:@"com.apple.ScreenTimeAgent.PINTimeoutIntervalOverride"];

    if (v8 >= 1)
    {
      v9 = +[STLog pinController];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [STPINController _beginTimeoutUntilDate:v9];
      }

      v6 = v8;
    }
  }

  v10 = +[STLog pinController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v21 = vcvtpd_s64_f64(v6);
    _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_INFO, "Scheduled PIN timeout for %d seconds", buf, 8u);
  }

  v11 = [MEMORY[0x1E696ADC8] mainQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__STPINController__beginTimeoutUntilDate___block_invoke;
  v18[3] = &unk_1E7CE7AA0;
  v18[4] = self;
  v12 = v4;
  v19 = v12;
  [v11 addOperationWithBlock:v18];

  v13 = [(STPINController *)self backoffTimer];

  if (!v13)
  {
    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v15 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__STPINController__beginTimeoutUntilDate___block_invoke_2;
    handler[3] = &unk_1E7CE7AC8;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    [(STPINController *)self setBackoffTimer:v14];
    dispatch_activate(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __42__STPINController__beginTimeoutUntilDate___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = @"TimeoutEndDate";
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"PINTimeoutDidBegin" object:v4 userInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void __42__STPINController__beginTimeoutUntilDate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setBackoffTimer:0];
  v3 = +[STLog pinController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v3, OS_LOG_TYPE_INFO, "PIN backoff time fired", buf, 2u);
  }

  v4 = +[STLog pinController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_DEFAULT, "PIN backoff time fired", v6, 2u);
  }

  [*(a1 + 32) setTimeoutEndDate:0];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"PINTimeoutDidEnd" object:*(a1 + 32) userInfo:0];
}

+ (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = +[STScreenTimeAgentPrivateConnection newContactsServiceConnection];
    [v4 activate];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7CE7BE0;
    v7 = v4;
    v5 = v4;
    [STXPCRemoteObjectProxy proxyFromConnection:v5 proxyHandler:v6];
  }

  else
  {
    v3[2](v3, 0);
  }
}

void __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E7CE74E0;
    v8 = *(a1 + 32);
    [v5 sendPasscodeActivityToParentsWithReplyHandler:v7];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_cold_1();
    }

    [*(a1 + 32) invalidate];
  }
}

void __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v4)
    {
      __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (v4)
  {
    __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_2_cold_2();
  }

  [*(a1 + 32) invalidate];
}

- (void)initWithUser:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 dsid];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1B831F000, a3, OS_LOG_TYPE_DEBUG, "Created new PinController: %@ for user: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to delete managed user blueprint: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __81__STPINController__setNewPIN_currentPIN_recoveryAppleIDPrompt_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 80) + 8) + 40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v2, v3, "Failed to get user: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setPasscode:(uint64_t *)a1 recoveryAppleID:forUser:error:.cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v2, v3, "Failed to save managed user blueprint: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_saveChangesForUser:(NSObject *)a3 error:.cold.1(void *a1, uint64_t *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 objectID];
  v6 = *a2;
  OUTLINED_FUNCTION_2();
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1B831F000, a3, OS_LOG_TYPE_ERROR, "Failed to save PIN for %{public}@: %{public}@", v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__STPINController_authenticateWithPIN_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to authenticate PIN: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __79__STPINController_authenticateWithPIN_allowPasscodeRecovery_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to authenticate PIN: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_authenticateWithPIN:forUser:allowPasscodeRecovery:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "Failed to save pin entry attempt count: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_authenticateWithPIN:(void *)a1 forUser:(NSObject *)a2 allowPasscodeRecovery:error:.cold.3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 67109120;
  v4[1] = [a1 isDeleted];
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to get user - was deleted: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, MEMORY[0x1E69E9C10], v0, "Failed to create proxy in order to send passcode activity to parents: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __70__STPINController_sendPasscodeActivityToParentsWithCompletionHandler___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, MEMORY[0x1E69E9C10], v0, "Failed to send passcode activity to parents: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

@end