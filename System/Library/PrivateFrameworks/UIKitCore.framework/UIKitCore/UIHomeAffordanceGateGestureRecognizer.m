@interface UIHomeAffordanceGateGestureRecognizer
@end

@implementation UIHomeAffordanceGateGestureRecognizer

void __69___UIHomeAffordanceGateGestureRecognizer_tapRecognizerRecognizedTap___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(__UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &kGateTimeout_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 134217984;
    v4 = WeakRetained;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "<%p> Home affordance gate timed out.", &v3, 0xCu);
  }

  [WeakRetained setState:5];
}

@end