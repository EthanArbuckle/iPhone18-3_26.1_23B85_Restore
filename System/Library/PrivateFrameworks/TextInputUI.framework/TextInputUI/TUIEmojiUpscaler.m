@interface TUIEmojiUpscaler
+ (CGColorSpace)sRGB;
+ (id)sharedInstance;
- (TUIEmojiUpscaler)init;
- (id)imageFromEmoji:(id)a3;
- (void)generateEmoji:(id)a3 completion:(id)a4;
- (void)generateEmoji:(id)a3 forImage:(id)a4 completion:(id)a5;
@end

@implementation TUIEmojiUpscaler

- (void)generateEmoji:(id)a3 forImage:(id)a4 completion:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v8 = a4;
  v39 = a5;
  v9 = [MEMORY[0x1E695F658] imageWithCGImage:{objc_msgSend(v8, "CGImage")}];
  [v9 extent];
  v10 = MEMORY[0x1E695F620];
  v47 = *MEMORY[0x1E695F840];
  v48 = MEMORY[0x1E695E110];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v12 = [v10 contextWithOptions:v11];

  [v9 extent];
  v38 = v12;
  v17 = [v12 createCGImage:v9 fromRect:*MEMORY[0x1E695F910] format:objc_msgSend(objc_opt_class() colorSpace:{"sRGB"), v13, v14, v15, v16}];

  v18 = [objc_opt_class() sRGB];
  DeviceRGB = v18;
  if (!v18)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v20 = *MEMORY[0x1E6966030];
  v49[0] = *MEMORY[0x1E69660D8];
  v49[1] = v20;
  *buf = MEMORY[0x1E695E0F8];
  v51 = MEMORY[0x1E695E118];
  v49[2] = *MEMORY[0x1E6966028];
  v52 = MEMORY[0x1E695E118];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v49 count:3];
  v22 = DeviceRGB;
  if (!DeviceRGB)
  {
    v22 = CGColorSpaceCreateDeviceRGB();
  }

  pixelBufferOut = 0;
  if (!v17 || (Width = CGImageGetWidth(v17), Height = CGImageGetHeight(v17), CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, 0x42475241u, v21, &pixelBufferOut)))
  {
    if (DeviceRGB)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v37 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, v22, 0x2002u);
  v54.size.width = Width;
  v54.size.height = Height;
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  CGContextDrawImage(v37, v54, v17);
  CGContextRelease(v37);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (!DeviceRGB)
  {
LABEL_8:
    CGColorSpaceRelease(v22);
  }

LABEL_9:
  v25 = pixelBufferOut;

  if (!v18)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  CGImageRelease(v17);
  v26 = NSClassFromString(&cfstr_Madmlscalingre.isa);
  if (v26)
  {
    v27 = [[v26 alloc] initWithScaledImageWidth:320 scaledImageHeight:320];
    madService = self->_madService;
    v46 = v27;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __54__TUIEmojiUpscaler_generateEmoji_forImage_completion___block_invoke;
    v41[3] = &unk_1E72D7EC8;
    v42 = v27;
    v30 = v39;
    v44 = v39;
    v43 = v8;
    v31 = v27;
    v32 = madService;
    v33 = v40;
    [(MADService *)v32 performRequests:v29 onPixelBuffer:v25 withOrientation:1 andIdentifier:v40 completionHandler:v41];

    CVPixelBufferRelease(v25);
  }

  else
  {
    v34 = TUIEmojiUpscalerLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18FFDC000, v34, OS_LOG_TYPE_DEFAULT, "Failed to load MADMLScalingRequest class", buf, 2u);
    }

    v30 = v39;
    (*(v39 + 2))(v39, v8, v8, 0);
    v33 = v40;
    if (v25)
    {
      CVPixelBufferRelease(v25);
    }
  }
}

void __54__TUIEmojiUpscaler_generateEmoji_forImage_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TUIEmojiUpscaler_generateEmoji_forImage_completion___block_invoke_2;
  v6[3] = &unk_1E72D7EA0;
  v7 = v4;
  v8 = a1[4];
  v10 = a1[6];
  v9 = a1[5];
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __54__TUIEmojiUpscaler_generateEmoji_forImage_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = [*(a1 + 40) error];

    v2 = v4;
  }

  if (v2)
  {
    v5 = TUIEmojiUpscalerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v2;
      _os_log_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEFAULT, "Failed to upscale emoji, %@", &v12, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 40) results];
    v7 = [v6 firstObject];

    v8 = [v7 image];
    v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v8];
    v10 = UIImagePNGRepresentation(v9);
    v11 = [MEMORY[0x1E69DCAB8] imageWithData:v10];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)generateEmoji:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUIEmojiUpscalerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18FFDC000, v8, OS_LOG_TYPE_DEFAULT, "Generating emoji", v10, 2u);
  }

  v9 = [(TUIEmojiUpscaler *)self imageFromEmoji:v6];
  if (v9)
  {
    [(TUIEmojiUpscaler *)self generateEmoji:v6 forImage:v9 completion:v7];
  }
}

- (id)imageFromEmoji:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E69DB648];
  v3 = MEMORY[0x1E69DB878];
  v4 = a3;
  v5 = [v3 systemFontOfSize:160.0];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  [v4 sizeWithAttributes:v6];
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_class() sRGB];
  v12 = CGBitmapContextCreate(0, 0xA0uLL, 0xA0uLL, 8uLL, 0, v11, 1u);
  UIGraphicsPushContext(v12);
  CGContextScaleCTM(v12, 1.0, -1.0);
  CGContextTranslateCTM(v12, 0.0, -160.0);
  [v4 drawAtPoint:v6 withAttributes:{(160.0 - v8) * 0.5, (160.0 - v10) * 0.5}];

  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  if (Image)
  {
    v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
    CGImageRelease(Image);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TUIEmojiUpscaler)init
{
  v6.receiver = self;
  v6.super_class = TUIEmojiUpscaler;
  v2 = [(TUIEmojiUpscaler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69AE3E0] service];
    madService = v2->_madService;
    v2->_madService = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9953 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9953, &__block_literal_global_20_9954);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __34__TUIEmojiUpscaler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TUIEmojiUpscaler);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CGColorSpace)sRGB
{
  if (sRGB_onceToken != -1)
  {
    dispatch_once(&sRGB_onceToken, &__block_literal_global_9957);
  }

  return sRGB_sRGB;
}

CGColorSpaceRef __24__TUIEmojiUpscaler_sRGB__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  sRGB_sRGB = result;
  return result;
}

@end