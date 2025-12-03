@interface _SFPBImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBImage)initWithDictionary:(id)dictionary;
- (_SFPBImage)initWithFacade:(id)facade;
- (_SFPBImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAccessibilityLabel:(id)label;
- (void)setContentType:(id)type;
- (void)setIdentifier:(id)identifier;
- (void)setImageData:(id)data;
- (void)setKeyColor:(id)color;
- (void)writeTo:(id)to;
@end

@implementation _SFPBImage

- (_SFPBImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBImage *)self init];
  if (v5)
  {
    imageData = [facadeCopy imageData];
    if (imageData)
    {
      v7 = imageData;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        imageData2 = [facadeCopy imageData];
        [(_SFPBImage *)v5 setImageData:imageData2];
      }
    }

    if ([facadeCopy hasIsTemplate])
    {
      -[_SFPBImage setIsTemplate:](v5, "setIsTemplate:", [facadeCopy isTemplate]);
    }

    if ([facadeCopy hasShouldCropToCircle])
    {
      -[_SFPBImage setShouldCropToCircle:](v5, "setShouldCropToCircle:", [facadeCopy shouldCropToCircle]);
    }

    if ([facadeCopy hasCornerRadius])
    {
      v10 = [_SFPBGraphicalFloat alloc];
      [facadeCopy cornerRadius];
      v11 = [(_SFPBGraphicalFloat *)v10 initWithCGFloat:?];
      [(_SFPBImage *)v5 setCornerRadius:v11];
    }

    if ([facadeCopy hasScale])
    {
      v12 = [_SFPBGraphicalFloat alloc];
      [facadeCopy scale];
      v13 = [(_SFPBGraphicalFloat *)v12 initWithCGFloat:?];
      [(_SFPBImage *)v5 setScale:v13];
    }

    if ([facadeCopy hasSize])
    {
      v14 = [_SFPBPointSize alloc];
      [facadeCopy size];
      v15 = [(_SFPBPointSize *)v14 initWithCGSize:?];
      [(_SFPBImage *)v5 setSize:v15];
    }

    contentType = [facadeCopy contentType];

    if (contentType)
    {
      contentType2 = [facadeCopy contentType];
      [(_SFPBImage *)v5 setContentType:contentType2];
    }

    keyColor = [facadeCopy keyColor];

    if (keyColor)
    {
      keyColor2 = [facadeCopy keyColor];
      [(_SFPBImage *)v5 setKeyColor:keyColor2];
    }

    identifier = [facadeCopy identifier];

    if (identifier)
    {
      identifier2 = [facadeCopy identifier];
      [(_SFPBImage *)v5 setIdentifier:identifier2];
    }

    if ([facadeCopy hasSource])
    {
      -[_SFPBImage setSource:](v5, "setSource:", [facadeCopy source]);
    }

    if ([facadeCopy hasCornerRoundingStyle])
    {
      -[_SFPBImage setCornerRoundingStyle:](v5, "setCornerRoundingStyle:", [facadeCopy cornerRoundingStyle]);
    }

    accessibilityLabel = [facadeCopy accessibilityLabel];

    if (accessibilityLabel)
    {
      accessibilityLabel2 = [facadeCopy accessibilityLabel];
      [(_SFPBImage *)v5 setAccessibilityLabel:accessibilityLabel2];
    }

    badgingImage = [facadeCopy badgingImage];

    if (badgingImage)
    {
      v25 = [_SFPBImage alloc];
      badgingImage2 = [facadeCopy badgingImage];
      v27 = [(_SFPBImage *)v25 initWithFacade:badgingImage2];
      [(_SFPBImage *)v5 setBadgingImage:v27];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBURLImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setUrlImage:v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBContactImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setContactImage:v29];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBMonogramImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setMonogramImage:v30];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBLocalImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setLocalImage:v31];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBAppIconImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setAppIconImage:v32];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBMediaArtworkImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setMediaArtworkImage:v33];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBCalendarImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setCalendarImage:v34];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBSymbolImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setSymbolImage:v35];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBPhotosLibraryImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setPhotosLibraryImage:v36];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBQuickLookThumbnailImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setQuickLookThumbnailImage:v37];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBClockImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setClockImage:v38];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBShortcutsImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setShortcutsImage:v39];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setDefaultPunchoutAppIconImage:v40];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBPhotosAlbumImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setPhotosAlbumImage:v41];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBPhotosMemoryImage alloc] initWithFacade:facadeCopy];
      [(_SFPBImage *)v5 setPhotosMemoryImage:v42];
    }

    v43 = v5;
  }

  return v5;
}

