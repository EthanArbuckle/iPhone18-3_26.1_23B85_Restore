@interface TSTFormulaEqualsTokenAttachment
- (BOOL)wantsSelectionAtPoint:(CGPoint)a3;
- (CGSize)size;
- (double)baselineOffset;
- (id)description;
- (id)rendererForAttachment;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTFormulaEqualsTokenAttachment

- (id)rendererForAttachment
{
  v2 = objc_alloc_init(TSTFormulaEqualsTokenAttachmentRenderer);

  return v2;
}

- (CGSize)size
{
  v5 = objc_msgSend_tsk_phoneUI(MEMORY[0x277D75418], a2, v2, v3, v4);
  v6 = 25.0;
  if (!v5)
  {
    v6 = 24.0;
  }

  v7 = 27.0;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)baselineOffset
{
  v5 = objc_msgSend_tsk_phoneUI(MEMORY[0x277D75418], a2, v2, v3, v4);
  result = -8.0;
  if (v5)
  {
    return -9.0;
  }

  return result;
}

- (BOOL)wantsSelectionAtPoint:(CGPoint)a3
{
  x = a3.x;
  if (a3.x < 4.0)
  {
    return 0;
  }

  y = a3.y;
  objc_msgSend_size(self, a2, v3, v4, v5);
  if (x > v9 + -5.0)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = TSTFormulaEqualsTokenAttachment;
  return [(TSWPUIGraphicalAttachment *)&v11 wantsSelectionAtPoint:x, y];
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[286], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2214D1078, off_2812E4498[286], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v4 = *(a3 + 3);
  }

  else
  {
    v4 = MEMORY[0x277D81080];
  }

  v5.receiver = self;
  v5.super_class = TSTFormulaEqualsTokenAttachment;
  [(TSWPUIGraphicalAttachment *)&v5 loadFromArchive:v4 unarchiver:a4];
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

  v9.receiver = self;
  v9.super_class = TSTFormulaEqualsTokenAttachment;
  [(TSWPUIGraphicalAttachment *)&v9 saveToArchive:v7 archiver:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v7, v8, v5, self);

  return v9;
}

@end