@interface KNLiveVideoCaptureDeviceDescription
- (BOOL)isEqual:(id)a3;
- (CGSize)defaultVideoResolution;
- (KNLiveVideoCaptureDeviceDescription)initWithIdentifier:(id)a3 defaultVideoResolution:(CGSize)a4;
- (KNLiveVideoCaptureDeviceDescription)initWithMessage:(const void *)a3 unarchiver:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNLiveVideoCaptureDeviceDescription

- (KNLiveVideoCaptureDeviceDescription)initWithIdentifier:(id)a3 defaultVideoResolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = KNLiveVideoCaptureDeviceDescription;
  v10 = [(KNLiveVideoCaptureDeviceDescription *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v7, v8, v9);
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_defaultVideoResolution.width = width;
    v10->_defaultVideoResolution.height = height;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  identifier = self->_identifier;
  v6 = NSStringFromCGSize(self->_defaultVideoResolution);
  v8 = objc_msgSend_initWithFormat_(v3, v7, @"<%@ %p: identifier=%@, defaultVideoResolution=%@>", v4, self, identifier, v6);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v6 = v5;
    v13 = v5 && ((v7 = *(v5 + 8), v8 = self->_identifier, v9 = v7, !(v8 | v9)) || (v11 = v9, isEqual = objc_msgSend_isEqual_(v8, v10, v9), v11, v8, isEqual)) && self->_defaultVideoResolution.height == v6[3] && self->_defaultVideoResolution.width == v6[2];
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addObject_(v3, v4, self->_identifier);
  defaultVideoResolution = self->_defaultVideoResolution;
  v6 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, &defaultVideoResolution, "{CGSize=dd}");
  objc_msgSend_addObject_(v3, v7, v6);

  v10 = objc_msgSend_hashValue(v3, v8, v9);
  return v10;
}

- (KNLiveVideoCaptureDeviceDescription)initWithMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v72.receiver = self;
  v72.super_class = KNLiveVideoCaptureDeviceDescription;
  v8 = [(KNLiveVideoCaptureDeviceDescription *)&v72 init];
  if (!v8)
  {
    goto LABEL_22;
  }

  v71 = v6;
  if (*(a3 + 16))
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_msgSend_tsp_initWithProtobufString_(v18, v19, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v17 = &stru_2884D8E20;
  }

  if ((*(a3 + 16) & 8) != 0)
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_tsp_initWithProtobufString_(v29, v30, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    v28 = &stru_2884D8E20;
  }

  v31 = *(a3 + 4);
  if ((v31 & 0x20) != 0)
  {
    v44 = *(a3 + 16);
    if (v44 == 2)
    {
      v39 = 2;
    }

    else
    {
      v39 = v44 == 1;
    }

    if ((v31 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    v43 = &stru_2884D8E20;
    goto LABEL_16;
  }

  v32 = MEMORY[0x277D81150];
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]");
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  v39 = 0;
  if ((*(a3 + 4) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v40 = objc_alloc(MEMORY[0x277CCACA8]);
  v43 = objc_msgSend_tsp_initWithProtobufString_(v40, v41, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
LABEL_16:
  if ((*(a3 + 16) & 4) != 0)
  {
    v60 = objc_alloc(MEMORY[0x277CCACA8]);
    v59 = objc_msgSend_tsp_initWithProtobufString_(v60, v61, *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[KNLiveVideoCaptureDeviceDescription initWithMessage:unarchiver:]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoCaptureDeviceDescription.mm");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
    v59 = &stru_2884D8E20;
  }

  v62 = *(a3 + 4);
  v63 = *(a3 + 68);
  v64 = [KNLiveVideoCaptureDeviceIdentifier alloc];
  isIOSScreenRecordingDevice = objc_msgSend_initWithUniqueID_modelID_underlyingPosition_underlyingDeviceType_localizedName_isIOSScreenRecordingDevice_(v64, v65, v17, v28, v39, v43, v59, *&v63 & ((v62 & 0x40) >> 6));
  identifier = v8->_identifier;
  v8->_identifier = isIOSScreenRecordingDevice;

  if ((*(a3 + 16) & 0x10) != 0)
  {
    TSPCGSizeCreateFromMessage(*(a3 + 7));
    v8->_defaultVideoResolution.width = v68;
    v8->_defaultVideoResolution.height = v69;
  }

  v6 = v71;
LABEL_22:

  return v8;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v8 = a4;
  identifier = self->_identifier;
  if (identifier)
  {
    v10 = objc_msgSend_uniqueID(identifier, v6, v7);
    v13 = objc_msgSend_tsp_protobufString(v10, v11, v12);
    *(a3 + 4) |= 1u;
    sub_275D55B98(__p, v13);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = objc_msgSend_modelID(self->_identifier, v14, v15);
    v19 = objc_msgSend_tsp_protobufString(v16, v17, v18);
    *(a3 + 4) |= 8u;
    sub_275D55B98(__p, v19);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = objc_msgSend_underlyingPosition(self->_identifier, v20, v21);
    if (v22 == 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v22 == 1;
    }

    *(a3 + 4) |= 0x20u;
    *(a3 + 16) = v25;
    v26 = objc_msgSend_underlyingDeviceType(self->_identifier, v23, v24);
    v29 = objc_msgSend_tsp_protobufString(v26, v27, v28);
    *(a3 + 4) |= 2u;
    sub_275D55B98(__p, v29);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    v32 = objc_msgSend_localizedName(self->_identifier, v30, v31);
    v35 = objc_msgSend_tsp_protobufString(v32, v33, v34);
    *(a3 + 4) |= 4u;
    sub_275D55B98(__p, v35);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    isIOSScreenRecordingDevice = objc_msgSend_isIOSScreenRecordingDevice(self->_identifier, v36, v37);
    v39 = *(a3 + 4) | 0x40;
    *(a3 + 4) = v39;
    *(a3 + 68) = isIOSScreenRecordingDevice;
  }

  else
  {
    v39 = *(a3 + 4);
  }

  width = self->_defaultVideoResolution.width;
  height = self->_defaultVideoResolution.height;
  *(a3 + 4) = v39 | 0x10;
  v42 = *(a3 + 7);
  if (!v42)
  {
    v43 = *(a3 + 1);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C8EFF0](v43);
    *(a3 + 7) = v42;
  }

  v46.width = width;
  v46.height = height;
  TSPCGSizeCopyToMessage(v46, v42);
}

- (CGSize)defaultVideoResolution
{
  width = self->_defaultVideoResolution.width;
  height = self->_defaultVideoResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end