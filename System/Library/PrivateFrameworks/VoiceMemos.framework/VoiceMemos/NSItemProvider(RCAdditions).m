@interface NSItemProvider(RCAdditions)
- (id)rc_supportedFileTypesRepresented;
@end

@implementation NSItemProvider(RCAdditions)

- (id)rc_supportedFileTypesRepresented
{
  v2 = +[RCCaptureFormat supportedFileTypeIdentifiers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__NSItemProvider_RCAdditions__rc_supportedFileTypesRepresented__block_invoke;
  v5[3] = &unk_279E446A0;
  v5[4] = a1;
  v3 = [v2 na_filter:v5];

  return v3;
}

@end