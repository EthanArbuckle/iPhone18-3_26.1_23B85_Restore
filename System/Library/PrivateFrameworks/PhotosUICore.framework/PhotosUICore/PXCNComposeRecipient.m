@interface PXCNComposeRecipient
- (PXCNComposeRecipient)initWithContact:(id)a3 address:(id)a4 nameComponents:(id)a5 recipientKind:(int64_t)a6;
- (PXCNComposeRecipient)initWithRecipient:(id)a3;
@end

@implementation PXCNComposeRecipient

- (PXCNComposeRecipient)initWithRecipient:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 kind];
  if (v6)
  {
    v7 = 2 * (v6 == 1);
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Unsupported address kind: %lu", buf, 0xCu);
    }
  }

  v10 = [v5 contact];
  v11 = [v5 address];
  v14.receiver = self;
  v14.super_class = PXCNComposeRecipient;
  v12 = [(PXRecipient *)&v14 initWithContact:v10 address:v11 nameComponents:0 recipientKind:v7];

  if (v12)
  {
    objc_storeStrong(&v12->_recipient, a3);
  }

  return v12;
}

- (PXCNComposeRecipient)initWithContact:(id)a3 address:(id)a4 nameComponents:(id)a5 recipientKind:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipient.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXCNComposeRecipient initWithContact:address:nameComponents:recipientKind:]"}];

  abort();
}

@end