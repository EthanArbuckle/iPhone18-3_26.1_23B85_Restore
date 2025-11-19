@interface PXSimulatedMediaRequest
@end

@implementation PXSimulatedMediaRequest

void __75___PXSimulatedMediaRequest_initWithOriginalOptions_simulatedResultHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a4;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleOriginalProgress:v10 error:a3 stop:v9 info:a5];
}

@end