@interface _TVImageKeyFrameArtDecorator
- (_TVImageKeyFrameArtDecorator)initWithInlineTitle:(id)title;
- (id)decorate:(id)decorate scaledWithSize:(CGSize)size croppedToFit:(BOOL)fit;
- (id)decoratorIdentifier;
@end

@implementation _TVImageKeyFrameArtDecorator

- (_TVImageKeyFrameArtDecorator)initWithInlineTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = _TVImageKeyFrameArtDecorator;
  v6 = [(TVImageScaleDecorator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inlineTitle, title);
  }

  return v7;
}

- (id)decoratorIdentifier
{
  v7.receiver = self;
  v7.super_class = _TVImageKeyFrameArtDecorator;
  decoratorIdentifier = [(TVImageScaleDecorator *)&v7 decoratorIdentifier];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_KeyFrameArt", decoratorIdentifier, localeIdentifier];

  return v5;
}

- (id)decorate:(id)decorate scaledWithSize:(CGSize)size croppedToFit:(BOOL)fit
{
  decorateCopy = decorate;
  uiImage = [decorateCopy uiImage];
  v8 = [decorateCopy orientation] >= 2 && objc_msgSend(decorateCopy, "orientation") < 9;
  [uiImage size];
  v10 = v9;
  v12 = v11;
  v31 = *MEMORY[0x277CBF3A0];
  [(TVImageScaleDecorator *)self _scaleToSizeAdjustedForUpscaling];
  v14 = v13;
  v16 = v15;
  v17 = +[TVGraphicsImageRenderer formatWithCGImage:](TVGraphicsImageRenderer, "formatWithCGImage:", [decorateCopy image]);
  [v17 setOpaque:0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __69___TVImageKeyFrameArtDecorator_decorate_scaledWithSize_croppedToFit___block_invoke;
  v27 = &unk_279D6F400;
  v32 = v14;
  v33 = v16;
  selfCopy = self;
  v29 = uiImage;
  v36 = v8;
  v30 = decorateCopy;
  v34 = v10;
  v35 = v12;
  v18 = decorateCopy;
  v19 = uiImage;
  v20 = [TVGraphicsImageRenderer imageWithSize:v17 format:&v24 actions:v14, v16];
  v21 = v20;
  v22 = +[TVImage imageWithCGImageRef:preserveAlpha:](TVImage, "imageWithCGImageRef:preserveAlpha:", [v21 CGImage], 0);

  return v22;
}

@end