@interface PXPhoneNumberDataDetector
@end

@implementation PXPhoneNumberDataDetector

void ___PXPhoneNumberDataDetector_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:2048 error:&v4];
  v1 = v4;
  v2 = _PXPhoneNumberDataDetector_phoneDetector;
  _PXPhoneNumberDataDetector_phoneDetector = v0;

  if (!_PXPhoneNumberDataDetector_phoneDetector)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Failed to create NSDataDetector for NSTextCheckingTypePhoneNumber: %@", buf, 0xCu);
    }
  }
}

@end