@interface UIKitUserDefaults
@end

@implementation UIKitUserDefaults

uint64_t ____UIKitUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v1 = qword_280C1E728;
  qword_280C1E728 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end