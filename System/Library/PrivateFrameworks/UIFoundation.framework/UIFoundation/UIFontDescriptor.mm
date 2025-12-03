@interface UIFontDescriptor
+ (UIFontDescriptor)fontDescriptorWithFontAttributes:(NSDictionary *)attributes;
+ (UIFontDescriptor)fontDescriptorWithName:(NSString *)fontName matrix:(CGAffineTransform *)matrix;
+ (UIFontDescriptor)fontDescriptorWithName:(NSString *)fontName size:(CGFloat)size;
+ (UIFontDescriptor)preferredFontDescriptorWithTextStyle:(UIFontTextStyle)style;
+ (UIFontDescriptor)preferredFontDescriptorWithTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_createMungledDictionary:(id)dictionary;
+ (id)_preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits design:(id)design weight:(double)weight compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontDescriptorWithTextStyle:(id)style design:(id)design weight:(double)weight;
+ (id)_preferredFontDescriptorWithTextStyle:(id)style design:(id)design weight:(double)weight compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontDescriptorWithTextStyle:(id)style weight:(double)weight;
+ (id)defaultFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits options:(unint64_t)options;
+ (id)preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits options:(unint64_t)options;
- (CGAffineTransform)_matrix;
- (CGAffineTransform)matrix;
- (CGFloat)pointSize;
- (NSDictionary)fontAttributes;
- (NSString)postscriptName;
- (UIFontDescriptor)fontDescriptorByAddingAttributes:(NSDictionary *)attributes;
- (UIFontDescriptor)fontDescriptorWithDesign:(UIFontDescriptorSystemDesign)design;
- (UIFontDescriptor)fontDescriptorWithFace:(NSString *)newFace;
- (UIFontDescriptor)fontDescriptorWithFamily:(NSString *)newFamily;
- (UIFontDescriptor)fontDescriptorWithMatrix:(CGAffineTransform *)matrix;
- (UIFontDescriptor)fontDescriptorWithSize:(CGFloat)newPointSize;
- (UIFontDescriptor)fontDescriptorWithSymbolicTraits:(unsigned int)traits mask:(unsigned int)mask;
- (UIFontDescriptor)init;
- (UIFontDescriptor)initWithCoder:(NSCoder *)coder;
- (id)_NSAffineTransform;
- (id)_fontDescriptorWithMatrix:(CGAffineTransform *)matrix;
- (id)_swapWithFontAttributes:(id)attributes options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIFontDescriptor

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIFontDescriptor;
  [(UIFontDescriptor *)&v3 dealloc];
}

- (CGFloat)pointSize
{
  v2 = [(UIFontDescriptor *)self objectForKey:@"NSFontSizeAttribute"];
  if (!v2)
  {
    return 0.0;
  }

  [v2 doubleValue];
  return result;
}

+ (id)_createMungledDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionary objectForKey:@"NSFontMatrixAttribute"];
    if (v5 && (v6 = v5, v7 = *MEMORY[0x1E6965800], ![dictionaryCopy objectForKey:*MEMORY[0x1E6965800]]))
    {
      dictionaryCopy = [dictionaryCopy mutableCopy];
      [v6 CGAffineTransformValue];
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v12 length:48];
      [dictionaryCopy setObject:v11 forKey:v7];
    }

    else
    {
      v8 = dictionaryCopy;
    }

    return dictionaryCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695DF20];

    return objc_alloc_init(v9);
  }
}

- (id)_swapWithFontAttributes:(id)attributes options:(unint64_t)options
{
  v5 = [UIFontDescriptor _createMungledDictionary:attributes];
  v6 = CTFontDescriptorCreateWithAttributesAndOptions();

  return v6;
}

- (UIFontDescriptor)init
{
  dictionary = [MEMORY[0x1E695DF20] dictionary];

  return [(UIFontDescriptor *)self initWithFontAttributes:dictionary];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIFontDescriptor allocWithZone:zone];
  attributes = self->_attributes;

  return [(UIFontDescriptor *)v4 initWithFontAttributes:attributes];
}

