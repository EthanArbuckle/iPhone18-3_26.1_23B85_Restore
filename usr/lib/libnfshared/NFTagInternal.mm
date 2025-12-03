@interface NFTagInternal
- (BOOL)isEqualToNFTag:(id)tag;
- (NFTagA)tagA;
- (NFTagB)tagB;
- (NFTagF)tagF;
- (NFTagInternal)initWithCoder:(id)coder;
- (NFTagInternal)initWithDictionary:(id)dictionary;
- (NFTagInternal)initWithNFTag:(id)tag;
- (NFTagInternal)initWithNFTagForUIDOnly:(id)only;
- (NSString)description;
- (id)_getSystemCodeListString;
- (id)asDictionary;
- (void)_setAppData:(id)data;
- (void)_setAtqa:(id)atqa;
- (void)_setHistoricalBytes:(id)bytes;
- (void)_setIDm:(id)dm;
- (void)_setIdentifier:(id)identifier;
- (void)_setPMm:(id)mm;
- (void)_setSFGI:(unsigned __int8)i;
- (void)_setSak:(id)sak;
- (void)_setSelectedAID:(id)d;
- (void)_setSystemCode:(id)code;
- (void)_setSystemCodes:(id)codes;
- (void)_setUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTagInternal

- (NSString)description
{
  selfCopy = self;
  type = self->_type;
  v5 = @"Unknown";
  v6 = @"Unknown";
  if (type - 1 <= 0xF)
  {
    v6 = off_278872C98[type - 1];
  }

  technology = self->_technology;
  if ((technology & 0x10) != 0)
  {
    v5 = @"Iso15693";
  }

  if ((technology & 4) != 0)
  {
    v5 = @"F";
  }

  if ((technology & 2) != 0)
  {
    v5 = @"B";
  }

  if (technology)
  {
    v8 = @"A";
  }

  else
  {
    v8 = v5;
  }

  v9 = type > 0x10;
  v10 = (1 << type) & 0x1E20E;
  if (!v9 && v10 != 0)
  {
    v68 = v6;
    v12 = objc_msgSend_NF_asHexString(self->_historicalBytes, a2, v2);
    v15 = v8;
    if (objc_msgSend_length(v12, v13, v14))
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = objc_msgSend_initWithFormat_(v16, v17, @"historicalBytes=%@ ", v12);
    }

    else
    {
      v18 = &stru_2843AE380;
    }

    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v72.receiver = selfCopy;
    v72.super_class = NFTagInternal;
    v20 = [(NFTagInternal *)&v72 description];
    v23 = objc_msgSend_NF_asHexString(*(selfCopy + 56), v21, v22);
    v26 = objc_msgSend_NF_asHexString(*(selfCopy + 16), v24, v25);
    v27 = *(selfCopy + 112);
    v30 = objc_msgSend_NF_asHexString(*(selfCopy + 96), v28, v29);
    v33 = objc_msgSend_NF_asHexString(*(selfCopy + 88), v31, v32);
    v35 = objc_msgSend_initWithFormat_(v19, v34, @"%@-%@ { Tech=%@ Type=%@ ID=%@ silentType=%d SAK=%@ ATQA=%@ sfgi=0x%X %@}", v20, v23, v15, v68, v26, v27, v30, v33, *(selfCopy + 113), v18);

    goto LABEL_20;
  }

  if (!objc_msgSend_isEqualToString_(v8, a2, @"F"))
  {
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    v70.receiver = selfCopy;
    v70.super_class = NFTagInternal;
    v18 = [(NFTagInternal *)&v70 description];
    v20 = objc_msgSend_NF_asHexString(*(selfCopy + 56), v42, v43);
    v23 = objc_msgSend_NF_asHexString(*(selfCopy + 16), v44, v45);
    v35 = objc_msgSend_initWithFormat_(v41, v46, @"%@-%@ { Tech=%@ Type=%@ ID=%@, NDEF=%d, capacity=%lu, messageSize=%lu }", v18, v20, v8, v6, v23, *(selfCopy + 64), *(selfCopy + 80), *(selfCopy + 72));
    goto LABEL_20;
  }

  if (objc_msgSend_count(*(selfCopy + 40), v37, v38))
  {
    v69 = objc_msgSend__getSystemCodeListString(selfCopy, v39, v40);
  }

  else
  {
    v69 = 0;
  }

  v66 = objc_alloc(MEMORY[0x277CCACA8]);
  v71.receiver = selfCopy;
  v71.super_class = NFTagInternal;
  v20 = [(NFTagInternal *)&v71 description];
  v23 = objc_msgSend_NF_asHexString(*(selfCopy + 56), v47, v48);
  v51 = objc_msgSend_NF_asHexString(*(selfCopy + 16), v49, v50);
  v67 = objc_msgSend_NF_asHexString(*(selfCopy + 32), v52, v53);
  v55 = *(selfCopy + 48);
  if (v55)
  {
    v56 = objc_alloc(MEMORY[0x277CCACA8]);
    selfCopy = objc_msgSend_NF_asHexString(*(selfCopy + 48), v57, v58);
    v60 = objc_msgSend_initWithFormat_(v56, v59, @"SystemCode=%@", selfCopy);
  }

  else
  {
    v60 = &stru_2843AE380;
  }

  if (!v69)
  {
    v64 = v67;
    v35 = objc_msgSend_initWithFormat_(v66, v54, @"%@-%@ { Tech=%@ Type=%@ ID=%@ PMm=%@ %@%@}", v20, v23, v8, v6, v51, v67, v60, &stru_2843AE380);
    if (!v55)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v61 = objc_alloc(MEMORY[0x277CCACA8]);
  v63 = objc_msgSend_initWithFormat_(v61, v62, @"SystemCodeList=%@ ", v69);
  v64 = v67;
  v35 = objc_msgSend_initWithFormat_(v66, v65, @"%@-%@ { Tech=%@ Type=%@ ID=%@ PMm=%@ %@%@}", v20, v23, v8, v6, v51, v67, v60, v63);

  if (v55)
  {
LABEL_33:
  }

LABEL_34:

  v18 = v69;
LABEL_20:

  return v35;
}

