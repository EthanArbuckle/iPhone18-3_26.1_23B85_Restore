@interface TSPDigest
+ (id)digestFromDispatchData:(id)data;
+ (id)digestFromNSData:(id)data;
+ (id)digestFromReadChannel:(id)channel error:(id *)error;
+ (id)digestWithDigestString:(id)string;
+ (id)emptyDataDigest;
- (BOOL)isEqual:(id)equal;
- (NSString)digestString;
- (TSPDigest)init;
- (TSPDigest)initWithDigestString:(id)string;
- (id)anonymousIdentifierWithContext:(id)context;
- (id)anonymousIdentifierWithDocumentProperties:(id)properties passphrase:(id)passphrase;
- (id)description;
- (id)initFromBytes:(const void *)bytes length:(unsigned int)length;
- (id)initFromDispatchData:(id)data;
- (id)initFromNSData:(id)data;
- (id)initFromProtobufString:(const void *)string;
- (id)initFromReadChannel:(id)channel scanForOSLikeCorruption:(BOOL)corruption foundLikelyOSCorruption:(BOOL *)sCorruption foundLikelyZeroBytesCorruption:(BOOL *)bytesCorruption error:(id *)error;
- (id)initFromSHA1Context:(CC_SHA1state_st *)context;
- (int64_t)compare:(id)compare;
@end

@implementation TSPDigest

- (TSPDigest)init
{
  v3.receiver = self;
  v3.super_class = TSPDigest;
  result = [(TSPDigest *)&v3 init];
  if (result)
  {
    *result->_digestData.__elems_ = 0;
    *&result->_digestData.__elems_[8] = 0;
    *&result->_digestData.__elems_[16] = 0;
  }

  return result;
}

+ (id)emptyDataDigest
{
  if (qword_280A52418 != -1)
  {
    sub_276BD122C();
  }

  v3 = qword_280A52410;

  return v3;
}

+ (id)digestWithDigestString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithDigestString_(v4, v5, stringCopy);

  return v6;
}

- (TSPDigest)initWithDigestString:(id)string
{
  stringCopy = string;
  v18.receiver = self;
  v18.super_class = TSPDigest;
  v7 = [(TSPDigest *)&v18 init];
  if (v7)
  {
    if (objc_msgSend_length(stringCopy, v5, v6) == 40)
    {
      v8 = stringCopy;
      v11 = (objc_msgSend_UTF8String(v8, v9, v10) + 1);
      for (i = 8; i != 28; ++i)
      {
        v13 = *(v11 - 1);
        v14 = *v11;
        if (v13 > 96)
        {
          LOBYTE(v13) = v13 - 32;
        }

        v15 = v13;
        if (v14 > 96)
        {
          LOBYTE(v14) = v14 - 32;
        }

        if (v14 > 64)
        {
          LOBYTE(v14) = v14 + 9;
        }

        v16 = 16 * v13;
        if (v15 > 64)
        {
          v16 -= 112;
        }

        *(&v7->super.isa + i) = v16 & 0xF0 | v14 & 0xF;
        v11 += 2;
      }
    }

    else
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD1240();
      }

      v7 = 0;
    }
  }

  return v7;
}

+ (id)digestFromNSData:(id)data
{
  dataCopy = data;
  v5 = [self alloc];
  v7 = objc_msgSend_initFromNSData_(v5, v6, dataCopy);

  return v7;
}

+ (id)digestFromDispatchData:(id)data
{
  dataCopy = data;
  v5 = [self alloc];
  v7 = objc_msgSend_initFromDispatchData_(v5, v6, dataCopy);

  return v7;
}

+ (id)digestFromReadChannel:(id)channel error:(id *)error
{
  channelCopy = channel;
  v7 = [self alloc];
  Channel_scanForOSLikeCorruption_foundLikelyOSCorruption_foundLikelyZeroBytesCorruption_error = objc_msgSend_initFromReadChannel_scanForOSLikeCorruption_foundLikelyOSCorruption_foundLikelyZeroBytesCorruption_error_(v7, v8, channelCopy, 0, 0, 0, error);

  return Channel_scanForOSLikeCorruption_foundLikelyOSCorruption_foundLikelyZeroBytesCorruption_error;
}

