@interface NSUndoManager(VK)
- (uint64_t)vk_isUndoingOrRedoing;
- (void)vk_performUndoGroupWithActionName:()VK undoGroup:;
@end

@implementation NSUndoManager(VK)

- (uint64_t)vk_isUndoingOrRedoing
{
  if ([self isUndoing])
  {
    return 1;
  }

  return [self isRedoing];
}

- (void)vk_performUndoGroupWithActionName:()VK undoGroup:
{
  v6 = a3;
  v7 = a4;
  groupsByEvent = [self groupsByEvent];
  [self setGroupsByEvent:0];
  [self beginUndoGrouping];
  v7[2](v7);

  if ([v6 length])
  {
    [self setActionName:v6];
  }

  if ([self groupingLevel])
  {
    [self endUndoGrouping];
  }

  else
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSUndoManager(VK) vk_performUndoGroupWithActionName:v9 undoGroup:?];
    }
  }

  [self setGroupsByEvent:groupsByEvent];
}

@end