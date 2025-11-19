@interface ISBiometricSignatureOperation
- (BOOL)_promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:(id)a3 accountName:(id)a4;
- (ISBiometricSignatureOperation)initWithBiometricAuthenticationContext:(id)a3 touchIDDialog:(id)a4 fallbackDialog:(id)a5;
- (void)run;
@end

@implementation ISBiometricSignatureOperation

- (ISBiometricSignatureOperation)initWithBiometricAuthenticationContext:(id)a3 touchIDDialog:(id)a4 fallbackDialog:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = ISBiometricSignatureOperation;
  v12 = [(ISOperation *)&v16 init];
  if (v12)
  {
    v13 = objc_opt_new();
    biometricStore = v12->_biometricStore;
    v12->_biometricStore = v13;

    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v12->_fallbackDialog, a5);
    objc_storeStrong(&v12->_touchIDDialog, a4);
  }

  return v12;
}

- (void)run
{
  v2 = self;
  v194 = *MEMORY[0x277D85DE8];
  v3 = [(ISBiometricSignatureOperation *)self context];
  v4 = [v3 accountIdentifier];

  v5 = [(ISBiometricSignatureOperation *)v2 context];
  v183 = [v5 challenge];

  v6 = [(ISBiometricSignatureOperation *)v2 biometricStore];
  v7 = [v6 biometricAvailabilityForAccountIdentifier:v4];
  v8 = v7;
  v184 = v6;
  v185 = v2;
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v21 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v22 = v21 | 2;
        }

        else
        {
          v22 = v21;
        }

        v12 = [v9 OSLogObject];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v22 &= 2u;
        }

        if (!v22)
        {
          goto LABEL_81;
        }

        break;
      case 5:
        v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v39 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v40 = v39 | 2;
        }

        else
        {
          v40 = v39;
        }

        v12 = [v9 OSLogObject];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v40 &= 2u;
        }

        if (!v40)
        {
          goto LABEL_81;
        }

        break;
      case 6:
        v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v13 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v14 = v13 | 2;
        }

        else
        {
          v14 = v13;
        }

        v12 = [v9 OSLogObject];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 &= 2u;
        }

        if (!v14)
        {
          goto LABEL_81;
        }

        break;
      default:
        goto LABEL_96;
    }

LABEL_79:
    v190 = 138543362;
    v191 = objc_opt_class();
    v41 = v191;
    LODWORD(v174) = 12;
    v168 = &v190;
    v42 = _os_log_send_and_compose_impl();

    if (!v42)
    {
LABEL_82:

      goto LABEL_97;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, &v190, v174}];
    free(v42);
    v168 = v12;
    SSFileLog();
LABEL_81:

    goto LABEL_82;
  }

  if (!v7)
  {
    v15 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v190 = 138543362;
      v191 = objc_opt_class();
      v19 = v191;
      LODWORD(v174) = 12;
      v168 = &v190;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_37:

        goto LABEL_128;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v190, v174}];
      free(v20);
      v168 = v18;
      SSFileLog();
    }

    goto LABEL_37;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v9)
      {
        v9 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (!v11)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    goto LABEL_96;
  }

  v23 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v23)
  {
    v23 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v24 = [v23 shouldLog];
  if ([v23 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v23 OSLogObject];
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v25 &= 2u;
  }

  if (v25)
  {
    v190 = 138543362;
    v191 = objc_opt_class();
    v27 = v191;
    LODWORD(v174) = 12;
    v168 = &v190;
    v28 = _os_log_send_and_compose_impl();

    if (!v28)
    {
      goto LABEL_58;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v190, v174}];
    free(v28);
    v168 = v26;
    SSFileLog();
  }

LABEL_58:
  v29 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v29)
  {
    v29 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v30 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    v31 = v30 | 2;
  }

  else
  {
    v31 = v30;
  }

  v32 = [v29 OSLogObject];
  if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v31 &= 2u;
  }

  if (v31)
  {
    v33 = objc_opt_class();
    v190 = 138543362;
    v191 = v33;
    v34 = v33;
    LODWORD(v174) = 12;
    v168 = &v190;
    v35 = _os_log_send_and_compose_impl();

    if (!v35)
    {
      goto LABEL_69;
    }

    v32 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, &v190, v174}];
    free(v35);
    v168 = v32;
    SSFileLog();
  }

