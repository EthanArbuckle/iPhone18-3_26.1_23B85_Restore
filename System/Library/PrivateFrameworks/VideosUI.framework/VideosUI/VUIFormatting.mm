@interface VUIFormatting
+ (id)isoDateFormatter;
+ (id)rfc1123DateFormatter;
+ (id)sharedInstance;
- (VUIFormatting)init;
- (id)formatDate:(id)a3 format:(id)a4;
- (id)formatDuration:(id)a3 format:(id)a4;
- (id)formatInitialsForFirstName:(id)a3 lastName:(id)a4;
- (id)formatLocalizedLocaleIdentifier:(id)a3;
- (id)formatLocalizedNumber:(id)a3 style:(id)a4 postiveFormat:(id)a5 negativeFormat:(id)a6 currencyCode:(id)a7;
- (id)formatNumber:(id)a3 style:(id)a4 postiveFormat:(id)a5 negativeFormat:(id)a6;
- (id)joinComponents:(id)a3 withASCII:(id)a4 arabic:(id)a5 ethiopic:(id)a6 ideograph:(id)a7;
@end

@implementation VUIFormatting

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[VUIFormatting sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_0;

  return v3;
}

void __31__VUIFormatting_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIFormatting);
  v1 = sharedInstance_sSharedInstance_0;
  sharedInstance_sSharedInstance_0 = v0;
}

+ (id)rfc1123DateFormatter
{
  if (rfc1123DateFormatter_onceToken != -1)
  {
    +[VUIFormatting rfc1123DateFormatter];
  }

  v3 = rfc1123DateFormatter_sRFC1123Formatter;

  return v3;
}

void __37__VUIFormatting_rfc1123DateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = rfc1123DateFormatter_sRFC1123Formatter;
  rfc1123DateFormatter_sRFC1123Formatter = v0;

  v2 = rfc1123DateFormatter_sRFC1123Formatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [rfc1123DateFormatter_sRFC1123Formatter setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
  v4 = rfc1123DateFormatter_sRFC1123Formatter;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];
}

+ (id)isoDateFormatter
{
  if (isoDateFormatter_onceToken != -1)
  {
    +[VUIFormatting isoDateFormatter];
  }

  v3 = isoDateFormatter_sISOFormatter;

  return v3;
}

void __33__VUIFormatting_isoDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = isoDateFormatter_sISOFormatter;
  isoDateFormatter_sISOFormatter = v0;

  v2 = isoDateFormatter_sISOFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [isoDateFormatter_sISOFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v4 = isoDateFormatter_sISOFormatter;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];
}

- (VUIFormatting)init
{
  v12.receiver = self;
  v12.super_class = VUIFormatting;
  v2 = [(VUIFormatting *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dateFormatters = v2->_dateFormatters;
    v2->_dateFormatters = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    numberFormatters = v2->_numberFormatters;
    v2->_numberFormatters = v5;

    v2->_dateFormattersLock._os_unfair_lock_opaque = 0;
    v2->_numberFormattersLock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    durationFormatter = v2->_durationFormatter;
    v2->_durationFormatter = v7;

    [(NSNumberFormatter *)v2->_durationFormatter setNumberStyle:1];
    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    durationPaddedFormatter = v2->_durationPaddedFormatter;
    v2->_durationPaddedFormatter = v9;

    [(NSNumberFormatter *)v2->_durationPaddedFormatter setNumberStyle:1];
    [(NSNumberFormatter *)v2->_durationPaddedFormatter setPositiveFormat:@"00"];
  }

  return v2;
}

- (id)formatDate:(id)a3 format:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(__CFString *)v6 length];
  v9 = @"default";
  if (v8)
  {
    v9 = v6;
  }

  v10 = v9;

  os_unfair_lock_lock(&self->_dateFormattersLock);
  v11 = [(NSMutableDictionary *)self->_dateFormatters objectForKey:v10];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    if ([(__CFString *)v10 isEqualToString:@"default"])
    {
      [v11 setDateStyle:2];
      [v11 setTimeStyle:0];
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = MEMORY[0x1E696AB78];
      v13 = [MEMORY[0x1E695DF58] currentLocale];
      v14 = [v12 dateFormatFromTemplate:v10 options:0 locale:v13];

      [v11 setDateFormat:v14];
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    [(NSMutableDictionary *)self->_dateFormatters setObject:v11 forKey:v10];
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_dateFormattersLock);
  v15 = [v11 stringFromDate:v7];

  return v15;
}

