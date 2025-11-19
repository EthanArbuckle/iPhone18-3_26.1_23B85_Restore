@interface TSATemporaryDocumentSupportManager
+ (id)baseDirectoryURL;
+ (id)sharedManager;
- (id)newDirectoryForDocumentUUID:(id)a3;
@end

@implementation TSATemporaryDocumentSupportManager

+ (id)baseDirectoryURL
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2, v3);
  v12 = 0;
  v6 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v4, v5, 14, 1, 0, 1, &v12);
  v7 = v12;

  if (!v6)
  {
    sub_27610F0F0(v7);
  }

  v10 = objc_msgSend_URLByAppendingPathComponent_(v6, v8, @"DocumentSupport", v9);

  return v10;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27610A324;
  block[3] = &unk_27A6B0F50;
  block[4] = a1;
  if (qword_280A428D8 != -1)
  {
    dispatch_once(&qword_280A428D8, block);
  }

  v2 = qword_280A428D0;

  return v2;
}

- (id)newDirectoryForDocumentUUID:(id)a3
{
  v5 = objc_msgSend_UUIDString(a3, a2, a3, v3);
  v8 = objc_msgSend_newDirectoryWithFilename_(self, v6, v5, v7);

  return v8;
}

@end