LABEL_69:
  v36 = [(ISBiometricSignatureOperation *)v2 context];
  v37 = [v36 accountName];

  if (![(ISBiometricSignatureOperation *)v2 _promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:v4 accountName:v37])
  {
    v43 = [(ISBiometricSignatureOperation *)v2 context];
    [v43 setIsIdentityMapInvalid:1];

    v44 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v44)
    {
      v44 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v45 = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = v45 | 2;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v44 OSLogObject];
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v46 &= 2u;
    }

    if (v46)
    {
      v48 = objc_opt_class();
      v190 = 138543362;
      v191 = v48;
      v49 = v48;
      LODWORD(v174) = 12;
      v168 = &v190;
      v50 = _os_log_send_and_compose_impl();

      if (!v50)
      {
LABEL_94:

        v51 = [(ISBiometricSignatureOperation *)v2 touchIDDialog];
        v52 = [v51 paymentSheet];
        [v52 setMerchantSession:0];

        v53 = [(ISBiometricSignatureOperation *)v2 touchIDDialog];
        v54 = [v53 paymentSheet];
        [v54 setApplePayClassic:0];

        v8 = 2;
        goto LABEL_95;
      }

      v47 = [MEMORY[0x277CCACA8] stringWithCString:v50 encoding:{4, &v190, v174}];
      free(v50);
      v168 = v47;
      SSFileLog();
    }

    goto LABEL_94;
  }

  v38 = +[ISBiometricStore sharedInstance];
  [v38 saveIdentityMapForAccountIdentifier:v4];

  v8 = [v6 biometricAvailabilityForAccountIdentifier:v4];
LABEL_95:

LABEL_96:
  if (v8)
  {
LABEL_97:
    v55 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v55)
    {
      v55 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v56 = [v55 shouldLog];
    if ([v55 shouldLogToDisk])
    {
      v57 = v56 | 2;
    }

    else
    {
      v57 = v56;
    }

    v58 = [v55 OSLogObject];
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v57 &= 2u;
    }

    if (v57)
    {
      v59 = objc_opt_class();
      v60 = MEMORY[0x277CCABB0];
      v61 = v59;
      v62 = [v60 numberWithInteger:v8];
      v190 = 138543618;
      v191 = v59;
      v192 = 2114;
      v193 = v62;
      LODWORD(v174) = 22;
      v169 = &v190;
      v63 = _os_log_send_and_compose_impl();

      v2 = v185;
      if (!v63)
      {
LABEL_108:

        v64 = [(ISBiometricSignatureOperation *)v2 touchIDDialog];
        v65 = [v64 paymentSheet];
        if (v65)
        {
          v66 = [(ISBiometricSignatureOperation *)v2 context];
          [v66 setPaymentSheet:v65];
        }

        v67 = [(ISBiometricSignatureOperation *)v2 context];
        v68 = [v67 isExtendedAction];

        if (v68)
        {
          v69 = *MEMORY[0x277D6A110];
          v70 = SSError();
          v71 = *MEMORY[0x277D6A100];
          v72 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          v73 = SSErrorBySettingUserInfoValue();
LABEL_123:

          v79 = 0;
          v80 = 0;
          v81 = 0;
LABEL_124:

          v82 = v73;
          v2 = v185;
          goto LABEL_125;
        }

        v72 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v72)
        {
          v72 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v74 = [v72 shouldLog];
        if ([v72 shouldLogToDisk])
        {
          v75 = v74 | 2;
        }

        else
        {
          v75 = v74;
        }

        v70 = [v72 OSLogObject];
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v75 &= 2u;
        }

        if (!v75)
        {
LABEL_122:
          v73 = 0;
          goto LABEL_123;
        }

        v76 = objc_opt_class();
        v190 = 138543362;
        v191 = v76;
        v77 = v76;
        LODWORD(v174) = 12;
        v170 = &v190;
        v78 = _os_log_send_and_compose_impl();

        if (v78)
        {
          v70 = [MEMORY[0x277CCACA8] stringWithCString:v78 encoding:{4, &v190, v174}];
          free(v78);
          v170 = v70;
          SSFileLog();
          goto LABEL_122;
        }

LABEL_199:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v73 = 0;
        goto LABEL_124;
      }

      v58 = [MEMORY[0x277CCACA8] stringWithCString:v63 encoding:{4, &v190, v174}];
      free(v63);
      v169 = v58;
      SSFileLog();
    }

    goto LABEL_108;
  }

