@interface _PASUTF8String
- (BOOL)canBeConvertedToEncoding:(unint64_t)a3;
- (_PASUTF8String)initWithUTF8Data:(id)a3 asciiPrefixLength:(unsigned int)a4 nullTerminated:(BOOL)a5;
- (const)UTF8String;
- (const)_pas_overrideFastUTF8StringPtrWithOptions:(unint64_t)a3 encodedLength:(unint64_t *)a4;
- (const)cStringUsingEncoding:(unint64_t)a3;
- (id)_pas_overrideStringBackedByUTF8CString;
- (id)dataUsingEncoding:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (uint64_t)_validateRange:(uint64_t)a3;
- (unint64_t)lengthOfBytesUsingEncoding:(unint64_t)a3;
- (unint64_t)maximumLengthOfBytesUsingEncoding:(unint64_t)a3;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation _PASUTF8String

- (const)_pas_overrideFastUTF8StringPtrWithOptions:(unint64_t)a3 encodedLength:(unint64_t *)a4
{
  if ((a3 & 1) != 0 && !self->_nullTerminated)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = [(_PASUTF8String *)self lengthOfBytesUsingEncoding:4];
  }

  return self->_buffer;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = self->_bufferEnd - self->_buffer;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  buffer = self->_buffer;

  return [v5 initWithBytes:buffer length:v4 encoding:4];
}

- (const)cStringUsingEncoding:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  if (a3 == 4)
  {
    v3 = self;

    return [(_PASUTF8String *)v3 UTF8String];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _PASUTF8String;
    return [(_PASUTF8String *)&v5 cStringUsingEncoding:?];
  }
}

- (id)_pas_overrideStringBackedByUTF8CString
{
  if (self->_nullTerminated)
  {
    v3 = self;
  }

  else
  {
    MutableCopy = CFDataCreateMutableCopy(0, [(NSData *)self->_backingData length]+ 1, self->_backingData);
    CFDataAppendBytes(MutableCopy, "", 1);
    v3 = [[_PASUTF8String alloc] initWithUTF8Data:MutableCopy asciiPrefixLength:self->_asciiPrefixLength nullTerminated:1];
  }

  return v3;
}

- (const)UTF8String
{
  if (self->_nullTerminated)
  {
    return self->_buffer;
  }

  MutableCopy = CFDataCreateMutableCopy(0, [(NSData *)self->_backingData length]+ 1, self->_backingData);
  CFDataAppendBytes(MutableCopy, "", 1);
  CFAutorelease(MutableCopy);

  return CFDataGetMutableBytePtr(MutableCopy);
}

- (BOOL)canBeConvertedToEncoding:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _PASUTF8String;
  return [(_PASUTF8String *)&v6 canBeConvertedToEncoding:?];
}

- (unint64_t)maximumLengthOfBytesUsingEncoding:(unint64_t)a3
{
  if (a3 == 4)
  {

    return [(_PASUTF8String *)self lengthOfBytesUsingEncoding:?];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = _PASUTF8String;
    return [(_PASUTF8String *)&v6 maximumLengthOfBytesUsingEncoding:?];
  }
}

- (unint64_t)lengthOfBytesUsingEncoding:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  if (a3 == 4)
  {
    return self->_bufferEnd - self->_buffer;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _PASUTF8String;
  return [(_PASUTF8String *)&v6 lengthOfBytesUsingEncoding:?];
}

