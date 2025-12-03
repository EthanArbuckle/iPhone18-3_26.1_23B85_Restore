@interface PXComposeRecipientSelectionSnapshot
- (PXComposeRecipientSelectionSnapshot)init;
- (PXComposeRecipientSelectionSnapshot)initWithSelectedComposeRecipients:(id)recipients selectedRecipients:(id)selectedRecipients;
@end

@implementation PXComposeRecipientSelectionSnapshot

- (PXComposeRecipientSelectionSnapshot)initWithSelectedComposeRecipients:(id)recipients selectedRecipients:(id)selectedRecipients
{
  recipientsCopy = recipients;
  selectedRecipientsCopy = selectedRecipients;
  v14.receiver = self;
  v14.super_class = PXComposeRecipientSelectionSnapshot;
  v8 = [(PXComposeRecipientSelectionSnapshot *)&v14 init];
  if (v8)
  {
    v9 = [recipientsCopy copy];
    selectedComposeRecipients = v8->_selectedComposeRecipients;
    v8->_selectedComposeRecipients = v9;

    v11 = [selectedRecipientsCopy copy];
    selectedRecipients = v8->_selectedRecipients;
    v8->_selectedRecipients = v11;
  }

  return v8;
}

- (PXComposeRecipientSelectionSnapshot)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXComposeRecipientSelectionSnapshot init]"}];

  abort();
}

@end