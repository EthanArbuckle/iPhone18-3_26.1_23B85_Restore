@interface TPTextImporter
- (BOOL)importToDocumentRoot:(id)a3 delegate:(id)a4 error:(id *)a5;
- (TPTextImporter)initWithURL:(id)a3;
@end

@implementation TPTextImporter

- (TPTextImporter)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPTextImporter;
  v6 = [(TPTextImporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mURL, a3);
  }

  return v7;
}

- (BOOL)importToDocumentRoot:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v7 = a3;
  v65 = 0;
  v8 = objc_alloc(MEMORY[0x277CCAB68]);
  mURL = self->mURL;
  v64 = 0;
  v15 = objc_msgSend_initWithContentsOfURL_usedEncoding_error_(v8, v10, v11, v12, v13, v14, mURL, &v65, &v64);
  v16 = v64;
  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v15 == 0;
  }

  if (!v22)
  {
    v38 = 0;
    v39 = objc_msgSend_length(v15, v17, v18, v19, v20, v21);
LABEL_9:
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v15, v40, v41, v42, v43, v44, @"\r\n", @"\n", 2, 0, v39);
    v50 = objc_msgSend_filterText_(MEMORY[0x277D80F28], v45, v46, v47, v48, v49, v15);

    v56 = objc_msgSend_bodyStorage(v7, v51, v52, v53, v54, v55);
    objc_msgSend_insertString_atCharIndex_undoTransaction_(v56, v57, v58, v59, v60, v61, v50, 0, 0);

    v37 = 1;
    goto LABEL_10;
  }

  v23 = objc_alloc(MEMORY[0x277CCAB68]);
  v24 = self->mURL;
  v63 = 0;
  v30 = objc_msgSend_initWithContentsOfURL_encoding_error_(v23, v25, v26, v27, v28, v29, v24, 12, &v63);
  v38 = v63;

  if (!a5 || !v38)
  {
    if (a5 && !v30)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, v32, v33, v34, v35, @"com.apple.iWork.Pages.TextImport", 0, 0);
      *a5 = v37 = 0;
      goto LABEL_10;
    }

    v15 = v30;
    v39 = objc_msgSend_length(v30, v31, v32, v33, v34, v35);
    goto LABEL_9;
  }

  v36 = v38;
  *a5 = v38;

  v37 = 0;
LABEL_10:

  return v37;
}

@end