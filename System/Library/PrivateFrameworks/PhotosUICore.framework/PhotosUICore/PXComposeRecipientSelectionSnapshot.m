@interface PXComposeRecipientSelectionSnapshot
- (PXComposeRecipientSelectionSnapshot)init;
- (PXComposeRecipientSelectionSnapshot)initWithSelectedComposeRecipients:(id)a3 selectedRecipients:(id)a4;
@end

@implementation PXComposeRecipientSelectionSnapshot

- (PXComposeRecipientSelectionSnapshot)initWithSelectedComposeRecipients:(id)a3 selectedRecipients:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PXComposeRecipientSelectionSnapshot;
  v8 = [(PXComposeRecipientSelectionSnapshot *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    selectedComposeRecipients = v8->_selectedComposeRecipients;
    v8->_selectedComposeRecipients = v9;

    v11 = [v7 copy];
    selectedRecipients = v8->_selectedRecipients;
    v8->_selectedRecipients = v11;
  }

  return v8;
}

- (PXComposeRecipientSelectionSnapshot)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXComposeRecipientSelectionSnapshot init]"}];

  abort();
}

@end