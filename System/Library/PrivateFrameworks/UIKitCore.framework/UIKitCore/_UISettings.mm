@interface _UISettings
+ (BOOL)_supportsArchivingStructType:(id)type;
+ (id)_archiveDictionaryForObject:(id)object ofCustomClass:(Class)class;
+ (id)_archiveDictionaryForValue:(id)value ofStructType:(id)type;
+ (id)_colorFromDictionary:(id)dictionary;
+ (id)_dictionaryForColor:(id)color;
+ (id)_dictionaryForFont:(id)font;
+ (id)_fontFromDictionary:(id)dictionary;
+ (id)_objectOfCustomClass:(Class)class fromArchiveDictionary:(id)dictionary;
+ (id)_valueOfStructType:(id)type fromArchiveDictionary:(id)dictionary;
+ (id)settingsFromArchiveFile:(id)file error:(id *)error;
- (BOOL)archiveToFile:(id)file error:(id *)error;
- (BOOL)restoreFromArchiveFile:(id)file error:(id *)error;
- (_UISettings)initWithDefaultValues;
@end

@implementation _UISettings

- (_UISettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UISettings;
  initWithDefaultValues = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(PTSettings *)initWithDefaultValues _setObservationEnabled:1];
  }

  return v3;
}

+ (id)settingsFromArchiveFile:(id)file error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = _ArchivePath(file);
  if (!v6)
  {
    NSLog(&cfstr_ErrorReadingSe.isa);
    v9 = 0;
    goto LABEL_21;
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:error];
  if (!v7)
  {
    if (error)
    {
      localizedDescription = [*error localizedDescription];
    }

    else
    {
      localizedDescription = &stru_1EFB14550;
    }

    v16 = objc_opt_class();
    NSLog(&cfstr_ErrorReadingSe_0.isa, v16, v6, localizedDescription);

    v9 = 0;
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:error];
  if (!v8)
  {
    if (error)
    {
      localizedDescription2 = [*error localizedDescription];
    }

    else
    {
      localizedDescription2 = &stru_1EFB14550;
    }

    v17 = objc_opt_class();
    NSLog(&cfstr_ErrorUnseriali.isa, v17, v6, localizedDescription2);

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A250];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"Non-dictionary plist";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v12 errorWithDomain:v13 code:0 userInfo:v14];
    }

    v15 = objc_opt_class();
    NSLog(&cfstr_ErrorUnarchivi.isa, v15, v6);
    goto LABEL_18;
  }

  v9 = [self settingsFromArchiveDictionary:v8];
LABEL_19:

LABEL_20:
LABEL_21:

  return v9;
}

- (BOOL)archiveToFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = MEMORY[0x1E696AE40];
  archiveDictionary = [(PTSettings *)self archiveDictionary];
  v9 = [v7 dataWithPropertyList:archiveDictionary format:200 options:0 error:error];

  if (!v9)
  {
    if (error)
    {
      localizedDescription = [*error localizedDescription];
    }

    else
    {
      localizedDescription = &stru_1EFB14550;
    }

    v14 = objc_opt_class();
    NSLog(&cfstr_ErrorSerializi.isa, v14, localizedDescription);
    goto LABEL_12;
  }

  localizedDescription = _ArchivePath(fileCopy);
  if (!localizedDescription || (v11 = 1, ([v9 writeToFile:localizedDescription options:1 error:error] & 1) == 0))
  {
    if (error)
    {
      localizedDescription2 = [*error localizedDescription];
    }

    else
    {
      localizedDescription2 = &stru_1EFB14550;
    }

    v13 = objc_opt_class();
    NSLog(&cfstr_ErrorWritingSe.isa, v13, localizedDescription, localizedDescription2);

LABEL_12:
    v11 = 0;
  }

  return v11;
}

- (BOOL)restoreFromArchiveFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = [objc_opt_class() settingsFromArchiveFile:fileCopy error:error];

  if (v7)
  {
    [(_UISettings *)self setValuesFromModel:v7];
  }

  return v7 != 0;
}

+ (BOOL)_supportsArchivingStructType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CGPoint"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"CGSize"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"CGRect"];
  }

  return v4;
}

