@interface TRAuthenticationOperation
- (BOOL)_canDoMagicAuthForAccount:(id)a3;
- (void)_reportAuthMetrics:(id)a3 durationSeconds:(double)a4 authType:(int)a5 deviceType:(int)a6 sessionID:(id)a7 authServiceType:(int)a8;
- (void)execute;
@end

@implementation TRAuthenticationOperation

- (void)execute
{
  v107 = *MEMORY[0x277D85DE8];
  if ([(TRAuthenticationOperation *)self isCancelled])
  {
    v94 = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:?];
    v3 = *MEMORY[0x277D85DE8];

    return;
  }

  v4 = MEMORY[0x277CBEB58];
  v5 = [(TRAuthenticationOperation *)self targetedServices];
  v6 = [v4 setWithSet:v5];

  v91 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(TRAuthenticationOperation *)self shouldForceInteractiveAuth];
      v10 = [(TRAuthenticationOperation *)self presentingViewController];
      *buf = 136315906;
      v101 = "[TRAuthenticationOperation execute]";
      v102 = 2112;
      v103 = v6;
      v104 = 1024;
      *v105 = v9;
      *&v105[4] = 2112;
      *&v105[6] = v10;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: services: %@, shouldForceInteractiveAuth? %d, presentingViewController? %@", buf, 0x26u);
    }
  }

  if (![v6 count])
  {
    v49 = v7;
LABEL_125:
    if (_TRLogEnabled == 1)
    {
      v81 = TRLogHandle();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v101 = "[TRAuthenticationOperation execute]";
        v102 = 2112;
        v103 = v91;
        _os_log_impl(&dword_26F2A2000, v81, OS_LOG_TYPE_DEFAULT, "%s finishing with result: %@", buf, 0x16u);
      }
    }

    v18 = objc_opt_new();
    [v18 setObject:v91 forKeyedSubscript:@"TRAuthenticationOperationUnauthenticatedServicesKey"];
    if (v49)
    {
      [v18 setObject:v49 forKeyedSubscript:@"TRAuthenticationOperationErrorKey"];
    }

    v82 = [v18 copy];
    [(TROperation *)self finishWithResult:v82];

    v7 = v49;
    goto LABEL_147;
  }

  v12 = 0x279DCE000uLL;
  *&v11 = 136315906;
  v89 = v11;
  v92 = v6;
  while (1)
  {
    v13 = [v6 anyObject];
    v14 = [v13 unsignedIntegerValue];

    v15 = [*(v12 + 1568) idmsAccountForAccountService:v14];
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v17 = [MEMORY[0x277CF0130] sharedInstance];
    v18 = [v17 transportableAuthKitAccount:v16];

    v93 = [*(v12 + 1568) associatedAccountServicesForIDMSAccount:v18];
    v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v93];
    [v19 intersectSet:v6];
    [v6 minusSet:v19];
    v20 = v19;
    v21 = [(TRAuthenticationOperation *)self shouldForceInteractiveAuth];
    v22 = [(TRAuthenticationOperation *)self presentingViewController];
    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = self->_isCLIMode && self->_rawPassword != 0;
    }

    v95 = v20;
    if ([(TRAuthenticationOperation *)self _canDoMagicAuthForAccount:v18])
    {
      v26 = !v21;
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v27 = TRLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v101 = "[TRAuthenticationOperation execute]";
          _os_log_impl(&dword_26F2A2000, v27, OS_LOG_TYPE_DEFAULT, "%s: this device cannot do magic auth", buf, 0xCu);
        }
      }

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-12001 userInfo:0];

      if (self->_isCLIMode && !self->_rawPassword)
      {
        [(TROperation *)self finishWithError:v28];
        v7 = v28;
LABEL_146:

        goto LABEL_147;
      }

      v26 = 0;
      v7 = v28;
    }

    if (+[TRDefaults forceProxyAuth])
    {
      if (_TRLogEnabled == 1)
      {
        v29 = TRLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v101 = "[TRAuthenticationOperation execute]";
          _os_log_impl(&dword_26F2A2000, v29, OS_LOG_TYPE_DEFAULT, "%s: Force Proxy Auth Default enabled", buf, 0xCu);
        }

LABEL_63:
      }

