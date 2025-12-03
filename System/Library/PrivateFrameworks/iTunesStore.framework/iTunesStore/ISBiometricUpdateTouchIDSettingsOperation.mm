@interface ISBiometricUpdateTouchIDSettingsOperation
- (ISBiometricUpdateTouchIDSettingsOperation)initWithAccountIdentifier:(id)identifier;
- (id)_newUpdateTouchIDSettingsOperation;
- (void)run;
@end

@implementation ISBiometricUpdateTouchIDSettingsOperation

- (ISBiometricUpdateTouchIDSettingsOperation)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = ISBiometricUpdateTouchIDSettingsOperation;
  v5 = [(ISOperation *)&v13 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    status = v5->_status;
    v5->_status = v6;

    v8 = objc_opt_new();
    attestationStringExtendedActions = v5->_attestationStringExtendedActions;
    v5->_attestationStringExtendedActions = v8;

    *(&v5->super._success + 1) = 1;
    *(&v5->super._success + 2) = 0;
    v5->_resultBlock = -1;
    if (_os_feature_enabled_impl())
    {
      v10 = [[AMSBiometricsTokenUpdateTaskShim alloc] initWithAccountIdentifier:v5->_status];
      certChainExtended = v5->_certChainExtended;
      v5->_certChainExtended = v10;
    }
  }

  return v5;
}

- (void)run
{
  v205 = *MEMORY[0x277D85DE8];
  certChainExtended = self->_certChainExtended;
  if (certChainExtended)
  {
    v194[0] = MEMORY[0x277D85DD0];
    v194[1] = 3221225472;
    v194[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke;
    v194[3] = &unk_27A6713B0;
    v194[4] = self;
    [(NSArray *)certChainExtended runUpdateWithCompletionBlock:v194];
    goto LABEL_227;
  }

  v174 = SSGenerateLogCorrelationString();
  if (![ISBiometricStore tokenUpdateShouldStartWithLogKey:v174])
  {
    v12 = *MEMORY[0x277D6A110];
    v13 = SSError();
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      *v201 = 138543362;
      *&v201[4] = objc_opt_class();
      v17 = *&v201[4];
      LODWORD(v162) = 12;
      v161 = v201;
      v18 = _os_log_send_and_compose_impl();

      if (v18)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, v201, v162}];
        free(v18);
        v161 = v19;
        SSFileLog();
      }
    }

    else
    {
    }

    goto LABEL_224;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog2 &= 2u;
  }

  if (shouldLog2)
  {
    v7 = objc_opt_class();
    status = self->_status;
    *v201 = 138543618;
    *&v201[4] = v7;
    *&v201[12] = 2112;
    *&v201[14] = status;
    v9 = v7;
    LODWORD(v162) = 22;
    v161 = v201;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v201, v162}];
      free(v10);
      v161 = v11;
      SSFileLog();
    }
  }

  else
  {
  }

  if ([(ISBiometricUpdateTouchIDSettingsOperation *)self regeneratePublicKey])
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog3 &= 2u;
    }

    if (shouldLog3)
    {
      v23 = objc_opt_class();
      *v201 = 138543362;
      *&v201[4] = v23;
      v24 = v23;
      LODWORD(v162) = 12;
      v161 = v201;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
        goto LABEL_34;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, v201, v162}];
      free(v25);
      v161 = oSLogObject3;
      SSFileLog();
    }

