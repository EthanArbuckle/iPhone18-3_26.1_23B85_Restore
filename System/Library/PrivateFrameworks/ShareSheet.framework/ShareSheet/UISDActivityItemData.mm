@interface UISDActivityItemData
- (BOOL)canAccessFileURL:(id)a3;
- (UISDActivityItemData)init;
- (UISDActivityItemData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISDActivityItemData

- (UISDActivityItemData)init
{
  v18.receiver = self;
  v18.super_class = UISDActivityItemData;
  v2 = [(UISDActivityItemData *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    attachmentNamesByItem = v2->_attachmentNamesByItem;
    v2->_attachmentNamesByItem = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    subjectsByItem = v2->_subjectsByItem;
    v2->_subjectsByItem = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    previewImagesByItem = v2->_previewImagesByItem;
    v2->_previewImagesByItem = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    previewImageDataByItem = v2->_previewImageDataByItem;
    v2->_previewImageDataByItem = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    dataTypesByItem = v2->_dataTypesByItem;
    v2->_dataTypesByItem = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    openURLAnnotationsByURL = v2->_openURLAnnotationsByURL;
    v2->_openURLAnnotationsByURL = v13;

    v15 = objc_opt_new();
    securityContexts = v2->_securityContexts;
    v2->_securityContexts = v15;
  }

  return v2;
}

- (UISDActivityItemData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISDActivityItemData *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_attachmentNamesByItem);
    v7 = _UISecureDecodeExtensionItemsWithKey(v4, v6);
    attachmentNamesByItem = v5->_attachmentNamesByItem;
    v5->_attachmentNamesByItem = v7;

    v9 = NSStringFromSelector(sel_subjectsByItem);
    v10 = _UISecureDecodeExtensionItemsWithKey(v4, v9);
    subjectsByItem = v5->_subjectsByItem;
    v5->_subjectsByItem = v10;

    v12 = NSStringFromSelector(sel_previewImagesByItem);
    v13 = _UISecureDecodeExtensionItemsWithKey(v4, v12);
    previewImagesByItem = v5->_previewImagesByItem;
    v5->_previewImagesByItem = v13;

    v15 = NSStringFromSelector(sel_previewImageDataByItem);
    v16 = _UISecureDecodeExtensionItemsWithKey(v4, v15);
    previewImageDataByItem = v5->_previewImageDataByItem;
    v5->_previewImageDataByItem = v16;

    v18 = NSStringFromSelector(sel_dataTypesByItem);
    v19 = _UISecureDecodeExtensionItemsWithKey(v4, v18);
    dataTypesByItem = v5->_dataTypesByItem;
    v5->_dataTypesByItem = v19;

    v21 = _UISecureStandardPropertyListClasses();
    v22 = NSStringFromSelector(sel_openURLAnnotationsByURL);
    v23 = [v4 decodeObjectOfClasses:v21 forKey:v22];
    openURLAnnotationsByURL = v5->_openURLAnnotationsByURL;
    v5->_openURLAnnotationsByURL = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = NSStringFromSelector(sel_securityContexts);
    v29 = [v4 decodeObjectOfClasses:v27 forKey:v28];
    securityContexts = v5->_securityContexts;
    v5->_securityContexts = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  attachmentNamesByItem = self->_attachmentNamesByItem;
  v5 = a3;
  v6 = NSStringFromSelector(sel_attachmentNamesByItem);
  [v5 encodeObject:attachmentNamesByItem forKey:v6];

  subjectsByItem = self->_subjectsByItem;
  v8 = NSStringFromSelector(sel_subjectsByItem);
  [v5 encodeObject:subjectsByItem forKey:v8];

  previewImagesByItem = self->_previewImagesByItem;
  v10 = NSStringFromSelector(sel_previewImagesByItem);
  [v5 encodeObject:previewImagesByItem forKey:v10];

  previewImageDataByItem = self->_previewImageDataByItem;
  v12 = NSStringFromSelector(sel_previewImageDataByItem);
  [v5 encodeObject:previewImageDataByItem forKey:v12];

  dataTypesByItem = self->_dataTypesByItem;
  v14 = NSStringFromSelector(sel_dataTypesByItem);
  [v5 encodeObject:dataTypesByItem forKey:v14];

  openURLAnnotationsByURL = self->_openURLAnnotationsByURL;
  v16 = NSStringFromSelector(sel_openURLAnnotationsByURL);
  [v5 encodeObject:openURLAnnotationsByURL forKey:v16];

  securityContexts = self->_securityContexts;
  v18 = NSStringFromSelector(sel_securityContexts);
  [v5 encodeObject:securityContexts forKey:v18];
}

- (BOOL)canAccessFileURL:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(UISDActivityItemData *)self securityContexts];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__UISDActivityItemData_canAccessFileURL___block_invoke;
  v8[3] = &unk_1E71FA840;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __41__UISDActivityItemData_canAccessFileURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 accessibleURLs];
  v8 = [v7 containsObject:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v9 = [*(a1 + 32) URLByResolvingSymlinksInPath];
    v10 = [v6 accessibleURLs];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__UISDActivityItemData_canAccessFileURL___block_invoke_2;
    v13[3] = &unk_1E71FA818;
    v11 = *(a1 + 40);
    v14 = v9;
    v15 = v11;
    v12 = v9;
    [v10 enumerateObjectsUsingBlock:v13];
  }
}

void __41__UISDActivityItemData_canAccessFileURL___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 URLByResolvingSymlinksInPath];
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v13 = v6;
      v8 = [v7 path];
      v9 = [v13 path];
      if ([v8 isEqualToString:v9])
      {

        v6 = v13;
      }

      else
      {
        v10 = [*(a1 + 32) path];
        v11 = [v13 path];
        v12 = [v10 hasPrefix:v11];

        v6 = v13;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

LABEL_7:
}

@end