@interface KNMotionBackgroundFill
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (KNMotionBackgroundFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNMotionBackgroundFill)initWithMotionBackgroundStyle:(id)style;
- (NSSet)referencedStyles;
- (NSString)description;
- (id)makeAlternateFillForDowngrading;
- (id)referenceColor;
- (unint64_t)hash;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)updateAlternateFillForDowngrading;
@end

@implementation KNMotionBackgroundFill

- (KNMotionBackgroundFill)initWithMotionBackgroundStyle:(id)style
{
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = KNMotionBackgroundFill;
  v6 = [(KNMotionBackgroundFill *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_motionBackgroundStyle, style);
    objc_msgSend_updateAlternateFillForDowngrading(v7, v8, v9);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_alternateFillForDowngrading(self, a2, context);
  objc_msgSend_paintRect_inContext_(v10, v9, context, x, y, width, height);
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  fCopy = f;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = objc_msgSend_alternateFillForDowngrading(self, a2, path);
  objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(v14, v13, path, context, fCopy, x, y, width, height);
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_alternateFillForDowngrading(self, a2, context);
  objc_msgSend_drawSwatchInRect_inContext_(v10, v9, context, x, y, width, height);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  v7 = objc_msgSend_alternateFillForDowngrading(self, a2, path);
  objc_msgSend_paintPath_inContext_(v7, v6, path, context);
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

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  v6 = objc_msgSend_motionBackgroundStyle(self, v4, v5);
  v7 = blockCopy[2](blockCopy, v6);
  v8 = TSUCheckedDynamicCast();
  objc_msgSend_setMotionBackgroundStyle_(self, v9, v8);
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [KNMotionBackgroundFill alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (KNMotionBackgroundFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v19.receiver = self;
  v19.super_class = KNMotionBackgroundFill;
  v7 = [(KNMotionBackgroundFill *)&v19 init];
  if (v7)
  {
    if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
    {
      v8 = *(google::protobuf::internal::ExtensionSet::GetMessage() + 24);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_275D5FAC4;
      v17[3] = &unk_27A697E40;
      v9 = v7;
      v18 = v9;
      v10 = unarchiverCopy;
      v12 = objc_opt_class();
      if (v8)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, v8, v12, 0, v17);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, MEMORY[0x277D80A18], v12, 0, v17);
      }

      v14 = objc_msgSend_drawablesSpecificInstanceWithArchive_unarchiver_(MEMORY[0x277D80248], v13, archive, v10);
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

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
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

  objc_msgSend_setStrongReference_message_(archiverCopy, v7, motionBackgroundStyle, v10);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v12, 200, archive);
  v15 = objc_msgSend_alternateFillForDowngrading(self, v13, v14);
  objc_msgSend_saveToArchive_archiver_(v15, v16, archive, archiverCopy);
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  comparisonCopy = comparison;
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