- (NFTagA)tagA
{
  if (self->_technology == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NFTagB)tagB
{
  if (self->_technology == 2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NFTagF)tagF
{
  if (self->_technology == 4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NFTagInternal)initWithNFTag:(id)tag
{
  tagCopy = tag;
  v101.receiver = self;
  v101.super_class = NFTagInternal;
  v7 = [(NFTagInternal *)&v101 init];
  if (v7)
  {
    v7->_type = objc_msgSend_type(tagCopy, v5, v6);
    v7->_technology = objc_msgSend_technology(tagCopy, v8, v9);
    v12 = objc_msgSend_UID(tagCopy, v10, v11);
    v15 = objc_msgSend_copy(v12, v13, v14);
    uid = v7->_uid;
    v7->_uid = v15;

    v19 = objc_msgSend_tagID(tagCopy, v17, v18);
    v22 = objc_msgSend_copy(v19, v20, v21);
    tagID = v7->_tagID;
    v7->_tagID = v22;

    v7->_ndefAvailability = objc_msgSend_ndefAvailability(tagCopy, v24, v25);
    v7->_ndefMessageSize = objc_msgSend_ndefMessageSize(tagCopy, v26, v27);
    v7->_ndefContainerSize = objc_msgSend_ndefContainerSize(tagCopy, v28, v29);
    if (objc_msgSend_technology(tagCopy, v30, v31) == 1 && objc_msgSend_conformsToProtocol_(tagCopy, v32, &unk_2843B8760))
    {
      v34 = tagCopy;
      v37 = objc_msgSend_atqa(v34, v35, v36);
      v40 = objc_msgSend_copy(v37, v38, v39);
      atqa = v7->_atqa;
      v7->_atqa = v40;

      v44 = objc_msgSend_sak(v34, v42, v43);
      v47 = objc_msgSend_copy(v44, v45, v46);
      sak = v7->_sak;
      v7->_sak = v47;

      v51 = objc_msgSend_historicalBytes(v34, v49, v50);
      v54 = objc_msgSend_copy(v51, v52, v53);
      historicalBytes = v7->_historicalBytes;
      v7->_historicalBytes = v54;

      v58 = objc_msgSend_selectedAID(v34, v56, v57);
      v61 = objc_msgSend_copy(v58, v59, v60);
      appData = v7->_appData;
      v7->_appData = v61;

      LOBYTE(v58) = objc_msgSend_sfgi(v34, v63, v64);
      v7->_sfgi = v58;
    }

    if (objc_msgSend_technology(tagCopy, v32, v33) == 2 && objc_msgSend_conformsToProtocol_(tagCopy, v65, &unk_2843B8900))
    {
      v67 = tagCopy;
      v70 = objc_msgSend_selectedAID(v67, v68, v69);
      v73 = objc_msgSend_copy(v70, v71, v72);
      v74 = v7->_appData;
      v7->_appData = v73;

      LOBYTE(v70) = objc_msgSend_sfgi(v67, v75, v76);
      v7->_sfgi = v70;
    }

    if (objc_msgSend_technology(tagCopy, v65, v66) == 4 && objc_msgSend_conformsToProtocol_(tagCopy, v77, &unk_2843B8A80))
    {
      v78 = tagCopy;
      v81 = objc_msgSend_PMm(v78, v79, v80);
      v84 = objc_msgSend_copy(v81, v82, v83);
      pmm = v7->_pmm;
      v7->_pmm = v84;

      v88 = objc_msgSend_SystemCode(v78, v86, v87);
      v91 = objc_msgSend_copy(v88, v89, v90);
      v92 = v7->_appData;
      v7->_appData = v91;

      v95 = objc_msgSend_allSystemCodes(v78, v93, v94);

      v98 = objc_msgSend_copy(v95, v96, v97);
      allSystemCodes = v7->_allSystemCodes;
      v7->_allSystemCodes = v98;
    }
  }

  return v7;
}

- (NFTagInternal)initWithNFTagForUIDOnly:(id)only
{
  onlyCopy = only;
  v20.receiver = self;
  v20.super_class = NFTagInternal;
  v7 = [(NFTagInternal *)&v20 init];
  if (v7)
  {
    v8 = objc_msgSend_UID(onlyCopy, v5, v6);
    v11 = objc_msgSend_copy(v8, v9, v10);
    uid = v7->_uid;
    v7->_uid = v11;

    v7->_ndefAvailability = objc_msgSend_ndefAvailability(onlyCopy, v13, v14);
    v7->_ndefMessageSize = objc_msgSend_ndefMessageSize(onlyCopy, v15, v16);
    v7->_ndefContainerSize = objc_msgSend_ndefContainerSize(onlyCopy, v17, v18);
  }

  return v7;
}

- (NFTagInternal)initWithDictionary:(id)dictionary
{
  v71 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v69.receiver = self;
  v69.super_class = NFTagInternal;
  v6 = [(NFTagInternal *)&v69 init];
  if (v6)
  {
    v8 = objc_msgSend_objectForKey_(dictionaryCopy, v5, @"technology");
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_technology = objc_msgSend_integerValue(v8, v7, v9);
      }
    }

    v10 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"type");

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_type = objc_msgSend_integerValue(v10, v11, v12);
      }
    }

    v13 = objc_msgSend_objectForKey_(dictionaryCopy, v11, @"silentType");

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_silentType = objc_msgSend_intValue(v13, v14, v15);
      }
    }

    v16 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"identifier");

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_msgSend_copy(v16, v17, v18);
        tagID = v6->_tagID;
        v6->_tagID = v19;
      }
    }

    v21 = objc_msgSend_objectForKey_(dictionaryCopy, v17, @"PMm");

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = objc_msgSend_copy(v21, v22, v23);
        pmm = v6->_pmm;
        v6->_pmm = v24;
      }
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2843B4DB8, v22, &v65, v70, 16);
    if (v26)
    {
      v28 = v26;
      v29 = *v66;
      while (2)
      {
        v30 = 0;
        v31 = v21;
        do
        {
          if (*v66 != v29)
          {
            objc_enumerationMutation(&unk_2843B4DB8);
          }

          v21 = objc_msgSend_objectForKey_(dictionaryCopy, v27, *(*(&v65 + 1) + 8 * v30));

          if (v21)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = objc_msgSend_copy(v21, v27, v32);
              appData = v6->_appData;
              v6->_appData = v33;

              goto LABEL_28;
            }
          }

          ++v30;
          v31 = v21;
        }

        while (v28 != v30);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2843B4DB8, v27, &v65, v70, 16);
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:
    v35 = objc_msgSend_objectForKey_(dictionaryCopy, v27, @"allSystemCodes");

    if (v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = objc_msgSend_copy(v35, v36, v37);
        allSystemCodes = v6->_allSystemCodes;
        v6->_allSystemCodes = v38;
      }
    }

    v40 = objc_msgSend_objectForKey_(dictionaryCopy, v36, @"UID");

    if (v40)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = objc_msgSend_copy(v40, v41, v42);
        uid = v6->_uid;
        v6->_uid = v43;
      }
    }

    v45 = objc_msgSend_objectForKey_(dictionaryCopy, v41, @"atqa");

    if (v45)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = objc_msgSend_copy(v45, v46, v47);
        atqa = v6->_atqa;
        v6->_atqa = v48;
      }
    }

    v50 = objc_msgSend_objectForKey_(dictionaryCopy, v46, @"sak");

    if (v50)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = objc_msgSend_copy(v50, v51, v52);
        sak = v6->_sak;
        v6->_sak = v53;
      }
    }

    v55 = objc_msgSend_objectForKey_(dictionaryCopy, v51, @"historicalBytes");

    if (v55)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = objc_msgSend_copy(v55, v56, v57);
        historicalBytes = v6->_historicalBytes;
        v6->_historicalBytes = v58;
      }
    }

    v60 = objc_msgSend_objectForKey_(dictionaryCopy, v56, @"sfgi");

    if (v60)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_sfgi = objc_msgSend_integerValue(v60, v61, v62);
      }
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NFTagInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = NFTagInternal;
  v6 = [(NFTagInternal *)&v46 init];
  if (v6)
  {
    v6->_technology = objc_msgSend_decodeInt32ForKey_(coderCopy, v5, @"technology");
    v6->_type = objc_msgSend_decodeInt32ForKey_(coderCopy, v7, @"type");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"identifier");
    tagID = v6->_tagID;
    v6->_tagID = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"PMm");
    pmm = v6->_pmm;
    v6->_pmm = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v17, coderCopy, v16, @"allSystemCodes");
    allSystemCodes = v6->_allSystemCodes;
    v6->_allSystemCodes = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"UID");
    uid = v6->_uid;
    v6->_uid = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"AppData");
    appData = v6->_appData;
    v6->_appData = v26;

    v6->_ndefAvailability = objc_msgSend_decodeInt32ForKey_(coderCopy, v28, @"ndefAvailability");
    v6->_ndefMessageSize = objc_msgSend_decodeIntegerForKey_(coderCopy, v29, @"ndefMessageSize");
    v6->_ndefContainerSize = objc_msgSend_decodeIntegerForKey_(coderCopy, v30, @"ndefContainerSize");
    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"atqa");
    atqa = v6->_atqa;
    v6->_atqa = v33;

    v35 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"sak");
    sak = v6->_sak;
    v6->_sak = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"historicalBytes");
    historicalBytes = v6->_historicalBytes;
    v6->_historicalBytes = v41;

    v6->_silentType = objc_msgSend_decodeIntForKey_(coderCopy, v43, @"silentType");
    v6->_sfgi = objc_msgSend_decodeIntegerForKey_(coderCopy, v44, @"sfgi");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  technology = self->_technology;
  coderCopy = coder;
  objc_msgSend_encodeInt32_forKey_(coderCopy, v5, technology, @"technology");
  objc_msgSend_encodeInt32_forKey_(coderCopy, v6, self->_type, @"type");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_tagID, @"identifier");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_pmm, @"PMm");
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_allSystemCodes, @"allSystemCodes");
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_uid, @"UID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_appData, @"AppData");
  objc_msgSend_encodeInt32_forKey_(coderCopy, v12, self->_ndefAvailability, @"ndefAvailability");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v13, self->_ndefMessageSize, @"ndefMessageSize");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v14, self->_ndefContainerSize, @"ndefContainerSize");
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, self->_atqa, @"atqa");
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_sak, @"sak");
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, self->_historicalBytes, @"historicalBytes");
  objc_msgSend_encodeInt_forKey_(coderCopy, v18, self->_silentType, @"silentType");
  objc_msgSend_encodeInt_forKey_(coderCopy, v19, self->_sfgi, @"sfgi");
}

