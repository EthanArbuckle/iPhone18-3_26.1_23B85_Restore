@interface _UINewCGImageDecompressor
+ (CMPhotoDecompressionSession)_sharedDecompressionSession;
- (CGImage)waitForImageRef;
- (_UINewCGImageDecompressor)init;
- (id)initWithSourceImage:(void *)a3 completionQueue:;
- (void)_finishDecompressingWithImage:(CGImage *)a3 error:(id)a4;
- (void)dealloc;
- (void)decompressAsync:(uint64_t)a1;
@end

@implementation _UINewCGImageDecompressor

- (CGImage)waitForImageRef
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (*&self->_flags)
  {
    if ((*&self->_flags & 2) == 0)
    {
      replyQueue = self->_replyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44___UINewCGImageDecompressor_waitForImageRef__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(replyQueue, block);
      v9 = UIDecompressorLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Async decode in progress; blocking sync decode on semaphore", buf, 2u);
      }

      dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v3 = UIDecompressorLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "Sync decode beginning", buf, 2u);
    }

    *&self->_flags |= 1u;
    ImageForIndex = CMPhotoDecompressionContainerCreateImageForIndex();
    v5 = UIDecompressorLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (ImageForIndex)
    {
      if (v6)
      {
        *buf = 67109120;
        LODWORD(v13) = ImageForIndex;
        _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Sync decode failed with error=(OSStatus) %d", buf, 8u);
      }

      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:ImageForIndex userInfo:0];
      [(_UINewCGImageDecompressor *)self _finishDecompressingWithImage:0 error:v7];
    }

    else
    {
      if (v6)
      {
        *buf = 134217984;
        v13 = 0;
        _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Sync decode finished with image=%p", buf, 0xCu);
      }

      [(_UINewCGImageDecompressor *)self _finishDecompressingWithImage:0 error:0];
      CGImageRelease(0);
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if ((*&self->_flags & 4) != 0)
  {
    return 0;
  }

  else
  {
    return self->_imageOrError;
  }
}

+ (CMPhotoDecompressionSession)_sharedDecompressionSession
{
  if (_MergedGlobals_1_14 != -1)
  {
    dispatch_once(&_MergedGlobals_1_14, &__block_literal_global_329);
  }

  return qword_1ED4992F0;
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
  }

  v4.receiver = self;
  v4.super_class = _UINewCGImageDecompressor;
  [(_UINewCGImageDecompressor *)&v4 dealloc];
}

- (_UINewCGImageDecompressor)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Must call designated intializer" userInfo:0];
  objc_exception_throw(v2);
}

- (id)initWithSourceImage:(void *)a3 completionQueue:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    if (!a2)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:sel_initWithSourceImage_completionQueue_ object:a1 file:@"_UINewCGImageDecompressor.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"imageRef != NULL"}];
    }

    v17.receiver = a1;
    v17.super_class = _UINewCGImageDecompressor;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v6 = CGImageCopySourceData();
      if (!v6)
      {
LABEL_13:

        a1 = 0;
        goto LABEL_14;
      }

      v7 = v6;
      if (!+[_UINewCGImageDecompressor _sharedDecompressionSession])
      {
        CFRelease(v7);
        goto LABEL_13;
      }

      Container = CMPhotoDecompressionSessionCreateContainer();
      CFRelease(v7);
      if (Container <= -16994)
      {
        if (Container == -17103 || Container == -17101)
        {
LABEL_9:
          v9 = UIDecompressorLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            *buf = 134349056;
            v19 = Container;
            _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Internal error %{public}ld creating decompression container", buf, 0xCu);
          }

LABEL_11:

          goto LABEL_13;
        }
      }

      else
      {
        if ((Container + 16993) < 4)
        {
          goto LABEL_9;
        }

        if (!Container)
        {
          v11 = dispatch_queue_attr_make_initially_inactive(0);
          v12 = dispatch_queue_create_with_target_V2("com.apple.UIKit.decompressor-reply", v11, v5);
          v13 = *(a1 + 3);
          *(a1 + 3) = v12;

          v14 = dispatch_semaphore_create(0);
          v15 = *(a1 + 4);
          *(a1 + 4) = v14;

          *(a1 + 10) = 0;
          goto LABEL_14;
        }
      }

      v9 = UIDecompressorLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v19 = Container;
        _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Error %{public}ld decompressing image -- possibly corrupt", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

LABEL_14:

  return a1;
}

- (void)_finishDecompressingWithImage:(CGImage *)a3 error:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a3)
  {
    v9 = UIDecompressorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134217984;
      v16 = a3;
      _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Decode finished with image=%p", &v15, 0xCu);
    }

    v10 = CGImageRetain(a3);
    imageOrError = self->_imageOrError;
    self->_imageOrError = v10;
  }

  else if (v7)
  {
    v12 = UIDecompressorLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v8 domain];
      v15 = 138412546;
      v16 = v14;
      v17 = 1024;
      v18 = [v8 code];
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "Decode failed with error.domain=%@ error.code=%d", &v15, 0x12u);
    }

    objc_storeStrong(&self->_imageOrError, a4);
    *&self->_flags |= 4u;
  }

  container = self->_container;
  if (container)
  {
    CFRelease(container);
    self->_container = 0;
  }

  *&self->_flags |= 2u;
  dispatch_activate(self->_replyQueue);
}

- (void)decompressAsync:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = os_unfair_lock_trylock((a1 + 40));
    if (!v4 || (*(a1 + 44) & 1) != 0)
    {
      v13 = UIDecompressorLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEBUG, "Async decode lost race, enqueueing deferred reply", buf, 2u);
      }

      v14 = *(a1 + 24);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __45___UINewCGImageDecompressor_decompressAsync___block_invoke;
      v25[3] = &unk_1E70F37C0;
      v25[4] = a1;
      v6 = &v26;
      v26 = v3;
      dispatch_async(v14, v25);
      if (v4)
      {
        os_unfair_lock_unlock((a1 + 40));
      }
    }

    else
    {
      v5 = UIDecompressorLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Async decode beginning", buf, 2u);
      }

      *(a1 + 44) |= 1u;
      os_unfair_lock_unlock((a1 + 40));
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __45___UINewCGImageDecompressor_decompressAsync___block_invoke_18;
      v22 = &unk_1E710D7C8;
      v23 = a1;
      v6 = &v24;
      v7 = v3;
      v24 = v7;
      v8 = CMPhotoDecompressionContainerDecodeImageForIndexAsync();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
        [a1 _finishDecompressingWithImage:0 error:v10];
        v11 = *(a1 + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45___UINewCGImageDecompressor_decompressAsync___block_invoke_21;
        block[3] = &unk_1E710D7F0;
        v18 = v9;
        v16 = v10;
        v17 = v7;
        v12 = v10;
        dispatch_async(v11, block);
      }
    }
  }
}

@end