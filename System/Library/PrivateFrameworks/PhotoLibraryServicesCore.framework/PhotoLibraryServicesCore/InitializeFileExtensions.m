@interface InitializeFileExtensions
@end

@implementation InitializeFileExtensions

uint64_t ___InitializeFileExtensions_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"THM", @"BTH", @"THL", @"THP", @"JPG", @"WTH", @"LRZ", @"TH2", @"THO", 0}];
  v1 = __metadataFileExtensions;
  __metadataFileExtensions = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"LRZ", @"TH2", @"THO", 0}];
  v3 = __obsoleteFileExtensions;
  __obsoleteFileExtensions = v2;

  __imageFileExtensions = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"JPG", @"PNG", @"TIF", @"GIF", @"HEIF", @"HEIC", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end