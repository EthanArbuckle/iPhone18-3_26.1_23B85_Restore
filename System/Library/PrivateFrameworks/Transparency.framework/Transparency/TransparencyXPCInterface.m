@interface TransparencyXPCInterface
+ (id)interface;
@end

@implementation TransparencyXPCInterface

+ (id)interface
{
  v219[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5C0E3B0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_initiateQueryForUris_application_completionBlock_ argumentIndex:0 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_initiateQueryForUris_application_completionBlock_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_ignoreFailureForResults_application_completionBlock_ argumentIndex:0 ofReply:0];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_markFailureSeenForResults_application_completionBlock_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_clearPeerCache_application_completionBlock_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
  [v2 setClasses:v21 forSelector:sel_validatePeers_application_fetchNow_completionBlock_ argumentIndex:0 ofReply:0];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
  [v2 setClasses:v25 forSelector:sel_validatePeers_application_fetchNow_completionBlock_ argumentIndex:0 ofReply:1];

  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v2 setClasses:v28 forSelector:sel_getCachedValidatePeerResults_application_completionBlock_ argumentIndex:0 ofReply:0];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
  [v2 setClasses:v32 forSelector:sel_getCachedValidatePeerResults_application_completionBlock_ argumentIndex:0 ofReply:1];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  [v2 setClasses:v35 forSelector:sel_fetchBatchQuery_application_userInitiated_completionHandler_ argumentIndex:0 ofReply:0];

  v36 = MEMORY[0x1E695DFD8];
  v219[0] = objc_opt_class();
  v219[1] = objc_opt_class();
  v219[2] = objc_opt_class();
  v219[3] = objc_opt_class();
  v219[4] = objc_opt_class();
  v219[5] = objc_opt_class();
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:6];
  v38 = [v36 setWithArray:v37];
  [v2 setClasses:v38 forSelector:sel_fetchBatchQuery_application_userInitiated_completionHandler_ argumentIndex:0 ofReply:1];

  v39 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v39 forSelector:sel_fetchBatchQuery_application_userInitiated_completionHandler_ argumentIndex:1 ofReply:1];

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [v2 setClasses:v42 forSelector:sel_validatePeerUri_application_accountKey_loggableDatas_queryRequest_queryResponse_promiseCompletionBlock_ argumentIndex:3 ofReply:0];

  v43 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v43 forSelector:sel_validateEnrollmentUri_application_accountKey_loggableData_queryRequest_queryResponse_promiseCompletionBlock_ argumentIndex:3 ofReply:0];

  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = [v44 setWithObjects:{v45, v46, objc_opt_class(), 0}];
  [v2 setClasses:v47 forSelector:sel_validatePeerResult_uuid_fetchNow_completionBlock_ argumentIndex:0 ofReply:1];

  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [v2 setClasses:v50 forSelector:sel_validateEnrollmentResult_uuid_completionBlock_ argumentIndex:3 ofReply:1];

  v51 = MEMORY[0x1E695DFD8];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [v2 setClasses:v53 forSelector:sel_forceValidateUUID_uri_completionBlock_ argumentIndex:3 ofReply:1];

  v54 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v54 forSelector:sel_getLoggableDataForDeviceId_application_completionBlock_ argumentIndex:0 ofReply:1];

  v55 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v55 forSelector:sel_getKTOptInState_completion_ argumentIndex:0 ofReply:0];

  v56 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v56 forSelector:sel_getKTOptInState_completion_ argumentIndex:0 ofReply:1];

  v57 = MEMORY[0x1E695DFD8];
  v58 = objc_opt_class();
  v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
  [v2 setClasses:v59 forSelector:sel_changeOptInState_application_completionBlock_ argumentIndex:1 ofReply:1];

  v60 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v60 forSelector:sel_getStatus_completionBlock_ argumentIndex:0 ofReply:1];

  v61 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v61 forSelector:sel_getStatus_completionBlock_ argumentIndex:1 ofReply:1];

  v62 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v62 forSelector:sel_getSelfStatus_completionBlock_ argumentIndex:0 ofReply:1];

  v63 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v63 forSelector:sel_getSelfStatus_completionBlock_ argumentIndex:1 ofReply:1];

  v64 = MEMORY[0x1E695DFD8];
  v65 = objc_opt_class();
  v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
  [v2 setClasses:v66 forSelector:sel_errorsForFailedEvents_completionBlock_ argumentIndex:0 ofReply:0];

  v67 = MEMORY[0x1E695DFA8];
  v68 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v69 = [v67 setWithSet:v68];

  [v69 addObject:objc_opt_class()];
  [v69 addObject:objc_opt_class()];
  [v2 setClasses:v69 forSelector:sel_errorsForFailedEvents_completionBlock_ argumentIndex:1 ofReply:1];
  v70 = MEMORY[0x1E695DFD8];
  v71 = objc_opt_class();
  v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
  [v2 setClasses:v72 forSelector:sel_ignoreFailedEvents_completionBlock_ argumentIndex:0 ofReply:0];

  v73 = MEMORY[0x1E695DFD8];
  v74 = objc_opt_class();
  v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
  [v2 setClasses:v75 forSelector:sel_getReportsForUUIDs_completionBlock_ argumentIndex:0 ofReply:0];

  v76 = MEMORY[0x1E695DFD8];
  v218[0] = objc_opt_class();
  v218[1] = objc_opt_class();
  v218[2] = objc_opt_class();
  v218[3] = objc_opt_class();
  v218[4] = objc_opt_class();
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v218 count:5];
  v78 = [v76 setWithArray:v77];
  [v2 setClasses:v78 forSelector:sel_getReportsForUUIDs_completionBlock_ argumentIndex:0 ofReply:1];

  v79 = MEMORY[0x1E695DFD8];
  v217[0] = objc_opt_class();
  v217[1] = objc_opt_class();
  v217[2] = objc_opt_class();
  v217[3] = objc_opt_class();
  v217[4] = objc_opt_class();
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v217 count:5];
  v81 = [v79 setWithArray:v80];
  [v2 setClasses:v81 forSelector:sel_makeReports_additionalData_auditorURI_completionBlock_ argumentIndex:0 ofReply:0];

  v82 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v82 forSelector:sel_makeReports_additionalData_auditorURI_completionBlock_ argumentIndex:2 ofReply:0];

  v83 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v83 forSelector:sel_transparencyIDSRepair_ argumentIndex:0 ofReply:1];

  v84 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v84 forSelector:sel_transparencyTriggerIDMSFetch_ argumentIndex:0 ofReply:1];

  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = [v85 setWithObjects:{v86, v87, v88, objc_opt_class(), 0}];
  [v2 setClasses:v89 forSelector:sel_transparencySysDiagnose_ argumentIndex:0 ofReply:1];

  v90 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v90 forSelector:sel_waitForIDSRegistration_complete_ argumentIndex:0 ofReply:1];

  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  [v2 setClasses:v93 forSelector:sel_idmsDevices_ argumentIndex:0 ofReply:1];

  v94 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v94 forSelector:sel_idmsDevices_ argumentIndex:1 ofReply:1];

  v95 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v95 forSelector:sel_triggerSelfValidate_ argumentIndex:0 ofReply:1];

  v96 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v96 forSelector:sel_performAndWaitForSelfValidate_ argumentIndex:1 ofReply:1];

  v97 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v97 forSelector:sel_performAndWaitForSelfValidate_ argumentIndex:2 ofReply:1];

  v98 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v98 forSelector:sel_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler_ argumentIndex:0 ofReply:0];

  v99 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v99 forSelector:sel_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler_ argumentIndex:0 ofReply:1];

  v100 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v100 forSelector:sel_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler_ argumentIndex:1 ofReply:1];

  v101 = MEMORY[0x1E695DFD8];
  v102 = objc_opt_class();
  v103 = [v101 setWithObjects:{v102, objc_opt_class(), 0}];
  [v2 setClasses:v103 forSelector:sel_transparencyCloudDevices_ argumentIndex:0 ofReply:1];

  v104 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v104 forSelector:sel_transparencyCloudDevices_ argumentIndex:1 ofReply:1];

  v105 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v105 forSelector:sel_transparencyCloudDeviceAdd_clientData_complete_ argumentIndex:0 ofReply:1];

  v106 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v106 forSelector:sel_transparencyCloudDeviceRemove_clientData_complete_ argumentIndex:0 ofReply:1];

  v107 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v107 forSelector:sel_getOptInStateForAccount_complete_ argumentIndex:0 ofReply:0];

  v108 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v108 forSelector:sel_getOptInStateForAccount_complete_ argumentIndex:0 ofReply:1];

  v109 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v109 forSelector:sel_getOptInStateForAccount_complete_ argumentIndex:1 ofReply:1];

  v110 = MEMORY[0x1E695DFD8];
  v216[0] = objc_opt_class();
  v216[1] = objc_opt_class();
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:2];
  v112 = [v110 setWithArray:v111];
  [v2 setClasses:v112 forSelector:sel_getAllOptInStates_ argumentIndex:0 ofReply:1];

  v113 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v113 forSelector:sel_getAllOptInStates_ argumentIndex:1 ofReply:1];

  v114 = MEMORY[0x1E695DFD8];
  v215 = objc_opt_class();
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v215 count:1];
  v116 = [v114 setWithArray:v115];
  [v2 setClasses:v116 forSelector:sel_getOptInStateForApplication_complete_ argumentIndex:0 ofReply:1];

  v117 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v117 forSelector:sel_getOptInStateForApplication_complete_ argumentIndex:1 ofReply:1];

  v118 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v118 forSelector:sel_transparencyGetKTSignatures_complete_ argumentIndex:0 ofReply:0];

  v119 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v119 forSelector:sel_transparencyGetKTSignatures_complete_ argumentIndex:0 ofReply:1];

  v120 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v120 forSelector:sel_transparencyGetKTSignatures_complete_ argumentIndex:1 ofReply:1];

  v121 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v121 forSelector:sel_transparencyDumpKTRegistrationData_ argumentIndex:0 ofReply:1];

  v122 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v122 forSelector:sel_transparencyDumpKTRegistrationData_ argumentIndex:1 ofReply:1];

  v123 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v123 forSelector:sel_transparencyPerformRegistrationSignature_ argumentIndex:0 ofReply:1];

  v124 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v124 forSelector:sel_transparencyPerformRegistrationSignature_ argumentIndex:1 ofReply:1];

  v125 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v125 forSelector:sel_transparencyClearKTRegistrationData_ argumentIndex:0 ofReply:1];

  v126 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v126 forSelector:sel_transparencyCheckKTAccountKey_complete_ argumentIndex:0 ofReply:1];

  v127 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v127 forSelector:sel_transparencyCheckKTAccountKey_complete_ argumentIndex:0 ofReply:1];

  v128 = MEMORY[0x1E695DFD8];
  v129 = objc_opt_class();
  v130 = objc_opt_class();
  v131 = [v128 setWithObjects:{v129, v130, objc_opt_class(), 0}];
  [v2 setClasses:v131 forSelector:sel_copyDeviceStatus_complete_ argumentIndex:0 ofReply:1];

  v132 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v132 forSelector:sel_copyDeviceStatus_complete_ argumentIndex:1 ofReply:1];

  v133 = MEMORY[0x1E695DFD8];
  v134 = objc_opt_class();
  v135 = [v133 setWithObjects:{v134, objc_opt_class(), 0}];
  [v2 setClasses:v135 forSelector:sel_clearPeerState_uris_block_ argumentIndex:0 ofReply:0];

  v136 = MEMORY[0x1E695DFD8];
  v137 = objc_opt_class();
  v138 = objc_opt_class();
  v139 = objc_opt_class();
  v140 = [v136 setWithObjects:{v137, v138, v139, objc_opt_class(), 0}];
  [v2 setClasses:v140 forSelector:sel_listPeerOverrides_ argumentIndex:0 ofReply:1];

  v141 = MEMORY[0x1E695DFD8];
  v214 = objc_opt_class();
  v142 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1];
  v143 = [v141 setWithArray:v142];
  [v2 setClasses:v143 forSelector:sel_updateStaticKeyEntry_contactIdentifier_contactExternalIdentifier_mappings_error_ argumentIndex:0 ofReply:0];

  v144 = MEMORY[0x1E695DFD8];
  v213[0] = objc_opt_class();
  v213[1] = objc_opt_class();
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:2];
  v146 = [v144 setWithArray:v145];
  [v2 setClasses:v146 forSelector:sel_updateStaticKeyEntry_contactIdentifier_contactExternalIdentifier_mappings_error_ argumentIndex:3 ofReply:0];

  v147 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v147 forSelector:sel_updateStaticKeyEntry_contactIdentifier_contactExternalIdentifier_mappings_error_ argumentIndex:0 ofReply:1];

  v148 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v148 forSelector:sel_updateStaticKeyEntry_contactIdentifier_contactExternalIdentifier_mappings_error_ argumentIndex:1 ofReply:1];

  v149 = MEMORY[0x1E695DFD8];
  v212 = objc_opt_class();
  v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v212 count:1];
  v151 = [v149 setWithArray:v150];
  [v2 setClasses:v151 forSelector:sel_updateStaticKeyEntry_contact_complete_ argumentIndex:0 ofReply:0];

  v152 = MEMORY[0x1E695DFD8];
  v211 = objc_opt_class();
  v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
  v154 = [v152 setWithArray:v153];
  [v2 setClasses:v154 forSelector:sel_updateStaticKeyEntry_contact_complete_ argumentIndex:1 ofReply:0];

  v155 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v155 forSelector:sel_updateStaticKeyEntry_contact_complete_ argumentIndex:0 ofReply:1];

  v156 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v156 forSelector:sel_updateStaticKeyEntry_contact_complete_ argumentIndex:1 ofReply:1];

  v157 = MEMORY[0x1E695DFD8];
  v210 = objc_opt_class();
  v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
  v159 = [v157 setWithArray:v158];
  [v2 setClasses:v159 forSelector:sel_findStaticKeyStoreMappingByKey_complete_ argumentIndex:0 ofReply:0];

  v160 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v160 forSelector:sel_findStaticKeyStoreMappingByKey_complete_ argumentIndex:0 ofReply:1];

  v161 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v161 forSelector:sel_findStaticKeyStoreMappingByKey_complete_ argumentIndex:1 ofReply:1];

  v162 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v162 forSelector:sel_findStaticKeyStoreMappingByIDSURI_complete_ argumentIndex:0 ofReply:1];

  v163 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v163 forSelector:sel_findStaticKeyStoreMappingByIDSURI_complete_ argumentIndex:1 ofReply:1];

  v164 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v164 forSelector:sel_findStaticKeyStoreMappingByContactIdentifer_complete_ argumentIndex:0 ofReply:1];

  v165 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v165 forSelector:sel_findStaticKeyStoreMappingByContactIdentifer_complete_ argumentIndex:1 ofReply:1];

  v166 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v166 forSelector:sel_findStaticKeyStoreMappingByContact_complete_ argumentIndex:0 ofReply:0];

  v167 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v167 forSelector:sel_findStaticKeyStoreMappingByContact_complete_ argumentIndex:0 ofReply:1];

  v168 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v168 forSelector:sel_findStaticKeyStoreMappingByContact_complete_ argumentIndex:1 ofReply:1];

  v169 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v169 forSelector:sel_validateStaticKeyStoreMappingByContactIdentifer_complete_ argumentIndex:0 ofReply:1];

  v170 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v170 forSelector:sel_validateStaticKeyStoreMappingByContactIdentifer_complete_ argumentIndex:1 ofReply:1];

  v171 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v171 forSelector:sel_validateStaticKeyStoreMappingByContactExternalURI_complete_ argumentIndex:0 ofReply:1];

  v172 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v172 forSelector:sel_validateStaticKeyStoreMappingByContactExternalURI_complete_ argumentIndex:1 ofReply:1];

  v173 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v173 forSelector:sel_validateStaticKeyStoreMappingByKey_complete_ argumentIndex:0 ofReply:1];

  v174 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v174 forSelector:sel_validateStaticKeyStoreMappingByKey_complete_ argumentIndex:1 ofReply:1];

  v175 = MEMORY[0x1E695DFD8];
  v209 = objc_opt_class();
  v176 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
  v177 = [v175 setWithArray:v176];
  [v2 setClasses:v177 forSelector:sel_removeEntryByKDID_complete_ argumentIndex:0 ofReply:0];

  v178 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v178 forSelector:sel_removeEntryByKDID_complete_ argumentIndex:1 ofReply:1];

  v179 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v179 forSelector:sel_removeEntryByContactIdentifier_complete_ argumentIndex:1 ofReply:1];

  v180 = MEMORY[0x1E695DFD8];
  v208[0] = objc_opt_class();
  v208[1] = objc_opt_class();
  v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:2];
  v182 = [v180 setWithArray:v181];
  [v2 setClasses:v182 forSelector:sel_listStaticKey_ argumentIndex:0 ofReply:1];

  v183 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v183 forSelector:sel_listStaticKey_ argumentIndex:1 ofReply:1];

  v184 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v184 forSelector:sel_setErrorCode_forMapping_complete_ argumentIndex:1 ofReply:1];

  v185 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v185 forSelector:sel_staticKeyTriggerSync_ argumentIndex:1 ofReply:1];

  v186 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v186 forSelector:sel_setupCloudSchema_complete_ argumentIndex:1 ofReply:1];

  v187 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v187 forSelector:sel_resetCloudZone_ argumentIndex:1 ofReply:1];

  v188 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v188 forSelector:sel_reportEligibility_complete_ argumentIndex:0 ofReply:1];

  v189 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v189 forSelector:sel_getAggregateResult_element_complete_ argumentIndex:0 ofReply:1];

  v190 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v190 forSelector:sel_networkKTQuery_application_traceUUID_timeout_complete_ argumentIndex:1 ofReply:0];

  v191 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v191 forSelector:sel_networkKTQuery_application_traceUUID_timeout_complete_ argumentIndex:2 ofReply:0];

  v192 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v192 forSelector:sel_networkKTQuery_application_traceUUID_timeout_complete_ argumentIndex:0 ofReply:1];

  v193 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v193 forSelector:sel_networkKTQuery_application_traceUUID_timeout_complete_ argumentIndex:1 ofReply:1];

  v194 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v194 forSelector:sel_validateIDSData_ktData_complete_ argumentIndex:0 ofReply:0];

  v195 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v195 forSelector:sel_validateIDSData_ktData_complete_ argumentIndex:1 ofReply:0];

  v196 = MEMORY[0x1E695DFD8];
  v207[0] = objc_opt_class();
  v207[1] = objc_opt_class();
  v197 = [MEMORY[0x1E695DEC8] arrayWithObjects:v207 count:2];
  v198 = [v196 setWithArray:v197];
  [v2 setClasses:v198 forSelector:sel_validateIDSData_ktData_complete_ argumentIndex:0 ofReply:1];

  v199 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v199 forSelector:sel_validateIDSData_ktData_complete_ argumentIndex:1 ofReply:1];

  v200 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v200 forSelector:sel_validateSelfForThisDeviceForApplication_pushToken_complete_ argumentIndex:0 ofReply:0];

  v201 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v201 forSelector:sel_validateSelfForThisDeviceForApplication_pushToken_complete_ argumentIndex:1 ofReply:1];

  v202 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v202 forSelector:sel_validateSelfForThisDeviceForApplication_pushToken_complete_ argumentIndex:2 ofReply:1];

  v203 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v203 forSelector:sel_ktRepair_complete_ argumentIndex:0 ofReply:0];

  v204 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v204 forSelector:sel_ktRepair_complete_ argumentIndex:0 ofReply:1];

  v205 = *MEMORY[0x1E69E9840];

  return v2;
}

@end