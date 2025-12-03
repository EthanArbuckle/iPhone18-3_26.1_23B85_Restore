@interface IMASticker
+ (double)screenScale;
- (IMASticker)initWithFileURL:(id)l stickerName:(id)name accessibilityLabel:(id)label representations:(id)representations;
- (IMASticker)initWithStickerIdentifier:(id)identifier fileURL:(id)l representations:(id)representations effectType:(id)type externalURI:(id)i stickerName:(id)name accessibilityLabel:(id)label accessibilityName:(id)self0 searchText:(id)self1 sanitizedPrompt:(id)self2 metadata:(id)self3 ckAttributionInfo:(id)self4;
@end

@implementation IMASticker

+ (double)screenScale
{
  mEMORY[0x277CF97E0] = [MEMORY[0x277CF97E0] sharedBehaviors];
  [mEMORY[0x277CF97E0] stickerScreenScale];
  v4 = v3;

  return v4;
}

- (IMASticker)initWithFileURL:(id)l stickerName:(id)name accessibilityLabel:(id)label representations:(id)representations
{
  lCopy = l;
  nameCopy = name;
  labelCopy = label;
  representationsCopy = representations;
  v25.receiver = self;
  v25.super_class = IMASticker;
  v14 = [(IMASticker *)&v25 init];
  if (v14)
  {
    v15 = [lCopy copy];
    fileURL = v14->_fileURL;
    v14->_fileURL = v15;

    v17 = [nameCopy copy];
    stickerName = v14->_stickerName;
    v14->_stickerName = v17;

    v19 = [labelCopy copy];
    accessibilityLabel = v14->_accessibilityLabel;
    v14->_accessibilityLabel = v19;

    v21 = [representationsCopy copy];
    representations = v14->_representations;
    v14->_representations = v21;

    externalURI = v14->_externalURI;
    v14->_externalURI = 0;
  }

  return v14;
}

- (IMASticker)initWithStickerIdentifier:(id)identifier fileURL:(id)l representations:(id)representations effectType:(id)type externalURI:(id)i stickerName:(id)name accessibilityLabel:(id)label accessibilityName:(id)self0 searchText:(id)self1 sanitizedPrompt:(id)self2 metadata:(id)self3 ckAttributionInfo:(id)self4
{
  identifierCopy = identifier;
  lCopy = l;
  representationsCopy = representations;
  typeCopy = type;
  iCopy = i;
  nameCopy = name;
  v22 = lCopy;
  labelCopy = label;
  accessibilityNameCopy = accessibilityName;
  textCopy = text;
  promptCopy = prompt;
  metadataCopy = metadata;
  infoCopy = info;
  v59.receiver = self;
  v59.super_class = IMASticker;
  v29 = [(IMASticker *)&v59 init];
  if (v29)
  {
    v30 = [identifierCopy copy];
    stickerIdentifier = v29->_stickerIdentifier;
    v29->_stickerIdentifier = v30;

    v32 = [v22 copy];
    fileURL = v29->_fileURL;
    v29->_fileURL = v32;

    v34 = [representationsCopy copy];
    representations = v29->_representations;
    v29->_representations = v34;

    v36 = [typeCopy copy];
    stickerEffectType = v29->_stickerEffectType;
    v29->_stickerEffectType = v36;

    v38 = [nameCopy copy];
    stickerName = v29->_stickerName;
    v29->_stickerName = v38;

    v40 = [iCopy copy];
    externalURI = v29->_externalURI;
    v29->_externalURI = v40;

    v42 = [labelCopy copy];
    accessibilityLabel = v29->_accessibilityLabel;
    v29->_accessibilityLabel = v42;

    v44 = [accessibilityNameCopy copy];
    accessibilityName = v29->_accessibilityName;
    v29->_accessibilityName = v44;

    v46 = [textCopy copy];
    searchText = v29->_searchText;
    v29->_searchText = v46;

    v48 = [promptCopy copy];
    sanitizedPrompt = v29->_sanitizedPrompt;
    v29->_sanitizedPrompt = v48;

    v50 = [metadataCopy copy];
    metadata = v29->_metadata;
    v29->_metadata = v50;

    v52 = [infoCopy copy];
    ckAttributionInfo = v29->_ckAttributionInfo;
    v29->_ckAttributionInfo = v52;
  }

  return v29;
}

@end