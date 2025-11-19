@interface TSTWPTokenAttachment
- (TSTWPTokenAttachment)initWithContext:(id)a3 expressionNode:(id)a4;
- (id)copyIntoContext:(id)a3 bakeModes:(BOOL)a4;
- (id)description;
- (id)detokenizedText;
- (id)formulaPlainText;
- (void)dealloc;
- (void)invalidate;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setCachedImage:(CGImage *)a3;
- (void)setExpressionNode:(id)a3;
@end

@implementation TSTWPTokenAttachment

- (void)setExpressionNode:(id)a3
{
  v19 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  expressionNode = self->_expressionNode;
  if (expressionNode != v19)
  {
    objc_msgSend_setTokenAttachment_(expressionNode, v19, 0, v9, v10);
    objc_storeStrong(&self->_expressionNode, a3);
    objc_msgSend_setTokenAttachment_(self->_expressionNode, v12, self, v13, v14);
    objc_msgSend_invalidate(self, v15, v16, v17, v18);
  }
}

- (TSTWPTokenAttachment)initWithContext:(id)a3 expressionNode:(id)a4
{
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TSTWPTokenAttachment;
  v8 = [(TSTWPTokenAttachment *)&v21 initWithContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_expressionNode, a4);
    v14 = objc_msgSend_tokenAttachment(v9->_expressionNode, v10, v11, v12, v13);
    v18 = v14;
    if (v14)
    {
      v19 = v14 == v9;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      objc_msgSend_setExpressionNode_(v14, v15, 0, v16, v17);
    }

    objc_msgSend_setTokenAttachment_(v9->_expressionNode, v15, v9, v16, v17);
    v9->_active = 0;
    v9->_cachedImage = 0;
  }

  return v9;
}

- (void)dealloc
{
  cachedImage = self->_cachedImage;
  if (cachedImage)
  {
    CGImageRelease(cachedImage);
  }

  v4.receiver = self;
  v4.super_class = TSTWPTokenAttachment;
  [(TSTWPTokenAttachment *)&v4 dealloc];
}

- (id)copyIntoContext:(id)a3 bakeModes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = objc_msgSend_copyIntoContext_bakeModes_children_(self->_expressionNode, v7, v6, v4, 0);
  v9 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithContext_expressionNode_(v9, v10, v6, v8, v11);

  return v12;
}

- (id)formulaPlainText
{
  expressionNode = self->_expressionNode;
  if (expressionNode)
  {
    v7 = objc_msgSend_formulaPlainText(expressionNode, a2, v2, v3, v4);
  }

  else
  {
    v7 = &stru_2834BADA0;
  }

  return v7;
}

- (id)detokenizedText
{
  expressionNode = self->_expressionNode;
  if (expressionNode)
  {
    v7 = objc_msgSend_detokenizedText(expressionNode, a2, v2, v3, v4);
  }

  else
  {
    v7 = &stru_2834BADA0;
  }

  return v7;
}

- (void)setCachedImage:(CGImage *)a3
{
  if (self->_cachedImage != a3)
  {
    CGImageRetain(a3);
    cachedImage = self->_cachedImage;
    if (cachedImage)
    {
      CGImageRelease(cachedImage);
    }

    self->_cachedImage = a3;
  }
}

- (void)invalidate
{
  if (!self->_inInvalidate)
  {
    self->_inInvalidate = 1;
    objc_msgSend_setCachedImage_(self, a2, 0, v2, v3);
    v47.receiver = self;
    v47.super_class = TSTWPTokenAttachment;
    [(TSWPUIGraphicalAttachment *)&v47 invalidate];
    if (objc_msgSend_tokenType(self->_expressionNode, v5, v6, v7, v8) == 1)
    {
      objc_opt_class();
      v17 = objc_msgSend_expressionNode(self, v13, v14, v15, v16);
      v18 = TSUDynamicCast();

      v23 = objc_msgSend_functionEndNode(v18, v19, v20, v21, v22);
      v28 = objc_msgSend_tokenAttachment(v23, v24, v25, v26, v27);
    }

    else
    {
      if (objc_msgSend_tokenType(self->_expressionNode, v9, v10, v11, v12) != 2)
      {
        v42 = 0;
LABEL_9:
        self->_inInvalidate = 0;

        return;
      }

      objc_opt_class();
      v33 = objc_msgSend_expressionNode(self, v29, v30, v31, v32);
      v18 = TSUDynamicCast();

      v23 = objc_msgSend_functionNode(v18, v34, v35, v36, v37);
      v28 = objc_msgSend_tokenAttachment(v23, v38, v39, v40, v41);
    }

    v42 = v28;

    if (v42)
    {
      objc_msgSend_invalidate(v42, v43, v44, v45, v46);
    }

    goto LABEL_9;
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[196], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2213F3728, off_2812E4498[196], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = MEMORY[0x277D81080];
  }

  v14.receiver = self;
  v14.super_class = TSTWPTokenAttachment;
  [(TSWPUIGraphicalAttachment *)&v14 loadFromArchive:v7 unarchiver:v6];
  if ((*(a3 + 16) & 2) != 0)
  {
    v9 = *(a3 + 4);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2213F33D8;
    v13[3] = &unk_278464980;
    v13[4] = self;
    v10 = v6;
    v11 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v13);
  }

  else
  {
    expressionNode = self->_expressionNode;
    self->_expressionNode = 0;
  }

  self->_cachedImage = 0;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 3);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA03E0](v8);
    *(a3 + 3) = v7;
  }

  v14.receiver = self;
  v14.super_class = TSTWPTokenAttachment;
  [(TSWPUIGraphicalAttachment *)&v14 saveToArchive:v7 archiver:v6];
  expressionNode = self->_expressionNode;
  if (expressionNode)
  {
    *(a3 + 4) |= 2u;
    v12 = *(a3 + 4);
    if (!v12)
    {
      v13 = *(a3 + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x223DA0390](v13);
      *(a3 + 4) = v12;
    }

    objc_msgSend_setStrongReference_message_(v6, v9, expressionNode, v12, v10);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  active = self->_active;
  v11 = objc_msgSend_description(self->_expressionNode, v7, v8, v9, v10);
  v15 = v11;
  if (active)
  {
    objc_msgSend_stringWithFormat_(v3, v12, @"<%@ %p>: isActive:%@, expressionNode:%@", v13, v14, v5, self, @"YES", v11);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v12, @"<%@ %p>: isActive:%@, expressionNode:%@", v13, v14, v5, self, @"NO", v11);
  }
  v16 = ;

  return v16;
}

@end