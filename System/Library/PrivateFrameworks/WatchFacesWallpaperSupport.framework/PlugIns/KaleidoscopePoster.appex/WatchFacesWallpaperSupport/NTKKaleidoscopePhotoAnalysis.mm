@interface NTKKaleidoscopePhotoAnalysis
+ (BOOL)_dictionaryHasValidValues:(id)values;
+ (BOOL)_dictionaryPassesBasicCheck:(id)check;
+ (BOOL)isValidDictionary:(id)dictionary;
+ (id)analysisWithImage:(id)image alignment:(unint64_t)alignment deviceSizeClass:(unint64_t)class;
+ (id)defaultAnalysis;
+ (id)invalidAnalysis;
- ($BBBA91DF173D22D92F8479248DC92AE7)structure;
- (NTKKaleidoscopePhotoAnalysis)initWithCoder:(id)coder;
- (NTKKaleidoscopePhotoAnalysis)initWithStructure:(id *)structure;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsDictionary;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKKaleidoscopePhotoAnalysis

- ($BBBA91DF173D22D92F8479248DC92AE7)structure
{
  v3 = *&self->var7;
  *&retstr->var0 = *&self->var3;
  *&retstr->var5 = v3;
  *&retstr->var9 = *&self[1].var0;
  return self;
}

