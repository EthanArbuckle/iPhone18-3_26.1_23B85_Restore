@interface TSTCompletionToken
- (TSTCanvasReferenceProvider)canvasReferenceProvider;
- (TSTCompletionToken)initWithContext:(id)context completionText:(id)text;
- (_NSRange)prefixRange;
- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes;
- (id)description;
- (void)dealloc;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setCompletionText:(id)text;
- (void)setEditingReferenceNode:(id)node;
- (void)setPrefixRange:(_NSRange)range;
@end

@implementation TSTCompletionToken

- (void)setCompletionText:(id)text
{
  textCopy = text;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  if (self->_completionText != textCopy)
  {
    objc_storeStrong(&self->_completionText, text);
    v13 = objc_msgSend_length(self->_completionText, v9, v10, v11, v12);
    self->_prefixRange.location = 0;
    self->_prefixRange.length = v13;
    objc_msgSend_invalidate(self, v14, v15, v16, v17);
  }
}

- (void)setPrefixRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length, v3);
  if (location != self->_prefixRange.location || length != self->_prefixRange.length)
  {
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = objc_msgSend_length(self->_completionText, v7, v8, v9, v10);
      location = 0;
    }

    v12 = objc_msgSend_length(self->_completionText, v7, v8, v9, v10);
    v17 = v12;
    if (location >= v12)
    {
      location = v12;
    }

    v18 = objc_msgSend_length(self->_completionText, v13, v14, v15, v16);
    v23 = v17 - location;
    if (location + length <= v18)
    {
      v23 = length;
    }

    self->_prefixRange.location = location;
    self->_prefixRange.length = v23;

    objc_msgSend_invalidate(self, v19, v20, v21, v22);
  }
}

- (void)setEditingReferenceNode:(id)node
{
  nodeCopy = node;
  if (self->_editingReferenceNode != nodeCopy)
  {
    objc_msgSend_p_removeCanvasReference(self, v5, v6, v7, v8);
    objc_msgSend_setTokenAttachment_(self->_editingReferenceNode, v9, 0, v10, v11);
    objc_storeStrong(&self->_editingReferenceNode, node);
    objc_msgSend_setTokenAttachment_(self->_editingReferenceNode, v12, self, v13, v14);
    objc_msgSend_p_createCanvasReference(self, v15, v16, v17, v18);
    objc_msgSend_invalidate(self, v19, v20, v21, v22);
  }
}

- (TSTCompletionToken)initWithContext:(id)context completionText:(id)text
{
  contextCopy = context;
  textCopy = text;
  v21.receiver = self;
  v21.super_class = TSTCompletionToken;
  v8 = [(TSTWPTokenAttachment *)&v21 initWithContext:contextCopy expressionNode:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_completionText, text);
    v14 = objc_msgSend_length(textCopy, v10, v11, v12, v13);
    v9->_prefixRange.location = 0;
    v9->_prefixRange.length = v14;
    objc_msgSend_setActive_(v9, v15, 1, v16, v17);
    v9->_renderAsTokenType = 0;
    editingReferenceNode = v9->_editingReferenceNode;
    v9->_editingReferenceNode = 0;

    referenceColor = v9->_referenceColor;
    v9->_referenceColor = 0;
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_p_removeCanvasReference(self, a2, v2, v3, v4);
  objc_msgSend_setTokenAttachment_(self->_editingReferenceNode, v6, 0, v7, v8);
  v9.receiver = self;
  v9.super_class = TSTCompletionToken;
  [(TSTWPTokenAttachment *)&v9 dealloc];
}

- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes
{
  modesCopy = modes;
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = TSTCompletionToken;
  v7 = [(TSTWPTokenAttachment *)&v28 copyIntoContext:contextCopy bakeModes:modesCopy];
  objc_msgSend_setCompletionText_(v7, v8, self->_completionText, v9, v10);
  objc_msgSend_setPrefixRange_(v7, v11, self->_prefixRange.location, self->_prefixRange.length, v12);
  *(v7 + 26) = self->_renderAsTokenType;
  v14 = objc_msgSend_copyIntoContext_bakeModes_children_(self->_editingReferenceNode, v13, contextCopy, modesCopy, 0);
  v15 = v7[15];
  v7[15] = v14;

  v20 = objc_msgSend_tokenAttachment(self->_editingReferenceNode, v16, v17, v18, v19);
  objc_msgSend_setTokenAttachment_(v7[15], v21, v20, v22, v23);

  objc_msgSend_setReferenceColor_(v7, v24, self->_referenceColor, v25, v26);
  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[238], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2213FC598, off_2812E4498[238], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_TokenAttachmentArchive_default_instance_;
  }

  v21.receiver = self;
  v21.super_class = TSTCompletionToken;
  [(TSTWPTokenAttachment *)&v21 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 16))
  {
    v12 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  completionText = self->_completionText;
  self->_completionText = v11;

  v17 = *(archive + 4);
  if ((v17 & 4) != 0)
  {
    self->_prefixRange.length = *(archive + 10);
  }

  if ((v17 & 8) != 0)
  {
    v18 = *(archive + 11);
    v19 = self->_prefixRange.location + v18;
    v20 = self->_prefixRange.length - v18;
    self->_prefixRange.location = v19;
    self->_prefixRange.length = v20;
  }

  objc_msgSend_setActive_(self, v14, 1, v15, v16);
  self->_renderAsTokenType = 0;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::TokenAttachmentArchive>(v8);
    *(archive + 4) = v7;
  }

  v17.receiver = self;
  v17.super_class = TSTCompletionToken;
  [(TSTWPTokenAttachment *)&v17 saveToArchive:v7 archiver:archiverCopy];
  completionText = self->_completionText;
  if (completionText)
  {
    v14 = objc_msgSend_UTF8String(completionText, v9, v10, v11, v12);
    sub_2213FC284(archive, v14);
    location = self->_prefixRange.location;
    v16 = self->_prefixRange.length + location;
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    if (location >= 0xFFFFFFFF)
    {
      LODWORD(location) = -1;
    }

    *(archive + 4) |= 0xCu;
    *(archive + 10) = v16;
    *(archive + 11) = location;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  completionText = self->_completionText;
  v7 = NSStringFromRange(self->_prefixRange);
  v11 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p>: completionText '%@', prefixRange %@", v9, v10, v5, self, completionText, v7);

  return v11;
}

- (_NSRange)prefixRange
{
  p_prefixRange = &self->_prefixRange;
  location = self->_prefixRange.location;
  length = p_prefixRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (TSTCanvasReferenceProvider)canvasReferenceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasReferenceProvider);

  return WeakRetained;
}

@end