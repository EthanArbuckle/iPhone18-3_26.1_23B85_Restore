@interface TSDMovieFingerprint
- (BOOL)isEqual:(id)a3;
- (TSDMovieFingerprint)initWithTracks:(id)a3 version:(unint64_t)a4;
- (id)description;
- (id)initFromMessage:(const void *)a3 unarchiver:(id)a4;
- (unint64_t)version;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSDMovieFingerprint

- (TSDMovieFingerprint)initWithTracks:(id)a3 version:(unint64_t)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TSDMovieFingerprint;
  v8 = [(TSDMovieFingerprint *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(v5, v6, v7);
    tracks = v8->_tracks;
    v8->_tracks = v9;

    UnsafePointer();
    v8->_versionMajor = 0;
    v8->_versionMinor = 0;
    v8->_versionPatch = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      UnsafePointer();
      objc_msgSend_version(self, v6, v7);
      UnsafePointer();
      objc_msgSend_version(v5, v8, v9);
      UnsafePointer();
      v12 = objc_msgSend_tracks(self, v10, v11);
      v15 = objc_msgSend_tracks(v5, v13, v14);
      isEqual = objc_msgSend_isEqual_(v12, v16, v15);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = objc_msgSend_tracks(self, v6, v7);
  objc_msgSend_addField_format_(v5, v9, @"tracks", @"%@", v8);

  objc_msgSend_version(self, v10, v11);
  v12 = NSStringFromTSPVersion();
  objc_msgSend_addField_value_(v5, v13, @"version", v12);

  v16 = objc_msgSend_descriptionString(v5, v14, v15);

  return v16;
}

- (unint64_t)version
{
  versionMajor = self->_versionMajor;
  if (versionMajor >= 0x10000)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieFingerprint version]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 111, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v4 = 0xFFFF000000000000;
  }

  else if ((versionMajor & 0x80000000) != 0)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieFingerprint version]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 111, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    v4 = 0;
  }

  else
  {
    v4 = versionMajor << 48;
  }

  versionMinor = self->_versionMinor;
  if (versionMinor >= 0x10000)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieFingerprint version]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 112, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v6 = 0xFFFF00000000;
  }

  else if ((versionMinor & 0x80000000) != 0)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieFingerprint version]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 112, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
    v6 = 0;
  }

  else
  {
    v6 = versionMinor << 32;
  }

  versionPatch = self->_versionPatch;
  if ((versionPatch & 0x80000000) != 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieFingerprint version]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 113, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    versionPatch = 0;
  }

  return v6 | v4 | versionPatch;
}

- (id)initFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v45.receiver = self;
  v45.super_class = TSDMovieFingerprint;
  v43 = v6;
  v7 = [(TSDMovieFingerprint *)&v45 init];
  v8 = v7;
  if (v7)
  {
    v9 = *(a3 + 6);
    v41 = v7;
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v44 = objc_msgSend_initWithCapacity_(v10, v11, v9);
    v14 = 1;
    if (v9 >= 1)
    {
      v15 = 8;
      do
      {
        v16 = [TSDMovieFingerprintTrack alloc];
        v19 = objc_msgSend_initFromMessage_unarchiver_(v16, v17, *(*(a3 + 4) + v15), v6);
        if (v19)
        {
          objc_msgSend_addObject_(v44, v18, v19);
        }

        else
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDMovieFingerprint initFromMessage:unarchiver:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 135, 0, "Failed to unarchive a track.");

          v6 = v43;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
          v14 = 0;
        }

        v15 += 8;
        --v9;
      }

      while (v9);
    }

    v27 = objc_msgSend_copy(v44, v12, v13, v41);
    v8 = v42;
    tracks = v42->_tracks;
    v42->_tracks = v27;

    v29 = objc_alloc(MEMORY[0x277D80898]);
    v31 = objc_msgSend_initWithVersionMessage_(v29, v30, a3 + 40);
    if (UnsafePointer())
    {
      if (v14)
      {
        UnsafePointer();
        v42->_versionMajor = 0xFFFF;
        v42->_versionMinor = 0;
LABEL_13:
        v42->_versionPatch = 0;

        v6 = v43;
        goto LABEL_14;
      }
    }

    else
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSDMovieFingerprint initFromMessage:unarchiver:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMovieFingerprint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 143, 0, "Unarchiving a fingerprint without a version");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    }

    v42->_versionMajor = 0xFFFF;
    v42->_versionMinor = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = self->_tracks;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = *(a3 + 4);
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = *(a3 + 6);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(a3 + 6) = v15 + 1;
          objc_msgSend_saveToMessage_archiver_(v13, v9, *&v14[2 * v15 + 2], v6, v26);
          goto LABEL_13;
        }

        if (v16 == *(a3 + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
          v14 = *(a3 + 4);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieFingerprintTrack>(*(a3 + 2));
        v18 = *(a3 + 6);
        v19 = *(a3 + 4) + 8 * v18;
        *(a3 + 6) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_saveToMessage_archiver_(v13, v20, v17, v6, v26);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v26, v30, 16);
    }

    while (v10);
  }

  v21 = objc_alloc(MEMORY[0x277D80890]);
  v23 = objc_msgSend_initWithVersionMessage_(v21, v22, a3 + 40);
  objc_msgSend_version(self, v24, v25);
  UnsafePointer();
}

@end