- (BOOL)isEqualToNFTag:(id)tag
{
  tagCopy = tag;
  v7 = tagCopy;
  if (self == tagCopy)
  {
    isEqual = 1;
    goto LABEL_13;
  }

  type = self->_type;
  if (type != objc_msgSend_type(tagCopy, v5, v6))
  {
    goto LABEL_6;
  }

  technology = self->_technology;
  if (technology != objc_msgSend_technology(v7, v9, v10))
  {
    goto LABEL_6;
  }

  tagID = self->_tagID;
  v15 = objc_msgSend_tagID(v7, v12, v13);
  v18 = v15;
  if (tagID == v15)
  {
  }

  else
  {
    v19 = self->_tagID;
    v20 = objc_msgSend_tagID(v7, v16, v17);
    LODWORD(v19) = objc_msgSend_isEqual_(v19, v21, v20);

    if (!v19)
    {
LABEL_6:
      isEqual = 0;
      goto LABEL_13;
    }
  }

  uid = self->_uid;
  v28 = objc_msgSend_UID(v7, v22, v23);
  if (uid == v28)
  {
    isEqual = 1;
  }

  else
  {
    v29 = self->_uid;
    v30 = objc_msgSend_UID(v7, v26, v27);
    isEqual = objc_msgSend_isEqual_(v29, v31, v30);
  }

LABEL_13:
  return isEqual & 1;
}

