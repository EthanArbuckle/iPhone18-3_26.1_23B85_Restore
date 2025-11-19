@interface IMASticker
+ (double)screenScale;
- (IMASticker)initWithFileURL:(id)a3 stickerName:(id)a4 accessibilityLabel:(id)a5 representations:(id)a6;
- (IMASticker)initWithStickerIdentifier:(id)a3 fileURL:(id)a4 representations:(id)a5 effectType:(id)a6 externalURI:(id)a7 stickerName:(id)a8 accessibilityLabel:(id)a9 accessibilityName:(id)a10 searchText:(id)a11 sanitizedPrompt:(id)a12 metadata:(id)a13 ckAttributionInfo:(id)a14;
@end

@implementation IMASticker

+ (double)screenScale
{
  v2 = [MEMORY[0x277CF97E0] sharedBehaviors];
  [v2 stickerScreenScale];
  v4 = v3;

  return v4;
}

- (IMASticker)initWithFileURL:(id)a3 stickerName:(id)a4 accessibilityLabel:(id)a5 representations:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = IMASticker;
  v14 = [(IMASticker *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    fileURL = v14->_fileURL;
    v14->_fileURL = v15;

    v17 = [v11 copy];
    stickerName = v14->_stickerName;
    v14->_stickerName = v17;

    v19 = [v12 copy];
    accessibilityLabel = v14->_accessibilityLabel;
    v14->_accessibilityLabel = v19;

    v21 = [v13 copy];
    representations = v14->_representations;
    v14->_representations = v21;

    externalURI = v14->_externalURI;
    v14->_externalURI = 0;
  }

  return v14;
}

- (IMASticker)initWithStickerIdentifier:(id)a3 fileURL:(id)a4 representations:(id)a5 effectType:(id)a6 externalURI:(id)a7 stickerName:(id)a8 accessibilityLabel:(id)a9 accessibilityName:(id)a10 searchText:(id)a11 sanitizedPrompt:(id)a12 metadata:(id)a13 ckAttributionInfo:(id)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v58 = a6;
  v57 = a7;
  v56 = a8;
  v22 = v20;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v59.receiver = self;
  v59.super_class = IMASticker;
  v29 = [(IMASticker *)&v59 init];
  if (v29)
  {
    v30 = [v19 copy];
    stickerIdentifier = v29->_stickerIdentifier;
    v29->_stickerIdentifier = v30;

    v32 = [v22 copy];
    fileURL = v29->_fileURL;
    v29->_fileURL = v32;

    v34 = [v21 copy];
    representations = v29->_representations;
    v29->_representations = v34;

    v36 = [v58 copy];
    stickerEffectType = v29->_stickerEffectType;
    v29->_stickerEffectType = v36;

    v38 = [v56 copy];
    stickerName = v29->_stickerName;
    v29->_stickerName = v38;

    v40 = [v57 copy];
    externalURI = v29->_externalURI;
    v29->_externalURI = v40;

    v42 = [v23 copy];
    accessibilityLabel = v29->_accessibilityLabel;
    v29->_accessibilityLabel = v42;

    v44 = [v24 copy];
    accessibilityName = v29->_accessibilityName;
    v29->_accessibilityName = v44;

    v46 = [v25 copy];
    searchText = v29->_searchText;
    v29->_searchText = v46;

    v48 = [v26 copy];
    sanitizedPrompt = v29->_sanitizedPrompt;
    v29->_sanitizedPrompt = v48;

    v50 = [v27 copy];
    metadata = v29->_metadata;
    v29->_metadata = v50;

    v52 = [v28 copy];
    ckAttributionInfo = v29->_ckAttributionInfo;
    v29->_ckAttributionInfo = v52;
  }

  return v29;
}

@end