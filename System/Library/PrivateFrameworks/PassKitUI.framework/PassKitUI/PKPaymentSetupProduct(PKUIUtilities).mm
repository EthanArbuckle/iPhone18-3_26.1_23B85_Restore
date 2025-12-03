@interface PKPaymentSetupProduct(PKUIUtilities)
- (id)_getCardImageUrlFromMetadata:()PKUIUtilities forScale:;
- (id)digitalCardCachedImage:()PKUIUtilities;
- (id)logoCachedImage:()PKUIUtilities;
- (id)plasticCardCachedImage:()PKUIUtilities;
- (id)thumbnailCachedImageForSize:()PKUIUtilities completion:;
- (void)resetCache;
@end

@implementation PKPaymentSetupProduct(PKUIUtilities)

- (id)digitalCardCachedImage:()PKUIUtilities
{
  v4 = a3;
  imageAssets = [self imageAssets];
  digitalCardImage = [imageAssets digitalCardImage];

  if (digitalCardImage)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:digitalCardImage scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    imageAssetURLs = [self imageAssetURLs];
    digitalCardImageUrl = [imageAssetURLs digitalCardImageUrl];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPaymentSetupProduct_PKUIUtilities__digitalCardCachedImage___block_invoke;
    v12[3] = &unk_1E80212B0;
    v13 = digitalCardImageUrl;
    selfCopy = self;
    v15 = v4;
    v10 = digitalCardImageUrl;
    PKCommonCachedImageFromURL(v10, v12);

    v7 = 0;
  }

  return v7;
}

- (id)_getCardImageUrlFromMetadata:()PKUIUtilities forScale:
{
  readerModeResources = [a4 readerModeResources];
  v6 = [readerModeResources objectForKeyedSubscript:*MEMORY[0x1E69BC160]];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"plasticCardImages"];
    if ([v7 count])
    {
      v8 = @"2x";
      if (self > 2.0)
      {
        v8 = @"3x";
      }

      v9 = MEMORY[0x1E695DFF8];
      v10 = v8;
      v11 = [v7 objectAtIndexedSubscript:0];
      v12 = [v11 objectForKeyedSubscript:v10];

      v13 = [v9 URLWithString:v12];
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Malformed reader mode resources - missing URLs", v16, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)plasticCardCachedImage:()PKUIUtilities
{
  v4 = a3;
  imageAssets = [self imageAssets];
  plasticCardImage = [imageAssets plasticCardImage];

  if (plasticCardImage)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:plasticCardImage scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    v8 = [self provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
    PKScreenScale();
    v9 = [self _getCardImageUrlFromMetadata:v8 forScale:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPaymentSetupProduct_PKUIUtilities__plasticCardCachedImage___block_invoke;
    v12[3] = &unk_1E80212B0;
    v13 = v9;
    selfCopy = self;
    v15 = v4;
    v10 = v9;
    PKCommonCachedImageFromURL(v10, v12);

    v7 = 0;
  }

  return v7;
}

- (id)thumbnailCachedImageForSize:()PKUIUtilities completion:
{
  v4 = a3;
  imageAssets = [self imageAssets];
  thumbnailImage = [imageAssets thumbnailImage];

  if (!thumbnailImage)
  {
    configuration = [self configuration];
    featureIdentifier = [configuration featureIdentifier];
    if (featureIdentifier == 4)
    {
      v12 = MEMORY[0x1E69DCAB8];
      v13 = PKPassKitUIFoundationBundle();
      v11 = [v12 imageNamed:@"AppleBalance-CardTypePicker" inBundle:v13];
    }

    else
    {
      if (featureIdentifier != 2)
      {
        goto LABEL_13;
      }

      v11 = PKUIImageNamed(@"CardTypePicker-CCS");
    }

    imageAssets2 = [self imageAssets];
    [imageAssets2 setThumbnailImage:{objc_msgSend(v11, "CGImage")}];

    if (v11)
    {
      if (v4)
      {
        v4[2](v4, 0, v11);
      }

      v8 = v11;
      goto LABEL_25;
    }

LABEL_13:
    paymentOptions = [self paymentOptions];
    firstObject = [paymentOptions firstObject];

    cardType = [firstObject cardType];
    imageAssetURLs = [self imageAssetURLs];
    thumbnailImageUrl = [imageAssetURLs thumbnailImageUrl];

    if (thumbnailImageUrl || cardType != 103)
    {
      if ([configuration type] == 6)
      {
        partnerIdentifier = [self partnerIdentifier];
        v23 = [self setupProductMethodOfType:4 withIdentifier:partnerIdentifier];

        provisioningExtension = [v23 provisioningExtension];
        icons = [provisioningExtension icons];
        firstObject2 = [icons firstObject];
        if (firstObject2)
        {
          v27 = firstObject2;
          imageAssets3 = [self imageAssets];
          [imageAssets3 setThumbnailImage:{objc_msgSend(v27, "CGImage")}];

          if (v4)
          {
            v4[2](v4, 0, v27);
          }

          v8 = v27;

          goto LABEL_24;
        }
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __79__PKPaymentSetupProduct_PKUIUtilities__thumbnailCachedImageForSize_completion___block_invoke;
      v30[3] = &unk_1E8012AF0;
      v30[4] = self;
      v31 = v4;
      PKCommonCachedImageFromURL(thumbnailImageUrl, v30);

      v8 = 0;
    }

    else
    {
      v20 = PKUIImageNamed(@"SuicaCard");
      imageAssets4 = [self imageAssets];
      [imageAssets4 setThumbnailImage:{objc_msgSend(v20, "CGImage")}];

      v8 = v20;
      if (v4)
      {
        v4[2](v4, 0, v8);
      }
    }

LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:thumbnailImage scale:0 orientation:PKUIScreenScale()];
  if (v4)
  {
    v4[2](v4, 0, v7);
  }

  v8 = v7;
LABEL_26:

  return v8;
}

- (id)logoCachedImage:()PKUIUtilities
{
  v4 = a3;
  imageAssets = [self imageAssets];
  logoImage = [imageAssets logoImage];

  if (logoImage)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:logoImage scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    imageAssetURLs = [self imageAssetURLs];
    logoImageUrl = [imageAssetURLs logoImageUrl];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PKPaymentSetupProduct_PKUIUtilities__logoCachedImage___block_invoke;
    v11[3] = &unk_1E8012AF0;
    v11[4] = self;
    v12 = v4;
    PKCommonCachedImageFromURL(logoImageUrl, v11);

    v7 = 0;
  }

  return v7;
}

- (void)resetCache
{
  imageAssets = [self imageAssets];
  [imageAssets setThumbnailImage:0];
  [imageAssets setLogoImage:0];
  [imageAssets setPlasticCardImage:0];
  [imageAssets setDigitalCardImage:0];
}

@end