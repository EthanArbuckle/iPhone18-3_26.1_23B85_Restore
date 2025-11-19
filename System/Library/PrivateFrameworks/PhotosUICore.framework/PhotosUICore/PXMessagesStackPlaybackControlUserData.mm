@interface PXMessagesStackPlaybackControlUserData
- (PXMessagesStackPlaybackControlUserData)initWithItemIndex:(int64_t)a3 viewModel:(id)a4;
@end

@implementation PXMessagesStackPlaybackControlUserData

- (PXMessagesStackPlaybackControlUserData)initWithItemIndex:(int64_t)a3 viewModel:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXMessagesStackPlaybackControlUserData;
  v8 = [(PXMessagesStackPlaybackControlUserData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_itemIndex = a3;
    objc_storeStrong(&v8->_viewModel, a4);
  }

  return v9;
}

@end