@interface SFImage
+ (id)imageWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImage)initWithCoder:(id)coder;
- (SFImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)loadImageDataWithCompletionHandler:(id)handler;
- (void)loadImageDataWithContext:(id)context completionHandler:(id)handler;
@end

@implementation SFImage

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  isTemplate = [(SFImage *)self isTemplate];
  v43 = isTemplate ^ [(SFImage *)self shouldCropToCircle];
  [(SFImage *)self cornerRadius];
  v41 = v4;
  [(SFImage *)self scale];
  v39 = v5;
  [(SFImage *)self size];
  v37 = v6;
  [(SFImage *)self size];
  v7.f64[0] = v41;
  v7.f64[1] = v39;
  v8.f64[0] = v37;
  v8.f64[1] = v9;
  v10 = vbslq_s8(vcltzq_f64(v7), vnegq_f64(v7), v7);
  v11 = vbslq_s8(vcltzq_f64(v8), vnegq_f64(v8), v8);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vrndaq_f64(v11);
  v14 = vrndaq_f64(v10);
  v15 = vsubq_f64(v10, v14);
  v16 = vsubq_f64(v11, v13);
  v17 = vdupq_n_s64(0x3BF0000000000000uLL);
  v18 = vdupq_n_s64(0x43F0000000000000uLL);
  v19 = vnegq_f64(v12);
  v20 = vbslq_s8(v19, vmlsq_f64(v13, v18, vrndq_f64(vmulq_f64(v13, v17))), v13);
  v21 = vbslq_s8(v19, vmlsq_f64(v14, v18, vrndq_f64(vmulq_f64(v14, v17))), v14);
  v22 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v38 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v20, v22)), vcvtq_n_u64_f64(v16, 0x40uLL));
  v40 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v21, v22)), vcvtq_n_u64_f64(v15, 0x40uLL));
  contentType = [(SFImage *)self contentType];
  v42 = [contentType hash];
  keyColor = [(SFImage *)self keyColor];
  v36 = [keyColor hash];
  identifier = [(SFImage *)self identifier];
  v26 = [identifier hash];
  source = [(SFImage *)self source];
  cornerRoundingStyle = [(SFImage *)self cornerRoundingStyle];
  accessibilityLabel = [(SFImage *)self accessibilityLabel];
  v30 = [accessibilityLabel hash];
  badgingImage = [(SFImage *)self badgingImage];
  v32 = [badgingImage hash];
  v33 = veorq_s8(v40, v38);
  v34 = *&veor_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) ^ v32;

  return v34 ^ v30 ^ cornerRoundingStyle ^ v26 ^ source ^ v36 ^ v43 ^ v42;
}

