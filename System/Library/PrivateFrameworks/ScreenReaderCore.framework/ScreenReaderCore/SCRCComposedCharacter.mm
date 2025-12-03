@interface SCRCComposedCharacter
- (BOOL)_formKCContaintsUpperCase;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUChar32:(int)char32;
- (SCRCComposedCharacter)initWithCharacter:(int)character;
- (SCRCComposedCharacter)initWithComposedCharacter:(__CFString *)character;
- (__CFString)copyUnicodeDescriptionString;
- (id)_initWithCharacter:(int)character;
- (id)_initWithComposedCharacter:(__CFString *)character;
- (id)_initWithSimpleCharacter:(int)character;
- (int)formDCharAtIndex:(unint64_t)index;
- (int)formKCCharAtIndex:(unint64_t)index;
- (int)originalFromCharAtIndex:(unint64_t)index;
- (unint64_t)formDLength;
- (unint64_t)formKCLength;
- (void)_buildFormD;
- (void)_buildFormKC;
- (void)dealloc;
@end

@implementation SCRCComposedCharacter

- (id)_initWithCharacter:(int)character
{
  *bytes = character;
  v4 = [(SCRCComposedCharacter *)self init];
  if (v4)
  {
    v5 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v4->_originalRepresentation = v5;
    *v5 = character;
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

- (id)_initWithSimpleCharacter:(int)character
{
  result = [(SCRCComposedCharacter *)self _initWithCharacter:*&character];
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

- (SCRCComposedCharacter)initWithCharacter:(int)character
{
  if (character > 127)
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

- (id)_initWithComposedCharacter:(__CFString *)character
{
  v4 = [(SCRCComposedCharacter *)self init];
  v5 = v4;
  if (character && v4)
  {
    CFRetain(character);
    v5->_originalCombinedCharacter = character;
    v5->_originalCombinedCharacterLength = CFStringGetLength(character);
    v5->_originalRepresentation = SCRCCopyStringToUChar32Array(v5->_originalCombinedCharacter, &v5->_originalRepresentationLength);
  }

  return v5;
}

- (SCRCComposedCharacter)initWithComposedCharacter:(__CFString *)character
{
  if ([(__CFString *)character scrc_containsOnlyOneGlyph])
  {
    self = [(SCRCComposedCharacter *)self _initWithComposedCharacter:character];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      originalCombinedCharacter = self->_originalCombinedCharacter;
      v7 = originalCombinedCharacter && (v6 = equalCopy->_originalCombinedCharacter) != 0 && CFStringCompare(originalCombinedCharacter, v6, 0x10uLL) == kCFCompareEqualTo;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCRCComposedCharacter;
    v7 = [(SCRCComposedCharacter *)&v9 isEqual:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToUChar32:(int)char32
{
  v4 = [[SCRCComposedCharacter alloc] initWithCharacter:*&char32];
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
  selfCopy = self;
  v4 = selfCopy;
  originalCombinedCharacter = selfCopy->_originalCombinedCharacter;
  if (originalCombinedCharacter && (MutableCopy = CFStringCreateMutableCopy(0, selfCopy->_originalCombinedCharacterLength, originalCombinedCharacter)) != 0)
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
  selfCopy = self;
  v4 = selfCopy;
  originalCombinedCharacter = selfCopy->_originalCombinedCharacter;
  if (originalCombinedCharacter && (MutableCopy = CFStringCreateMutableCopy(0, selfCopy->_originalCombinedCharacterLength, originalCombinedCharacter)) != 0)
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

- (int)formDCharAtIndex:(unint64_t)index
{
  normalFormDRepresentationLength = self->_normalFormDRepresentationLength;
  if (!normalFormDRepresentationLength)
  {
    [(SCRCComposedCharacter *)self _buildFormD];
    normalFormDRepresentationLength = self->_normalFormDRepresentationLength;
  }

  if (normalFormDRepresentationLength <= index)
  {
    return 0;
  }

  else
  {
    return self->_normalFormDRepresentation[index];
  }
}

- (int)formKCCharAtIndex:(unint64_t)index
{
  normalFormKCRepresentationLength = self->_normalFormKCRepresentationLength;
  if (!normalFormKCRepresentationLength)
  {
    [(SCRCComposedCharacter *)self _buildFormKC];
    normalFormKCRepresentationLength = self->_normalFormKCRepresentationLength;
  }

  if (normalFormKCRepresentationLength <= index)
  {
    return 0;
  }

  else
  {
    return self->_normalFormKCRepresentation[index];
  }
}

- (int)originalFromCharAtIndex:(unint64_t)index
{
  originalRepresentation = self->_originalRepresentation;
  if (originalRepresentation && self->_originalRepresentationLength > index)
  {
    return originalRepresentation[index];
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

  uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  if (self->_normalFormKCRepresentationLength)
  {
    v4 = 0;
    do
    {
      v5 = [uppercaseLetterCharacterSet longCharacterIsMember:self->_normalFormKCRepresentation[v4]];
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