LABEL_34:
    attestationStringExtendedActions = self->_attestationStringExtendedActions;
    v27 = self->_status;
    v193 = 0;
    v28 = [(NSString *)attestationStringExtendedActions deleteKeychainTokensForAccountIdentifier:v27 error:&v193];
    v29 = v193;
    if (v28)
    {
LABEL_46:

      goto LABEL_47;
    }

    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog4 &= 2u;
    }

    if (shouldLog4)
    {
      v33 = objc_opt_class();
      v34 = self->_status;
      *v201 = 138543874;
      *&v201[4] = v33;
      *&v201[12] = 2112;
      *&v201[14] = v34;
      *&v201[22] = 2114;
      v202 = v29;
      v35 = v33;
      LODWORD(v162) = 32;
      v161 = v201;
      v36 = _os_log_send_and_compose_impl();

      if (!v36)
      {
LABEL_45:

        goto LABEL_46;
      }

      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v36 encoding:{4, v201, v162}];
      free(v36);
      v161 = oSLogObject4;
      SSFileLog();
    }

    goto LABEL_45;
  }

LABEL_47:
  if (!+[ISBiometricStore shouldUseX509])
  {
    v73 = self->_attestationStringExtendedActions;
    v74 = self->_status;
    v179 = 0;
    v172 = [(NSString *)v73 publicKeyDataForAccountIdentifier:v74 purpose:0 error:&v179];
    v75 = v179;
    v76 = self->_attestationStringExtendedActions;
    v77 = self->_status;
    v178 = 0;
    v166 = [(NSString *)v76 publicKeyDataForAccountIdentifier:v77 purpose:1 error:&v178];
    v78 = v178;
    v79 = v78;
    if (v75 && v78)
    {
      v80 = *MEMORY[0x277D6A110];
      v168 = SSError();
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]5)
      {
        mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
      if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
      {
        shouldLog5 |= 2u;
      }

      oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        shouldLog5 &= 2u;
      }

      if (!shouldLog5)
      {
        goto LABEL_129;
      }
    }

    else if (v75)
    {
      v168 = v75;
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]5)
      {
        mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog6 = [mEMORY[0x277D69B38]5 shouldLog];
      if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
      {
        shouldLog6 |= 2u;
      }

      oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        shouldLog6 &= 2u;
      }

      if (!shouldLog6)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (!v78)
      {
        v168 = 0;
        goto LABEL_131;
      }

      v168 = v78;
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]5)
      {
        mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog7 = [mEMORY[0x277D69B38]5 shouldLog];
      if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
      {
        shouldLog7 |= 2u;
      }

      oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        shouldLog7 &= 2u;
      }

      if (!shouldLog7)
      {
        goto LABEL_129;
      }
    }

    v101 = objc_opt_class();
    v102 = self->_status;
    *v201 = 138543618;
    *&v201[4] = v101;
    *&v201[12] = 2112;
    *&v201[14] = v102;
    v103 = v101;
    LODWORD(v162) = 22;
    v161 = v201;
    v104 = _os_log_send_and_compose_impl();

    if (!v104)
    {
LABEL_130:

LABEL_131:
      if (!v172 || !v166)
      {
        v164 = v79;
        group = v75;
        v112 = v168;
        goto LABEL_184;
      }

      v105 = self->_attestationStringExtendedActions;
      v106 = self->_status;
      v177 = v75;
      v107 = [(NSString *)v105 createAttestationDataForAccountIdentifier:v106 purpose:0 error:&v177];
      group = v177;

      v108 = self->_attestationStringExtendedActions;
      v109 = self->_status;
      v176 = v79;
      v110 = [(NSString *)v108 createAttestationDataForAccountIdentifier:v109 purpose:1 error:&v176];
      v164 = v176;

      if (group && v164)
      {
        v111 = *MEMORY[0x277D6A110];
        v112 = SSError();

        mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]6)
        {
          mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog8 = [mEMORY[0x277D69B38]6 shouldLog];
        if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
        {
          shouldLog8 |= 2u;
        }

        oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
        if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          shouldLog8 &= 2u;
        }

        if (!shouldLog8)
        {
          goto LABEL_178;
        }
      }

      else if (group)
      {
        v112 = group;

        mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]6)
        {
          mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog9 = [mEMORY[0x277D69B38]6 shouldLog];
        if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
        {
          shouldLog9 |= 2u;
        }

        oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
        if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          shouldLog9 &= 2u;
        }

        if (!shouldLog9)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (!v164)
        {
          v112 = v168;
          if (!v107)
          {
            goto LABEL_181;
          }

          goto LABEL_180;
        }

        v112 = v164;

        mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]6)
        {
          mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog10 = [mEMORY[0x277D69B38]6 shouldLog];
        if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
        {
          shouldLog10 |= 2u;
        }

        oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
        if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
        {
          shouldLog10 &= 2u;
        }

        if (!shouldLog10)
        {
          goto LABEL_178;
        }
      }

      v125 = objc_opt_class();
      v126 = self->_status;
      *v201 = 138543618;
      *&v201[4] = v125;
      *&v201[12] = 2112;
      *&v201[14] = v126;
      v127 = v125;
      LODWORD(v162) = 22;
      v161 = v201;
      v128 = _os_log_send_and_compose_impl();

      if (!v128)
      {
        goto LABEL_179;
      }

      oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v128 encoding:{4, v201, v162}];
      free(v128);
      v161 = oSLogObject6;
      SSFileLog();