LABEL_128:
  v86 = [(ISBiometricSignatureOperation *)v2 context];
  v87 = [v86 isExtendedAction];
  v88 = v87;
  v89 = v87;

  if (v88)
  {
    goto LABEL_146;
  }

  v90 = [(ISBiometricSignatureOperation *)v2 touchIDDialog];
  v91 = [v90 isDualAction];

  v92 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v92)
  {
    v92 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v93 = [v92 shouldLog];
  if ([v92 shouldLogToDisk])
  {
    v94 = v93 | 2;
  }

  else
  {
    v94 = v93;
  }

  v95 = [v92 OSLogObject];
  if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v94 &= 2u;
  }

  if (v94)
  {
    v96 = objc_opt_class();
    v97 = MEMORY[0x277CCABB0];
    v98 = v96;
    v99 = [v97 numberWithBool:v91];
    v190 = 138543618;
    v191 = v96;
    v192 = 2114;
    v193 = v99;
    LODWORD(v174) = 22;
    v171 = &v190;
    v100 = _os_log_send_and_compose_impl();

    v2 = v185;
    if (!v100)
    {
      goto LABEL_140;
    }

    v95 = [MEMORY[0x277CCACA8] stringWithCString:v100 encoding:{4, &v190, v174}];
    free(v100);
    v171 = v95;
    SSFileLog();
  }

LABEL_140:
  if (!v91)
  {
    goto LABEL_146;
  }

  if (!+[ISBiometricStore shouldUseApplePayClassic])
  {
    if (+[ISBiometricStore shouldUseAutoEnrollment])
    {
      goto LABEL_145;
    }

LABEL_146:
    v105 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v105)
    {
      v105 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v106 = [v105 shouldLog];
    if ([v105 shouldLogToDisk])
    {
      v107 = v106 | 2;
    }

    else
    {
      v107 = v106;
    }

    v108 = [v105 OSLogObject];
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v107 &= 2u;
    }

    if (v107)
    {
      v109 = objc_opt_class();
      v110 = MEMORY[0x277CCABB0];
      v111 = v109;
      v112 = [v110 numberWithInteger:v89];
      v190 = 138543618;
      v191 = v109;
      v192 = 2114;
      v193 = v112;
      LODWORD(v174) = 22;
      v171 = &v190;
      v113 = _os_log_send_and_compose_impl();

      v2 = v185;
      if (!v113)
      {
LABEL_157:

        if (v89)
        {
          goto LABEL_161;
        }

        v103 = [(ISBiometricSignatureOperation *)v2 context];
        v104 = 1;
        goto LABEL_159;
      }

      v108 = [MEMORY[0x277CCACA8] stringWithCString:v113 encoding:{4, &v190, v174}];
      free(v113);
      v171 = v108;
      SSFileLog();
    }

    goto LABEL_157;
  }

  v101 = [(ISBiometricSignatureOperation *)v2 context];
  v102 = [ISBiometricStore isActionSupported:3 withBiometricAuthenticationContext:v101];

  if (+[ISBiometricStore shouldUseAutoEnrollment])
  {
LABEL_145:
    v103 = [(ISBiometricSignatureOperation *)v2 context];
    v104 = 4;
LABEL_159:
    v102 = [ISBiometricStore isActionSupported:v104 withBiometricAuthenticationContext:v103, v171];
  }

  if (!v102)
  {
    v134 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v134)
    {
      v134 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v135 = [v134 shouldLog];
    if ([v134 shouldLogToDisk])
    {
      v136 = v135 | 2;
    }

    else
    {
      v136 = v135;
    }

    v137 = [v134 OSLogObject];
    if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v136 &= 2u;
    }

    if (v136)
    {
      v138 = objc_opt_class();
      v190 = 138543362;
      v191 = v138;
      v139 = v138;
      LODWORD(v174) = 12;
      v173 = &v190;
      v140 = _os_log_send_and_compose_impl();

      if (!v140)
      {
        goto LABEL_187;
      }

      v137 = [MEMORY[0x277CCACA8] stringWithCString:v140 encoding:{4, &v190, v174}];
      free(v140);
      v173 = v137;
      SSFileLog();
    }