- (void)_setIDm:(id)dm
{
  v4 = objc_msgSend_copy(dm, a2, dm);
  tagID = self->_tagID;
  self->_tagID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setPMm:(id)mm
{
  v4 = objc_msgSend_copy(mm, a2, mm);
  pmm = self->_pmm;
  self->_pmm = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setSystemCode:(id)code
{
  v4 = objc_msgSend_copy(code, a2, code);
  appData = self->_appData;
  self->_appData = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setIdentifier:(id)identifier
{
  v4 = objc_msgSend_copy(identifier, a2, identifier);
  tagID = self->_tagID;
  self->_tagID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setUID:(id)d
{
  v4 = objc_msgSend_copy(d, a2, d);
  uid = self->_uid;
  self->_uid = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setAppData:(id)data
{
  v4 = objc_msgSend_copy(data, a2, data);
  appData = self->_appData;
  self->_appData = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setSystemCodes:(id)codes
{
  v4 = objc_msgSend_copy(codes, a2, codes);
  allSystemCodes = self->_allSystemCodes;
  self->_allSystemCodes = v4;

  MEMORY[0x2821F96F8]();
}

- (id)_getSystemCodeListString
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_msgSend_initWithString_(v3, v4, @"(");
  if (objc_msgSend_count(self->_allSystemCodes, v6, v7))
  {
    v9 = 0;
    do
    {
      v10 = v9 + 1;
      v11 = objc_msgSend_objectAtIndex_(self->_allSystemCodes, v8, v9);
      v14 = objc_msgSend_description(v11, v12, v13);
      objc_msgSend_appendString_(v5, v15, v14);

      if (v10 != objc_msgSend_count(self->_allSystemCodes, v16, v17))
      {
        objc_msgSend_appendString_(v5, v18, @", ");
      }

      v21 = objc_msgSend_count(self->_allSystemCodes, v19, v20);
      v9 = v10;
    }

    while (v10 < v21);
  }

  objc_msgSend_appendString_(v5, v8, @""));

  return v5;
}

- (void)_setAtqa:(id)atqa
{
  v4 = objc_msgSend_copy(atqa, a2, atqa);
  atqa = self->_atqa;
  self->_atqa = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setSak:(id)sak
{
  v4 = objc_msgSend_copy(sak, a2, sak);
  sak = self->_sak;
  self->_sak = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setHistoricalBytes:(id)bytes
{
  v4 = objc_msgSend_copy(bytes, a2, bytes);
  historicalBytes = self->_historicalBytes;
  self->_historicalBytes = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setSelectedAID:(id)d
{
  v4 = objc_msgSend_copy(d, a2, d);
  appData = self->_appData;
  self->_appData = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_setSFGI:(unsigned __int8)i
{
  if (i >= 0xFu)
  {
    iCopy = 15;
  }

  else
  {
    iCopy = i;
  }

  self->_sfgi = iCopy;
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v5 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v4, self->_technology);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v6, v5, @"technology");

  v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, self->_type);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v9, v8, @"type");

  v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v10, self->_ndefAvailability);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v12, v11, @"ndefAvailability");

  v14 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v13, self->_ndefContainerSize);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v14, @"ndefContainerSize");

  v17 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, self->_ndefMessageSize);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v17, @"ndefMessageSize");

  v20 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v19, self->_silentType);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v21, v20, @"silentType");

  v23 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v22, self->_sfgi);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v24, v23, @"sfgi");

  tagID = self->_tagID;
  if (tagID)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, tagID, @"identifier");
  }

  uid = self->_uid;
  if (uid)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, uid, @"UID");
  }

  pmm = self->_pmm;
  if (pmm)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, pmm, @"PMm");
  }

  allSystemCodes = self->_allSystemCodes;
  if (allSystemCodes)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, allSystemCodes, @"allSystemCodes");
  }

  appData = self->_appData;
  if (appData)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, appData, @"allSystemCodes");
  }

  atqa = self->_atqa;
  if (atqa)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, atqa, @"atqa");
  }

  sak = self->_sak;
  if (sak)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, sak, @"sak");
  }

  historicalBytes = self->_historicalBytes;
  if (historicalBytes)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v25, historicalBytes, @"historicalBytes");
  }

  return v3;
}

@end