LABEL_64:
      if (v23)
      {
        if (self->_authType == 1)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        self->_authType = v50;
        v51 = [v20 anyObject];
        v52 = [v51 intValue];

        if (_TRLogEnabled == 1)
        {
          v53 = TRLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v101 = "[TRAuthenticationOperation execute]";
            _os_log_impl(&dword_26F2A2000, v53, OS_LOG_TYPE_DEFAULT, "%s attempting proxy auth", buf, 0xCu);
          }
        }

        v54 = [TRProxyAuthOperation alloc];
        v55 = [(TROperation *)self session];
        v56 = [(TROperation *)v54 initWithSession:v55];

        [(TRProxyAuthOperation *)v56 setAccount:v18];
        [(TRProxyAuthOperation *)v56 setTargetedServices:v20];
        v57 = [(TRAuthenticationOperation *)self presentingViewController];
        [(TRProxyAuthOperation *)v56 setPresentingViewController:v57];

        [(TRProxyAuthOperation *)v56 setShouldUseAIDA:[(TRAuthenticationOperation *)self shouldUseAIDA]];
        [(TRProxyAuthOperation *)v56 setIsForHomePod:self->_shouldSetupHomePod];
        [(TRProxyAuthOperation *)v56 setIsCLIMode:self->_isCLIMode];
        [(TRProxyAuthOperation *)v56 setCanDoTermsAndConditions:self->_canDoTermsAndConditions];
        [(TRProxyAuthOperation *)v56 setForceFail:self->_forceFail];
        [(TRProxyAuthOperation *)v56 setPresentingChildViewController:self->_presentingChildViewController];
        if (self->_isCLIMode)
        {
          rawPassword = self->_rawPassword;
          if (rawPassword)
          {
            if (_TRLogEnabled == 1)
            {
              v59 = TRLogHandle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_26F2A2000, v59, OS_LOG_TYPE_DEFAULT, "TRAuthenticationOperation->TRProxyAuthOperation isClIMode enabled, setting passed in password", buf, 2u);
              }

              rawPassword = self->_rawPassword;
            }

            [(TRProxyAuthOperation *)v56 setRawPassword:rawPassword];
          }
        }

        self->_proxyAuthStartTicks = mach_absolute_time();
        [(TRProxyAuthOperation *)v56 start];
        mach_absolute_time();
        proxyAuthStartTicks = self->_proxyAuthStartTicks;
        UpTicksToSecondsF();
        v62 = v61;
        v63 = [(TROperation *)v56 result];
        v64 = [(TROperation *)v56 error];
        if (!v64)
        {
          v64 = [v63 objectForKey:@"TRProxyAuthOperationErrorKey"];
        }

        if (self->_shouldSetupHomePod)
        {
          v65 = 1;
        }

        else
        {
          v65 = 2;
        }

        [(TRAuthenticationOperation *)self _reportAuthMetrics:v64 durationSeconds:2 authType:v65 deviceType:self->_sessionID sessionID:v52 authServiceType:v62];
        if (_TRLogEnabled == 1)
        {
          v66 = TRLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v101 = "[TRAuthenticationOperation execute]";
            v102 = 2112;
            v103 = v63;
            _os_log_impl(&dword_26F2A2000, v66, OS_LOG_TYPE_DEFAULT, "%s Proxy auth finished with results %@", buf, 0x16u);
          }
        }

        if (!v63)
        {
          v86 = [(TROperation *)v56 error];
          if (_TRLogEnabled == 1)
          {
            v87 = TRLogHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v101 = "[TRAuthenticationOperation execute]";
              v102 = 2112;
              v103 = v86;
              _os_log_impl(&dword_26F2A2000, v87, OS_LOG_TYPE_DEFAULT, "%s Proxy auth failed with error: %@", buf, 0x16u);
            }
          }

          [(TROperation *)self finishWithError:v86];

          v6 = v92;
          goto LABEL_146;
        }

        v67 = [v63 objectForKey:@"TRProxyAuthOperationUnauthenticatedServicesKey"];

        v68 = [v63 objectForKey:@"TRProxyAuthOperationErrorKey"];

        v20 = v67;
        v7 = v68;
        v6 = v92;
      }

      if ([v20 count])
      {
        v69 = [MEMORY[0x277CCAB68] string];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v70 = v6;
        v71 = [v70 countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v97;
          do
          {
            for (i = 0; i != v72; ++i)
            {
              if (*v97 != v73)
              {
                objc_enumerationMutation(v70);
              }

              v75 = StringFromTRAccountService([*(*(&v96 + 1) + 8 * i) unsignedIntegerValue]);
              [v69 appendString:v75];
            }

            v72 = [v70 countByEnumeratingWithState:&v96 objects:v106 count:16];
          }

          while (v72);
        }

        v6 = v92;
        if (_TRLogEnabled == 1)
        {
          v76 = TRLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v89;
            v101 = "[TRAuthenticationOperation execute]";
            v102 = 2112;
            v103 = v69;
            v104 = 2112;
            *v105 = v20;
            *&v105[8] = 2112;
            *&v105[10] = v7;
            _os_log_impl(&dword_26F2A2000, v76, OS_LOG_TYPE_DEFAULT, "%s Failed to authenticate with services: %@ (%@), last know error %@", buf, 0x2Au);
          }
        }

        if (![(TRAuthenticationOperation *)self shouldIgnoreAuthFailures])
        {
          [v70 unionSet:v20];
          v84 = objc_opt_new();
          [v84 setObject:v70 forKeyedSubscript:@"TRAuthenticationOperationUnauthenticatedServicesKey"];
          if (v7)
          {
            [v84 setObject:v7 forKeyedSubscript:@"TRAuthenticationOperationErrorKey"];
          }

          v85 = [v84 copy];
          [(TROperation *)self finishWithResult:v85];

          goto LABEL_146;
        }

        [v91 unionSet:v20];
      }

      v12 = 0x279DCE000;
