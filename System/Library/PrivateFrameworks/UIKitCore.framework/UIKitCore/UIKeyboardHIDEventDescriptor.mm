@interface UIKeyboardHIDEventDescriptor
@end

@implementation UIKeyboardHIDEventDescriptor

id __62___UIKeyboardHIDEventDescriptor_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 appendUInt64:v4 withName:@"senderID"];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) appendUInt64:v7 withName:@"eventType"];
  v9 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 24) withName:@"usagePage"];
  return [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 32) withName:@"usage"];
}

@end