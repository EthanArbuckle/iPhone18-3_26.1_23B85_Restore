@interface TSPDataMetadata
- (id)copyWithContext:(id)a3;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
- (void)setFallbackColor:(id)a3;
@end

@implementation TSPDataMetadata

- (void)setFallbackColor:(id)a3
{
  v4 = a3;
  fallbackColor = self->_fallbackColor;
  v16 = v4;
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

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = [TSPDataMetadata alloc];
  v9 = objc_msgSend_initWithContext_(v5, v6, v4);
  if (v9)
  {
    v10 = objc_msgSend_copy(self->_fallbackColor, v7, v8);
    v11 = v9[8];
    v9[8] = v10;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812FBC48[32]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 16))
  {
    v6 = TSPTSUColorCreateFromMessage(*(a3 + 3));
    fallbackColor = self->_fallbackColor;
    self->_fallbackColor = v6;
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276A46364, off_2812FBC48[32]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v9 = a4;
  fallbackColor = self->_fallbackColor;
  if (fallbackColor)
  {
    *(a3 + 4) |= 1u;
    v7 = *(a3 + 3);
    if (!v7)
    {
      v8 = *(a3 + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(v8);
      *(a3 + 3) = v7;
    }

    TSPTSUColorCopyToMessage(fallbackColor, v7);
  }
}

@end