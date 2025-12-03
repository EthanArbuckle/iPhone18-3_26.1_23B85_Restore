@interface UIColor(SXJSONObject)
- (uint64_t)initWithJSONObject:()SXJSONObject andVersion:;
@end

@implementation UIColor(SXJSONObject)

- (uint64_t)initWithJSONObject:()SXJSONObject andVersion:
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 hasPrefix:@"#"])
  {
    v6 = [v5 stringByReplacingCharactersInRange:0 withString:{1, @"0x"}];
    uTF8String = [v6 UTF8String];

    v8 = strlen(uTF8String);
    v9 = strtoll(uTF8String, 0, 0);
    if (v8 > 7)
    {
      if (v8 != 8)
      {
        if (v8 == 10)
        {
          v35.i64[0] = 255;
          v35.i64[1] = 255;
          v15 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v9), xmmword_1D83923D0), v35)), vdupq_n_s64(0x406FE00000000000uLL)));
          v27 = BYTE1(v9) / 255.0;
          v33 = v9 / 255.0;
LABEL_64:
          v34 = [MEMORY[0x1E69DC888] colorWithRed:v15.f32[0] green:v15.f32[1] blue:v27 alpha:v33];
          goto LABEL_65;
        }

LABEL_39:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIColor+SXJSONObject.m"];
        [currentHandler handleFailureInMethod:a2 object:self file:v37 lineNumber:84 description:@"Invalid color string"];

        v15 = 0;
        v27 = 0.0;
        v33 = 0.0;
        goto LABEL_64;
      }

      v54.i64[0] = 255;
      v54.i64[1] = 255;
      v15 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v9), xmmword_1D83923E0), v54)), vdupq_n_s64(0x406FE00000000000uLL)));
      v27 = v9 / 255.0;
    }

    else
    {
      if (v8 != 5)
      {
        if (v8 == 6)
        {
          v10 = *(uTF8String + 2);
          v11 = v10 - 48;
          v12 = v10 - 97;
          if ((v10 - 65) >= 6)
          {
            v13 = 0;
          }

          else
          {
            v13 = v10 - 55;
          }

          v14 = v10 - 87;
          if (v12 > 5)
          {
            v14 = v13;
          }

          if (v11 <= 9)
          {
            v14 = v11;
          }

          v15.f32[0] = (v14 + (v14 * 16.0)) / 255.0;
          v16 = *(uTF8String + 3);
          v17 = v16 - 48;
          v18 = v16 - 97;
          if ((v16 - 65) >= 6)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 - 55;
          }

          v20 = v16 - 87;
          if (v18 > 5)
          {
            v20 = v19;
          }

          if (v17 <= 9)
          {
            v20 = v17;
          }

          v21 = (v20 + (v20 * 16.0)) / 255.0;
          v22 = *(uTF8String + 4);
          v23 = v22 - 48;
          v24 = v22 - 97;
          if ((v22 - 65) >= 6)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 - 55;
          }

          v26 = v22 - 87;
          if (v24 > 5)
          {
            v26 = v25;
          }

          if (v23 <= 9)
          {
            v26 = v23;
          }

          v27 = (v26 + (v26 * 16.0)) / 255.0;
          v28 = *(uTF8String + 5);
          v29 = v28 - 48;
          v30 = v28 - 97;
          if ((v28 - 65) >= 6)
          {
            v31 = 0;
          }

          else
          {
            v31 = v28 - 55;
          }

          v32 = v28 - 87;
          if (v30 > 5)
          {
            v32 = v31;
          }

          if (v29 <= 9)
          {
            v32 = v29;
          }

          v33 = (v32 + (v32 * 16.0)) / 255.0;
          v15.f32[1] = v21;
          goto LABEL_64;
        }

        goto LABEL_39;
      }

      v38 = *(uTF8String + 2);
      v39 = v38 - 48;
      v40 = v38 - 97;
      if ((v38 - 65) >= 6)
      {
        v41 = 0;
      }

      else
      {
        v41 = v38 - 55;
      }

      v42 = v38 - 87;
      if (v40 > 5)
      {
        v42 = v41;
      }

      if (v39 <= 9)
      {
        v42 = v39;
      }

      v15.f32[0] = (v42 + (v42 * 16.0)) / 255.0;
      v43 = *(uTF8String + 3);
      v44 = v43 - 48;
      v45 = v43 - 97;
      if ((v43 - 65) >= 6)
      {
        v46 = 0;
      }

      else
      {
        v46 = v43 - 55;
      }

      v47 = v43 - 87;
      if (v45 > 5)
      {
        v47 = v46;
      }

      if (v44 <= 9)
      {
        v47 = v44;
      }

      v48 = (v47 + (v47 * 16.0)) / 255.0;
      v49 = *(uTF8String + 4);
      v50 = v49 - 48;
      v51 = v49 - 97;
      if ((v49 - 65) >= 6)
      {
        v52 = 0;
      }

      else
      {
        v52 = v49 - 55;
      }

      v53 = v49 - 87;
      if (v51 > 5)
      {
        v53 = v52;
      }

      if (v50 <= 9)
      {
        v53 = v50;
      }

      v27 = (v53 + (v53 * 16.0)) / 255.0;
      v15.f32[1] = v48;
    }

    v33 = 1.0;
    goto LABEL_64;
  }

  v34 = 0;
LABEL_65:

  return v34;
}

@end