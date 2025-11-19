@interface SCRCComposedCharacter
- (BOOL)_formKCContaintsUpperCase;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUChar32:(int)a3;
- (SCRCComposedCharacter)initWithCharacter:(int)a3;
- (SCRCComposedCharacter)initWithComposedCharacter:(__CFString *)a3;
- (__CFString)copyUnicodeDescriptionString;
- (id)_initWithCharacter:(int)a3;
- (id)_initWithComposedCharacter:(__CFString *)a3;
- (id)_initWithSimpleCharacter:(int)a3;
- (int)formDCharAtIndex:(unint64_t)a3;
- (int)formKCCharAtIndex:(unint64_t)a3;
- (int)originalFromCharAtIndex:(unint64_t)a3;
- (unint64_t)formDLength;
- (unint64_t)formKCLength;
- (void)_buildFormD;
- (void)_buildFormKC;
- (void)dealloc;
@end

@implementation SCRCComposedCharacter

- (id)_initWithCharacter:(int)a3
{
  *bytes = a3;
  v4 = [(SCRCComposedCharacter *)self init];
  if (v4)
  {
    v5 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v4->_originalRepresentation = v5;
    *v5 = a3;
    v6 = SCRCUTF32Encoding();
    v7 = CFStringCreateWithBytes(0, bytes, 4, v6, 0);
    if (*bytes < 0x10000)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v4->_originalCombinedCharacterLength = v8;
    v4->_originalCombinedCharacter = v7;
    v4->_originalRepresentationLength = 1;
  }

  return v4;
}

- (id)_initWithSimpleCharacter:(int)a3
{
  result = [(SCRCComposedCharacter *)self _initWithCharacter:*&a3];
  if (result)
  {
    v4 = *(result + 4);
    *(result + 5) = v4;
    *(result + 6) = v4;
    v5 = *(result + 1);
    *(result + 2) = v5;
    *(result + 3) = v5;
  }

  return result;
}

- (SCRCComposedCharacter)initWithCharacter:(int)a3
{
  if (a3 > 127)
  {
    v3 = [(SCRCComposedCharacter *)self _initWithCharacter:?];
  }

  else
  {
    v3 = [(SCRCComposedCharacter *)self _initWithSimpleCharacter:?];
  }

  v4 = v3;

  return v4;
}

- (id)_initWithComposedCharacter:(__CFString *)a3
{
  v4 = [(SCRCComposedCharacter *)self init];
  v5 = v4;
  if (a3 && v4)
  {
    CFRetain(a3);
    v5->_originalCombinedCharacter = a3;
    v5->_originalCombinedCharacterLength = CFStringGetLength(a3);
    v5->_originalRepresentation = SCRCCopyStringToUChar32Array(v5->_originalCombinedCharacter, &v5->_originalRepresentationLength);
  }

  return v5;
}

- (SCRCComposedCharacter)initWithComposedCharacter:(__CFString *)a3
{
  if ([(__CFString *)a3 scrc_containsOnlyOneGlyph])
  {
    self = [(SCRCComposedCharacter *)self _initWithComposedCharacter:a3];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  originalCombinedCharacter = self->_originalCombinedCharacter;
  if (originalCombinedCharacter)
  {
    CFRelease(originalCombinedCharacter);
  }

  originalRepresentation = self->_originalRepresentation;
  if (originalRepresentation)
  {
    if (originalRepresentation == self->_normalFormDRepresentation)
    {
      self->_normalFormDRepresentation = 0;
    }

    if (originalRepresentation == self->_normalFormKCRepresentation)
    {
      self->_normalFormKCRepresentation = 0;
    }

    free(originalRepresentation);
    self->_originalRepresentation = 0;
    self->_originalRepresentationLength = 0;
  }

  normalFormDRepresentation = self->_normalFormDRepresentation;
  if (normalFormDRepresentation)
  {
    free(normalFormDRepresentation);
    self->_normalFormDRepresentation = 0;
    self->_normalFormDRepresentationLength = 0;
  }

  normalFormKCRepresentation = self->_normalFormKCRepresentation;
  if (normalFormKCRepresentation)
  {
    free(normalFormKCRepresentation);
    self->_normalFormKCRepresentation = 0;
    self->_normalFormKCRepresentationLength = 0;
  }

  v7.receiver = self;
  v7.super_class = SCRCComposedCharacter;
  [(SCRCComposedCharacter *)&v7 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      originalCombinedCharacter = self->_originalCombinedCharacter;
      v7 = originalCombinedCharacter && (v6 = v4->_originalCombinedCharacter) != 0 && CFStringCompare(originalCombinedCharacter, v6, 0x10uLL) == kCFCompareEqualTo;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCRCComposedCharacter;
    v7 = [(SCRCComposedCharacter *)&v9 isEqual:v4];
  }

  return v7;
}

- (BOOL)isEqualToUChar32:(int)a3
{
  v4 = [[SCRCComposedCharacter alloc] initWithCharacter:*&a3];
  LOBYTE(self) = [(SCRCComposedCharacter *)self isEqual:v4];

  return self;
}

- (__CFString)copyUnicodeDescriptionString
{
  Mutable = CFStringCreateMutable(0, 0);
  if (self->_normalFormKCRepresentationLength || ([(SCRCComposedCharacter *)self _buildFormKC], self->_normalFormKCRepresentationLength))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v4)
      {
        v6 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"with"];
        if (v6)
        {
          v7 = v6;
          CFStringAppend(Mutable, @" ");
          CFStringAppend(Mutable, v7);
          CFStringAppend(Mutable, @" ");
        }
      }

      v8 = _CopyUnicodeDescriptionStringForCharacter(self->_normalFormKCRepresentation[v5]);
      if (v8)
      {
        v9 = v8;
        CFStringAppend(Mutable, v8);
        CFRelease(v9);
      }

      ++v5;
      v4 = 1;
    }

    while (v5 < self->_normalFormKCRepresentationLength);
  }

  return Mutable;
}

