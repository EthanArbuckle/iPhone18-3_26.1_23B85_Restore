@interface TSDImageDataAttributes
- (BOOL)imageIsSRGB;
- (CGSize)pixelSize;
- (CGSize)size;
- (TSDImageDataAttributes)init;
- (TSDImageDataAttributes)initWithIsSRGB:(BOOL)b;
- (TSDImageDataAttributes)initWithMessage:(const void *)message;
- (TSDImageDataAttributes)initWithPixelSize:(CGSize)size;
- (TSDImageDataAttributes)initWithShouldBeInterpretedAsGenericIfUntagged:(BOOL)untagged;
- (id)copyWithIsSRGB:(BOOL)b;
- (id)copyWithPixelSize:(CGSize)size;
- (id)copyWithShouldBeInterpretedAsGenericIfUntagged:(BOOL)untagged;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)saveToMessage:(void *)message;
@end

@implementation TSDImageDataAttributes

- (TSDImageDataAttributes)init
{
  v3.receiver = self;
  v3.super_class = TSDImageDataAttributes;
  return [(TSDImageDataAttributes *)&v3 init];
}

- (TSDImageDataAttributes)initWithPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  result = objc_msgSend_init(self, a2, v3);
  if (result)
  {
    result->_pixelSize.width = width;
    result->_pixelSize.height = height;
    result->_hasPixelSize = 1;
  }

  return result;
}

- (TSDImageDataAttributes)initWithIsSRGB:(BOOL)b
{
  result = objc_msgSend_init(self, a2, b);
  if (result)
  {
    result->_imageIsSRGB = b;
    result->_hasImageIsSRGB = 1;
  }

  return result;
}

- (TSDImageDataAttributes)initWithShouldBeInterpretedAsGenericIfUntagged:(BOOL)untagged
{
  result = objc_msgSend_init(self, a2, untagged);
  if (result)
  {
    result->_shouldBeInterpretedAsGenericIfUntagged = untagged;
  }

  return result;
}

- (TSDImageDataAttributes)initWithMessage:(const void *)message
{
  v10.receiver = self;
  v10.super_class = TSDImageDataAttributes;
  v3 = [(TSPDataAttributes *)&v10 initWithMessage:?];
  if (v3)
  {
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v5 = Message;
    v6 = *(Message + 16);
    if (v6)
    {
      TSPCGSizeCreateFromMessage(*(Message + 24));
      v3->_pixelSize.width = v7;
      v3->_pixelSize.height = v8;
      v3->_hasPixelSize = 1;
      v6 = *(v5 + 16);
    }

    if ((v6 & 2) != 0)
    {
      v3->_imageIsSRGB = *(v5 + 32);
      v3->_hasImageIsSRGB = 1;
    }

    if ((v6 & 4) != 0)
    {
      v3->_shouldBeInterpretedAsGenericIfUntagged = *(v5 + 33);
    }
  }

  return v3;
}

- (void)saveToMessage:(void *)message
{
  v29.receiver = self;
  v29.super_class = TSDImageDataAttributes;
  v4 = [(TSPDataAttributes *)&v29 saveToMessage:?];
  TSD::ImageDataAttributes::default_instance(v4);
  v5 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v7 = v5;
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  if (self->_hasPixelSize)
  {
    *(v5 + 16) |= 1u;
    v10 = *(v5 + 24);
    if (!v10)
    {
      v11 = *(v7 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C9BAD0](v11);
      *(v7 + 24) = v10;
    }

    v30.width = width;
    v30.height = height;
    TSPCGSizeCopyToMessage(v30, v10);
  }

  else if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImageDataAttributes saveToMessage:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDataAttributes.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 97, 0, "_pixelSize is set without _hasPixelSize!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  imageIsSRGB = self->_imageIsSRGB;
  if (self->_hasImageIsSRGB)
  {
    *(v7 + 16) |= 2u;
    *(v7 + 32) = imageIsSRGB;
  }

  else if (self->_imageIsSRGB)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImageDataAttributes saveToMessage:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDataAttributes.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 104, 0, "_imageIsSRGB is set without _hasImageIsSRGB!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  shouldBeInterpretedAsGenericIfUntagged = self->_shouldBeInterpretedAsGenericIfUntagged;
  *(v7 + 16) |= 4u;
  *(v7 + 33) = shouldBeInterpretedAsGenericIfUntagged;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSDImageDataAttributes;
  result = [(TSPDataAttributes *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 1) = self->_pixelSize;
    *(result + 8) = self->_hasPixelSize;
    *(result + 32) = self->_imageIsSRGB;
    *(result + 33) = self->_hasImageIsSRGB;
    *(result + 34) = self->_shouldBeInterpretedAsGenericIfUntagged;
  }

  return result;
}

- (id)copyWithPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  result = objc_msgSend_copy(self, a2, v3);
  if (result)
  {
    *(result + 2) = width;
    *(result + 3) = height;
    *(result + 8) = 1;
  }

  return result;
}

- (id)copyWithIsSRGB:(BOOL)b
{
  result = objc_msgSend_copy(self, a2, b);
  if (result)
  {
    *(result + 32) = b;
    *(result + 33) = 1;
  }

  return result;
}

- (id)copyWithShouldBeInterpretedAsGenericIfUntagged:(BOOL)untagged
{
  result = objc_msgSend_copy(self, a2, untagged);
  if (result)
  {
    *(result + 34) = untagged;
  }

  return result;
}

- (CGSize)size
{
  if ((objc_msgSend_hasPixelSize(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDataAttributes size]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDataAttributes.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 153, 0, "TSDImageDataAttributes does not have defined size, returning 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)imageIsSRGB
{
  if ((objc_msgSend_hasImageIsSRGB(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDataAttributes imageIsSRGB]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDataAttributes.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 158, 0, "TSDImageDataAttributes does not have whether the image is sRGB. Returning NO.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return self->_imageIsSRGB;
}

- (id)description
{
  v3 = objc_msgSend_descriptionWithObject_(MEMORY[0x277D811A8], a2, self);
  if (objc_msgSend_hasImageIsSRGB(self, v4, v5))
  {
    if (objc_msgSend_imageIsSRGB(self, v6, v7))
    {
      objc_msgSend_addField_value_(v3, v8, @"isSRGB", @"YES");
    }

    else
    {
      objc_msgSend_addField_value_(v3, v8, @"isSRGB", @"NO");
    }
  }

  if (objc_msgSend_hasPixelSize(self, v6, v7))
  {
    objc_msgSend_pixelSize(self, v9, v10);
    v11 = NSStringFromCGSize(v19);
    objc_msgSend_addField_value_(v3, v12, @"pixelSize", v11);
  }

  if (objc_msgSend_shouldBeInterpretedAsGenericIfUntagged(self, v9, v10))
  {
    if (objc_msgSend_shouldBeInterpretedAsGenericIfUntagged(self, v13, v14))
    {
      objc_msgSend_addField_value_(v3, v15, @"interpretedAsGeneric", @"YES");
    }

    else
    {
      objc_msgSend_addField_value_(v3, v15, @"interpretedAsGeneric", @"NO");
    }
  }

  v16 = objc_msgSend_descriptionString(v3, v13, v14);

  return v16;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end