- (id)formatDuration:(id)a3 format:(id)a4
{
  v5 = a3;
  v6 = a4;
  v42 = v5;
  if ([v6 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 integerValue];
    goto LABEL_5;
  }

  v7 = [v6 rangeOfString:@"k"];
  v8 = [v5 integerValue];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v9 = v8 / 3600;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:
  v10 = v8 - 3600 * v9;
  v11 = ((v10 * 0x8888888888888889) >> 64) + v10;
  v12 = v11 >> 5;
  v13 = MEMORY[0x1E696AB78];
  v14 = [MEMORY[0x1E695DF58] currentLocale];
  v15 = [v13 dateFormatFromTemplate:v6 options:0 locale:v14];
  v16 = [v15 mutableCopy];

  if (v9 >= 1)
  {
    v17 = [v16 rangeOfString:@"HH"];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL || (v17 = [v16 rangeOfString:@"H"], v17 != 0x7FFFFFFFFFFFFFFFLL) || (v17 = objc_msgSend(v16, "rangeOfString:", @"kk"), v17 != 0x7FFFFFFFFFFFFFFFLL) || (v17 = objc_msgSend(v16, "rangeOfString:", @"k"), v17 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v19 = v17;
      v20 = v18;
      durationFormatter = self->_durationFormatter;
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v23 = [(NSNumberFormatter *)durationFormatter stringFromNumber:v22];

      [v16 replaceCharactersInRange:v19 withString:{v20, v23}];
      v12 = v11 >> 5;
    }
  }

  v24 = v12 + (v11 >> 63);
  v25 = [v16 rangeOfString:@"mm"];
  if (v25 != 0x7FFFFFFFFFFFFFFFLL || (v25 = [v16 rangeOfString:@"m"], v25 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v27 = v25;
    v28 = v26;
    v29 = 40;
    if (v9 > 0)
    {
      v29 = 48;
    }

    v30 = MEMORY[0x1E696AD98];
    v31 = *(&self->super.isa + v29);
    v32 = [v30 numberWithInteger:v24];
    v33 = [v31 stringFromNumber:v32];

    [v16 replaceCharactersInRange:v27 withString:{v28, v33}];
  }

  v34 = [v16 rangeOfString:@"ss"];
  if (v34 != 0x7FFFFFFFFFFFFFFFLL || (v34 = [v16 rangeOfString:@"s"], v34 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v36 = v34;
    v37 = v35;
    durationPaddedFormatter = self->_durationPaddedFormatter;
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:v10 - 60 * v24];
    v40 = [(NSNumberFormatter *)durationPaddedFormatter stringFromNumber:v39];

    [v16 replaceCharactersInRange:v36 withString:{v37, v40}];
  }

  return v16;
}

- (id)formatNumber:(id)a3 style:(id)a4 postiveFormat:(id)a5 negativeFormat:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695DF70];
  v14 = a3;
  v15 = objc_alloc_init(v13);
  v16 = v15;
  if (v10)
  {
    [v15 addObject:v10];
  }

  if (v11)
  {
    [v16 addObject:v11];
  }

  if (v12)
  {
    [v16 addObject:v12];
  }

  v17 = [v16 valueForKey:@"description"];
  v18 = [v17 componentsJoinedByString:@"_"];

  os_unfair_lock_lock(&self->_numberFormattersLock);
  v19 = [(NSMutableDictionary *)self->_numberFormatters objectForKey:v18];
  if (!v19)
  {
    if ([v10 isEqualToString:@"noStyle"])
    {
      v20 = 0;
    }

    else if ([v10 isEqualToString:@"decimal"])
    {
      v20 = 1;
    }

    else if ([v10 isEqualToString:@"currency"])
    {
      v20 = 2;
    }

    else if ([v10 isEqualToString:@"percent"])
    {
      v20 = 3;
    }

    else if ([v10 isEqualToString:@"scientific"])
    {
      v20 = 4;
    }

    else if ([v10 isEqualToString:@"spellOut"])
    {
      v20 = 5;
    }

    else
    {
      v20 = 1;
    }

    v19 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v19 setNumberStyle:v20];
    if ([v11 length])
    {
      [v19 setPositiveFormat:v11];
    }

    if ([v12 length])
    {
      [v19 setNegativeFormat:v12];
    }

    if (v19)
    {
      [(NSMutableDictionary *)self->_numberFormatters setObject:v19 forKey:v18];
    }
  }

  os_unfair_lock_unlock(&self->_numberFormattersLock);
  v21 = [v19 stringFromNumber:v14];

  return v21;
}