- (SFImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (!protobufCopy)
  {
    selfCopy = 0;
    goto LABEL_62;
  }

  urlImage = [protobufCopy urlImage];

  if (urlImage)
  {
    v7 = [SFURLImage alloc];
    urlImage2 = [v5 urlImage];
  }

  else
  {
    contactImage = [v5 contactImage];

    if (contactImage)
    {
      v7 = [SFContactImage alloc];
      urlImage2 = [v5 contactImage];
    }

    else
    {
      monogramImage = [v5 monogramImage];

      if (monogramImage)
      {
        v7 = [SFMonogramImage alloc];
        urlImage2 = [v5 monogramImage];
      }

      else
      {
        localImage = [v5 localImage];

        if (localImage)
        {
          v7 = [SFLocalImage alloc];
          urlImage2 = [v5 localImage];
        }

        else
        {
          appIconImage = [v5 appIconImage];

          if (appIconImage)
          {
            v7 = [SFAppIconImage alloc];
            urlImage2 = [v5 appIconImage];
          }

          else
          {
            mediaArtworkImage = [v5 mediaArtworkImage];

            if (mediaArtworkImage)
            {
              v7 = [SFMediaArtworkImage alloc];
              urlImage2 = [v5 mediaArtworkImage];
            }

            else
            {
              calendarImage = [v5 calendarImage];

              if (calendarImage)
              {
                v7 = [SFCalendarImage alloc];
                urlImage2 = [v5 calendarImage];
              }

              else
              {
                symbolImage = [v5 symbolImage];

                if (symbolImage)
                {
                  v7 = [SFSymbolImage alloc];
                  urlImage2 = [v5 symbolImage];
                }

                else
                {
                  photosLibraryImage = [v5 photosLibraryImage];

                  if (photosLibraryImage)
                  {
                    v7 = [SFPhotosLibraryImage alloc];
                    urlImage2 = [v5 photosLibraryImage];
                  }

                  else
                  {
                    quickLookThumbnailImage = [v5 quickLookThumbnailImage];

                    if (quickLookThumbnailImage)
                    {
                      v7 = [SFQuickLookThumbnailImage alloc];
                      urlImage2 = [v5 quickLookThumbnailImage];
                    }

                    else
                    {
                      clockImage = [v5 clockImage];

                      if (clockImage)
                      {
                        v7 = [SFClockImage alloc];
                        urlImage2 = [v5 clockImage];
                      }

                      else
                      {
                        shortcutsImage = [v5 shortcutsImage];

                        if (shortcutsImage)
                        {
                          v7 = [SFShortcutsImage alloc];
                          urlImage2 = [v5 shortcutsImage];
                        }

                        else
                        {
                          defaultPunchoutAppIconImage = [v5 defaultPunchoutAppIconImage];

                          if (defaultPunchoutAppIconImage)
                          {
                            v7 = [SFDefaultPunchoutAppIconImage alloc];
                            urlImage2 = [v5 defaultPunchoutAppIconImage];
                          }

                          else
                          {
                            photosAlbumImage = [v5 photosAlbumImage];

                            if (photosAlbumImage)
                            {
                              v7 = [SFPhotosAlbumImage alloc];
                              urlImage2 = [v5 photosAlbumImage];
                            }

                            else
                            {
                              photosMemoryImage = [v5 photosMemoryImage];

                              if (!photosMemoryImage)
                              {
                                selfCopy = objc_alloc_init(SFImage);

                                if (!selfCopy)
                                {
                                  self = 0;
                                  goto LABEL_62;
                                }

                                goto LABEL_34;
                              }

                              v7 = [SFPhotosMemoryImage alloc];
                              urlImage2 = [v5 photosMemoryImage];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v24 = urlImage2;
  selfCopy = [(SFURLImage *)v7 initWithProtobuf:urlImage2];

LABEL_34:
  imageData = [v5 imageData];
  if (imageData)
  {
    v26 = imageData;
    urlImage3 = [v5 urlImage];

    if (!urlImage3)
    {
      imageData2 = [v5 imageData];
      [(SFImage *)selfCopy setImageData:imageData2];
    }
  }

  if ([v5 isTemplate])
  {
    -[SFImage setIsTemplate:](selfCopy, "setIsTemplate:", [v5 isTemplate]);
  }

  if ([v5 shouldCropToCircle])
  {
    -[SFImage setShouldCropToCircle:](selfCopy, "setShouldCropToCircle:", [v5 shouldCropToCircle]);
  }

  cornerRadius = [v5 cornerRadius];

  if (cornerRadius)
  {
    cornerRadius2 = [v5 cornerRadius];
    [cornerRadius2 doubleValue];
    [(SFImage *)selfCopy setCornerRadius:?];
  }

  scale = [v5 scale];

  if (scale)
  {
    scale2 = [v5 scale];
    [scale2 doubleValue];
    [(SFImage *)selfCopy setScale:?];
  }

  v33 = [v5 size];

  if (v33)
  {
    v34 = [v5 size];
    [(SFImage *)selfCopy setSize:_SFPBPointSizeHandwrittenTranslator(v34)];
  }

  contentType = [v5 contentType];

  if (contentType)
  {
    contentType2 = [v5 contentType];
    [(SFImage *)selfCopy setContentType:contentType2];
  }

  keyColor = [v5 keyColor];

  if (keyColor)
  {
    keyColor2 = [v5 keyColor];
    [(SFImage *)selfCopy setKeyColor:keyColor2];
  }

  identifier = [v5 identifier];

  if (identifier)
  {
    identifier2 = [v5 identifier];
    [(SFImage *)selfCopy setIdentifier:identifier2];
  }

  if ([v5 source])
  {
    -[SFImage setSource:](selfCopy, "setSource:", [v5 source]);
  }

  if ([v5 cornerRoundingStyle])
  {
    -[SFImage setCornerRoundingStyle:](selfCopy, "setCornerRoundingStyle:", [v5 cornerRoundingStyle]);
  }

  accessibilityLabel = [v5 accessibilityLabel];

  if (accessibilityLabel)
  {
    accessibilityLabel2 = [v5 accessibilityLabel];
    [(SFImage *)selfCopy setAccessibilityLabel:accessibilityLabel2];
  }

  badgingImage = [v5 badgingImage];

  if (badgingImage)
  {
    v44 = [SFImage alloc];
    badgingImage2 = [v5 badgingImage];
    v46 = [(SFImage *)v44 initWithProtobuf:badgingImage2];
    [(SFImage *)selfCopy setBadgingImage:v46];
  }

  self = selfCopy;
  selfCopy = self;
LABEL_62:

  return selfCopy;
}

- (void)loadImageDataWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__SFImage_Handwritten__loadImageDataWithContext_completionHandler___block_invoke;
  v8[3] = &unk_1E7ACDC08;
  v9 = handlerCopy;
  v7 = handlerCopy;
  SFResourceLoaderLoadImageWithContext(self, context, v8);
}

void __67__SFImage_Handwritten__loadImageDataWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 imageData];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)loadImageDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SFImage_Handwritten__loadImageDataWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7ACDBE0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(SFImage *)self loadImageDataWithCompletionAndErrorHandler:v6];
}

+ (id)imageWithData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(SFImage);
  [(SFImage *)v4 setImageData:dataCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v8 = equalCopy;
      imageData = [(SFImage *)self imageData];
      if (imageData)
      {
        imageData2 = [(SFImage *)v8 imageData];
        if (imageData2)
        {
          imageData3 = [(SFImage *)self imageData];
          imageData4 = [(SFImage *)v8 imageData];
          if (([imageData3 isEqual:imageData4] & 1) == 0)
          {

            v11 = 0;
            goto LABEL_31;
          }

          v10 = 1;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      isTemplate = [(SFImage *)self isTemplate];
      if (isTemplate == [(SFImage *)v8 isTemplate])
      {
        shouldCropToCircle = [(SFImage *)self shouldCropToCircle];
        if (shouldCropToCircle == [(SFImage *)v8 shouldCropToCircle])
        {
          [(SFImage *)self cornerRadius];
          v15 = v14;
          [(SFImage *)v8 cornerRadius];
          if (vabdd_f64(v15, v16) < 2.22044605e-16)
          {
            [(SFImage *)self scale];
            v18 = v17;
            [(SFImage *)v8 scale];
            if (vabdd_f64(v18, v19) < 2.22044605e-16)
            {
              [(SFImage *)self size];
              v21 = v20;
              v23 = v22;
              [(SFImage *)v8 size];
              if (v21 == v25 && v23 == v24)
              {
                contentType = [(SFImage *)self contentType];
                contentType2 = [(SFImage *)v8 contentType];
                if ((contentType != 0) == (contentType2 == 0))
                {
                  goto LABEL_45;
                }

                v73 = contentType2;
                contentType3 = [(SFImage *)self contentType];
                if (!contentType3)
                {
                  v72 = contentType;
                  goto LABEL_23;
                }

                contentType4 = [(SFImage *)self contentType];
                contentType5 = [(SFImage *)v8 contentType];
                v71 = contentType4;
                v30 = contentType4;
                v31 = contentType5;
                if ([v30 isEqual:contentType5])
                {
                  v70 = v31;
                  v72 = contentType;
LABEL_23:
                  keyColor = [(SFImage *)self keyColor];
                  keyColor2 = [(SFImage *)v8 keyColor];
                  v34 = contentType3;
                  if ((keyColor != 0) != (keyColor2 == 0))
                  {
                    v68 = keyColor2;
                    v69 = keyColor;
                    keyColor3 = [(SFImage *)self keyColor];
                    if (keyColor3)
                    {
                      keyColor4 = [(SFImage *)self keyColor];
                      keyColor5 = [(SFImage *)v8 keyColor];
                      v66 = keyColor4;
                      v38 = keyColor4;
                      v39 = keyColor5;
                      if (![v38 isEqual:keyColor5])
                      {
                        v11 = 0;
LABEL_69:

LABEL_70:
                        if (contentType3)
                        {
                        }

                        if ((v10 & 1) == 0)
                        {
LABEL_30:
                          if (!imageData)
                          {
LABEL_32:

                            goto LABEL_33;
                          }

LABEL_31:

                          goto LABEL_32;
                        }

LABEL_29:

                        goto LABEL_30;
                      }

                      v65 = v39;
                      v67 = keyColor3;
                    }

                    else
                    {
                      v67 = 0;
                    }

                    identifier = [(SFImage *)self identifier];
                    identifier2 = [(SFImage *)v8 identifier];
                    if ((identifier != 0) != (identifier2 == 0))
                    {
                      v64 = identifier2;
                      identifier3 = [(SFImage *)self identifier];
                      if (identifier3)
                      {
                        identifier4 = [(SFImage *)self identifier];
                        identifier5 = [(SFImage *)v8 identifier];
                        v59 = identifier4;
                        v44 = [identifier4 isEqual:?];
                        v45 = identifier;
                        if (!v44)
                        {
                          v11 = 0;
                          v46 = identifier3;
LABEL_67:

LABEL_68:
                          keyColor3 = v67;
                          v39 = v65;
                          if (!v67)
                          {
                            goto LABEL_70;
                          }

                          goto LABEL_69;
                        }
                      }

                      else
                      {
                        v45 = identifier;
                      }

                      source = [(SFImage *)self source];
                      if (source != [(SFImage *)v8 source]|| (v61 = [(SFImage *)self cornerRoundingStyle], v61 != [(SFImage *)v8 cornerRoundingStyle]))
                      {
                        v11 = 0;
                        goto LABEL_66;
                      }

                      accessibilityLabel = [(SFImage *)self accessibilityLabel];
                      accessibilityLabel2 = [(SFImage *)v8 accessibilityLabel];
                      if ((accessibilityLabel != 0) == (accessibilityLabel2 == 0))
                      {

                        v11 = 0;
LABEL_65:
                        v45 = identifier;
LABEL_66:
                        v46 = identifier3;
                        if (!identifier3)
                        {
                          goto LABEL_68;
                        }

                        goto LABEL_67;
                      }

                      accessibilityLabel3 = [(SFImage *)self accessibilityLabel];
                      if (!accessibilityLabel3 || (-[SFImage accessibilityLabel](self, "accessibilityLabel"), v47 = objc_claimAutoreleasedReturnValue(), -[SFImage accessibilityLabel](v8, "accessibilityLabel"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v47, [v47 isEqual:?]))
                      {
                        badgingImage = [(SFImage *)self badgingImage];
                        badgingImage2 = [(SFImage *)v8 badgingImage];
                        if ((badgingImage != 0) == (badgingImage2 == 0))
                        {

                          v11 = 0;
                        }

                        else
                        {
                          badgingImage3 = [(SFImage *)self badgingImage];
                          if (badgingImage3)
                          {
                            v49 = badgingImage3;
                            badgingImage4 = [(SFImage *)self badgingImage];
                            badgingImage5 = [(SFImage *)v8 badgingImage];
                            v11 = [badgingImage4 isEqual:badgingImage5];
                          }

                          else
                          {

                            v11 = 1;
                          }
                        }

                        if (!accessibilityLabel3)
                        {
                          goto LABEL_64;
                        }
                      }

                      else
                      {
                        v11 = 0;
                      }

LABEL_64:
                      goto LABEL_65;
                    }

                    v34 = contentType3;
                    if (v67)
                    {
                    }

                    keyColor2 = v68;
                    keyColor = v69;
                  }

                  if (v34)
                  {
                  }

                  contentType = v72;
                  contentType2 = v73;
LABEL_45:

                  v11 = 0;
                  if (!v10)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }
              }
            }
          }
        }
      }

      v11 = 0;
      if ((v10 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_33:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  imageData = [(SFImage *)self imageData];
  v6 = [imageData copy];
  [v4 setImageData:v6];

  [v4 setIsTemplate:{-[SFImage isTemplate](self, "isTemplate")}];
  [v4 setShouldCropToCircle:{-[SFImage shouldCropToCircle](self, "shouldCropToCircle")}];
  [(SFImage *)self cornerRadius];
  [v4 setCornerRadius:?];
  [(SFImage *)self scale];
  [v4 setScale:?];
  [(SFImage *)self size];
  [v4 setSize:?];
  contentType = [(SFImage *)self contentType];
  v8 = [contentType copy];
  [v4 setContentType:v8];

  keyColor = [(SFImage *)self keyColor];
  v10 = [keyColor copy];
  [v4 setKeyColor:v10];

  identifier = [(SFImage *)self identifier];
  v12 = [identifier copy];
  [v4 setIdentifier:v12];

  [v4 setSource:{-[SFImage source](self, "source")}];
  [v4 setCornerRoundingStyle:{-[SFImage cornerRoundingStyle](self, "cornerRoundingStyle")}];
  accessibilityLabel = [(SFImage *)self accessibilityLabel];
  v14 = [accessibilityLabel copy];
  [v4 setAccessibilityLabel:v14];

  badgingImage = [(SFImage *)self badgingImage];
  v16 = [badgingImage copy];
  [v4 setBadgingImage:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImage alloc] initWithFacade:self];
  jsonData = [(_SFPBImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v7 = [(SFImage *)self initWithProtobuf:v6];

  return v7;
}

@end