LABEL_178:

LABEL_179:
      if (!v107)
      {
LABEL_181:
        if (v110)
        {
          v132 = v110;
          v133 = ISCopyEncodedBase64([v110 bytes], objc_msgSend(v110, "length"));
          attestationStringPurchase = self->_attestationStringPurchase;
          self->_attestationStringPurchase = v133;
        }

LABEL_184:
        if (!self->_accountIdentifier)
        {
          v13 = v112;
LABEL_222:

          goto LABEL_223;
        }

        _newUpdateTouchIDSettingsOperation = [(ISBiometricUpdateTouchIDSettingsOperation *)self _newUpdateTouchIDSettingsOperation];
        v135 = +[(ISDataProvider *)ISProtocolDataProvider];
        [_newUpdateTouchIDSettingsOperation setDataProvider:v135];

        v175 = v112;
        LODWORD(v135) = [(ISOperation *)self runSubOperation:_newUpdateTouchIDSettingsOperation returningError:&v175];
        v13 = v175;

        if (!v135)
        {
          mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!mEMORY[0x277D69B38]7)
          {
            mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharedConfig];
          }

          shouldLog11 = [mEMORY[0x277D69B38]7 shouldLog];
          if ([mEMORY[0x277D69B38]7 shouldLogToDisk])
          {
            shouldLog11 |= 2u;
          }

          oSLogObject7 = [mEMORY[0x277D69B38]7 OSLogObject];
          if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
          {
            shouldLog11 &= 2u;
          }

          if (shouldLog11)
          {
            v149 = objc_opt_class();
            v150 = v149;
            localizedDescription = [v13 localizedDescription];
            *v201 = 138543618;
            *&v201[4] = v149;
            *&v201[12] = 2114;
            *&v201[14] = localizedDescription;
            LODWORD(v162) = 22;
            v161 = v201;
            v152 = _os_log_send_and_compose_impl();

            if (!v152)
            {
LABEL_221:

              goto LABEL_222;
            }

            oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v152 encoding:{4, v201, v162}];
            free(v152);
            v161 = oSLogObject7;
            SSFileLog();
          }

