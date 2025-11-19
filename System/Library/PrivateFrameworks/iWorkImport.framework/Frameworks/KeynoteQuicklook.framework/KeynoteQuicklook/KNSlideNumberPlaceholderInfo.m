@interface KNSlideNumberPlaceholderInfo
- (id)copyToInstantiateTemplatePlaceholder;
- (id)instructionalText;
- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4;
- (id)typeName;
- (void)acceptVisitor:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
@end

@implementation KNSlideNumberPlaceholderInfo

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = KNSlideNumberPlaceholderInfo;
  [(KNPlaceholderInfo *)&v25 loadFromUnarchiver:v4];
  if (objc_msgSend_hasPreUFFVersion(v4, v5, v6))
  {
    v9 = objc_msgSend_preUFFVersion(v4, v7, v8);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D7C728;
    v24[3] = &unk_27A698480;
    v24[4] = self;
    v24[5] = v9;
    objc_msgSend_addFinalizeHandler_(v4, v10, v24);
  }

  else
  {
    v13 = objc_msgSend_geometry(self, v7, v8);
    v16 = objc_msgSend_heightValid(v13, v14, v15);

    if (v16)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275D7C8CC;
      v23[3] = &unk_27A698390;
      v23[4] = self;
      objc_msgSend_addFinalizeHandler_(v4, v11, v23);
    }
  }

  v17 = objc_msgSend_pathSource(self, v11, v12);
  isRectangular = objc_msgSend_isRectangular(v17, v18, v19);

  if ((isRectangular & 1) == 0)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_275D7C97C;
    v22[3] = &unk_27A698390;
    v22[4] = self;
    objc_msgSend_addFinalizeHandler_(v4, v21, v22);
  }
}

- (id)instructionalText
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"01", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (id)copyToInstantiateTemplatePlaceholder
{
  v14.receiver = self;
  v14.super_class = KNSlideNumberPlaceholderInfo;
  v2 = [(KNSlideNumberPlaceholderInfo *)&v14 copyToInstantiateTemplatePlaceholder];
  v3 = [KNSlideNumberAttachment alloc];
  v6 = objc_msgSend_context(v2, v4, v5);
  v8 = objc_msgSend_initWithContext_(v3, v7, v6);

  v11 = objc_msgSend_textStorage(v2, v9, v10);
  objc_msgSend_insertAttachmentOrFootnote_range_(v11, v12, v8, 0, 0);

  return v2;
}

- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = sub_275DC204C();
    v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"All at Once", &stru_2884D8E20, @"Keynote");
    v10 = v6;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, &v10, 1);
  }

  else
  {
    v11[0] = *MEMORY[0x277D80118];
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 1);
  }

  return v8;
}

- (id)typeName
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Slide Number", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (void)acceptVisitor:(id)a3
{
  v4 = a3;
  v5 = TSUProtocolCast();
  v7 = v5;
  if (v5)
  {
    objc_msgSend_visitKNSlideNumberPlaceholderInfo_(v5, v6, self, &unk_2885462B0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = KNSlideNumberPlaceholderInfo;
    [(KNSlideNumberPlaceholderInfo *)&v8 acceptVisitor:v4, &unk_2885462B0];
  }
}

@end