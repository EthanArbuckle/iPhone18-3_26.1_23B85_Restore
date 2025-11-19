@interface NSString
+ (_PASUTF8String)_pas_stringWithDataNoCopy:(uint64_t)a3 encoding:(uint64_t)a4 nullTerminated:(Boolean)a5 isExternalRepresentation:(unint64_t)a6 utf8StringThreshold:;
+ (__CFString)_pas_foundationStringNoCopyWithBufferStart:(unint64_t)a3 bufferEnd:(unint64_t)a4 encoding:(int)a5 nullTerminated:(Boolean)a6 isExternalRepresentation:(const __CFAllocator *)a7 allocator:;
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

+ (_PASUTF8String)_pas_stringWithDataNoCopy:(uint64_t)a3 encoding:(uint64_t)a4 nullTerminated:(Boolean)a5 isExternalRepresentation:(unint64_t)a6 utf8StringThreshold:
{
  v10 = a2;
  objc_opt_self();
  if (!v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"data must be nonnull"];
  }

  v11 = [v10 _pas_dataWithNonnullBytes];

  v12 = [v11 length];
  v13 = [v11 bytes];
  v14 = v13;
  if (a4 && !v12)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nullTerminated is true but the buffer is zero-length"];
    goto LABEL_28;
  }

  if (a3 != 4 || !v12 || (a3 = 4, v12 < a6) || HIDWORD(v12))
  {
LABEL_28:
    v27 = v11;
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
          v34 = a3;
          v35 = a4;
          v36 = a5;
          v37 = v30;
        }

        else
        {
          v42 = [MEMORY[0x1E696AAA8] currentHandler];
          [v42 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_backedByObject_ object:v28 file:@"NSString+_PASAdditions.m" lineNumber:922 description:{@"Invalid parameter not satisfying: %@", @"deallocator"}];

          v31 = &v14[v12];
          v32 = v28;
          v33 = v14;
          v34 = a3;
          v35 = a4;
          v36 = a5;
          v37 = 0;
        }

        v38 = [(NSString *)v32 _pas_foundationStringNoCopyWithBufferStart:v33 bufferEnd:v31 encoding:v34 nullTerminated:v35 isExternalRepresentation:v36 allocator:v37];
        CFRelease(v30);

        goto LABEL_33;
      }
    }

    else
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      [v40 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_backedByObject_ object:v28 file:@"NSString+_PASAdditions.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];

      if (v27)
      {
        goto LABEL_30;
      }
    }

    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_backedByObject_ object:v28 file:@"NSString+_PASAdditions.m" lineNumber:915 description:{@"Invalid parameter not satisfying: %@", @"backingObject"}];

    goto LABEL_30;
  }

  v15 = v12;
  v16 = v13;
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
    a3 = 1;
    goto LABEL_28;
  }

LABEL_25:
  a3 = 1;
  while ((*v23 & 0x80000000) == 0)
  {
    v23 = (v23 + 1);
    if (!--v24)
    {
      goto LABEL_28;
    }
  }

  if (a4 && *(v13 + v12 - 1))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nullTerminated is true but the buffer is not null-terminated"];
  }

  v38 = [[_PASUTF8String alloc] initWithUTF8Data:v11 asciiPrefixLength:(v23 - v14) nullTerminated:a4];
LABEL_33:

  return v38;
}

+ (__CFString)_pas_foundationStringNoCopyWithBufferStart:(unint64_t)a3 bufferEnd:(unint64_t)a4 encoding:(int)a5 nullTerminated:(Boolean)a6 isExternalRepresentation:(const __CFAllocator *)a7 allocator:
{
  v13 = objc_opt_self();
  if (a2)
  {
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_allocator_ object:v13 file:@"NSString+_PASAdditions.m" lineNumber:872 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];

    if (a7)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_allocator_ object:v13 file:@"NSString+_PASAdditions.m" lineNumber:873 description:{@"Invalid parameter not satisfying: %@", @"deallocator"}];

LABEL_3:
  v14 = CFStringConvertNSStringEncodingToEncoding(a4);
  if (a5)
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    if (a3 <= a2 || *(a3 - 1))
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nullTerminated is true but the buffer is not null-terminated"];
    }

    if (strnlen(a2, a3 + ~a2) == a3 + ~a2)
    {
LABEL_8:
      v15 = CFStringCreateWithCStringNoCopy(0, a2, v14, a7);
      goto LABEL_13;
    }

    --a3;
  }

  v16 = a3 >= a2;
  v17 = a3 - a2;
  if (!v16)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:sel__pas_foundationStringNoCopyWithBufferStart_bufferEnd_encoding_nullTerminated_isExternalRepresentation_allocator_ object:v13 file:@"NSString+_PASAdditions.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"bufferEnd >= buffer"}];
  }

  v15 = CFStringCreateWithBytesNoCopy(0, a2, v17, v14, a6, a7);
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