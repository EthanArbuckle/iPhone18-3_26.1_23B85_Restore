@interface MISOnlineAuthEntry
- (BOOL)isEqual:(id)equal;
- (MISOnlineAuthEntry)initWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period lastSuccessMonotonicTime:(int64_t)time lastSuccessResetCount:(int64_t)count isRejected:(BOOL)rejected isRejectedByWholeProfile:(BOOL)profile;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryDescription;
- (unint64_t)hash;
@end

@implementation MISOnlineAuthEntry

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v13 = objc_msgSend_profileUUID(self, v11, v12);
  objc_msgSend_setProfileUUID_(v10, v14, v13);

  v17 = objc_msgSend_cdHash(self, v15, v16);
  objc_msgSend_setCdHash_(v10, v18, v17);

  v21 = objc_msgSend_gracePeriod(self, v19, v20);
  objc_msgSend_setGracePeriod_(v10, v22, v21);
  SuccessMonotonicTime = objc_msgSend_lastSuccessMonotonicTime(self, v23, v24);
  objc_msgSend_setLastSuccessMonotonicTime_(v10, v26, SuccessMonotonicTime);
  SuccessResetCount = objc_msgSend_lastSuccessResetCount(self, v27, v28);
  objc_msgSend_setLastSuccessResetCount_(v10, v30, SuccessResetCount);
  isRejected = objc_msgSend_isRejected(self, v31, v32);
  objc_msgSend_setIsRejected_(v10, v34, isRejected);
  isRejectedByWholeProfile = objc_msgSend_isRejectedByWholeProfile(self, v35, v36);
  objc_msgSend_setIsRejectedByWholeProfile_(v10, v38, isRejectedByWholeProfile);
  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_profileUUID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_cdHash(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) + v7;
  v16 = v13 + objc_msgSend_gracePeriod(self, v14, v15);
  SuccessMonotonicTime = objc_msgSend_lastSuccessMonotonicTime(self, v17, v18);
  v22 = v16 + SuccessMonotonicTime + objc_msgSend_lastSuccessResetCount(self, v20, v21);
  v25 = v22 + objc_msgSend_isRejected(self, v23, v24);
  v28 = v25 + objc_msgSend_isRejectedByWholeProfile(self, v26, v27);

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v8 = objc_msgSend_profileUUID(self, v6, v7);
    v11 = objc_msgSend_profileUUID(v5, v9, v10);
    if (objc_msgSend_isEqual_(v8, v12, v11))
    {
      v15 = objc_msgSend_cdHash(self, v13, v14);
      v18 = objc_msgSend_cdHash(v5, v16, v17);
      if (objc_msgSend_isEqual_(v15, v19, v18) && (v22 = objc_msgSend_gracePeriod(self, v20, v21), v22 == objc_msgSend_gracePeriod(v5, v23, v24)) && (SuccessMonotonicTime = objc_msgSend_lastSuccessMonotonicTime(self, v25, v26), SuccessMonotonicTime == objc_msgSend_lastSuccessMonotonicTime(v5, v28, v29)) && (SuccessResetCount = objc_msgSend_lastSuccessResetCount(self, v30, v31), SuccessResetCount == objc_msgSend_lastSuccessResetCount(v5, v33, v34)) && (isRejected = objc_msgSend_isRejected(self, v35, v36), isRejected == objc_msgSend_isRejected(v5, v38, v39)))
      {
        isRejectedByWholeProfile = objc_msgSend_isRejectedByWholeProfile(self, v40, v41);
        v42 = isRejectedByWholeProfile ^ objc_msgSend_isRejectedByWholeProfile(v5, v45, v46) ^ 1;
      }

      else
      {
        LOBYTE(v42) = 0;
      }
    }

    else
    {
      LOBYTE(v42) = 0;
    }
  }

  else
  {
    LOBYTE(v42) = 0;
  }

  return v42;
}

- (id)dictionaryDescription
{
  v21[7] = *MEMORY[0x1E69E9840];
  profileUUID = self->_profileUUID;
  cdHash = self->_cdHash;
  v21[0] = profileUUID;
  v20[0] = @"profileUUID";
  v20[1] = @"cdHash";
  v5 = sub_1B9D989C4(cdHash);
  v21[1] = v5;
  v20[2] = @"gracePeriod";
  v7 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, self->_gracePeriod);
  v21[2] = v7;
  v20[3] = @"lastSuccessMonotonicTime";
  v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, self->_lastSuccessMonotonicTime);
  v21[3] = v9;
  v20[4] = @"lastSuccessResetCount";
  v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v10, self->_lastSuccessResetCount);
  v21[4] = v11;
  v20[5] = @"isRejected";
  v13 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v12, self->_isRejected);
  v21[5] = v13;
  v20[6] = @"isRejectedByWholeProfile";
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, self->_isRejectedByWholeProfile);
  v21[6] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v21, v20, 7);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (MISOnlineAuthEntry)initWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period lastSuccessMonotonicTime:(int64_t)time lastSuccessResetCount:(int64_t)count isRejected:(BOOL)rejected isRejectedByWholeProfile:(BOOL)profile
{
  dCopy = d;
  hashCopy = hash;
  v21.receiver = self;
  v21.super_class = MISOnlineAuthEntry;
  v18 = [(MISOnlineAuthEntry *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_profileUUID, d);
    objc_storeStrong(&v19->_cdHash, hash);
    v19->_gracePeriod = period;
    v19->_lastSuccessMonotonicTime = time;
    v19->_lastSuccessResetCount = count;
    v19->_isRejected = rejected;
    v19->_isRejectedByWholeProfile = profile;
  }

  return v19;
}

@end