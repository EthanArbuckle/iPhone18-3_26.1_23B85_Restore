@interface SPRReadParameters
- (NSArray)urls;
- (NSArray)vasPasses;
- (NSArray)vasProtocol;
- (SPRReadParameters)initWithCoder:(id)coder;
- (SPRReadParameters)initWithMode:(int64_t)mode vasPasses:(id)passes urls:(id)urls amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)self0 kernelToken:(id)self1 timeoutReadPay:(int64_t)self2 timeoutReadVas:(int64_t)self3;
- (SPRReadParameters)initWithMode:(int64_t)mode vasPasses:(id)passes urls:(id)urls amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2;
- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2;
- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2 transactionId:(id)self3 preferredSchemes:(id)self4;
- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2 transactionId:(id)self3 schemePreference:(id)self4;
- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2 transactionUUID:(id)self3 preferredSchemes:(id)self4 vtid:(id)self5 bundleID:(id)self6;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRReadParameters

- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2 transactionUUID:(id)self3 preferredSchemes:(id)self4 vtid:(id)self5 bundleID:(id)self6
{
  requestsCopy = requests;
  codeCopy = code;
  categoryCodeCopy = categoryCode;
  serialCopy = serial;
  tokenCopy = token;
  dCopy = d;
  schemesCopy = schemes;
  vtidCopy = vtid;
  iDCopy = iD;
  vasRequests = self->_vasRequests;
  self->_mode = mode;
  self->_vasRequests = requestsCopy;
  v49 = requestsCopy;

  v27 = *amount;
  *&self->_amount._mantissa[6] = *&amount->var5[6];
  *&self->_amount = v27;
  currencyCode = self->_currencyCode;
  self->_currencyCode = codeCopy;
  v29 = codeCopy;

  self->_transactionType = type;
  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = categoryCodeCopy;
  v31 = categoryCodeCopy;

  interfaceDeviceSerial = self->_interfaceDeviceSerial;
  self->_interfaceDeviceSerial = serialCopy;
  v33 = serialCopy;

  kernelToken = self->_kernelToken;
  self->_kernelToken = tokenCopy;
  v35 = tokenCopy;

  self->_timeoutReadPay = pay;
  self->_timeoutReadVas = vas;
  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = dCopy;
  v37 = dCopy;

  preferredSchemes = self->_preferredSchemes;
  self->_preferredSchemes = schemesCopy;
  v39 = schemesCopy;

  vtid = self->_vtid;
  self->_vtid = vtidCopy;
  v41 = vtidCopy;

  bundleID = self->_bundleID;
  self->_bundleID = iDCopy;

  return self;
}

- (id)description
{
  v69 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_vasRequests, a2, v2, v3, v4))
  {
    v9 = objc_msgSend_componentsJoinedByString_(self->_vasRequests, v6, @" ", v7, v8);
  }

  else
  {
    v9 = @"empty";
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = objc_msgSend_initWithData_encoding_(v10, v11, self->_interfaceDeviceSerial, 1, v12);
  if (!v17)
  {
    v17 = objc_msgSend_asHexString(self->_interfaceDeviceSerial, v13, v14, v15, v16);
  }

  if (objc_msgSend_count(self->_preferredSchemes, v13, v14, v15, v16))
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v21 = self->_preferredSchemes;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v64, v68, 16);
    if (v23)
    {
      v28 = v23;
      v29 = *v65;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(v21);
          }

          v31 = objc_msgSend_asHexString(*(*(&v64 + 1) + 8 * i), v24, v25, v26, v27);
          objc_msgSend_appendString_(0, v32, v31, v33, v34);

          objc_msgSend_appendString_(0, v35, @", ", v36, v37);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v64, v68, 16);
      }

      while (v28);
    }

    v38 = 0;
  }

  else
  {
    v38 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v18, @"empty", v19, v20);
  }

  v39 = MEMORY[0x277CCACA8];
  v40 = SPRReaderModeCopyDescription(self->_mode);
  amount = self->_amount;
  v63 = *&self->_amount._mantissa[6];
  v44 = objc_msgSend_decimalNumberWithDecimal_(MEMORY[0x277CCA980], v41, &amount, v42, v43);
  v49 = objc_msgSend_asHexString(self->_currencyCode, v45, v46, v47, v48);
  v50 = SPRTransactionTypeCopyDescription(self->_transactionType);
  v55 = objc_msgSend_asHexString(self->_merchantCategoryCode, v51, v52, v53, v54);
  v59 = objc_msgSend_stringWithFormat_(v39, v56, @"{mode=%@, vasRequests=%@, amount=%@, currencyCode=%@, transactionType=%@, merchantCategoryCode=%@, interfaceDeviceSerial=%@, timeoutReadPay=%ld, timeoutReadVas=%ld, transactionUUID=%@, preferredSchemes=%@, vtid=%@, bundleId=%@}", v57, v58, v40, v9, v44, v49, v50, v55, v17, self->_timeoutReadPay, self->_timeoutReadVas, self->_transactionUUID, v38, self->_vtid, self->_bundleID);

  v60 = *MEMORY[0x277D85DE8];

  return v59;
}