+ (UIFontDescriptor)preferredFontDescriptorWithTextStyle:(UIFontTextStyle)style
{
  v4 = +[UIFont preferredContentSizeCategory];

  return __UIFontDescriptorWithTextStyle(style, v4, 0, 0, 0, 0, -1);
}

+ (UIFontDescriptor)preferredFontDescriptorWithTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  preferredContentSizeCategory = [(UITraitCollection *)traitCollection preferredContentSizeCategory];
  v7 = __UIGetLegibilityWeight(traitCollection);

  return __UIFontDescriptorWithTextStyle(style, preferredContentSizeCategory, 0, 0, 0, 0, v7);
}

+ (id)preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits options:(unint64_t)options
{
  v5 = *&traits;
  v7 = [UIFont _preferredContentSizeCategory:options];

  return __UIFontDescriptorWithTextStyle(style, v7, 0, v5, 0, 0, -1);
}

+ (id)_preferredFontDescriptorWithTextStyle:(id)style weight:(double)weight
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return __UIFontDescriptorWithTextStyle(style, 0, 0, 0, 0, v5, -1);
}

+ (id)_preferredFontDescriptorWithTextStyle:(id)style design:(id)design weight:(double)weight
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return __UIFontDescriptorWithTextStyle(style, 0, 0, 0, design, v7, -1);
}

+ (id)_preferredFontDescriptorWithTextStyle:(id)style design:(id)design weight:(double)weight compatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:weight];
  v12 = __UIGetLegibilityWeight(collection);

  return __UIFontDescriptorWithTextStyle(style, preferredContentSizeCategory, 0, 0, design, v11, v12);
}

+ (id)_preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits design:(id)design weight:(double)weight compatibleWithTraitCollection:(id)collection
{
  v10 = *&traits;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:weight];
  v14 = __UIGetLegibilityWeight(collection);

  return __UIFontDescriptorWithTextStyle(style, preferredContentSizeCategory, 0, v10, design, v13, v14);
}

+ (id)_preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits compatibleWithTraitCollection:(id)collection
{
  v6 = *&traits;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v9 = __UIGetLegibilityWeight(collection);

  return __UIFontDescriptorWithTextStyle(style, preferredContentSizeCategory, 0, v6, 0, 0, v9);
}

+ (id)defaultFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits options:(unint64_t)options
{
  v5 = *&traits;
  result = __UIFontDescriptorWithTextStyle(style, 0, 1, *&traits, 0, 0, -1);
  if (v5)
  {

    return [result fontDescriptorWithSymbolicTraits:v5 mask:v5];
  }

  return result;
}

+ (UIFontDescriptor)fontDescriptorWithFontAttributes:(NSDictionary *)attributes
{
  v3 = [[self alloc] initWithFontAttributes:attributes];

  return v3;
}

