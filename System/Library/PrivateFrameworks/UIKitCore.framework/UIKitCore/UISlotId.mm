@interface UISlotId
@end

@implementation UISlotId

void __28___UISlotId_snapshotContext__block_invoke()
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:@"SnapshotContext" forKey:*MEMORY[0x1E69796A0]];
  [v2 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69796C0]];
  v0 = [MEMORY[0x1E6979320] remoteContextWithOptions:v2];
  v1 = qword_1ED4A0600;
  qword_1ED4A0600 = v0;
}

@end