- (_SFPBImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v86.receiver = self;
  v86.super_class = _SFPBImage;
  v5 = [(_SFPBImage *)&v86 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"imageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBImage *)v5 setImageData:v7];
    }

    v77 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"isTemplate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setIsTemplate:](v5, "setIsTemplate:", [v8 BOOLValue]);
    }

    v76 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"shouldCropToCircle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setShouldCropToCircle:](v5, "setShouldCropToCircle:", [v9 BOOLValue]);
    }

    v75 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cornerRadius"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v10];
      [(_SFPBImage *)v5 setCornerRadius:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"scale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v12];
      [(_SFPBImage *)v5 setScale:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBPointSize alloc] initWithDictionary:v14];
      [(_SFPBImage *)v5 setSize:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"contentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBImage *)v5 setContentType:v17];
    }

    v73 = v12;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"keyColor"];
    objc_opt_class();
    v85 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(_SFPBImage *)v5 setKeyColor:v19];
    }

    v20 = v14;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    v84 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBImage *)v5 setIdentifier:v22];
    }

    v23 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setSource:](v5, "setSource:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"cornerRoundingStyle"];
    objc_opt_class();
    v83 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setCornerRoundingStyle:](v5, "setCornerRoundingStyle:", [v25 intValue]);
    }

    v70 = v24;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"accessibilityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBImage *)v5 setAccessibilityLabel:v27];
    }

    v69 = v26;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"badgingImage"];
    objc_opt_class();
    v29 = v23;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBImage alloc] initWithDictionary:v28];
      [(_SFPBImage *)v5 setBadgingImage:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setType:](v5, "setType:", [v31 intValue]);
    }

    v67 = v31;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"urlImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBURLImage alloc] initWithDictionary:v32];
      [(_SFPBImage *)v5 setUrlImage:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"contactImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBContactImage alloc] initWithDictionary:v34];
      [(_SFPBImage *)v5 setContactImage:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"monogramImage"];
    objc_opt_class();
    v82 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBMonogramImage alloc] initWithDictionary:v36];
      [(_SFPBImage *)v5 setMonogramImage:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"localImage"];
    objc_opt_class();
    v81 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBLocalImage alloc] initWithDictionary:v38];
      [(_SFPBImage *)v5 setLocalImage:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"appIconImage"];
    objc_opt_class();
    v80 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBAppIconImage alloc] initWithDictionary:v40];
      [(_SFPBImage *)v5 setAppIconImage:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"mediaArtworkImage"];
    objc_opt_class();
    v79 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBMediaArtworkImage alloc] initWithDictionary:v42];
      [(_SFPBImage *)v5 setMediaArtworkImage:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"calendarImage"];
    objc_opt_class();
    v78 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBCalendarImage alloc] initWithDictionary:v44];
      [(_SFPBImage *)v5 setCalendarImage:v45];
    }

    v68 = v28;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"symbolImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBSymbolImage alloc] initWithDictionary:v46];
      [(_SFPBImage *)v5 setSymbolImage:v47];
    }

    v64 = v46;
    v71 = v16;
    v48 = [dictionaryCopy objectForKeyedSubscript:@"photosLibraryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBPhotosLibraryImage alloc] initWithDictionary:v48];
      [(_SFPBImage *)v5 setPhotosLibraryImage:v49];
    }

    v66 = v32;
    v50 = [dictionaryCopy objectForKeyedSubscript:@"quickLookThumbnailImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBQuickLookThumbnailImage alloc] initWithDictionary:v50];
      [(_SFPBImage *)v5 setQuickLookThumbnailImage:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"clockImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBClockImage alloc] initWithDictionary:v52];
      [(_SFPBImage *)v5 setClockImage:v53];
    }

    v65 = v34;
    v72 = v20;
    v54 = [dictionaryCopy objectForKeyedSubscript:@"shortcutsImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBShortcutsImage alloc] initWithDictionary:v54];
      [(_SFPBImage *)v5 setShortcutsImage:v55];
    }

    v74 = v29;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"defaultPunchoutAppIconImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithDictionary:v56];
      [(_SFPBImage *)v5 setDefaultPunchoutAppIconImage:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"photosAlbumImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBPhotosAlbumImage alloc] initWithDictionary:v58];
      [(_SFPBImage *)v5 setPhotosAlbumImage:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"photosMemoryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBPhotosMemoryImage alloc] initWithDictionary:v60];
      [(_SFPBImage *)v5 setPhotosMemoryImage:v61];
    }

    v62 = v5;
  }

  return v5;
}