+ (UIFontDescriptor)fontDescriptorWithName:(NSString *)fontName size:(CGFloat)size
{
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [v7 initWithObjectsAndKeys:{fontName, @"NSFontNameAttribute", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", size), @"NSFontSizeAttribute", 0}];
  v9 = [[self alloc] initWithFontAttributes:v8];

  return v9;
}

- (NSDictionary)fontAttributes
{
  v2 = self->_attributes;

  return v2;
}

- (UIFontDescriptor)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [UIFontDescriptor initWithCoder:];
    }

    v5 = [(NSCoder *)coder decodeObjectOfClasses:initWithCoder__allowedClasses_0 forKey:@"UIFontDescriptorAttributes"];
    v6 = [(NSCoder *)coder decodeIntegerForKey:@"UIFontDescriptorOptions"];
    v7 = [v5 objectForKey:@"NSCTFontUIUsageAttribute"];
    v8 = [v7 isEqualToString:*MEMORY[0x1E6965720]];
    if ((v8 & 1) != 0 || [v7 isEqualToString:*MEMORY[0x1E6965728]])
    {
      v9 = [v5 objectForKey:@"NSCTFontUIUsageOverrideAttribute"];
      if (v9)
      {
        goto LABEL_7;
      }

      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v12 = MEMORY[0x1E6965710];
        if (!v8)
        {
          v12 = MEMORY[0x1E6965718];
        }

        v9 = *v12;
        if (*v12)
        {
LABEL_7:
          v10 = [v5 mutableCopy];
          [v10 setObject:v9 forKey:@"NSCTFontUIUsageAttribute"];
          [v10 removeObjectForKey:@"NSCTFontUIUsageOverrideAttribute"];
          v5 = v10;
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return [(UIFontDescriptor *)self _swapWithFontAttributes:v5 options:v6];
}

uint64_t __34__UIFontDescriptor_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  initWithCoder__allowedClasses_0 = result;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    fontAttributes = [(UIFontDescriptor *)self fontAttributes];
    v6 = [(NSDictionary *)fontAttributes objectForKey:@"NSCTFontUIUsageAttribute"];
    v7 = [v6 isEqualToString:*MEMORY[0x1E6965710]];
    v8 = [v6 isEqualToString:*MEMORY[0x1E6965718]];
    v9 = [(NSDictionary *)fontAttributes objectForKey:@"NSColor"];
    v10 = v9;
    v11 = v7 | v8;
    if ((v11 & 1) != 0 || v9)
    {
      v12 = [(NSDictionary *)fontAttributes mutableCopy];
      v13 = v12;
      if (v11)
      {
        v14 = MEMORY[0x1E6965720];
        if (!v7)
        {
          v14 = MEMORY[0x1E6965728];
        }

        [v12 setObject:*v14 forKey:@"NSCTFontUIUsageAttribute"];
        [v13 setObject:v6 forKey:@"NSCTFontUIUsageOverrideAttribute"];
      }

      if (v10)
      {
        [v13 removeObjectForKey:@"NSColor"];
      }

      fontAttributes = v13;
    }

    [coder encodeObject:fontAttributes forKey:@"UIFontDescriptorAttributes"];
    Options = CTFontDescriptorGetOptions();

    [coder encodeInteger:Options forKey:@"UIFontDescriptorOptions"];
  }
}

- (NSString)postscriptName
{
  result = [(UIFontDescriptor *)self objectForKey:@"NSCTFontPostScriptNameAttribute"];
  if (!result)
  {

    return [(UIFontDescriptor *)self objectForKey:@"NSFontNameAttribute"];
  }

  return result;
}

+ (UIFontDescriptor)fontDescriptorWithName:(NSString *)fontName matrix:(CGAffineTransform *)matrix
{
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [v7 initWithObjectsAndKeys:{fontName, @"NSFontNameAttribute", objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", matrix, "{CGAffineTransform=dddddd}"), @"NSFontMatrixAttribute", 0}];
  v9 = [[self alloc] initWithFontAttributes:v8];

  return v9;
}

- (UIFontDescriptor)fontDescriptorByAddingAttributes:(NSDictionary *)attributes
{
  v5 = [(UIFontDescriptor *)self zone];
  v6 = [(NSDictionary *)[(UIFontDescriptor *)self fontAttributes] mutableCopyWithZone:v5];
  [v6 addEntriesFromDictionary:attributes];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{v5), "initWithFontAttributes:", v6}];

  return v7;
}

- (UIFontDescriptor)fontDescriptorWithSymbolicTraits:(unsigned int)traits mask:(unsigned int)mask
{
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(self, traits, mask);

  return CopyWithSymbolicTraits;
}

- (id)_fontDescriptorWithMatrix:(CGAffineTransform *)matrix
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithBytes:objCType:", matrix, "{CGAffineTransform=dddddd}"), @"NSFontMatrixAttribute"}];

  return [(UIFontDescriptor *)self fontDescriptorByAddingAttributes:v4];
}

