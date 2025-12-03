@interface TSDMovieFingerprintTrack
- ($0C747A0EC5E1CE89BE29BCC520292607)timeRange;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)preferredTransform;
- (CGSize)naturalSize;
- (NSString)extendedLanguageTag;
- (NSString)languageCode;
- (TSDMovieFingerprintTrack)initWithMediaType:(id)type enabled:(BOOL)enabled totalSampleDataLength:(int64_t)length sampleDataDigest:(id)digest timeRange:(id *)range languageCode:(id)code extendedLanguageTag:(id)tag naturalSize:(CGSize)self0 preferredTransform:(CGAffineTransform *)self1 preferredVolume:(float)self2;
- (TSPDigest)sampleDataDigest;
- (id)description;
- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (unint64_t)hash;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSDMovieFingerprintTrack

- (TSDMovieFingerprintTrack)initWithMediaType:(id)type enabled:(BOOL)enabled totalSampleDataLength:(int64_t)length sampleDataDigest:(id)digest timeRange:(id *)range languageCode:(id)code extendedLanguageTag:(id)tag naturalSize:(CGSize)self0 preferredTransform:(CGAffineTransform *)self1 preferredVolume:(float)self2
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  digestCopy = digest;
  codeCopy = code;
  tagCopy = tag;
  v44.receiver = self;
  v44.super_class = TSDMovieFingerprintTrack;
  v27 = [(TSDMovieFingerprintTrack *)&v44 init];
  if (v27)
  {
    v28 = objc_msgSend_copy(typeCopy, v25, v26);
    v29 = *(v27 + 1);
    *(v27 + 1) = v28;

    v27[16] = enabled;
    *(v27 + 3) = length;
    v32 = objc_msgSend_digestString(digestCopy, v30, v31);
    v35 = objc_msgSend_copy(v32, v33, v34);
    v36 = *(v27 + 4);
    *(v27 + 4) = v35;

    if ((range->var0.var2 & 0x1D) == 1)
    {
      *(v27 + 5) = range->var0.var0;
      *(v27 + 12) = range->var0.var1;
      v27[52] = 1;
    }

    if ((range->var1.var2 & 0x1D) == 1)
    {
      *(v27 + 7) = range->var1.var0;
      *(v27 + 16) = range->var1.var1;
      v27[68] = 1;
    }

    *(v27 + 9) = width;
    *(v27 + 10) = height;
    *(v27 + 88) = *transform;
    *(v27 + 17) = volume;
    if (codeCopy)
    {
      v39 = objc_msgSend_copy(codeCopy, v37, v38);
      v40 = *(v27 + 18);
      *(v27 + 18) = v39;

      v27[160] = 1;
    }

    if (tagCopy)
    {
      v41 = objc_msgSend_copy(tagCopy, v37, v38);
      v42 = *(v27 + 19);
      *(v27 + 19) = v41;

      v27[161] = 1;
    }
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (!v7)
    {
      v55 = 0;
      goto LABEL_18;
    }

    v8 = objc_msgSend_mediaType(self, v5, v6);
    v11 = objc_msgSend_mediaType(v7, v9, v10);
    if (!objc_msgSend_isEqual_(v8, v12, v11) || (isEnabled = objc_msgSend_isEnabled(self, v13, v14), isEnabled != objc_msgSend_isEnabled(v7, v16, v17)) || (v20 = objc_msgSend_totalSampleDataLength(self, v18, v19), v20 != objc_msgSend_totalSampleDataLength(v7, v21, v22)))
    {
      v55 = 0;
LABEL_16:

LABEL_18:
      goto LABEL_19;
    }

    v25 = objc_msgSend_sampleDataDigest(self, v23, v24);
    v28 = objc_msgSend_sampleDataDigest(v7, v26, v27);
    if (!objc_msgSend_isEqual_(v25, v29, v28) || (objc_msgSend_timeRange(self, v30, v31), objc_msgSend_timeRange(v7, v32, v33), !CMTimeRangeEqual(&range1, &range2)))
    {
      v55 = 0;
LABEL_25:

      goto LABEL_16;
    }

    v36 = objc_msgSend_languageCode(self, v34, v35);
    v39 = objc_msgSend_languageCode(v7, v37, v38);
    if (!sub_2767A1378(v36, v39))
    {
      v55 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v67 = objc_msgSend_extendedLanguageTag(self, v40, v41);
    v68 = objc_msgSend_extendedLanguageTag(v7, v42, v43);
    if (!sub_2767A1378(v67, v68))
    {
      goto LABEL_22;
    }

    objc_msgSend_naturalSize(self, v44, v45);
    v47 = v46;
    v49 = v48;
    objc_msgSend_naturalSize(v7, v50, v51);
    v55 = 0;
    if (v47 != v56 || v49 != v54)
    {
      goto LABEL_23;
    }

    objc_msgSend_preferredTransform(self, v52, v53);
    objc_msgSend_preferredTransform(v7, v57, v58);
    if (TSUNearlyEqualTransforms())
    {
      objc_msgSend_preferredVolume(self, v59, v60);
      v62 = v61;
      objc_msgSend_preferredVolume(v7, v63, v64);
      v55 = v62 == v65;
    }

    else
    {
LABEL_22:
      v55 = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  v55 = 1;
LABEL_19:

  return v55;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v6 = objc_msgSend_mediaType(self, v4, v5);
  objc_msgSend_addObject_(v3, v7, v6);

  isEnabled = objc_msgSend_isEnabled(self, v8, v9);
  objc_msgSend_addBool_(v3, v11, isEnabled);
  v14 = objc_msgSend_totalSampleDataLength(self, v12, v13);
  objc_msgSend_addUnsignedInteger_(v3, v15, v14);
  v18 = objc_msgSend_sampleDataDigest(self, v16, v17);
  objc_msgSend_addObject_(v3, v19, v18);

  v20 = MEMORY[0x277CCAE60];
  objc_msgSend_timeRange(self, v21, v22);
  v24 = objc_msgSend_valueWithCMTimeRange_(v20, v23, v58);
  objc_msgSend_addObject_(v3, v25, v24);

  v28 = objc_msgSend_languageCode(self, v26, v27);
  objc_msgSend_addObject_(v3, v29, v28);

  v32 = objc_msgSend_extendedLanguageTag(self, v30, v31);
  objc_msgSend_addObject_(v3, v33, v32);

  v34 = MEMORY[0x277CCAE60];
  objc_msgSend_naturalSize(self, v35, v36);
  v39 = objc_msgSend_valueWithCGSize_(v34, v37, v38);
  objc_msgSend_addObject_(v3, v40, v39);

  v41 = MEMORY[0x277CCAE60];
  objc_msgSend_preferredTransform(self, v42, v43);
  v45 = objc_msgSend_valueWithCGAffineTransform_(v41, v44, v58);
  objc_msgSend_addObject_(v3, v46, v45);

  v47 = MEMORY[0x277CCABB0];
  objc_msgSend_preferredVolume(self, v48, v49);
  v52 = objc_msgSend_numberWithFloat_(v47, v50, v51);
  objc_msgSend_addObject_(v3, v53, v52);

  v56 = objc_msgSend_hashValue(v3, v54, v55);
  return v56;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = objc_msgSend_mediaType(self, v6, v7);
  objc_msgSend_addField_value_(v5, v9, @"mediaType", v8);

  if (objc_msgSend_isEnabled(self, v10, v11))
  {
    objc_msgSend_addField_value_(v5, v12, @"enabled", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v5, v12, @"enabled", @"NO");
  }

  v15 = objc_msgSend_totalSampleDataLength(self, v13, v14);
  objc_msgSend_addField_format_(v5, v16, @"totalSampleDataLength", @"%lld", v15);
  v19 = objc_msgSend_sampleDataDigest(self, v17, v18);
  objc_msgSend_addField_format_(v5, v20, @"sampleDataDigest", @"%@", v19);

  objc_msgSend_timeRange(self, v21, v22);
  v23 = CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
  objc_msgSend_addField_format_(v5, v24, @"timeRange", @"%@", v23);

  v27 = objc_msgSend_languageCode(self, v25, v26);
  objc_msgSend_addField_format_(v5, v28, @"languageCode", @"%@", v27);

  v31 = objc_msgSend_extendedLanguageTag(self, v29, v30);
  objc_msgSend_addField_format_(v5, v32, @"extendedLanguageTag", @"%@", v31);

  objc_msgSend_naturalSize(self, v33, v34);
  v35 = NSStringFromCGSize(v51);
  objc_msgSend_addField_value_(v5, v36, @"naturalSize", v35);

  objc_msgSend_preferredTransform(self, v37, v38);
  v39 = NSStringFromCGAffineTransform(&range);
  objc_msgSend_addField_value_(v5, v40, @"preferredTransform", v39);

  objc_msgSend_preferredVolume(self, v41, v42);
  objc_msgSend_addField_format_(v5, v44, @"preferredVolume", @"%f", v43);
  v47 = objc_msgSend_descriptionString(v5, v45, v46);

  return v47;
}

- (TSPDigest)sampleDataDigest
{
  v3 = objc_alloc(MEMORY[0x277D80840]);
  v5 = objc_msgSend_initWithDigestString_(v3, v4, self->_sampleDataDigestString);

  return v5;
}

- ($0C747A0EC5E1CE89BE29BCC520292607)timeRange
{
  selfCopy = self;
  v5 = MEMORY[0x277CC08C8];
  v6 = *(MEMORY[0x277CC08C8] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *(v5 + 32);
  if (BYTE4(self[1].var0.var0) == 1)
  {
    self = CMTimeMake(retstr, self->var1.var3, self[1].var0.var0);
  }

  if (BYTE4(selfCopy[1].var0.var3) == 1)
  {
    self = CMTimeMake(&v7, *&selfCopy[1].var0.var1, selfCopy[1].var0.var3);
    retstr->var1 = v7;
  }

  return self;
}

- (NSString)languageCode
{
  if (self->_definedLanguageCode)
  {
    return self->_languageCode;
  }

  else
  {
    return 0;
  }
}

- (NSString)extendedLanguageTag
{
  if (self->_definedExtendedLanguageTag)
  {
    return self->_extendedLanguageTag;
  }

  else
  {
    return 0;
  }
}

- (CGAffineTransform)preferredTransform
{
  a = self[2].a;
  retstr->a = self[1].ty;
  retstr->b = a;
  c = self[2].c;
  retstr->c = self[2].b;
  retstr->d = c;
  tx = self[2].tx;
  retstr->tx = self[2].d;
  retstr->ty = tx;
  return self;
}

- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v91.receiver = self;
  v91.super_class = TSDMovieFingerprintTrack;
  v8 = [(TSDMovieFingerprintTrack *)&v91 init];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = *(message + 4);
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = objc_msgSend_tsp_initWithProtobufString_(v10, v11, *(message + 3) & 0xFFFFFFFFFFFFFFFELL);
    mediaType = v8->_mediaType;
    v8->_mediaType = v12;
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v22 = *(message + 4);
  if ((v22 & 0x100) == 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    v30 = 0;
    v22 = *(message + 4);
    if ((v22 & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
    v30 = 0;
    if ((*(message + 4) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v30 = v9 & 1;
  v8->_enabled = *(message + 84);
  if ((v22 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8->_totalSampleDataLength = *(message + 8);
  if ((v22 & 2) == 0)
  {
LABEL_8:
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    v30 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  v48 = objc_msgSend_tsp_initWithProtobufString_(v46, v47, *(message + 4) & 0xFFFFFFFFFFFFFFFELL);
  sampleDataDigestString = v8->_sampleDataDigestString;
  v8->_sampleDataDigestString = v48;

LABEL_12:
  if ((~*(message + 4) & 0x80EC0) != 0)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
    v30 = 0;
  }

  else
  {
    v8->_timeRangeStartValue = *(message + 9);
    v8->_timeRangeStartTimescale = *(message + 20);
    v8->_timeRangeStartIsValid = *(message + 85);
    v8->_timeRangeDurationValue = *(message + 11);
    v8->_timeRangeDurationTimescale = *(message + 38);
    v8->_timeRangeDurationIsValid = *(message + 86);
  }

  if ((*(message + 16) & 0x10) != 0)
  {
    TSPCGSizeCreateFromMessage(*(message + 7));
    v8->_naturalSize.width = v65;
    v8->_naturalSize.height = v66;
  }

  else
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
    v30 = 0;
  }

  v67 = *(message + 4);
  if ((~v67 & 0x3F000) != 0)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
    v30 = 0;
    v67 = *(message + 4);
    if ((v67 & 0x40000) == 0)
    {
LABEL_20:
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSDMovieFingerprintTrack initFromMessage:unarchiver:]");
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprintTrack.mm");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
      v30 = 0;
      v67 = *(message + 4);
      if ((v67 & 4) != 0)
      {
        goto LABEL_21;
      }

LABEL_26:
      if ((v67 & 8) != 0)
      {
LABEL_22:
        v79 = objc_alloc(MEMORY[0x277CCACA8]);
        v81 = objc_msgSend_tsp_initWithProtobufString_(v79, v80, *(message + 6) & 0xFFFFFFFFFFFFFFFELL);
        extendedLanguageTag = v8->_extendedLanguageTag;
        v8->_extendedLanguageTag = v81;

        v8->_definedExtendedLanguageTag = 1;
        if (v30)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v8->_preferredTransformA = *(message + 12);
    v8->_preferredTransformB = *(message + 13);
    v8->_preferredTransformC = *(message + 14);
    v8->_preferredTransformD = *(message + 15);
    v8->_preferredTransformTx = *(message + 16);
    v8->_preferredTransformTy = *(message + 17);
    if ((v67 & 0x40000) == 0)
    {
      goto LABEL_20;
    }
  }

  v8->_preferredVolume = *(message + 18);
  if ((v67 & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  v75 = objc_alloc(MEMORY[0x277CCACA8]);
  v77 = objc_msgSend_tsp_initWithProtobufString_(v75, v76, *(message + 5) & 0xFFFFFFFFFFFFFFFELL);
  languageCode = v8->_languageCode;
  v8->_languageCode = v77;

  v8->_definedLanguageCode = 1;
  if ((*(message + 4) & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_27:
  if ((v30 & 1) == 0)
  {
LABEL_28:

    v8 = 0;
  }

LABEL_29:

  return v8;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_tsp_protobufString(self->_mediaType, v7, v8);
  *(message + 4) |= 1u;
  sub_276658080(__p, v9);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(message + 4);
  *(message + 84) = self->_enabled;
  totalSampleDataLength = self->_totalSampleDataLength;
  *(message + 4) = v12 | 0x120;
  *(message + 8) = totalSampleDataLength;
  v14 = objc_msgSend_tsp_protobufString(self->_sampleDataDigestString, v10, v11);
  *(message + 4) |= 2u;
  sub_276658080(__p, v14);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  timeRangeStartValue = self->_timeRangeStartValue;
  v16 = *(message + 4);
  *(message + 4) = v16 | 0x40;
  *(message + 9) = timeRangeStartValue;
  *(message + 20) = self->_timeRangeStartTimescale;
  *(message + 85) = self->_timeRangeStartIsValid;
  timeRangeDurationValue = self->_timeRangeDurationValue;
  *(message + 4) = v16 | 0xAC0;
  *(message + 11) = timeRangeDurationValue;
  *(message + 38) = self->_timeRangeDurationTimescale;
  *(message + 86) = self->_timeRangeDurationIsValid;
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  *(message + 4) = v16 | 0x80ED0;
  v20 = *(message + 7);
  if (!v20)
  {
    v21 = *(message + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277C9BAD0](v21);
    *(message + 7) = v20;
  }

  v32.width = width;
  v32.height = height;
  TSPCGSizeCopyToMessage(v32, v20);
  *(message + 12) = *&self->_preferredTransformA;
  *(message + 13) = *&self->_preferredTransformB;
  *(message + 14) = *&self->_preferredTransformC;
  v24 = *(message + 4);
  *(message + 15) = *&self->_preferredTransformD;
  *(message + 16) = *&self->_preferredTransformTx;
  *(message + 17) = *&self->_preferredTransformTy;
  preferredVolume = self->_preferredVolume;
  *(message + 4) = v24 | 0x7F000;
  *(message + 18) = preferredVolume;
  if (self->_definedLanguageCode)
  {
    languageCode = self->_languageCode;
    if (languageCode)
    {
      v27 = objc_msgSend_tsp_protobufString(languageCode, v22, v23);
      *(message + 4) |= 4u;
      sub_276658080(__p, v27);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (self->_definedExtendedLanguageTag)
  {
    extendedLanguageTag = self->_extendedLanguageTag;
    if (extendedLanguageTag)
    {
      v29 = objc_msgSend_tsp_protobufString(extendedLanguageTag, v22, v23);
      *(message + 4) |= 8u;
      sub_276658080(__p, v29);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end