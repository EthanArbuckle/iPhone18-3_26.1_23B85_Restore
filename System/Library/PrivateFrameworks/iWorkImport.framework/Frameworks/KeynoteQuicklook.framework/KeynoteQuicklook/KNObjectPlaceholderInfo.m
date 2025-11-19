@interface KNObjectPlaceholderInfo
- (KNObjectPlaceholderInfo)initWithKNPlaceholderInfo:(id)a3;
- (id)instructionalText;
- (id)typeName;
@end

@implementation KNObjectPlaceholderInfo

- (KNObjectPlaceholderInfo)initWithKNPlaceholderInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_textStorage(v4, v5, v6);
  v10 = objc_msgSend_context(v4, v8, v9);
  v12 = objc_msgSend_copyWithContext_(v7, v11, v10);

  v15 = objc_msgSend_context(v4, v13, v14);
  v18 = objc_msgSend_geometry(v4, v16, v17);
  v21 = objc_msgSend_shapeStyle(v4, v19, v20);
  v24 = objc_msgSend_pathSource(v4, v22, v23);
  v47.receiver = self;
  v47.super_class = KNObjectPlaceholderInfo;
  v25 = [(KNObjectPlaceholderInfo *)&v47 initWithContext:v15 geometry:v18 style:v21 pathSource:v24 wpStorage:v12];

  if (v25)
  {
    isLocked = objc_msgSend_isLocked(v4, v26, v27);
    objc_msgSend_setLocked_(v25, v29, isLocked);
    v32 = objc_msgSend_hyperlinkURL(v4, v30, v31);
    objc_msgSend_setHyperlinkURL_(v25, v33, v32);

    v36 = objc_msgSend_comment(v4, v34, v35);
    objc_msgSend_setComment_(v25, v37, v36);

    v40 = objc_msgSend_accessibilityDescription(v4, v38, v39);
    objc_msgSend_setAccessibilityDescription_(v25, v41, v40);

    v44 = objc_msgSend_aspectRatioLocked(v4, v42, v43);
    objc_msgSend_setAspectRatioLocked_(v25, v45, v44);
  }

  return v25;
}

- (id)instructionalText
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Object Placeholder", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (id)typeName
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Object", &stru_2884D8E20, @"Keynote");

  return v4;
}

@end