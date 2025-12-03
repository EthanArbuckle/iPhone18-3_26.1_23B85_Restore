@interface PUINumberingSystem
+ (id)allNumberingSystemTypes;
+ (id)allNumberingSystems;
+ (id)numberingSystemDisplayFontForFont:(id)font;
+ (id)numberingSystemForType:(id)type;
+ (id)supportedNumberingSystemTypes;
+ (id)supportedNumberingSystems;
+ (id)systemDefaultNumberingSystem;
- (BOOL)isEqual:(id)equal;
- (PUINumberingSystem)init;
- (PUINumberingSystem)initWithCoder:(id)coder;
- (PUINumberingSystem)initWithNumberingSystemType:(id)type;
- (id)description;
@end

@implementation PUINumberingSystem

+ (id)systemDefaultNumberingSystem
{
  v3 = PUISystemDefaultNumberingSystemType();
  v4 = [self numberingSystemForType:v3];

  return v4;
}

+ (id)allNumberingSystemTypes
{
  if (allNumberingSystemTypes_onceToken != -1)
  {
    +[PUINumberingSystem allNumberingSystemTypes];
  }

  v3 = allNumberingSystemTypes_allNumberingSystems;

  return v3;
}

void __45__PUINumberingSystem_allNumberingSystemTypes__block_invoke()
{
  v4[16] = *MEMORY[0x1E69E9840];
  v4[0] = @"latn";
  v4[1] = @"arab";
  v4[2] = @"deva";
  v4[3] = @"khmr";
  v4[4] = @"mymr";
  v4[5] = @"beng";
  v4[6] = @"guru";
  v4[7] = @"gujr";
  v4[8] = @"taml";
  v4[9] = @"telu";
  v4[10] = @"mlym";
  v4[11] = @"knda";
  v4[12] = @"orya";
  v4[13] = @"olck";
  v4[14] = @"mtei";
  v4[15] = @"arabext";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:16];
  v1 = [v0 sortedArrayUsingComparator:&__block_literal_global_22];
  v2 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v1];
  v3 = allNumberingSystemTypes_allNumberingSystems;
  allNumberingSystemTypes_allNumberingSystems = v2;
}

+ (id)allNumberingSystems
{
  allNumberingSystemTypes = [self allNumberingSystemTypes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PUINumberingSystem_allNumberingSystems__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = self;
  v4 = [allNumberingSystemTypes bs_map:v6];

  return v4;
}

+ (id)supportedNumberingSystemTypes
{
  if (supportedNumberingSystemTypes_onceToken != -1)
  {
    +[PUINumberingSystem supportedNumberingSystemTypes];
  }

  v3 = supportedNumberingSystemTypes_allNumberingSystems;

  return v3;
}

void __51__PUINumberingSystem_supportedNumberingSystemTypes__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v8[0] = @"latn";
  v8[1] = @"arab";
  v8[2] = @"deva";
  v8[3] = @"khmr";
  v8[4] = @"mymr";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  v2 = [v0 initWithArray:v1];

  if (_os_feature_enabled_impl())
  {
    v7[0] = @"beng";
    v7[1] = @"guru";
    v7[2] = @"gujr";
    v7[3] = @"telu";
    v7[4] = @"mlym";
    v7[5] = @"knda";
    v7[6] = @"orya";
    v7[7] = @"olck";
    v7[8] = @"mtei";
    v7[9] = @"arabext";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:10];
    [v2 addObjectsFromArray:v3];
  }

  v4 = [v2 sortedArrayUsingComparator:&__block_literal_global_22];
  v5 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v4];
  v6 = supportedNumberingSystemTypes_allNumberingSystems;
  supportedNumberingSystemTypes_allNumberingSystems = v5;
}

+ (id)supportedNumberingSystems
{
  supportedNumberingSystemTypes = [self supportedNumberingSystemTypes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PUINumberingSystem_supportedNumberingSystems__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = self;
  v4 = [supportedNumberingSystemTypes bs_map:v6];

  return v4;
}

+ (id)numberingSystemForType:(id)type
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUINumberingSystem_numberingSystemForType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = numberingSystemForType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&numberingSystemForType__onceToken, block);
  }

  v5 = [numberingSystemForType__numberingSystemForType objectForKeyedSubscript:typeCopy];

  return v5;
}

void __45__PUINumberingSystem_numberingSystemForType___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = numberingSystemForType__numberingSystemForType;
  numberingSystemForType__numberingSystemForType = v2;

  v4 = [*(a1 + 32) allNumberingSystemTypes];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_76];
}

void __45__PUINumberingSystem_numberingSystemForType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PUINumberingSystem alloc] initWithNumberingSystemType:v2];
  [numberingSystemForType__numberingSystemForType setObject:v3 forKeyedSubscript:v2];
}

+ (id)numberingSystemDisplayFontForFont:(id)font
{
  if (font)
  {
    [font fontWithSize:50.0];
  }

  else
  {
    [MEMORY[0x1E69DB878] systemFontOfSize:50.0];
  }
  v3 = ;

  return v3;
}

