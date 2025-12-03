@interface NFNdefRecordInternal
+ (BOOL)parseRecordUsingScanner:(_NFDataScanner *)scanner header:(char *)header type:(id *)type identifier:(id *)identifier payload:(id *)payload;
+ (id)_decodeTextRecord:(id)record;
+ (id)_decodeTextRecordLanguage:(id)language;
+ (id)_decodeTextRecordText:(id)text;
+ (id)_decodeURIRecord:(id)record;
+ (id)dataFromRecord:(id)record;
+ (id)decodeFromRecord:(id)record;
+ (id)recordsFromBytes:(const void *)bytes length:(unsigned int)length;
- (BOOL)isURIRecord;
- (NFNdefRecordInternal)init;
- (NFNdefRecordInternal)initWithCoder:(id)coder;
- (NFNdefRecordInternal)initWithHeader:(unsigned __int8)header type:(id)type identifier:(id)identifier payload:(id)payload;
- (NFNdefRecordInternal)initWithNDEFRecord:(id)record;
- (NSString)description;
- (void)_setIdLengthPresent:(BOOL)present;
- (void)encodeWithCoder:(id)coder;
- (void)setChunked:(BOOL)chunked;
- (void)setIdentifier:(id)identifier;
- (void)setMessageBegin:(BOOL)begin;
- (void)setMessageEnd:(BOOL)end;
- (void)setPayload:(id)payload;
- (void)setShortRecord:(BOOL)record;
@end

@implementation NFNdefRecordInternal

