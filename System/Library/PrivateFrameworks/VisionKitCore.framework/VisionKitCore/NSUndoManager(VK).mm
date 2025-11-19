@interface NSUndoManager(VK)
- (uint64_t)vk_isUndoingOrRedoing;
- (void)vk_performUndoGroupWithActionName:()VK undoGroup:;
@end

@implementation NSUndoManager(VK)

- (uint64_t)vk_isUndoingOrRedoing
{
  if ([a1 isUndoing])
  {
    return 1;
  }

  return [a1 isRedoing];
}

- (void)vk_performUndoGroupWithActionName:()VK undoGroup:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 groupsByEvent];
  [a1 setGroupsByEvent:0];
  [a1 beginUndoGrouping];
  v7[2](v7);

  if ([v6 length])
  {
    [a1 setActionName:v6];
  }

  if ([a1 groupingLevel])
  {
    [a1 endUndoGrouping];
  }

  else
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSUndoManager(VK) vk_performUndoGroupWithActionName:v9 undoGroup:?];
    }
  }

  [a1 setGroupsByEvent:v8];
}

@end