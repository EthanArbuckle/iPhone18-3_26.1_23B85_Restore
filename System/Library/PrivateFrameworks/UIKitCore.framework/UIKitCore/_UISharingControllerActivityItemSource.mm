@interface _UISharingControllerActivityItemSource
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation _UISharingControllerActivityItemSource

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA88]])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end