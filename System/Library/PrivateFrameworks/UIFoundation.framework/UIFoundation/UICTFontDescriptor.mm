@interface UICTFontDescriptor
+ (id)fontDescriptorWithFontAttributes:(id)attributes;
+ (id)fontDescriptorWithName:(id)name matrix:(CGAffineTransform *)matrix;
+ (id)fontDescriptorWithName:(id)name size:(double)size;
- (BOOL)isEqual:(id)equal;
- (id)fontAttributes;
- (id)fontDescriptorByAddingAttributes:(id)attributes;
- (id)matchingFontDescriptorWithMandatoryKeys:(id)keys;
- (id)matchingFontDescriptorsWithMandatoryKeys:(id)keys;
- (id)objectForKey:(id)key;
@end

@implementation UICTFontDescriptor

- (id)fontAttributes
{
  v2 = CTFontDescriptorCopyAttributes(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

+ (id)fontDescriptorWithFontAttributes:(id)attributes
{
  v3 = [UIFontDescriptor _createMungledDictionary:attributes];
  v4 = CTFontDescriptorCreateWithAttributes(v3);

  return v4;
}

+ (id)fontDescriptorWithName:(id)name size:(double)size
{
  v4 = CTFontDescriptorCreateWithNameAndSize(name, size);

  return v4;
}

+ (id)fontDescriptorWithName:(id)name matrix:(CGAffineTransform *)matrix
{
  v6 = *&matrix->c;
  v9[0] = *&matrix->a;
  v9[1] = v6;
  v9[2] = *&matrix->tx;
  v7 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:v9];
  return [self fontDescriptorWithFontAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", name, @"NSFontNameAttribute", v7, @"NSFontMatrixAttribute", 0)}];
}

- (id)objectForKey:(id)key
{
  v3 = CTFontDescriptorCopyAttribute(self, key);

  return v3;
}

- (id)fontDescriptorByAddingAttributes:(id)attributes
{
  v4 = [UIFontDescriptor _createMungledDictionary:attributes];
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(self, v4);

  return CopyWithAttributes;
}

- (id)matchingFontDescriptorsWithMandatoryKeys:(id)keys
{
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(self, keys);

  return MatchingFontDescriptors;
}

- (id)matchingFontDescriptorWithMandatoryKeys:(id)keys
{
  MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(self, keys);

  return MatchingFontDescriptor;
}

@end