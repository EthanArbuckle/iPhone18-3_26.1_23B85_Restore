@interface PassKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation PassKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F195DBC;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9050 != -1)
  {
    dispatch_once(&qword_2806D9050, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  v47[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objc_msgSend_defineConstants_(self, v5, v6, contextCopy);
  objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v7, v8, &unk_287F2B850, @"PKPaymentSummaryItem");
  objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v9, v10, &unk_287F2B870, @"PKPass");
  v11 = MEMORY[0x277CD4658];
  v14 = objc_msgSend_context(contextCopy, v12, v13);
  v17 = objc_msgSend_valueWithNewObjectInContext_(v11, v15, v16, v14);

  v19 = *MEMORY[0x277CD4638];
  v46[0] = *MEMORY[0x277CD4630];
  v18 = v46[0];
  v46[1] = v19;
  v47[0] = v17;
  v47[1] = &unk_287F550E8;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v21, v47, v46, 2);
  objc_msgSend_defineProperty_descriptor_(contextCopy, v23, v24, @"PKPaymentAuthorizationViewController", v22);

  v44[0] = v18;
  v44[1] = v19;
  v45[0] = &unk_287F2B890;
  v45[1] = &unk_287F550E8;
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v26, v45, v44, 2);
  objc_msgSend_defineProperty_descriptor_(v17, v28, v29, @"canMakePayments", v27);

  v42[0] = v18;
  v42[1] = v19;
  v43[0] = &unk_287F2B8B0;
  v43[1] = &unk_287F550E8;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v31, v43, v42, 2);
  objc_msgSend_defineProperty_descriptor_(v17, v33, v34, @"canMakePaymentsUsingNetworks", v32);

  v40[0] = v18;
  v40[1] = v19;
  v41[0] = &unk_287F2B8D0;
  v41[1] = &unk_287F550E8;
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v36, v41, v40, 2);
  objc_msgSend_defineProperty_descriptor_(v17, v38, v39, @"canMakePaymentsUsingNetworksAndCapabilities", v37);
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  v292 = objc_msgSend_dictionary(v3, v5, v6);
  v7 = *MEMORY[0x277CD4630];
  objc_msgSend_setObject_forKeyedSubscript_(v292, v8, v9, &unk_287F55100, *MEMORY[0x277CD4630]);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v10, v11, @"PKPaymentButtonStyleWhite", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v12, v13, &unk_287F55118, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v14, v15, @"PKPaymentButtonStyleWhiteOutline", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v16, v17, &unk_287F55130, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v18, v19, @"PKPaymentButtonStyleBlack", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v20, v21, &unk_287F55148, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v22, v23, @"PKPaymentButtonStyleAutomatic", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v24, v25, &unk_287F55100, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v26, v27, @"PKPaymentButtonTypePlain", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v28, v29, &unk_287F55118, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v30, v31, @"PKPaymentButtonTypeBuy", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v32, v33, &unk_287F55130, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v34, v35, @"PKPaymentButtonTypeSetUp", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v36, v37, &unk_287F55160, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v38, v39, @"PKPaymentButtonTypeCheckout", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v40, v41, &unk_287F55178, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v42, v43, @"PKPaymentButtonTypeBook", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v44, v45, &unk_287F55190, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v46, v47, @"PKPaymentButtonTypeDonate", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v48, v49, &unk_287F55148, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v50, v51, @"PKPaymentButtonTypeInStore", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v52, v53, &unk_287F551A8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v54, v55, @"PKPaymentButtonTypeSubscribe", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v56, v57, &unk_287F551C0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v58, v59, @"PKPaymentButtonTypeAddMoney", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v60, v61, &unk_287F551D8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v62, v63, @"PKPaymentButtonTypeOrder", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v64, v65, &unk_287F551F0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v66, v67, @"PKPaymentButtonTypeSupport", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v68, v69, &unk_287F55208, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v70, v71, @"PKPaymentButtonTypeTip", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v72, v73, &unk_287F55220, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v74, v75, @"PKPaymentButtonTypeTopUp", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v76, v77, &unk_287F55238, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v78, v79, @"PKPaymentButtonTypeReload", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v80, v81, &unk_287F55250, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v82, v83, @"PKPaymentButtonTypeContribute", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v84, v85, &unk_287F55268, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v86, v87, @"PKPaymentButtonTypeRent", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v88, v89, &unk_287F55100, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v90, v91, @"PKPaymentAuthorizationStatusSuccess", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v92, v93, &unk_287F55118, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v94, v95, @"PKPaymentAuthorizationStatusFailure", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v96, v97, &unk_287F55160, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v98, v99, @"PKPaymentAuthorizationStatusPINRequired", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v100, v101, &unk_287F551A8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v102, v103, @"PKPaymentAuthorizationStatusPINLockout", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v104, v105, &unk_287F55178, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v106, v107, @"PKPaymentAuthorizationStatusPINIncorrect", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v108, v109, &unk_287F55130, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v110, v111, @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v112, v113, &unk_287F55148, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v114, v115, @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v116, v117, &unk_287F55190, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v118, v119, @"PKPaymentAuthorizationStatusInvalidShippingContact", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v120, v121, &unk_287F55280, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v122, v123, @"PKMerchantCapability3DS", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v124, v125, &unk_287F55298, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v126, v127, @"PKMerchantCapabilityEMV", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v128, v129, &unk_287F552B0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v130, v131, @"PKMerchantCapabilityCredit", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v132, v133, &unk_287F552C8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v134, v135, @"PKMerchantCapabilityDebit", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v136, v137, &unk_287F552E0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v138, v139, @"PKAddressFieldNone", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v140, v141, &unk_287F55280, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v142, v143, @"PKAddressFieldPostalAddress", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v144, v145, &unk_287F55298, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v146, v147, @"PKAddressFieldPhone", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v148, v149, &unk_287F552B0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v150, v151, @"PKAddressFieldEmail", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v152, v153, &unk_287F552C8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v154, v155, @"PKAddressFieldName", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v156, v157, &unk_287F552F8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v158, v159, @"PKAddressFieldAll", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v160, v161, &unk_287F552E0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v162, v163, @"PKShippingTypeShipping", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v164, v165, &unk_287F55280, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v166, v167, @"PKShippingTypeDelivery", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v168, v169, &unk_287F55298, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v170, v171, @"PKShippingTypeStorePickup", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v172, v173, &unk_287F55310, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v174, v175, @"PKShippingTypeServicePickup", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v176, v177, &unk_287F552E0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v178, v179, @"PKPaymentSummaryItemTypeFinal", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v180, v181, &unk_287F55280, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v182, v183, @"PKPaymentSummaryItemTypePending", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v184, v185, *MEMORY[0x277D38620], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v186, v187, @"PKEncryptionSchemeECC_V2", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v188, v189, *MEMORY[0x277D38878], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v190, v191, @"PKPaymentNetworkAmex", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v192, v193, *MEMORY[0x277D38888], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v194, v195, @"PKPaymentNetworkDiscover", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v196, v197, *MEMORY[0x277D38898], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v198, v199, @"PKPaymentNetworkMasterCard", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v200, v201, *MEMORY[0x277D388A0], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v202, v203, @"PKPaymentNetworkPrivateLabel", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v204, v205, *MEMORY[0x277D388B0], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v206, v207, @"PKPaymentNetworkVisa", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v208, v209, &unk_287F55100, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v210, v211, @"PKAddPassButtonStyleBlack", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v212, v213, &unk_287F55118, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v214, v215, @"PKAddPassButtonStyleBlackOutline", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v216, v217, &unk_287F552E0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v218, v219, @"PKPassTypeBarcode", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v220, v221, &unk_287F55280, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v222, v223, @"PKPassTypePayment", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v224, v225, &unk_287F55328, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v226, v227, @"PKPassTypeAny", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v228, v229, &unk_287F552E0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v230, v231, @"PKPaymentPassActivationStateActivated", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v232, v233, &unk_287F55280, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v234, v235, @"PKPaymentPassActivationStateRequiresActivation", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v236, v237, &unk_287F55298, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v238, v239, @"PKPaymentPassActivationStateActivating", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v240, v241, &unk_287F55310, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v242, v243, @"PKPaymentPassActivationStateSuspended", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v244, v245, &unk_287F552B0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v246, v247, @"PKPaymentPassActivationStateDeactivated", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v248, v249, *MEMORY[0x277D385B8], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v250, v251, @"PKContactFieldPostalAddress", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v252, v253, *MEMORY[0x277D38598], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v254, v255, @"PKContactFieldEmailAddress", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v256, v257, *MEMORY[0x277D385A8], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v258, v259, @"PKContactFieldPhoneNumber", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v260, v261, *MEMORY[0x277D385A0], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v262, v263, @"PKContactFieldName", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v264, v265, *MEMORY[0x277D385B0], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v266, v267, @"PKContactFieldPhoneticName", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v268, v269, *MEMORY[0x277D38860], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v270, v271, @"PKPaymentErrorDomain", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v272, v273, *MEMORY[0x277D38858], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v274, v275, @"PKPaymentErrorContactFieldUserInfoKey", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v276, v277, &unk_287F55340, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v278, v279, @"PKPaymentUnknownError", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v280, v281, &unk_287F55118, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v282, v283, @"PKPaymentShippingContactInvalidError", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v284, v285, &unk_287F55130, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v286, v287, @"PKPaymentBillingContactInvalidError", v292);
  objc_msgSend_setObject_forKeyedSubscript_(v292, v288, v289, &unk_287F55148, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v290, v291, @"PKPaymentShippingAddressUnserviceableError", v292);
}

@end