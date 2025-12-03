@interface MattingDebugUtils
+ (BOOL)saveTextureArray:(id)array AsBinaryFile:(const char *)file;
+ (void)createPathIfNeeded:(id)needed;
@end

@implementation MattingDebugUtils

+ (void)createPathIfNeeded:(id)needed
{
  v3 = objc_msgSend_stringByDeletingLastPathComponent(needed, a2, needed);
  v6 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v4, v5);
  v15 = 0;
  v8 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v6, v7, v3, 1, 0, &v15);
  v9 = v15;
  if ((v8 & 1) == 0)
  {
    if (qword_2A1389E50 != -1)
    {
      sub_2957E0F50();
    }

    v10 = qword_2A1389E48;
    if (os_log_type_enabled(qword_2A1389E48, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2957D4000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", &v11, 0x16u);
    }
  }
}

+ (BOOL)saveTextureArray:(id)array AsBinaryFile:(const char *)file
{
  arrayCopy = array;
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v6, @"%s", file);
  v10 = objc_msgSend_pixelFormat(arrayCopy, v8, v9);
  if (v10 <= 69)
  {
    switch(v10)
    {
      case 10:
        v13 = 1;
        goto LABEL_20;
      case 25:
        v13 = 2;
        goto LABEL_20;
      case 55:
        goto LABEL_9;
    }

LABEL_14:
    if (qword_2A1389E50 != -1)
    {
      sub_2957E0F78();
    }

    v14 = qword_2A1389E48;
    v15 = 0;
    if (os_log_type_enabled(qword_2A1389E48, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_2957D4000, v14, OS_LOG_TYPE_DEFAULT, "Unsupported pixel format. Failed to save texture array to %@", &buf, 0xCu);
      v15 = 0;
    }

    goto LABEL_33;
  }

  if (v10 > 114)
  {
    if (v10 == 115)
    {
      v13 = 8;
      goto LABEL_20;
    }

    if (v10 == 125)
    {
      v13 = 16;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v10 != 70 && v10 != 80)
  {
    goto LABEL_14;
  }

LABEL_9:
  v13 = 4;
LABEL_20:
  v16 = objc_msgSend_width(arrayCopy, v11, v12);
  v17 = objc_alloc(MEMORY[0x29EDB8DF8]);
  v20 = objc_msgSend_width(arrayCopy, v18, v19);
  v23 = objc_msgSend_height(arrayCopy, v21, v22);
  v26 = objc_msgSend_arrayLength(arrayCopy, v24, v25);
  v28 = objc_msgSend_initWithLength_(v17, v27, v20 * v13 * v23 * v26);
  v29 = v28;
  v32 = objc_msgSend_bytes(v29, v30, v31);
  if (objc_msgSend_arrayLength(arrayCopy, v33, v34))
  {
    v37 = 0;
    v38 = v16 * v13;
    v39 = 1;
    do
    {
      v40 = objc_msgSend_pixelFormat(arrayCopy, v35, v36);
      v42 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(arrayCopy, v41, v40, 2, 0, 1, v37, 1);
      v45 = v32 + v37 * v38 * objc_msgSend_height(arrayCopy, v43, v44);
      v48 = objc_msgSend_width(arrayCopy, v46, v47);
      v51 = objc_msgSend_height(arrayCopy, v49, v50);
      buf = 0uLL;
      v67 = 0;
      v68 = v48;
      v69 = v51;
      v70 = 1;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v42, v52, v45, v38, &buf, 0);

      v37 = v39;
    }

    while (objc_msgSend_arrayLength(arrayCopy, v53, v54) > v39++);
  }

  objc_msgSend_createPathIfNeeded_(MattingDebugUtils, v35, v7);
  v65 = 0;
  v15 = objc_msgSend_writeToFile_options_error_(v28, v56, v7, 1, &v65);
  v57 = v65;
  if (v15)
  {
    if (qword_2A1389E50 != -1)
    {
      sub_2957E0F50();
    }

    v58 = qword_2A1389E48;
    if (os_log_type_enabled(qword_2A1389E48, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_2957D4000, v58, OS_LOG_TYPE_DEFAULT, "Wrote file: %@", &buf, 0xCu);
    }
  }

  else
  {
    if (qword_2A1389E50 != -1)
    {
      sub_2957E0F50();
    }

    v59 = qword_2A1389E48;
    if (os_log_type_enabled(qword_2A1389E48, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v59;
      v63 = objc_msgSend_localizedDescription(v57, v61, v62);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v63;
      _os_log_impl(&dword_2957D4000, v60, OS_LOG_TYPE_DEFAULT, "Error:\n%@", &buf, 0xCu);
    }
  }

LABEL_33:
  return v15;
}

@end