- (id)dataUsingEncoding:(unint64_t)a3
{
  if (a3 == 4)
  {
    v5 = self->_backingData;
    v6 = v5;
    if (self->_nullTerminated)
    {
      v7 = self->_bufferEnd - self->_buffer;
      context.version = 0;
      context.info = v5;
      memset(&context.retain, 0, 24);
      context.allocate = cfAllocateAlwaysFailing_1710;
      context.reallocate = 0;
      context.deallocate = cfDeallocateReleaseBackingObject;
      context.preferredSize = 0;
      v8 = CFAllocatorCreate(0, &context);
      if (!v8)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"NSString+_PASAdditions.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"deallocator"}];
      }

      v9 = CFDataCreateWithBytesNoCopy(0, self->_buffer, v7, v8);
      if (!v9)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"NSString+_PASAdditions.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"cfData"}];
      }

      CFRelease(v8);
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _PASUTF8String;
    v9 = [(_PASUTF8String *)&v13 dataUsingEncoding:?];
  }

  return v9;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(_PASUTF8String *)self _validateRange:a4.length];
  if (length)
  {
    if (a3)
    {
      v24 = length - 1;
      [(_PASUTF8String *)self getCharacters:a3 + 1 range:location, v24];
      memmove(a3, a3 + 1, 2 * v24);
      a3[v24] = [(_PASUTF8String *)self characterAtIndex:v24];
    }

    else
    {
      asciiPrefixLength = self->_asciiPrefixLength;
      if (location >= asciiPrefixLength || (LODWORD(v9) = location + length, location + length <= location))
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = 0;
        if (asciiPrefixLength >= v9)
        {
          v9 = v9;
        }

        else
        {
          v9 = asciiPrefixLength;
        }

        buffer = self->_buffer;
        v12 = location;
        do
        {
          a3[v10++] = buffer[v12++];
        }

        while (v12 < v9);
      }

      if (length != v10 && length > v10)
      {
        v13 = &self->_buffer[asciiPrefixLength];
        v14 = location - asciiPrefixLength + v10;
        v15 = v14 & 0x3F;
        v16 = v14 >> 6;
        do
        {
          v17 = self->_chunks[v16];
          v25 = v17;
          if ((v17 & 0x40) != 0)
          {
            i = v10;
            if (length > v10)
            {
              v22 = v15;
              v23 = &v13[v17 >> 8];
              do
              {
                a3[i] = v23[v22];
                i = (v10 + 1);
                LODWORD(v10) = v10 + 1;
                if (v22 > 0x3E)
                {
                  break;
                }

                ++v22;
              }

              while (length > i);
            }
          }

          else
          {
            if (v15)
            {
              v18 = v15;
              do
              {
                advanceCursor(v13, self->_bufferEnd, &v25);
                --v18;
              }

              while (v18);
            }

            for (i = v10; length > i; ++v15)
            {
              v20 = i;
              v21 = advanceCursor(v13, self->_bufferEnd, &v25);
              i = (v10 + 1);
              LODWORD(v10) = v10 + 1;
              a3[v20] = v21;
              if (v15 > 0x3E)
              {
                break;
              }
            }
          }

          v15 = 0;
          ++v16;
        }

        while (length > i);
      }
    }
  }
}

- (uint64_t)_validateRange:(uint64_t)a3
{
  if (result)
  {
    if (a2 + a3 > *(result + 48))
    {
      v3 = MEMORY[0x1E695DF30];
      v4 = *MEMORY[0x1E695DA20];
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Range {%tu, %tu} out of bounds; string length %u", a2, a3, *(result + 48)];
      v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
      v7 = v6;

      objc_exception_throw(v6);
    }
  }

  return result;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_asciiPrefixLength > a3)
  {
    return self->_buffer[a3];
  }

  [(_PASUTF8String *)self _validateRange:a3, 1];
  asciiPrefixLength = self->_asciiPrefixLength;
  v7 = self->_chunks[(v3 - asciiPrefixLength) >> 6];
  v10 = v7;
  v8 = (v3 - asciiPrefixLength) & 0x3F;
  v9 = &self->_buffer[asciiPrefixLength];
  if ((v7 & 0x40) != 0)
  {
    return v9[(v7 >> 8) + v8];
  }

  for (; v8; --v8)
  {
    advanceCursor(v9, self->_bufferEnd, &v10);
  }

  return advanceCursor(v9, self->_bufferEnd, &v10);
}

- (void)dealloc
{
  free(self->_chunks);
  v3.receiver = self;
  v3.super_class = _PASUTF8String;
  [(_PASUTF8String *)&v3 dealloc];
}

