@interface _UIOldCGImageDecompressor
+ (uint64_t)flushCaches;
- (BOOL)isEqual:(id)a3;
- (CGImage)waitForImageRef;
- (id)initWithData:(void *)a3 immediateLoadWithMaxSize:(int)a4 renderingIntent:(double)a5 cache:(double)a6;
- (void)_decompressEagerly:(uint64_t)a1;
- (void)_waitForMetadata;
- (void)dealloc;
@end

@implementation _UIOldCGImageDecompressor

+ (uint64_t)flushCaches
{
  objc_opt_self();
  result = atomic_load_explicit(&jpegDecodeSessionRef, memory_order_acquire);
  if (result)
  {

    return MEMORY[0x1EEDF1420]();
  }

  return result;
}

- (id)initWithData:(void *)a3 immediateLoadWithMaxSize:(int)a4 renderingIntent:(double)a5 cache:(double)a6
{
  v12 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = _UIOldCGImageDecompressor;
    v13 = objc_msgSendSuper2(&v21, sel_init);
    v14 = v13;
    if (v13)
    {
      *(v13 + 2) = a5;
      *(v13 + 3) = a6;
      v13[5] = a3;
      objc_storeStrong(v13 + 1, a2);
      if (a4)
      {
        v15 = 32;
      }

      else
      {
        v15 = 0;
      }

      *(v14 + 64) = v14[8] & 0xDF | v15;
      v14[6] = 0;
      *(v14 + 14) = 0;
      *(v14 + 15) = 0;
    }

    if (qword_1ED49A410 != -1)
    {
      dispatch_once(&qword_1ED49A410, &__block_literal_global_690);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89___UIOldCGImageDecompressor_initWithData_immediateLoadWithMaxSize_renderingIntent_cache___block_invoke_2;
    block[3] = &unk_1E70F3590;
    v16 = v14;
    v20 = v16;
    v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(_MergedGlobals_3_23, v17);
    a1 = v16;
  }

  return a1;
}

