@interface STSConnectionHandover
+ (id)_connectionHandoverWithNdefMessage:(id)a3;
+ (id)_createNdefWithType:(int64_t)a3 alternativeCarriers:(id)a4 errorRecord:(id)a5;
+ (id)connectionHandoverWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (STSConnectionHandover)init;
- (STSConnectionHandover)initWithCoder:(id)a3;
- (void)addAlternativeCarrier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSConnectionHandover

- (void)encodeWithCoder:(id)a3
{
  majorVersion = self->_majorVersion;
  v8 = a3;
  objc_msgSend_encodeInteger_forKey_(v8, v5, majorVersion, @"majorVersion");
  objc_msgSend_encodeInteger_forKey_(v8, v6, self->_minorVersion, @"minorVersion");
  objc_msgSend_encodeObject_forKey_(v8, v7, self->_alternativeCarriers, @"alternativeCarriers");
}

- (STSConnectionHandover)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = STSConnectionHandover;
  v6 = [(STSConnectionHandover *)&v20 init];
  if (v6)
  {
    v6->_majorVersion = objc_msgSend_decodeIntForKey_(v4, v5, @"majorVersion");
    v6->_minorVersion = objc_msgSend_decodeIntForKey_(v4, v7, @"minorVersion");
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v15 = objc_msgSend_setWithObjects_(v8, v14, v9, v10, v11, v12, v13, 0);
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v15, @"alternativeCarriers");
    alternativeCarriers = v6->_alternativeCarriers;
    v6->_alternativeCarriers = v17;
  }

  return v6;
}