LABEL_187:
    v141 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v141)
    {
      v141 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v142 = [v141 shouldLog];
    if ([v141 shouldLogToDisk])
    {
      v143 = v142 | 2;
    }

    else
    {
      v143 = v142;
    }

    v144 = [v141 OSLogObject];
    if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      v143 &= 2u;
    }

    if (v143)
    {
      v145 = objc_opt_class();
      v190 = 138543618;
      v191 = v145;
      v192 = 2114;
      v193 = @"Incorrect ACL version";
      v146 = v145;
      LODWORD(v174) = 22;
      v147 = _os_log_send_and_compose_impl();

      if (!v147)
      {
LABEL_198:

        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"mt-tid-%@", v4];
        v188 = *MEMORY[0x277CCA240];
        v189 = v64;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v72 = [MEMORY[0x277D69CB8] sharedStorage];
        [v72 removeCookiesWithProperties:v65];
        goto LABEL_199;
      }

      v144 = [MEMORY[0x277CCACA8] stringWithCString:v147 encoding:{4, &v190, v174}];
      free(v147);
      SSFileLog();
    }

    goto LABEL_198;
  }

LABEL_161:
  v114 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v114)
  {
    v114 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v115 = [v114 shouldLog];
  if ([v114 shouldLogToDisk])
  {
    v116 = v115 | 2;
  }

  else
  {
    v116 = v115;
  }

  v117 = [v114 OSLogObject];
  if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    v116 &= 2u;
  }

  if (v116)
  {
    v118 = objc_opt_class();
    v190 = 138543362;
    v191 = v118;
    v119 = v118;
    LODWORD(v174) = 12;
    v172 = &v190;
    v120 = _os_log_send_and_compose_impl();

    if (!v120)
    {
      goto LABEL_172;
    }

    v117 = [MEMORY[0x277CCACA8] stringWithCString:v120 encoding:{4, &v190, v174}];
    free(v120);
    v172 = v117;
    SSFileLog();
  }