+ (id)_archiveDictionaryForObject:(id)object ofCustomClass:(Class)class
{
  objectCopy = object;
  if (objc_opt_class() == class)
  {
    v8 = [self _dictionaryForColor:objectCopy];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [self _dictionaryForFont:objectCopy];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

+ (id)_archiveDictionaryForValue:(id)value ofStructType:(id)type
{
  valueCopy = value;
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CGPoint"])
  {
    [valueCopy CGPointValue];
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v11);
LABEL_7:
    v8 = DictionaryRepresentation;
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"CGSize"])
  {
    [valueCopy CGSizeValue];
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v12);
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"CGRect"])
  {
    [valueCopy CGRectValue];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v13);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)_objectOfCustomClass:(Class)class fromArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (objc_opt_class() == class)
  {
    v8 = [self _colorFromDictionary:dictionaryCopy];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [self _fontFromDictionary:dictionaryCopy];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

+ (id)_valueOfStructType:(id)type fromArchiveDictionary:(id)dictionary
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  if ([typeCopy isEqualToString:@"CGPoint"])
  {
    v11.origin = *MEMORY[0x1E695EFF8];
    if (CGPointMakeWithDictionaryRepresentation(dictionaryCopy, &v11.origin))
    {
      v7 = [MEMORY[0x1E696B098] valueWithCGPoint:*&v11.origin];
LABEL_10:
      v9 = v7;
      goto LABEL_12;
    }
  }

  else if ([typeCopy isEqualToString:@"CGSize"])
  {
    v11.origin = *MEMORY[0x1E695F060];
    if (CGSizeMakeWithDictionaryRepresentation(dictionaryCopy, &v11))
    {
      v7 = [MEMORY[0x1E696B098] valueWithCGSize:*&v11.origin];
      goto LABEL_10;
    }
  }

  else if ([typeCopy isEqualToString:@"CGRect"])
  {
    v8 = *(MEMORY[0x1E695F058] + 16);
    v11.origin = *MEMORY[0x1E695F058];
    v11.size = v8;
    if (CGRectMakeWithDictionaryRepresentation(dictionaryCopy, &v11))
    {
      v7 = [MEMORY[0x1E696B098] valueWithCGRect:{*&v11.origin, *&v11.size}];
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)_colorFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = _NumberForKey(dictionaryCopy, @"red");
  v5 = _NumberForKey(dictionaryCopy, @"green");
  v6 = _NumberForKey(dictionaryCopy, @"blue");
  v7 = _NumberForKey(dictionaryCopy, @"alpha");

  v8 = 0;
  if (v4 && v5 && v6 && v7)
  {
    [v4 floatValue];
    v10 = v9;
    [v5 floatValue];
    v12 = v11;
    [v6 floatValue];
    v14 = v13;
    [v7 floatValue];
    v8 = [UIColor colorWithRed:v10 green:v12 blue:v14 alpha:v15];
  }

  return v8;
}

+ (id)_dictionaryForColor:(id)color
{
  v14[4] = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v3 = 0;
  if ([color getRed:&v12 green:&v11 blue:&v10 alpha:&v9])
  {
    v13[0] = @"red";
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v14[0] = v4;
    v13[1] = @"green";
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v14[1] = v5;
    v13[2] = @"blue";
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v14[2] = v6;
    v13[3] = @"alpha";
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v14[3] = v7;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  return v3;
}

+ (id)_fontFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"fontName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = _NumberForKey(dictionaryCopy, @"fontSize");

  v8 = 0;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 floatValue];
    v8 = [off_1E70ECC18 fontWithName:v6 size:v10];
  }

  return v8;
}

+ (id)_dictionaryForFont:(id)font
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (font)
  {
    v11[0] = @"fontName";
    fontCopy = font;
    fontName = [fontCopy fontName];
    v11[1] = @"fontSize";
    v12[0] = fontName;
    v5 = MEMORY[0x1E696AD98];
    [fontCopy pointSize];
    v7 = v6;

    v8 = [v5 numberWithDouble:v7];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end