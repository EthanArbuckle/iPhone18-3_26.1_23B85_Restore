@interface PXMessagesStackAdditionalItemsViewUserData
- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount;
- (PXMessagesStackAdditionalItemsViewUserData)init;
- (PXMessagesStackAdditionalItemsViewUserData)initWithAdditionalItemsCount:(id)count;
@end

@implementation PXMessagesStackAdditionalItemsViewUserData

- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount
{
  type = self->_additionalItemsCount.type;
  count = self->_additionalItemsCount.count;
  result.var1 = type;
  result.var0 = count;
  return result;
}

- (PXMessagesStackAdditionalItemsViewUserData)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackAdditionalItemsView.m" lineNumber:114 description:{@"%s is not available as initializer", "-[PXMessagesStackAdditionalItemsViewUserData init]"}];

  abort();
}

- (PXMessagesStackAdditionalItemsViewUserData)initWithAdditionalItemsCount:(id)count
{
  var1 = count.var1;
  var0 = count.var0;
  v6.receiver = self;
  v6.super_class = PXMessagesStackAdditionalItemsViewUserData;
  result = [(PXMessagesStackAdditionalItemsViewUserData *)&v6 init];
  if (result)
  {
    result->_additionalItemsCount.count = var0;
    result->_additionalItemsCount.type = var1;
  }

  return result;
}

@end