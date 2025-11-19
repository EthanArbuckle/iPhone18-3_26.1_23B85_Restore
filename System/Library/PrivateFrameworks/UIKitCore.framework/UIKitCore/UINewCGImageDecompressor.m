@interface UINewCGImageDecompressor
@end

@implementation UINewCGImageDecompressor

void __56___UINewCGImageDecompressor__sharedDecompressionSession__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = CMPhotoDecompressionSessionCreate();
  if (v0)
  {
    v1 = v0;
    v2 = UIDecompressorLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = 134349056;
      v4 = v1;
      _os_log_fault_impl(&dword_188A29000, v2, OS_LOG_TYPE_FAULT, "Could not create decompression session (%{public}ld)", &v3, 0xCu);
    }
  }
}

void __45___UINewCGImageDecompressor_decompressAsync___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 44);
  v4 = *(v2 + 16);
  if ((v3 & 4) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    v4 = 0;
  }

  v6 = v4;
  v7 = UIDecompressorLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 domain];
    v9 = 134218498;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    v13 = 2048;
    v14 = [v6 code];
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "Deferred async reply with image=%p error.domain=%@ error.code=%ld", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __45___UINewCGImageDecompressor_decompressAsync___block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, CGImage *a6)
{
  if (a6)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a4 userInfo:0];
  }

  [*(a1 + 32) _finishDecompressingWithImage:a6 error:v9];
  CGImageRetain(a6);
  v10 = *(*(a1 + 32) + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45___UINewCGImageDecompressor_decompressAsync___block_invoke_2;
  v13[3] = &unk_1E710D7A0;
  v16 = a6;
  v17 = a4;
  v11 = *(a1 + 40);
  v14 = v9;
  v15 = v11;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __45___UINewCGImageDecompressor_decompressAsync___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = UIDecompressorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = 134218240;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "Async reply with image=%p error=(OSStatus) %d", &v5, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  CGImageRelease(*(a1 + 48));
}

uint64_t __45___UINewCGImageDecompressor_decompressAsync___block_invoke_21(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = UIDecompressorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "Replying to failed async with error=(OSStatus) %d", v5, 8u);
  }

  return (*(*(a1 + 40) + 16))();
}

intptr_t __44___UINewCGImageDecompressor_waitForImageRef__block_invoke(uint64_t a1)
{
  v2 = UIDecompressorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "Async decode finished; unblocking semaphore", v4, 2u);
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 32));
}

@end