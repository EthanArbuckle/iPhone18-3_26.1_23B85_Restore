@interface WFContextualActionFile
- (WFContextualActionFile)initWithCoder:(id)coder;
- (WFContextualActionFile)initWithFileURL:(id)l type:(id)type;
- (id)description;
- (void)dispose;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionFile

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [getFPSandboxingURLWrapperClass() wrapperWithURL:self->_fileURL readonly:0 error:0];
  [coderCopy encodeObject:v5 forKey:@"SecurityScopedURLWrapper"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
}

- (WFContextualActionFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"SecurityScopedURLWrapper"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];

  selfCopy = 0;
  if (v5 && v6)
  {
    v8 = [v5 url];
    self = [(WFContextualActionFile *)self initWithFileURL:v8 type:v6];

    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fileURL = [(WFContextualActionFile *)self fileURL];
  type = [(WFContextualActionFile *)self type];
  v8 = [v3 stringWithFormat:@"<%@ %p url=%@, type=%@>", v5, self, fileURL, type];

  return v8;
}

- (void)dispose
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileURL = [(WFContextualActionFile *)self fileURL];
  v6 = 0;
  [defaultManager removeItemAtURL:fileURL error:&v6];
  v5 = v6;

  if (v5)
  {
    NSLog(@"Error disposing contextual action file: %@", v5);
  }
}

- (WFContextualActionFile)initWithFileURL:(id)l type:(id)type
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  if (([lCopy isFileURL] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionFile.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"fileURL.isFileURL"}];
  }

  v32.receiver = self;
  v32.super_class = WFContextualActionFile;
  v10 = [(WFContextualActionFile *)&v32 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileURL, l);
    if (!typeCopy)
    {
      v24 = 0;
LABEL_18:
      type = v11->_type;
      v11->_type = v24;

      v26 = v11;
      goto LABEL_19;
    }

    v12 = lCopy;
    v13 = typeCopy;
    if (!v12)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UTType * _Nonnull WFResolvedType(NSURL * _Nonnull __strong, UTType * _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v31 file:@"WFContextualActionFile.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
    }

    identifier = [v13 identifier];
    v15 = [identifier isEqualToString:@"com.apple.icloud-file-fault"];

    if ((v15 & 1) == 0)
    {
      v24 = v13;
LABEL_17:

      goto LABEL_18;
    }

    v34 = 0;
    v16 = *MEMORY[0x1E695DC68];
    v33 = 0;
    [v12 getPromisedItemResourceValue:&v34 forKey:v16 error:&v33];
    v17 = v34;
    v18 = v33;
    v19 = getWFVoiceShortcutClientLogObject();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "WFResolvedType";
        v37 = 2112;
        v38 = v18;
        v21 = "%s File was made with a side fault type -- error fetching real type: %@";
        v22 = v20;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1B1DE3000, v22, v23, v21, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "WFResolvedType";
      v37 = 2112;
      v38 = v17;
      v21 = "%s WFContextualActionFile was made with a side fault -- deduced actual type: %@";
      v22 = v20;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    v24 = [MEMORY[0x1E6982C40] typeWithIdentifier:v17];

    goto LABEL_17;
  }

LABEL_19:

  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

@end