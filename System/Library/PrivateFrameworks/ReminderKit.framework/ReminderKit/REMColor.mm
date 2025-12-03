@interface REMColor
+ (REMColor)colorWithDictionaryData:(id)data error:(id *)error;
+ (REMColor)colorWithHexString:(id)string;
+ (REMColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (REMColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha targetRGBSpace:(unint64_t)space;
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
- (BOOL)isEqual:(id)equal;
- (REMColor)initWithCKSymbolicColorName:(id)name hexString:(id)string;
- (REMColor)initWithCoder:(id)coder;
- (REMColor)initWithDASymbolicColorName:(id)name daHexString:(id)string ckSymbolicColorName:(id)colorName;
- (REMColor)initWithHexString:(id)string;
- (REMColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space;
- (REMColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space daSymbolicColorName:(id)name daHexString:(id)string ckSymbolicColorName:(id)self0;
- (id)archivedDictionaryDataWithError:(id *)error;
- (id)description;
- (id)hexString;
- (id)hexStringWithAlpha;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (REMColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (REMColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  v7 = [[self alloc] initWithRed:space green:red blue:green alpha:blue colorSpace:alpha];

  return v7;
}

+ (REMColor)colorWithHexString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithHexString:stringCopy];

  return v5;
}

+ (id)clearColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[self alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[self alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[self alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[self alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[self alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[self alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[self alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (REMColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space
{
  v18.receiver = self;
  v18.super_class = REMColor;
  v12 = [(REMColor *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_blue = blue;
    v12->_red = red;
    v12->_green = green;
    v12->_alpha = alpha;
    v12->_colorRGBSpace = space;
    objc_storeStrong(&v12->_daSymbolicColorName, *MEMORY[0x1E69E4048]);
    hexString = [(REMColor *)v13 hexString];
    daHexString = v13->_daHexString;
    v13->_daHexString = hexString;

    ckSymbolicColorName = v13->_ckSymbolicColorName;
    v13->_ckSymbolicColorName = @"custom";
  }

  return v13;
}

- (REMColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space daSymbolicColorName:(id)name daHexString:(id)string ckSymbolicColorName:(id)self0
{
  nameCopy = name;
  stringCopy = string;
  colorNameCopy = colorName;
  v25.receiver = self;
  v25.super_class = REMColor;
  v22 = [(REMColor *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_blue = blue;
    v22->_red = red;
    v22->_green = green;
    v22->_alpha = alpha;
    v22->_colorRGBSpace = space;
    objc_storeStrong(&v22->_daSymbolicColorName, name);
    objc_storeStrong(&v23->_daHexString, string);
    objc_storeStrong(&v23->_ckSymbolicColorName, colorName);
  }

  return v23;
}

- (REMColor)initWithHexString:(id)string
{
  lowercaseString = [string lowercaseString];
  if (![lowercaseString hasPrefix:@"#"])
  {
    if ([lowercaseString isEqualToString:@"white"])
    {
      v10 = +[REMColor whiteColor];
    }

    else
    {
      if (![lowercaseString isEqualToString:@"black"])
      {
        if ([lowercaseString isEqualToString:@"red"])
        {
          v10 = +[REMColor redColor];
          goto LABEL_30;
        }

        if ([lowercaseString isEqualToString:@"green"])
        {
          v10 = +[REMColor greenColor];
          goto LABEL_30;
        }

        if ([lowercaseString isEqualToString:@"blue"])
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

  v5 = [lowercaseString substringFromIndex:1];

  v37 = 0;
  v38 = 0;
  if ([v5 length] == 8)
  {
    v6 = [v5 substringFromIndex:6];
    v7 = [v6 substringToIndex:2];

    v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    v9 = [v8 scanHexInt:&v37];

    lowercaseString = [v5 substringToIndex:6];
  }

  else
  {
    LODWORD(v37) = 255;
    v9 = 1;
    lowercaseString = v5;
  }

  if ([lowercaseString length] != 6)
  {
    if ([lowercaseString length] != 3)
    {
      goto LABEL_25;
    }

    v11 = [lowercaseString substringToIndex:1];
    v27 = [lowercaseString substringFromIndex:1];
    v13 = [v27 substringToIndex:1];

    v28 = [lowercaseString substringFromIndex:2];
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

  v11 = [lowercaseString substringToIndex:2];
  v12 = [lowercaseString substringFromIndex:2];
  v13 = [v12 substringToIndex:2];

  v14 = [lowercaseString substringFromIndex:4];
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

- (REMColor)initWithDASymbolicColorName:(id)name daHexString:(id)string ckSymbolicColorName:(id)colorName
{
  nameCopy = name;
  colorNameCopy = colorName;
  uppercaseString = [string uppercaseString];
  v11 = *MEMORY[0x1E69E4048];
  if (!nameCopy)
  {
    nameCopy = v11;
  }

  v12 = nameCopy;
  if ([v11 isEqualToString:v12])
  {
    v13 = uppercaseString;
    v14 = v13;
  }

  else
  {
    v15 = EKSymbolicColorToRGBMapping();
    v16 = [v15 objectForKeyedSubscript:v12];
    v14 = v16;
    if (uppercaseString)
    {
      v17 = uppercaseString;
    }

    else
    {
      v17 = v16;
    }

    v13 = v17;
  }

  selfCopy = 0;
  if (v14 && v13)
  {
    if (!colorNameCopy)
    {
      if (REMSymbolicColorIsSupportedByCK(v12))
      {
        colorNameCopy = v12;
      }

      else
      {
        colorNameCopy = @"custom";
      }
    }

    v19 = v14;
    v20 = [(REMColor *)self initWithHexString:v19];
    p_isa = &v20->super.isa;
    if (v20)
    {
      objc_storeStrong(&v20->_daSymbolicColorName, nameCopy);
      objc_storeStrong(p_isa + 7, v13);
      objc_storeStrong(p_isa + 8, colorNameCopy);
    }

    self = p_isa;

    selfCopy = self;
  }

  return selfCopy;
}

- (REMColor)initWithCKSymbolicColorName:(id)name hexString:(id)string
{
  nameCopy = name;
  stringCopy = string;
  if (nameCopy)
  {
    v8 = nameCopy;
  }

  else
  {
    v8 = @"custom";
  }

  v9 = v8;
  if (([(__CFString *)v9 isEqualToString:@"custom"]& 1) != 0)
  {
    v10 = *MEMORY[0x1E69E4048];
    v11 = stringCopy;
LABEL_14:
    self = [(REMColor *)self initWithDASymbolicColorName:v10 daHexString:v11 ckSymbolicColorName:v9];
    selfCopy = self;
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
      v15 = stringCopy;
    }

    else
    {
      v10 = *MEMORY[0x1E69E4048];
      if (stringCopy)
      {
        v15 = stringCopy;
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
  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hexStringWithAlpha = [(REMColor *)self hexStringWithAlpha];
      hexStringWithAlpha2 = [(REMColor *)v6 hexStringWithAlpha];
      v9 = hexStringWithAlpha2;
      if (hexStringWithAlpha == hexStringWithAlpha2)
      {
      }

      else
      {
        hexStringWithAlpha3 = [(REMColor *)self hexStringWithAlpha];
        hexStringWithAlpha4 = [(REMColor *)v6 hexStringWithAlpha];
        v12 = [hexStringWithAlpha3 isEqual:hexStringWithAlpha4];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      daSymbolicColorName = [(REMColor *)self daSymbolicColorName];
      daSymbolicColorName2 = [(REMColor *)v6 daSymbolicColorName];
      v16 = daSymbolicColorName2;
      if (daSymbolicColorName == daSymbolicColorName2)
      {
      }

      else
      {
        daSymbolicColorName3 = [(REMColor *)self daSymbolicColorName];
        daSymbolicColorName4 = [(REMColor *)v6 daSymbolicColorName];
        v19 = [daSymbolicColorName3 isEqual:daSymbolicColorName4];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      daHexString = [(REMColor *)self daHexString];
      daHexString2 = [(REMColor *)v6 daHexString];
      v22 = daHexString2;
      if (daHexString == daHexString2)
      {
      }

      else
      {
        daHexString3 = [(REMColor *)self daHexString];
        daHexString4 = [(REMColor *)v6 daHexString];
        v25 = [daHexString3 isEqual:daHexString4];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      ckSymbolicColorName = [(REMColor *)self ckSymbolicColorName];
      ckSymbolicColorName2 = [(REMColor *)v6 ckSymbolicColorName];
      v28 = ckSymbolicColorName2;
      if (ckSymbolicColorName == ckSymbolicColorName2)
      {
      }

      else
      {
        ckSymbolicColorName3 = [(REMColor *)self ckSymbolicColorName];
        ckSymbolicColorName4 = [(REMColor *)v6 ckSymbolicColorName];
        v31 = [ckSymbolicColorName3 isEqual:ckSymbolicColorName4];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      colorRGBSpace = [(REMColor *)self colorRGBSpace];
      v13 = colorRGBSpace == [(REMColor *)v6 colorRGBSpace];
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
  hexStringWithAlpha = [(REMColor *)self hexStringWithAlpha];
  v4 = [hexStringWithAlpha hash];
  daSymbolicColorName = [(REMColor *)self daSymbolicColorName];
  v6 = [daSymbolicColorName hash] ^ v4;
  daHexString = [(REMColor *)self daHexString];
  v8 = [daHexString hash];
  v9 = v8 ^ [(REMColor *)self colorRGBSpace];

  return v6 ^ v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(REMColor *)self red];
  [coderCopy encodeDouble:@"red" forKey:?];
  [(REMColor *)self green];
  [coderCopy encodeDouble:@"green" forKey:?];
  [(REMColor *)self blue];
  [coderCopy encodeDouble:@"blue" forKey:?];
  [(REMColor *)self alpha];
  [coderCopy encodeDouble:@"alpha" forKey:?];
  [coderCopy encodeInt:-[REMColor colorRGBSpace](self forKey:{"colorRGBSpace"), @"colorRGBSpace"}];
  daSymbolicColorName = [(REMColor *)self daSymbolicColorName];
  [coderCopy encodeObject:daSymbolicColorName forKey:@"daSymbolicColorName"];

  daHexString = [(REMColor *)self daHexString];
  [coderCopy encodeObject:daHexString forKey:@"daHexString"];

  ckSymbolicColorName = [(REMColor *)self ckSymbolicColorName];
  [coderCopy encodeObject:ckSymbolicColorName forKey:@"ckSymbolicColorName"];
}

- (REMColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daSymbolicColorName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daHexString"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckSymbolicColorName"];
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
    [coderCopy decodeDoubleForKey:@"red"];
    v13 = v12;
    [coderCopy decodeDoubleForKey:@"green"];
    v15 = v14;
    [coderCopy decodeDoubleForKey:@"blue"];
    v17 = v16;
    [coderCopy decodeDoubleForKey:@"alpha"];
    v19 = v18;
    v20 = [coderCopy decodeIntForKey:@"colorRGBSpace"];
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

+ (REMColor)colorWithDictionaryData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v14 = 0;
  v7 = [[v5 alloc] initForReadingFromData:dataCopy error:&v14];

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

    if (error)
    {
      v12 = v8;
      *error = v8;
    }
  }

  return v9;
}

- (id)archivedDictionaryDataWithError:(id *)error
{
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(REMColor *)self encodeWithCoder:v4];
  encodedData = [v4 encodedData];
  if (!encodedData)
  {
    v6 = +[REMLog utility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMColor archivedDictionaryDataWithError:v6];
    }
  }

  return encodedData;
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