- (void)_buildFormD
{
  v3 = self;
  v4 = v3;
  originalCombinedCharacter = v3->_originalCombinedCharacter;
  if (originalCombinedCharacter && (MutableCopy = CFStringCreateMutableCopy(0, v3->_originalCombinedCharacterLength, originalCombinedCharacter)) != 0)
  {
    v7 = MutableCopy;
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
    v8 = SCRCCopyStringToUChar32Array(v7, &self->_normalFormDRepresentationLength);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  v4->_normalFormDRepresentation = v8;
}

- (void)_buildFormKC
{
  v3 = self;
  v4 = v3;
  originalCombinedCharacter = v3->_originalCombinedCharacter;
  if (originalCombinedCharacter && (MutableCopy = CFStringCreateMutableCopy(0, v3->_originalCombinedCharacterLength, originalCombinedCharacter)) != 0)
  {
    v7 = MutableCopy;
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);
    v8 = SCRCCopyStringToUChar32Array(v7, &self->_normalFormKCRepresentationLength);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  v4->_normalFormKCRepresentation = v8;
}

- (int)formDCharAtIndex:(unint64_t)a3
{
  normalFormDRepresentationLength = self->_normalFormDRepresentationLength;
  if (!normalFormDRepresentationLength)
  {
    [(SCRCComposedCharacter *)self _buildFormD];
    normalFormDRepresentationLength = self->_normalFormDRepresentationLength;
  }

  if (normalFormDRepresentationLength <= a3)
  {
    return 0;
  }

  else
  {
    return self->_normalFormDRepresentation[a3];
  }
}

- (int)formKCCharAtIndex:(unint64_t)a3
{
  normalFormKCRepresentationLength = self->_normalFormKCRepresentationLength;
  if (!normalFormKCRepresentationLength)
  {
    [(SCRCComposedCharacter *)self _buildFormKC];
    normalFormKCRepresentationLength = self->_normalFormKCRepresentationLength;
  }

  if (normalFormKCRepresentationLength <= a3)
  {
    return 0;
  }

  else
  {
    return self->_normalFormKCRepresentation[a3];
  }
}

- (int)originalFromCharAtIndex:(unint64_t)a3
{
  originalRepresentation = self->_originalRepresentation;
  if (originalRepresentation && self->_originalRepresentationLength > a3)
  {
    return originalRepresentation[a3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_formKCContaintsUpperCase
{
  if (!self->_normalFormKCRepresentationLength)
  {
    [(SCRCComposedCharacter *)self _buildFormKC];
  }

  v3 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  if (self->_normalFormKCRepresentationLength)
  {
    v4 = 0;
    do
    {
      v5 = [v3 longCharacterIsMember:self->_normalFormKCRepresentation[v4]];
      if (v5)
      {
        break;
      }

      ++v4;
    }

    while (v4 < self->_normalFormKCRepresentationLength);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)formDLength
{
  result = self->_normalFormDRepresentationLength;
  if (!result)
  {
    [(SCRCComposedCharacter *)self _buildFormD];
    return self->_normalFormDRepresentationLength;
  }

  return result;
}

- (unint64_t)formKCLength
{
  result = self->_normalFormKCRepresentationLength;
  if (!result)
  {
    [(SCRCComposedCharacter *)self _buildFormKC];
    return self->_normalFormKCRepresentationLength;
  }

  return result;
}

@end