- (_SFPBImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessibilityLabel)
  {
    accessibilityLabel = [(_SFPBImage *)self accessibilityLabel];
    v5 = [accessibilityLabel copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accessibilityLabel"];
  }

  if (self->_appIconImage)
  {
    appIconImage = [(_SFPBImage *)self appIconImage];
    dictionaryRepresentation = [appIconImage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appIconImage"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appIconImage"];
    }
  }

  if (self->_badgingImage)
  {
    badgingImage = [(_SFPBImage *)self badgingImage];
    dictionaryRepresentation2 = [badgingImage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"badgingImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"badgingImage"];
    }
  }

  if (self->_calendarImage)
  {
    calendarImage = [(_SFPBImage *)self calendarImage];
    dictionaryRepresentation3 = [calendarImage dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"calendarImage"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"calendarImage"];
    }
  }

  if (self->_clockImage)
  {
    clockImage = [(_SFPBImage *)self clockImage];
    dictionaryRepresentation4 = [clockImage dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"clockImage"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"clockImage"];
    }
  }

  if (self->_contactImage)
  {
    contactImage = [(_SFPBImage *)self contactImage];
    dictionaryRepresentation5 = [contactImage dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"contactImage"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"contactImage"];
    }
  }

  if (self->_contentType)
  {
    contentType = [(_SFPBImage *)self contentType];
    v22 = [contentType copy];
    [dictionary setObject:v22 forKeyedSubscript:@"contentType"];
  }

  if (self->_cornerRadius)
  {
    cornerRadius = [(_SFPBImage *)self cornerRadius];
    dictionaryRepresentation6 = [cornerRadius dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"cornerRadius"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"cornerRadius"];
    }
  }

  if (self->_cornerRoundingStyle)
  {
    cornerRoundingStyle = [(_SFPBImage *)self cornerRoundingStyle];
    if (cornerRoundingStyle >= 5)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", cornerRoundingStyle];
    }

    else
    {
      v27 = off_1E7ACE448[cornerRoundingStyle];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"cornerRoundingStyle"];
  }

  if (self->_defaultPunchoutAppIconImage)
  {
    defaultPunchoutAppIconImage = [(_SFPBImage *)self defaultPunchoutAppIconImage];
    dictionaryRepresentation7 = [defaultPunchoutAppIconImage dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"defaultPunchoutAppIconImage"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"defaultPunchoutAppIconImage"];
    }
  }

  if (self->_identifier)
  {
    identifier = [(_SFPBImage *)self identifier];
    v32 = [identifier copy];
    [dictionary setObject:v32 forKeyedSubscript:@"identifier"];
  }

  if (self->_imageData)
  {
    imageData = [(_SFPBImage *)self imageData];
    v34 = [imageData base64EncodedStringWithOptions:0];
    if (v34)
    {
      [dictionary setObject:v34 forKeyedSubscript:@"imageData"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"imageData"];
    }
  }

  if (self->_isTemplate)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImage isTemplate](self, "isTemplate")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isTemplate"];
  }

  if (self->_keyColor)
  {
    keyColor = [(_SFPBImage *)self keyColor];
    v38 = [keyColor copy];
    [dictionary setObject:v38 forKeyedSubscript:@"keyColor"];
  }

  if (self->_localImage)
  {
    localImage = [(_SFPBImage *)self localImage];
    dictionaryRepresentation8 = [localImage dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"localImage"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"localImage"];
    }
  }

  if (self->_mediaArtworkImage)
  {
    mediaArtworkImage = [(_SFPBImage *)self mediaArtworkImage];
    dictionaryRepresentation9 = [mediaArtworkImage dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"mediaArtworkImage"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"mediaArtworkImage"];
    }
  }

  if (self->_monogramImage)
  {
    monogramImage = [(_SFPBImage *)self monogramImage];
    dictionaryRepresentation10 = [monogramImage dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"monogramImage"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"monogramImage"];
    }
  }

  if (self->_photosAlbumImage)
  {
    photosAlbumImage = [(_SFPBImage *)self photosAlbumImage];
    dictionaryRepresentation11 = [photosAlbumImage dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"photosAlbumImage"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"photosAlbumImage"];
    }
  }

  if (self->_photosLibraryImage)
  {
    photosLibraryImage = [(_SFPBImage *)self photosLibraryImage];
    dictionaryRepresentation12 = [photosLibraryImage dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  if (self->_photosMemoryImage)
  {
    photosMemoryImage = [(_SFPBImage *)self photosMemoryImage];
    dictionaryRepresentation13 = [photosMemoryImage dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"photosMemoryImage"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"photosMemoryImage"];
    }
  }

  if (self->_quickLookThumbnailImage)
  {
    quickLookThumbnailImage = [(_SFPBImage *)self quickLookThumbnailImage];
    dictionaryRepresentation14 = [quickLookThumbnailImage dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"quickLookThumbnailImage"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"quickLookThumbnailImage"];
    }
  }

  if (self->_scale)
  {
    scale = [(_SFPBImage *)self scale];
    dictionaryRepresentation15 = [scale dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"scale"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"scale"];
    }
  }

  if (self->_shortcutsImage)
  {
    shortcutsImage = [(_SFPBImage *)self shortcutsImage];
    dictionaryRepresentation16 = [shortcutsImage dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"shortcutsImage"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"shortcutsImage"];
    }
  }

  if (self->_shouldCropToCircle)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImage shouldCropToCircle](self, "shouldCropToCircle")}];
    [dictionary setObject:v66 forKeyedSubscript:@"shouldCropToCircle"];
  }

  if (self->_size)
  {
    v67 = [(_SFPBImage *)self size];
    dictionaryRepresentation17 = [v67 dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"size"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"size"];
    }
  }

  if (self->_source)
  {
    source = [(_SFPBImage *)self source];
    if (source >= 3)
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", source];
    }

    else
    {
      v71 = off_1E7ACE548[source];
    }

    [dictionary setObject:v71 forKeyedSubscript:@"source"];
  }

  if (self->_symbolImage)
  {
    symbolImage = [(_SFPBImage *)self symbolImage];
    dictionaryRepresentation18 = [symbolImage dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"symbolImage"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"symbolImage"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBImage *)self type];
    switch(type)
    {
      case '4':
        v76 = @"52";
        break;
      case '5':
        v76 = @"53";
        break;
      case '6':
        v76 = @"54";
        break;
      case '7':
        v76 = @"55";
        break;
      case '8':
        v76 = @"56";
        break;
      case '9':
        v76 = @"57";
        break;
      case ':':
        v76 = @"58";
        break;
      case ';':
        v76 = @"59";
        break;
      case '<':
        v76 = @"60";
        break;
      case '=':
        v76 = @"61";
        break;
      case '>':
        v76 = @"62";
        break;
      case '?':
        v76 = @"63";
        break;
      case '@':
        v76 = @"64";
        break;
      case 'A':
        v76 = @"65";
        break;
      case 'B':
        v76 = @"66";
        break;
      default:
        if (type)
        {
          v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
        }

        else
        {
          v76 = @"0";
        }

        break;
    }

    [dictionary setObject:v76 forKeyedSubscript:@"type"];
  }

  if (self->_urlImage)
  {
    urlImage = [(_SFPBImage *)self urlImage];
    dictionaryRepresentation19 = [urlImage dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"urlImage"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"urlImage"];
    }
  }

  v80 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_imageData hash];
  if (self->_isTemplate)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v33 = v4;
  v34 = v3;
  if (self->_shouldCropToCircle)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v32 = v5;
  v31 = [(_SFPBGraphicalFloat *)self->_cornerRadius hash];
  v6 = [(_SFPBGraphicalFloat *)self->_scale hash];
  v7 = [(_SFPBPointSize *)self->_size hash];
  v8 = [(NSString *)self->_contentType hash];
  v9 = [(NSString *)self->_keyColor hash];
  v10 = [(NSString *)self->_identifier hash];
  v11 = 2654435761 * self->_source;
  v12 = 2654435761 * self->_cornerRoundingStyle;
  v13 = [(NSString *)self->_accessibilityLabel hash];
  v14 = v33 ^ v34 ^ v32 ^ v31 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  v15 = v13 ^ [(_SFPBImage *)self->_badgingImage hash]^ (2654435761 * self->_type);
  v16 = v14 ^ v15 ^ [(_SFPBURLImage *)self->_urlImage hash];
  v17 = [(_SFPBContactImage *)self->_contactImage hash];
  v18 = v17 ^ [(_SFPBMonogramImage *)self->_monogramImage hash];
  v19 = v18 ^ [(_SFPBLocalImage *)self->_localImage hash];
  v20 = v19 ^ [(_SFPBAppIconImage *)self->_appIconImage hash];
  v21 = v20 ^ [(_SFPBMediaArtworkImage *)self->_mediaArtworkImage hash];
  v22 = v21 ^ [(_SFPBCalendarImage *)self->_calendarImage hash];
  v23 = v22 ^ [(_SFPBSymbolImage *)self->_symbolImage hash];
  v24 = v16 ^ v23 ^ [(_SFPBPhotosLibraryImage *)self->_photosLibraryImage hash];
  v25 = [(_SFPBQuickLookThumbnailImage *)self->_quickLookThumbnailImage hash];
  v26 = v25 ^ [(_SFPBClockImage *)self->_clockImage hash];
  v27 = v26 ^ [(_SFPBShortcutsImage *)self->_shortcutsImage hash];
  v28 = v27 ^ [(_SFPBDefaultPunchoutAppIconImage *)self->_defaultPunchoutAppIconImage hash];
  v29 = v28 ^ [(_SFPBPhotosAlbumImage *)self->_photosAlbumImage hash];
  return v24 ^ v29 ^ [(_SFPBPhotosMemoryImage *)self->_photosMemoryImage hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_127;
  }

  imageData = [(_SFPBImage *)self imageData];
  imageData2 = [equalCopy imageData];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  imageData3 = [(_SFPBImage *)self imageData];
  if (imageData3)
  {
    v8 = imageData3;
    imageData4 = [(_SFPBImage *)self imageData];
    imageData5 = [equalCopy imageData];
    v11 = [imageData4 isEqual:imageData5];

    if (!v11)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  isTemplate = self->_isTemplate;
  if (isTemplate != [equalCopy isTemplate])
  {
    goto LABEL_127;
  }

  shouldCropToCircle = self->_shouldCropToCircle;
  if (shouldCropToCircle != [equalCopy shouldCropToCircle])
  {
    goto LABEL_127;
  }

  imageData = [(_SFPBImage *)self cornerRadius];
  imageData2 = [equalCopy cornerRadius];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  cornerRadius = [(_SFPBImage *)self cornerRadius];
  if (cornerRadius)
  {
    v15 = cornerRadius;
    cornerRadius2 = [(_SFPBImage *)self cornerRadius];
    cornerRadius3 = [equalCopy cornerRadius];
    v18 = [cornerRadius2 isEqual:cornerRadius3];

    if (!v18)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self scale];
  imageData2 = [equalCopy scale];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  scale = [(_SFPBImage *)self scale];
  if (scale)
  {
    v20 = scale;
    scale2 = [(_SFPBImage *)self scale];
    scale3 = [equalCopy scale];
    v23 = [scale2 isEqual:scale3];

    if (!v23)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self size];
  imageData2 = [equalCopy size];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  v24 = [(_SFPBImage *)self size];
  if (v24)
  {
    v25 = v24;
    v26 = [(_SFPBImage *)self size];
    v27 = [equalCopy size];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self contentType];
  imageData2 = [equalCopy contentType];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  contentType = [(_SFPBImage *)self contentType];
  if (contentType)
  {
    v30 = contentType;
    contentType2 = [(_SFPBImage *)self contentType];
    contentType3 = [equalCopy contentType];
    v33 = [contentType2 isEqual:contentType3];

    if (!v33)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self keyColor];
  imageData2 = [equalCopy keyColor];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  keyColor = [(_SFPBImage *)self keyColor];
  if (keyColor)
  {
    v35 = keyColor;
    keyColor2 = [(_SFPBImage *)self keyColor];
    keyColor3 = [equalCopy keyColor];
    v38 = [keyColor2 isEqual:keyColor3];

    if (!v38)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self identifier];
  imageData2 = [equalCopy identifier];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  identifier = [(_SFPBImage *)self identifier];
  if (identifier)
  {
    v40 = identifier;
    identifier2 = [(_SFPBImage *)self identifier];
    identifier3 = [equalCopy identifier];
    v43 = [identifier2 isEqual:identifier3];

    if (!v43)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  source = self->_source;
  if (source != [equalCopy source])
  {
    goto LABEL_127;
  }

  cornerRoundingStyle = self->_cornerRoundingStyle;
  if (cornerRoundingStyle != [equalCopy cornerRoundingStyle])
  {
    goto LABEL_127;
  }

  imageData = [(_SFPBImage *)self accessibilityLabel];
  imageData2 = [equalCopy accessibilityLabel];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  accessibilityLabel = [(_SFPBImage *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    v47 = accessibilityLabel;
    accessibilityLabel2 = [(_SFPBImage *)self accessibilityLabel];
    accessibilityLabel3 = [equalCopy accessibilityLabel];
    v50 = [accessibilityLabel2 isEqual:accessibilityLabel3];

    if (!v50)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self badgingImage];
  imageData2 = [equalCopy badgingImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  badgingImage = [(_SFPBImage *)self badgingImage];
  if (badgingImage)
  {
    v52 = badgingImage;
    badgingImage2 = [(_SFPBImage *)self badgingImage];
    badgingImage3 = [equalCopy badgingImage];
    v55 = [badgingImage2 isEqual:badgingImage3];

    if (!v55)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_127;
  }

  imageData = [(_SFPBImage *)self urlImage];
  imageData2 = [equalCopy urlImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  urlImage = [(_SFPBImage *)self urlImage];
  if (urlImage)
  {
    v58 = urlImage;
    urlImage2 = [(_SFPBImage *)self urlImage];
    urlImage3 = [equalCopy urlImage];
    v61 = [urlImage2 isEqual:urlImage3];

    if (!v61)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self contactImage];
  imageData2 = [equalCopy contactImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  contactImage = [(_SFPBImage *)self contactImage];
  if (contactImage)
  {
    v63 = contactImage;
    contactImage2 = [(_SFPBImage *)self contactImage];
    contactImage3 = [equalCopy contactImage];
    v66 = [contactImage2 isEqual:contactImage3];

    if (!v66)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self monogramImage];
  imageData2 = [equalCopy monogramImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  monogramImage = [(_SFPBImage *)self monogramImage];
  if (monogramImage)
  {
    v68 = monogramImage;
    monogramImage2 = [(_SFPBImage *)self monogramImage];
    monogramImage3 = [equalCopy monogramImage];
    v71 = [monogramImage2 isEqual:monogramImage3];

    if (!v71)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self localImage];
  imageData2 = [equalCopy localImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  localImage = [(_SFPBImage *)self localImage];
  if (localImage)
  {
    v73 = localImage;
    localImage2 = [(_SFPBImage *)self localImage];
    localImage3 = [equalCopy localImage];
    v76 = [localImage2 isEqual:localImage3];

    if (!v76)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self appIconImage];
  imageData2 = [equalCopy appIconImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  appIconImage = [(_SFPBImage *)self appIconImage];
  if (appIconImage)
  {
    v78 = appIconImage;
    appIconImage2 = [(_SFPBImage *)self appIconImage];
    appIconImage3 = [equalCopy appIconImage];
    v81 = [appIconImage2 isEqual:appIconImage3];

    if (!v81)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self mediaArtworkImage];
  imageData2 = [equalCopy mediaArtworkImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  mediaArtworkImage = [(_SFPBImage *)self mediaArtworkImage];
  if (mediaArtworkImage)
  {
    v83 = mediaArtworkImage;
    mediaArtworkImage2 = [(_SFPBImage *)self mediaArtworkImage];
    mediaArtworkImage3 = [equalCopy mediaArtworkImage];
    v86 = [mediaArtworkImage2 isEqual:mediaArtworkImage3];

    if (!v86)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self calendarImage];
  imageData2 = [equalCopy calendarImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  calendarImage = [(_SFPBImage *)self calendarImage];
  if (calendarImage)
  {
    v88 = calendarImage;
    calendarImage2 = [(_SFPBImage *)self calendarImage];
    calendarImage3 = [equalCopy calendarImage];
    v91 = [calendarImage2 isEqual:calendarImage3];

    if (!v91)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self symbolImage];
  imageData2 = [equalCopy symbolImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  symbolImage = [(_SFPBImage *)self symbolImage];
  if (symbolImage)
  {
    v93 = symbolImage;
    symbolImage2 = [(_SFPBImage *)self symbolImage];
    symbolImage3 = [equalCopy symbolImage];
    v96 = [symbolImage2 isEqual:symbolImage3];

    if (!v96)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self photosLibraryImage];
  imageData2 = [equalCopy photosLibraryImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  photosLibraryImage = [(_SFPBImage *)self photosLibraryImage];
  if (photosLibraryImage)
  {
    v98 = photosLibraryImage;
    photosLibraryImage2 = [(_SFPBImage *)self photosLibraryImage];
    photosLibraryImage3 = [equalCopy photosLibraryImage];
    v101 = [photosLibraryImage2 isEqual:photosLibraryImage3];

    if (!v101)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self quickLookThumbnailImage];
  imageData2 = [equalCopy quickLookThumbnailImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  quickLookThumbnailImage = [(_SFPBImage *)self quickLookThumbnailImage];
  if (quickLookThumbnailImage)
  {
    v103 = quickLookThumbnailImage;
    quickLookThumbnailImage2 = [(_SFPBImage *)self quickLookThumbnailImage];
    quickLookThumbnailImage3 = [equalCopy quickLookThumbnailImage];
    v106 = [quickLookThumbnailImage2 isEqual:quickLookThumbnailImage3];

    if (!v106)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self clockImage];
  imageData2 = [equalCopy clockImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  clockImage = [(_SFPBImage *)self clockImage];
  if (clockImage)
  {
    v108 = clockImage;
    clockImage2 = [(_SFPBImage *)self clockImage];
    clockImage3 = [equalCopy clockImage];
    v111 = [clockImage2 isEqual:clockImage3];

    if (!v111)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self shortcutsImage];
  imageData2 = [equalCopy shortcutsImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  shortcutsImage = [(_SFPBImage *)self shortcutsImage];
  if (shortcutsImage)
  {
    v113 = shortcutsImage;
    shortcutsImage2 = [(_SFPBImage *)self shortcutsImage];
    shortcutsImage3 = [equalCopy shortcutsImage];
    v116 = [shortcutsImage2 isEqual:shortcutsImage3];

    if (!v116)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self defaultPunchoutAppIconImage];
  imageData2 = [equalCopy defaultPunchoutAppIconImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  defaultPunchoutAppIconImage = [(_SFPBImage *)self defaultPunchoutAppIconImage];
  if (defaultPunchoutAppIconImage)
  {
    v118 = defaultPunchoutAppIconImage;
    defaultPunchoutAppIconImage2 = [(_SFPBImage *)self defaultPunchoutAppIconImage];
    defaultPunchoutAppIconImage3 = [equalCopy defaultPunchoutAppIconImage];
    v121 = [defaultPunchoutAppIconImage2 isEqual:defaultPunchoutAppIconImage3];

    if (!v121)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self photosAlbumImage];
  imageData2 = [equalCopy photosAlbumImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
    goto LABEL_126;
  }

  photosAlbumImage = [(_SFPBImage *)self photosAlbumImage];
  if (photosAlbumImage)
  {
    v123 = photosAlbumImage;
    photosAlbumImage2 = [(_SFPBImage *)self photosAlbumImage];
    photosAlbumImage3 = [equalCopy photosAlbumImage];
    v126 = [photosAlbumImage2 isEqual:photosAlbumImage3];

    if (!v126)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  imageData = [(_SFPBImage *)self photosMemoryImage];
  imageData2 = [equalCopy photosMemoryImage];
  if ((imageData != 0) == (imageData2 == 0))
  {
LABEL_126:

    goto LABEL_127;
  }

  photosMemoryImage = [(_SFPBImage *)self photosMemoryImage];
  if (!photosMemoryImage)
  {

LABEL_130:
    v132 = 1;
    goto LABEL_128;
  }

  v128 = photosMemoryImage;
  photosMemoryImage2 = [(_SFPBImage *)self photosMemoryImage];
  photosMemoryImage3 = [equalCopy photosMemoryImage];
  v131 = [photosMemoryImage2 isEqual:photosMemoryImage3];

  if (v131)
  {
    goto LABEL_130;
  }

LABEL_127:
  v132 = 0;
LABEL_128:

  return v132;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  imageData = [(_SFPBImage *)self imageData];
  if (imageData)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBImage *)self isTemplate])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBImage *)self shouldCropToCircle])
  {
    PBDataWriterWriteBOOLField();
  }

  cornerRadius = [(_SFPBImage *)self cornerRadius];
  if (cornerRadius)
  {
    PBDataWriterWriteSubmessage();
  }

  scale = [(_SFPBImage *)self scale];
  if (scale)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBImage *)self size];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  contentType = [(_SFPBImage *)self contentType];
  if (contentType)
  {
    PBDataWriterWriteStringField();
  }

  keyColor = [(_SFPBImage *)self keyColor];
  if (keyColor)
  {
    PBDataWriterWriteStringField();
  }

  identifier = [(_SFPBImage *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBImage *)self source])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBImage *)self cornerRoundingStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  accessibilityLabel = [(_SFPBImage *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    PBDataWriterWriteStringField();
  }

  badgingImage = [(_SFPBImage *)self badgingImage];
  if (badgingImage)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBImage *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  urlImage = [(_SFPBImage *)self urlImage];
  if (urlImage)
  {
    PBDataWriterWriteSubmessage();
  }

  contactImage = [(_SFPBImage *)self contactImage];
  if (contactImage)
  {
    PBDataWriterWriteSubmessage();
  }

  monogramImage = [(_SFPBImage *)self monogramImage];
  if (monogramImage)
  {
    PBDataWriterWriteSubmessage();
  }

  localImage = [(_SFPBImage *)self localImage];
  if (localImage)
  {
    PBDataWriterWriteSubmessage();
  }

  appIconImage = [(_SFPBImage *)self appIconImage];
  if (appIconImage)
  {
    PBDataWriterWriteSubmessage();
  }

  mediaArtworkImage = [(_SFPBImage *)self mediaArtworkImage];
  if (mediaArtworkImage)
  {
    PBDataWriterWriteSubmessage();
  }

  calendarImage = [(_SFPBImage *)self calendarImage];
  if (calendarImage)
  {
    PBDataWriterWriteSubmessage();
  }

  symbolImage = [(_SFPBImage *)self symbolImage];
  if (symbolImage)
  {
    PBDataWriterWriteSubmessage();
  }

  photosLibraryImage = [(_SFPBImage *)self photosLibraryImage];
  if (photosLibraryImage)
  {
    PBDataWriterWriteSubmessage();
  }

  quickLookThumbnailImage = [(_SFPBImage *)self quickLookThumbnailImage];
  if (quickLookThumbnailImage)
  {
    PBDataWriterWriteSubmessage();
  }

  clockImage = [(_SFPBImage *)self clockImage];
  if (clockImage)
  {
    PBDataWriterWriteSubmessage();
  }

  shortcutsImage = [(_SFPBImage *)self shortcutsImage];
  if (shortcutsImage)
  {
    PBDataWriterWriteSubmessage();
  }

  defaultPunchoutAppIconImage = [(_SFPBImage *)self defaultPunchoutAppIconImage];
  if (defaultPunchoutAppIconImage)
  {
    PBDataWriterWriteSubmessage();
  }

  photosAlbumImage = [(_SFPBImage *)self photosAlbumImage];
  if (photosAlbumImage)
  {
    PBDataWriterWriteSubmessage();
  }

  photosMemoryImage = [(_SFPBImage *)self photosMemoryImage];
  if (photosMemoryImage)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setAccessibilityLabel:(id)label
{
  v4 = [label copy];
  accessibilityLabel = self->_accessibilityLabel;
  self->_accessibilityLabel = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKeyColor:(id)color
{
  v4 = [color copy];
  keyColor = self->_keyColor;
  self->_keyColor = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentType:(id)type
{
  v4 = [type copy];
  contentType = self->_contentType;
  self->_contentType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setImageData:(id)data
{
  v4 = [data copy];
  imageData = self->_imageData;
  self->_imageData = v4;

  MEMORY[0x1EEE66BB8]();
}

@end