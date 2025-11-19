@interface _UISettings
+ (BOOL)_supportsArchivingStructType:(id)a3;
+ (id)_archiveDictionaryForObject:(id)a3 ofCustomClass:(Class)a4;
+ (id)_archiveDictionaryForValue:(id)a3 ofStructType:(id)a4;
+ (id)_colorFromDictionary:(id)a3;
+ (id)_dictionaryForColor:(id)a3;
+ (id)_dictionaryForFont:(id)a3;
+ (id)_fontFromDictionary:(id)a3;
+ (id)_objectOfCustomClass:(Class)a3 fromArchiveDictionary:(id)a4;
+ (id)_valueOfStructType:(id)a3 fromArchiveDictionary:(id)a4;
+ (id)settingsFromArchiveFile:(id)a3 error:(id *)a4;
- (BOOL)archiveToFile:(id)a3 error:(id *)a4;
- (BOOL)restoreFromArchiveFile:(id)a3 error:(id *)a4;
- (_UISettings)initWithDefaultValues;
@end

@implementation _UISettings

- (_UISettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UISettings;
  v2 = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = v2;
  if (v2)
  {
    [(PTSettings *)v2 _setObservationEnabled:1];
  }

  return v3;
}

+ (id)settingsFromArchiveFile:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = _ArchivePath(a3);
  if (!v6)
  {
    NSLog(&cfstr_ErrorReadingSe.isa);
    v9 = 0;
    goto LABEL_21;
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:a4];
  if (!v7)
  {
    if (a4)
    {
      v10 = [*a4 localizedDescription];
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v16 = objc_opt_class();
    NSLog(&cfstr_ErrorReadingSe_0.isa, v16, v6, v10);

    v9 = 0;
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:a4];
  if (!v8)
  {
    if (a4)
    {
      v11 = [*a4 localizedDescription];
    }

    else
    {
      v11 = &stru_1EFB14550;
    }

    v17 = objc_opt_class();
    NSLog(&cfstr_ErrorUnseriali.isa, v17, v6, v11);

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A250];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"Non-dictionary plist";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a4 = [v12 errorWithDomain:v13 code:0 userInfo:v14];
    }

    v15 = objc_opt_class();
    NSLog(&cfstr_ErrorUnarchivi.isa, v15, v6);
    goto LABEL_18;
  }

  v9 = [a1 settingsFromArchiveDictionary:v8];
LABEL_19:

LABEL_20:
LABEL_21:

  return v9;
}

- (BOOL)archiveToFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AE40];
  v8 = [(PTSettings *)self archiveDictionary];
  v9 = [v7 dataWithPropertyList:v8 format:200 options:0 error:a4];

  if (!v9)
  {
    if (a4)
    {
      v10 = [*a4 localizedDescription];
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v14 = objc_opt_class();
    NSLog(&cfstr_ErrorSerializi.isa, v14, v10);
    goto LABEL_12;
  }

  v10 = _ArchivePath(v6);
  if (!v10 || (v11 = 1, ([v9 writeToFile:v10 options:1 error:a4] & 1) == 0))
  {
    if (a4)
    {
      v12 = [*a4 localizedDescription];
    }

    else
    {
      v12 = &stru_1EFB14550;
    }

    v13 = objc_opt_class();
    NSLog(&cfstr_ErrorWritingSe.isa, v13, v10, v12);

LABEL_12:
    v11 = 0;
  }

  return v11;
}

- (BOOL)restoreFromArchiveFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() settingsFromArchiveFile:v6 error:a4];

  if (v7)
  {
    [(_UISettings *)self setValuesFromModel:v7];
  }

  return v7 != 0;
}

+ (BOOL)_supportsArchivingStructType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CGPoint"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"CGSize"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CGRect"];
  }

  return v4;
}

+ (id)_archiveDictionaryForObject:(id)a3 ofCustomClass:(Class)a4
{
  v6 = a3;
  if (objc_opt_class() == a4)
  {
    v8 = [a1 _dictionaryForColor:v6];
  }

  else
  {
    if (objc_opt_class() != a4)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [a1 _dictionaryForFont:v6];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

+ (id)_archiveDictionaryForValue:(id)a3 ofStructType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"CGPoint"])
  {
    [v5 CGPointValue];
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v11);
LABEL_7:
    v8 = DictionaryRepresentation;
    goto LABEL_8;
  }

  if ([v6 isEqualToString:@"CGSize"])
  {
    [v5 CGSizeValue];
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v12);
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"CGRect"])
  {
    [v5 CGRectValue];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v13);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)_objectOfCustomClass:(Class)a3 fromArchiveDictionary:(id)a4
{
  v6 = a4;
  if (objc_opt_class() == a3)
  {
    v8 = [a1 _colorFromDictionary:v6];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [a1 _fontFromDictionary:v6];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

+ (id)_valueOfStructType:(id)a3 fromArchiveDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"CGPoint"])
  {
    v11.origin = *MEMORY[0x1E695EFF8];
    if (CGPointMakeWithDictionaryRepresentation(v6, &v11.origin))
    {
      v7 = [MEMORY[0x1E696B098] valueWithCGPoint:*&v11.origin];
LABEL_10:
      v9 = v7;
      goto LABEL_12;
    }
  }

  else if ([v5 isEqualToString:@"CGSize"])
  {
    v11.origin = *MEMORY[0x1E695F060];
    if (CGSizeMakeWithDictionaryRepresentation(v6, &v11))
    {
      v7 = [MEMORY[0x1E696B098] valueWithCGSize:*&v11.origin];
      goto LABEL_10;
    }
  }

  else if ([v5 isEqualToString:@"CGRect"])
  {
    v8 = *(MEMORY[0x1E695F058] + 16);
    v11.origin = *MEMORY[0x1E695F058];
    v11.size = v8;
    if (CGRectMakeWithDictionaryRepresentation(v6, &v11))
    {
      v7 = [MEMORY[0x1E696B098] valueWithCGRect:{*&v11.origin, *&v11.size}];
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)_colorFromDictionary:(id)a3
{
  v3 = a3;
  v4 = _NumberForKey(v3, @"red");
  v5 = _NumberForKey(v3, @"green");
  v6 = _NumberForKey(v3, @"blue");
  v7 = _NumberForKey(v3, @"alpha");

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

+ (id)_dictionaryForColor:(id)a3
{
  v14[4] = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v3 = 0;
  if ([a3 getRed:&v12 green:&v11 blue:&v10 alpha:&v9])
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

+ (id)_fontFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"fontName"];
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

  v7 = _NumberForKey(v3, @"fontSize");

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

+ (id)_dictionaryForFont:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11[0] = @"fontName";
    v3 = a3;
    v4 = [v3 fontName];
    v11[1] = @"fontSize";
    v12[0] = v4;
    v5 = MEMORY[0x1E696AD98];
    [v3 pointSize];
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