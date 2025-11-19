@interface UIHIDEventSynchronizer
@end

@implementation UIHIDEventSynchronizer

uint64_t __57___UIHIDEventSynchronizer__processInitialDigitizerEvent___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

uint64_t __47___UIHIDEventSynchronizer__logPerformanceData___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

void __50___UIHIDEventSynchronizer__processDigitizerEvent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDEventGetIntegerValue()];
  v7 = [*(*(a1 + 32) + 72) pathId];
  v8 = [v7 isEqual:v9];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

@end