- (id)formatLocalizedNumber:(id)a3 style:(id)a4 postiveFormat:(id)a5 negativeFormat:(id)a6 currencyCode:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E695DF70];
  v17 = a3;
  v18 = objc_alloc_init(v16);
  v19 = v18;
  if (v12)
  {
    [v18 addObject:v12];
  }

  if (v13)
  {
    [v19 addObject:v13];
  }

  if (v14)
  {
    [v19 addObject:v14];
  }

  if (v15)
  {
    [v19 addObject:v15];
  }

  v20 = [v19 valueForKey:@"description"];
  v21 = [v20 componentsJoinedByString:@"|"];

  os_unfair_lock_lock(&self->_numberFormattersLock);
  v22 = [(NSMutableDictionary *)self->_numberFormatters objectForKey:v21];
  if (!v22)
  {
    if ([v12 isEqualToString:@"noStyle"])
    {
      v23 = 0;
    }

    else if ([v12 isEqualToString:@"decimal"])
    {
      v23 = 1;
    }

    else if ([v12 isEqualToString:@"currency"])
    {
      v23 = 2;
    }

    else if ([v12 isEqualToString:@"percent"])
    {
      v23 = 3;
    }

    else if ([v12 isEqualToString:@"scientific"])
    {
      v23 = 4;
    }

    else if ([v12 isEqualToString:@"spellOut"])
    {
      v23 = 5;
    }

    else
    {
      v23 = 1;
    }

    v22 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v22 setNumberStyle:v23];
    v24 = [MEMORY[0x1E695DF58] currentLocale];
    [v22 setLocale:v24];

    if ([v13 length])
    {
      [v22 setPositiveFormat:v13];
    }

    if ([v14 length])
    {
      [v22 setNegativeFormat:v14];
    }

    if ([v15 length])
    {
      [v22 setCurrencyCode:v15];
    }

    if (v22)
    {
      [(NSMutableDictionary *)self->_numberFormatters setObject:v22 forKey:v21];
    }
  }

  os_unfair_lock_unlock(&self->_numberFormattersLock);
  v25 = [v22 stringFromNumber:v17];

  return v25;
}

- (id)formatLocalizedLocaleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 localizedStringForLocaleIdentifier:v3];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:v3];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF58] currentLocale];
      v5 = [v7 localizedStringForLocaleIdentifier:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)joinComponents:(id)a3 withASCII:(id)a4 arabic:(id)a5 ethiopic:(id)a6 ideograph:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v33 = a7;
  v12 = [v11 count];
  if (v12)
  {
    v39 = v12 - 1;
    if (v12 == 1)
    {
      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = [v13 description];

      goto LABEL_36;
    }

    v15 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v11;
    obj = v11;
    v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v41;
      do
      {
        v21 = 0;
        v34 = v19;
        do
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(*(&v40 + 1) + 8 * v21) description];
          v23 = [v22 length];
          if (v23)
          {
            v24 = v23;
            [v16 appendString:v22];
            if (v19 != v39)
            {
              while (1)
              {
                v25 = v24 - 1;
                v26 = [v22 characterAtIndex:v24 - 1];
                if ([v15 characterIsMember:v26])
                {
                  goto LABEL_31;
                }

                if (v24 != 1 && (v26 & 0xFC00) == 0xDC00)
                {
                  v27 = [v22 characterAtIndex:v24 - 2];
                  if ((v27 & 0xFC00) != 0xD800)
                  {
                    goto LABEL_23;
                  }

                  LODWORD(v26) = v26 + (v27 << 10) - 56613888;
                  --v24;
                }

                v28 = vdupq_n_s32(v26);
                if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1E4296BD0, vaddq_s32(v28, xmmword_1E4296BC0)))) & 1) != 0 || (v26 & 0xFFFFFF00) == 0x600)
                {
                  v29 = v36;
                  goto LABEL_30;
                }

                if ((v26 - 4608) < 0x1A0)
                {
                  v29 = v35;
                  goto LABEL_30;
                }

                if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1E4296C00, vaddq_s32(v28, xmmword_1E4296BE0)), vcgtq_u32(xmmword_1E4296C10, vaddq_s32(v28, xmmword_1E4296BF0))))) & 1) != 0 || (v26 - 194560) < 0x220)
                {
                  v29 = v33;
LABEL_30:
                  v30 = v29;
                  if (v30)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_31;
                }

                v25 = v24 - 1;
LABEL_23:
                v24 = v25;
                if (!v25)
                {
                  goto LABEL_31;
                }
              }
            }
          }

          else if (v19 != v39)
          {
LABEL_31:
            v30 = v37;
LABEL_32:
            [v16 appendString:v30];
          }

          ++v19;

          ++v21;
        }

        while (v21 != v18);
        v19 = v34 + v18;
        v18 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    v14 = [v16 copy];
    v11 = v32;
  }

  else
  {
    v14 = &stru_1F5DB25C0;
  }

LABEL_36:

  return v14;
}

- (id)formatInitialsForFirstName:(id)a3 lastName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v7 setGivenName:v5];
    [v7 setFamilyName:v6];
    v8 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v8 setStyle:4];
    [v8 set_ignoresFallbacks:1];
    v9 = [v8 stringFromPersonNameComponents:v7];
    if (![v9 length])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v5 length];
      if (v11)
      {
        v12 = [v5 substringWithRange:{0, 1}];
      }

      else
      {
        v12 = &stru_1F5DB25C0;
      }

      v13 = [v6 length];
      if (v13)
      {
        v14 = [v6 substringWithRange:{0, 1}];
      }

      else
      {
        v14 = &stru_1F5DB25C0;
      }

      v15 = [v10 stringWithFormat:@"%@%@", v12, v14];

      if (v13)
      {
      }

      if (v11)
      {
      }

      if ([v15 length])
      {
        v9 = v15;
      }

      else
      {

        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = [v9 uppercaseString];

  return v16;
}

@end