LABEL_105:

      v49 = v7;
      goto LABEL_106;
    }

    if (!v26)
    {
      goto LABEL_64;
    }

    self->_authType = 1;
    v30 = [v20 anyObject];
    v31 = [v30 intValue];

    if (_TRLogEnabled == 1)
    {
      v32 = TRLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v101 = "[TRAuthenticationOperation execute]";
        _os_log_impl(&dword_26F2A2000, v32, OS_LOG_TYPE_DEFAULT, "%s attempting companion auth", buf, 0xCu);
      }
    }

    v33 = [TRCompanionAuthOperation alloc];
    v34 = [(TROperation *)self session];
    v29 = [(TROperation *)v33 initWithSession:v34];

    [v29 setAccount:v18];
    [v29 setTargetedServices:v95];
    [v29 setShouldUseAIDA:[(TRAuthenticationOperation *)self shouldUseAIDA]];
    v35 = [(TRAuthenticationOperation *)self presentingViewController];
    [v29 setPresentingViewController:v35];

    [v29 setIsForHomePod:self->_shouldSetupHomePod];
    [v29 setIsCLIMode:self->_isCLIMode];
    [v29 setCanDoTermsAndConditions:self->_canDoTermsAndConditions];
    [v29 setForceFail:self->_forceFail];
    [v29 setPresentingChildViewController:self->_presentingChildViewController];
    if (self->_isCLIMode)
    {
      v36 = self->_rawPassword;
      if (v36)
      {
        if (_TRLogEnabled == 1)
        {
          v37 = TRLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F2A2000, v37, OS_LOG_TYPE_DEFAULT, "TRAuthenticationOperation->TRCompanionAuthOperation isClIMode enabled, setting passed in password", buf, 2u);
          }

          v36 = self->_rawPassword;
        }

        [v29 setRawPassword:v36];
      }
    }

    self->_companionAuthStartTicks = mach_absolute_time();
    [v29 start];
    mach_absolute_time();
    companionAuthStartTicks = self->_companionAuthStartTicks;
    UpTicksToSecondsF();
    v40 = v39;
    v41 = [v29 result];
    v42 = [v29 error];
    if (!v42)
    {
      v42 = [v41 objectForKey:@"TRCompanionAuthOperationErrorKey"];
    }

    if (self->_shouldSetupHomePod)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    [(TRAuthenticationOperation *)self _reportAuthMetrics:v42 durationSeconds:1 authType:v43 deviceType:self->_sessionID sessionID:v31 authServiceType:v40];
    v20 = v95;
    if (_TRLogEnabled == 1)
    {
      v44 = TRLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v101 = "[TRAuthenticationOperation execute]";
        v102 = 2112;
        v103 = v41;
        _os_log_impl(&dword_26F2A2000, v44, OS_LOG_TYPE_DEFAULT, "%s companion auth finished with results %@", buf, 0x16u);
      }
    }

    if (!v41)
    {
      v77 = [v29 error];
      if (_TRLogEnabled == 1)
      {
        v78 = TRLogHandle();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
LABEL_118:
          *buf = 136315394;
          v101 = "[TRAuthenticationOperation execute]";
          v102 = 2112;
          v103 = v77;
          _os_log_impl(&dword_26F2A2000, v78, OS_LOG_TYPE_DEFAULT, "%s Companion auth failed with error: %@", buf, 0x16u);
        }

LABEL_119:
      }