+ (BOOL)isValidDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([self _dictionaryPassesBasicCheck:dictionaryCopy])
  {
    v5 = [self _dictionaryHasValidValues:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_dictionaryPassesBasicCheck:(id)check
{
  checkCopy = check;
  if (checkCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [checkCopy objectForKey:@"version"];
    integerValue = [v4 integerValue];

    v6 = (integerValue & 0xFFFFFFFE) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_dictionaryHasValidValues:(id)values
{
  valuesCopy = values;
  v22[0] = @"complexBackground";
  v22[1] = @"coloredText";
  v22[2] = @"textHue";
  v22[3] = @"textSaturation";
  v22[4] = @"textBrightness";
  v22[5] = @"bgHue";
  v22[6] = @"bgSaturation";
  v22[7] = @"bgBrightness";
  v22[8] = @"shadowHue";
  v22[9] = @"shadowSaturation";
  v22[10] = @"shadowBrightness";
  v4 = [NSArray arrayWithObjects:v22 count:11];
  v5 = [NSNumber numberWithFloat:0.0];
  LODWORD(v6) = 1.0;
  v7 = [NSNumber numberWithFloat:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [valuesCopy objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v13 compare:v5] == -1)
        {

LABEL_14:
          v15 = 0;
          goto LABEL_16;
        }

        v14 = [v13 compare:v7];

        if (v14 == 1)
        {
          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_16:

  return v15;
}

- (NTKKaleidoscopePhotoAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NTKKaleidoscopePhotoAnalysis;
  v5 = [(NTKKaleidoscopePhotoAnalysis *)&v17 init];
  if (v5 && [coderCopy decodeInt32ForKey:@"version"] == 1)
  {
    v5->_version = 1;
    v5->_data.isComplexBackground = [coderCopy decodeBoolForKey:@"complexBackground"];
    v5->_data.isColoredText = [coderCopy decodeBoolForKey:@"coloredText"];
    [coderCopy decodeFloatForKey:@"textHue"];
    v5->_data.textHue = v6;
    [coderCopy decodeFloatForKey:@"textSaturation"];
    v5->_data.textSaturation = v7;
    [coderCopy decodeFloatForKey:@"textBrightness"];
    v5->_data.textBrightness = v8;
    [coderCopy decodeFloatForKey:@"bgHue"];
    v5->_data.bgHue = v9;
    [coderCopy decodeFloatForKey:@"bgSaturation"];
    v5->_data.bgSaturation = v10;
    [coderCopy decodeFloatForKey:@"bgBrightness"];
    v5->_data.bgBrightness = v11;
    [coderCopy decodeFloatForKey:@"shadowHue"];
    v5->_data.shadowHue = v12;
    [coderCopy decodeFloatForKey:@"shadowSaturation"];
    v5->_data.shadowSaturation = v13;
    [coderCopy decodeFloatForKey:@"shadowBrightness"];
    v5->_data.shadowBrightness = v14;
    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = NTKKaleidoscopePhotoAnalysis;
  v5 = [(NTKKaleidoscopePhotoAnalysis *)&v28 init];
  if (v5 && [objc_opt_class() _dictionaryPassesBasicCheck:dictionaryCopy])
  {
    v5->_version = 1;
    v6 = [dictionaryCopy objectForKey:@"complexBackground"];
    v5->_data.isComplexBackground = [v6 BOOLValue];

    v7 = [dictionaryCopy objectForKey:@"coloredText"];
    v5->_data.isColoredText = [v7 BOOLValue];

    v8 = [dictionaryCopy objectForKey:@"textHue"];
    [v8 floatValue];
    v5->_data.textHue = v9;

    v10 = [dictionaryCopy objectForKey:@"textSaturation"];
    [v10 floatValue];
    v5->_data.textSaturation = v11;

    v12 = [dictionaryCopy objectForKey:@"textBrightness"];
    [v12 floatValue];
    v5->_data.textBrightness = v13;

    v14 = [dictionaryCopy objectForKey:@"bgHue"];
    [v14 floatValue];
    v5->_data.bgHue = v15;

    v16 = [dictionaryCopy objectForKey:@"bgSaturation"];
    [v16 floatValue];
    v5->_data.bgSaturation = v17;

    v18 = [dictionaryCopy objectForKey:@"bgBrightness"];
    [v18 floatValue];
    v5->_data.bgBrightness = v19;

    v20 = [dictionaryCopy objectForKey:@"shadowHue"];
    [v20 floatValue];
    v5->_data.shadowHue = v21;

    v22 = [dictionaryCopy objectForKey:@"shadowSaturation"];
    [v22 floatValue];
    v5->_data.shadowSaturation = v23;

    v24 = [dictionaryCopy objectForKey:@"shadowBrightness"];
    [v24 floatValue];
    v5->_data.shadowBrightness = v25;

    v26 = v5;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (NTKKaleidoscopePhotoAnalysis)initWithStructure:(id *)structure
{
  v10.receiver = self;
  v10.super_class = NTKKaleidoscopePhotoAnalysis;
  v4 = [(NTKKaleidoscopePhotoAnalysis *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&structure->var0;
    v7 = *&structure->var5;
    *(v4 + 5) = *&structure->var9;
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    *(v4 + 12) = 1;
    v8 = v4;
  }

  return v5;
}

+ (id)defaultAnalysis
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = [[self alloc] initWithStructure:v4];

  return v2;
}

+ (id)invalidAnalysis
{
  v4[0] = xmmword_100027FFC;
  v4[1] = *algn_10002800C;
  v5 = 0;
  v2 = [[self alloc] initWithStructure:v4];

  return v2;
}

+ (id)analysisWithImage:(id)image alignment:(unint64_t)alignment deviceSizeClass:(unint64_t)class
{
  imageCopy = image;
  cGImage = [imageCopy CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v11 = CLKDeviceCategoryForSizeClass() - 1;
  if (v11 >= 5)
  {
    invalidAnalysis = [self invalidAnalysis];
  }

  else
  {
    v12 = Width;
    v13 = Height;
    v14 = dbl_100028050[v11];
    v15 = dbl_100028078[v11];
    v16 = dbl_1000280A0[v11];
    v17 = dbl_1000280C8[v11];
    v18 = Width / Height;
    if (v18 > v17 / v16)
    {
      v12 = v17 / v16 * Height;
    }

    else
    {
      v13 = Width / (v17 / v16);
    }

    v27 = v12;
    v29 = v13;
    if (v18 > v17 / v16)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = (Height - Width / (v17 / v16)) * 0.5;
    }

    if (v18 > v17 / v16)
    {
      v20 = (Width - v17 / v16 * Height) * 0.5;
    }

    else
    {
      v20 = 0.0;
    }

    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = dbl_1000280C8[v11];
    v34.size.height = dbl_1000280A0[v11];
    v35 = CGRectInset(v34, dbl_100028028[v11], dbl_100028028[v11]);
    x = v35.origin.x;
    v22 = v35.size.width;
    if (alignment == 1)
    {
      v15 = CGRectGetMaxY(v35) - v14;
    }

    *v31 = x;
    *&v31[1] = v15;
    *&v31[2] = v22;
    *&v31[3] = v14;
    v23 = [NSValue valueWithBytes:v31 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}", *&v27, *&v29];
    v32 = v23;
    v24 = [NSArray arrayWithObjects:&v32 count:1];
    invalidAnalysis = NTKKaleidoscopeAnalyzePhoto(imageCopy, v24, 0, v20, v19, v28, v30, v17, v16);
  }

  return invalidAnalysis;
}

- (id)encodeAsDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:&off_100035D08 forKeyedSubscript:@"version"];
  v4 = [NSNumber numberWithBool:self->_data.isComplexBackground];
  [v3 setObject:v4 forKeyedSubscript:@"complexBackground"];

  v5 = [NSNumber numberWithBool:self->_data.isColoredText];
  [v3 setObject:v5 forKeyedSubscript:@"coloredText"];

  *&v6 = self->_data.textHue;
  v7 = [NSNumber numberWithFloat:v6];
  [v3 setObject:v7 forKeyedSubscript:@"textHue"];

  *&v8 = self->_data.textSaturation;
  v9 = [NSNumber numberWithFloat:v8];
  [v3 setObject:v9 forKeyedSubscript:@"textSaturation"];

  *&v10 = self->_data.textBrightness;
  v11 = [NSNumber numberWithFloat:v10];
  [v3 setObject:v11 forKeyedSubscript:@"textBrightness"];

  *&v12 = self->_data.bgHue;
  v13 = [NSNumber numberWithFloat:v12];
  [v3 setObject:v13 forKeyedSubscript:@"bgHue"];

  *&v14 = self->_data.bgSaturation;
  v15 = [NSNumber numberWithFloat:v14];
  [v3 setObject:v15 forKeyedSubscript:@"bgSaturation"];

  *&v16 = self->_data.bgBrightness;
  v17 = [NSNumber numberWithFloat:v16];
  [v3 setObject:v17 forKeyedSubscript:@"bgBrightness"];

  *&v18 = self->_data.shadowHue;
  v19 = [NSNumber numberWithFloat:v18];
  [v3 setObject:v19 forKeyedSubscript:@"shadowHue"];

  *&v20 = self->_data.shadowSaturation;
  v21 = [NSNumber numberWithFloat:v20];
  [v3 setObject:v21 forKeyedSubscript:@"shadowSaturation"];

  *&v22 = self->_data.shadowBrightness;
  v23 = [NSNumber numberWithFloat:v22];
  [v3 setObject:v23 forKeyedSubscript:@"shadowBrightness"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:1 forKey:@"version"];
  [coderCopy encodeBool:self->_data.isComplexBackground forKey:@"complexBackground"];
  [coderCopy encodeBool:self->_data.isColoredText forKey:@"coloredText"];
  *&v4 = self->_data.textHue;
  [coderCopy encodeFloat:@"textHue" forKey:v4];
  *&v5 = self->_data.textSaturation;
  [coderCopy encodeFloat:@"textSaturation" forKey:v5];
  *&v6 = self->_data.textBrightness;
  [coderCopy encodeFloat:@"textBrightness" forKey:v6];
  *&v7 = self->_data.bgHue;
  [coderCopy encodeFloat:@"bgHue" forKey:v7];
  *&v8 = self->_data.bgSaturation;
  [coderCopy encodeFloat:@"bgSaturation" forKey:v8];
  *&v9 = self->_data.bgBrightness;
  [coderCopy encodeFloat:@"bgBrightness" forKey:v9];
  *&v10 = self->_data.shadowHue;
  [coderCopy encodeFloat:@"shadowHue" forKey:v10];
  *&v11 = self->_data.shadowSaturation;
  [coderCopy encodeFloat:@"shadowSaturation" forKey:v11];
  *&v12 = self->_data.shadowBrightness;
  [coderCopy encodeFloat:@"shadowBrightness" forKey:v12];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *&self->_data.bgHue;
  v7[0] = *&self->_data.isComplexBackground;
  v7[1] = v5;
  v8 = *&self->_data.shadowSaturation;
  return [v4 initWithStructure:v7];
}

@end