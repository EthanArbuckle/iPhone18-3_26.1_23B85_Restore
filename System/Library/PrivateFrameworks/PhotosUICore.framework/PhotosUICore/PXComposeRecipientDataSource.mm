@interface PXComposeRecipientDataSource
- (PXComposeRecipientDataSource)init;
- (PXComposeRecipientDataSource)initWithComposeRecipients:(id)recipients recipients:(id)a4;
- (unint64_t)indexOfComposeRecipientForRecipient:(id)recipient;
@end

@implementation PXComposeRecipientDataSource

- (unint64_t)indexOfComposeRecipientForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSSet *)self->_recipients containsObject:recipientCopy])
  {
    composeRecipients = self->_composeRecipients;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PXComposeRecipientDataSource_indexOfComposeRecipientForRecipient___block_invoke;
    v8[3] = &unk_1E77346F8;
    v9 = recipientCopy;
    v10 = &v11;
    [(NSArray *)composeRecipients enumerateObjectsUsingBlock:v8];
  }

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __68__PXComposeRecipientDataSource_indexOfComposeRecipientForRecipient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 recipient];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (PXComposeRecipientDataSource)initWithComposeRecipients:(id)recipients recipients:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PXComposeRecipientDataSource;
  v8 = [(PXComposeRecipientDataSource *)&v16 init];
  if (v8)
  {
    v9 = PLSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [recipientsCopy count];
      *buf = 134217984;
      v18 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "Initializing PXComposeRecipientDataSource with %lu compose recipients", buf, 0xCu);
    }

    v11 = [recipientsCopy copy];
    composeRecipients = v8->_composeRecipients;
    v8->_composeRecipients = v11;

    v13 = [v7 copy];
    recipients = v8->_recipients;
    v8->_recipients = v13;
  }

  return v8;
}

- (PXComposeRecipientDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientDataSourceManager.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXComposeRecipientDataSource init]"}];

  abort();
}

@end