- (SPRReadParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_mode = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"mode", v6, v7);
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v8, v11, v9, v12, v13, v10, 0);
  v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v14, @"vasRequests", v16);
  vasRequests = self->_vasRequests;
  self->_vasRequests = v17;

  if (coderCopy)
  {
    objc_msgSend_decodeDecimalForKey_(coderCopy, v19, @"amount", v20, v21);
  }

  else
  {
    v83 = 0uLL;
    v84 = 0;
  }

  *&self->_amount = v83;
  *&self->_amount._mantissa[6] = v84;
  v22 = objc_opt_class();
  v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"currencyCode", v24);
  currencyCode = self->_currencyCode;
  self->_currencyCode = v25;

  self->_transactionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v27, @"transactionType", v28, v29);
  v30 = objc_opt_class();
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"merchantCategoryCode", v32);
  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v33;

  v35 = objc_opt_class();
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"interfaceDeviceSerial", v37);
  interfaceDeviceSerial = self->_interfaceDeviceSerial;
  self->_interfaceDeviceSerial = v38;

  v40 = objc_opt_class();
  v43 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"kernelToken", v42);
  kernelToken = self->_kernelToken;
  self->_kernelToken = v43;

  self->_timeoutReadPay = objc_msgSend_decodeIntegerForKey_(coderCopy, v45, @"timeoutReadPay", v46, v47);
  self->_timeoutReadVas = objc_msgSend_decodeIntegerForKey_(coderCopy, v48, @"timeoutReadVas", v49, v50);
  v51 = objc_opt_class();
  v54 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v52, v51, @"transactionUUID", v53);
  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v54;

  v56 = objc_opt_class();
  v59 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v57, v56, @"schemePreference", v58);
  schemePreference = self->_schemePreference;
  self->_schemePreference = v59;

  v61 = MEMORY[0x277CBEB98];
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v67 = objc_msgSend_setWithObjects_(v61, v64, v62, v65, v66, v63, 0);
  v70 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v68, v67, @"preferredSchemes", v69);
  preferredSchemes = self->_preferredSchemes;
  self->_preferredSchemes = v70;

  v72 = objc_opt_class();
  v75 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v73, v72, @"vtid", v74);
  vtid = self->_vtid;
  self->_vtid = v75;

  v77 = objc_opt_class();
  v80 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v78, v77, @"bundleID", v79);
  bundleID = self->_bundleID;
  self->_bundleID = v80;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  mode = self->_mode;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, mode, @"mode", v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_vasRequests, @"vasRequests", v9);
  amount = self->_amount;
  objc_msgSend_encodeDecimal_forKey_(coderCopy, v10, &amount, @"amount", v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, self->_currencyCode, @"currencyCode", v13);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v14, self->_transactionType, @"transactionType", v15);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_merchantCategoryCode, @"merchantCategoryCode", v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v18, self->_interfaceDeviceSerial, @"interfaceDeviceSerial", v19);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, self->_kernelToken, @"kernelToken", v21);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v22, self->_timeoutReadPay, @"timeoutReadPay", v23);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v24, self->_timeoutReadVas, @"timeoutReadVas", v25);
  objc_msgSend_encodeObject_forKey_(coderCopy, v26, self->_transactionUUID, @"transactionUUID", v27);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, self->_schemePreference, @"schemePreference", v29);
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, self->_preferredSchemes, @"preferredSchemes", v31);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, self->_vtid, @"vtid", v33);
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, self->_bundleID, @"bundleID", v35);
}

