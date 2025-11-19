@interface TSCEFunction_CURRENCYCONVERT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CURRENCYCONVERT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v168 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v168);
  v11 = v168;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
    goto LABEL_25;
  }

  v21 = sub_22119E890(a3, v10);
  if (*(a5 + 1) - *a5 < 9uLL || (objc_msgSend_isTokenOrEmptyArg(*(*a5 + 8), v17, v18, v19, v20) & 1) != 0)
  {
    v22 = objc_msgSend_nilValue(TSCENilValue, v17, v18, v19, v20);
    v23 = sub_22119E890(a3, v22);
LABEL_6:

    v28 = objc_msgSend_locale(a3, v24, v25, v26, v27);
    v33 = objc_msgSend_locale(v28, v29, v30, v31, v32);
    v37 = objc_msgSend_uppercaseStringWithLocale_(v21, v34, v33, v35, v36);

    v42 = objc_msgSend_locale(a3, v38, v39, v40, v41);
    v47 = objc_msgSend_locale(v42, v43, v44, v45, v46);
    v51 = objc_msgSend_uppercaseStringWithLocale_(v23, v48, v47, v49, v50);

    if (objc_msgSend_isEqualToString_(v51, v52, v37, v53, v54))
    {
      if (objc_msgSend_hasUnits(v10, v55, v56, v57, v58) && objc_msgSend_dimension(v10, v59, v60, v61, v62) == 4)
      {
        v64 = objc_msgSend_unit(v10, v59, v63, v61, v62);
      }

      else
      {
        v64 = 0;
      }

      v105 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v59, v51, v61, v62);
      if (v64 == v105)
      {
        v106 = v10;
      }

      else
      {
        v169 = objc_msgSend_decimalRepresentation(v10, v101, v102, v103, v104);
        v170 = v112;
        v106 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v112, &v169, v105, v113);
      }

      v16 = v106;
    }

    else
    {
      v164 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"%@%@=X", v57, v58, v37, v51);
      v165 = objc_msgSend_specifierWithFunctionIndex_symbol_attribute_(TSCERemoteDataSpecifier, v65, 300, v164, 24);
      objc_msgSend_addRemoteDataSpecifierInterestedIn_(a3, v66, v165, v67, v68);
      v73 = objc_msgSend_calcEngine(a3, v69, v70, v71, v72);
      v78 = objc_msgSend_remoteDataStore(v73, v74, v75, v76, v77);

      v163 = v78;
      v82 = objc_msgSend_valueForRemoteData_(v78, v79, v165, v80, v81);
      v87 = objc_msgSend_asErrorValue(v82, v83, v84, v85, v86);
      v92 = objc_msgSend_error(v87, v88, v89, v90, v91);
      LODWORD(v78) = objc_msgSend_isNotReadyError(v92, v93, v94, v95, v96);

      if (v78)
      {
        v16 = v82;
      }

      else if (objc_msgSend_nativeType(v82, v97, v98, v99, v100) == 5)
      {
        v118 = objc_msgSend_number(v82, v114, v115, v116, v117);
        v166[2] = objc_msgSend_decimalRepresentation(v118, v119, v120, v121, v122);
        v166[3] = v123;

        v128 = objc_msgSend_decimalRepresentation(v10, v124, v125, v126, v127);
        v130 = v129;
        v134 = objc_msgSend_locale(a3, v129, v131, v132, v133);
        v139 = objc_msgSend_locale(v134, v135, v136, v137, v138);
        v143 = objc_msgSend_uppercaseStringWithLocale_(v51, v140, v139, v141, v142);

        v147 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v144, v143, v145, v146);
        v169 = v128;
        v170 = v130;
        TSUDecimal::operator*=();
        v166[0] = v169;
        v166[1] = v170;
        v16 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v148, v166, v147, v149);
      }

      else
      {
        v150 = objc_msgSend_attribute(v165, v114, v115, v116, v117);
        v154 = sub_22119DAB0(v150, a4, v151, v152, v153);
        v158 = objc_msgSend_remoteDataUnavailableErrorWithAttribute_(TSCEError, v155, v154, v156, v157);
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v159, v158, v160, v161);
      }
    }

    v15 = 0;
    goto LABEL_24;
  }

  v22 = *(*a5 + 8);
  v167 = 0;
  v51 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v107, a3, a4, 1, &v167);
  v108 = v167;
  if (!v108)
  {
    v23 = v51;
    goto LABEL_6;
  }

  v15 = v108;
  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v109, v108, v110, v111);

  v37 = v21;
LABEL_24:

LABEL_25:

  return v16;
}

@end