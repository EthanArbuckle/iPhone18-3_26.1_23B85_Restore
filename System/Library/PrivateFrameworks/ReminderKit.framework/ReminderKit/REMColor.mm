@interface REMColor
+ (REMColor)colorWithDictionaryData:(id)a3 error:(id *)a4;
+ (REMColor)colorWithHexString:(id)a3;
+ (REMColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (REMColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)cyanColor;
+ (id)grayColor;
+ (id)greenColor;
+ (id)lightGrayColor;
+ (id)magentaColor;
+ (id)orangeColor;
+ (id)purpleColor;
+ (id)redColor;
+ (id)whiteColor;
+ (id)yellowColor;
- (BOOL)isEqual:(id)a3;
- (REMColor)initWithCKSymbolicColorName:(id)a3 hexString:(id)a4;
- (REMColor)initWithCoder:(id)a3;
- (REMColor)initWithDASymbolicColorName:(id)a3 daHexString:(id)a4 ckSymbolicColorName:(id)a5;
- (REMColor)initWithHexString:(id)a3;
- (REMColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7;
- (REMColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7 daSymbolicColorName:(id)a8 daHexString:(id)a9 ckSymbolicColorName:(id)a10;
- (id)archivedDictionaryDataWithError:(id *)a3;
- (id)description;
- (id)hexString;
- (id)hexStringWithAlpha;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMColor

- (id)hexString
{
  v3 = MEMORY[0x1E696AEC0];
  [(REMColor *)self red];
  v5 = (v4 * 255.0 + 0.5);
  [(REMColor *)self green];
  v7 = (v6 * 255.0 + 0.5);
  [(REMColor *)self blue];
  return [v3 stringWithFormat:@"#%02X%02X%02X", v5, v7, (v8 * 255.0 + 0.5)];
}

- (id)hexStringWithAlpha
{
  v3 = MEMORY[0x1E696AEC0];
  [(REMColor *)self red];
  v5 = (v4 * 255.0 + 0.5);
  [(REMColor *)self green];
  v7 = (v6 * 255.0 + 0.5);
  [(REMColor *)self blue];
  v9 = (v8 * 255.0 + 0.5);
  [(REMColor *)self alpha];
  return [v3 stringWithFormat:@"#%02X%02X%02X%02X", v5, v7, v9, (v10 * 255.0 + 0.5)];
}

+ (REMColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (REMColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithRed:a7 green:a3 blue:a4 alpha:a5 colorSpace:a6];

  return v7;
}

+ (REMColor)colorWithHexString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHexString:v4];

  return v5;
}

+ (id)clearColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[a1 alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[a1 alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[a1 alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[a1 alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[a1 alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (REMColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7
{
  v18.receiver = self;
  v18.super_class = REMColor;
  v12 = [(REMColor *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_blue = a5;
    v12->_red = a3;
    v12->_green = a4;
    v12->_alpha = a6;
    v12->_colorRGBSpace = a7;
    objc_storeStrong(&v12->_daSymbolicColorName, *MEMORY[0x1E69E4048]);
    v14 = [(REMColor *)v13 hexString];
    daHexString = v13->_daHexString;
    v13->_daHexString = v14;

    ckSymbolicColorName = v13->_ckSymbolicColorName;
    v13->_ckSymbolicColorName = @"custom";
  }

  return v13;
}

- (REMColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7 daSymbolicColorName:(id)a8 daHexString:(id)a9 ckSymbolicColorName:(id)a10
{
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v25.receiver = self;
  v25.super_class = REMColor;
  v22 = [(REMColor *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_blue = a5;
    v22->_red = a3;
    v22->_green = a4;
    v22->_alpha = a6;
    v22->_colorRGBSpace = a7;
    objc_storeStrong(&v22->_daSymbolicColorName, a8);
    objc_storeStrong(&v23->_daHexString, a9);
    objc_storeStrong(&v23->_ckSymbolicColorName, a10);
  }

  return v23;
}

- (REMColor)initWithHexString:(id)a3
{
  v4 = [a3 lowercaseString];
  if (![v4 hasPrefix:@"#"])
  {
    if ([v4 isEqualToString:@"white"])
    {
      v10 = +[REMColor whiteColor];
    }

    else
    {
      if (![v4 isEqualToString:@"black"])
      {
        if ([v4 isEqualToString:@"red"])
        {
          v10 = +[REMColor redColor];
          goto LABEL_30;
        }

        if ([v4 isEqualToString:@"green"])
        {
          v10 = +[REMColor greenColor];
          goto LABEL_30;
        }

        if ([v4 isEqualToString:@"blue"])
        {
          v10 = +[REMColor blueColor];
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v10 = +[REMColor blackColor];
    }

LABEL_30:
    v35 = v10;
    goto LABEL_31;
  }

  v5 = [v4 substringFromIndex:1];

  v37 = 0;
  v38 = 0;
  if ([v5 length] == 8)
  {
    v6 = [v5 substringFromIndex:6];
    v7 = [v6 substringToIndex:2];

    v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    v9 = [v8 scanHexInt:&v37];

    v4 = [v5 substringToIndex:6];
  }

  else
  {
    LODWORD(v37) = 255;
    v9 = 1;
    v4 = v5;
  }

  if ([v4 length] != 6)
  {
    if ([v4 length] != 3)
    {
      goto LABEL_25;
    }

    v11 = [v4 substringToIndex:1];
    v27 = [v4 substringFromIndex:1];
    v13 = [v27 substringToIndex:1];

    v28 = [v4 substringFromIndex:2];
    v15 = [v28 substringToIndex:1];

    if (v9)
    {
      v29 = [MEMORY[0x1E696AE88] scannerWithString:v11];
      v30 = [v29 scanHexInt:&v38 + 4];

      if (v30)
      {
        v31 = [MEMORY[0x1E696AE88] scannerWithString:v13];
        v32 = [v31 scanHexInt:&v38];

        if (v32)
        {
          v33 = [MEMORY[0x1E696AE88] scannerWithString:v15];
          v34 = [v33 scanHexInt:&v37 + 4];

          LODWORD(v37) = 15;
          v26 = 15.0;
          if (v34)
          {
            goto LABEL_20;
          }

          goto LABEL_25;
        }
      }
    }

    LODWORD(v37) = 15;
LABEL_24:

    goto LABEL_25;
  }

  v11 = [v4 substringToIndex:2];
  v12 = [v4 substringFromIndex:2];
  v13 = [v12 substringToIndex:2];

  v14 = [v4 substringFromIndex:4];
  v15 = [v14 substringToIndex:2];

  if (!v9)
  {
    goto LABEL_24;
  }

  v16 = [MEMORY[0x1E696AE88] scannerWithString:v11];
  v17 = [v16 scanHexInt:&v38 + 4];

  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = [MEMORY[0x1E696AE88] scannerWithString:v13];
  v19 = [v18 scanHexInt:&v38];

  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

  v20 = [MEMORY[0x1E696AE88] scannerWithString:v15];
  v21 = [v20 scanHexInt:&v37 + 4];

  if (v21)
  {
    v26 = 255.0;
LABEL_20:
    LODWORD(v22) = HIDWORD(v38);
    LODWORD(v23) = v38;
    LODWORD(v24) = HIDWORD(v37);
    LODWORD(v25) = v37;
    v10 = [(REMColor *)self initWithRed:v22 / v26 green:v23 / v26 blue:v24 / v26 alpha:v25 / v26];
    self = v10;
    goto LABEL_30;
  }

LABEL_25:
  v35 = 0;
LABEL_31:

  return v35;
}

- (REMColor)initWithDASymbolicColorName:(id)a3 daHexString:(id)a4 ckSymbolicColorName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 uppercaseString];
  v11 = *MEMORY[0x1E69E4048];
  if (!v8)
  {
    v8 = v11;
  }

  v12 = v8;
  if ([v11 isEqualToString:v12])
  {
    v13 = v10;
    v14 = v13;
  }

  else
  {
    v15 = EKSymbolicColorToRGBMapping();
    v16 = [v15 objectForKeyedSubscript:v12];
    v14 = v16;
    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = v16;
    }

    v13 = v17;
  }

  v18 = 0;
  if (v14 && v13)
  {
    if (!v9)
    {
      if (REMSymbolicColorIsSupportedByCK(v12))
      {
        v9 = v12;
      }

      else
      {
        v9 = @"custom";
      }
    }

    v19 = v14;
    v20 = [(REMColor *)self initWithHexString:v19];
    p_isa = &v20->super.isa;
    if (v20)
    {
      objc_storeStrong(&v20->_daSymbolicColorName, v8);
      objc_storeStrong(p_isa + 7, v13);
      objc_storeStrong(p_isa + 8, v9);
    }

    self = p_isa;

    v18 = self;
  }

  return v18;
}

- (REMColor)initWithCKSymbolicColorName:(id)a3 hexString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"custom";
  }

  v9 = v8;
  if (([(__CFString *)v9 isEqualToString:@"custom"]& 1) != 0)
  {
    v10 = *MEMORY[0x1E69E4048];
    v11 = v7;
LABEL_14:
    self = [(REMColor *)self initWithDASymbolicColorName:v10 daHexString:v11 ckSymbolicColorName:v9];
    v16 = self;
    goto LABEL_15;
  }

  v12 = ckSymbolicColorNameToRGBMapping();
  v13 = [v12 objectForKeyedSubscript:v9];
  if (v13)
  {
    v14 = v13;
    if (REMSymbolicColorIsSupportedByDA(v9))
    {
      v10 = v9;
      v15 = v7;
    }

    else
    {
      v10 = *MEMORY[0x1E69E4048];
      if (v7)
      {
        v15 = v7;
      }

      else
      {
        v15 = v14;
      }
    }

    v11 = v15;

    goto LABEL_14;
  }

  v11 = 0;
  v10 = 0;
  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMColor *)self hexStringWithAlpha];
      v8 = [(REMColor *)v6 hexStringWithAlpha];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMColor *)self hexStringWithAlpha];
        v11 = [(REMColor *)v6 hexStringWithAlpha];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v14 = [(REMColor *)self daSymbolicColorName];
      v15 = [(REMColor *)v6 daSymbolicColorName];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMColor *)self daSymbolicColorName];
        v18 = [(REMColor *)v6 daSymbolicColorName];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      v20 = [(REMColor *)self daHexString];
      v21 = [(REMColor *)v6 daHexString];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMColor *)self daHexString];
        v24 = [(REMColor *)v6 daHexString];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v26 = [(REMColor *)self ckSymbolicColorName];
      v27 = [(REMColor *)v6 ckSymbolicColorName];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMColor *)self ckSymbolicColorName];
        v30 = [(REMColor *)v6 ckSymbolicColorName];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      v33 = [(REMColor *)self colorRGBSpace];
      v13 = v33 == [(REMColor *)v6 colorRGBSpace];
      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v13 = 1;
