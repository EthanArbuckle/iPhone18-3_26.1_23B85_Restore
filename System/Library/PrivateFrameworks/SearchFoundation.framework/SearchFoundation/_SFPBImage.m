@interface _SFPBImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBImage)initWithDictionary:(id)a3;
- (_SFPBImage)initWithFacade:(id)a3;
- (_SFPBImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAccessibilityLabel:(id)a3;
- (void)setContentType:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setImageData:(id)a3;
- (void)setKeyColor:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBImage

- (_SFPBImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBImage *)self init];
  if (v5)
  {
    v6 = [v4 imageData];
    if (v6)
    {
      v7 = v6;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v9 = [v4 imageData];
        [(_SFPBImage *)v5 setImageData:v9];
      }
    }

    if ([v4 hasIsTemplate])
    {
      -[_SFPBImage setIsTemplate:](v5, "setIsTemplate:", [v4 isTemplate]);
    }

    if ([v4 hasShouldCropToCircle])
    {
      -[_SFPBImage setShouldCropToCircle:](v5, "setShouldCropToCircle:", [v4 shouldCropToCircle]);
    }

    if ([v4 hasCornerRadius])
    {
      v10 = [_SFPBGraphicalFloat alloc];
      [v4 cornerRadius];
      v11 = [(_SFPBGraphicalFloat *)v10 initWithCGFloat:?];
      [(_SFPBImage *)v5 setCornerRadius:v11];
    }

    if ([v4 hasScale])
    {
      v12 = [_SFPBGraphicalFloat alloc];
      [v4 scale];
      v13 = [(_SFPBGraphicalFloat *)v12 initWithCGFloat:?];
      [(_SFPBImage *)v5 setScale:v13];
    }

    if ([v4 hasSize])
    {
      v14 = [_SFPBPointSize alloc];
      [v4 size];
      v15 = [(_SFPBPointSize *)v14 initWithCGSize:?];
      [(_SFPBImage *)v5 setSize:v15];
    }

    v16 = [v4 contentType];

    if (v16)
    {
      v17 = [v4 contentType];
      [(_SFPBImage *)v5 setContentType:v17];
    }

    v18 = [v4 keyColor];

    if (v18)
    {
      v19 = [v4 keyColor];
      [(_SFPBImage *)v5 setKeyColor:v19];
    }

    v20 = [v4 identifier];

    if (v20)
    {
      v21 = [v4 identifier];
      [(_SFPBImage *)v5 setIdentifier:v21];
    }

    if ([v4 hasSource])
    {
      -[_SFPBImage setSource:](v5, "setSource:", [v4 source]);
    }

    if ([v4 hasCornerRoundingStyle])
    {
      -[_SFPBImage setCornerRoundingStyle:](v5, "setCornerRoundingStyle:", [v4 cornerRoundingStyle]);
    }

    v22 = [v4 accessibilityLabel];

    if (v22)
    {
      v23 = [v4 accessibilityLabel];
      [(_SFPBImage *)v5 setAccessibilityLabel:v23];
    }

    v24 = [v4 badgingImage];

    if (v24)
    {
      v25 = [_SFPBImage alloc];
      v26 = [v4 badgingImage];
      v27 = [(_SFPBImage *)v25 initWithFacade:v26];
      [(_SFPBImage *)v5 setBadgingImage:v27];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBURLImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setUrlImage:v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBContactImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setContactImage:v29];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBMonogramImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setMonogramImage:v30];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBLocalImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setLocalImage:v31];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBAppIconImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setAppIconImage:v32];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBMediaArtworkImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setMediaArtworkImage:v33];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBCalendarImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setCalendarImage:v34];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBSymbolImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setSymbolImage:v35];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBPhotosLibraryImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setPhotosLibraryImage:v36];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBQuickLookThumbnailImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setQuickLookThumbnailImage:v37];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBClockImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setClockImage:v38];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBShortcutsImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setShortcutsImage:v39];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setDefaultPunchoutAppIconImage:v40];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBPhotosAlbumImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setPhotosAlbumImage:v41];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBPhotosMemoryImage alloc] initWithFacade:v4];
      [(_SFPBImage *)v5 setPhotosMemoryImage:v42];
    }

    v43 = v5;
  }

  return v5;
}