+ (BOOL)parseRecordUsingScanner:(_NFDataScanner *)scanner header:(char *)header type:(id *)type identifier:(id *)identifier payload:(id *)payload
{
  LOBYTE(Data) = 0;
  if (!header || !type || !identifier || !payload)
  {
    return Data;
  }

  *type = 0;
  *identifier = 0;
  *payload = 0;
  *header = 0;
  var1 = scanner->var1;
  if (var1 + 1 > *(scanner->var0 + 1))
  {
    goto LABEL_7;
  }

  v13 = *scanner->var0;
  scanner->var1 = var1 + 1;
  v14 = *(v13 + var1);
  *header = v14;
  v15 = scanner->var1;
  v16 = v15 + 1;
  v17 = *(scanner->var0 + 1);
  if (v15 + 1 > v17)
  {
    goto LABEL_7;
  }

  v18 = *scanner->var0;
  scanner->var1 = v16;
  v19 = *(v18 + v15);
  if ((v14 & 0x10) != 0)
  {
    v22 = v15 + 2;
    if (v22 <= v17)
    {
      scanner->var1 = v22;
      v20 = *(v18 + v16);
      if ((v14 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_7:
    LOBYTE(Data) = 0;
    return Data;
  }

  if (v15 + 5 > v17)
  {
    goto LABEL_7;
  }

  v20 = 0;
  v21 = -4;
  do
  {
    v22 = v16 + 1;
    scanner->var1 = v16 + 1;
    v20 = *(v18 + v16++) | (v20 << 8);
  }

  while (!__CFADD__(v21++, 1));
  if ((v14 & 8) == 0)
  {
LABEL_15:
    v24 = 0;
    if (!v19)
    {
      goto LABEL_23;
    }

LABEL_21:
    Data = NFDataScannerReadData(scanner, v19);
    if (!Data)
    {
      return Data;
    }

    v25 = Data;
    v26 = objc_alloc(MEMORY[0x277CBEA90]);
    *type = objc_msgSend_initWithBytes_length_(v26, v27, *v25, v25[1]);
    NFDataRelease(v25);
    goto LABEL_23;
  }

LABEL_19:
  if (v22 + 1 > v17)
  {
    goto LABEL_7;
  }

  scanner->var1 = v22 + 1;
  v24 = *(v18 + v22);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (v24)
  {
    Data = NFDataScannerReadData(scanner, v24);
    if (!Data)
    {
      return Data;
    }

    v28 = Data;
    v29 = objc_alloc(MEMORY[0x277CBEA90]);
    *identifier = objc_msgSend_initWithBytes_length_(v29, v30, *v28, v28[1]);
    NFDataRelease(v28);
  }

  if (v20)
  {
    Data = NFDataScannerReadData(scanner, v20);
    if (!Data)
    {
      return Data;
    }

    v31 = Data;
    v32 = objc_alloc(MEMORY[0x277CBEA90]);
    *payload = objc_msgSend_initWithBytes_length_(v32, v33, *v31, v31[1]);
    NFDataRelease(v31);
  }

  LOBYTE(Data) = 1;
  return Data;
}

+ (id)recordsFromBytes:(const void *)bytes length:(unsigned int)length
{
  v6 = objc_opt_new();
  v7 = NFDataCreateWithBytesNoCopy(bytes, length, 0);
  v8 = NFDataScannerCreateWithData(v7);
  v10 = v8;
  if (v8)
  {
    v11 = *v8;
    if (*v8)
    {
      do
      {
        v12 = *(v11 + 8);
        if (!v12 || v10[1] >= v12)
        {
          break;
        }

        v25 = 0;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v13 = objc_msgSend_parseRecordUsingScanner_header_type_identifier_payload_(NFNdefRecordInternal, v9, v10, &v25, &v24, &v23, &v22);
        v14 = v24;
        v15 = v23;
        v16 = v22;
        if (v13)
        {
          v17 = [NFNdefRecordInternal alloc];
          v19 = objc_msgSend_initWithHeader_type_identifier_payload_(v17, v18, v25, v14, v15, v16);
          objc_msgSend_addObject_(v6, v20, v19);
        }

        v11 = *v10;
      }

      while (*v10);
    }
  }

  NFDataScannerRelease(v10);
  NFDataRelease(v7);

  return v6;
}

- (NFNdefRecordInternal)init
{
  v3.receiver = self;
  v3.super_class = NFNdefRecordInternal;
  result = [(NFNdefRecordInternal *)&v3 init];
  if (result)
  {
    result->_firstOctet = 0;
  }

  return result;
}

- (NFNdefRecordInternal)initWithNDEFRecord:(id)record
{
  recordCopy = record;
  v21.receiver = self;
  v21.super_class = NFNdefRecordInternal;
  v7 = [(NFNdefRecordInternal *)&v21 init];
  if (v7)
  {
    v7->_firstOctet = objc_msgSend_header(recordCopy, v5, v6);
    v10 = objc_msgSend_identifier(recordCopy, v8, v9);
    identifier = v7->_identifier;
    v7->_identifier = v10;

    v14 = objc_msgSend_type(recordCopy, v12, v13);
    type = v7->_type;
    v7->_type = v14;

    v18 = objc_msgSend_payload(recordCopy, v16, v17);
    payload = v7->_payload;
    v7->_payload = v18;
  }

  return v7;
}

- (NFNdefRecordInternal)initWithHeader:(unsigned __int8)header type:(id)type identifier:(id)identifier payload:(id)payload
{
  typeCopy = type;
  identifierCopy = identifier;
  payloadCopy = payload;
  v19.receiver = self;
  v19.super_class = NFNdefRecordInternal;
  v13 = [(NFNdefRecordInternal *)&v19 init];
  v15 = v13;
  if (v13)
  {
    v13->_firstOctet = header;
    objc_msgSend_setIdentifier_(v13, v14, identifierCopy);
    objc_msgSend_setType_(v15, v16, typeCopy);
    objc_msgSend_setPayload_(v15, v17, payloadCopy);
  }

  return v15;
}

- (void)setMessageBegin:(BOOL)begin
{
  if (begin)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = v3 & 0x80 | self->_firstOctet & 0x7F;
}

- (void)setMessageEnd:(BOOL)end
{
  if (end)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xBF | v3;
}

- (void)setChunked:(BOOL)chunked
{
  if (chunked)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xDF | v3;
}

- (void)setShortRecord:(BOOL)record
{
  if (record)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xEF | v3;
}

- (void)_setIdLengthPresent:(BOOL)present
{
  if (present)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xF7 | v3;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_msgSend__setIdLengthPresent_(self, v4, 1);
    v5 = identifierCopy;
  }

  else
  {
    objc_msgSend__setIdLengthPresent_(self, v4, 0);
  }

  identifier = self->_identifier;
  self->_identifier = identifierCopy;
}

- (void)setPayload:(id)payload
{
  objc_storeStrong(&self->_payload, payload);
  payloadCopy = payload;
  v8 = objc_msgSend_length(self->_payload, v6, v7);

  objc_msgSend_setShortRecord_(self, v9, v8 < 0x100);
}

- (NSString)description
{
  v62 = objc_alloc(MEMORY[0x277CCACA8]);
  v64.receiver = self;
  v64.super_class = NFNdefRecordInternal;
  v3 = [(NFNdefRecordInternal *)&v64 description];
  v61 = objc_msgSend_messageBegin(self, v4, v5);
  v60 = objc_msgSend_messageEnd(self, v6, v7);
  v59 = objc_msgSend_chunked(self, v8, v9);
  v57 = objc_msgSend_shortRecord(self, v10, v11);
  v63 = objc_msgSend_identifier(self, v12, v13);
  v56 = objc_msgSend_length(v63, v14, v15);
  v55 = objc_msgSend_typeNameFormat(self, v16, v17);
  v22 = objc_msgSend_type(self, v18, v19);
  if (v22)
  {
    v53 = objc_msgSend_type(self, v20, v21);
    v54 = objc_msgSend_length(v53, v23, v24);
  }

  else
  {
    v54 = 0;
  }

  v58 = objc_msgSend_type(self, v20, v21);
  if (v58)
  {
    v27 = objc_msgSend_type(self, v25, v26);
  }

  else
  {
    v27 = objc_opt_new();
  }

  v30 = v27;
  v33 = objc_msgSend_identifier(self, v28, v29);
  if (v33)
  {
    v34 = objc_msgSend_identifier(self, v31, v32);
  }

  else
  {
    v34 = objc_opt_new();
  }

  v37 = v34;
  v40 = objc_msgSend_payload(self, v35, v36);
  if (v40)
  {
    v52 = objc_msgSend_payload(self, v38, v39);
    v43 = objc_msgSend_length(v52, v41, v42);
  }

  else
  {
    v43 = 0;
  }

  v46 = objc_msgSend_payload(self, v38, v39);
  if (v46)
  {
    v47 = objc_msgSend_payload(self, v44, v45);
  }

  else
  {
    v47 = objc_opt_new();
  }

  v49 = v47;
  v50 = objc_msgSend_initWithFormat_(v62, v48, @"%@ { MB=%d ME=%d CF=%d SR=%d IL=%d TNF=%d Type Length=%d Type=%@ ID=%@ Payload Length=%d Payload=%@ }", v3, v61, v60, v59, v57, v56, v55, v54, v30, v37, v43, v47);

  if (v40)
  {
  }

  if (v22)
  {
  }

  return v50;
}

- (BOOL)isURIRecord
{
  if (objc_msgSend_typeNameFormat(self, a2, v2) == 1)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_msgSend_type(self, v7, v8);
    v10 = v9;
    v13 = objc_msgSend_bytes(v10, v11, v12);
    v16 = objc_msgSend_type(self, v14, v15);
    v19 = objc_msgSend_length(v16, v17, v18);
    v21 = objc_msgSend_initWithBytes_length_encoding_(v6, v20, v13, v19, 4);

    LOBYTE(v16) = objc_msgSend_isEqualToString_(v21, v22, @"U");
    if (v16)
    {
      return 1;
    }
  }

  else if (objc_msgSend_typeNameFormat(self, v4, v5) == 3)
  {
    return 1;
  }

  return 0;
}

- (NFNdefRecordInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = NFNdefRecordInternal;
  v6 = [(NFNdefRecordInternal *)&v20 init];
  if (v6)
  {
    v6->_firstOctet = objc_msgSend_decodeInt32ForKey_(coderCopy, v5, @"firstOctet");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"type");
    type = v6->_type;
    v6->_type = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"id");
    identifier = v6->_identifier;
    v6->_identifier = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"payload");
    payload = v6->_payload;
    v6->_payload = v17;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInt32_forKey_(coderCopy, v4, self->_firstOctet, @"firstOctet");
  type = self->_type;
  if (type)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v5, type, @"type");
  }

  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v5, identifier, @"id");
  }

  payload = self->_payload;
  v9 = coderCopy;
  if (payload)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v5, payload, @"payload");
    v9 = coderCopy;
  }
}

