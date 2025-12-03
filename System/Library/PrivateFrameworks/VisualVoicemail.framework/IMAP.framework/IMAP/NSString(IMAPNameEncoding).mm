@interface NSString(IMAPNameEncoding)
- (__CFString)mf_decodedIMAPMailboxName;
- (__CFString)mf_encodedIMAPMailboxName;
@end

@implementation NSString(IMAPNameEncoding)

- (__CFString)mf_encodedIMAPMailboxName
{
  selfCopy = self;
  v2 = [(__CFString *)selfCopy length];
  if (!mf_encodedIMAPMailboxName_passThroughSet)
  {
    v45.location = 32;
    v45.length = 94;
    mf_encodedIMAPMailboxName_passThroughSet = CFCharacterSetCreateWithCharactersInRange(0, v45);
  }

  v37 = selfCopy;
  v40 = 0;
  v41 = v2;
  CharactersPtr = CFStringGetCharactersPtr(selfCopy);
  CStringPtr = 0;
  v38 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(selfCopy, 0x600u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *buffer = 0u;
  v30 = 0u;
  v39 = CStringPtr;
  v42 = 0;
  v43 = 0;
  if (v2 < 1)
  {
    v5 = 0;
    goto LABEL_60;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (v6 < 0 || (v7 = v41, v41 <= v6))
    {
      v8 = 0;
    }

    else if (v38)
    {
      v8 = v38[v40 + v6];
    }

    else if (v39)
    {
      v8 = v39[v40 + v6];
    }

    else
    {
      if (v43 <= v6 || (v22 = v42, v42 > v6))
      {
        v23 = v6 - 4;
        if (v6 < 4)
        {
          v23 = 0;
        }

        if (v23 + 64 < v41)
        {
          v7 = v23 + 64;
        }

        v42 = v23;
        v43 = v7;
        v47.length = v7 - v23;
        v47.location = v40 + v23;
        CFStringGetCharacters(v37, v47, buffer);
        v22 = v42;
      }

      v8 = buffer[v6 - v22];
    }

    v28 = v8;
    IsCharacterMember = CFCharacterSetIsCharacterMember(mf_encodedIMAPMailboxName_passThroughSet, v8);
    v10 = v28;
    if (IsCharacterMember && v28 != 38)
    {
      if (!v5)
      {
LABEL_23:
        ++v6;
        continue;
      }

      v27[0] = v28;
      v11 = v5;
      v12 = 1;
LABEL_22:
      [v11 appendBytes:v27 length:{v12, v26}];
      goto LABEL_23;
    }

    if (!v5)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:{-[__CFString length](selfCopy, "length")}];
      v5 = v13;
      if (v6 >= 1)
      {
        [v13 setLength:v6];
        [v5 mutableBytes];
        v26 = 0;
        MFStringGetBytes();
      }

      v10 = v28;
    }

    if (v10 == 38)
    {
      strcpy(v27, "&-");
      v11 = v5;
      v12 = 2;
      goto LABEL_22;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:64];
    v15 = v28;
    do
    {
      v28 = bswap32(v15) >> 16;
      [v14 appendBytes:&v28 length:{2, v26}];
      v16 = v6 + 1;
      if (v6 + 1 >= v2)
      {
        break;
      }

      if (v6 < -1 || (v17 = v41, v41 <= v16))
      {
        v18 = 0;
      }

      else if (v38)
      {
        v18 = v38[v40 + 1 + v6];
      }

      else if (v39)
      {
        v18 = v39[v40 + 1 + v6];
      }

      else
      {
        if (v43 <= v16 || (v19 = v42, v42 > v16))
        {
          v20 = v6 - 3;
          if (v16 < 4)
          {
            v20 = 0;
          }

          if (v20 + 64 < v41)
          {
            v17 = v20 + 64;
          }

          v42 = v20;
          v43 = v17;
          v46.length = v17 - v20;
          v46.location = v40 + v20;
          CFStringGetCharacters(v37, v46, buffer);
          v19 = v42;
        }

        v18 = buffer[v6 + 1 - v19];
      }

      v28 = v18;
      if (CFCharacterSetIsCharacterMember(mf_encodedIMAPMailboxName_passThroughSet, v18))
      {
        break;
      }

      v15 = v28;
      ++v6;
    }

    while (v28 != 38);
    [v5 appendBytes:"&" length:1];
    mf_encodeModifiedBase64 = [v14 mf_encodeModifiedBase64];
    [v5 appendData:mf_encodeModifiedBase64];

    [v5 appendBytes:"-" length:1];
    v6 = v16;
  }

  while (v6 < v2);
  if (v5)
  {
    v24 = CFStringCreateWithBytes(0, [v5 bytes], objc_msgSend(v5, "length"), 0x600u, 0);

    selfCopy = v24;
  }

