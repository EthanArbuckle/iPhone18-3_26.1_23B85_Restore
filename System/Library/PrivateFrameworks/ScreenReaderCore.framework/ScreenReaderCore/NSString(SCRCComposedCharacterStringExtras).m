@interface NSString(SCRCComposedCharacterStringExtras)
- (CFMutableStringRef)scrc_decodeUnicodeForKVO;
- (SCRCComposedCharEnumerator)scrc_composedCharacterEnumerator;
- (SCRCComposedCharacter)scrc_composedCharacterAtIndex:()SCRCComposedCharacterStringExtras;
- (__CFString)scrc_encodeUnicodeForKVO;
- (uint64_t)_countNumberOfGlyphs:()SCRCComposedCharacterStringExtras;
@end

@implementation NSString(SCRCComposedCharacterStringExtras)

- (SCRCComposedCharacter)scrc_composedCharacterAtIndex:()SCRCComposedCharacterStringExtras
{
  if (CFStringGetLength(a1) <= a3)
  {
    v6 = 0;
  }

  else
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a1, a3);
    if (RangeOfComposedCharactersAtIndex.length == 1)
    {
      v6 = [[SCRCComposedCharacter alloc] initWithCharacter:CFStringGetCharacterAtIndex(a1, a3)];
    }

    else
    {
      v7 = CFStringCreateWithSubstring(0, a1, RangeOfComposedCharactersAtIndex);
      v6 = [[SCRCComposedCharacter alloc] _initWithComposedCharacter:v7];
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  return v6;
}

- (uint64_t)_countNumberOfGlyphs:()SCRCComposedCharacterStringExtras
{
  Length = CFStringGetLength(a1);
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 >= Length)
    {
      break;
    }

    if (v7 >= a3)
    {
      break;
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a1, v6);
    v7 = v8 + 1;
    v6 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
  }

  while (RangeOfComposedCharactersAtIndex.length);
  return v8;
}

- (__CFString)scrc_encodeUnicodeForKVO
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  v10 = 0;
  v3 = SCRCCopyStringToUniCharArray(MutableCopy, &v10);
  v4 = CFStringCreateWithFormat(0, 0, @"%%0%lux", 4);
  v5 = v10;
  if (v10)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      CFStringAppendFormat(Mutable, 0, v4, *&v3[2 * v6]);
      v6 = v7;
    }

    while (v5 > v7++);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  free(v3);

  return Mutable;
}

- (CFMutableStringRef)scrc_decodeUnicodeForKVO
{
  v11 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  Mutable = CFStringCreateMutable(0, 0);
  if ((Length & 3) != 0)
  {
LABEL_2:
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  else if (Length >= 1)
  {
    for (i = 0; i < Length; i += 4)
    {
      v13.location = i;
      v13.length = 4;
      CFStringGetCharacters(a1, v13, buffer);
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = buffer[v5];
        v8 = v7 - 48;
        if ((v7 - 48) >= 0xA)
        {
          if ((v7 - 97) > 5 && (v7 - 65) > 5)
          {
            goto LABEL_2;
          }

          v8 = v7 - 87;
        }

        ++v5;
        v6 = v8 | (16 * v6);
      }

      while (v5 != 4);
      CFStringAppendFormat(Mutable, 0, @"%C", v6);
    }
  }

  return Mutable;
}

- (SCRCComposedCharEnumerator)scrc_composedCharacterEnumerator
{
  v1 = [a1 mutableCopy];
  CFStringNormalize(v1, kCFStringNormalizationFormD);
  v2 = [[SCRCComposedCharEnumerator alloc] initWithString:v1];

  return v2;
}

@end