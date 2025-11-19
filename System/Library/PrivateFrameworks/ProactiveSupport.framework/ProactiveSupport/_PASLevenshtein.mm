@interface _PASLevenshtein
+ (unint64_t)distanceBetweenStrings:(id)a3 and:(id)a4;
@end

@implementation _PASLevenshtein

+ (unint64_t)distanceBetweenStrings:(id)a3 and:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(__CFString *)v7 length];
  v10 = [(__CFString *)v8 length];
  if (!v9 || (v11 = v10) == 0)
  {
    v13 = [(__CFString *)v8 lengthOfBytesUsingEncoding:2348810496];
    v12 = ([(__CFString *)v7 lengthOfBytesUsingEncoding:2348810496]>> 2) + (v13 >> 2);
    goto LABEL_30;
  }

  if (([(__CFString *)v7 isEqualToString:v8]& 1) != 0)
  {
    v12 = 0;
    goto LABEL_30;
  }

  CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  v15 = CFStringGetCStringPtr(v8, 0x600u);
  if (CStringPtr || [(__CFString *)v7 UTF8String])
  {
    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"_PASLevenshtein.mm" lineNumber:133 description:@"First string is not valid Unicode."];

    if (v15)
    {
      goto LABEL_11;
    }
  }

  if (![(__CFString *)v8 UTF8String])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:a1 file:@"_PASLevenshtein.mm" lineNumber:134 description:@"Second string is not valid Unicode."];
  }

LABEL_11:
  if (CStringPtr || (v16 = [(__CFString *)v7 canBeConvertedToEncoding:1], v16))
  {
    if (v15 || (v16 = [(__CFString *)v8 canBeConvertedToEncoding:1], v16))
    {
      if (CStringPtr)
      {
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        CStringPtr = [(__CFString *)v7 UTF8String];
        if (!v15)
        {
LABEL_27:
          v15 = [(__CFString *)v8 UTF8String];
        }
      }

      v12 = levenshtein<char>(CStringPtr, v15, v9, v11);
      goto LABEL_30;
    }
  }

  v17 = v11;
  v18 = 4 * v11;
  if (v18 + 4 * v9 > 0x7CF)
  {
    v28 = [(__CFString *)v7 dataUsingEncoding:2348810496];
    v29 = [(__CFString *)v8 dataUsingEncoding:2348810496];
    v12 = levenshtein<unsigned int>([v28 bytes], objc_msgSend(v29, "bytes"), objc_msgSend(v28, "length") >> 2, objc_msgSend(v29, "length") >> 2);
  }

  else
  {
    v19 = v9;
    v20 = 4 * v9;
    memptr = 0;
    v40 = 0;
    if ((v20 | 3) > 0x7D0)
    {
      v23 = malloc_type_posix_memalign(&memptr, 8uLL, v20, 0x19F02D2DuLL);
      LOBYTE(v40) = 0;
      if (v23)
      {
        v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v35);
      }

      v22 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v16);
      v22 = &v38[-1] - ((v21 + 15) & 0x7FFFFFFF0);
      bzero(v22, v21);
      memptr = v22;
      LOBYTE(v40) = 1;
    }

    v24 = v40;
    memptr = 0;
    v40 = 0;
    if ((v18 | 3) > 0x7D0)
    {
      v34 = malloc_type_posix_memalign(&memptr, 8uLL, v18, 0xEA071E63uLL);
      LOBYTE(v40) = 0;
      if (v34)
      {
        v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v36);
      }

      v26 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v38[-1] - ((v25 + 15) & 0x7FFFFFFF0);
      bzero(v26, v25);
      memptr = v26;
      LOBYTE(v40) = 1;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __46___PASLevenshtein_distanceBetweenStrings_and___block_invoke;
    v38[3] = &__block_descriptor_64_e5_v8__0l;
    v38[4] = v22;
    v38[5] = v24;
    v38[6] = v26;
    v38[7] = v40;
    v27 = MEMORY[0x1AC566DD0](v38);
    memptr = 0;
    v37 = 0;
    [(__CFString *)v7 getBytes:v22 maxLength:v20 usedLength:&memptr encoding:2348810496 options:0 range:0 remainingRange:v19, 0];
    [(__CFString *)v8 getBytes:v26 maxLength:v18 usedLength:&v37 encoding:2348810496 options:0 range:0 remainingRange:v17, 0];
    v12 = levenshtein<unsigned int>(v22, v26, memptr >> 2, v37 >> 2);
    if (v27)
    {
      v27[2](v27);
    }
  }

LABEL_30:

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

@end