LABEL_60:

  return selfCopy;
}

- (__CFString)mf_decodedIMAPMailboxName
{
  selfCopy = self;
  v2 = [(__CFString *)selfCopy length];
  v3 = [(__CFString *)selfCopy rangeOfString:@"-" options:0 range:0, v2];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_29;
  }

  v5 = v3;
  v6 = v4;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [(__CFString *)selfCopy rangeOfString:@"&" options:4 range:v8, v5 - v8];
    if (!v10)
    {
LABEL_10:
      if (v7 && v5 + v6 > v8)
      {
        v16 = [v7 length];
        [v7 setLength:v16 + 2 * (v5 + v6 - v8)];
        mutableBytes = [v7 mutableBytes];
        v35.location = v8;
        v35.length = v5 + v6 - v8;
        CFStringGetCharacters(selfCopy, v35, (mutableBytes + v16));
      }

      goto LABEL_23;
    }

    v11 = v9;
    v12 = v5 - (v9 + v10);
    if (v5 == v9 + v10)
    {
      v33 = 38;
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v33 length:2];
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MutableCopy = mf_decodedIMAPMailboxName_invalidModifiedBase64Set;
      if (!mf_decodedIMAPMailboxName_invalidModifiedBase64Set)
      {
        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
        CFCharacterSetAddCharactersInString(MutableCopy, @"+,");
        CFCharacterSetInvert(MutableCopy);
        mf_decodedIMAPMailboxName_invalidModifiedBase64Set = MutableCopy;
      }

      v39.location = v11 + 1;
      v39.length = v12;
      if (CFStringFindCharacterFromSet(selfCopy, MutableCopy, v39, 0, 0))
      {
        goto LABEL_10;
      }

      v18 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength:v12];
      [v18 mutableBytes];
      MFStringGetBytes();
      mf_decodeModifiedBase64 = [v18 mf_decodeModifiedBase64];
      v13 = [mf_decodeModifiedBase64 mutableCopyWithZone:0];

      mutableBytes2 = [v13 mutableBytes];
      v21 = [v13 length];
      if ((v21 & 0xFFFFFFFFFFFFFFFELL) >= 1)
      {
        v22 = &mutableBytes2[v21 & 0xFFFFFFFFFFFFFFFELL];
        do
        {
          *mutableBytes2 = bswap32(*mutableBytes2) >> 16;
          mutableBytes2 += 2;
        }

        while (mutableBytes2 < v22);
      }

      if (!v13)
      {
        goto LABEL_10;
      }
    }

    if (!v7)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:{2 * -[__CFString length](selfCopy, "length")}];
      v7 = v23;
      if (v8)
      {
        [v23 setLength:2 * v8];
        mutableBytes3 = [v7 mutableBytes];
        v36.location = 0;
        v36.length = v8;
        CFStringGetCharacters(selfCopy, v36, mutableBytes3);
      }
    }

    if (v11 > v8)
    {
      v25 = [v7 length];
      [v7 setLength:v25 + 2 * (v11 - v8)];
      mutableBytes4 = [v7 mutableBytes];
      v37.location = v8;
      v37.length = v11 - v8;
      CFStringGetCharacters(selfCopy, v37, (mutableBytes4 + v25));
    }

    [v7 appendData:v13];

LABEL_23:
    v27 = v8 + v2;
    v8 = v5 + v6;
    v2 = v27 - (v5 + v6);
    v5 = [(__CFString *)selfCopy rangeOfString:@"-" options:0 range:v5 + v6, v2];
    v6 = v28;
  }

  while (v28);
  if (v7)
  {
    if (v2)
    {
      v29 = [v7 length];
      [v7 setLength:v29 + 2 * v2];
      mutableBytes5 = [v7 mutableBytes];
      v38.location = v8;
      v38.length = v2;
      CFStringGetCharacters(selfCopy, v38, (mutableBytes5 + v29));
    }

    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length") >> 1}];

    selfCopy = v31;
  }

LABEL_29:

  return selfCopy;
}

@end