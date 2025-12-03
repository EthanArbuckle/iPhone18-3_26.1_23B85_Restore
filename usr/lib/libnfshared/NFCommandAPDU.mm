@interface NFCommandAPDU
+ (id)appendExpectedLength:(unsigned __int16)length usingExtendedLength:(BOOL)extendedLength toAPDU:(id)u;
- (BOOL)isSecureMessaging;
- (NFCommandAPDU)initWithBytes:(const char *)bytes length:(unint64_t)length;
- (NFCommandAPDU)initWithData:(id)data uniformLengthCheck:(BOOL)check;
- (id)description;
@end

@implementation NFCommandAPDU

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = NFCommandAPDU;
  v4 = [(NFCommandAPDU *)&v11 description];
  v7 = objc_msgSend_NF_asHexString(self->_data, v5, v6);
  v9 = objc_msgSend_initWithFormat_(v3, v8, @"%@ { %@ }", v4, v7);

  return v9;
}

- (NFCommandAPDU)initWithBytes:(const char *)bytes length:(unint64_t)length
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytes_length_(v7, v8, bytes, length);
  v11 = objc_msgSend_initWithData_(self, v10, v9);

  return v11;
}

- (NFCommandAPDU)initWithData:(id)data uniformLengthCheck:(BOOL)check
{
  checkCopy = check;
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = NFCommandAPDU;
  v8 = [(NFCommandAPDU *)&v38 init];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = dataCopy;
  v12 = objc_msgSend_bytes(v9, v10, v11);
  v13 = dataCopy;
  v16 = objc_msgSend_bytes(v13, v14, v15);
  v19 = objc_msgSend_length(dataCopy, v17, v18);
  if (objc_msgSend_length(dataCopy, v20, v21) >= 4)
  {
    v23 = (v16 + v19);
    v8->_class = *v12;
    v8->_instruction = *(v12 + 1);
    v8->_p1 = *(v12 + 2);
    v24 = (v12 + 4);
    v8->_p2 = *(v12 + 3);
    if ((v12 + 4) == v23)
    {
      goto LABEL_36;
    }

    v25 = *v24;
    v26 = *v24 == 0;
    if (*v24)
    {
      v27 = (v12 + 5);
      v28 = *v24;
      goto LABEL_7;
    }

    v30 = v23 - v24;
    if (v30 == 1)
    {
      v26 = 0;
      v28 = 0;
      v27 = (v12 + 5);
      v29 = 1;
    }

    else
    {
      if (v30 <= 2)
      {
        goto LABEL_3;
      }

      v27 = (v12 + 7);
      v28 = __rev16(*(v12 + 5));
      if (v28)
      {
LABEL_7:
        v29 = v25 != 0;
        if (v23 - v27 >= v28)
        {
          v31 = dataCopy;
          v8->_payloadRange.location = &v27[-objc_msgSend_bytes(v31, v32, v33)];
          v8->_payloadRange.length = v28;
          objc_storeStrong(&v8->_data, data);
          v27 += v28;
        }

        else if (v23 - v27 > 0)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      v29 = 0;
      v26 = 1;
    }

LABEL_13:
    if (v27 == v23)
    {
      if (!v8->_data)
      {
        if (v26)
        {
          v35 = 0x10000;
        }

        else
        {
          v35 = 256;
        }

        if (v28)
        {
          v35 = v28;
        }

        v8->_lengthExpected = v35;
      }
    }

    else
    {
      if (v23 - v27 == 2)
      {
        if (v29 && checkCopy)
        {
          goto LABEL_3;
        }

        v36 = *v27;
        v8->_lengthExpected = v36 << 8;
        if (v27[1] | (v36 << 8))
        {
          v34 = v27[1] | (v36 << 8);
        }

        else
        {
          v34 = 0x10000;
        }
      }

      else
      {
        if (v23 - v27 != 1 || v26 && checkCopy)
        {
          goto LABEL_3;
        }

        v34 = *v27;
        if (!*v27)
        {
          v34 = 256;
        }
      }

      v8->_lengthExpected = v34;
      if (v8->_payloadRange.length && !v8->_data)
      {
        goto LABEL_3;
      }
    }

LABEL_36:
    v22 = v8;
    goto LABEL_37;
  }

LABEL_3:
  v22 = 0;
LABEL_37:

  return v22;
}

- (BOOL)isSecureMessaging
{
  v4 = objc_msgSend_clss(self, a2, v2);
  v7 = objc_msgSend_clss(self, v5, v6);
  if ((v4 & 0x40) != 0)
  {
    v8 = 32;
  }

  else
  {
    v8 = 12;
  }

  return (v8 & v7) != 0;
}

+ (id)appendExpectedLength:(unsigned __int16)length usingExtendedLength:(BOOL)extendedLength toAPDU:(id)u
{
  lengthCopy = length;
  v53 = *MEMORY[0x277D85DE8];
  uCopy = u;
  v11 = uCopy;
  if (lengthCopy < 0x100 || extendedLength)
  {
    if (extendedLength)
    {
      buf[0] = BYTE1(lengthCopy);
      objc_msgSend_appendBytes_length_(uCopy, v10, buf, 1);
    }

    buf[0] = lengthCopy;
    objc_msgSend_appendBytes_length_(v11, v10, buf, 1);
    v39 = 0;
  }

  else
  {
    v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v14 = *(&off_27DA9DE50 + specific);
    if (v14)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Expected length is too large.", v18, ClassName, Name, 299);
      v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v19 = dispatch_get_specific(v12);
    v20 = NFSharedLogGetLogger(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v46 = v22;
      v47 = 2082;
      v48 = object_getClassName(self);
      v49 = 2082;
      v50 = sel_getName(a2);
      v51 = 1024;
      v52 = 299;
      _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expected length is too large.", buf, 0x22u);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "nfcd");
    v43[0] = *MEMORY[0x277CCA450];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "Invalid Parameter");
    v44[0] = v27;
    v44[1] = &unk_2843B4C20;
    v43[1] = @"Line";
    v43[2] = @"Method";
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = sel_getName(a2);
    v31 = objc_msgSend_initWithFormat_(v28, v30, @"%s", v29);
    v44[2] = v31;
    v43[3] = *MEMORY[0x277CCA068];
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = sel_getName(a2);
    v35 = objc_msgSend_initWithFormat_(v32, v34, @"%s:%d", v33, 300);
    v44[3] = v35;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v44, v43, 4);
    v39 = objc_msgSend_initWithDomain_code_userInfo_(v23, v38, v25, 10, v37);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

@end