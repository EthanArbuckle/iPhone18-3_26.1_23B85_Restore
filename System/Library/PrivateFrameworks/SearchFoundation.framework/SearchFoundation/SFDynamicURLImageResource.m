@interface SFDynamicURLImageResource
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDynamicURLImageResource)initWithCoder:(id)a3;
- (SFDynamicURLImageResource)initWithProtobuf:(id)a3;
- (id)_sf_replacementStringForPropertyEntryKey:(id)a3 value:(id)a4;
- (id)_sf_urlForSettings:(id)a3 shouldResize:(BOOL)a4 width:(double)a5 height:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v9 = [(SFDynamicURLImageResource *)self formatURL];
  v10 = [v9 hash];
  v11 = [(SFDynamicURLImageResource *)self supportsResizing];
  v12 = [(SFDynamicURLImageResource *)self imageOptions];
  v13 = v10 ^ v11 ^ v16.i64[0] ^ [v12 hash];

  return v13 ^ v16.i64[1];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v17 = 1;
  }

  else
  {
    if ([(SFDynamicURLImageResource *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      [(SFDynamicURLImageResource *)self pixelWidth];
      v8 = v7;
      [(SFDynamicURLImageResource *)v6 pixelWidth];
      if (vabdd_f64(v8, v9) >= 2.22044605e-16 || ([(SFDynamicURLImageResource *)self pixelHeight], v11 = v10, [(SFDynamicURLImageResource *)v6 pixelHeight], vabdd_f64(v11, v12) >= 2.22044605e-16))
      {
        v17 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v13 = [(SFDynamicURLImageResource *)self formatURL];
      v14 = [(SFDynamicURLImageResource *)v6 formatURL];
      if ((v13 != 0) == (v14 == 0))
      {
        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v15 = [(SFDynamicURLImageResource *)self formatURL];
      if (v15)
      {
        v16 = [(SFDynamicURLImageResource *)self formatURL];
        v3 = [(SFDynamicURLImageResource *)v6 formatURL];
        if (![v16 isEqual:v3])
        {
          v17 = 0;
          goto LABEL_21;
        }

        v27 = v16;
      }

      v18 = [(SFDynamicURLImageResource *)self supportsResizing];
      if (v18 == [(SFDynamicURLImageResource *)v6 supportsResizing])
      {
        v19 = [(SFDynamicURLImageResource *)self imageOptions];
        v20 = [(SFDynamicURLImageResource *)v6 imageOptions];
        v21 = v20;
        if ((v19 != 0) != (v20 == 0))
        {
          v22 = [(SFDynamicURLImageResource *)self imageOptions];
          if (v22)
          {
            v23 = v22;
            v26 = [(SFDynamicURLImageResource *)self imageOptions];
            v25 = [(SFDynamicURLImageResource *)v6 imageOptions];
            v17 = [v26 isEqual:v25];
          }

          else
          {

            v17 = 1;
          }

LABEL_20:
          v16 = v27;
          if (!v15)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(SFDynamicURLImageResource *)self pixelWidth];
  [v4 setPixelWidth:?];
  [(SFDynamicURLImageResource *)self pixelHeight];
  [v4 setPixelHeight:?];
  v5 = [(SFDynamicURLImageResource *)self formatURL];
  v6 = [v5 copy];
  [v4 setFormatURL:v6];

  [v4 setSupportsResizing:{-[SFDynamicURLImageResource supportsResizing](self, "supportsResizing")}];
  v7 = [(SFDynamicURLImageResource *)self imageOptions];
  v8 = [v7 copy];
  [v4 setImageOptions:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:self];
  v3 = [(_SFPBDynamicURLImageResource *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:self];
  v3 = [(_SFPBDynamicURLImageResource *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBDynamicURLImageResource alloc] initWithFacade:self];
  v5 = [(_SFPBDynamicURLImageResource *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFDynamicURLImageResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDynamicURLImageResource alloc] initWithData:v5];
  v7 = [(SFDynamicURLImageResource *)self initWithProtobuf:v6];

  return v7;
}

- (id)_sf_replacementStringForPropertyEntryKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v8 = [(SFDynamicURLImageResource *)self imageOptions];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__SFDynamicURLImageResource_SiriSupport___sf_replacementStringForPropertyEntryKey_value___block_invoke;
  v13[3] = &unk_1E7ACDB18;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  v10 = v7;
  v15 = v10;
  [v8 enumerateObjectsUsingBlock:v13];

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

- (id)_sf_urlForSettings:(id)a3 shouldResize:(BOOL)a4 width:(double)a5 height:(double)a6
{
  v8 = a4;
  v10 = a3;
  if (v8 && [(SFDynamicURLImageResource *)self supportsResizing])
  {
    v11 = round(a5);
    v12 = round(a6);
  }

  else
  {
    [(SFDynamicURLImageResource *)self pixelWidth];
    v11 = v13;
    [(SFDynamicURLImageResource *)self pixelHeight];
    v12 = v14;
  }

  v15 = [(SFDynamicURLImageResource *)self formatURL];
  v16 = [v15 mutableCopy];

  if ([v16 length])
  {
    v17 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\{[^}]+\\}" options:0 error:0];
    v18 = [(SFDynamicURLImageResource *)self formatURL];
    v19 = [v18 length];

    v20 = [(SFDynamicURLImageResource *)self formatURL];
    v21 = [v17 matchesInString:v20 options:0 range:{0, v19}];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __87__SFDynamicURLImageResource_SiriSupport___sf_urlForSettings_shouldResize_width_height___block_invoke;
    v28 = &unk_1E7ACDAF0;
    v29 = v20;
    v33 = v11;
    v34 = v12;
    v30 = v16;
    v31 = self;
    v32 = v10;
    v22 = v20;
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

- (SFDynamicURLImageResource)initWithProtobuf:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SFDynamicURLImageResource;
  v5 = [(SFDynamicURLImageResource *)&v27 init];
  if (v5)
  {
    v6 = [v4 pixelWidth];

    if (v6)
    {
      v7 = [v4 pixelWidth];
      [v7 doubleValue];
      [(SFDynamicURLImageResource *)v5 setPixelWidth:?];
    }

    v8 = [v4 pixelHeight];

    if (v8)
    {
      v9 = [v4 pixelHeight];
      [v9 doubleValue];
      [(SFDynamicURLImageResource *)v5 setPixelHeight:?];
    }

    v10 = [v4 formatURL];

    if (v10)
    {
      v11 = [v4 formatURL];
      [(SFDynamicURLImageResource *)v5 setFormatURL:v11];
    }

    if ([v4 supportsResizing])
    {
      -[SFDynamicURLImageResource setSupportsResizing:](v5, "setSupportsResizing:", [v4 supportsResizing]);
    }

    v12 = [v4 imageOptions];
    if (v12)
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
    v14 = [v4 imageOptions];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [[SFImageOption alloc] initWithProtobuf:*(*(&v23 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
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