- (STSConnectionHandover)init
{
  v6.receiver = self;
  v6.super_class = STSConnectionHandover;
  v2 = [(STSConnectionHandover *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    alternativeCarriers = v2->_alternativeCarriers;
    v2->_alternativeCarriers = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToArray = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    majorVersion = self->_majorVersion;
    if (majorVersion == objc_msgSend_majorVersion(v6, v8, v9) || (minorVersion = self->_minorVersion, minorVersion == objc_msgSend_minorVersion(v6, v10, v11)))
    {
      alternativeCarriers = self->_alternativeCarriers;
      v14 = objc_msgSend_alternativeCarriers(v6, v10, v11);
      isEqualToArray = objc_msgSend_isEqualToArray_(alternativeCarriers, v15, v14);
    }

    else
    {
      isEqualToArray = 0;
    }
  }

  else
  {
    isEqualToArray = 0;
  }

  return isEqualToArray;
}

- (void)addAlternativeCarrier:(id)a3
{
  if (a3)
  {
    objc_msgSend_addObject_(self->_alternativeCarriers, a2, a3);
  }
}

+ (id)connectionHandoverWithData:(id)a3
{
  v4 = objc_msgSend_ndefRecordsWithData_(STSNDEFRecord, a2, a3);
  v8 = v4;
  if (v4)
  {
    sub_2645011D4(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover connectionHandoverWithData:]", 154, @"NDEF:%@", v5, v6, v7, v4);
    v10 = objc_msgSend__connectionHandoverWithNdefMessage_(a1, v9, v8);
  }

  else
  {
    sub_2645011D4(OS_LOG_TYPE_ERROR, 0, "+[STSConnectionHandover connectionHandoverWithData:]", 148, @"Not a valid NDEF message", v5, v6, v7, v12);
    v10 = 0;
  }

  return v10;
}

+ (id)_connectionHandoverWithNdefMessage:(id)a3
{
  v191 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v169 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v161 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v11 = v3;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v183, v190, 16);
  if (v13)
  {
    v16 = v13;
    obj = v11;
    v162 = 0;
    LOBYTE(v17) = 0;
    v170 = 0;
    v165 = 0;
    v18 = *v184;
    v156 = *v184;
    while (1)
    {
      v19 = 0;
      v158 = v16;
      do
      {
        if (*v184 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v183 + 1) + 8 * v19);
        isHandoverSelectRecord = objc_msgSend_isHandoverSelectRecord(v20, v14, v15);
        isHandoverRequestRecord = objc_msgSend_isHandoverRequestRecord(v20, v22, v23);
        v167 = v19;
        if ((isHandoverSelectRecord & 1) != 0 || isHandoverRequestRecord)
        {
          if (v165)
          {
            sub_2645011D4(OS_LOG_TYPE_ERROR, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 174, @"Previous Hr/Hs found.  Invalid handover NDEF", v27, v28, v29, v155);
            v11 = obj;

            goto LABEL_70;
          }

          v49 = objc_msgSend_payload(v20, v25, v26);
          v50 = v49;
          v53 = objc_msgSend_bytes(v50, v51, v52);

          v56 = objc_msgSend_payload(v20, v54, v55);
          v59 = objc_msgSend_length(v56, v57, v58);

          v163 = *v53;
          v61 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v60, (v53 + 1), (v59 - 1));
          v63 = objc_msgSend_ndefRecordsWithData_(STSNDEFRecord, v62, v61);

          v66 = objc_msgSend_count(v63, v64, v65);
          v165 = v66 != 0;
          if (!v66)
          {
            sub_2645011D4(OS_LOG_TYPE_ERROR, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 193, @"Missing local records in Hr/Hs record", v67, v68, v69, v155);
          }

          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v70 = v63;
          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v179, v189, 16);
          if (v72)
          {
            v75 = v72;
            v76 = *v180;
            do
            {
              v77 = 0;
              do
              {
                if (*v180 != v76)
                {
                  objc_enumerationMutation(v70);
                }

                v78 = *(*(&v179 + 1) + 8 * v77);
                if (objc_msgSend_typeNameFormat(v78, v73, v74) == 1)
                {
                  if ((objc_msgSend_isCollisionResolutionRecord(v78, v79, v80) & 1) == 0)
                  {
                    if (objc_msgSend_isAlternativeCarrierRecord(v78, v73, v74))
                    {
                      objc_msgSend_addObject_(v169, v81, v78);
                    }

                    else if ((objc_msgSend_isHandoverSelectErrorRecord(v78, v81, v82) & isHandoverSelectRecord) == 1)
                    {
                      v87 = v78;

                      v170 = v87;
                    }

                    else
                    {
                      v88 = objc_alloc(MEMORY[0x277CCACA8]);
                      v91 = objc_msgSend_type(v78, v89, v90);
                      v93 = objc_msgSend_initWithData_encoding_(v88, v92, v91, 4);

                      sub_2645011D4(OS_LOG_TYPE_DEFAULT, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 211, @"Unsupported type:%@", v94, v95, v96, v93);
                    }
                  }
                }

                else
                {
                  v83 = objc_msgSend_typeNameFormat(v78, v79, v80);
                  sub_2645011D4(OS_LOG_TYPE_DEFAULT, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 200, @"Unsupported record TNF:%d", v84, v85, v86, v83);
                }

                ++v77;
              }

              while (v75 != v77);
              v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v73, &v179, v189, 16);
              v75 = v97;
            }

            while (v97);
          }

          v17 = v163 >> 4;
          v162 = v163 & 0xF;

          v18 = v156;
          v16 = v158;
        }

        else
        {
          if ((objc_msgSend_isWiFiAwareConfigurationRecord(v20, v25, v26) & 1) == 0 && (objc_msgSend_isBluetoothLEConfigurationRecord(v20, v30, v31) & 1) == 0 && !objc_msgSend_isNfcConfigurationRecord(v20, v30, v31))
          {
            v98 = objc_msgSend_identifier(v20, v30, v31);

            if (v98)
            {
              v47 = objc_msgSend_identifier(v20, v99, v100);
              objc_msgSend_setObject_forKey_(v10, v101, v20, v47);
            }

            else
            {
              v102 = objc_alloc(MEMORY[0x277CCACA8]);
              v105 = objc_msgSend_type(v20, v103, v104);
              v47 = objc_msgSend_initWithData_encoding_(v102, v106, v105, 4);

              v109 = objc_msgSend_typeNameFormat(v20, v107, v108);
              sub_2645011D4(OS_LOG_TYPE_DEFAULT, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 229, @"Unsupported record TNF=%d,type=%@,id=nil", v110, v111, v112, v109);
            }

LABEL_15:

            goto LABEL_37;
          }

          v32 = objc_msgSend_identifier(v20, v30, v31);

          if (v32)
          {
            v38 = objc_msgSend_identifier(v20, v33, v34);
            v40 = objc_msgSend_objectForKey_(v161, v39, v38);

            if (v40)
            {
              v43 = objc_msgSend_identifier(v20, v41, v42);
              sub_2645011D4(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 219, @"Carrier config %@ exists", v44, v45, v46, v43);
            }

            v47 = objc_msgSend_identifier(v20, v41, v42);
            objc_msgSend_setObject_forKey_(v161, v48, v20, v47);
            goto LABEL_15;
          }

          sub_2645011D4(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 223, @"Missing ID", v35, v36, v37, v155);
        }

