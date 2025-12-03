@interface PXCNComposeRecipient
- (PXCNComposeRecipient)initWithContact:(id)contact address:(id)address nameComponents:(id)components recipientKind:(int64_t)kind;
- (PXCNComposeRecipient)initWithRecipient:(id)recipient;
@end

@implementation PXCNComposeRecipient

- (PXCNComposeRecipient)initWithRecipient:(id)recipient
{
  v17 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  kind = [recipientCopy kind];
  if (kind)
  {
    v7 = 2 * (kind == 1);
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = kind;
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Unsupported address kind: %lu", buf, 0xCu);
    }
  }

  contact = [recipientCopy contact];
  address = [recipientCopy address];
  v14.receiver = self;
  v14.super_class = PXCNComposeRecipient;
  v12 = [(PXRecipient *)&v14 initWithContact:contact address:address nameComponents:0 recipientKind:v7];

  if (v12)
  {
    objc_storeStrong(&v12->_recipient, recipient);
  }

  return v12;
}

- (PXCNComposeRecipient)initWithContact:(id)contact address:(id)address nameComponents:(id)components recipientKind:(int64_t)kind
{
  contactCopy = contact;
  addressCopy = address;
  componentsCopy = components;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipient.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXCNComposeRecipient initWithContact:address:nameComponents:recipientKind:]"}];

  abort();
}

@end