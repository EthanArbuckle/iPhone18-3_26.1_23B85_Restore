@interface SESClient
+ (id)sharedClient;
- (id)connectToService;
- (id)remoteObjectProxyWithError:(id *)error;
- (id)synchronousRemoteObjectProxyWithError:(id *)error;
- (void)connectionResetHandler;
- (void)setServiceName:(uint64_t)name;
@end

@implementation SESClient

+ (id)sharedClient
{
  objc_opt_self();
  if (sharedClient_pred != -1)
  {
    +[SESClient sharedClient];
  }

  v0 = sharedClient_sharedClient;

  return v0;
}

void __25__SESClient_sharedClient__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedClient_sharedClient;
  sharedClient_sharedClient = v0;

  v2 = sharedClient_sharedClient;

  [(SESClient *)v2 setServiceName:?];
}

- (void)connectionResetHandler
{
  if (self)
  {
    obj = self;
    objc_sync_enter(obj);
    v1 = obj[2];
    [v1 invalidate];

    v2 = obj[2];
    obj[2] = 0;

    objc_sync_exit(obj);
  }
}

- (id)connectToService
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy[2])
    {
      v2 = objc_alloc(MEMORY[0x1E696B0B8]);
      v3 = selfCopy[1];
      v4 = [v2 initWithMachServiceName:v3 options:4096];
      v5 = selfCopy[2];
      selfCopy[2] = v4;

      if (!selfCopy[2])
      {
        v144 = SESDefaultLogObject();
        v145 = *MEMORY[0x1E69E5148];
        v142 = SESCreateAndLogError();

        goto LABEL_6;
      }

      objc_initWeak(location, selfCopy);
      v6 = selfCopy[2];
      v148[0] = MEMORY[0x1E69E9820];
      v148[1] = 3221225472;
      v148[2] = __29__SESClient_connectToService__block_invoke;
      v148[3] = &unk_1E82D1148;
      objc_copyWeak(&v149, location);
      [v6 setInterruptionHandler:v148];

      v7 = selfCopy[2];
      v146[0] = MEMORY[0x1E69E9820];
      v146[1] = 3221225472;
      v146[2] = __29__SESClient_connectToService__block_invoke_510;
      v146[3] = &unk_1E82D1148;
      objc_copyWeak(&v147, location);
      [v7 setInvalidationHandler:v146];

      v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F476C3D8];
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
      [v8 setClasses:v12 forSelector:? argumentIndex:? ofReply:?];

      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      [v8 setClasses:v16 forSelector:? argumentIndex:? ofReply:?];

      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
      [v8 setClasses:v20 forSelector:? argumentIndex:? ofReply:?];

      v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      [v8 setClasses:v21 forSelector:sel_preWarmAlisha_reply_ argumentIndex:0 ofReply:1];

      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = [v22 setWithObjects:{v23, v24, v25, v26, v27, objc_opt_class(), 0}];
      [v8 setClasses:v28 forSelector:? argumentIndex:? ofReply:?];

      v29 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v31 = objc_opt_class();
      v32 = objc_opt_class();
      v33 = objc_opt_class();
      v34 = objc_opt_class();
      v35 = [v29 setWithObjects:{v30, v31, v32, v33, v34, objc_opt_class(), 0}];
      [v8 setClasses:v35 forSelector:? argumentIndex:? ofReply:?];

      v36 = MEMORY[0x1E695DFD8];
      v37 = objc_opt_class();
      v38 = objc_opt_class();
      v39 = objc_opt_class();
      v40 = objc_opt_class();
      v41 = objc_opt_class();
      v42 = [v36 setWithObjects:{v37, v38, v39, v40, v41, objc_opt_class(), 0}];
      [v8 setClasses:v42 forSelector:? argumentIndex:? ofReply:?];

      v43 = MEMORY[0x1E695DFD8];
      v44 = objc_opt_class();
      v45 = objc_opt_class();
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = objc_opt_class();
      v49 = [v43 setWithObjects:{v44, v45, v46, v47, v48, objc_opt_class(), 0}];
      [v8 setClasses:v49 forSelector:sel_createLocalEndpointWithProxy_readerIdentifier_readerPublicKey_reply_ argumentIndex:0 ofReply:1];

      v50 = MEMORY[0x1E695DFD8];
      v51 = objc_opt_class();
      v52 = objc_opt_class();
      v53 = objc_opt_class();
      v54 = objc_opt_class();
      v55 = objc_opt_class();
      v56 = objc_opt_class();
      v57 = [v50 setWithObjects:{v51, v52, v53, v54, v55, v56, objc_opt_class(), 0}];
      [v8 setClasses:v57 forSelector:sel_createLyonEndpointWithProxy_readerGroupIdentifier_readerPublicKey_homeUUID_privateMailboxSize_reply_ argumentIndex:0 ofReply:1];

      v58 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4763980];
      [v8 setInterface:v58 forSelector:sel_createAlishaEndpointWithProxy_identifier_authorityIdentifier_subjectIdentifier_configuration_readerIdentifier_readerPublicKey_readerInformation_startDate_endDate_keyIdentifier_authorizedKeys_confidentialMailBoxSize_privateMailBoxSize_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createHydraEndpointWithProxy_serverParams_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createLyonHydraEndpointWithProxy_serverParams_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createEncryptionKeyEndPointWithProxy_identifier_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_updateHydraMailboxesWithProxy_identifier_encryptedSEBlob_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createLocalEndpointWithProxy_readerIdentifier_readerPublicKey_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createLyonEndpointWithProxy_readerGroupIdentifier_readerPublicKey_homeUUID_privateMailboxSize_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_updateLyonCredentialDocumentStatusWithProxy_endpointIdentifier_accessDocumentPresent_accessDocumentSignedTimestamp_revocationDocumentPresent_revocationDocumentSignedTimestamp_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_configureEndpointWithProxy_identifier_privateData_confidentialData_contactlessVolatileVisibility_contactlessPersistentVisibility_wiredVolatileVisibility_wiredPersistentVisibility_keySlot_nfcExpressOnlyInLPM_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:sel_cleanupAppletsWithNoEndpoints_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_listEndPointContainers_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_remoteTerminationRequestWithProxy_remoteTerminationRequest_publicKeyIdentifier_taskID_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_deleteEndPointWithProxy_identifier_mustBeTerminated_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_setPrivateDataWithProxy_identifier_privateData_privateDataOffset_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_getPrivateDataWithProxy_identifier_privateDataOffset_privateDataLength_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_signWithSEKey_keyData_data_algorithm_laExternalizedContext_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_signPrecomputedDigest_keyData_digest_algorithm_laExternalizedContext_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_sharedSecretWithSEKey_keyData_publicKey_algorithm_laExternalizedContext_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createPTAttestation_keyData_subjectIdentifier_nonce_OIDs_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_createSEKey_extractedACLs_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_deleteSEKey_keyData_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:sel_findAndAttest_challenge_usingProxy_callback_ argumentIndex:2 ofReply:0];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:sel_createSELegacyKey_subjectIdentifier_metaData_localValidationList_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_deleteSELegacyKey_keySlot_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_signWithSELegacyKey_keySlot_challenge_metaData_authorization_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_signPrecomputedWithSELegacyKey_keySlot_metaData_authorization_authorizationType_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_getSELegacyKeyOccupiedSlots_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_convertEndpointWithProxy_keyIdentifier_notBeforeDate_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:? argumentIndex:? ofReply:?];
      [v8 setInterface:v58 forSelector:sel_preAuthorizeEndpointWithProxy_keyIdentifier_bindingAttestation_reply_ argumentIndex:0 ofReply:0];
      [v8 setInterface:v58 forSelector:sel_authorizeEndPointWithProxy_version_identifier_externalCA_instanceCA_endpointCertificate_encryptionKeyAttestation_bindingAttestation_bindingAttestationToken_confidentialDataOffset_confidentialDataLength_metaData_authorizationID_reply_ argumentIndex:0 ofReply:0];
      v59 = MEMORY[0x1E695DFD8];
      v60 = objc_opt_class();
      v61 = objc_opt_class();
      v62 = objc_opt_class();
      v63 = objc_opt_class();
      v64 = objc_opt_class();
      v65 = [v59 setWithObjects:{v60, v61, v62, v63, v64, objc_opt_class(), 0}];
      [v8 setClasses:v65 forSelector:sel_listEndPointsWithProxy_mandatoryReconciliation_reply_ argumentIndex:0 ofReply:1];

      v66 = MEMORY[0x1E695DFD8];
      v67 = objc_opt_class();
      v68 = objc_opt_class();
      v69 = [v66 setWithObjects:{v67, v68, objc_opt_class(), 0}];
      [v8 setClasses:v69 forSelector:sel_createEndPointAuthorizationID_userAuth_reply_ argumentIndex:0 ofReply:1];

      v70 = MEMORY[0x1E695DFD8];
      v71 = objc_opt_class();
      v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
      [v8 setClasses:v72 forSelector:sel_authorizeEndPointWithProxy_version_identifier_externalCA_instanceCA_endpointCertificate_encryptionKeyAttestation_bindingAttestation_bindingAttestationToken_confidentialDataOffset_confidentialDataLength_metaData_authorizationID_reply_ argumentIndex:0 ofReply:1];

      v73 = MEMORY[0x1E695DFD8];
      v74 = objc_opt_class();
      v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
      [v8 setClasses:v75 forSelector:sel_signatureWithEndPointIdentifier_metaDataHash_authorization_reply_ argumentIndex:0 ofReply:1];

      v76 = MEMORY[0x1E695DFD8];
      v77 = objc_opt_class();
      v78 = [v76 setWithObjects:{v77, objc_opt_class(), 0}];
      [v8 setClasses:v78 forSelector:sel_signatureISO18013WithEndPointIdentifier_toBeSigned_reply_ argumentIndex:0 ofReply:1];

      v79 = MEMORY[0x1E695DFD8];
      v80 = objc_opt_class();
      v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
      [v8 setClasses:v81 forSelector:sel_getEndpointBindingAttestationRequestWithProxy_authorityIdentifier_reply_ argumentIndex:0 ofReply:1];

      v82 = MEMORY[0x1E695DFD8];
      v83 = objc_opt_class();
      v84 = objc_opt_class();
      v85 = objc_opt_class();
      v86 = [v82 setWithObjects:{v83, v84, v85, objc_opt_class(), 0}];
      [v8 setClasses:v86 forSelector:sel_listEndPointAuthorizations_ argumentIndex:0 ofReply:1];

      v87 = MEMORY[0x1E695DFD8];
      v88 = objc_opt_class();
      v89 = objc_opt_class();
      v90 = objc_opt_class();
      v91 = objc_opt_class();
      v92 = [v87 setWithObjects:{v88, v89, v90, v91, objc_opt_class(), 0}];
      [v8 setClasses:v92 forSelector:sel_getSESEndpointTSMDictionary_reply_ argumentIndex:0 ofReply:1];

      v93 = MEMORY[0x1E695DFD8];
      v94 = objc_opt_class();
      v95 = objc_opt_class();
      v96 = [v93 setWithObjects:{v94, v95, objc_opt_class(), 0}];
      [v8 setClasses:v96 forSelector:sel_createFiDOKeyForRelyingParty_relyingPartyAccountHash_challenge_usingProxy_callback_ argumentIndex:0 ofReply:0];

      v97 = MEMORY[0x1E695DFD8];
      v98 = objc_opt_class();
      v99 = objc_opt_class();
      v100 = [v97 setWithObjects:{v98, v99, objc_opt_class(), 0}];
      [v8 setClasses:v100 forSelector:sel_deleteFiDOKeyFor_usingProxy_callback_ argumentIndex:0 ofReply:0];

      v101 = MEMORY[0x1E695DFD8];
      v102 = objc_opt_class();
      v103 = objc_opt_class();
      v104 = objc_opt_class();
      v105 = [v101 setWithObjects:{v102, v103, v104, objc_opt_class(), 0}];
      [v8 setClasses:v105 forSelector:sel_checkMultipleFidoKeyPresence_usingProxy_callback_ argumentIndex:0 ofReply:0];

      v106 = MEMORY[0x1E695DFD8];
      v107 = objc_opt_class();
      v108 = objc_opt_class();
      v109 = objc_opt_class();
      v110 = [v106 setWithObjects:{v107, v108, v109, objc_opt_class(), 0}];
      [v8 setClasses:v110 forSelector:sel_signMultipleWithFidoKeysFor_challenges_forEndpointIdentifiers_externalizedAuth_usingProxy_callback_ argumentIndex:0 ofReply:0];

      v111 = MEMORY[0x1E695DFD8];
      v112 = objc_opt_class();
      v113 = objc_opt_class();
      v114 = [v111 setWithObjects:{v112, v113, objc_opt_class(), 0}];
      [v8 setClasses:v114 forSelector:sel_verifyWithFidoKeyFor_signedChallenge_usingProxy_callback_ argumentIndex:0 ofReply:0];

      v115 = MEMORY[0x1E695DFD8];
      v116 = objc_opt_class();
      v117 = objc_opt_class();
      v118 = [v115 setWithObjects:{v116, v117, objc_opt_class(), 0}];
      [v8 setClasses:v118 forSelector:sel_createFiDOKeyForRelyingParty_relyingPartyAccountHash_challenge_usingProxy_callback_ argumentIndex:0 ofReply:1];

      v119 = MEMORY[0x1E695DFD8];
      v120 = objc_opt_class();
      v121 = objc_opt_class();
      v122 = [v119 setWithObjects:{v120, v121, objc_opt_class(), 0}];
      [v8 setClasses:v122 forSelector:sel_checkMultipleFidoKeyPresence_usingProxy_callback_ argumentIndex:0 ofReply:1];

      v123 = MEMORY[0x1E695DFD8];
      v124 = objc_opt_class();
      v125 = objc_opt_class();
      v126 = objc_opt_class();
      v127 = objc_opt_class();
      v128 = [v123 setWithObjects:{v124, v125, v126, v127, objc_opt_class(), 0}];
      [v8 setClasses:v128 forSelector:sel_signMultipleWithFidoKeysFor_challenges_forEndpointIdentifiers_externalizedAuth_usingProxy_callback_ argumentIndex:0 ofReply:1];

      v129 = MEMORY[0x1E695DFD8];
      v130 = objc_opt_class();
      v131 = [v129 setWithObjects:{v130, objc_opt_class(), 0}];
      [v8 setClasses:v131 forSelector:sel_createPrivacyKeyForGroupIdentifier_withOptions_completion_ argumentIndex:0 ofReply:1];

      v132 = MEMORY[0x1E695DFD8];
      v133 = objc_opt_class();
      v134 = objc_opt_class();
      v135 = [v132 setWithObjects:{v133, v134, objc_opt_class(), 0}];
      [v8 setClasses:v135 forSelector:sel_privacyKeysForGroupIdentifier_keyIdentifier_completion_ argumentIndex:0 ofReply:1];

      v136 = MEMORY[0x1E695DFD8];
      v137 = objc_opt_class();
      v138 = objc_opt_class();
      v139 = [v136 setWithObjects:{v137, v138, objc_opt_class(), 0}];
      [v8 setClasses:v139 forSelector:sel_getSupportedAliroVersionsWithReply_ argumentIndex:0 ofReply:1];

      [v8 setClass:objc_opt_class() forSelector:sel_deletePrivacyKey_completion_ argumentIndex:0 ofReply:0];
      v140 = selfCopy[2];
      [v140 setRemoteObjectInterface:v8];

      v141 = selfCopy[2];
      [v141 resume];

      objc_destroyWeak(&v147);
      objc_destroyWeak(&v149);
      objc_destroyWeak(location);
    }

    v142 = 0;
