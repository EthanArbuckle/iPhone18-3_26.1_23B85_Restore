@interface TSDCapabilities
+ (TSDCapabilities)currentCapabilities;
- (BOOL)hasHEVCHardwareEncoding;
- (CGSize)maximumHardcodedTextureSize;
- (CGSize)maximumImageSize;
- (TSDCapabilities)init;
- (unint64_t)physicalMemory;
@end

@implementation TSDCapabilities

- (TSDCapabilities)init
{
  v12.receiver = self;
  v12.super_class = TSDCapabilities;
  v2 = [(TSDCapabilities *)&v12 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2766E3A5C;
    block[3] = &unk_27A6CC658;
    v6 = v2;
    v11 = v6;
    if (qword_280A4C370 != -1)
    {
      dispatch_once(&qword_280A4C370, block);
    }

    objc_msgSend_p_setupPlatform(v6, v4, v5);
    objc_msgSend_p_setupDevice(v6, v7, v8);
  }

  return v3;
}

+ (TSDCapabilities)currentCapabilities
{
  if (qword_280A4C388 != -1)
  {
    sub_276808DB8();
  }

  v3 = qword_280A4C390;

  return v3;
}

- (CGSize)maximumHardcodedTextureSize
{
  platform = self->_platform;
  if ((platform - 2) < 2)
  {
    v5 = 0x40C0000000000000;
    goto LABEL_6;
  }

  v4 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  if (!platform)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCapabilities maximumHardcodedTextureSize]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCapabilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 398, 0, "Unknown platform!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    goto LABEL_8;
  }

  if (platform == 1)
  {
    v5 = 0x40B0000000000000;
LABEL_6:
    v3 = *&v5;
    v4 = *&v5;
  }

LABEL_8:
  v13 = v4;
  v14 = v3;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)maximumImageSize
{
  v3 = *MEMORY[0x277CBF3A8];
  v2 = *(MEMORY[0x277CBF3A8] + 8);
  platform = self->_platform;
  if (platform > 1)
  {
    if (platform == 2)
    {
      v5 = 0x40D0000000000000;
      goto LABEL_10;
    }

    if (platform == 3)
    {
LABEL_7:
      v5 = 0x40C0000000000000;
LABEL_10:
      v2 = *&v5;
      v3 = *&v5;
    }
  }

  else
  {
    if (platform)
    {
      if (platform != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCapabilities maximumImageSize]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCapabilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 418, 0, "Unknown platform!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

LABEL_11:
  v13 = v3;
  v14 = v2;
  result.height = v14;
  result.width = v13;
  return result;
}

- (unint64_t)physicalMemory
{
  v3 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, v2);
  v6 = objc_msgSend_physicalMemory(v3, v4, v5);

  return v6;
}

- (BOOL)hasHEVCHardwareEncoding
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766E3E5C;
  block[3] = &unk_27A6CC658;
  block[4] = self;
  if (qword_280A4C3A0 != -1)
  {
    dispatch_once(&qword_280A4C3A0, block);
  }

  return byte_280A4C398;
}

@end