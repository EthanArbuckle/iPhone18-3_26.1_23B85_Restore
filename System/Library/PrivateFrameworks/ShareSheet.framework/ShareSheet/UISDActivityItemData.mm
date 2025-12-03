@interface UISDActivityItemData
- (BOOL)canAccessFileURL:(id)l;
- (UISDActivityItemData)init;
- (UISDActivityItemData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISDActivityItemData

- (UISDActivityItemData)init
{
  v18.receiver = self;
  v18.super_class = UISDActivityItemData;
  v2 = [(UISDActivityItemData *)&v18 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    attachmentNamesByItem = v2->_attachmentNamesByItem;
    v2->_attachmentNamesByItem = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    subjectsByItem = v2->_subjectsByItem;
    v2->_subjectsByItem = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    previewImagesByItem = v2->_previewImagesByItem;
    v2->_previewImagesByItem = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    previewImageDataByItem = v2->_previewImageDataByItem;
    v2->_previewImageDataByItem = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    dataTypesByItem = v2->_dataTypesByItem;
    v2->_dataTypesByItem = dictionary5;

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    openURLAnnotationsByURL = v2->_openURLAnnotationsByURL;
    v2->_openURLAnnotationsByURL = dictionary6;

    v15 = objc_opt_new();
    securityContexts = v2->_securityContexts;
    v2->_securityContexts = v15;
  }

  return v2;
}

- (UISDActivityItemData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UISDActivityItemData *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_attachmentNamesByItem);
    v7 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v6);
    attachmentNamesByItem = v5->_attachmentNamesByItem;
    v5->_attachmentNamesByItem = v7;

    v9 = NSStringFromSelector(sel_subjectsByItem);
    v10 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v9);
    subjectsByItem = v5->_subjectsByItem;
    v5->_subjectsByItem = v10;

    v12 = NSStringFromSelector(sel_previewImagesByItem);
    v13 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v12);
    previewImagesByItem = v5->_previewImagesByItem;
    v5->_previewImagesByItem = v13;

    v15 = NSStringFromSelector(sel_previewImageDataByItem);
    v16 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v15);
    previewImageDataByItem = v5->_previewImageDataByItem;
    v5->_previewImageDataByItem = v16;

    v18 = NSStringFromSelector(sel_dataTypesByItem);
    v19 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v18);
    dataTypesByItem = v5->_dataTypesByItem;
    v5->_dataTypesByItem = v19;

    v21 = _UISecureStandardPropertyListClasses();
    v22 = NSStringFromSelector(sel_openURLAnnotationsByURL);
    v23 = [coderCopy decodeObjectOfClasses:v21 forKey:v22];
    openURLAnnotationsByURL = v5->_openURLAnnotationsByURL;
    v5->_openURLAnnotationsByURL = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = NSStringFromSelector(sel_securityContexts);
    v29 = [coderCopy decodeObjectOfClasses:v27 forKey:v28];
    securityContexts = v5->_securityContexts;
    v5->_securityContexts = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  attachmentNamesByItem = self->_attachmentNamesByItem;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_attachmentNamesByItem);
  [coderCopy encodeObject:attachmentNamesByItem forKey:v6];

  subjectsByItem = self->_subjectsByItem;
  v8 = NSStringFromSelector(sel_subjectsByItem);
  [coderCopy encodeObject:subjectsByItem forKey:v8];

  previewImagesByItem = self->_previewImagesByItem;
  v10 = NSStringFromSelector(sel_previewImagesByItem);
  [coderCopy encodeObject:previewImagesByItem forKey:v10];

  previewImageDataByItem = self->_previewImageDataByItem;
  v12 = NSStringFromSelector(sel_previewImageDataByItem);
  [coderCopy encodeObject:previewImageDataByItem forKey:v12];

  dataTypesByItem = self->_dataTypesByItem;
  v14 = NSStringFromSelector(sel_dataTypesByItem);
  [coderCopy encodeObject:dataTypesByItem forKey:v14];

  openURLAnnotationsByURL = self->_openURLAnnotationsByURL;
  v16 = NSStringFromSelector(sel_openURLAnnotationsByURL);
  [coderCopy encodeObject:openURLAnnotationsByURL forKey:v16];

  securityContexts = self->_securityContexts;
  v18 = NSStringFromSelector(sel_securityContexts);
  [coderCopy encodeObject:securityContexts forKey:v18];
}

- (BOOL)canAccessFileURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  securityContexts = [(UISDActivityItemData *)self securityContexts];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__UISDActivityItemData_canAccessFileURL___block_invoke;
  v8[3] = &unk_1E71FA840;
  v6 = lCopy;
  v9 = v6;
  v10 = &v11;
  [securityContexts enumerateObjectsUsingBlock:v8];

  LOBYTE(securityContexts) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return securityContexts;
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