LABEL_172:
  v187 = 0;
  v64 = [v6 publicKeyDataForAccountIdentifier:v4 purpose:v89 error:&v187];
  v82 = v187;
  if (v64)
  {
    v65 = ISCopyEncodedBase64([v64 bytes], objc_msgSend(v64, "length"));
    v72 = [v183 stringByAppendingString:v65];
    v182 = [v72 dataUsingEncoding:4];
    v121 = [(ISBiometricSignatureOperation *)v2 touchIDDialog];
    v122 = v121;
    v179 = v4;
    if (v121)
    {
      v123 = MEMORY[0x277D69BE8];
      v124 = [v121 body];
      v125 = [(ISBiometricSignatureOperation *)v2 context];
      [v125 accountName];
      v127 = v126 = v122;
      v181 = [v123 stringWithFormattedUsernameForString:v124 username:v127];

      v122 = v126;
      v128 = [v126 buttonForButtonType:0];
      v129 = [v128 title];

      v180 = [v126 title];
      v130 = [v126 paymentSheet];

      if (!v130)
      {
        v6 = v184;
        v2 = v185;
        goto LABEL_213;
      }

      v2 = v185;
      v131 = [(ISBiometricSignatureOperation *)v185 context];
      [v126 paymentSheet];
      v133 = v132 = v129;
      [v131 setPaymentSheet:v133];

      v129 = v132;
      v6 = v184;
    }

    else
    {
      v131 = [(ISBiometricSignatureOperation *)v2 context];
      [v131 accountName];
      v181 = v180 = 0;
      v129 = 0;
    }

LABEL_213:
    v151 = objc_alloc_init(MEMORY[0x277D69A78]);
    [v151 setCancelLabel:v129];
    [v151 setReason:v181];
    [v151 setTitle:v180];
    v152 = [(ISBiometricSignatureOperation *)v2 context];
    v175 = v151;
    [v152 setConsolidatedDialog:v151];

    v153 = [(ISBiometricSignatureOperation *)v2 context];
    v186 = v82;
    v154 = [v6 signData:v182 context:v153 error:&v186];
    v73 = v186;

    v177 = v122;
    v178 = v154;
    v176 = v129;
    if (!v154 || v73)
    {
      v155 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v155)
      {
        v155 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v163 = [v155 shouldLog];
      if ([v155 shouldLogToDisk])
      {
        v163 |= 2u;
      }

      v158 = [v155 OSLogObject];
      if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        v163 &= 2u;
      }

      v159 = v175;
      if (!v163)
      {
        v81 = 0;
        goto LABEL_235;
      }

      v164 = objc_opt_class();
      v190 = 138543618;
      v191 = v164;
      v192 = 2114;
      v193 = v73;
      v165 = v164;
      LODWORD(v174) = 22;
      v170 = &v190;
      v162 = _os_log_send_and_compose_impl();

      v81 = 0;
      if (!v162)
      {
LABEL_236:

        v166 = [(ISBiometricSignatureOperation *)v185 context];
        v80 = [v166 paymentTokenData];

        v167 = [(ISBiometricSignatureOperation *)v185 context];
        v79 = [v167 fpanID];

        v4 = v179;
        goto LABEL_124;
      }
    }

    else
    {
      v81 = ISCopyEncodedBase64([v154 bytes], objc_msgSend(v154, "length"));
      [v6 saveIdentityMapForAccountIdentifier:v179];
      v155 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v155)
      {
        v155 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v156 = [v155 shouldLog];
      if ([v155 shouldLogToDisk])
      {
        v157 = v156 | 2;
      }

      else
      {
        v157 = v156;
      }

      v158 = [v155 OSLogObject];
      if (!os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        v157 &= 2u;
      }

      v159 = v175;
      if (!v157)
      {
        goto LABEL_235;
      }

      v160 = objc_opt_class();
      v190 = 138543362;
      v191 = v160;
      v161 = v160;
      LODWORD(v174) = 12;
      v170 = &v190;
      v162 = _os_log_send_and_compose_impl();

      if (!v162)
      {
        goto LABEL_236;
      }
    }

    v158 = [MEMORY[0x277CCACA8] stringWithCString:v162 encoding:{4, &v190, v174}];
    free(v162);
    v170 = v158;
    SSFileLog();
LABEL_235:

    goto LABEL_236;
  }

  v65 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v65)
  {
    v65 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v148 = [v65 shouldLog];
  if ([v65 shouldLogToDisk])
  {
    v148 |= 2u;
  }

  v72 = [v65 OSLogObject];
  if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    v148 &= 2u;
  }

  if (!v148)
  {
LABEL_209:
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v73 = v82;
    goto LABEL_124;
  }

  v149 = objc_opt_class();
  v190 = 138543618;
  v191 = v149;
  v192 = 2114;
  v193 = v82;
  v150 = v149;
  LODWORD(v174) = 22;
  v170 = &v190;
  v81 = _os_log_send_and_compose_impl();

  if (v81)
  {
    v72 = [MEMORY[0x277CCACA8] stringWithCString:v81 encoding:{4, &v190, v174}];
    free(v81);
    v170 = v72;
    SSFileLog();
    goto LABEL_209;
  }

  v79 = 0;
  v80 = 0;
LABEL_125:

  [(ISOperation *)v2 setError:v82];
  [(ISOperation *)v2 setSuccess:v81 != 0, v170];
  v83 = [(ISBiometricSignatureOperation *)v2 outputBlock];
  v84 = v83;
  if (v83)
  {
    (*(v83 + 16))(v83, v81, v80, v79, v82);
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (BOOL)_promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:(id)a3 accountName:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[ISDevice sharedInstance];
  v9 = [v8 deviceBiometricStyle];

  v10 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:v7];
  [v10 setCanCreateNewAccount:0];
  [v10 setCanSetActiveAccount:0];
  [v10 setPromptStyle:1];
  [v10 setShouldCreateNewSession:1];
  v63 = v6;
  if ([v6 length])
  {
    if (v9 == 3)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
      goto LABEL_9;
    }

    if (v9 == 2)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_9:
      v17 = [v12 localizedStringForKey:v14 value:&stru_2884BCFD0 table:@"Mesa"];
      v18 = [v11 stringWithFormat:v17, v6];

