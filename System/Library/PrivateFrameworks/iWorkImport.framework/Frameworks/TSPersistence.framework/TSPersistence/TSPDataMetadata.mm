@interface TSPDataMetadata
- (id)copyWithContext:(id)context;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
- (void)setFallbackColor:(id)color;
@end

@implementation TSPDataMetadata

- (void)setFallbackColor:(id)color
{
  colorCopy = color;
  fallbackColor = self->_fallbackColor;
  v16 = colorCopy;
  v7 = fallbackColor;
  v8 = v16;
  if (v16 | v7)
  {
    isEqual = objc_msgSend_isEqual_(v16, v6, v7);

    v8 = v16;
    if ((isEqual & 1) == 0)
    {
      objc_msgSend_willModify(self, v10, v11);
      v14 = objc_msgSend_copy(v16, v12, v13);
      v15 = self->_fallbackColor;
      self->_fallbackColor = v14;

      v8 = v16;
    }
  }
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [TSPDataMetadata alloc];
  v9 = objc_msgSend_initWithContext_(v5, v6, contextCopy);
  if (v9)
  {
    v10 = objc_msgSend_copy(self->_fallbackColor, v7, v8);
    v11 = v9[8];
    v9[8] = v10;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FBC48[32]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  if (*(message + 16))
  {
    v6 = TSPTSUColorCreateFromMessage(*(message + 3));
    fallbackColor = self->_fallbackColor;
    self->_fallbackColor = v6;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A46364, off_2812FBC48[32]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  fallbackColor = self->_fallbackColor;
  if (fallbackColor)
  {
    *(message + 4) |= 1u;
    v7 = *(message + 3);
    if (!v7)
    {
      v8 = *(message + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(v8);
      *(message + 3) = v7;
    }

    TSPTSUColorCopyToMessage(fallbackColor, v7);
  }
}

@end