@interface SFImage
+ (id)imageWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImage)initWithCoder:(id)a3;
- (SFImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)loadImageDataWithCompletionHandler:(id)a3;
- (void)loadImageDataWithContext:(id)a3 completionHandler:(id)a4;
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
  v3 = [(SFImage *)self isTemplate];
  v43 = v3 ^ [(SFImage *)self shouldCropToCircle];
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
  v23 = [(SFImage *)self contentType];
  v42 = [v23 hash];
  v24 = [(SFImage *)self keyColor];
  v36 = [v24 hash];
  v25 = [(SFImage *)self identifier];
  v26 = [v25 hash];
  v27 = [(SFImage *)self source];
  v28 = [(SFImage *)self cornerRoundingStyle];
  v29 = [(SFImage *)self accessibilityLabel];
  v30 = [v29 hash];
  v31 = [(SFImage *)self badgingImage];
  v32 = [v31 hash];
  v33 = veorq_s8(v40, v38);
  v34 = *&veor_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) ^ v32;

  return v34 ^ v30 ^ v28 ^ v26 ^ v27 ^ v36 ^ v43 ^ v42;
}

- (SFImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_62;
  }

  v6 = [v4 urlImage];

  if (v6)
  {
    v7 = [SFURLImage alloc];
    v8 = [v5 urlImage];
  }

  else
  {
    v10 = [v5 contactImage];

    if (v10)
    {
      v7 = [SFContactImage alloc];
      v8 = [v5 contactImage];
    }

    else
    {
      v11 = [v5 monogramImage];

      if (v11)
      {
        v7 = [SFMonogramImage alloc];
        v8 = [v5 monogramImage];
      }

      else
      {
        v12 = [v5 localImage];

        if (v12)
        {
          v7 = [SFLocalImage alloc];
          v8 = [v5 localImage];
        }

        else
        {
          v13 = [v5 appIconImage];

          if (v13)
          {
            v7 = [SFAppIconImage alloc];
            v8 = [v5 appIconImage];
          }

          else
          {
            v14 = [v5 mediaArtworkImage];

            if (v14)
            {
              v7 = [SFMediaArtworkImage alloc];
              v8 = [v5 mediaArtworkImage];
            }

            else
            {
              v15 = [v5 calendarImage];

              if (v15)
              {
                v7 = [SFCalendarImage alloc];
                v8 = [v5 calendarImage];
              }

              else
              {
                v16 = [v5 symbolImage];

                if (v16)
                {
                  v7 = [SFSymbolImage alloc];
                  v8 = [v5 symbolImage];
                }

                else
                {
                  v17 = [v5 photosLibraryImage];

                  if (v17)
                  {
                    v7 = [SFPhotosLibraryImage alloc];
                    v8 = [v5 photosLibraryImage];
                  }

                  else
                  {
                    v18 = [v5 quickLookThumbnailImage];

                    if (v18)
                    {
                      v7 = [SFQuickLookThumbnailImage alloc];
                      v8 = [v5 quickLookThumbnailImage];
                    }

                    else
                    {
                      v19 = [v5 clockImage];

                      if (v19)
                      {
                        v7 = [SFClockImage alloc];
                        v8 = [v5 clockImage];
                      }

                      else
                      {
                        v20 = [v5 shortcutsImage];

                        if (v20)
                        {
                          v7 = [SFShortcutsImage alloc];
                          v8 = [v5 shortcutsImage];
                        }

                        else
                        {
                          v21 = [v5 defaultPunchoutAppIconImage];

                          if (v21)
                          {
                            v7 = [SFDefaultPunchoutAppIconImage alloc];
                            v8 = [v5 defaultPunchoutAppIconImage];
                          }

                          else
                          {
                            v22 = [v5 photosAlbumImage];

                            if (v22)
                            {
                              v7 = [SFPhotosAlbumImage alloc];
                              v8 = [v5 photosAlbumImage];
                            }

                            else
                            {
                              v23 = [v5 photosMemoryImage];

                              if (!v23)
                              {
                                v9 = objc_alloc_init(SFImage);

                                if (!v9)
                                {
                                  self = 0;
                                  goto LABEL_62;
                                }

                                goto LABEL_34;
                              }

                              v7 = [SFPhotosMemoryImage alloc];
                              v8 = [v5 photosMemoryImage];
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

  v24 = v8;
  v9 = [(SFURLImage *)v7 initWithProtobuf:v8];

LABEL_34:
  v25 = [v5 imageData];
  if (v25)
  {
    v26 = v25;
    v27 = [v5 urlImage];

    if (!v27)
    {
      v28 = [v5 imageData];
      [(SFImage *)v9 setImageData:v28];
    }
  }

  if ([v5 isTemplate])
  {
    -[SFImage setIsTemplate:](v9, "setIsTemplate:", [v5 isTemplate]);
  }

  if ([v5 shouldCropToCircle])
  {
    -[SFImage setShouldCropToCircle:](v9, "setShouldCropToCircle:", [v5 shouldCropToCircle]);
  }

  v29 = [v5 cornerRadius];

  if (v29)
  {
    v30 = [v5 cornerRadius];
    [v30 doubleValue];
    [(SFImage *)v9 setCornerRadius:?];
  }

  v31 = [v5 scale];

  if (v31)
  {
    v32 = [v5 scale];
    [v32 doubleValue];
    [(SFImage *)v9 setScale:?];
  }

  v33 = [v5 size];

  if (v33)
  {
    v34 = [v5 size];
    [(SFImage *)v9 setSize:_SFPBPointSizeHandwrittenTranslator(v34)];
  }

  v35 = [v5 contentType];

  if (v35)
  {
    v36 = [v5 contentType];
    [(SFImage *)v9 setContentType:v36];
  }

  v37 = [v5 keyColor];

  if (v37)
  {
    v38 = [v5 keyColor];
    [(SFImage *)v9 setKeyColor:v38];
  }

  v39 = [v5 identifier];

  if (v39)
  {
    v40 = [v5 identifier];
    [(SFImage *)v9 setIdentifier:v40];
  }

  if ([v5 source])
  {
    -[SFImage setSource:](v9, "setSource:", [v5 source]);
  }

  if ([v5 cornerRoundingStyle])
  {
    -[SFImage setCornerRoundingStyle:](v9, "setCornerRoundingStyle:", [v5 cornerRoundingStyle]);
  }

  v41 = [v5 accessibilityLabel];

  if (v41)
  {
    v42 = [v5 accessibilityLabel];
    [(SFImage *)v9 setAccessibilityLabel:v42];
  }

  v43 = [v5 badgingImage];

  if (v43)
  {
    v44 = [SFImage alloc];
    v45 = [v5 badgingImage];
    v46 = [(SFImage *)v44 initWithProtobuf:v45];
    [(SFImage *)v9 setBadgingImage:v46];
  }

  self = v9;
  v9 = self;
LABEL_62:

  return v9;
}

- (void)loadImageDataWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__SFImage_Handwritten__loadImageDataWithContext_completionHandler___block_invoke;
  v8[3] = &unk_1E7ACDC08;
  v9 = v6;
  v7 = v6;
  SFResourceLoaderLoadImageWithContext(self, a3, v8);
}

void __67__SFImage_Handwritten__loadImageDataWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 imageData];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)loadImageDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SFImage_Handwritten__loadImageDataWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7ACDBE0;
  v7 = v4;
  v5 = v4;
  [(SFImage *)self loadImageDataWithCompletionAndErrorHandler:v6];
}

+ (id)imageWithData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SFImage);
  [(SFImage *)v4 setImageData:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFImage *)v7 isMemberOfClass:objc_opt_class()])
    {
      v8 = v7;
      v9 = [(SFImage *)self imageData];
      if (v9)
      {
        v3 = [(SFImage *)v8 imageData];
        if (v3)
        {
          v4 = [(SFImage *)self imageData];
          v5 = [(SFImage *)v8 imageData];
          if (([v4 isEqual:v5] & 1) == 0)
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

      v12 = [(SFImage *)self isTemplate];
      if (v12 == [(SFImage *)v8 isTemplate])
      {
        v13 = [(SFImage *)self shouldCropToCircle];
        if (v13 == [(SFImage *)v8 shouldCropToCircle])
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
                v26 = [(SFImage *)self contentType];
                v27 = [(SFImage *)v8 contentType];
                if ((v26 != 0) == (v27 == 0))
                {
                  goto LABEL_45;
                }

                v73 = v27;
                v74 = [(SFImage *)self contentType];
                if (!v74)
                {
                  v72 = v26;
                  goto LABEL_23;
                }

                v28 = [(SFImage *)self contentType];
                v29 = [(SFImage *)v8 contentType];
                v71 = v28;
                v30 = v28;
                v31 = v29;
                if ([v30 isEqual:v29])
                {
                  v70 = v31;
                  v72 = v26;
LABEL_23:
                  v32 = [(SFImage *)self keyColor];
                  v33 = [(SFImage *)v8 keyColor];
                  v34 = v74;
                  if ((v32 != 0) != (v33 == 0))
                  {
                    v68 = v33;
                    v69 = v32;
                    v35 = [(SFImage *)self keyColor];
                    if (v35)
                    {
                      v36 = [(SFImage *)self keyColor];
                      v37 = [(SFImage *)v8 keyColor];
                      v66 = v36;
                      v38 = v36;
                      v39 = v37;
                      if (![v38 isEqual:v37])
                      {
                        v11 = 0;
LABEL_69:

LABEL_70:
                        if (v74)
                        {
                        }

                        if ((v10 & 1) == 0)
                        {
LABEL_30:
                          if (!v9)
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
                      v67 = v35;
                    }

                    else
                    {
                      v67 = 0;
                    }

                    v41 = [(SFImage *)self identifier];
                    v42 = [(SFImage *)v8 identifier];
                    if ((v41 != 0) != (v42 == 0))
                    {
                      v64 = v42;
                      v63 = [(SFImage *)self identifier];
                      if (v63)
                      {
                        v43 = [(SFImage *)self identifier];
                        v58 = [(SFImage *)v8 identifier];
                        v59 = v43;
                        v44 = [v43 isEqual:?];
                        v45 = v41;
                        if (!v44)
                        {
                          v11 = 0;
                          v46 = v63;
LABEL_67:

LABEL_68:
                          v35 = v67;
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
                        v45 = v41;
                      }

                      v60 = [(SFImage *)self source];
                      if (v60 != [(SFImage *)v8 source]|| (v61 = [(SFImage *)self cornerRoundingStyle], v61 != [(SFImage *)v8 cornerRoundingStyle]))
                      {
                        v11 = 0;
                        goto LABEL_66;
                      }

                      v62 = [(SFImage *)self accessibilityLabel];
                      v57 = [(SFImage *)v8 accessibilityLabel];
                      if ((v62 != 0) == (v57 == 0))
                      {

                        v11 = 0;
LABEL_65:
                        v45 = v41;
LABEL_66:
                        v46 = v63;
                        if (!v63)
                        {
                          goto LABEL_68;
                        }

                        goto LABEL_67;
                      }

                      v56 = [(SFImage *)self accessibilityLabel];
                      if (!v56 || (-[SFImage accessibilityLabel](self, "accessibilityLabel"), v47 = objc_claimAutoreleasedReturnValue(), -[SFImage accessibilityLabel](v8, "accessibilityLabel"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v47, [v47 isEqual:?]))
                      {
                        v55 = [(SFImage *)self badgingImage];
                        v54 = [(SFImage *)v8 badgingImage];
                        if ((v55 != 0) == (v54 == 0))
                        {

                          v11 = 0;
                        }

                        else
                        {
                          v48 = [(SFImage *)self badgingImage];
                          if (v48)
                          {
                            v49 = v48;
                            v51 = [(SFImage *)self badgingImage];
                            v50 = [(SFImage *)v8 badgingImage];
                            v11 = [v51 isEqual:v50];
                          }

                          else
                          {

                            v11 = 1;
                          }
                        }

                        if (!v56)
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

                    v34 = v74;
                    if (v67)
                    {
                    }

                    v33 = v68;
                    v32 = v69;
                  }

                  if (v34)
                  {
                  }

                  v26 = v72;
                  v27 = v73;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFImage *)self imageData];
  v6 = [v5 copy];
  [v4 setImageData:v6];

  [v4 setIsTemplate:{-[SFImage isTemplate](self, "isTemplate")}];
  [v4 setShouldCropToCircle:{-[SFImage shouldCropToCircle](self, "shouldCropToCircle")}];
  [(SFImage *)self cornerRadius];
  [v4 setCornerRadius:?];
  [(SFImage *)self scale];
  [v4 setScale:?];
  [(SFImage *)self size];
  [v4 setSize:?];
  v7 = [(SFImage *)self contentType];
  v8 = [v7 copy];
  [v4 setContentType:v8];

  v9 = [(SFImage *)self keyColor];
  v10 = [v9 copy];
  [v4 setKeyColor:v10];

  v11 = [(SFImage *)self identifier];
  v12 = [v11 copy];
  [v4 setIdentifier:v12];

  [v4 setSource:{-[SFImage source](self, "source")}];
  [v4 setCornerRoundingStyle:{-[SFImage cornerRoundingStyle](self, "cornerRoundingStyle")}];
  v13 = [(SFImage *)self accessibilityLabel];
  v14 = [v13 copy];
  [v4 setAccessibilityLabel:v14];

  v15 = [(SFImage *)self badgingImage];
  v16 = [v15 copy];
  [v4 setBadgingImage:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImage alloc] initWithFacade:self];
  v3 = [(_SFPBImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImage alloc] initWithFacade:self];
  v3 = [(_SFPBImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v7 = [(SFImage *)self initWithProtobuf:v6];

  return v7;
}

@end