- (id)initFromReadChannel:(id)channel scanForOSLikeCorruption:(BOOL)corruption foundLikelyOSCorruption:(BOOL *)sCorruption foundLikelyZeroBytesCorruption:(BOOL *)bytesCorruption error:(id *)error
{
  channelCopy = channel;
  v45.receiver = self;
  v45.super_class = TSPDigest;
  v13 = [(TSPDigest *)&v45 init];
  if (v13)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_2769B1604;
    v31 = sub_2769B1614;
    v32 = 0;
    CC_SHA1_Init(&c);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2769B161C;
    v24[3] = &unk_27A6E3080;
    v24[7] = &v27;
    v24[8] = &c;
    corruptionCopy = corruption;
    v24[4] = &v41;
    v24[5] = &v33;
    v24[6] = &v37;
    objc_msgSend_readWithHandlerAndWait_(channelCopy, v14, v24);
    objc_msgSend_close(channelCopy, v15, v16);
    if (v28[5])
    {

      v18 = 0;
    }

    else
    {
      v18 = objc_msgSend_initFromSHA1Context_(v13, v17, &c);
    }

    if (sCorruption)
    {
      *sCorruption = *(v42 + 24);
    }

    if (bytesCorruption)
    {
      v19 = v34[3];
      v20 = v19 != 0;
      v21 = (v19 & 0xFFFFFFFFFFF80000) != 0;
      if (*(v38 + 24))
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      *bytesCorruption = v22;
    }

    if (*error)
    {
      *error = v28[5];
    }

    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSString)digestString
{
  v4 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], a2, 20);
  for (i = 8; i != 28; ++i)
  {
    objc_msgSend_appendFormat_(v4, v3, @"%02x", *(&self->super.isa + i));
  }

  v7 = objc_msgSend_copy(v4, v3, v6);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_digestData(equalCopy, v5, v6);
    v10 = *self->_digestData.__elems_ == *v7 && *&self->_digestData.__elems_[8] == *(v7 + 8) && *&self->_digestData.__elems_[16] == *(v7 + 16);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TSPDigest;
    v10 = [(TSPDigest *)&v12 isEqual:equalCopy];
  }

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v7 = objc_msgSend_digestData(compareCopy, v5, v6);
  objc_msgSend_digestData(compareCopy, v8, v9);
  v10 = 0;
  while (1)
  {
    v11 = self->_digestData.__elems_[v10];
    v12 = *(v7 + v10);
    if (v11 != v12)
    {
      break;
    }

    if (++v10 == 20)
    {
      v13 = 0;
      goto LABEL_8;
    }
  }

  if (v11 > v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

LABEL_8:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_digestString(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@ %p %@>", v5, self, v8);

  return v10;
}

- (id)initFromBytes:(const void *)bytes length:(unsigned int)length
{
  if (bytes)
  {
    v10.receiver = self;
    v10.super_class = TSPDigest;
    v6 = [(TSPDigest *)&v10 init];
    v7 = v6;
    if (v6)
    {
      CC_SHA1(bytes, length, v6->_digestData.__elems_);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initFromSHA1Context:(CC_SHA1state_st *)context
{
  selfCopy = context;
  if (context)
  {
    v7.receiver = self;
    v7.super_class = TSPDigest;
    v4 = [(TSPDigest *)&v7 init];
    v5 = v4;
    if (v4)
    {
      CC_SHA1_Final(v4->_digestData.__elems_, selfCopy);
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initFromNSData:(id)data
{
  dataCopy = data;
  CC_SHA1_Init(&c);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2769B1D90;
  v9[3] = &unk_27A6E30A0;
  v9[4] = &c;
  objc_msgSend_enumerateByteRangesUsingBlock_(dataCopy, v5, v9);
  v7 = objc_msgSend_initFromSHA1Context_(self, v6, &c);

  return v7;
}

- (id)initFromDispatchData:(id)data
{
  dataCopy = data;
  CC_SHA1_Init(&c);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = sub_2769B1E64;
  applier[3] = &unk_27A6E30C0;
  applier[4] = &c;
  dispatch_data_apply(dataCopy, applier);
  v6 = objc_msgSend_initFromSHA1Context_(self, v5, &c);

  return v6;
}

- (id)anonymousIdentifierWithDocumentProperties:(id)properties passphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v9 = objc_msgSend_hashPrivateUUIDWithDigest_(properties, v7, self);
  if (passphraseCopy)
  {
    v10 = objc_msgSend_tsu_UUIDWithNamespaceUUID_name_(MEMORY[0x277CCAD78], v8, v9, passphraseCopy);

    v9 = v10;
  }

  return v9;
}

- (id)anonymousIdentifierWithContext:(id)context
{
  contextCopy = context;
  v7 = contextCopy;
  if (contextCopy)
  {
    objc_msgSend_anonymousIdentifierForDigest_(contextCopy, v5, self);
  }

  else
  {
    objc_msgSend_UUID(MEMORY[0x277CCAD78], v5, v6);
  }
  v8 = ;

  return v8;
}

- (id)initFromProtobufString:(const void *)string
{
  v9.receiver = self;
  v9.super_class = TSPDigest;
  v4 = [(TSPDigest *)&v9 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = *(string + 23);
  if ((v6 & 0x80000000) == 0)
  {
    if (v6 != 20)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = *string;
    *(v4 + 6) = *(string + 4);
    *(v4 + 8) = v7;
    return v5;
  }

  if (*(string + 1) == 20)
  {
    string = *string;
    goto LABEL_7;
  }

LABEL_8:
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD1268();
  }

  return 0;
}

@end