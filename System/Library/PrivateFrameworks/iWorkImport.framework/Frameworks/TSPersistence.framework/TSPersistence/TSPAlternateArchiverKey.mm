@interface TSPAlternateArchiverKey
- (BOOL)isEqual:(id)equal;
- (TSPAlternateArchiverKey)init;
- (TSPAlternateArchiverKey)initWithVersion:(unint64_t)version fieldPath:(const void *)path;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSPAlternateArchiverKey

- (TSPAlternateArchiverKey)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPAlternateArchiverKey init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 638, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPAlternateArchiverKey init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPAlternateArchiverKey)initWithVersion:(unint64_t)version fieldPath:(const void *)path
{
  v7.receiver = self;
  v7.super_class = TSPAlternateArchiverKey;
  result = [(TSPAlternateArchiverKey *)&v7 init];
  if (result)
  {
    result->_version = version;
    if (path)
    {
      operator new();
    }
  }

  return result;
}

- (void)dealloc
{
  fieldPath = self->_fieldPath;
  if (fieldPath)
  {
    v4 = sub_2769E22E8(fieldPath);
    MEMORY[0x277C9F670](v4, 0x1081C40B6D36AFBLL);
  }

  v5.receiver = self;
  v5.super_class = TSPAlternateArchiverKey;
  [(TSPAlternateArchiverKey *)&v5 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = v5;
  if (!v5 || (version = self->_version, version != objc_msgSend_version(v5, v6, v7)))
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  fieldPath = self->_fieldPath;
  v13 = objc_msgSend_fieldPath(v8, v10, v11);
  if (fieldPath == v13)
  {
    v14 = 1;
    goto LABEL_15;
  }

  v14 = 0;
  if (fieldPath && v13)
  {
    v15 = fieldPath[4];
    v16 = *(v13 + 16);
    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (v17 >= 1)
    {
      v18 = *(fieldPath + 3);
      v19 = *(v13 + 24);
      do
      {
        v21 = *v18++;
        v20 = v21;
        v22 = *v19++;
        if (v20 != v22)
        {
          goto LABEL_14;
        }
      }

      while (--v17);
    }

    v14 = v15 == v16;
  }

LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  fieldPath = self->_fieldPath;
  if (fieldPath)
  {
    v3 = *MEMORY[0x277D81450];
    v4 = *(fieldPath + 4);
    if (v4 >= 1)
    {
      v5 = fieldPath[3];
      do
      {
        v6 = *v5++;
        v3 = (*MEMORY[0x277D810E8] * v3) ^ v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ self->_version;
}

@end