- (CGAffineTransform)_matrix
{
  result = [(UIFontDescriptor *)self objectForKey:@"NSFontMatrixAttribute"];
  if (result)
  {

    return [(CGAffineTransform *)result CGAffineTransformValue];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (id)_NSAffineTransform
{
  v2 = [(UIFontDescriptor *)self objectForKey:@"NSFontMatrixAttribute"];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (memset(&v4[1], 0, sizeof(CGAffineTransform)), [v2 CGAffineTransformValue], v4[0] = v4[1], !CGAffineTransformIsIdentity(v4)))
      {
        v2 = objc_alloc_init(MEMORY[0x1E696AA98]);
        v4[0] = v4[1];
        [v2 setTransformStruct:v4];
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

- (UIFontDescriptor)fontDescriptorWithMatrix:(CGAffineTransform *)matrix
{
  v3 = *&matrix->c;
  v5[0] = *&matrix->a;
  v5[1] = v3;
  v5[2] = *&matrix->tx;
  return [(UIFontDescriptor *)self _fontDescriptorWithMatrix:v5];
}

- (CGAffineTransform)matrix
{
  if (self)
  {
    return [(CGAffineTransform *)self _matrix];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (UIFontDescriptor)fontDescriptorWithSize:(CGFloat)newPointSize
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", newPointSize), @"NSFontSizeAttribute"}];

  return [(UIFontDescriptor *)self fontDescriptorByAddingAttributes:v4];
}

- (UIFontDescriptor)fontDescriptorWithFace:(NSString *)newFace
{
  if ([(UIFontDescriptor *)self objectForKey:@"NSFontNameAttribute"])
  {
    v5 = [(NSDictionary *)[(UIFontDescriptor *)self fontAttributes] mutableCopyWithZone:0];
    [v5 removeObjectForKey:@"NSFontNameAttribute"];
    [v5 setObject:newFace forKey:@"NSFontFaceAttribute"];
    v6 = [UIFontDescriptor fontDescriptorWithFontAttributes:v5];

    return v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:newFace forKey:@"NSFontFaceAttribute"];

    return [(UIFontDescriptor *)self fontDescriptorByAddingAttributes:v8];
  }
}

- (UIFontDescriptor)fontDescriptorWithFamily:(NSString *)newFamily
{
  if ([(UIFontDescriptor *)self objectForKey:@"NSFontNameAttribute"]|| [(UIFontDescriptor *)self objectForKey:@"NSFontFaceAttribute"])
  {
    v5 = [(NSDictionary *)[(UIFontDescriptor *)self fontAttributes] mutableCopyWithZone:0];
    [v5 removeObjectForKey:@"NSFontNameAttribute"];
    [v5 removeObjectForKey:@"NSFontFaceAttribute"];
    [v5 setObject:newFamily forKey:@"NSFontFamilyAttribute"];
    v6 = [UIFontDescriptor fontDescriptorWithFontAttributes:v5];

    return v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:newFamily forKey:@"NSFontFamilyAttribute"];

    return [(UIFontDescriptor *)self fontDescriptorByAddingAttributes:v8];
  }
}

- (UIFontDescriptor)fontDescriptorWithDesign:(UIFontDescriptorSystemDesign)design
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (![(UIFontDescriptor *)self objectForKey:@"NSCTFontUIUsageAttribute"])
  {
    return 0;
  }

  v5 = CTFontDescriptorCanCreateWithTextStyle();
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E6965888];
  }

  else
  {
    v7 = @"NSCTFontTraitsAttribute";
  }

  v8 = [-[UIFontDescriptor objectForKey:](self objectForKey:{v7), "mutableCopy"}];
  v17 = @"NSCTFontUIFontDesignTrait";
  v18[0] = design;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  if (v8)
  {
    [v8 addEntriesFromDictionary:v9];
  }

  if ([(UIFontDescriptor *)self objectForKey:@"NSFontNameAttribute"]|| [(UIFontDescriptor *)self objectForKey:@"NSFontFaceAttribute"])
  {
    v10 = [(NSDictionary *)[(UIFontDescriptor *)self fontAttributes] mutableCopyWithZone:0];
    [v10 removeObjectForKey:@"NSFontNameAttribute"];
    [v10 removeObjectForKey:@"NSFontFaceAttribute"];
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    [v10 setObject:v11 forKey:@"NSCTFontTraitsAttribute"];
    if ((v6 & 1) == 0)
    {
      [v10 removeObjectForKey:@"NSCTFontUIUsageAttribute"];
    }

    v12 = [UIFontDescriptor fontDescriptorWithFontAttributes:v10];
  }

  else
  {
    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    v15 = @"NSCTFontTraitsAttribute";
    v16 = v14;
    v12 = -[UIFontDescriptor fontDescriptorByAddingAttributes:](self, "fontDescriptorByAddingAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1]);
  }

  return v12;
}

@end