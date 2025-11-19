@interface PKValidateApplicationStateMessagingOverrideDict
@end

@implementation PKValidateApplicationStateMessagingOverrideDict

void ___PKValidateApplicationStateMessagingOverrideDict_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (!PKPaymentApplicationStateMessageOverrideTypeFromString(v7))
  {
    v16 = PKValidationErrorWithReason(@"entry in %@ needs to be a known key. Unknown key (%@) found.", v9, v10, v11, v12, v13, v14, v15, @"paymentApplicationStateMessagingOverride");
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = *(*(a1 + 32) + 8);
  v20 = *(v19 + 40);
  if (v20)
  {
    v21 = v20;
    v22 = *(v19 + 40);
    *(v19 + 40) = v21;
  }

  else
  {
    v23 = objc_opt_class();
    v24 = _PKVerifyDictionaryKey(v8, @"title", 0, v23, 0);
    v25 = *(*(a1 + 32) + 8);
    v22 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  v26 = *(*(a1 + 32) + 8);
  v27 = *(v26 + 40);
  if (v27)
  {
    v28 = v27;
    v29 = *(v26 + 40);
    *(v26 + 40) = v28;
  }

  else
  {
    v30 = objc_opt_class();
    v31 = _PKVerifyDictionaryKey(v8, @"description", 0, v30, 0);
    v32 = *(*(a1 + 32) + 8);
    v29 = *(v32 + 40);
    *(v32 + 40) = v31;
  }

  v73 = 0;
  v33 = *(*(a1 + 32) + 8);
  v34 = *(v33 + 40);
  if (v34)
  {
    v35 = v34;
    v36 = *(v33 + 40);
    *(v33 + 40) = v35;
  }

  else
  {
    v37 = objc_opt_class();
    v38 = _PKVerifyDictionaryKey(v8, @"action", 1, v37, &v73);
    v39 = *(*(a1 + 32) + 8);
    v36 = *(v39 + 40);
    *(v39 + 40) = v38;
  }

  v40 = v73;
  v41 = *(a1 + 32);
  if (v73 && !*(*(v41 + 8) + 40))
  {
    v72 = 0;
    v42 = objc_opt_class();
    v43 = _PKVerifyDictionaryKey(v40, @"type", 0, v42, &v72);
    v44 = *(*(a1 + 32) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;

    v46 = PKPaymentPassActionTypeFromString(v72);
    v54 = *(a1 + 32);
    if (!v46 && !*(*(v54 + 8) + 40))
    {
      v55 = PKValidationErrorWithReason(@"entry in %@ needs to be a known key. Unknown key (%@) found.", v47, v48, v49, v50, v51, v52, v53, @"type");
      v56 = *(*(a1 + 32) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = v55;

      v54 = *(a1 + 32);
    }

    v58 = *(v54 + 8);
    v59 = *(v58 + 40);
    if (v59)
    {
      v60 = v59;
      v61 = *(v58 + 40);
      *(v58 + 40) = v60;
    }

    else
    {
      v62 = v73;
      v63 = objc_opt_class();
      v64 = _PKVerifyDictionaryKey(v62, @"title", 1, v63, 0);
      v65 = *(*(a1 + 32) + 8);
      v61 = *(v65 + 40);
      *(v65 + 40) = v64;
    }

    v66 = *(*(a1 + 32) + 8);
    v67 = *(v66 + 40);
    if (v67)
    {
      v68 = v67;
      v69 = *(v66 + 40);
      *(v66 + 40) = v68;
    }

    else
    {
      v70 = _PKValidateURLStringKey(v73, @"url", 1, 0, 0);
      v71 = *(*(a1 + 32) + 8);
      v69 = *(v71 + 40);
      *(v71 + 40) = v70;
    }

    v41 = *(a1 + 32);
  }

  if (*(*(v41 + 8) + 40))
  {
    *a4 = 1;
  }
}

@end