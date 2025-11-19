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
  v5 = [a1 imageAssets];
  v6 = [v5 digitalCardImage];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    v8 = [a1 imageAssetURLs];
    v9 = [v8 digitalCardImageUrl];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPaymentSetupProduct_PKUIUtilities__digitalCardCachedImage___block_invoke;
    v12[3] = &unk_1E80212B0;
    v13 = v9;
    v14 = a1;
    v15 = v4;
    v10 = v9;
    PKCommonCachedImageFromURL(v10, v12);

    v7 = 0;
  }

  return v7;
}

- (id)_getCardImageUrlFromMetadata:()PKUIUtilities forScale:
{
  v5 = [a4 readerModeResources];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BC160]];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"plasticCardImages"];
    if ([v7 count])
    {
      v8 = @"2x";
      if (a1 > 2.0)
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
  v5 = [a1 imageAssets];
  v6 = [v5 plasticCardImage];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    v8 = [a1 provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
    PKScreenScale();
    v9 = [a1 _getCardImageUrlFromMetadata:v8 forScale:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPaymentSetupProduct_PKUIUtilities__plasticCardCachedImage___block_invoke;
    v12[3] = &unk_1E80212B0;
    v13 = v9;
    v14 = a1;
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
  v5 = [a1 imageAssets];
  v6 = [v5 thumbnailImage];

  if (!v6)
  {
    v9 = [a1 configuration];
    v10 = [v9 featureIdentifier];
    if (v10 == 4)
    {
      v12 = MEMORY[0x1E69DCAB8];
      v13 = PKPassKitUIFoundationBundle();
      v11 = [v12 imageNamed:@"AppleBalance-CardTypePicker" inBundle:v13];
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_13;
      }

      v11 = PKUIImageNamed(@"CardTypePicker-CCS");
    }

    v14 = [a1 imageAssets];
    [v14 setThumbnailImage:{objc_msgSend(v11, "CGImage")}];

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
    v15 = [a1 paymentOptions];
    v16 = [v15 firstObject];

    v17 = [v16 cardType];
    v18 = [a1 imageAssetURLs];
    v19 = [v18 thumbnailImageUrl];

    if (v19 || v17 != 103)
    {
      if ([v9 type] == 6)
      {
        v22 = [a1 partnerIdentifier];
        v23 = [a1 setupProductMethodOfType:4 withIdentifier:v22];

        v24 = [v23 provisioningExtension];
        v25 = [v24 icons];
        v26 = [v25 firstObject];
        if (v26)
        {
          v27 = v26;
          v28 = [a1 imageAssets];
          [v28 setThumbnailImage:{objc_msgSend(v27, "CGImage")}];

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
      v30[4] = a1;
      v31 = v4;
      PKCommonCachedImageFromURL(v19, v30);

      v8 = 0;
    }

    else
    {
      v20 = PKUIImageNamed(@"SuicaCard");
      v21 = [a1 imageAssets];
      [v21 setThumbnailImage:{objc_msgSend(v20, "CGImage")}];

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

  v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:PKUIScreenScale()];
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
  v5 = [a1 imageAssets];
  v6 = [v5 logoImage];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    v8 = [a1 imageAssetURLs];
    v9 = [v8 logoImageUrl];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PKPaymentSetupProduct_PKUIUtilities__logoCachedImage___block_invoke;
    v11[3] = &unk_1E8012AF0;
    v11[4] = a1;
    v12 = v4;
    PKCommonCachedImageFromURL(v9, v11);

    v7 = 0;
  }

  return v7;
}

- (void)resetCache
{
  v1 = [a1 imageAssets];
  [v1 setThumbnailImage:0];
  [v1 setLogoImage:0];
  [v1 setPlasticCardImage:0];
  [v1 setDigitalCardImage:0];
}

@end