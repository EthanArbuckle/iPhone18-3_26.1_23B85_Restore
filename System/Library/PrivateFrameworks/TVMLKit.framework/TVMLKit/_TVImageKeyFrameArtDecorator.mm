@interface _TVImageKeyFrameArtDecorator
- (_TVImageKeyFrameArtDecorator)initWithInlineTitle:(id)a3;
- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5;
- (id)decoratorIdentifier;
@end

@implementation _TVImageKeyFrameArtDecorator

- (_TVImageKeyFrameArtDecorator)initWithInlineTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TVImageKeyFrameArtDecorator;
  v6 = [(TVImageScaleDecorator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inlineTitle, a3);
  }

  return v7;
}

- (id)decoratorIdentifier
{
  v7.receiver = self;
  v7.super_class = _TVImageKeyFrameArtDecorator;
  v2 = [(TVImageScaleDecorator *)&v7 decoratorIdentifier];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 localeIdentifier];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_KeyFrameArt", v2, v4];

  return v5;
}

- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5
{
  v6 = a3;
  v7 = [v6 uiImage];
  v8 = [v6 orientation] >= 2 && objc_msgSend(v6, "orientation") < 9;
  [v7 size];
  v10 = v9;
  v12 = v11;
  v31 = *MEMORY[0x277CBF3A0];
  [(TVImageScaleDecorator *)self _scaleToSizeAdjustedForUpscaling];
  v14 = v13;
  v16 = v15;
  v17 = +[TVGraphicsImageRenderer formatWithCGImage:](TVGraphicsImageRenderer, "formatWithCGImage:", [v6 image]);
  [v17 setOpaque:0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __69___TVImageKeyFrameArtDecorator_decorate_scaledWithSize_croppedToFit___block_invoke;
  v27 = &unk_279D6F400;
  v32 = v14;
  v33 = v16;
  v28 = self;
  v29 = v7;
  v36 = v8;
  v30 = v6;
  v34 = v10;
  v35 = v12;
  v18 = v6;
  v19 = v7;
  v20 = [TVGraphicsImageRenderer imageWithSize:v17 format:&v24 actions:v14, v16];
  v21 = v20;
  v22 = +[TVImage imageWithCGImageRef:preserveAlpha:](TVImage, "imageWithCGImageRef:preserveAlpha:", [v21 CGImage], 0);

  return v22;
}

@end