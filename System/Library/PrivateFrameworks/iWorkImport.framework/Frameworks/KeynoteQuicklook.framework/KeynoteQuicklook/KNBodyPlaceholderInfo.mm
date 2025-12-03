@interface KNBodyPlaceholderInfo
+ (id)mixableObjectClasses;
- (KNBodyPlaceholderInfo)initWithKNPlaceholderInfo:(id)info;
- (id)copyToInstantiateTemplatePlaceholder;
- (id)typeName;
- (void)acceptVisitor:(id)visitor;
@end

@implementation KNBodyPlaceholderInfo

+ (id)mixableObjectClasses
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 2);

  return v3;
}

- (KNBodyPlaceholderInfo)initWithKNPlaceholderInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_textStorage(infoCopy, v5, v6);
  v10 = objc_msgSend_context(infoCopy, v8, v9);
  v12 = objc_msgSend_copyWithContext_(v7, v11, v10);

  v15 = objc_msgSend_context(infoCopy, v13, v14);
  v18 = objc_msgSend_geometry(infoCopy, v16, v17);
  v21 = objc_msgSend_shapeStyle(infoCopy, v19, v20);
  v24 = objc_msgSend_pathSource(infoCopy, v22, v23);
  v47.receiver = self;
  v47.super_class = KNBodyPlaceholderInfo;
  v25 = [(KNBodyPlaceholderInfo *)&v47 initWithContext:v15 geometry:v18 style:v21 pathSource:v24 wpStorage:v12];

  if (v25)
  {
    isLocked = objc_msgSend_isLocked(infoCopy, v26, v27);
    objc_msgSend_setLocked_(v25, v29, isLocked);
    v32 = objc_msgSend_hyperlinkURL(infoCopy, v30, v31);
    objc_msgSend_setHyperlinkURL_(v25, v33, v32);

    v36 = objc_msgSend_comment(infoCopy, v34, v35);
    objc_msgSend_setComment_(v25, v37, v36);

    v40 = objc_msgSend_accessibilityDescription(infoCopy, v38, v39);
    objc_msgSend_setAccessibilityDescription_(v25, v41, v40);

    v44 = objc_msgSend_aspectRatioLocked(infoCopy, v42, v43);
    objc_msgSend_setAspectRatioLocked_(v25, v45, v44);
  }

  return v25;
}

- (id)copyToInstantiateTemplatePlaceholder
{
  v14.receiver = self;
  v14.super_class = KNBodyPlaceholderInfo;
  copyToInstantiateTemplatePlaceholder = [(KNBodyPlaceholderInfo *)&v14 copyToInstantiateTemplatePlaceholder];
  v5 = objc_msgSend_textStorage(copyToInstantiateTemplatePlaceholder, v3, v4);
  v8 = objc_msgSend_textStorage(copyToInstantiateTemplatePlaceholder, v6, v7);
  v11 = objc_msgSend_range(v8, v9, v10);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v5, v12, v11, v12, &stru_2884D8E20, 0);

  return copyToInstantiateTemplatePlaceholder;
}

- (void)acceptVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = TSUProtocolCast();
  v7 = v5;
  if (v5)
  {
    objc_msgSend_visitKNBodyPlaceholderInfo_(v5, v6, self, &unk_2885462B0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = KNBodyPlaceholderInfo;
    [(KNBodyPlaceholderInfo *)&v8 acceptVisitor:visitorCopy, &unk_2885462B0];
  }
}

- (id)typeName
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Body", &stru_2884D8E20, @"Keynote");

  return v4;
}

@end