@interface CNVCardWritingOptions
+ (id)optionsFromPreferences;
- (CGSize)maximumImageSize;
- (CNVCardWritingOptions)init;
- (id)description;
@end

@implementation CNVCardWritingOptions

+ (id)optionsFromPreferences
{
  v2 = objc_alloc_init(self);
  [v2 setIncludeNotes:{+[CNVCardUserDefaults includeNotesInVCards](CNVCardUserDefaults, "includeNotesInVCards")}];
  [v2 setIncludePhotos:{+[CNVCardUserDefaults includePhotosInVCards](CNVCardUserDefaults, "includePhotosInVCards")}];
  [v2 setOutputVersion:{+[CNVCardUserDefaults outputFormat](CNVCardUserDefaults, "outputFormat")}];
  [v2 setIncludeUserSettings:{+[CNVCardUserDefaults includeUserSettings](CNVCardUserDefaults, "includeUserSettings")}];
  if ([v2 outputVersion] == 1)
  {
    v3 = +[CNVCardEncoding encodingsFromUserDefaults];
    [v2 setAvailableEncodings:v3];
  }

  return v2;
}

- (CNVCardWritingOptions)init
{
  v6.receiver = self;
  v6.super_class = CNVCardWritingOptions;
  v2 = [(CNVCardWritingOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_includeMeCardOnlySharingProperties = 1;
    v2->_maximumImageSize = *MEMORY[0x277CCA870];
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"includePrivateFields" BOOLValue:{-[CNVCardWritingOptions includePrivateFields](self, "includePrivateFields")}];
  v5 = [v3 appendName:@"includePrivateBundleIdentifiers" BOOLValue:{-[CNVCardWritingOptions includePrivateBundleIdentifiers](self, "includePrivateBundleIdentifiers")}];
  v6 = [v3 appendName:@"includeUserSettings" BOOLValue:{-[CNVCardWritingOptions includeUserSettings](self, "includeUserSettings")}];
  v7 = [v3 appendName:@"includeNotes" BOOLValue:{-[CNVCardWritingOptions includeNotes](self, "includeNotes")}];
  v8 = [v3 appendName:@"includePhotos" BOOLValue:{-[CNVCardWritingOptions includePhotos](self, "includePhotos")}];
  v9 = [v3 appendName:@"includeWallpaper" BOOLValue:{-[CNVCardWritingOptions includeWallpaper](self, "includeWallpaper")}];
  v10 = [v3 appendName:@"includePosterIdentifiers" BOOLValue:{-[CNVCardWritingOptions includePosterIdentifiers](self, "includePosterIdentifiers")}];
  v11 = [v3 appendName:@"includeMeCardOnlySharingProperties" BOOLValue:{-[CNVCardWritingOptions includeMeCardOnlySharingProperties](self, "includeMeCardOnlySharingProperties")}];
  v12 = [v3 appendName:@"includePronouns" BOOLValue:{-[CNVCardWritingOptions includePronouns](self, "includePronouns")}];
  v13 = [v3 appendName:@"useUnencryptedPronouns" BOOLValue:{-[CNVCardWritingOptions useUnencryptedPronouns](self, "useUnencryptedPronouns")}];
  v14 = [v3 appendName:@"compressPhotos" BOOLValue:{-[CNVCardWritingOptions compressPhotos](self, "compressPhotos")}];
  v15 = [v3 appendName:@"prefersUncroppedPhotos" BOOLValue:{-[CNVCardWritingOptions prefersUncroppedPhotos](self, "prefersUncroppedPhotos")}];
  v16 = [v3 appendName:@"usePhotoReferencesIfAvailable" BOOLValue:{-[CNVCardWritingOptions usePhotoReferencesIfAvailable](self, "usePhotoReferencesIfAvailable")}];
  v17 = [v3 appendName:@"shouldSuppressRegulatoryLogging" BOOLValue:{-[CNVCardWritingOptions shouldSuppressRegulatoryLogging](self, "shouldSuppressRegulatoryLogging")}];
  v18 = [v3 appendName:@"maximumEncodingLength" unsignedInteger:{-[CNVCardWritingOptions maximumEncodingLength](self, "maximumEncodingLength")}];
  v19 = [v3 appendName:@"maximumImageEncodingLength" unsignedInteger:{-[CNVCardWritingOptions maximumImageEncodingLength](self, "maximumImageEncodingLength")}];
  [(CNVCardWritingOptions *)self maximumImageSize];
  v20 = NSStringFromSize(v30);
  v21 = [v3 appendName:@"maximumImageSize" object:v20];

  treatAsUnknownProperties = [(CNVCardWritingOptions *)self treatAsUnknownProperties];
  v23 = [v3 appendName:@"treatAsUnknownProperties" object:treatAsUnknownProperties];

  v24 = [v3 appendName:@"outputVersion" vCardOutputVersionValue:{-[CNVCardWritingOptions outputVersion](self, "outputVersion")}];
  availableEncodings = [(CNVCardWritingOptions *)self availableEncodings];
  v26 = [v3 appendName:@"availableEncodings" object:availableEncodings];

  build = [v3 build];

  return build;
}

- (CGSize)maximumImageSize
{
  objc_copyStruct(v4, &self->_maximumImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end