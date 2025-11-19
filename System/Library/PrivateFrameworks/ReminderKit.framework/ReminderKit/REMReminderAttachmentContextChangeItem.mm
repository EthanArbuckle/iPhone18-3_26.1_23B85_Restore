@interface REMReminderAttachmentContextChangeItem
- (NSArray)attachments;
- (NSArray)fileAttachments;
- (NSArray)imageAttachments;
- (NSArray)urlAttachments;
- (REMReminderAttachmentContextChangeItem)initWithReminderChangeItem:(id)a3;
- (id)addFileAttachmentWithData:(id)a3 uti:(id)a4;
- (id)addFileAttachmentWithURL:(id)a3 error:(id *)a4;
- (id)addImageAttachmentWithData:(id)a3 uti:(id)a4 width:(unint64_t)a5 height:(unint64_t)a6;
- (id)addImageAttachmentWithURL:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 error:(id *)a6;
- (id)addURLAttachmentWithURL:(id)a3;
- (id)attachmentsOfClass:(Class)a3;
- (id)newObjectIDForFileAttachment;
- (id)newObjectIDForImageAttachment;
- (id)newObjectIDForURLAttachment;
- (id)setURLAttachmentWithURL:(id)a3;
- (void)insertAttachment:(id)a3 afterAttachment:(id)a4;
- (void)insertAttachment:(id)a3 beforeAttachment:(id)a4;
- (void)removeAllAttachments;
- (void)removeAllAttachmentsWithClass:(Class)a3;
- (void)removeAttachment:(id)a3;
- (void)removeURLAttachments;
@end

@implementation REMReminderAttachmentContextChangeItem

- (REMReminderAttachmentContextChangeItem)initWithReminderChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderAttachmentContextChangeItem;
  v6 = [(REMReminderAttachmentContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, a3);
  }

  return v7;
}

- (NSArray)attachments
{
  v2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v3 = [v2 attachments];

  return v3;
}

- (id)attachmentsOfClass:(Class)a3
{
  v4 = [(REMReminderAttachmentContextChangeItem *)self attachments];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__REMReminderAttachmentContextChangeItem_attachmentsOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e26_B24__0__REMAttachment_8_16lu32l8;
  v8[4] = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (NSArray)fileAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContextChangeItem *)self attachmentsOfClass:v3];
}

- (NSArray)imageAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContextChangeItem *)self attachmentsOfClass:v3];
}

- (NSArray)urlAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContextChangeItem *)self attachmentsOfClass:v3];
}

- (id)addFileAttachmentWithURL:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *MEMORY[0x1E695DC68];
  v8 = *MEMORY[0x1E695DB50];
  v22[0] = *MEMORY[0x1E695DC68];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v10 = [v6 resourceValuesForKeys:v9 error:a4];

  if (v10)
  {
    v21 = [v10 objectForKeyedSubscript:v7];
    v20 = [v10 objectForKeyedSubscript:v8];
    v11 = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForFileAttachment];
    v12 = [REMFileAttachment alloc];
    v13 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v14 = [v13 accountID];
    v15 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v16 = [v15 objectID];
    v17 = -[REMFileAttachment initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:](v12, "initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:", v11, v14, v16, v21, [v20 unsignedLongLongValue], v6, 0);

    [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v17 afterAttachment:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)addFileAttachmentWithData:(id)a3 uti:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138412802;
    v20 = v9;
    v21 = 2048;
    v22 = [v6 length];
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding data attachment {reminderChangeItem: %@, data.length: %ld, uti: %@}", buf, 0x20u);
  }

  v10 = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForFileAttachment];
  v11 = [REMFileAttachment alloc];
  v12 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v13 = [v12 accountID];
  v14 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v15 = [v14 objectID];
  v16 = -[REMFileAttachment initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:](v11, "initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:", v10, v13, v15, v7, [v6 length], 0, v6);

  [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v16 afterAttachment:0];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)addImageAttachmentWithURL:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 error:(id *)a6
{
  v30[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = *MEMORY[0x1E695DC68];
  v12 = *MEMORY[0x1E695DB50];
  v30[0] = *MEMORY[0x1E695DC68];
  v30[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v14 = [v10 resourceValuesForKeys:v13 error:a6];

  if (v14)
  {
    [v14 objectForKeyedSubscript:v11];
    v29 = v27 = a4;
    v15 = [v14 objectForKeyedSubscript:v12];
    v16 = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForImageAttachment];
    v17 = v10;
    v18 = [REMImageAttachment alloc];
    v28 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v19 = [v28 accountID];
    v20 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v21 = [v20 objectID];
    v22 = [v15 unsignedLongLongValue];
    v23 = v18;
    v10 = v17;
    v24 = [(REMImageAttachment *)v23 initWithObjectID:v16 accountID:v19 reminderID:v21 UTI:v29 fileSize:v22 fileURL:v17 data:0 width:v27 height:a5];

    [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v24 afterAttachment:0];
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)addImageAttachmentWithData:(id)a3 uti:(id)a4 width:(unint64_t)a5 height:(unint64_t)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v22 = a4;
  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138413058;
    v24 = v12;
    v25 = 2048;
    v26 = [v10 length];
    v27 = 2048;
    v28 = a5;
    v29 = 2048;
    v30 = a6;
    _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_INFO, "Adding image attachment {reminderChangeItem: %@, data.length: %ld, width: %ld, height: %ld}", buf, 0x2Au);
  }

  v13 = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForImageAttachment];
  v14 = [REMImageAttachment alloc];
  v15 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v16 = [v15 accountID];
  v17 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v18 = [v17 objectID];
  v19 = -[REMImageAttachment initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:width:height:](v14, "initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:width:height:", v13, v16, v18, v22, [v10 length], 0, v10, a5, a6);

  [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v19 afterAttachment:0];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)setURLAttachmentWithURL:(id)a3
{
  v4 = a3;
  [(REMReminderAttachmentContextChangeItem *)self removeURLAttachments];
  v5 = [(REMReminderAttachmentContextChangeItem *)self addURLAttachmentWithURL:v4];

  return v5;
}

