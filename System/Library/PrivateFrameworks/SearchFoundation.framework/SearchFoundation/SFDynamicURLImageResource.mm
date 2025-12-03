@interface SFDynamicURLImageResource
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDynamicURLImageResource)initWithCoder:(id)coder;
- (SFDynamicURLImageResource)initWithProtobuf:(id)protobuf;
- (id)_sf_replacementStringForPropertyEntryKey:(id)key value:(id)value;
- (id)_sf_urlForSettings:(id)settings shouldResize:(BOOL)resize width:(double)width height:(double)height;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDynamicURLImageResource

- (unint64_t)hash
{
  [(SFDynamicURLImageResource *)self pixelWidth];
  v15 = v3;
  [(SFDynamicURLImageResource *)self pixelHeight];
  v4.f64[0] = v15;
  v4.f64[1] = v5;
  v6 = vbslq_s8(vcltzq_f64(v4), vnegq_f64(v4), v4);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vrndaq_f64(v6);
  v16 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(vnegq_f64(v7), vmlaq_f64(v8, vdupq_n_s64(0xC3F0000000000000), vrndq_f64(vmulq_f64(v8, vdupq_n_s64(0x3BF0000000000000uLL)))), v8), vdupq_n_s64(0x41E3C6EF36200000uLL))), vcvtq_n_u64_f64(vsubq_f64(v6, v8), 0x40uLL));
  formatURL = [(SFDynamicURLImageResource *)self formatURL];
  v10 = [formatURL hash];
  supportsResizing = [(SFDynamicURLImageResource *)self supportsResizing];
  imageOptions = [(SFDynamicURLImageResource *)self imageOptions];
  v13 = v10 ^ supportsResizing ^ v16.i64[0] ^ [imageOptions hash];

  return v13 ^ v16.i64[1];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    if ([(SFDynamicURLImageResource *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      [(SFDynamicURLImageResource *)self pixelWidth];
      v8 = v7;
      [(SFDynamicURLImageResource *)v6 pixelWidth];
      if (vabdd_f64(v8, v9) >= 2.22044605e-16 || ([(SFDynamicURLImageResource *)self pixelHeight], v11 = v10, [(SFDynamicURLImageResource *)v6 pixelHeight], vabdd_f64(v11, v12) >= 2.22044605e-16))
      {
        v17 = 0;
LABEL_24:

        goto LABEL_25;
      }

      formatURL = [(SFDynamicURLImageResource *)self formatURL];
      formatURL2 = [(SFDynamicURLImageResource *)v6 formatURL];
      if ((formatURL != 0) == (formatURL2 == 0))
      {
        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }

      formatURL3 = [(SFDynamicURLImageResource *)self formatURL];
      if (formatURL3)
      {
        formatURL4 = [(SFDynamicURLImageResource *)self formatURL];
        formatURL5 = [(SFDynamicURLImageResource *)v6 formatURL];
        if (![formatURL4 isEqual:formatURL5])
        {
          v17 = 0;
          goto LABEL_21;
        }

        v27 = formatURL4;
      }

      supportsResizing = [(SFDynamicURLImageResource *)self supportsResizing];
      if (supportsResizing == [(SFDynamicURLImageResource *)v6 supportsResizing])
      {
        imageOptions = [(SFDynamicURLImageResource *)self imageOptions];
        imageOptions2 = [(SFDynamicURLImageResource *)v6 imageOptions];
        v21 = imageOptions2;
        if ((imageOptions != 0) != (imageOptions2 == 0))
        {
          imageOptions3 = [(SFDynamicURLImageResource *)self imageOptions];
          if (imageOptions3)
          {
            v23 = imageOptions3;
            imageOptions4 = [(SFDynamicURLImageResource *)self imageOptions];
            imageOptions5 = [(SFDynamicURLImageResource *)v6 imageOptions];
            v17 = [imageOptions4 isEqual:imageOptions5];
          }

          else
          {

            v17 = 1;
          }

LABEL_20:
          formatURL4 = v27;
          if (!formatURL3)
          {
LABEL_22:

            goto LABEL_23;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      v17 = 0;
      goto LABEL_20;
    }

    v17 = 0;
  }

LABEL_25:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SFDynamicURLImageResource *)self pixelWidth];
  [v4 setPixelWidth:?];
  [(SFDynamicURLImageResource *)self pixelHeight];
  [v4 setPixelHeight:?];
  formatURL = [(SFDynamicURLImageResource *)self formatURL];
  v6 = [formatURL copy];
  [v4 setFormatURL:v6];

  [v4 setSupportsResizing:{-[SFDynamicURLImageResource supportsResizing](self, "supportsResizing")}];
  imageOptions = [(SFDynamicURLImageResource *)self imageOptions];
  v8 = [imageOptions copy];
  [v4 setImageOptions:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:self];
  jsonData = [(_SFPBDynamicURLImageResource *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDynamicURLImageResource *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:self];
  data = [(_SFPBDynamicURLImageResource *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFDynamicURLImageResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDynamicURLImageResource alloc] initWithData:v5];
  v7 = [(SFDynamicURLImageResource *)self initWithProtobuf:v6];

  return v7;
}

- (id)_sf_replacementStringForPropertyEntryKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  imageOptions = [(SFDynamicURLImageResource *)self imageOptions];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__SFDynamicURLImageResource_SiriSupport___sf_replacementStringForPropertyEntryKey_value___block_invoke;
  v13[3] = &unk_1E7ACDB18;
  v9 = keyCopy;
  v14 = v9;
  v16 = &v17;
  v10 = valueCopy;
  v15 = v10;
  [imageOptions enumerateObjectsUsingBlock:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __89__SFDynamicURLImageResource_SiriSupport___sf_replacementStringForPropertyEntryKey_value___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 name];
  v7 = [v6 isEqualToString:a1[4]];

  if (v7)
  {
    v8 = a1[5];
    if (v8)
    {
      v6 = [v10 options];
      [v6 objectForKeyedSubscript:a1[5]];
    }

    else
    {
      [v10 defaultValue];
    }
    v9 = ;
    objc_storeStrong((*(a1[6] + 8) + 40), v9);
    if (v8)
    {

      v9 = v6;
    }

    *a4 = 1;
  }
}

- (id)_sf_urlForSettings:(id)settings shouldResize:(BOOL)resize width:(double)width height:(double)height
{
  resizeCopy = resize;
  settingsCopy = settings;
  if (resizeCopy && [(SFDynamicURLImageResource *)self supportsResizing])
  {
    v11 = round(width);
    v12 = round(height);
  }

  else
  {
    [(SFDynamicURLImageResource *)self pixelWidth];
    v11 = v13;
    [(SFDynamicURLImageResource *)self pixelHeight];
    v12 = v14;
  }

  formatURL = [(SFDynamicURLImageResource *)self formatURL];
  v16 = [formatURL mutableCopy];

  if ([v16 length])
  {
    v17 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\{[^}]+\\}" options:0 error:0];
    formatURL2 = [(SFDynamicURLImageResource *)self formatURL];
    v19 = [formatURL2 length];

    formatURL3 = [(SFDynamicURLImageResource *)self formatURL];
    v21 = [v17 matchesInString:formatURL3 options:0 range:{0, v19}];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __87__SFDynamicURLImageResource_SiriSupport___sf_urlForSettings_shouldResize_width_height___block_invoke;
    v28 = &unk_1E7ACDAF0;
    v29 = formatURL3;
    v33 = v11;
    v34 = v12;
    v30 = v16;
    selfCopy = self;
    v32 = settingsCopy;
    v22 = formatURL3;
    [v21 enumerateObjectsWithOptions:2 usingBlock:&v25];
  }

  if ([v16 length])
  {
    v23 = [MEMORY[0x1E695DFF8] URLWithString:v16];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void __87__SFDynamicURLImageResource_SiriSupport___sf_urlForSettings_shouldResize_width_height___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 range];
  [v3 range];
  v6 = [*(a1 + 32) substringWithRange:{v4 + 1, v5 - 2}];
  if ([v6 isEqualToString:@"w"])
  {
    v7 = *(a1 + 40);
    v8 = [v3 range];
    v10 = v9;
    v11 = MEMORY[0x1E696AEC0];
    v12 = MEMORY[0x1E696AD98];
    v13 = *(a1 + 64);
LABEL_5:
    v15 = [v12 numberWithInteger:v13];
    v16 = [v11 stringWithFormat:@"%@", v15];
    [v7 replaceCharactersInRange:v8 withString:{v10, v16}];

    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"h"])
  {
    v7 = *(a1 + 40);
    v8 = [v3 range];
    v10 = v14;
    v11 = MEMORY[0x1E696AEC0];
    v12 = MEMORY[0x1E696AD98];
    v13 = *(a1 + 72);
    goto LABEL_5;
  }

  if (([v6 isEqualToString:@"color-profile"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"f"))
  {
    v18 = *(a1 + 48);
    v19 = [*(a1 + 56) objectForKeyedSubscript:v6];
    v20 = [v18 _sf_replacementStringForPropertyEntryKey:v6 value:v19];

    if (v20)
    {
      v21 = *(a1 + 40);
      v22 = [v3 range];
      [v21 replaceCharactersInRange:v22 withString:{v23, v20}];
    }

    else
    {
      if (PARLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v24 = PARLogHandleForCategory_logHandles_1;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 56);
        v26 = v24;
        v27 = [v25 objectForKeyedSubscript:v6];
        v28 = *(a1 + 48);
        *buf = 138412802;
        v30 = v6;
        v31 = 2112;
        v32 = v27;
        v33 = 2112;
        v34 = v28;
        _os_log_error_impl(&dword_1B116E000, v26, OS_LOG_TYPE_ERROR, "Could not find formatReplacement for key: %@, value: %@, in image resource: %@", buf, 0x20u);
      }
    }
  }