LABEL_120:
      v90 = v41;
      v79 = v42;
      [(TROperation *)self finishWithError:v77];
      v80 = 0;
      goto LABEL_121;
    }

    if (self->_shouldSetupHomePod)
    {
      v45 = [v29 error];
      if (v45)
      {
        v46 = v45;
        v47 = [v29 error];
        v48 = [v47 ak_isEligibleForProxiedAuthFallback];

        if ((v48 & 1) == 0)
        {
          v77 = [v29 error];
          v20 = v95;
          if (_TRLogEnabled == 1)
          {
            v78 = TRLogHandle();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_118;
            }

            goto LABEL_119;
          }

          goto LABEL_120;
        }
      }
    }

    v20 = [v41 objectForKey:@"TRCompanionAuthOperationUnauthenticatedServicesKey"];

    v49 = [v41 objectForKey:@"TRCompanionAuthOperationErrorKey"];

    if ([v20 count])
    {

      v7 = v49;
      v6 = v92;
      goto LABEL_63;
    }

    v90 = v41;
    if (_TRLogEnabled != 1)
    {
      v79 = v42;
      v80 = 1;
      goto LABEL_122;
    }

    v77 = TRLogHandle();
    v79 = v42;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v101 = "[TRAuthenticationOperation execute]";
      _os_log_impl(&dword_26F2A2000, v77, OS_LOG_TYPE_DEFAULT, "%s Companion auth successful. Authenticating remaining services", buf, 0xCu);
    }

    v80 = 1;
    v7 = v49;
LABEL_121:

    v49 = v7;
LABEL_122:
    v6 = v92;

    v12 = 0x279DCE000;
    if ((v80 & 1) == 0)
    {
      goto LABEL_148;
    }

LABEL_106:
    v7 = v49;
    if (![v6 count])
    {
      goto LABEL_125;
    }
  }

  if (_TRLogEnabled == 1)
  {
    v24 = TRLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = StringFromTRAccountService(v14);
      *buf = 136315394;
      v101 = "[TRAuthenticationOperation execute]";
      v102 = 2112;
      v103 = v25;
      _os_log_impl(&dword_26F2A2000, v24, OS_LOG_TYPE_DEFAULT, "%s Failed to find IDMS account for service: %@", buf, 0x16u);
    }
  }

  if (!self->_shouldSetupHomePod)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    [v6 removeObject:v18];
    goto LABEL_105;
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-12004 userInfo:0];
  if (_TRLogEnabled == 1)
  {
    v83 = TRLogHandle();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v101 = "[TRAuthenticationOperation execute]";
      v102 = 2112;
      v103 = v18;
      _os_log_impl(&dword_26F2A2000, v83, OS_LOG_TYPE_DEFAULT, "%s Ending Auth, Error: %@", buf, 0x16u);
    }
  }

  [(TROperation *)self finishWithError:v18];
LABEL_147:

  v49 = v7;
