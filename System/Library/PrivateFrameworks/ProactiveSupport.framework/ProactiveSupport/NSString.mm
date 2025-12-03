@interface NSString
+ (_PASUTF8String)_pas_stringWithDataNoCopy:(uint64_t)copy encoding:(uint64_t)encoding nullTerminated:(Boolean)terminated isExternalRepresentation:(unint64_t)representation utf8StringThreshold:;
+ (__CFString)_pas_foundationStringNoCopyWithBufferStart:(unint64_t)start bufferEnd:(unint64_t)end encoding:(int)encoding nullTerminated:(Boolean)terminated isExternalRepresentation:(const __CFAllocator *)representation allocator:;
@end

@implementation NSString

void __60__NSString__PASDistilledString___pas_distilledStringClasses__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v2 initWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  v8 = _pas_distilledStringClasses__pasExprOnceResult;
  _pas_distilledStringClasses__pasExprOnceResult = v7;

  objc_autoreleasePoolPop(v0);
}

+ (_PASUTF8String)_pas_stringWithDataNoCopy:(uint64_t)copy encoding:(uint64_t)encoding nullTerminated:(Boolean)terminated isExternalRepresentation:(unint64_t)representation utf8StringThreshold:
{
  v10 = a2;
  objc_opt_self();
  if (!v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"data must be nonnull"];
  }

  _pas_dataWithNonnullBytes = [v10 _pas_dataWithNonnullBytes];

  v12 = [_pas_dataWithNonnullBytes length];
  bytes = [_pas_dataWithNonnullBytes bytes];
  v14 = bytes;
  if (encoding && !v12)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nullTerminated is true but the buffer is zero-length"];
    goto LABEL_28;
  }

  if (copy != 4 || !v12 || (copy = 4, v12 < representation) || HIDWORD(v12))
  {
LABEL_28:
    v27 = _pas_dataWithNonnullBytes;
    v28 = objc_opt_self();
    if (v14)
    {
      if (v27)
      {
LABEL_30:
        context.version = 0;
        v29 = v27;
        context.info = v29;
        memset(&context.retain, 0, 24);
        context.allocate = cfAllocateAlwaysFailing_1710;
        context.reallocate = 0;
        context.deallocate = cfDeallocateReleaseBackingObject;
        context.preferredSize = 0;
        v30 = CFAllocatorCreate(0, &context);
        if (v30)
        {
          v31 = &v14[v12];
          v32 = v28;
          v33 = v14;
          copyCopy2 = copy;
          encodingCopy2 = encoding;
          terminatedCopy2 = terminated;
          v37 = v30;
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_backedByObject_ object:v28 file:@"NSString+_PASAdditions.m" lineNumber:922 description:{@"Invalid parameter not satisfying: %@", @"deallocator"}];

          v31 = &v14[v12];
          v32 = v28;
          v33 = v14;
          copyCopy2 = copy;
          encodingCopy2 = encoding;
          terminatedCopy2 = terminated;
          v37 = 0;
        }

        v38 = [(NSString *)v32 _pas_foundationStringNoCopyWithBufferStart:v33 bufferEnd:v31 encoding:copyCopy2 nullTerminated:encodingCopy2 isExternalRepresentation:terminatedCopy2 allocator:v37];
        CFRelease(v30);

        goto LABEL_33;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_backedByObject_ object:v28 file:@"NSString+_PASAdditions.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];

      if (v27)
      {
        goto LABEL_30;
      }
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_backedByObject_ object:v28 file:@"NSString+_PASAdditions.m" lineNumber:915 description:{@"Invalid parameter not satisfying: %@", @"backingObject"}];

    goto LABEL_30;
  }

  v15 = v12;
  v16 = bytes;
  do
  {
    v17 = v16;
    v18 = v15;
    v19 = v15 >= 0x20;
    v15 -= 32;
    if (!v19)
    {
      break;
    }

    v20 = vorrq_s8(*v16, v16[1]);
    v16 += 2;
  }

  while ((*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) & 0x8080808080808080) == 0);
  do
  {
    v21 = v17;
    v22 = v18;
    v19 = v18 >= 0x10;
    v18 -= 16;
    if (!v19)
    {
      break;
    }

    ++v17;
  }

  while (((v21[1] | *v21) & 0x8080808080808080) == 0);
  do
  {
    v23 = v21;
    v24 = v22;
    v19 = v22 >= 8;
    v22 -= 8;
    if (!v19)
    {
      break;
    }

    ++v21;
  }

  while ((*v23 & 0x8080808080808080) == 0);
  while (1)
  {
    v26 = v24 - 4;
    if (v24 < 4)
    {
      break;
    }

    v25 = *v23;
    v23 = (v23 + 4);
    v24 -= 4;
    if ((v25 & 0x80808080) != 0)
    {
      v24 = v26 + 4;
      v23 = (v23 - 4);
      goto LABEL_25;
    }
  }

  if (!v24)
  {
    copy = 1;
    goto LABEL_28;
  }

LABEL_25:
  copy = 1;
  while ((*v23 & 0x80000000) == 0)
  {
    v23 = (v23 + 1);
    if (!--v24)
    {
      goto LABEL_28;
    }
  }

  if (encoding && *(bytes + v12 - 1))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nullTerminated is true but the buffer is not null-terminated"];
  }

  v38 = [[_PASUTF8String alloc] initWithUTF8Data:_pas_dataWithNonnullBytes asciiPrefixLength:(v23 - v14) nullTerminated:encoding];
LABEL_33:

  return v38;
}

+ (__CFString)_pas_foundationStringNoCopyWithBufferStart:(unint64_t)start bufferEnd:(unint64_t)end encoding:(int)encoding nullTerminated:(Boolean)terminated isExternalRepresentation:(const __CFAllocator *)representation allocator:
{
  v13 = objc_opt_self();
  if (a2)
  {
    if (representation)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_allocator_ object:v13 file:@"NSString+_PASAdditions.m" lineNumber:872 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];

    if (representation)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_allocator_ object:v13 file:@"NSString+_PASAdditions.m" lineNumber:873 description:{@"Invalid parameter not satisfying: %@", @"deallocator"}];

LABEL_3:
  v14 = CFStringConvertNSStringEncodingToEncoding(end);
  if (encoding)
  {
    if (!start)
    {
      goto LABEL_8;
    }

    if (start <= a2 || *(start - 1))
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nullTerminated is true but the buffer is not null-terminated"];
    }

    if (strnlen(a2, start + ~a2) == start + ~a2)
    {
LABEL_8:
      v15 = CFStringCreateWithCStringNoCopy(0, a2, v14, representation);
      goto LABEL_13;
    }

    --start;
  }

  v16 = start >= a2;
  v17 = start - a2;
  if (!v16)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_allocator_ object:v13 file:@"NSString+_PASAdditions.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"bufferEnd >= buffer"}];
  }

  v15 = CFStringCreateWithBytesNoCopy(0, a2, v17, v14, terminated, representation);
LABEL_13:

  return v15;
}

id __65__NSString__PASAdditions___pas_proxyArrayOfSubstringsWithRanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = [v3 rangeValue];
  v6 = [v2 substringWithRange:{v4, v5}];

  return v6;
}

@end