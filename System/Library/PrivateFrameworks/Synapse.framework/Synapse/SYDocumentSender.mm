@interface SYDocumentSender
- (SYDocumentSender)initWithCoder:(id)coder;
- (SYDocumentSender)initWithName:(id)name handle:(id)handle;
- (id)description;
- (id)formattedNameWithStyle:(int64_t)style;
- (id)personNameComponentsFormattedWithStyle:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYDocumentSender

- (SYDocumentSender)initWithName:(id)name handle:(id)handle
{
  nameCopy = name;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = SYDocumentSender;
  v8 = [(SYDocumentSender *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [handleCopy copy];
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
  name = [(SYDocumentSender *)self name];
  handle = [(SYDocumentSender *)self handle];
  v8 = [v3 stringWithFormat:@"<%@: %p> {name = %@, handle = %@}", v5, self, name, handle];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SYDocumentSender *)self name];
  [coderCopy encodeObject:name forKey:@"SYDocumentSenderNameKey"];

  handle = [(SYDocumentSender *)self handle];
  [coderCopy encodeObject:handle forKey:@"SYDocumentSenderHandleKey"];
}

- (SYDocumentSender)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentSenderNameKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentSenderHandleKey"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(SYDocumentSender *)self initWithName:v5 handle:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)formattedNameWithStyle:(int64_t)style
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v5 setStyle:style];
  name = [(SYDocumentSender *)self name];
  v7 = [v5 personNameComponentsFromString:name];

  if (v7)
  {
    name5 = [v5 stringFromPersonNameComponents:v7];
    goto LABEL_12;
  }

  v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [(SYDocumentSender *)self name];
    v21 = 138478083;
    v22 = name2;
    v23 = 2048;
    styleCopy2 = style;
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get person name components from string: %{private}@, style: %ld", &v21, 0x16u);
  }

  name3 = [(SYDocumentSender *)self name];
  if ([name3 length])
  {
    name4 = [(SYDocumentSender *)self name];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [name4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v15 = [v14 length];

    if (v15)
    {
      name5 = [(SYDocumentSender *)self name];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v16 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    name6 = [(SYDocumentSender *)self name];
    v21 = 138478083;
    v22 = name6;
    v23 = 2048;
    styleCopy2 = style;
    _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "Have to fallback to handle. Name was empty or nil: %{private}@, style: %ld", &v21, 0x16u);
  }

  name5 = [(SYDocumentSender *)self handle];
LABEL_12:
  v18 = name5;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)personNameComponentsFormattedWithStyle:(int64_t)style
{
  v5 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v5 setStyle:style];
  name = [(SYDocumentSender *)self name];
  v7 = [v5 personNameComponentsFromString:name];

  return v7;
}

@end