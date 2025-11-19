@interface UIImage
@end

@implementation UIImage

void __44__UIImage_Utilities__vk_imageWithTint_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextTranslateCTM(v3, 0.0, *(a1 + 56));
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextSetBlendMode(v3, kCGBlendModeNormal);
  [*(a1 + 32) setFill];
  CGContextFillRect(v3, *(a1 + 64));
  CGContextSetBlendMode(v3, kCGBlendModeDestinationIn);
  v4 = [*(a1 + 40) vk_cgImage];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);

  CGContextDrawImage(v3, *&v5, v4);
}

void __51__UIImage_Utilities__vk_imageDataWithRequirements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mmap(0, [v3 length], 3, 4097, -1, 0);
  memcpy(v4, [v3 bytes], objc_msgSend(v3, "length"));
  v5 = [v3 length];

  v6 = dispatch_data_create(v4, v5, 0, *MEMORY[0x1E69E9650]);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __46__UIImage_Utilities__vk_decodeWithCompletion___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = vk_decodeWithCompletion__drawingDecodingOperationQueue;
  vk_decodeWithCompletion__drawingDecodingOperationQueue = v0;

  [vk_decodeWithCompletion__drawingDecodingOperationQueue setName:@"com.apple.notes.drawing-decoding-queue"];
  v2 = vk_decodeWithCompletion__drawingDecodingOperationQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

void __46__UIImage_Utilities__vk_decodeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) vk_decodeInBackground];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIImage_Utilities__vk_decodeWithCompletion___block_invoke_3;
  v5[3] = &unk_1E7BE47E0;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

@end