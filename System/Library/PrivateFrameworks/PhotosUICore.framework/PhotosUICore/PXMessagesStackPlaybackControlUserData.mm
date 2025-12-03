@interface PXMessagesStackPlaybackControlUserData
- (PXMessagesStackPlaybackControlUserData)initWithItemIndex:(int64_t)index viewModel:(id)model;
@end

@implementation PXMessagesStackPlaybackControlUserData

- (PXMessagesStackPlaybackControlUserData)initWithItemIndex:(int64_t)index viewModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXMessagesStackPlaybackControlUserData;
  v8 = [(PXMessagesStackPlaybackControlUserData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_itemIndex = index;
    objc_storeStrong(&v8->_viewModel, model);
  }

  return v9;
}

@end