LABEL_148:

  v88 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canDoMagicAuthForAccount:(id)a3
{
  v3 = MEMORY[0x277CF0130];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 passwordResetTokenForAccount:v4];

  return v6 != 0;
}

- (void)_reportAuthMetrics:(id)a3 durationSeconds:(double)a4 authType:(int)a5 deviceType:(int)a6 sessionID:(id)a7 authServiceType:(int)a8
{
  v70[18] = *MEMORY[0x277D85DE8];
  v55 = a7;
  v49 = a3;
  v64 = [v49 code];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v64];
  v11 = [v49 domain];
  v12 = [v49 underlyingErrors];

  v13 = [v12 firstObject];

  v60 = [v13 code];
  v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v60];
  v14 = [v13 domain];
  v62 = v13;
  v15 = [v13 underlyingErrors];
  v16 = [v15 firstObject];

  v57 = [v16 code];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v16];
  v18 = [v16 domain];
  v59 = v16;
  v19 = [v16 underlyingErrors];
  v20 = [v19 firstObject];

  v53 = [v20 code];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v20];
  v56 = v20;
  v22 = [v20 domain];
  v69[0] = @"duration";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(a4 * 1000.0)];
  v70[0] = v48;
  v69[1] = @"errorCode";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v64];
  v47 = v23;
  v63 = v11;
  v65 = v10;
  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = @"0";
  }

  v70[1] = v23;
  v70[2] = v24;
  v69[2] = @"errorCodeString";
  v69[3] = @"errorDomain";
  if (v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = @"NoDomain";
  }

  v70[3] = v25;
  v69[4] = @"underlyingErrorCode0";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:v60];
  v46 = v26;
  if (v66)
  {
    v27 = v66;
  }

  else
  {
    v27 = @"0";
  }

  v70[4] = v26;
  v70[5] = v27;
  v69[5] = @"underlyingErrorCodeString0";
  v69[6] = @"underlyingErrorDomain0";
  v61 = v14;
  if (v14)
  {
    v28 = v14;
  }

  else
  {
    v28 = @"NoDomain";
  }

  v70[6] = v28;
  v69[7] = @"underlyingErrorCode1";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:v57];
  v30 = v29;
  v58 = v17;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v31 = @"0";
  }

  v70[7] = v29;
  v70[8] = v31;
  v69[8] = @"underlyingErrorCodeString1";
  v69[9] = @"underlyingErrorDomain1";
  if (v18)
  {
    v32 = v18;
  }

  else
  {
    v32 = @"NoDomain";
  }

  v70[9] = v32;
  v69[10] = @"underlyingErrorCode2";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:v53];
  v34 = v33;
  v54 = v21;
  if (v21)
  {
    v35 = v21;
  }

  else
  {
    v35 = @"0";
  }

  v70[10] = v33;
  v70[11] = v35;
  v69[11] = @"underlyingErrorCodeString2";
  v69[12] = @"underlyingErrorDomain2";
  if (v22)
  {
    v36 = v22;
  }

  else
  {
    v36 = @"NoDomain";
  }

  v70[12] = v36;
  v69[13] = @"authType";
  v37 = [MEMORY[0x277CCABB0] numberWithInt:a5];
  v70[13] = v37;
  v69[14] = @"deviceAuthType";
  v38 = [MEMORY[0x277CCABB0] numberWithInt:a6];
  v70[14] = v38;
  v69[15] = @"authServiceType";
  v39 = [MEMORY[0x277CCABB0] numberWithInt:a8];
  v70[15] = v39;
  v69[16] = @"success";
  v40 = [MEMORY[0x277CCABB0] numberWithInt:v49 == 0];
  v41 = v40;
  v69[17] = @"sessionID";
  v42 = @"nil";
  if (v55)
  {
    v42 = v55;
  }

  v70[16] = v40;
  v70[17] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:18];

  TRMetricsLog(@"com.apple.touchremote.authentication", v43);
  if (_TRLogEnabled == 1)
  {
    v44 = TRLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v43;
      _os_log_impl(&dword_26F2A2000, v44, OS_LOG_TYPE_DEFAULT, "TouchRemote Auth Metric sent: %@\n", buf, 0xCu);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

@end