- (PUINumberingSystem)initWithNumberingSystemType:(id)type
{
  typeCopy = type;
  v70.receiver = self;
  v70.super_class = PUINumberingSystem;
  v5 = [(PUINumberingSystem *)&v70 init];
  if (v5)
  {
    allNumberingSystemTypes = [objc_opt_class() allNumberingSystemTypes];
    v7 = [allNumberingSystemTypes containsObject:typeCopy];

    if ((v7 & 1) == 0)
    {

      typeCopy = @"latn";
    }

    v8 = MEMORY[0x1E69DCAB8];
    v9 = PUIBundle();
    v10 = [v8 imageNamed:@"textformat.12" inBundle:v9 withConfiguration:0];
    image = v5->_image;
    v5->_image = v10;

    v12 = PUIBundle();
    v13 = [v12 localizedStringForKey:@"ARABIC_NUMBERS" value:&stru_1F1C6DED8 table:0];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v13;

    objc_storeStrong(&v5->_type, typeCopy);
    objc_storeStrong(&v5->_systemName, typeCopy);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v17 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:localeIdentifier];
    v18 = [v17 mutableCopy];

    [v18 setObject:v5->_systemName forKey:@"numbers"];
    v19 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v18];
    v20 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v19];
    locale = v5->_locale;
    v5->_locale = v20;

    if (([(__CFString *)typeCopy isEqualToString:@"latn"]& 1) != 0)
    {
      goto LABEL_22;
    }

    if ([(__CFString *)typeCopy isEqualToString:@"arab"])
    {
      v22 = PUIBundle();
      v23 = v22;
      v24 = @"ARABIC_INDIC_NUMBERS";
    }

    else
    {
      if ([(__CFString *)typeCopy isEqualToString:@"deva"])
      {
        v29 = PUIBundle();
        v30 = [v29 localizedStringForKey:@"DEVANAGARI_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v31 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v30;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.hi";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"khmr"])
      {
        v32 = PUIBundle();
        v33 = [v32 localizedStringForKey:@"KHMER_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v34 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v33;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.km";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"mymr"])
      {
        v35 = PUIBundle();
        v36 = [v35 localizedStringForKey:@"BURMESE_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v37 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v36;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.my";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"beng"])
      {
        v38 = PUIBundle();
        v39 = [v38 localizedStringForKey:@"BANGLA_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v40 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v39;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.bn";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"guru"])
      {
        v41 = PUIBundle();
        v42 = [v41 localizedStringForKey:@"GURMUKHI_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v43 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v42;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.pa";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"gujr"])
      {
        v44 = PUIBundle();
        v45 = [v44 localizedStringForKey:@"GUJARATI_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v46 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v45;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.gu";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"taml"])
      {
        v48 = PUIBundle();
        v50 = [v48 localizedStringForKey:@"TAMIL_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v51 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v50;

        goto LABEL_21;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"telu"])
      {
        v52 = PUIBundle();
        v53 = [v52 localizedStringForKey:@"TELUGU_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v54 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v53;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.te";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"mlym"])
      {
        v55 = PUIBundle();
        v56 = [v55 localizedStringForKey:@"MALAYALAM_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v57 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v56;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.ml";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"knda"])
      {
        v58 = PUIBundle();
        v59 = [v58 localizedStringForKey:@"KANNADA_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v60 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v59;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.kn";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"orya"])
      {
        v61 = PUIBundle();
        v62 = [v61 localizedStringForKey:@"ODIA_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v63 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v62;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.or";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"olck"])
      {
        v64 = PUIBundle();
        v65 = [v64 localizedStringForKey:@"OLCHIKI_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v66 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v65;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.sat";
        goto LABEL_20;
      }

      if ([(__CFString *)typeCopy isEqualToString:@"mtei"])
      {
        v67 = PUIBundle();
        v68 = [v67 localizedStringForKey:@"MEITEI_NUMBERS" value:&stru_1F1C6DED8 table:0];
        v69 = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v68;

        v27 = MEMORY[0x1E69DCAB8];
        v28 = @"textformat.numbers.mni";
        goto LABEL_20;
      }

      if (![(__CFString *)typeCopy isEqualToString:@"arabext"])
      {
        goto LABEL_22;
      }

      v22 = PUIBundle();
      v23 = v22;
      v24 = @"URDU_NUMBERS";
    }

    v25 = [v22 localizedStringForKey:v24 value:&stru_1F1C6DED8 table:0];
    v26 = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v25;

    v27 = MEMORY[0x1E69DCAB8];
    v28 = @"textformat.numbers.ar";
LABEL_20:
    v47 = [v27 systemImageNamed:v28];
    v48 = v5->_image;
    v5->_image = v47;
LABEL_21:

LABEL_22:
  }

  return v5;
}

- (PUINumberingSystem)init
{
  v3 = objc_opt_class();
  v4 = PUISystemDefaultNumberingSystemType();
  v5 = [v3 numberingSystemForType:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else if (equalCopy)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if ((isKindOfClass & 1) != 0 && (-[PUINumberingSystem type](v5, "type"), v10 = objc_claimAutoreleasedReturnValue(), -[PUINumberingSystem type](self, "type"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, v10, v12) && (-[PUINumberingSystem localizedDisplayName](v5, "localizedDisplayName"), v13 = objc_claimAutoreleasedReturnValue(), -[PUINumberingSystem localizedDisplayName](self, "localizedDisplayName"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, v15))
    {
      locale = [(PUINumberingSystem *)v5 locale];
      locale2 = [(PUINumberingSystem *)self locale];
      v18 = [locale isEqual:locale2];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_type withName:@"type"];
  [v3 appendString:self->_localizedDisplayName withName:@"localizedDisplayName"];
  v4 = [v3 appendBool:self->_image != 0 withName:@"hasImage" ifEqualTo:0];
  v5 = [v3 appendObject:self->_locale withName:@"locale"];
  build = [v3 build];

  return build;
}

- (PUINumberingSystem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_type"];

  v7 = [(PUINumberingSystem *)self initWithNumberingSystemType:v6];
  return v7;
}

@end