LABEL_37:
        v19 = v167 + 1;
      }

      while ((v167 + 1) != v16);
      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v183, v190, 16);
      v16 = v113;
      if (!v113)
      {
        v11 = obj;

        if (!v165)
        {
          goto LABEL_69;
        }

        v117 = objc_alloc_init(STSConnectionHandover);
        v117->_majorVersion = v17;
        v117->_minorVersion = v162;
        v159 = v117;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v157 = v169;
        v166 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v118, &v175, v188, 16);
        if (v166)
        {
          v164 = *v176;
          do
          {
            for (i = 0; i != v166; ++i)
            {
              if (*v176 != v164)
              {
                objc_enumerationMutation(v157);
              }

              v122 = *(*(&v175 + 1) + 8 * i);
              v124 = objc_msgSend_getCarrierDataReferenceFromAlternativeCarrierRecord(v122, v119, v120);
              if (v124)
              {
                v168 = objc_msgSend_objectForKeyedSubscript_(v161, v123, v124);
                v127 = objc_msgSend_array(MEMORY[0x277CBEB18], v125, v126);
                v130 = objc_msgSend_getAuxiliaryDataReferencesFromAlternativeCarrierRecord(v122, v128, v129);
                v171 = 0u;
                v172 = 0u;
                v173 = 0u;
                v174 = 0u;
                v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v131, &v171, v187, 16);
                if (v132)
                {
                  v134 = v132;
                  v135 = *v172;
                  do
                  {
                    for (j = 0; j != v134; ++j)
                    {
                      if (*v172 != v135)
                      {
                        objc_enumerationMutation(v130);
                      }

                      v138 = objc_msgSend_objectForKeyedSubscript_(v10, v133, *(*(&v171 + 1) + 8 * j));
                      if (v138)
                      {
                        objc_msgSend_addObject_(v127, v137, v138);
                      }
                    }

                    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v133, &v171, v187, 16);
                  }

                  while (v134);
                }

                v139 = [STSCHNdefRecordBundle alloc];
                v141 = objc_msgSend_initWithAlternativeRecord_configurationRecord_auxiliaryRecords_errorRecord_(v139, v140, v122, v168, v127, v170);
                isWiFiAwareConfigurationRecord = objc_msgSend_isWiFiAwareConfigurationRecord(v168, v142, v143);
                v147 = off_279B5FC58;
                if (isWiFiAwareConfigurationRecord & 1) != 0 || (isBluetoothLEConfigurationRecord = objc_msgSend_isBluetoothLEConfigurationRecord(v168, v145, v146), v147 = off_279B5FC40, (isBluetoothLEConfigurationRecord) || (isNfcConfigurationRecord = objc_msgSend_isNfcConfigurationRecord(v168, v145, v149), v147 = off_279B5FC50, isNfcConfigurationRecord))
                {
                  v151 = objc_msgSend_connectionHandoverAlternativeCarrierWithBundle_(*v147, v145, v141);
                  objc_msgSend_addAlternativeCarrier_(v159, v152, v151);
                }
              }
            }

            v166 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v119, &v175, v188, 16);
          }

          while (v166);
        }

        v11 = obj;
        goto LABEL_71;
      }
    }
  }

  v170 = 0;
LABEL_69:
  sub_2645011D4(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 234, @"No Hr record found", v114, v115, v116, v155);
LABEL_70:
  v159 = 0;
LABEL_71:

  v153 = *MEMORY[0x277D85DE8];

  return v159;
}

+ (id)_createNdefWithType:(int64_t)a3 alternativeCarriers:(id)a4 errorRecord:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v62 = a5;
  if (a3)
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v8, "Hs", 2);
  }

  else
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v8, "Hr", 2);
  }
  v61 = ;
  v68 = 21;
  v11 = objc_msgSend_data(MEMORY[0x277CBEB28], v9, v10);
  objc_msgSend_appendBytes_length_(v11, v12, &v68, 1);
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
  v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
  if (!a3)
  {
    arc4random_buf(__buf, 2uLL);
    v19 = [STSNDEFRecord alloc];
    v21 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v20, "cr", 2);
    v23 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v22, __buf, 2);
    v25 = objc_msgSend_initWithFormat_type_identifier_payload_(v19, v24, 209, v21, 0, v23);

    objc_msgSend_addObject_(v15, v26, v25);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v27 = v7;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v63, v69, 16);
  if (v29)
  {
    v32 = v29;
    v33 = *v64;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v64 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = objc_msgSend_createNdefRecordBundle(*(*(&v63 + 1) + 8 * i), v30, v31);
        v38 = objc_msgSend_alternativeRecord(v35, v36, v37);
        objc_msgSend_addObject_(v15, v39, v38);

        v42 = objc_msgSend_configurationRecord(v35, v40, v41);
        objc_msgSend_addObject_(v18, v43, v42);

        v46 = objc_msgSend_auxiliaryRecords(v35, v44, v45);
        objc_msgSend_addObjectsFromArray_(v18, v47, v46);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v63, v69, 16);
    }

    while (v32);
  }

  if (a3 == 1 && v62)
  {
    objc_msgSend_addObject_(v15, v48, v62);
  }

  v49 = objc_msgSend_dataWithSTSNDEFRecords_(MEMORY[0x277CBEA90], v48, v15);
  objc_msgSend_appendData_(v11, v50, v49);

  v51 = [STSNDEFRecord alloc];
  v53 = objc_msgSend_initWithFormat_type_identifier_payload_(v51, v52, 1, v61, 0, v11);
  v54 = objc_opt_new();
  objc_msgSend_addObject_(v54, v55, v53);
  objc_msgSend_addObjectsFromArray_(v54, v56, v18);
  v58 = objc_msgSend_dataWithSTSNDEFRecords_(MEMORY[0x277CBEA90], v57, v54);

  v59 = *MEMORY[0x277D85DE8];

  return v58;
}

@end