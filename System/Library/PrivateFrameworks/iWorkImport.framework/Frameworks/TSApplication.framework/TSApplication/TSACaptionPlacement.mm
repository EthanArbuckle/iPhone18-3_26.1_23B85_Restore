@interface TSACaptionPlacement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCaptionPlacement:(id)a3;
- (TSACaptionPlacement)initWithContext:(id)a3 drawableAnchorLocation:(int64_t)a4 captionAnchorLocation:(int64_t)a5;
- (id)copyWithContext:(id)a3;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSACaptionPlacement

- (TSACaptionPlacement)initWithContext:(id)a3 drawableAnchorLocation:(int64_t)a4 captionAnchorLocation:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = TSACaptionPlacement;
  result = [(TSACaptionPlacement *)&v8 initWithContext:a3];
  if (result)
  {
    result->_drawableAnchorLocation = a4;
    result->_captionAnchorLocation = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToCaptionPlacement = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToCaptionPlacement = objc_msgSend_isEqualToCaptionPlacement_(self, v5, v4, v6);
    }

    else
    {
      isEqualToCaptionPlacement = 0;
    }
  }

  return isEqualToCaptionPlacement;
}

- (BOOL)isEqualToCaptionPlacement:(id)a3
{
  v7 = a3;
  if (v7 && (v8 = objc_msgSend_captionAnchorLocation(self, v4, v5, v6), v8 == objc_msgSend_captionAnchorLocation(v7, v9, v10, v11)))
  {
    v15 = objc_msgSend_drawableAnchorLocation(self, v12, v13, v14);
    v19 = v15 == objc_msgSend_drawableAnchorLocation(v7, v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)loadFromUnarchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v8, v4, off_2812F3500[62], v5);

  objc_msgSend_loadFromMessage_unarchiver_(self, v7, v6, v8);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_2760B2F8C, off_2812F3500[62]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v4 = *(a3 + 4);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_drawableAnchorLocation = *(a3 + 7);
    return;
  }

  self->_captionAnchorLocation = *(a3 + 6);
  if ((v4 & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v16 = a4;
  objc_msgSend_setMessageVersion_(v16, v6, *MEMORY[0x277D808D0], v7);
  v11 = objc_msgSend_captionAnchorLocation(self, v8, v9, v10);
  *(a3 + 4) |= 1u;
  *(a3 + 6) = v11;
  v15 = objc_msgSend_drawableAnchorLocation(self, v12, v13, v14);
  *(a3 + 4) |= 2u;
  *(a3 + 7) = v15;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithContext_(v5, v6, v4, v7);
  v9 = v8;
  if (v8)
  {
    *(v8 + 72) = self->_drawableAnchorLocation;
    *(v8 + 64) = self->_captionAnchorLocation;
  }

  return v9;
}

@end