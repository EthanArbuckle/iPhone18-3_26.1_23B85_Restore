@interface TSWPImageBulletProvider
+ (id)sharedInstance;
- (id)dataForImageBullet:(id)a3 withContext:(id)a4;
- (id)p_pathToPredefinedImages;
- (id)p_predefinedImageNames;
- (id)predefinedImageFilenamesWithContext:(id)a3;
- (id)predefinedImagesWithContext:(id)a3;
@end

@implementation TSWPImageBulletProvider

+ (id)sharedInstance
{
  if (qword_280A58508 != -1)
  {
    sub_276F4F83C();
  }

  v3 = qword_280A58510;

  return v3;
}

- (id)predefinedImageFilenamesWithContext:(id)a3
{
  v4 = objc_msgSend_predefinedImagesWithContext_(self, a2, a3);
  filenames = self->_filenames;

  return filenames;
}

- (id)predefinedImagesWithContext:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  images = self->_images;
  if (images)
  {
    v4 = images;
  }

  else
  {
    v6 = objc_msgSend_p_predefinedImageNames(self, a2, a3);
    v9 = objc_msgSend_count(v6, v7, v8);
    if (v9)
    {
      v11 = v9;
      v12 = objc_alloc(MEMORY[0x277CBEB18]);
      v14 = objc_msgSend_initWithCapacity_(v12, v13, v11);
      v15 = self->_images;
      self->_images = v14;

      v16 = objc_alloc(MEMORY[0x277CBEB18]);
      v18 = objc_msgSend_initWithCapacity_(v16, v17, v11);
      filenames = self->_filenames;
      self->_filenames = v18;

      v66 = objc_msgSend_p_pathToPredefinedImages(self, v20, v21);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v62 = v6;
      obj = v6;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v67, v71, 16);
      if (v23)
      {
        v25 = v23;
        v64 = *MEMORY[0x277CE1E08];
        v65 = *v68;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v68 != v65)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v67 + 1) + 8 * i);
            v28 = objc_msgSend_stringByAppendingPathComponent_(v66, v24, v27);
            v31 = objc_msgSend_pathExtension(v27, v29, v30);
            v33 = objc_msgSend_typeWithFilenameExtension_(MEMORY[0x277CE1CB8], v32, v31);
            if ((objc_msgSend_conformsToType_(v33, v34, v64) & 1) != 0 || (v36 = objc_alloc(MEMORY[0x277D755B8]), (v38 = objc_msgSend_initWithContentsOfFile_(v36, v37, v28)) == 0))
            {
              v44 = MEMORY[0x277D81150];
              v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSWPImageBulletProvider predefinedImagesWithContext:]");
              v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPImageBulletProvider.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 93, 0, "Failed to create image for %@", v27);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
            }

            else
            {
              v40 = v38;
              v41 = objc_msgSend_copy(v27, v35, v39);
              objc_msgSend_addObject_(self->_images, v42, v40);
              objc_msgSend_addObject_(self->_filenames, v43, v41);
            }
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v67, v71, 16);
        }

        while (v25);
      }

      v6 = v62;
    }

    v51 = self->_images;
    if (!v51)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPImageBulletProvider predefinedImagesWithContext:]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPImageBulletProvider.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 99, 0, "Empty predefined bullet image array.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
      v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60 = self->_images;
      self->_images = v59;

      v51 = self->_images;
    }

    v4 = v51;
  }

  return v4;
}

- (id)dataForImageBullet:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    v13 = v10;
    v9 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v11, v10, 0);
    goto LABEL_12;
  }

  v14 = objc_msgSend_predefinedImages(self, v11, v12);
  if (!objc_msgSend_count(v14, v15, v16))
  {
    v13 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v18 = objc_msgSend_indexOfObject_(self->_images, v17, v6);
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPImageBulletProvider dataForImageBullet:withContext:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPImageBulletProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 124, 0, "Unknown image - TSPData requires path to image file");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
LABEL_8:
    v18 = 0;
  }

  v26 = objc_msgSend_objectAtIndexedSubscript_(self->_filenames, v17, v18);
  v29 = objc_msgSend_p_pathToPredefinedImages(self, v27, v28);
  v13 = objc_msgSend_stringByAppendingPathComponent_(v29, v30, v26);

  v9 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v31, v13, 0);

LABEL_11:
LABEL_12:

  if (v9)
  {
LABEL_13:
    v32 = objc_msgSend_dataFromURL_context_(MEMORY[0x277D80828], v8, v9, v7);
    goto LABEL_14;
  }

  v32 = 0;
LABEL_14:

  return v32;
}

- (id)p_pathToPredefinedImages
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, v2);
  v6 = objc_msgSend_resourcePath(v3, v4, v5);
  v8 = objc_msgSend_stringByAppendingPathComponent_(v6, v7, @"ImageBullets");

  return v8;
}

- (id)p_predefinedImageNames
{
  v3 = objc_msgSend_p_pathToPredefinedImages(self, a2, v2);
  v5 = objc_msgSend_stringByAppendingPathComponent_(v3, v4, @"ImageBullets.plist");

  v6 = MEMORY[0x277CBEA60];
  v8 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v7, v5, 0);
  v10 = objc_msgSend_arrayWithContentsOfURL_(v6, v9, v8);

  return v10;
}

@end