- (void)_decompressEagerly:(uint64_t)a1
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = (a1 + 60);
    if (a2)
    {
      if (!os_unfair_lock_trylock(v3))
      {
        return;
      }
    }

    else
    {
      os_unfair_lock_lock(v3);
    }

    if ((*(a1 + 64) & 0x10) == 0)
    {
      objc_initWeak(&location, a1);
      v4 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48___UIOldCGImageDecompressor__decompressEagerly___block_invoke;
      block[3] = &unk_1E70F5A28;
      objc_copyWeak(&v59, &location);
      dispatch_async(v4, block);

      if (_decompressEagerly__oneSessionRefToken != -1)
      {
        dispatch_once(&_decompressEagerly__oneSessionRefToken, &__block_literal_global_16_9);
      }

      if (atomic_load(&jpegDecodeSessionRef))
      {
        Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v8 = *MEMORY[0x1E695F060];
        v7 = *(MEMORY[0x1E695F060] + 8);
        if (*(a1 + 16) != *MEMORY[0x1E695F060] || *(a1 + 24) != v7)
        {
          v9 = *(a1 + 8);
          v61 = @"kCGImageSourceSkipMetadata";
          valuePtr[0] = *MEMORY[0x1E695E4D0];
          v10 = MEMORY[0x1E695DF20];
          v11 = v9;
          v12 = [v10 dictionaryWithObjects:valuePtr forKeys:&v61 count:1];
          v13 = CGImageSourceCreateWithData(v11, 0);

          v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, v12);
          v15 = v14;
          if (v14)
          {
            Value = CFDictionaryGetValue(v14, *MEMORY[0x1E696DED8]);
            v17 = CFDictionaryGetValue(v15, *MEMORY[0x1E696DEC8]);
            [Value floatValue];
            v19 = v18;
            [v17 floatValue];
            v21 = v20;
            CFRelease(v15);
            CFRelease(v13);
            v22 = v19;
            v23 = v21;
          }

          else
          {
            CFRelease(v13);
            v23 = v7;
            v22 = v8;
          }

          if (v22 != v8 || v23 != v7)
          {
            valuePtr[0] = *(a1 + 16 + 8 * (v22 <= v23));
            v24 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
            CFDictionaryAddValue(Mutable, *MEMORY[0x1E6991B50], v24);
            CFRelease(v24);
          }
        }

        if (*(a1 + 40))
        {
          v25 = 1111970369;
        }

        else
        {
          v25 = 875704422;
        }

        LODWORD(valuePtr[0]) = v25;
        v26 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6991B58], v26);
        CFRelease(v26);
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6991B48], *MEMORY[0x1E695E4D0]);
        v27 = dispatch_semaphore_create(0);
        atomic_load(&jpegDecodeSessionRef);
        v52 = MEMORY[0x1E69E9820];
        v53 = 3221225472;
        v54 = __48___UIOldCGImageDecompressor__decompressEagerly___block_invoke_3;
        v55 = &unk_1E7129E88;
        v56 = a1;
        v57 = v27;
        *(a1 + 48) = CMPhotoJPEGDecodeSessionDecodeDataToCGImageAsynchronously();
        dispatch_semaphore_wait(v57, 0xFFFFFFFFFFFFFFFFLL);
        CFRelease(Mutable);
      }

      if ((*(a1 + 64) & 0x10) != 0)
      {
        goto LABEL_39;
      }

      os_unfair_lock_assert_owner((a1 + 60));
      v28 = *(a1 + 8);
      LOBYTE(valuePtr[0]) = 0;
      v29 = *MEMORY[0x1E6982E58];
      v30 = v28;
      v31 = [v29 identifier];
      TypeWithData = CGImageSourceGetTypeWithData();

      if (LOBYTE(valuePtr[0]) == 1 || ([MEMORY[0x1E6982C40] typeWithIdentifier:TypeWithData], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "conformsToType:", v29), v33, (v34 & 1) != 0))
      {
        v35 = _UIImageRefFromData(*(a1 + 8), 0, 0, 0);
        *(a1 + 32) = v35;
        if (v35)
        {
LABEL_38:
          *(a1 + 64) |= 0x10u;
LABEL_39:
          os_unfair_lock_unlock((a1 + 60));
          objc_destroyWeak(&v59);
          objc_destroyWeak(&location);
          return;
        }

        v36 = MEMORY[0x1E696AEC0];
        v37 = a1;
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = [v36 stringWithFormat:@"<%@: %p>", v39, v37];

        v41 = v37[1];
        if (v41)
        {
          v42 = MEMORY[0x1E696AEC0];
          v43 = v41;
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = [v42 stringWithFormat:@"<%@: %p>", v45, v43];
        }

        else
        {
          v46 = @"(nil)";
        }

        NSLog(&cfstr_UnableToCreate_2.isa, v40, v46, v52, v53, v54, v55, v56);
      }

      else
      {
        v47 = *(a1 + 8);
        if (v47)
        {
          v48 = MEMORY[0x1E696AEC0];
          v49 = v47;
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v40 = [v48 stringWithFormat:@"<%@: %p>", v51, v49];
        }

        else
        {
          v40 = @"(nil)";
        }

        NSLog(&cfstr_InvalidJpegDat.isa, v40);
      }

      goto LABEL_38;
    }

    os_unfair_lock_unlock((a1 + 60));
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = *(v5 + 1) == self->_imageData && *(v5 + 5) == self->_renderingIntent && ((*&self->_decompressorFlags ^ *(v5 + 64)) & 0x20) == 0 && v5[3] == self->_maxSize.height && v5[2] == self->_maxSize.width;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->_imageRef);
  v3.receiver = self;
  v3.super_class = _UIOldCGImageDecompressor;
  [(_UIOldCGImageDecompressor *)&v3 dealloc];
}

- (void)_waitForMetadata
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 56));
    if (*(a1 + 64))
    {

      os_unfair_lock_unlock((a1 + 56));
    }

    else
    {
      if ((*(a1 + 64) & 0x20) != 0)
      {
        v3 = 0;
      }

      else
      {
        v2 = *MEMORY[0x1E696E0E8];
        v8[0] = *MEMORY[0x1E696E0A8];
        v8[1] = v2;
        v9[0] = MEMORY[0x1E695E110];
        v9[1] = MEMORY[0x1E695E118];
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
      }

      v4 = CGImageSourceCreateWithData(*(a1 + 8), v3);
      v7 = 0;
      if (v4)
      {
        v5 = v4;
        _UIImageGetOrientationAndScale(v4, 0, v3, &v7, 0);
        CFRelease(v5);
        v6 = 2 * (v7 & 7);
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 64) = *(a1 + 64) & 0xF1 | v6;
      *(a1 + 64) |= 1u;

      os_unfair_lock_unlock((a1 + 56));
    }
  }
}

- (CGImage)waitForImageRef
{
  [(_UIOldCGImageDecompressor *)self _decompressEagerly:?];
  [(_UIOldCGImageDecompressor *)self _waitForMetadata];
  result = self->_imageRef;
  if (result)
  {
    v4 = CGImageRetain(result);

    return CFAutorelease(v4);
  }

  return result;
}

@end