LABEL_220:

          goto LABEL_221;
        }

        dataProvider = [_newUpdateTouchIDSettingsOperation dataProvider];
        mEMORY[0x277D69B38]7 = [dataProvider output];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v153 = *MEMORY[0x277D6A110];
          v154 = SSError();

          oSLogObject7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = [MEMORY[0x277D69B38] sharedConfig];
          }

          shouldLog12 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            shouldLog12 |= 2u;
          }

          v139OSLogObject = [oSLogObject7 OSLogObject];
          if (!os_log_type_enabled(v139OSLogObject, OS_LOG_TYPE_ERROR))
          {
            shouldLog12 &= 2u;
          }

          if (shouldLog12)
          {
            v156 = objc_opt_class();
            *v201 = 138543362;
            *&v201[4] = v156;
            v157 = v156;
            LODWORD(v162) = 12;
            v161 = v201;
            v158 = _os_log_send_and_compose_impl();

            if (!v158)
            {
              v13 = v154;
              goto LABEL_220;
            }

            v139OSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v158 encoding:{4, v201, v162}];
            free(v158);
            v161 = v139OSLogObject;
            SSFileLog();
          }

          v13 = v154;
          goto LABEL_219;
        }

        v138 = [mEMORY[0x277D69B38]7 objectForKey:@"status"];
        oSLogObject7 = v138;
        if (v138)
        {
          self->_resultBlock = [v138 integerValue];
        }

        v139OSLogObject = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v139OSLogObject)
        {
          v139OSLogObject = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog13 = [v139OSLogObject shouldLog];
        if ([v139OSLogObject shouldLogToDisk])
        {
          shouldLog13 |= 2u;
        }

        v140OSLogObject = [v139OSLogObject OSLogObject];
        if (!os_log_type_enabled(v140OSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog13 &= 2u;
        }

        if (shouldLog13)
        {
          v143 = objc_opt_class();
          v144 = MEMORY[0x277CCABB0];
          resultBlock = self->_resultBlock;
          v163 = v143;
          v146 = [v144 numberWithInteger:resultBlock];
          *v201 = 138543618;
          *&v201[4] = v143;
          *&v201[12] = 2114;
          *&v201[14] = v146;
          LODWORD(v162) = 22;
          v161 = v201;
          v147 = _os_log_send_and_compose_impl();

          if (!v147)
          {
LABEL_219:

            goto LABEL_220;
          }

          v140OSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v147 encoding:{4, v201, v162}];
          free(v147);
          v161 = v140OSLogObject;
          SSFileLog();
        }

        goto LABEL_219;
      }

LABEL_180:
      v129 = v107;
      v130 = ISCopyEncodedBase64([v107 bytes], objc_msgSend(v107, "length"));
      accountIdentifier = self->_accountIdentifier;
      self->_accountIdentifier = v130;

      goto LABEL_181;
    }

    oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v104 encoding:{4, v201, v162}];
    free(v104);
    v161 = oSLogObject5;
    SSFileLog();
LABEL_129:

    goto LABEL_130;
  }

  v37 = dispatch_group_create();
  *v201 = 0;
  *&v201[8] = v201;
  *&v201[16] = 0x3032000000;
  v202 = __Block_byref_object_copy__12;
  v203 = __Block_byref_object_dispose__12;
  v204 = 0;
  v38 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_22;
  block[3] = &unk_27A6709E0;
  block[4] = self;
  block[5] = v201;
  group = v37;
  dispatch_group_async(v37, v38, block);

  v186 = 0;
  v187 = &v186;
  v188 = 0x3032000000;
  v189 = __Block_byref_object_copy__12;
  v190 = __Block_byref_object_dispose__12;
  v191 = 0;
  v185[0] = MEMORY[0x277D85DD0];
  v185[1] = 3221225472;
  v185[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_25;
  v185[3] = &unk_27A6709E0;
  v185[4] = self;
  v185[5] = &v186;
  dispatch_group_async(v37, v38, v185);

  v39 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(v37, v39))
  {
    mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]8)
    {
      mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog14 = [mEMORY[0x277D69B38]8 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]8 shouldLogToDisk];
    oSLogObject8 = [mEMORY[0x277D69B38]8 OSLogObject];
    v44 = oSLogObject8;
    if (shouldLogToDisk)
    {
      shouldLog14 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
    {
      shouldLog14 &= 2u;
    }

    if (shouldLog14)
    {
      v45 = objc_opt_class();
      v195 = 138543362;
      v196 = v45;
      v46 = v45;
      LODWORD(v162) = 12;
      v161 = &v195;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
LABEL_59:

        goto LABEL_60;
      }

      v44 = [MEMORY[0x277CCACA8] stringWithCString:v47 encoding:{4, &v195, v162}];
      free(v47);
      v161 = v44;
      SSFileLog();
    }

    goto LABEL_59;
  }

