@interface KNMotionBackgroundFill
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3;
- (KNMotionBackgroundFill)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (KNMotionBackgroundFill)initWithMotionBackgroundStyle:(id)a3;
- (NSSet)referencedStyles;
- (NSString)description;
- (id)makeAlternateFillForDowngrading;
- (id)referenceColor;
- (unint64_t)hash;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)updateAlternateFillForDowngrading;
@end

@implementation KNMotionBackgroundFill

- (KNMotionBackgroundFill)initWithMotionBackgroundStyle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = KNMotionBackgroundFill;
  v6 = [(KNMotionBackgroundFill *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_motionBackgroundStyle, a3);
    objc_msgSend_updateAlternateFillForDowngrading(v7, v8, v9);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = objc_msgSend_motionBackgroundStyle(self, v5, v6);
    v11 = objc_msgSend_motionBackgroundStyle(v7, v9, v10);
    isEqualToStyle_ignoreObjectContext_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectContext_ignoreObjectUUID_(v8, v12, v11, 1, 0);
  }

  else
  {
    isEqualToStyle_ignoreObjectContext_ignoreObjectUUID = 0;
  }

  return isEqualToStyle_ignoreObjectContext_ignoreObjectUUID;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_motionBackgroundStyle(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"(%@*)%p: %@", v4, self, self->_motionBackgroundStyle);
}

- (id)makeAlternateFillForDowngrading
{
  v3 = objc_msgSend_motionBackgroundStyle(self, a2, v2);
  v6 = objc_msgSend_makeAlternateFill(v3, v4, v5);

  return v6;
}

- (void)updateAlternateFillForDowngrading
{
  v5 = objc_msgSend_makeAlternateFillForDowngrading(self, a2, v2);
  objc_msgSend_setAlternateFillForDowngrading_(self, v4, v5);
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_msgSend_alternateFillForDowngrading(self, a2, a4);
  objc_msgSend_paintRect_inContext_(v10, v9, a4, x, y, width, height);
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  v6 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = objc_msgSend_alternateFillForDowngrading(self, a2, a3);
  objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(v14, v13, a3, a5, v6, x, y, width, height);
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_msgSend_alternateFillForDowngrading(self, a2, a4);
  objc_msgSend_drawSwatchInRect_inContext_(v10, v9, a4, x, y, width, height);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v7 = objc_msgSend_alternateFillForDowngrading(self, a2, a3);
  objc_msgSend_paintPath_inContext_(v7, v6, a3, a4);
}

- (id)referenceColor
{
  v3 = objc_msgSend_motionBackgroundStyle(self, a2, v2);
  v6 = objc_msgSend_referenceColor(v3, v4, v5);

  return v6;
}

- (NSSet)referencedStyles
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_motionBackgroundStyle(self, a2, v2);
  v6 = objc_msgSend_setWithObject_(v3, v5, v4);

  return v6;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v10 = a3;
  objc_opt_class();
  v6 = objc_msgSend_motionBackgroundStyle(self, v4, v5);
  v7 = v10[2](v10, v6);
  v8 = TSUCheckedDynamicCast();
  objc_msgSend_setMotionBackgroundStyle_(self, v9, v8);
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [KNMotionBackgroundFill alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5);

  return v8;
}

- (KNMotionBackgroundFill)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = KNMotionBackgroundFill;
  v7 = [(KNMotionBackgroundFill *)&v19 init];
  if (v7)
  {
    if (google::protobuf::internal::ExtensionSet::Has((a3 + 16)))
    {
      v8 = *(google::protobuf::internal::ExtensionSet::GetMessage() + 24);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_275D5FAC4;
      v17[3] = &unk_27A697E40;
      v9 = v7;
      v18 = v9;
      v10 = v6;
      v12 = objc_opt_class();
      if (v8)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, v8, v12, 0, v17);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, MEMORY[0x277D80A18], v12, 0, v17);
      }

      v14 = objc_msgSend_drawablesSpecificInstanceWithArchive_unarchiver_(MEMORY[0x277D80248], v13, a3, v10);
      objc_msgSend_setAlternateFillForDowngrading_(v9, v15, v14);

      v7 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v17 = a4;
  sub_275E1F138();
  v6 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v8 = v6;
  motionBackgroundStyle = self->_motionBackgroundStyle;
  *(v6 + 16) |= 1u;
  v10 = *(v6 + 24);
  if (!v10)
  {
    v11 = *(v6 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C8F050](v11);
    *(v8 + 24) = v10;
  }

  objc_msgSend_setStrongReference_message_(v17, v7, motionBackgroundStyle, v10);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v17, v12, 200, a3);
  v15 = objc_msgSend_alternateFillForDowngrading(self, v13, v14);
  objc_msgSend_saveToArchive_archiver_(v15, v16, a3, v17);
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_motionBackgroundStyle(self, v6, v7);
    v11 = objc_msgSend_motionBackgroundStyle(v5, v9, v10);
    isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v8, v12, v11);
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

@end