LABEL_20:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(REMColor *)self hexStringWithAlpha];
  v4 = [v3 hash];
  v5 = [(REMColor *)self daSymbolicColorName];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMColor *)self daHexString];
  v8 = [v7 hash];
  v9 = v8 ^ [(REMColor *)self colorRGBSpace];

  return v6 ^ v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(REMColor *)self red];
  [v4 encodeDouble:@"red" forKey:?];
  [(REMColor *)self green];
  [v4 encodeDouble:@"green" forKey:?];
  [(REMColor *)self blue];
  [v4 encodeDouble:@"blue" forKey:?];
  [(REMColor *)self alpha];
  [v4 encodeDouble:@"alpha" forKey:?];
  [v4 encodeInt:-[REMColor colorRGBSpace](self forKey:{"colorRGBSpace"), @"colorRGBSpace"}];
  v5 = [(REMColor *)self daSymbolicColorName];
  [v4 encodeObject:v5 forKey:@"daSymbolicColorName"];

  v6 = [(REMColor *)self daHexString];
  [v4 encodeObject:v6 forKey:@"daHexString"];

  v7 = [(REMColor *)self ckSymbolicColorName];
  [v4 encodeObject:v7 forKey:@"ckSymbolicColorName"];
}

- (REMColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daSymbolicColorName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daHexString"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckSymbolicColorName"];
  v8 = v7;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9 && v7 == 0)
  {
    [v4 decodeDoubleForKey:@"red"];
    v13 = v12;
    [v4 decodeDoubleForKey:@"green"];
    v15 = v14;
    [v4 decodeDoubleForKey:@"blue"];
    v17 = v16;
    [v4 decodeDoubleForKey:@"alpha"];
    v19 = v18;
    v20 = [v4 decodeIntForKey:@"colorRGBSpace"];
    v21 = v20;
    if (v20 >= 3)
    {
      v22 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(REMColor *)v21 initWithCoder:v22];
      }

      v21 = 2;
    }

    v11 = [(REMColor *)self initWithRed:v21 green:v13 blue:v15 alpha:v17 colorSpace:v19];
  }

  else
  {
    v11 = [(REMColor *)self initWithDASymbolicColorName:v5 daHexString:v6 ckSymbolicColorName:v7];
  }

  v23 = v11;

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(REMColor *)self red];
  v5 = v4;
  [(REMColor *)self green];
  v7 = v6;
  [(REMColor *)self blue];
  v9 = v8;
  [(REMColor *)self alpha];
  return [v3 stringWithFormat:@"REMColor:rgba(%lf, %lf, %lf, %lf)", v5, v7, v9, v10];
}

+ (REMColor)colorWithDictionaryData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v14 = 0;
  v7 = [[v5 alloc] initForReadingFromData:v6 error:&v14];

  v8 = v14;
  v9 = [[REMColor alloc] initWithCoder:v7];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = +[REMLog utility];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [REMColor colorWithDictionaryData:v8 error:v11];
    }

    if (a4)
    {
      v12 = v8;
      *a4 = v8;
    }
  }

  return v9;
}

- (id)archivedDictionaryDataWithError:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(REMColor *)self encodeWithCoder:v4];
  v5 = [v4 encodedData];
  if (!v5)
  {
    v6 = +[REMLog utility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMColor archivedDictionaryDataWithError:v6];
    }
  }

  return v5;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMColorRGBSpace %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)colorWithDictionaryData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Error decoding color {error: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end