LABEL_6:

  v17 = *MEMORY[0x1E69E9840];
}

- (SFDynamicURLImageResource)initWithProtobuf:(id)protobuf
{
  v29 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v27.receiver = self;
  v27.super_class = SFDynamicURLImageResource;
  v5 = [(SFDynamicURLImageResource *)&v27 init];
  if (v5)
  {
    pixelWidth = [protobufCopy pixelWidth];

    if (pixelWidth)
    {
      pixelWidth2 = [protobufCopy pixelWidth];
      [pixelWidth2 doubleValue];
      [(SFDynamicURLImageResource *)v5 setPixelWidth:?];
    }

    pixelHeight = [protobufCopy pixelHeight];

    if (pixelHeight)
    {
      pixelHeight2 = [protobufCopy pixelHeight];
      [pixelHeight2 doubleValue];
      [(SFDynamicURLImageResource *)v5 setPixelHeight:?];
    }

    formatURL = [protobufCopy formatURL];

    if (formatURL)
    {
      formatURL2 = [protobufCopy formatURL];
      [(SFDynamicURLImageResource *)v5 setFormatURL:formatURL2];
    }

    if ([protobufCopy supportsResizing])
    {
      -[SFDynamicURLImageResource setSupportsResizing:](v5, "setSupportsResizing:", [protobufCopy supportsResizing]);
    }

    imageOptions = [protobufCopy imageOptions];
    if (imageOptions)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    imageOptions2 = [protobufCopy imageOptions];
    v15 = [imageOptions2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(imageOptions2);
          }

          v19 = [[SFImageOption alloc] initWithProtobuf:*(*(&v23 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [imageOptions2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    [(SFDynamicURLImageResource *)v5 setImageOptions:v13];
    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

@end