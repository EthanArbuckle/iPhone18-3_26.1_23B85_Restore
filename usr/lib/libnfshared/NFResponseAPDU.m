@interface NFResponseAPDU
+ (id)responseWithData:(id)a3;
- (NFResponseAPDU)initWithData:(id)a3;
- (NSData)response;
- (unsigned)decodeUnderlyingAppletError:(id *)a3;
@end

@implementation NFResponseAPDU

+ (id)responseWithData:(id)a3
{
  v3 = a3;
  v4 = [NFResponseAPDU alloc];
  v6 = objc_msgSend_initWithData_(v4, v5, v3);

  return v6;
}

- (NFResponseAPDU)initWithData:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NFResponseAPDU;
  v7 = [(NFResponseAPDU *)&v20 init];
  if (v7)
  {
    v19 = 0;
    v8 = objc_msgSend_length(v4, v5, v6);
    if ((v8 & 0xFFFFFFFE) != 0)
    {
      v10 = v8;
      objc_msgSend_getBytes_range_(v4, v9, &v19 + 1, (v8 - 2), 1);
      objc_msgSend_getBytes_range_(v4, v11, &v19, (v10 - 1), 1);
      v7->_status = v19 | (HIBYTE(v19) << 8);
      v12 = objc_opt_class();
      if (objc_msgSend_isMemberOfClass_(v4, v13, v12))
      {
        v16 = v4;
      }

      else
      {
        v16 = objc_msgSend_copy(v4, v14, v15);
      }

      data = v7->_data;
      v7->_data = v16;
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (NSData)response
{
  data = self->_data;
  v5 = objc_msgSend_length(data, a2, v2) - 2;

  return objc_msgSend_subdataWithRange_(data, v4, 0, v5);
}

- (unsigned)decodeUnderlyingAppletError:(id *)a3
{
  v53 = *MEMORY[0x277D85DE8];
  status = self->_status;
  v41 = 0;
  if (objc_msgSend_length(self->_data, a2, a3) >= 9 && (self->_status & 0xFFF0) == 0x69F0)
  {
    v42 = 0;
    data = self->_data;
    v10 = objc_msgSend_length(data, v7, v8);
    objc_msgSend_getBytes_range_(data, v11, &v42 + 1, v10 - 4, 1);
    v12 = self->_data;
    v15 = objc_msgSend_length(v12, v13, v14);
    objc_msgSend_getBytes_range_(v12, v16, &v42, v15 - 3, 1);
    status = v42 | (HIBYTE(v42) << 8);
    objc_msgSend_getBytes_range_(self->_data, v17, &v41, 0, 1);
    if (v41 - 4 > 0xC || (v20 = v41 + 5, objc_msgSend_length(self->_data, v18, v19) != v20))
    {
      v25 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific >= 5)
      {
        __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
      }

      v27 = *(&off_27DA9DE50 + specific);
      if (v27)
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

        v27(3, "%c[%{public}s %{public}s]:%i Invalid extended response length : %{public}@", v32, ClassName, Name, 73, self->_data);
        v25 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v33 = dispatch_get_specific(v25);
      v22 = NFSharedLogGetLogger(v33);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v34 = object_getClass(self);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(self);
        v37 = sel_getName(a2);
        v38 = self->_data;
        *buf = 67110146;
        v44 = v35;
        v45 = 2082;
        v46 = v36;
        v47 = 2082;
        v48 = v37;
        v49 = 1024;
        v50 = 73;
        v51 = 2114;
        v52 = v38;
        _os_log_impl(&dword_22EEC4000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid extended response length : %{public}@", buf, 0x2Cu);
      }

      goto LABEL_17;
    }

    if (a3)
    {
      v22 = objc_msgSend_subdataWithRange_(self->_data, v21, 1, v41);
      *a3 = objc_msgSend_NF_asHexString(v22, v23, v24);
LABEL_17:
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return status;
}

@end