- (id)addURLAttachmentWithURL:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForURLAttachment];
  v6 = [REMURLAttachment alloc];
  v7 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v8 = [v7 accountID];
  v9 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v10 = [v9 objectID];
  v11 = [(REMURLAttachment *)v6 initWithObjectID:v5 accountID:v8 reminderID:v10 url:v4 metadata:0];

  [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v11 afterAttachment:0];

  return v11;
}

- (void)removeURLAttachments
{
  v3 = objc_opt_class();

  [(REMReminderAttachmentContextChangeItem *)self removeAllAttachmentsWithClass:v3];
}

- (void)insertAttachment:(id)a3 beforeAttachment:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding attachment before attachment {reminderChangeItem: %@, attachment: %@, siblisngAttachment: %@}", &v16, 0x20u);
  }

  v10 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v11 = [v10 attachments];
  v12 = [v11 mutableCopy];

  if (v12)
  {
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v7)
    {
LABEL_8:
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = [v12 indexOfObject:v7];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v12 insertObject:v6 atIndex:v13];
  v14 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [v14 setAttachments:v12];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)insertAttachment:(id)a3 afterAttachment:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding attachment after attachment {reminderChangeItem: %@, attachment: %@, siblisngAttachment: %@}", &v16, 0x20u);
  }

  v10 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v11 = [v10 attachments];
  v12 = [v11 mutableCopy];

  if (v12)
  {
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v13 = [v12 indexOfObject:v7];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 insertObject:v6 atIndex:v13 + 1];
    goto LABEL_10;
  }

LABEL_8:
  [v12 addObject:v6];
LABEL_10:
  v14 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [v14 setAttachments:v12];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeAttachment:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing attachment {reminderChangeItem: %@, attachment: %@}", buf, 0x16u);
  }

  v7 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v8 = [v7 attachments];
  v9 = [v8 mutableCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__REMReminderAttachmentContextChangeItem_removeAttachment___block_invoke;
  v14[3] = &unk_1E7507A08;
  v10 = v4;
  v15 = v10;
  v11 = [v9 indexOfObjectPassingTest:v14];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeObjectAtIndex:v11];
    v12 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    [v12 setAttachments:v9];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __59__REMReminderAttachmentContextChangeItem_removeAttachment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [*(a1 + 32) objectID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)removeAllAttachments
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all attachments {reminderChangeItem: %@}", &v7, 0xCu);
  }

  v5 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [v5 setAttachments:MEMORY[0x1E695E0F0]];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeAllAttachmentsWithClass:(Class)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = a3;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing all attachments {reminderChangeItem: %@} for class %@", buf, 0x16u);
  }

  v7 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v8 = [v7 attachments];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__REMReminderAttachmentContextChangeItem_removeAllAttachmentsWithClass___block_invoke;
  v13[3] = &__block_descriptor_40_e40_B24__0__REMAttachment_8__NSDictionary_16lu32l8;
  v13[4] = a3;
  v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v13];
  [v9 filterUsingPredicate:v10];

  v11 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [v11 setAttachments:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)newObjectIDForURLAttachment
{
  v2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v3 = [v2 objectID];
  v4 = [v3 entityName];
  v5 = +[REMTemplate cdEntityNameForSavedReminder];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    return +[REMTemplate newObjectIDForSavedAttachment];
  }

  else
  {

    return +[(REMAttachment *)REMURLAttachment];
  }
}

- (id)newObjectIDForFileAttachment
{
  v2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v3 = [v2 objectID];
  v4 = [v3 entityName];
  v5 = +[REMTemplate cdEntityNameForSavedReminder];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    return +[REMTemplate newObjectIDForSavedAttachment];
  }

  else
  {

    return +[(REMAttachment *)REMFileAttachment];
  }
}

- (id)newObjectIDForImageAttachment
{
  v2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  v3 = [v2 objectID];
  v4 = [v3 entityName];
  v5 = +[REMTemplate cdEntityNameForSavedReminder];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    return +[REMTemplate newObjectIDForSavedAttachment];
  }

  else
  {

    return +[(REMAttachment *)REMImageAttachment];
  }
}

@end