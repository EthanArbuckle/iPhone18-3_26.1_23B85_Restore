@interface UIApplicationIsMessagesExtension
@end

@implementation UIApplicationIsMessagesExtension

void ___UIApplicationIsMessagesExtension_block_invoke()
{
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB == 1)
  {
    v0 = [MEMORY[0x1E6963668] extensionPointRecordForCurrentProcess];
    if (v0)
    {
      v2 = v0;
      v1 = [v0 identifier];
      byte_1EA992DB1 = [v1 isEqualToString:@"com.apple.message-payload-provider"];

      v0 = v2;
    }
  }
}

@end