LABEL_6:
    objc_sync_exit(selfCopy);

    goto LABEL_7;
  }

  v142 = 0;
LABEL_7:

  return v142;
}

void __29__SESClient_connectToService__block_invoke(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_ERROR, "Connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SESClient *)WeakRetained connectionResetHandler];
}

void __29__SESClient_connectToService__block_invoke_510(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_ERROR, "Connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SESClient *)WeakRetained connectionResetHandler];
}

- (id)remoteObjectProxyWithError:(id *)error
{
  if (error)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    connectToService = [(SESClient *)error connectToService];
    v4 = v13[5];
    if (v4)
    {
      v5 = 0;
      if (a2)
      {
        *a2 = v4;
      }
    }

    else
    {
      v6 = error[2];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__SESClient_remoteObjectProxyWithError___block_invoke;
      v11[3] = &unk_1E82D1170;
      v11[4] = &v12;
      v7 = [v6 remoteObjectProxyWithErrorHandler:v11];

      if (v13[5])
      {
        if (a2)
        {
          v8 = SESDefaultLogObject();
          v9 = *MEMORY[0x1E69E5148];
          *a2 = SESCreateAndLogError();
        }

        v5 = 0;
      }

      else
      {
        v5 = v7;
      }
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)synchronousRemoteObjectProxyWithError:(id *)error
{
  if (error)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3;
    v17 = __Block_byref_object_dispose__3;
    connectToService = [(SESClient *)error connectToService];
    v4 = v14[5];
    if (v4)
    {
      v5 = 0;
      if (a2)
      {
        *a2 = v4;
      }
    }

    else
    {
      v6 = error[2];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__SESClient_synchronousRemoteObjectProxyWithError___block_invoke;
      v12[3] = &unk_1E82D1170;
      v12[4] = &v13;
      v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

      if (v7 && !v14[5])
      {
        v5 = v7;
      }

      else
      {
        if (a2)
        {
          v8 = v14[5];
          v9 = SESDefaultLogObject();
          v10 = *MEMORY[0x1E69E5148];
          *a2 = SESCreateAndLogError();
        }

        v5 = 0;
      }
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setServiceName:(uint64_t)name
{
  if (name)
  {
    objc_storeStrong((name + 8), a2);
  }
}

@end