+ (id)_decodeTextRecordLanguage:(id)language
{
  v51 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v6 = languageCopy;
  v9 = objc_msgSend_bytes(v6, v7, v8);
  v12 = *v9 & 0x1F;
  if ((*v9 & 0x1F) == 0)
  {
    v26 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v28 = *(&off_27DA9DE50 + specific);
      if (v28)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v32 = 45;
        if (isMetaClass)
        {
          v32 = 43;
        }

        v28(4, "%c[%{public}s %{public}s]:%i Invalid language code length; dropping message", v32, ClassName, Name, 431);
        v26 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v33 = dispatch_get_specific(v26);
      v22 = NFSharedLogGetLogger(v33);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *buf = 67109890;
      v44 = v35;
      v45 = 2082;
      v46 = object_getClassName(self);
      v47 = 2082;
      v48 = sel_getName(a2);
      v49 = 1024;
      v50 = 431;
      v25 = "%c[%{public}s %{public}s]:%i Invalid language code length; dropping message";
      goto LABEL_23;
    }

LABEL_29:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v13 = v9;
  if (objc_msgSend_length(languageCopy, v10, v11) < (v12 + 1))
  {
    v14 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v15 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v15 < 5)
    {
      v16 = *(&off_27DA9DE50 + v15);
      if (v16)
      {
        v17 = object_getClass(self);
        v18 = class_isMetaClass(v17);
        v19 = object_getClassName(self);
        v41 = sel_getName(a2);
        v20 = 45;
        if (v18)
        {
          v20 = 43;
        }

        v16(4, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", v20, v19, v41, 436);
        v14 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v21 = dispatch_get_specific(v14);
      v22 = NFSharedLogGetLogger(v21);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67109890;
      v44 = v24;
      v45 = 2082;
      v46 = object_getClassName(self);
      v47 = 2082;
      v48 = sel_getName(a2);
      v49 = 1024;
      v50 = 436;
      v25 = "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message";
LABEL_23:
      _os_log_impl(&dword_22EEC4000, v22, OS_LOG_TYPE_ERROR, v25, buf, 0x22u);
LABEL_24:

      v36 = 0;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v37 = objc_alloc(MEMORY[0x277CCACA8]);
  v36 = objc_msgSend_initWithBytes_length_encoding_(v37, v38, (v13 + 1), v12, 1);
LABEL_26:

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)_decodeTextRecordText:(id)text
{
  v88 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v6 = textCopy;
  v9 = objc_msgSend_bytes(v6, v7, v8);
  v10 = *v9;
  v11 = (*v9 & 0x1F) + 1;
  if (objc_msgSend_length(textCopy, v12, v13) <= v11)
  {
    v40 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v42 = *(&off_27DA9DE50 + specific);
      if (v42)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v46 = 45;
        if (isMetaClass)
        {
          v46 = 43;
        }

        v42(4, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", v46, ClassName, Name, 455);
        v40 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v47 = dispatch_get_specific(v40);
      v15 = NFSharedLogGetLogger(v47);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(self);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        *buf = 67109890;
        v81 = v49;
        v82 = 2082;
        v83 = object_getClassName(self);
        v84 = 2082;
        v85 = sel_getName(a2);
        v86 = 1024;
        v87 = 455;
        _os_log_impl(&dword_22EEC4000, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", buf, 0x22u);
      }

      goto LABEL_48;
    }

LABEL_54:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  sel = a2;
  v14 = v10;
  v15 = objc_opt_new();
  if (objc_msgSend_length(textCopy, v16, v17) > v11)
  {
    for (i = &v9[v11]; i < &v9[objc_msgSend_length(textCopy, v25, v26)]; ++i)
    {
      if ((v14 & 0x80000000) == 0 && (v21 = *i, v21 <= 0x1F) && ((v22 = v21 > 0xD, v23 = (1 << v21) & 0x2500, !v22) ? (v24 = v23 == 0) : (v24 = 1), v24))
      {
        v27 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v28 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v28 >= 5)
        {
          goto LABEL_54;
        }

        v29 = *(&off_27DA9DE50 + v28);
        if (v29)
        {
          v30 = object_getClass(self);
          v31 = class_isMetaClass(v30);
          v32 = object_getClassName(self);
          v76 = sel_getName(sel);
          v33 = 45;
          if (v31)
          {
            v33 = 43;
          }

          v29(4, "%c[%{public}s %{public}s]:%i Invalid character found, skipping", v33, v32, v76, 463);
          v27 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v34 = dispatch_get_specific(v27);
        v35 = NFSharedLogGetLogger(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = object_getClass(self);
          if (class_isMetaClass(v36))
          {
            v37 = 43;
          }

          else
          {
            v37 = 45;
          }

          v38 = object_getClassName(self);
          v39 = sel_getName(sel);
          *buf = 67109890;
          v81 = v37;
          v82 = 2082;
          v83 = v38;
          v84 = 2082;
          v85 = v39;
          v86 = 1024;
          v87 = 463;
          _os_log_impl(&dword_22EEC4000, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid character found, skipping", buf, 0x22u);
        }
      }

      else
      {
        objc_msgSend_appendBytes_length_(v15, v18, i, 1);
      }
    }
  }

  if (objc_msgSend_length(v15, v18, v19))
  {
    v50 = objc_alloc(MEMORY[0x277CCACA8]);
    v51 = v15;
    v54 = objc_msgSend_bytes(v51, v52, v53);
    v58 = objc_msgSend_length(v15, v55, v56);
    if (v14 < 0)
    {
      v59 = objc_msgSend_initWithBytes_length_encoding_(v50, v57, v54, v58, 10);
    }

    else
    {
      v59 = objc_msgSend_initWithBytes_length_encoding_(v50, v57, v54, v58, 4);
    }

    v73 = v59;
    goto LABEL_51;
  }

  v60 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v61 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v61 >= 5)
  {
    goto LABEL_54;
  }

  v62 = *(&off_27DA9DE50 + v61);
  if (v62)
  {
    v63 = object_getClass(self);
    v64 = class_isMetaClass(v63);
    v65 = object_getClassName(self);
    v78 = sel_getName(sel);
    v66 = 45;
    if (v64)
    {
      v66 = 43;
    }

    v62(4, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", v66, v65, v78, 470);
    v60 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v67 = dispatch_get_specific(v60);
  v68 = NFSharedLogGetLogger(v67);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    v69 = object_getClass(self);
    if (class_isMetaClass(v69))
    {
      v70 = 43;
    }

    else
    {
      v70 = 45;
    }

    v71 = object_getClassName(self);
    v72 = sel_getName(sel);
    *buf = 67109890;
    v81 = v70;
    v82 = 2082;
    v83 = v71;
    v84 = 2082;
    v85 = v72;
    v86 = 1024;
    v87 = 470;
    _os_log_impl(&dword_22EEC4000, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", buf, 0x22u);
  }

LABEL_48:
  v73 = 0;
LABEL_51:

  v74 = *MEMORY[0x277D85DE8];

  return v73;
}

+ (id)_decodeTextRecord:(id)record
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (objc_msgSend_length(recordCopy, v6, v7))
  {
    v10 = objc_msgSend__decodeTextRecordLanguage_(NFNdefRecordInternal, v8, recordCopy);
    v11 = &stru_2843AE380;
    if (!v10)
    {
      goto LABEL_31;
    }

    v12 = objc_msgSend__decodeTextRecordText_(NFNdefRecordInternal, v9, recordCopy);
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = objc_msgSend_initWithFormat_(v13, v14, @"'%@' : %@", v10, v12);
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = &stru_2843AE380;
      }

      v11 = v17;

LABEL_30:
      goto LABEL_31;
    }

    v28 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v30 = *(&off_27DA9DE50 + specific);
      if (v30)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v34 = 45;
        if (isMetaClass)
        {
          v34 = 43;
        }

        v30(4, "%c[%{public}s %{public}s]:%i Invalid payload encoding; dropping message", v34, ClassName, Name, 496);
        v28 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v35 = dispatch_get_specific(v28);
      v36 = NFSharedLogGetLogger(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = object_getClass(self);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        *buf = 67109890;
        v44 = v38;
        v45 = 2082;
        v46 = object_getClassName(self);
        v47 = 2082;
        v48 = sel_getName(a2);
        v49 = 1024;
        v50 = 496;
        _os_log_impl(&dword_22EEC4000, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid payload encoding; dropping message", buf, 0x22u);
      }

      v11 = &stru_2843AE380;
      goto LABEL_30;
    }

LABEL_34:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v18 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v19 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v19 >= 5)
  {
    goto LABEL_34;
  }

  v20 = *(&off_27DA9DE50 + v19);
  if (v20)
  {
    v21 = object_getClass(self);
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(self);
    v41 = sel_getName(a2);
    v24 = 45;
    if (v22)
    {
      v24 = 43;
    }

    v20(4, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", v24, v23, v41, 485);
    v18 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v25 = dispatch_get_specific(v18);
  v10 = NFSharedLogGetLogger(v25);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(self);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    *buf = 67109890;
    v44 = v27;
    v45 = 2082;
    v46 = object_getClassName(self);
    v47 = 2082;
    v48 = sel_getName(a2);
    v49 = 1024;
    v50 = 485;
    _os_log_impl(&dword_22EEC4000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", buf, 0x22u);
  }

  v11 = &stru_2843AE380;
LABEL_31:

  v39 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_decodeURIRecord:(id)record
{
  v105 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (objc_msgSend_length(recordCopy, v6, v7) <= 1)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v10 = *(&off_27DA9DE50 + specific);
      if (v10)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(4, "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message", v14, ClassName, Name, 509);
        v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v15 = dispatch_get_specific(v8);
      v16 = NFSharedLogGetLogger(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = object_getClass(self);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v98 = v18;
        v99 = 2082;
        v100 = object_getClassName(self);
        v101 = 2082;
        v102 = sel_getName(a2);
        v103 = 1024;
        v104 = 509;
        v19 = "%c[%{public}s %{public}s]:%i Invalid payload length; dropping message";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_61:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v20 = recordCopy;
  v25 = objc_msgSend_bytes(v20, v21, v22);
  v26 = v25 + 1;
  v27 = *v25;
  do
  {
    if (v26 >= &v25[objc_msgSend_length(recordCopy, v23, v24)])
    {
      v40 = recordCopy;
      v43 = objc_msgSend_bytes(v40, v41, v42);
      v44 = MEMORY[0x277CBEA90];
      v47 = objc_msgSend_length(recordCopy, v45, v46);
      v16 = objc_msgSend_dataWithBytes_length_(v44, v48, v43 + 1, v47 - 1);
      v49 = objc_alloc(MEMORY[0x277CCACA8]);
      v52 = objc_msgSend_initWithFormat_(v49, v50, @"%02x", v27);
      if (v52)
      {
        v53 = objc_msgSend_objectForKeyedSubscript_(&unk_2843B4D50, v51, v52);
        v54 = objc_alloc(MEMORY[0x277CCACA8]);
        v55 = v16;
        v58 = objc_msgSend_bytes(v55, v56, v57);
        v61 = objc_msgSend_length(v16, v59, v60);
        v63 = objc_msgSend_initWithBytes_length_encoding_(v54, v62, v58, v61, 4);
        if (objc_msgSend_length(v63, v64, v65))
        {
          if (v53)
          {
            v66 = objc_alloc(MEMORY[0x277CCACA8]);
            v68 = objc_msgSend_initWithFormat_(v66, v67, @"%@%@", v53, v63);

            v63 = v68;
          }

          v69 = &stru_2843AE380;
          if (v63)
          {
            v69 = v63;
          }

          v39 = v69;
        }

        else
        {
          v80 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v81 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v81 >= 5)
          {
            goto LABEL_61;
          }

          v82 = *(&off_27DA9DE50 + v81);
          if (v82)
          {
            v83 = object_getClass(self);
            v84 = class_isMetaClass(v83);
            v85 = object_getClassName(self);
            v96 = sel_getName(a2);
            v86 = 45;
            if (v84)
            {
              v86 = 43;
            }

            v82(4, "%c[%{public}s %{public}s]:%i Invalid URI; dropping message", v86, v85, v96, 577);
            v80 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v87 = dispatch_get_specific(v80);
          v88 = NFSharedLogGetLogger(v87);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v89 = object_getClass(self);
            if (class_isMetaClass(v89))
            {
              v90 = 43;
            }

            else
            {
              v90 = 45;
            }

            *buf = 67109890;
            v98 = v90;
            v99 = 2082;
            v100 = object_getClassName(self);
            v101 = 2082;
            v102 = sel_getName(a2);
            v103 = 1024;
            v104 = 577;
            _os_log_impl(&dword_22EEC4000, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid URI; dropping message", buf, 0x22u);
          }

          v39 = &stru_2843AE380;
        }
      }

      else
      {
        v70 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v71 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v71 >= 5)
        {
          goto LABEL_61;
        }

        v72 = *(&off_27DA9DE50 + v71);
        if (v72)
        {
          v73 = object_getClass(self);
          v74 = class_isMetaClass(v73);
          v75 = object_getClassName(self);
          v95 = sel_getName(a2);
          v76 = 45;
          if (v74)
          {
            v76 = 43;
          }

          v72(4, "%c[%{public}s %{public}s]:%i Invalid URI; dropping message", v76, v75, v95, 568);
          v70 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v77 = dispatch_get_specific(v70);
        v53 = NFSharedLogGetLogger(v77);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v78 = object_getClass(self);
          if (class_isMetaClass(v78))
          {
            v79 = 43;
          }

          else
          {
            v79 = 45;
          }

          *buf = 67109890;
          v98 = v79;
          v99 = 2082;
          v100 = object_getClassName(self);
          v101 = 2082;
          v102 = sel_getName(a2);
          v103 = 1024;
          v104 = 568;
          _os_log_impl(&dword_22EEC4000, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid URI; dropping message", buf, 0x22u);
        }

        v39 = &stru_2843AE380;
      }

      goto LABEL_58;
    }

    v28 = *v26++;
  }

  while (v28 > 0x1F);
  v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v30 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v30 >= 5)
  {
    goto LABEL_61;
  }

  v31 = *(&off_27DA9DE50 + v30);
  if (v31)
  {
    v32 = object_getClass(self);
    v33 = class_isMetaClass(v32);
    v34 = object_getClassName(self);
    v94 = sel_getName(a2);
    v35 = 45;
    if (v33)
    {
      v35 = 43;
    }

    v31(4, "%c[%{public}s %{public}s]:%i Invalid payload character; dropping message", v35, v34, v94, 558);
    v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v36 = dispatch_get_specific(v29);
  v16 = NFSharedLogGetLogger(v36);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v37 = object_getClass(self);
    if (class_isMetaClass(v37))
    {
      v38 = 43;
    }

    else
    {
      v38 = 45;
    }

    *buf = 67109890;
    v98 = v38;
    v99 = 2082;
    v100 = object_getClassName(self);
    v101 = 2082;
    v102 = sel_getName(a2);
    v103 = 1024;
    v104 = 558;
    v19 = "%c[%{public}s %{public}s]:%i Invalid payload character; dropping message";
LABEL_25:
    _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0x22u);
  }

LABEL_26:
  v39 = &stru_2843AE380;
LABEL_58:

  v91 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)decodeFromRecord:(id)record
{
  v96 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (objc_msgSend_typeNameFormat(recordCopy, v6, v7) == 1)
  {
    v10 = objc_msgSend_type(recordCopy, v8, v9);
    v13 = objc_msgSend_length(v10, v11, v12);

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = objc_msgSend_type(recordCopy, v15, v16);
      v18 = v17;
      v21 = objc_msgSend_bytes(v18, v19, v20);
      v24 = objc_msgSend_type(recordCopy, v22, v23);
      v27 = objc_msgSend_length(v24, v25, v26);
      v29 = objc_msgSend_initWithBytes_length_encoding_(v14, v28, v21, v27, 4);

      if (objc_msgSend_isEqualToString_(v29, v30, @"T"))
      {
        v33 = objc_msgSend_payload(recordCopy, v31, v32);
        v35 = objc_msgSend__decodeTextRecord_(NFNdefRecordInternal, v34, v33);
LABEL_20:
        v57 = v35;

        goto LABEL_35;
      }

      if (objc_msgSend_isEqualToString_(v29, v31, @"U"))
      {
        v33 = objc_msgSend_payload(recordCopy, v69, v70);
        v35 = objc_msgSend__decodeURIRecord_(NFNdefRecordInternal, v71, v33);
        goto LABEL_20;
      }

      goto LABEL_34;
    }

    v58 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v60 = *(&off_27DA9DE50 + specific);
      if (v60)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v64 = 45;
        if (isMetaClass)
        {
          v64 = 43;
        }

        v60(3, "%c[%{public}s %{public}s]:%i 0 record type length; unable to decode", v64, ClassName, Name, 592);
        v58 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v65 = dispatch_get_specific(v58);
      v66 = NFSharedLogGetLogger(v65);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v67 = object_getClass(self);
      if (class_isMetaClass(v67))
      {
        v68 = 43;
      }

      else
      {
        v68 = 45;
      }

      *buf = 67109890;
      v89 = v68;
      v90 = 2082;
      v91 = object_getClassName(self);
      v92 = 2082;
      v93 = sel_getName(a2);
      v94 = 1024;
      v95 = 592;
LABEL_31:
      _os_log_impl(&dword_22EEC4000, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i 0 record type length; unable to decode", buf, 0x22u);
LABEL_32:

      v57 = &stru_2843AE380;
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (objc_msgSend_typeNameFormat(recordCopy, v8, v9) == 3)
  {
    v38 = objc_msgSend_type(recordCopy, v36, v37);
    v41 = objc_msgSend_length(v38, v39, v40);

    if (v41)
    {
      v42 = objc_alloc(MEMORY[0x277CCACA8]);
      v45 = objc_msgSend_type(recordCopy, v43, v44);
      v46 = v45;
      v49 = objc_msgSend_bytes(v46, v47, v48);
      v52 = objc_msgSend_type(recordCopy, v50, v51);
      v55 = objc_msgSend_length(v52, v53, v54);
      v57 = objc_msgSend_initWithBytes_length_encoding_(v42, v56, v49, v55, 4);

      goto LABEL_35;
    }

    v72 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v73 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v73 < 5)
    {
      v74 = *(&off_27DA9DE50 + v73);
      if (v74)
      {
        v75 = object_getClass(self);
        v76 = class_isMetaClass(v75);
        v77 = object_getClassName(self);
        v87 = sel_getName(a2);
        v78 = 45;
        if (v76)
        {
          v78 = 43;
        }

        v74(3, "%c[%{public}s %{public}s]:%i 0 record type length; unable to decode", v78, v77, v87, 605);
        v72 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v79 = dispatch_get_specific(v72);
      v66 = NFSharedLogGetLogger(v79);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v80 = object_getClass(self);
      if (class_isMetaClass(v80))
      {
        v81 = 43;
      }

      else
      {
        v81 = 45;
      }

      *buf = 67109890;
      v89 = v81;
      v90 = 2082;
      v91 = object_getClassName(self);
      v92 = 2082;
      v93 = sel_getName(a2);
      v94 = 1024;
      v95 = 605;
      goto LABEL_31;
    }

LABEL_38:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

LABEL_34:
  v82 = objc_alloc(MEMORY[0x277CCACA8]);
  v57 = objc_msgSend_initWithFormat_(v82, v83, @"%@", recordCopy);
LABEL_35:

  v84 = *MEMORY[0x277D85DE8];

  return v57;
}

+ (id)dataFromRecord:(id)record
{
  recordCopy = record;
  v4 = objc_opt_new();
  v97 = 0;
  v96 = objc_msgSend_header(recordCopy, v5, v6);
  objc_msgSend_appendBytes_length_(v4, v7, &v96, 1);
  v10 = objc_msgSend_type(recordCopy, v8, v9);
  if (v10)
  {
  }

  else if (!objc_msgSend_typeNameFormat(recordCopy, v11, v12))
  {
    v97 = 0;
    objc_msgSend_appendBytes_length_(v4, v13, &v97, 1);
    v97 = 0;
    objc_msgSend_appendBytes_length_(v4, v46, &v97, 1);
    goto LABEL_26;
  }

  v15 = objc_msgSend_type(recordCopy, v13, v14);
  v97 = objc_msgSend_length(v15, v16, v17);

  objc_msgSend_appendBytes_length_(v4, v18, &v97, 1);
  if (objc_msgSend_shortRecord(recordCopy, v19, v20))
  {
    v97 = 0;
    v23 = objc_msgSend_payload(recordCopy, v21, v22);
    if (v23)
    {
      v26 = v23;
      v27 = objc_msgSend_payload(recordCopy, v24, v25);
      v30 = objc_msgSend_length(v27, v28, v29);

      if (v30)
      {
        v32 = objc_msgSend_payload(recordCopy, v24, v31);
        v97 = objc_msgSend_length(v32, v33, v34);
      }
    }
  }

  else
  {
    v37 = objc_msgSend_payload(recordCopy, v21, v22);
    if (v37)
    {
      v38 = objc_msgSend_payload(recordCopy, v35, v36);
      v41 = objc_msgSend_length(v38, v39, v40);

      if (v41)
      {
        v43 = objc_msgSend_payload(recordCopy, v35, v42);
        LODWORD(v37) = objc_msgSend_length(v43, v44, v45);
      }

      else
      {
        LODWORD(v37) = 0;
      }
    }

    v97 = BYTE3(v37);
    objc_msgSend_appendBytes_length_(v4, v35, &v97, 1);
    v97 = BYTE2(v37);
    objc_msgSend_appendBytes_length_(v4, v47, &v97, 1);
    v97 = BYTE1(v37);
    objc_msgSend_appendBytes_length_(v4, v48, &v97, 1);
    v97 = v37;
  }

  objc_msgSend_appendBytes_length_(v4, v24, &v97, 1);
  v51 = objc_msgSend_identifier(recordCopy, v49, v50);
  if (v51)
  {
    v54 = v51;
    v55 = objc_msgSend_identifier(recordCopy, v52, v53);
    v58 = objc_msgSend_length(v55, v56, v57);

    if (v58)
    {
      v59 = objc_msgSend_identifier(recordCopy, v52, v53);
      v97 = objc_msgSend_length(v59, v60, v61);

      objc_msgSend_appendBytes_length_(v4, v62, &v97, 1);
    }
  }

  v63 = objc_msgSend_type(recordCopy, v52, v53);
  if (v63)
  {
    v66 = v63;
    v67 = objc_msgSend_type(recordCopy, v64, v65);
    v70 = objc_msgSend_length(v67, v68, v69);

    if (v70)
    {
      v71 = objc_msgSend_type(recordCopy, v64, v65);
      objc_msgSend_appendData_(v4, v72, v71);
    }
  }

  v73 = objc_msgSend_identifier(recordCopy, v64, v65);
  if (v73)
  {
    v76 = v73;
    v77 = objc_msgSend_identifier(recordCopy, v74, v75);
    v80 = objc_msgSend_length(v77, v78, v79);

    if (v80)
    {
      v81 = objc_msgSend_identifier(recordCopy, v74, v75);
      objc_msgSend_appendData_(v4, v82, v81);
    }
  }

  v83 = objc_msgSend_payload(recordCopy, v74, v75);
  if (v83)
  {
    v86 = v83;
    v87 = objc_msgSend_payload(recordCopy, v84, v85);
    v90 = objc_msgSend_length(v87, v88, v89);

    if (v90)
    {
      v93 = objc_msgSend_payload(recordCopy, v91, v92);
      objc_msgSend_appendData_(v4, v94, v93);
    }
  }

LABEL_26:

  return v4;
}

@end