- (_SFPBImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v86.receiver = self;
  v86.super_class = _SFPBImage;
  v5 = [(_SFPBImage *)&v86 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"imageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBImage *)v5 setImageData:v7];
    }

    v77 = v6;
    v8 = [v4 objectForKeyedSubscript:@"isTemplate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setIsTemplate:](v5, "setIsTemplate:", [v8 BOOLValue]);
    }

    v76 = v8;
    v9 = [v4 objectForKeyedSubscript:@"shouldCropToCircle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setShouldCropToCircle:](v5, "setShouldCropToCircle:", [v9 BOOLValue]);
    }

    v75 = v9;
    v10 = [v4 objectForKeyedSubscript:@"cornerRadius"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v10];
      [(_SFPBImage *)v5 setCornerRadius:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"scale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v12];
      [(_SFPBImage *)v5 setScale:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBPointSize alloc] initWithDictionary:v14];
      [(_SFPBImage *)v5 setSize:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"contentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBImage *)v5 setContentType:v17];
    }

    v73 = v12;
    v18 = [v4 objectForKeyedSubscript:@"keyColor"];
    objc_opt_class();
    v85 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(_SFPBImage *)v5 setKeyColor:v19];
    }

    v20 = v14;
    v21 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    v84 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBImage *)v5 setIdentifier:v22];
    }

    v23 = v10;
    v24 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setSource:](v5, "setSource:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"cornerRoundingStyle"];
    objc_opt_class();
    v83 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setCornerRoundingStyle:](v5, "setCornerRoundingStyle:", [v25 intValue]);
    }

    v70 = v24;
    v26 = [v4 objectForKeyedSubscript:@"accessibilityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBImage *)v5 setAccessibilityLabel:v27];
    }

    v69 = v26;
    v28 = [v4 objectForKeyedSubscript:@"badgingImage"];
    objc_opt_class();
    v29 = v23;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBImage alloc] initWithDictionary:v28];
      [(_SFPBImage *)v5 setBadgingImage:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImage setType:](v5, "setType:", [v31 intValue]);
    }

    v67 = v31;
    v32 = [v4 objectForKeyedSubscript:@"urlImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBURLImage alloc] initWithDictionary:v32];
      [(_SFPBImage *)v5 setUrlImage:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"contactImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBContactImage alloc] initWithDictionary:v34];
      [(_SFPBImage *)v5 setContactImage:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"monogramImage"];
    objc_opt_class();
    v82 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBMonogramImage alloc] initWithDictionary:v36];
      [(_SFPBImage *)v5 setMonogramImage:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"localImage"];
    objc_opt_class();
    v81 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBLocalImage alloc] initWithDictionary:v38];
      [(_SFPBImage *)v5 setLocalImage:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"appIconImage"];
    objc_opt_class();
    v80 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBAppIconImage alloc] initWithDictionary:v40];
      [(_SFPBImage *)v5 setAppIconImage:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"mediaArtworkImage"];
    objc_opt_class();
    v79 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBMediaArtworkImage alloc] initWithDictionary:v42];
      [(_SFPBImage *)v5 setMediaArtworkImage:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"calendarImage"];
    objc_opt_class();
    v78 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBCalendarImage alloc] initWithDictionary:v44];
      [(_SFPBImage *)v5 setCalendarImage:v45];
    }

    v68 = v28;
    v46 = [v4 objectForKeyedSubscript:@"symbolImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBSymbolImage alloc] initWithDictionary:v46];
      [(_SFPBImage *)v5 setSymbolImage:v47];
    }

    v64 = v46;
    v71 = v16;
    v48 = [v4 objectForKeyedSubscript:@"photosLibraryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBPhotosLibraryImage alloc] initWithDictionary:v48];
      [(_SFPBImage *)v5 setPhotosLibraryImage:v49];
    }

    v66 = v32;
    v50 = [v4 objectForKeyedSubscript:@"quickLookThumbnailImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBQuickLookThumbnailImage alloc] initWithDictionary:v50];
      [(_SFPBImage *)v5 setQuickLookThumbnailImage:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"clockImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBClockImage alloc] initWithDictionary:v52];
      [(_SFPBImage *)v5 setClockImage:v53];
    }

    v65 = v34;
    v72 = v20;
    v54 = [v4 objectForKeyedSubscript:@"shortcutsImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBShortcutsImage alloc] initWithDictionary:v54];
      [(_SFPBImage *)v5 setShortcutsImage:v55];
    }

    v74 = v29;
    v56 = [v4 objectForKeyedSubscript:@"defaultPunchoutAppIconImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithDictionary:v56];
      [(_SFPBImage *)v5 setDefaultPunchoutAppIconImage:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"photosAlbumImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBPhotosAlbumImage alloc] initWithDictionary:v58];
      [(_SFPBImage *)v5 setPhotosAlbumImage:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"photosMemoryImage"];
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

- (_SFPBImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessibilityLabel)
  {
    v4 = [(_SFPBImage *)self accessibilityLabel];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accessibilityLabel"];
  }

  if (self->_appIconImage)
  {
    v6 = [(_SFPBImage *)self appIconImage];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"appIconImage"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"appIconImage"];
    }
  }

  if (self->_badgingImage)
  {
    v9 = [(_SFPBImage *)self badgingImage];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"badgingImage"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"badgingImage"];
    }
  }

  if (self->_calendarImage)
  {
    v12 = [(_SFPBImage *)self calendarImage];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"calendarImage"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"calendarImage"];
    }
  }

  if (self->_clockImage)
  {
    v15 = [(_SFPBImage *)self clockImage];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"clockImage"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"clockImage"];
    }
  }

  if (self->_contactImage)
  {
    v18 = [(_SFPBImage *)self contactImage];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"contactImage"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"contactImage"];
    }
  }

  if (self->_contentType)
  {
    v21 = [(_SFPBImage *)self contentType];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"contentType"];
  }

  if (self->_cornerRadius)
  {
    v23 = [(_SFPBImage *)self cornerRadius];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"cornerRadius"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"cornerRadius"];
    }
  }

  if (self->_cornerRoundingStyle)
  {
    v26 = [(_SFPBImage *)self cornerRoundingStyle];
    if (v26 >= 5)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v26];
    }

    else
    {
      v27 = off_1E7ACE448[v26];
    }

    [v3 setObject:v27 forKeyedSubscript:@"cornerRoundingStyle"];
  }

  if (self->_defaultPunchoutAppIconImage)
  {
    v28 = [(_SFPBImage *)self defaultPunchoutAppIconImage];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"defaultPunchoutAppIconImage"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"defaultPunchoutAppIconImage"];
    }
  }

  if (self->_identifier)
  {
    v31 = [(_SFPBImage *)self identifier];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"identifier"];
  }

  if (self->_imageData)
  {
    v33 = [(_SFPBImage *)self imageData];
    v34 = [v33 base64EncodedStringWithOptions:0];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"imageData"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"imageData"];
    }
  }

  if (self->_isTemplate)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImage isTemplate](self, "isTemplate")}];
    [v3 setObject:v36 forKeyedSubscript:@"isTemplate"];
  }

  if (self->_keyColor)
  {
    v37 = [(_SFPBImage *)self keyColor];
    v38 = [v37 copy];
    [v3 setObject:v38 forKeyedSubscript:@"keyColor"];
  }

  if (self->_localImage)
  {
    v39 = [(_SFPBImage *)self localImage];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"localImage"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"localImage"];
    }
  }

  if (self->_mediaArtworkImage)
  {
    v42 = [(_SFPBImage *)self mediaArtworkImage];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"mediaArtworkImage"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"mediaArtworkImage"];
    }
  }

  if (self->_monogramImage)
  {
    v45 = [(_SFPBImage *)self monogramImage];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"monogramImage"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"monogramImage"];
    }
  }

  if (self->_photosAlbumImage)
  {
    v48 = [(_SFPBImage *)self photosAlbumImage];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"photosAlbumImage"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"photosAlbumImage"];
    }
  }

  if (self->_photosLibraryImage)
  {
    v51 = [(_SFPBImage *)self photosLibraryImage];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  if (self->_photosMemoryImage)
  {
    v54 = [(_SFPBImage *)self photosMemoryImage];
    v55 = [v54 dictionaryRepresentation];
    if (v55)
    {
      [v3 setObject:v55 forKeyedSubscript:@"photosMemoryImage"];
    }

    else
    {
      v56 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v56 forKeyedSubscript:@"photosMemoryImage"];
    }
  }

  if (self->_quickLookThumbnailImage)
  {
    v57 = [(_SFPBImage *)self quickLookThumbnailImage];
    v58 = [v57 dictionaryRepresentation];
    if (v58)
    {
      [v3 setObject:v58 forKeyedSubscript:@"quickLookThumbnailImage"];
    }

    else
    {
      v59 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v59 forKeyedSubscript:@"quickLookThumbnailImage"];
    }
  }

  if (self->_scale)
  {
    v60 = [(_SFPBImage *)self scale];
    v61 = [v60 dictionaryRepresentation];
    if (v61)
    {
      [v3 setObject:v61 forKeyedSubscript:@"scale"];
    }

    else
    {
      v62 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v62 forKeyedSubscript:@"scale"];
    }
  }

  if (self->_shortcutsImage)
  {
    v63 = [(_SFPBImage *)self shortcutsImage];
    v64 = [v63 dictionaryRepresentation];
    if (v64)
    {
      [v3 setObject:v64 forKeyedSubscript:@"shortcutsImage"];
    }

    else
    {
      v65 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v65 forKeyedSubscript:@"shortcutsImage"];
    }
  }

  if (self->_shouldCropToCircle)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImage shouldCropToCircle](self, "shouldCropToCircle")}];
    [v3 setObject:v66 forKeyedSubscript:@"shouldCropToCircle"];
  }

  if (self->_size)
  {
    v67 = [(_SFPBImage *)self size];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"size"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"size"];
    }
  }

  if (self->_source)
  {
    v70 = [(_SFPBImage *)self source];
    if (v70 >= 3)
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v70];
    }

    else
    {
      v71 = off_1E7ACE548[v70];
    }

    [v3 setObject:v71 forKeyedSubscript:@"source"];
  }

  if (self->_symbolImage)
  {
    v72 = [(_SFPBImage *)self symbolImage];
    v73 = [v72 dictionaryRepresentation];
    if (v73)
    {
      [v3 setObject:v73 forKeyedSubscript:@"symbolImage"];
    }

    else
    {
      v74 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v74 forKeyedSubscript:@"symbolImage"];
    }
  }

  if (self->_type)
  {
    v75 = [(_SFPBImage *)self type];
    switch(v75)
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
        if (v75)
        {
          v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v75];
        }

        else
        {
          v76 = @"0";
        }

        break;
    }

    [v3 setObject:v76 forKeyedSubscript:@"type"];
  }

  if (self->_urlImage)
  {
    v77 = [(_SFPBImage *)self urlImage];
    v78 = [v77 dictionaryRepresentation];
    if (v78)
    {
      [v3 setObject:v78 forKeyedSubscript:@"urlImage"];
    }

    else
    {
      v79 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v79 forKeyedSubscript:@"urlImage"];
    }
  }

  v80 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_127;
  }

  v5 = [(_SFPBImage *)self imageData];
  v6 = [v4 imageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v7 = [(_SFPBImage *)self imageData];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBImage *)self imageData];
    v10 = [v4 imageData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  isTemplate = self->_isTemplate;
  if (isTemplate != [v4 isTemplate])
  {
    goto LABEL_127;
  }

  shouldCropToCircle = self->_shouldCropToCircle;
  if (shouldCropToCircle != [v4 shouldCropToCircle])
  {
    goto LABEL_127;
  }

  v5 = [(_SFPBImage *)self cornerRadius];
  v6 = [v4 cornerRadius];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v14 = [(_SFPBImage *)self cornerRadius];
  if (v14)
  {
    v15 = v14;
    v16 = [(_SFPBImage *)self cornerRadius];
    v17 = [v4 cornerRadius];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self scale];
  v6 = [v4 scale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v19 = [(_SFPBImage *)self scale];
  if (v19)
  {
    v20 = v19;
    v21 = [(_SFPBImage *)self scale];
    v22 = [v4 scale];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self size];
  v6 = [v4 size];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v24 = [(_SFPBImage *)self size];
  if (v24)
  {
    v25 = v24;
    v26 = [(_SFPBImage *)self size];
    v27 = [v4 size];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self contentType];
  v6 = [v4 contentType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v29 = [(_SFPBImage *)self contentType];
  if (v29)
  {
    v30 = v29;
    v31 = [(_SFPBImage *)self contentType];
    v32 = [v4 contentType];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self keyColor];
  v6 = [v4 keyColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v34 = [(_SFPBImage *)self keyColor];
  if (v34)
  {
    v35 = v34;
    v36 = [(_SFPBImage *)self keyColor];
    v37 = [v4 keyColor];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v39 = [(_SFPBImage *)self identifier];
  if (v39)
  {
    v40 = v39;
    v41 = [(_SFPBImage *)self identifier];
    v42 = [v4 identifier];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  source = self->_source;
  if (source != [v4 source])
  {
    goto LABEL_127;
  }

  cornerRoundingStyle = self->_cornerRoundingStyle;
  if (cornerRoundingStyle != [v4 cornerRoundingStyle])
  {
    goto LABEL_127;
  }

  v5 = [(_SFPBImage *)self accessibilityLabel];
  v6 = [v4 accessibilityLabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v46 = [(_SFPBImage *)self accessibilityLabel];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBImage *)self accessibilityLabel];
    v49 = [v4 accessibilityLabel];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self badgingImage];
  v6 = [v4 badgingImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v51 = [(_SFPBImage *)self badgingImage];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBImage *)self badgingImage];
    v54 = [v4 badgingImage];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_127;
  }

  v5 = [(_SFPBImage *)self urlImage];
  v6 = [v4 urlImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v57 = [(_SFPBImage *)self urlImage];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBImage *)self urlImage];
    v60 = [v4 urlImage];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self contactImage];
  v6 = [v4 contactImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v62 = [(_SFPBImage *)self contactImage];
  if (v62)
  {
    v63 = v62;
    v64 = [(_SFPBImage *)self contactImage];
    v65 = [v4 contactImage];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self monogramImage];
  v6 = [v4 monogramImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v67 = [(_SFPBImage *)self monogramImage];
  if (v67)
  {
    v68 = v67;
    v69 = [(_SFPBImage *)self monogramImage];
    v70 = [v4 monogramImage];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self localImage];
  v6 = [v4 localImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v72 = [(_SFPBImage *)self localImage];
  if (v72)
  {
    v73 = v72;
    v74 = [(_SFPBImage *)self localImage];
    v75 = [v4 localImage];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self appIconImage];
  v6 = [v4 appIconImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v77 = [(_SFPBImage *)self appIconImage];
  if (v77)
  {
    v78 = v77;
    v79 = [(_SFPBImage *)self appIconImage];
    v80 = [v4 appIconImage];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self mediaArtworkImage];
  v6 = [v4 mediaArtworkImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v82 = [(_SFPBImage *)self mediaArtworkImage];
  if (v82)
  {
    v83 = v82;
    v84 = [(_SFPBImage *)self mediaArtworkImage];
    v85 = [v4 mediaArtworkImage];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self calendarImage];
  v6 = [v4 calendarImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v87 = [(_SFPBImage *)self calendarImage];
  if (v87)
  {
    v88 = v87;
    v89 = [(_SFPBImage *)self calendarImage];
    v90 = [v4 calendarImage];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self symbolImage];
  v6 = [v4 symbolImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v92 = [(_SFPBImage *)self symbolImage];
  if (v92)
  {
    v93 = v92;
    v94 = [(_SFPBImage *)self symbolImage];
    v95 = [v4 symbolImage];
    v96 = [v94 isEqual:v95];

    if (!v96)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self photosLibraryImage];
  v6 = [v4 photosLibraryImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v97 = [(_SFPBImage *)self photosLibraryImage];
  if (v97)
  {
    v98 = v97;
    v99 = [(_SFPBImage *)self photosLibraryImage];
    v100 = [v4 photosLibraryImage];
    v101 = [v99 isEqual:v100];

    if (!v101)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self quickLookThumbnailImage];
  v6 = [v4 quickLookThumbnailImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v102 = [(_SFPBImage *)self quickLookThumbnailImage];
  if (v102)
  {
    v103 = v102;
    v104 = [(_SFPBImage *)self quickLookThumbnailImage];
    v105 = [v4 quickLookThumbnailImage];
    v106 = [v104 isEqual:v105];

    if (!v106)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self clockImage];
  v6 = [v4 clockImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v107 = [(_SFPBImage *)self clockImage];
  if (v107)
  {
    v108 = v107;
    v109 = [(_SFPBImage *)self clockImage];
    v110 = [v4 clockImage];
    v111 = [v109 isEqual:v110];

    if (!v111)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self shortcutsImage];
  v6 = [v4 shortcutsImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v112 = [(_SFPBImage *)self shortcutsImage];
  if (v112)
  {
    v113 = v112;
    v114 = [(_SFPBImage *)self shortcutsImage];
    v115 = [v4 shortcutsImage];
    v116 = [v114 isEqual:v115];

    if (!v116)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self defaultPunchoutAppIconImage];
  v6 = [v4 defaultPunchoutAppIconImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v117 = [(_SFPBImage *)self defaultPunchoutAppIconImage];
  if (v117)
  {
    v118 = v117;
    v119 = [(_SFPBImage *)self defaultPunchoutAppIconImage];
    v120 = [v4 defaultPunchoutAppIconImage];
    v121 = [v119 isEqual:v120];

    if (!v121)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self photosAlbumImage];
  v6 = [v4 photosAlbumImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_126;
  }

  v122 = [(_SFPBImage *)self photosAlbumImage];
  if (v122)
  {
    v123 = v122;
    v124 = [(_SFPBImage *)self photosAlbumImage];
    v125 = [v4 photosAlbumImage];
    v126 = [v124 isEqual:v125];

    if (!v126)
    {
      goto LABEL_127;
    }
  }

  else
  {
  }

  v5 = [(_SFPBImage *)self photosMemoryImage];
  v6 = [v4 photosMemoryImage];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_126:

    goto LABEL_127;
  }

  v127 = [(_SFPBImage *)self photosMemoryImage];
  if (!v127)
  {

LABEL_130:
    v132 = 1;
    goto LABEL_128;
  }

  v128 = v127;
  v129 = [(_SFPBImage *)self photosMemoryImage];
  v130 = [v4 photosMemoryImage];
  v131 = [v129 isEqual:v130];

  if (v131)
  {
    goto LABEL_130;
  }

LABEL_127:
  v132 = 0;
LABEL_128:

  return v132;
}

- (void)writeTo:(id)a3
{
  v28 = a3;
  v4 = [(_SFPBImage *)self imageData];
  if (v4)
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

  v5 = [(_SFPBImage *)self cornerRadius];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBImage *)self scale];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBImage *)self size];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBImage *)self contentType];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBImage *)self keyColor];
  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(_SFPBImage *)self identifier];
  if (v10)
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

  v11 = [(_SFPBImage *)self accessibilityLabel];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBImage *)self badgingImage];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBImage *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_SFPBImage *)self urlImage];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBImage *)self contactImage];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBImage *)self monogramImage];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBImage *)self localImage];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBImage *)self appIconImage];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBImage *)self mediaArtworkImage];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBImage *)self calendarImage];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBImage *)self symbolImage];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBImage *)self photosLibraryImage];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBImage *)self quickLookThumbnailImage];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBImage *)self clockImage];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBImage *)self shortcutsImage];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = [(_SFPBImage *)self defaultPunchoutAppIconImage];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_SFPBImage *)self photosAlbumImage];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_SFPBImage *)self photosMemoryImage];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setAccessibilityLabel:(id)a3
{
  v4 = [a3 copy];
  accessibilityLabel = self->_accessibilityLabel;
  self->_accessibilityLabel = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKeyColor:(id)a3
{
  v4 = [a3 copy];
  keyColor = self->_keyColor;
  self->_keyColor = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentType:(id)a3
{
  v4 = [a3 copy];
  contentType = self->_contentType;
  self->_contentType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setImageData:(id)a3
{
  v4 = [a3 copy];
  imageData = self->_imageData;
  self->_imageData = v4;

  MEMORY[0x1EEE66BB8]();
}

@end