- (NSArray)vasProtocol
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(self->_vasRequests, a2, v2, v3, v4);
  v11 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9, v10);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_vasRequests;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = objc_msgSend_vasTerminalProtocol(*(*(&v28 + 1) + 8 * i), v15, v16, v17, v18, v28);
        objc_msgSend_addObject_(v11, v23, v22, v24, v25);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSArray)vasPasses
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(self->_vasRequests, a2, v2, v3, v4);
  v11 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9, v10);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_vasRequests;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = objc_msgSend_merchantId(*(*(&v28 + 1) + 8 * i), v15, v16, v17, v18, v28);
        objc_msgSend_addObject_(v11, v23, v22, v24, v25);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSArray)urls
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(self->_vasRequests, a2, v2, v3, v4);
  v11 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9, v10);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_vasRequests;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = objc_msgSend_vasUrl(*(*(&v28 + 1) + 8 * i), v15, v16, v17, v18, v28);
        objc_msgSend_addObject_(v11, v23, v22, v24, v25);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SPRReadParameters)initWithMode:(int64_t)mode vasPasses:(id)passes urls:(id)urls amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)self0 kernelToken:(id)self1 timeoutReadPay:(int64_t)self2 timeoutReadVas:(int64_t)self3
{
  typeCopy = type;
  tokenCopy = token;
  serialCopy = serial;
  categoryCodeCopy = categoryCode;
  codeCopy = code;
  v21 = sub_26A941058(passes, urls);
  v26 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v22, v23, v24, v25);
  v31 = objc_msgSend_description(v26, v27, v28, v29, v30);
  v38 = *amount;
  Vas_transactionId_schemePreference = objc_msgSend_initWithMode_vasRequests_amount_currencyCode_transactionType_merchantCategoryCode_interfaceDeviceSerial_kernelToken_timeoutReadPay_timeoutReadVas_transactionId_schemePreference_(self, v32, mode, v21, &v38, codeCopy, typeCopy, categoryCodeCopy, serialCopy, tokenCopy, pay, vas, v31, 0);

  return Vas_transactionId_schemePreference;
}

- (SPRReadParameters)initWithMode:(int64_t)mode vasPasses:(id)passes urls:(id)urls amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2
{
  typeCopy = type;
  tokenCopy = token;
  categoryCodeCopy = categoryCode;
  codeCopy = code;
  v19 = sub_26A941058(passes, urls);
  v20 = objc_opt_new();
  v25 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v21, v22, v23, v24);
  v30 = objc_msgSend_description(v25, v26, v27, v28, v29);
  v37 = *amount;
  Vas_transactionId_schemePreference = objc_msgSend_initWithMode_vasRequests_amount_currencyCode_transactionType_merchantCategoryCode_interfaceDeviceSerial_kernelToken_timeoutReadPay_timeoutReadVas_transactionId_schemePreference_(self, v31, mode, v19, &v37, codeCopy, typeCopy, categoryCodeCopy, v20, tokenCopy, pay, vas, v30, 0);

  return Vas_transactionId_schemePreference;
}

- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2
{
  typeCopy = type;
  v16 = MEMORY[0x277CCAD78];
  tokenCopy = token;
  serialCopy = serial;
  categoryCodeCopy = categoryCode;
  codeCopy = code;
  requestsCopy = requests;
  v26 = objc_msgSend_UUID(v16, v22, v23, v24, v25);
  v31 = objc_msgSend_description(v26, v27, v28, v29, v30);
  v38 = *amount;
  Vas_transactionId_schemePreference = objc_msgSend_initWithMode_vasRequests_amount_currencyCode_transactionType_merchantCategoryCode_interfaceDeviceSerial_kernelToken_timeoutReadPay_timeoutReadVas_transactionId_schemePreference_(self, v32, mode, requestsCopy, &v38, codeCopy, typeCopy, categoryCodeCopy, serialCopy, tokenCopy, pay, vas, v31, 0);

  return Vas_transactionId_schemePreference;
}

- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2 transactionId:(id)self3 schemePreference:(id)self4
{
  requestsCopy = requests;
  codeCopy = code;
  categoryCodeCopy = categoryCode;
  serialCopy = serial;
  tokenCopy = token;
  vasRequests = self->_vasRequests;
  self->_mode = mode;
  self->_vasRequests = requestsCopy;
  v25 = requestsCopy;
  preferenceCopy = preference;
  idCopy = id;

  v28 = *amount;
  *&self->_amount._mantissa[6] = *&amount->var5[6];
  *&self->_amount = v28;
  currencyCode = self->_currencyCode;
  self->_currencyCode = codeCopy;
  v30 = codeCopy;

  self->_transactionType = type;
  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = categoryCodeCopy;
  v32 = categoryCodeCopy;

  interfaceDeviceSerial = self->_interfaceDeviceSerial;
  self->_interfaceDeviceSerial = serialCopy;
  v34 = serialCopy;

  kernelToken = self->_kernelToken;
  self->_kernelToken = tokenCopy;
  v36 = tokenCopy;

  self->_timeoutReadPay = pay;
  self->_timeoutReadVas = vas;
  v37 = objc_alloc(MEMORY[0x277CCAD78]);
  v41 = objc_msgSend_initWithUUIDString_(v37, v38, idCopy, v39, v40);

  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v41;

  v46 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v43, preferenceCopy, v44, v45, 0);

  preferredSchemes = self->_preferredSchemes;
  self->_preferredSchemes = v46;

  return self;
}

- (SPRReadParameters)initWithMode:(int64_t)mode vasRequests:(id)requests amount:(id *)amount currencyCode:(id)code transactionType:(unsigned __int8)type merchantCategoryCode:(id)categoryCode interfaceDeviceSerial:(id)serial kernelToken:(id)self0 timeoutReadPay:(int64_t)self1 timeoutReadVas:(int64_t)self2 transactionId:(id)self3 preferredSchemes:(id)self4
{
  requestsCopy = requests;
  codeCopy = code;
  categoryCodeCopy = categoryCode;
  serialCopy = serial;
  tokenCopy = token;
  schemesCopy = schemes;
  vasRequests = self->_vasRequests;
  self->_mode = mode;
  self->_vasRequests = requestsCopy;
  v26 = requestsCopy;
  idCopy = id;

  v28 = *amount;
  *&self->_amount._mantissa[6] = *&amount->var5[6];
  *&self->_amount = v28;
  currencyCode = self->_currencyCode;
  self->_currencyCode = codeCopy;
  v30 = codeCopy;

  self->_transactionType = type;
  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = categoryCodeCopy;
  v32 = categoryCodeCopy;

  interfaceDeviceSerial = self->_interfaceDeviceSerial;
  self->_interfaceDeviceSerial = serialCopy;
  v34 = serialCopy;

  kernelToken = self->_kernelToken;
  self->_kernelToken = tokenCopy;
  v36 = tokenCopy;

  self->_timeoutReadPay = pay;
  self->_timeoutReadVas = vas;
  v37 = objc_alloc(MEMORY[0x277CCAD78]);
  v41 = objc_msgSend_initWithUUIDString_(v37, v38, idCopy, v39, v40);

  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v41;

  preferredSchemes = self->_preferredSchemes;
  self->_preferredSchemes = schemesCopy;

  return self;
}

@end