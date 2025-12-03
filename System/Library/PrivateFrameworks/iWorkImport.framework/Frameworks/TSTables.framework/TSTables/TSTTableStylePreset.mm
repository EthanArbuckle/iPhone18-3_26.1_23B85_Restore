@interface TSTTableStylePreset
- (BOOL)isEqual:(id)equal;
- (NSSet)referencedStyles;
- (TSTTableStyleNetwork)styleNetwork;
- (TSTTableStylePreset)initWithContext:(id)context;
- (TSTTableStylePreset)initWithStyleNetwork:(id)network;
- (id)p_documentRoot;
- (unint64_t)hash;
- (unint64_t)presetID;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setStyleNetwork:(id)network;
@end

@implementation TSTTableStylePreset

- (void)setStyleNetwork:(id)network
{
  networkCopy = network;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  if (!networkCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableStylePreset setStyleNetwork:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 54, 0, "invalid nil value for '%{public}s'", "styleNetwork");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_copy(networkCopy, v8, v9, v10, v11);
  styleNetwork = self->_styleNetwork;
  self->_styleNetwork = v23;

  self->_tempUpgradePresetID = 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)presetID
{
  if (self->_styleNetwork)
  {
    styleNetwork = self->_styleNetwork;

    return objc_msgSend_presetID(styleNetwork, a2, v2, v3, v4);
  }

  else
  {
    result = self->_tempUpgradePresetID;
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStylePreset presetID]", v3, v4);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 68, 0, "No valid preset ID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
      return 0;
    }
  }

  return result;
}

- (TSTTableStyleNetwork)styleNetwork
{
  v5 = objc_msgSend_copy(self->_styleNetwork, a2, v2, v3, v4);

  return v5;
}

- (id)p_documentRoot
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);
  v10 = objc_msgSend_documentRoot(v5, v6, v7, v8, v9);

  return v10;
}

- (TSTTableStylePreset)initWithStyleNetwork:(id)network
{
  networkCopy = network;
  v9 = objc_msgSend_context(networkCopy, v5, v6, v7, v8);
  v29.receiver = self;
  v29.super_class = TSTTableStylePreset;
  v10 = [(TSTTableStylePreset *)&v29 initWithContext:v9];

  if (v10)
  {
    if (!networkCopy)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableStylePreset initWithStyleNetwork:]", v13, v14);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 92, 0, "invalid nil value for '%{public}s'", "styleNetwork");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    v26 = objc_msgSend_copy(networkCopy, v11, v12, v13, v14);
    styleNetwork = v10->_styleNetwork;
    v10->_styleNetwork = v26;
  }

  return v10;
}

- (TSTTableStylePreset)initWithContext:(id)context
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStylePreset initWithContext:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 100, 0, "Should always be intialized with a network and an ID");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v10 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    if (v5 == self)
    {
      isEqual = 1;
      goto LABEL_9;
    }

    v11 = objc_msgSend_presetID(self, v6, v7, v8, v9);
    if (v11 == objc_msgSend_presetID(v10, v12, v13, v14, v15))
    {
      isEqual = objc_msgSend_isEqual_(self->_styleNetwork, v16, v10[8], v17, v18);
    }

    else
    {
LABEL_7:
      isEqual = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  isEqual = 1;
LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v9 = objc_msgSend_hash(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_presetID(self, v10, v11, v12, v13);

  return v14 + v9;
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  styleNetwork = self->_styleNetwork;
  if (!styleNetwork)
  {
    v13 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStylePreset drawSwatchInRect:inContext:]", v4, v5);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v30, v17, 135, 0, "invalid nil value for '%{public}s'", "_styleNetwork");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    styleNetwork = self->_styleNetwork;
  }

  v31 = objc_msgSend_headerRowCellStyle(styleNetwork, a2, context, v4, v5);
  v26 = objc_msgSend_valueForProperty_(v31, v23, 898, v24, v25);
  objc_msgSend_drawSwatchInRect_inContext_(v26, v27, context, v28, v29, x, y, width, height);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4660[12], v6, v7);

  self->_tempUpgradePresetID = 0x7FFFFFFFFFFFFFFFLL;
  v9 = *(v8 + 16);
  if ((v9 & 4) != 0)
  {
    self->_tempUpgradePresetID = *(v8 + 40);
  }

  if ((v9 & 2) != 0)
  {
    v10 = *(v8 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2212189EC;
    v14[3] = &unk_278461658;
    v14[4] = self;
    v15 = (v9 & 4) >> 2;
    v11 = unarchiverCopy;
    v12 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v13, v10, v12, 0, v14);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  styleNetwork = self->_styleNetwork;
  if (styleNetwork || (v10 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableStylePreset saveToArchive:archiver:]", v7, v8), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 176, 0, "invalid nil value for '%{public}s'", "_styleNetwork"), v15, v11, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20), (styleNetwork = self->_styleNetwork) != 0))
  {
    *(archive + 4) |= 2u;
    v21 = *(archive + 4);
    if (!v21)
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x223DA0390](v22);
      *(archive + 4) = v21;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, styleNetwork, v21, v8);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221219038, off_2812E4660[12], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (NSSet)referencedStyles
{
  v6 = objc_msgSend_set(MEMORY[0x277D81258], a2, v2, v3, v4);
  v11 = objc_msgSend_styleNetwork(self, v7, v8, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221218E4C;
  v17[3] = &unk_27845ED00;
  v12 = v6;
  v18 = v12;
  objc_msgSend_enumerateAllStylesWithBlock_(v11, v13, v17, v14, v15);

  return v12;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_context(self, v5, v6, v7, v8);
  v14 = objc_msgSend_presetID(self, v10, v11, v12, v13);
  v19 = objc_msgSend_styleNetwork(self, v15, v16, v17, v18);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_221218FAC;
  v26[3] = &unk_278461680;
  v20 = blockCopy;
  v27 = v20;
  v22 = objc_msgSend_networkWithContext_presetID_styleProvider_styleMorphingBlock_(TSTTableStyleNetwork, v21, v9, v14, v19, v26);

  objc_msgSend_setStyleNetwork_(self, v23, v22, v24, v25);
}

@end