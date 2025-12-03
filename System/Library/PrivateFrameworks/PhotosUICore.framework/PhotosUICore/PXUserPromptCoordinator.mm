@interface PXUserPromptCoordinator
+ (void)schedulePromptWithIdentifier:(id)identifier action:(id)action;
- (PXUserPromptCoordinator)init;
@end

@implementation PXUserPromptCoordinator

+ (void)schedulePromptWithIdentifier:(id)identifier action:(id)action
{
  v4 = _Block_copy(action);
  v5 = sub_1A524C674();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_1A524CC54();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1A3FBAE24;
  v9[5] = v8;
  sub_1A3C67884(sub_1A3FBB3C4, v9);
}

- (PXUserPromptCoordinator)init
{
  v3.receiver = self;
  v3.super_class = PXUserPromptCoordinator;
  return [(PXUserPromptCoordinator *)&v3 init];
}

@end