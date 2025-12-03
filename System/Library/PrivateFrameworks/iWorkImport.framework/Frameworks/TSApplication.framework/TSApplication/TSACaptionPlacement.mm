@interface TSACaptionPlacement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCaptionPlacement:(id)placement;
- (TSACaptionPlacement)initWithContext:(id)context drawableAnchorLocation:(int64_t)location captionAnchorLocation:(int64_t)anchorLocation;
- (id)copyWithContext:(id)context;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSACaptionPlacement

- (TSACaptionPlacement)initWithContext:(id)context drawableAnchorLocation:(int64_t)location captionAnchorLocation:(int64_t)anchorLocation
{
  v8.receiver = self;
  v8.super_class = TSACaptionPlacement;
  result = [(TSACaptionPlacement *)&v8 initWithContext:context];
  if (result)
  {
    result->_drawableAnchorLocation = location;
    result->_captionAnchorLocation = anchorLocation;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToCaptionPlacement = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToCaptionPlacement = objc_msgSend_isEqualToCaptionPlacement_(self, v5, equalCopy, v6);
    }

    else
    {
      isEqualToCaptionPlacement = 0;
    }
  }

  return isEqualToCaptionPlacement;
}

- (BOOL)isEqualToCaptionPlacement:(id)placement
{
  placementCopy = placement;
  if (placementCopy && (v8 = objc_msgSend_captionAnchorLocation(self, v4, v5, v6), v8 == objc_msgSend_captionAnchorLocation(placementCopy, v9, v10, v11)))
  {
    v15 = objc_msgSend_drawableAnchorLocation(self, v12, v13, v14);
    v19 = v15 == objc_msgSend_drawableAnchorLocation(placementCopy, v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F3500[62], v5);

  objc_msgSend_loadFromMessage_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2760B2F8C, off_2812F3500[62]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  v4 = *(message + 4);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_drawableAnchorLocation = *(message + 7);
    return;
  }

  self->_captionAnchorLocation = *(message + 6);
  if ((v4 & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v6, *MEMORY[0x277D808D0], v7);
  v11 = objc_msgSend_captionAnchorLocation(self, v8, v9, v10);
  *(message + 4) |= 1u;
  *(message + 6) = v11;
  v15 = objc_msgSend_drawableAnchorLocation(self, v12, v13, v14);
  *(message + 4) |= 2u;
  *(message + 7) = v15;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithContext_(v5, v6, contextCopy, v7);
  v9 = v8;
  if (v8)
  {
    *(v8 + 72) = self->_drawableAnchorLocation;
    *(v8 + 64) = self->_captionAnchorLocation;
  }

  return v9;
}

@end