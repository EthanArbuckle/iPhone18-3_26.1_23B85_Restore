@interface VKRecognizedItemFrameProcessorResult
- (VKRecognizedItemFrameProcessorResult)init;
@end

@implementation VKRecognizedItemFrameProcessorResult

- (VKRecognizedItemFrameProcessorResult)init
{
  v10.receiver = self;
  v10.super_class = VKRecognizedItemFrameProcessorResult;
  v2 = [(VKRecognizedItemFrameProcessorResult *)&v10 init];
  v3 = v2;
  if (v2)
  {
    allItems = v2->_allItems;
    v5 = MEMORY[0x1E695E0F0];
    v2->_allItems = MEMORY[0x1E695E0F0];

    addedItems = v3->_addedItems;
    v3->_addedItems = v5;

    updatedItems = v3->_updatedItems;
    v3->_updatedItems = v5;

    removedItems = v3->_removedItems;
    v3->_removedItems = v5;
  }

  return v3;
}

@end