- (_PASUTF8String)initWithUTF8Data:(id)a3 asciiPrefixLength:(unsigned int)a4 nullTerminated:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  if (v10)
  {
    v36.receiver = self;
    v36.super_class = _PASUTF8String;
    v11 = [(_PASUTF8String *)&v36 init];
    v12 = v11;
    if (!v11)
    {
LABEL_33:
      self = v12;
      v29 = self;
      goto LABEL_34;
    }

    objc_storeStrong(&v11->_backingData, a3);
    v12->_nullTerminated = v5;
    v13 = [v10 length];
    if (HIDWORD(v13))
    {
      __assert_rtn("[_PASUTF8String initWithUTF8Data:asciiPrefixLength:nullTerminated:]", "NSString+_PASAdditions.m", 165, "asciiAndUtf8Length <= UINT32_MAX");
    }

    v14 = v13 - v5;
    v12->_asciiPrefixLength = a4;
    v15 = [(NSData *)v12->_backingData bytes];
    v12->_buffer = v15;
    if (v14 <= a4)
    {
      __assert_rtn("[_PASUTF8String initWithUTF8Data:asciiPrefixLength:nullTerminated:]", "NSString+_PASAdditions.m", 169, "asciiPrefixLength < asciiAndUtf8Length");
    }

    if ((*(v15 + a4) & 0x80000000) == 0)
    {
      __assert_rtn("[_PASUTF8String initWithUTF8Data:asciiPrefixLength:nullTerminated:]", "NSString+_PASAdditions.m", 170, "!isascii(_buffer[asciiPrefixLength])");
    }

    v16 = (v15 + v14);
    v12->_bufferEnd = (v15 + v14);
    v17 = ((v14 - a4) >> 5) + 1;
    v12->_nchunks = v17;
    v18 = malloc_type_calloc(4uLL, v17, 0xA05DB923uLL);
    if (v18)
    {
      v12->_chunks = v18;
      if (!v12->_nchunks)
      {
        v24 = a4;
        goto LABEL_32;
      }

      v34 = a2;
      v19 = 0;
      v20 = 0;
      RuneUtf8 = &v12->_buffer[a4];
LABEL_9:
      v22 = 0;
      v12->_chunks[v19] = v20;
      LOBYTE(v23) = (v20 & 0x80) == 0;
      v24 = a4;
      while (1)
      {
        v25 = RuneUtf8;
        v35 = 0;
        RuneUtf8 = getRuneUtf8(RuneUtf8, v16, &v35);
        if (!RuneUtf8)
        {
          break;
        }

        v23 = (v35 < 0x80) & v23;
        v26 = v22 + 1;
        a4 = v24 + 1;
        if (v35 - 0x10000 >= 0x100000 || (v20 & 0x80) != 0)
        {
          v20 = (v20 + ((RuneUtf8 - v25) << 8)) & 0xFFFFFF7F;
        }

        else
        {
          if (v22 == 63)
          {
            v20 |= 0x80u;
            RuneUtf8 = v25;
LABEL_19:
            if (v23)
            {
              v27 = 64;
            }

            else
            {
              v27 = 0;
            }

            v12->_chunks[v19] = (*&v12->_chunks[v19] & 0xFFFFFFBF | v27);
            ++v19;
            nchunks = v12->_nchunks;
            if (v19 >= nchunks)
            {
              v24 = a4;
              goto LABEL_26;
            }

            goto LABEL_9;
          }

          v26 = v22 + 2;
          a4 = v24 + 2;
          v20 = (v20 + ((RuneUtf8 - v25) << 8)) & 0xFFFFFF00 | v20 & 0x7F;
        }

        v22 = v26;
        v24 = a4;
        if (v26 >= 0x40)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v19) = v19 + 1;
      LODWORD(nchunks) = v12->_nchunks;
LABEL_26:
      if (v19 >= nchunks)
      {
        goto LABEL_32;
      }

      if (!v19)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:v34 object:v12 file:@"NSString+_PASAdditions.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"i > 0"}];
      }

      v30 = reallocf(v12->_chunks, 4 * v19);
      if (v30)
      {
        v12->_chunks = v30;
        v12->_nchunks = v19;
LABEL_32:
        v12->_length = v24;
        goto LABEL_33;
      }
    }

    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v33);
  }

  v29 = 0;
LABEL_34:

  return v29;
}

@end