LABEL_60:
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = *(*&v201[8] + 40);
  v183[0] = MEMORY[0x277D85DD0];
  v183[1] = 3221225472;
  v183[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_27;
  v183[3] = &unk_27A6713D8;
  v50 = v48;
  v184 = v50;
  [v49 enumerateObjectsUsingBlock:v183];
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = v187[5];
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_2;
  v181[3] = &unk_27A6713D8;
  v53 = v51;
  v182 = v53;
  [v52 enumerateObjectsUsingBlock:v181];
  v54 = [v50 copy];
  biometricStore = self->_biometricStore;
  self->_biometricStore = v54;

  v56 = [v53 copy];
  certChainPrimary = self->_certChainPrimary;
  self->_certChainPrimary = v56;

  if ([*(*&v201[8] + 40) count] && objc_msgSend(v187[5], "count"))
  {
    _newUpdateTouchIDSettingsOperation2 = [(ISBiometricUpdateTouchIDSettingsOperation *)self _newUpdateTouchIDSettingsOperation];
    v59 = +[(ISDataProvider *)ISProtocolDataProvider];
    [_newUpdateTouchIDSettingsOperation2 setDataProvider:v59];

    v180 = 0;
    LODWORD(v59) = [(ISOperation *)self runSubOperation:_newUpdateTouchIDSettingsOperation2 returningError:&v180];
    v13 = v180;
    if (v59)
    {
      dataProvider2 = [_newUpdateTouchIDSettingsOperation2 dataProvider];
      output = [dataProvider2 output];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v117 = *MEMORY[0x277D6A110];
        v171 = SSError();

        mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]9)
        {
          mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog15 = [mEMORY[0x277D69B38]9 shouldLog];
        shouldLogToDisk2 = [mEMORY[0x277D69B38]9 shouldLogToDisk];
        oSLogObject9 = [mEMORY[0x277D69B38]9 OSLogObject];
        v72 = oSLogObject9;
        if (shouldLogToDisk2)
        {
          shouldLog15 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
        {
          shouldLog15 &= 2u;
        }

        if (shouldLog15)
        {
          v121 = objc_opt_class();
          v195 = 138543362;
          v196 = v121;
          v122 = v121;
          LODWORD(v162) = 12;
          v161 = &v195;
          v123 = _os_log_send_and_compose_impl();

          if (!v123)
          {
LABEL_164:
            v13 = v171;
            goto LABEL_165;
          }

          v72 = [MEMORY[0x277CCACA8] stringWithCString:v123 encoding:{4, &v195, v162}];
          free(v123);
          v161 = v72;
          SSFileLog();
        }

LABEL_163:

        goto LABEL_164;
      }

      mEMORY[0x277D69B38]9 = output;
      v167 = [mEMORY[0x277D69B38]9 objectForKey:@"status"];
      if (v167)
      {
        self->_resultBlock = [v167 integerValue];
      }

      mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]10)
      {
        mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog16 = [mEMORY[0x277D69B38]10 shouldLog];
      shouldLogToDisk3 = [mEMORY[0x277D69B38]10 shouldLogToDisk];
      v170 = mEMORY[0x277D69B38]10;
      oSLogObject10 = [mEMORY[0x277D69B38]10 OSLogObject];
      v67 = oSLogObject10;
      if (shouldLogToDisk3)
      {
        shouldLog16 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog16 &= 2u;
      }

      if (shouldLog16)
      {
        v68 = objc_opt_class();
        v69 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resultBlock];
        v195 = 138543618;
        v165 = v68;
        v196 = v68;
        v197 = 2114;
        v198 = v69;
        LODWORD(v162) = 22;
        v161 = &v195;
        v70 = v69;
        v71 = _os_log_send_and_compose_impl();

        if (!v71)
        {
LABEL_76:

          v171 = v13;
          v72 = v167;
          goto LABEL_163;
        }

        v67 = [MEMORY[0x277CCACA8] stringWithCString:v71 encoding:{4, &v195, v162}];
        free(v71);
        v161 = v67;
        SSFileLog();
      }

      goto LABEL_76;
    }

    output = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!output)
    {
      output = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog17 = [output shouldLog];
    shouldLogToDisk4 = [output shouldLogToDisk];
    oSLogObject11 = [output OSLogObject];
    mEMORY[0x277D69B38]9 = oSLogObject11;
    if (shouldLogToDisk4)
    {
      shouldLog17 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
    {
      v96 = shouldLog17;
    }

    else
    {
      v96 = shouldLog17 & 2;
    }

    if (!v96)
    {
      goto LABEL_165;
    }

    v97 = objc_opt_class();
    localizedDescription2 = [v13 localizedDescription];
    v195 = 138543618;
    v196 = v97;
    v197 = 2114;
    v198 = localizedDescription2;
    LODWORD(v162) = 22;
    v161 = &v195;
    v99 = _os_log_send_and_compose_impl();

    if (v99)
    {
      mEMORY[0x277D69B38]9 = [MEMORY[0x277CCACA8] stringWithCString:v99 encoding:{4, &v195, v162}];
      free(v99);
      v161 = mEMORY[0x277D69B38]9;
      SSFileLog();
LABEL_165:
    }

LABEL_166:

    goto LABEL_167;
  }

  _newUpdateTouchIDSettingsOperation2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!_newUpdateTouchIDSettingsOperation2)
  {
    _newUpdateTouchIDSettingsOperation2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog18 = [_newUpdateTouchIDSettingsOperation2 shouldLog];
  shouldLogToDisk5 = [_newUpdateTouchIDSettingsOperation2 shouldLogToDisk];
  oSLogObject12 = [_newUpdateTouchIDSettingsOperation2 OSLogObject];
  output = oSLogObject12;
  if (shouldLogToDisk5)
  {
    shouldLog18 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_ERROR))
  {
    v87 = shouldLog18;
  }

  else
  {
    v87 = shouldLog18 & 2;
  }

  if (!v87)
  {
LABEL_99:
    v13 = 0;
    goto LABEL_166;
  }

  v88 = objc_opt_class();
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*&v201[8] + 40), "count")}];
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187[5], "count")}];
  v195 = 138543874;
  v196 = v88;
  v197 = 2114;
  v198 = v89;
  v199 = 2114;
  v200 = v90;
  LODWORD(v162) = 32;
  v161 = &v195;
  v91 = _os_log_send_and_compose_impl();

  if (v91)
  {
    output = [MEMORY[0x277CCACA8] stringWithCString:v91 encoding:{4, &v195, v162}];
    free(v91);
    v161 = output;
    SSFileLog();
    goto LABEL_99;
  }

  v13 = 0;
