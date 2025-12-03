@interface TSDQuicklookPersistenceAdditions
+ (CGSize)imageColorSize;
+ (id)imageDataFromCGColor:(CGColor *)color objContext:(id)context;
+ (id)imageFillFromColorFill:(id)fill objContext:(id)context;
@end

@implementation TSDQuicklookPersistenceAdditions

+ (CGSize)imageColorSize
{
  v2 = 10.0;
  v3 = 10.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)imageDataFromCGColor:(CGColor *)color objContext:(id)context
{
  contextCopy = context;
  if (color)
  {
    objc_msgSend_imageColorSize(self, v6, v7);
    v11 = TSDBitmapContextCreate(1, v9, v10);
    v12 = v11;
    if (v11)
    {
      UIGraphicsPushContext(v11);
      CGContextSetFillColorWithColor(v12, color);
      TSURectWithSize();
      CGContextFillRect(v12, v26);
      Image = CGBitmapContextCreateImage(v12);
      v14 = CGImagePNGRepresentation();
      v16 = objc_msgSend_dataFromNSData_filename_context_(MEMORY[0x277D80828], v15, v14, @"colorFill.png", contextCopy);
      CGImageRelease(Image);
      UIGraphicsPopContext();
      CFRelease(v12);

      goto LABEL_6;
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSDQuicklookPersistenceAdditions imageDataFromCGColor:objContext:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDQuicklookPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 33, 0, "No color passed to imageDataFromCGColor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v16 = 0;
LABEL_6:

  return v16;
}

+ (id)imageFillFromColorFill:(id)fill objContext:(id)context
{
  contextCopy = context;
  v10 = objc_msgSend_CGColor(fill, v7, v8);
  if (v10)
  {
    v11 = objc_msgSend_imageDataFromCGColor_objContext_(self, v9, v10, contextCopy);
    if (v11)
    {
      v12 = [TSDImageFill alloc];
      v14 = objc_msgSend_initWithImageData_technique_tintColor_size_(v12, v13, v11, 3, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end