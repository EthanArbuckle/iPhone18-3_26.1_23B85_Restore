@interface PXSimulatedDelayedMediaRequest
@end

@implementation PXSimulatedDelayedMediaRequest

void __61___PXSimulatedDelayedMediaRequest_handleOriginalResult_info___block_invoke(uint64_t a1, double a2)
{
  v4 = dispatch_time(0, (*(*(a1 + 32) + 32) * a2 * 1000000000.0));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___PXSimulatedDelayedMediaRequest_handleOriginalResult_info___block_invoke_2;
  v5[3] = &unk_1E77498A0;
  v5[4] = *(a1 + 32);
  *&v5[5] = a2;
  dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
}

@end