LABEL_22:
      goto LABEL_36;
    }

    v19 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v19)
    {
      v19 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (!v23)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v9 == 3)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v15;
    v16 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
    goto LABEL_21;
  }

  if (v9 == 2)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v15;
    v16 = @"PROMPT_REASON_NEW_FINGERS_ANONYMOUS";
LABEL_21:
    v18 = [v15 localizedStringForKey:v16 value:&stru_2884BCFD0 table:@"Mesa"];
    goto LABEL_22;
  }

  v19 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v19)
  {
    v19 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v24 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v22 = [v19 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 & 2;
  }

  if (!v26)
  {
    goto LABEL_34;
  }

LABEL_32:
  v66 = 138543362;
  v67 = objc_opt_class();
  v27 = v67;
  LODWORD(v61) = 12;
  v59 = &v66;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v66, v61}];
    free(v28);
    v59 = v22;
    SSFileLog();
LABEL_34:
  }

  v18 = 0;
LABEL_36:
  [v10 setReasonDescription:{v18, v59}];
  v29 = dispatch_semaphore_create(0);
  v30 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v30 setAuthenticationContext:v10];
  v31 = [(ISBiometricSignatureOperation *)self fallbackDialog];
  [(ISServerAuthenticationOperation *)v30 setDialog:v31];

  [(ISServerAuthenticationOperation *)v30 setPerformsButtonAction:0];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __112__ISBiometricSignatureOperation__promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier_accountName___block_invoke;
  v64[3] = &unk_27A670868;
  v64[4] = self;
  v32 = v29;
  v65 = v32;
  [(ISServerAuthenticationOperation *)v30 setCompletionBlock:v64];
  v33 = +[ISOperationQueue mainQueue];
  [v33 addOperation:v30];

  v34 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v32, v34))
  {
    goto LABEL_50;
  }

  v35 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v35)
  {
    v35 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v36 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    v37 = v36 | 2;
  }

  else
  {
    v37 = v36;
  }

  v38 = [v35 OSLogObject];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (!v39)
  {
    goto LABEL_48;
  }

  v40 = objc_opt_class();
  v66 = 138543362;
  v67 = v40;
  v41 = v40;
  LODWORD(v61) = 12;
  v60 = &v66;
  v42 = _os_log_send_and_compose_impl();

  if (v42)
  {
    v38 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, &v66, v61}];
    free(v42);
    v60 = v38;
    SSFileLog();
LABEL_48:
  }

LABEL_50:
  v43 = [(ISOperation *)v30 success];
  v44 = [(ISOperation *)v30 error];

  if (v44)
  {
    v45 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v45)
    {
      v45 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v46 = [v45 shouldLog];
    if ([v45 shouldLogToDisk])
    {
      v47 = v46 | 2;
    }

    else
    {
      v47 = v46;
    }

    v48 = [v45 OSLogObject];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = v47;
    }

    else
    {
      v49 = v47 & 2;
    }

    if (v49)
    {
      v50 = objc_opt_class();
      v62 = v50;
      [(ISOperation *)v30 error];
      v51 = v32;
      v52 = v43;
      v53 = v10;
      v55 = v54 = v18;
      v66 = 138543618;
      v67 = v50;
      v68 = 2114;
      v69 = v55;
      LODWORD(v61) = 22;
      v56 = _os_log_send_and_compose_impl();

      v18 = v54;
      v10 = v53;
      v43 = v52;
      v32 = v51;

      if (!v56)
      {
LABEL_63:

        goto LABEL_64;
      }

      v48 = [MEMORY[0x277CCACA8] stringWithCString:v56 encoding:{4, &v66, v61}];
      free(v56);
      SSFileLog();
    }

    goto LABEL_63;
  }

LABEL_64:

  v57 = *MEMORY[0x277D85DE8];
  return v43;
}

intptr_t __112__ISBiometricSignatureOperation__promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier_accountName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
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

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 32);
  LODWORD(v12) = 138543362;
  *(&v12 + 4) = objc_opt_class();
  v7 = *(&v12 + 4);
  LODWORD(v11) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v12, v11, v12}];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end