LABEL_167:

  _Block_object_dispose(&v186, 8);
  _Block_object_dispose(v201, 8);

LABEL_223:
  [ISBiometricStore tokenUpdateDidFinishWithLogKey:v174];
LABEL_224:
  [(ISOperation *)self setError:v13, v161];
  [(ISOperation *)self setSuccess:v13 == 0];
  resultBlock = [(ISBiometricUpdateTouchIDSettingsOperation *)self resultBlock];
  if (resultBlock)
  {
    (resultBlock)[2](resultBlock, [(ISBiometricUpdateTouchIDSettingsOperation *)self status], v13);
  }

LABEL_227:
  v160 = *MEMORY[0x277D85DE8];
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) setError:?];
  [*(a1 + 32) setSuccess:a2];
  v5 = [*(a1 + 32) resultBlock];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_22(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = *(a1 + 32);
    v39 = 138543362;
    v40 = objc_opt_class();
    v7 = v40;
    LODWORD(v37) = 12;
    v36 = &v39;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v39, v37}];
    free(v8);
    v36 = v5;
    SSFileLog();
  }

LABEL_12:
  v9 = *(a1 + 32);
  v10 = *(v9 + 376);
  v11 = *(v9 + 352);
  v38 = 0;
  v12 = [v10 x509CertChainDataForAccountIdentifier:v11 purpose:0 regenerateCerts:1 error:&v38];
  v13 = v38;
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  if (!v13)
  {
    goto LABEL_25;
  }

  v16 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 32);
  v21 = objc_opt_class();
  v39 = 138543618;
  v40 = v21;
  v41 = 2114;
  v42 = v13;
  v22 = v21;
  LODWORD(v37) = 22;
  v36 = &v39;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v39, v37}];
    free(v23);
    v36 = v19;
    SSFileLog();
