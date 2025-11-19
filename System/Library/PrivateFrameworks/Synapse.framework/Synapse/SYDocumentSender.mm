@interface SYDocumentSender
- (SYDocumentSender)initWithCoder:(id)a3;
- (SYDocumentSender)initWithName:(id)a3 handle:(id)a4;
- (id)description;
- (id)formattedNameWithStyle:(int64_t)a3;
- (id)personNameComponentsFormattedWithStyle:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYDocumentSender

- (SYDocumentSender)initWithName:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SYDocumentSender;
  v8 = [(SYDocumentSender *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    handle = v8->_handle;
    v8->_handle = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDocumentSender *)self name];
  v7 = [(SYDocumentSender *)self handle];
  v8 = [v3 stringWithFormat:@"<%@: %p> {name = %@, handle = %@}", v5, self, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SYDocumentSender *)self name];
  [v4 encodeObject:v5 forKey:@"SYDocumentSenderNameKey"];

  v6 = [(SYDocumentSender *)self handle];
  [v4 encodeObject:v6 forKey:@"SYDocumentSenderHandleKey"];
}

- (SYDocumentSender)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentSenderNameKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentSenderHandleKey"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(SYDocumentSender *)self initWithName:v5 handle:v6];
    v8 = self;
  }

  return v8;
}

- (id)formattedNameWithStyle:(int64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v5 setStyle:a3];
  v6 = [(SYDocumentSender *)self name];
  v7 = [v5 personNameComponentsFromString:v6];

  if (v7)
  {
    v8 = [v5 stringFromPersonNameComponents:v7];
    goto LABEL_12;
  }

  v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SYDocumentSender *)self name];
    v21 = 138478083;
    v22 = v10;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get person name components from string: %{private}@, style: %ld", &v21, 0x16u);
  }

  v11 = [(SYDocumentSender *)self name];
  if ([v11 length])
  {
    v12 = [(SYDocumentSender *)self name];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];
    v15 = [v14 length];

    if (v15)
    {
      v8 = [(SYDocumentSender *)self name];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v16 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(SYDocumentSender *)self name];
    v21 = 138478083;
    v22 = v17;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "Have to fallback to handle. Name was empty or nil: %{private}@, style: %ld", &v21, 0x16u);
  }

  v8 = [(SYDocumentSender *)self handle];
LABEL_12:
  v18 = v8;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)personNameComponentsFormattedWithStyle:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v5 setStyle:a3];
  v6 = [(SYDocumentSender *)self name];
  v7 = [v5 personNameComponentsFromString:v6];

  return v7;
}

@end