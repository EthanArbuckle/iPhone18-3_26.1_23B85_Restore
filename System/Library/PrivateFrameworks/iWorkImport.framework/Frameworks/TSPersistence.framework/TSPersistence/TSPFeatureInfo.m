@interface TSPFeatureInfo
- (BOOL)isEqual:(id)a3;
- (TSPFeatureInfo)init;
- (TSPFeatureInfo)initWithIdentifier:(id)a3 readVersion:(unint64_t)a4 writeVersion:(unint64_t)a5 validatingValues:(BOOL)a6;
- (unint64_t)hash;
@end

@implementation TSPFeatureInfo

- (TSPFeatureInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPFeatureInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFeature.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 15, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPFeatureInfo init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPFeatureInfo)initWithIdentifier:(id)a3 readVersion:(unint64_t)a4 writeVersion:(unint64_t)a5 validatingValues:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  if (v11 && v6 && (objc_msgSend_validateFeatureIdentifier_(TSPFeatureLocalization, v10, v11) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPFeatureInfo initWithIdentifier:readVersion:writeVersion:validatingValues:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFeature.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 19, 0, "You should declare the feature identifier %{public}@ and its associated localization in +[TSPFeatureLocalization localizationForFeatureIdentifiers].", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v28.receiver = self;
  v28.super_class = TSPFeatureInfo;
  v22 = [(TSPFeatureInfo *)&v28 init];
  if (v22)
  {
    v23 = objc_msgSend_copy(v11, v20, v21);
    identifier = v22->_identifier;
    v22->_identifier = v23;

    if (v6)
    {
      v25 = UnsafePointer();
      if (v25 >= a4)
      {
        v26 = a4;
      }

      else
      {
        v26 = v25;
      }

      v22->_readVersion = v26;
      if (v25 < a5)
      {
        a5 = v25;
      }
    }

    else
    {
      v22->_readVersion = a4;
    }

    v22->_writeVersion = a5;
  }

  return v22;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, self->_readVersion);
  v9 = objc_msgSend_hash(v6, v7, v8) ^ v4;
  v11 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v10, self->_writeVersion);
  v14 = objc_msgSend_hash(v11, v12, v13);

  return v9 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    identifier = self->_identifier;
    v11 = objc_msgSend_identifier(v5, v6, v7);
    if ((!(identifier | v11) || objc_msgSend_isEqual_(identifier, v9, v11)) && (readVersion = self->_readVersion, readVersion == objc_msgSend_readVersion(v5, v9, v10)))
    {
      writeVersion = self->_writeVersion;
      v16 = writeVersion == objc_msgSend_writeVersion(v5, v13, v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end