LABEL_23:
  }

LABEL_25:
  v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v24)
  {
    v24 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v24 OSLogObject];
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_35;
  }

  v28 = *(a1 + 32);
  v29 = objc_opt_class();
  v30 = MEMORY[0x277CCABB0];
  v31 = *(*(*(a1 + 40) + 8) + 40);
  v32 = v29;
  v33 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
  v39 = 138543618;
  v40 = v29;
  v41 = 2114;
  v42 = v33;
  LODWORD(v37) = 22;
  v34 = _os_log_send_and_compose_impl();

  if (v34)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v39, v37}];
    free(v34);
    SSFileLog();
LABEL_35:
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_25(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = *(a1 + 32);
    v39 = 138543362;
    v40 = objc_opt_class();
    v7 = v40;
    LODWORD(v37) = 12;
    v36 = &v39;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v39, v37}];
    free(v8);
    v36 = v5;
    SSFileLog();
  }

LABEL_12:
  v9 = *(a1 + 32);
  v10 = *(v9 + 376);
  v11 = *(v9 + 352);
  v38 = 0;
  v12 = [v10 x509CertChainDataForAccountIdentifier:v11 purpose:1 regenerateCerts:1 error:&v38];
  v13 = v38;
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  if (!v13)
  {
    goto LABEL_25;
  }

  v16 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 32);
  v21 = objc_opt_class();
  v39 = 138543618;
  v40 = v21;
  v41 = 2114;
  v42 = v13;
  v22 = v21;
  LODWORD(v37) = 22;
  v36 = &v39;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v39, v37}];
    free(v23);
    v36 = v19;
    SSFileLog();
LABEL_23:
  }

LABEL_25:
  v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v24)
  {
    v24 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v24 OSLogObject];
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_35;
  }

  v28 = *(a1 + 32);
  v29 = objc_opt_class();
  v30 = MEMORY[0x277CCABB0];
  v31 = *(*(*(a1 + 40) + 8) + 40);
  v32 = v29;
  v33 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
  v39 = 138543618;
  v40 = v29;
  v41 = 2114;
  v42 = v33;
  LODWORD(v37) = 22;
  v34 = _os_log_send_and_compose_impl();

  if (v34)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{4, &v39, v37}];
    free(v34);
    SSFileLog();
LABEL_35:
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_27(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = [v5 bytes];
  v7 = [v5 length];

  v8 = ISCopyEncodedBase64(v6, v7);
  [*(a1 + 32) addObject:v8];
}

void __48__ISBiometricUpdateTouchIDSettingsOperation_run__block_invoke_2(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = [v5 bytes];
  v7 = [v5 length];

  v8 = ISCopyEncodedBase64(v6, v7);
  [*(a1 + 32) addObject:v8];
}

