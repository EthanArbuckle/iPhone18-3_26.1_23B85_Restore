@interface UICTFontDescriptor
+ (id)fontDescriptorWithFontAttributes:(id)a3;
+ (id)fontDescriptorWithName:(id)a3 matrix:(CGAffineTransform *)a4;
+ (id)fontDescriptorWithName:(id)a3 size:(double)a4;
- (BOOL)isEqual:(id)a3;
- (id)fontAttributes;
- (id)fontDescriptorByAddingAttributes:(id)a3;
- (id)matchingFontDescriptorWithMandatoryKeys:(id)a3;
- (id)matchingFontDescriptorsWithMandatoryKeys:(id)a3;
- (id)objectForKey:(id)a3;
@end

@implementation UICTFontDescriptor

- (id)fontAttributes
{
  v2 = CTFontDescriptorCopyAttributes(self);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

+ (id)fontDescriptorWithFontAttributes:(id)a3
{
  v3 = [UIFontDescriptor _createMungledDictionary:a3];
  v4 = CTFontDescriptorCreateWithAttributes(v3);

  return v4;
}

+ (id)fontDescriptorWithName:(id)a3 size:(double)a4
{
  v4 = CTFontDescriptorCreateWithNameAndSize(a3, a4);

  return v4;
}

+ (id)fontDescriptorWithName:(id)a3 matrix:(CGAffineTransform *)a4
{
  v6 = *&a4->c;
  v9[0] = *&a4->a;
  v9[1] = v6;
  v9[2] = *&a4->tx;
  v7 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:v9];
  return [a1 fontDescriptorWithFontAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", a3, @"NSFontNameAttribute", v7, @"NSFontMatrixAttribute", 0)}];
}

- (id)objectForKey:(id)a3
{
  v3 = CTFontDescriptorCopyAttribute(self, a3);

  return v3;
}

- (id)fontDescriptorByAddingAttributes:(id)a3
{
  v4 = [UIFontDescriptor _createMungledDictionary:a3];
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(self, v4);

  return CopyWithAttributes;
}

- (id)matchingFontDescriptorsWithMandatoryKeys:(id)a3
{
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(self, a3);

  return MatchingFontDescriptors;
}

- (id)matchingFontDescriptorWithMandatoryKeys:(id)a3
{
  MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(self, a3);

  return MatchingFontDescriptor;
}

@end