- (id)_newUpdateTouchIDSettingsOperation
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v4 setITunesStoreRequest:1];
  [v4 setURLBagKey:@"update-touch-id-settings"];
  [v4 setHTTPMethod:@"POST"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!+[ISBiometricStore shouldUseX509])
  {
    [v5 setObject:self->_accountIdentifier forKey:@"touchIdAttestation"];
    [v5 setObject:self->_attestationStringPurchase forKey:@"extendedAttestation"];
    goto LABEL_34;
  }

  certChainPrimary = [(ISBiometricUpdateTouchIDSettingsOperation *)self certChainPrimary];
  if ([certChainPrimary count])
  {
    [v5 setObject:certChainPrimary forKey:@"primaryX509Chain"];
    goto LABEL_18;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = certChainPrimary;
  v13 = objc_opt_class();
  v51 = v3;
  v14 = MEMORY[0x277CCABB0];
  v48 = v13;
  v15 = [v14 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  v54 = 138543618;
  v55 = v13;
  certChainPrimary = v12;
  v56 = 2112;
  v57 = v15;
  LODWORD(v47) = 22;
  v46 = &v54;
  v16 = _os_log_send_and_compose_impl();

  v3 = v51;
  if (v16)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v54, v47}];
    free(v16);
    v46 = oSLogObject;
    SSFileLog();
LABEL_16:
  }

LABEL_18:
  certChainExtended = [(ISBiometricUpdateTouchIDSettingsOperation *)self certChainExtended];
  if (![certChainExtended count])
  {
    v52 = certChainPrimary;
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v20 = shouldLog2 | 2;
    }

    else
    {
      v20 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = v3;
      v24 = objc_opt_class();
      v25 = v5;
      v26 = MEMORY[0x277CCABB0];
      v49 = v24;
      v27 = [v26 numberWithUnsignedInteger:{objc_msgSend(certChainExtended, "count")}];
      v54 = 138543618;
      v55 = v24;
      v3 = v23;
      v56 = 2112;
      v57 = v27;
      LODWORD(v47) = 22;
      v46 = &v54;
      v28 = _os_log_send_and_compose_impl();

      v5 = v25;
      if (!v28)
      {
LABEL_32:

        certChainPrimary = v52;
        goto LABEL_33;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v54, v47}];
      free(v28);
      v46 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_32;
  }

  [v5 setObject:certChainExtended forKey:@"extendedX509Chain"];
LABEL_33:

LABEL_34:
  v53 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:100 options:0 error:{0, v46}];
  [v4 setHTTPBody:?];
  [(ISURLOperation *)v3 setRequestProperties:v4];
  if ([(ISBiometricUpdateTouchIDSettingsOperation *)self shouldSuppressAuthPrompts])
  {
    v29 = 1000;
  }

  else
  {
    v29 = 0;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v32 = shouldLog3 | 2;
  }

  else
  {
    v32 = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 & 2;
  }

  if (!v34)
  {
    goto LABEL_48;
  }

  v35 = v5;
  v36 = v4;
  selfCopy = self;
  v38 = v3;
  v39 = objc_opt_class();
  v40 = MEMORY[0x277CCABB0];
  v50 = v39;
  v41 = [v40 numberWithInteger:v29];
  v54 = 138543618;
  v55 = v39;
  v3 = v38;
  self = selfCopy;
  v4 = v36;
  v5 = v35;
  v56 = 2114;
  v57 = v41;
  LODWORD(v47) = 22;
  v42 = _os_log_send_and_compose_impl();

  if (v42)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, &v54, v47}];
    free(v42);
    SSFileLog();
LABEL_48:
  }

  v43 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:self->_status];
  [v43 setCanCreateNewAccount:0];
  [v43 setCanSetActiveAccount:0];
  [v43 setPromptStyle:v29];
  [(ISURLOperation *)v3 setAuthenticationContext:v43];

  v44 = *MEMORY[0x277D85DE8];
  return v3;
}

@end