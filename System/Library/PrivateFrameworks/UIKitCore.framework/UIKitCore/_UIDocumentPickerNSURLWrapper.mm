@interface _UIDocumentPickerNSURLWrapper
+ (id)wrapperForExportWithURL:(id)l error:(id *)error;
+ (id)wrapperWithURL:(id)l readonly:(BOOL)readonly;
+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox;
- (_UIDocumentPickerNSURLWrapper)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIDocumentPickerNSURLWrapper

+ (id)wrapperWithURL:(id)l readonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSURL+UIDocumentPicker.m" lineNumber:324 description:@"tried to create wrapper with nil url"];
  }

  v7 = objc_alloc_init(_UIDocumentPickerNSURLWrapper);
  [(_UIDocumentPickerNSURLWrapper *)v7 setUrl:lCopy];
  v8 = _CFURLPromiseCopyPhysicalURL();
  if (([lCopy isEqual:v8] & 1) == 0)
  {
    [(_UIDocumentPickerNSURLWrapper *)v7 setPromiseURL:v8];
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  startAccessingSecurityScopedResource2 = [v8 startAccessingSecurityScopedResource];
  v11 = MEMORY[0x1E69E9BA8];
  if (!readonlyCopy)
  {
    v11 = MEMORY[0x1E69E9BB0];
  }

  v12 = *v11;
  v13 = @"read-write";
  if (readonlyCopy)
  {
    v13 = @"read-only";
  }

  v14 = v13;
  v27 = 0;
  v15 = [lCopy ui_issueSandboxExtensionOfClass:v12 error:&v27];
  v16 = v27;
  [(_UIDocumentPickerNSURLWrapper *)v7 setScope:v15];

  scope = [(_UIDocumentPickerNSURLWrapper *)v7 scope];

  if (scope)
  {
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_19:
    v19 = v16;
    if (startAccessingSecurityScopedResource)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSURL+UIDocumentPicker.m" lineNumber:339 description:{@"Could not issue %@ sandbox extension (%@).", v14, v16}];

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_11:
  v26 = v16;
  v18 = [v8 ui_issueSandboxExtensionOfClass:v12 error:&v26];
  v19 = v26;

  [(_UIDocumentPickerNSURLWrapper *)v7 setPromiseScope:v18];
  scope2 = [(_UIDocumentPickerNSURLWrapper *)v7 scope];

  if (!scope2)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSURL+UIDocumentPicker.m" lineNumber:342 description:{@"Could not issue %@ sandbox extension (%@).", v14, v19}];

    if (startAccessingSecurityScopedResource)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (!startAccessingSecurityScopedResource2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!startAccessingSecurityScopedResource)
  {
    goto LABEL_13;
  }

LABEL_20:
  [lCopy stopAccessingSecurityScopedResource];
  if (startAccessingSecurityScopedResource2)
  {
LABEL_14:
    [v8 stopAccessingSecurityScopedResource];
  }

LABEL_15:

  return v7;
}

+ (id)wrapperForExportWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = objc_alloc_init(_UIDocumentPickerNSURLWrapper);
  [(_UIDocumentPickerNSURLWrapper *)v6 setUrl:lCopy];
  v7 = [(_UIDocumentPickerNSURLWrapper *)v6 url];
  v8 = [v7 ui_issueReadSandboxExtensionWithError:error];
  [(_UIDocumentPickerNSURLWrapper *)v6 setScope:v8];

  scope = [(_UIDocumentPickerNSURLWrapper *)v6 scope];

  if (scope)
  {
    v10 = _CFURLPromiseCopyPhysicalURL();
    if (!v10 || ([lCopy isEqual:v10] & 1) != 0 || (-[_UIDocumentPickerNSURLWrapper setPromiseURL:](v6, "setPromiseURL:", v10), objc_msgSend(v10, "ui_issueReadSandboxExtensionWithError:", error), v11 = objc_claimAutoreleasedReturnValue(), -[_UIDocumentPickerNSURLWrapper setPromiseScope:](v6, "setPromiseScope:", v11), v11, -[_UIDocumentPickerNSURLWrapper promiseScope](v6, "promiseScope"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v12 = v6;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(_UIDocumentPickerNSURLWrapper *)self url];
  [coderCopy encodeObject:v4 forKey:@"NSURL"];

  scope = [(_UIDocumentPickerNSURLWrapper *)self scope];
  [coderCopy encodeObject:scope forKey:@"NSURLScope"];

  promiseURL = [(_UIDocumentPickerNSURLWrapper *)self promiseURL];

  if (promiseURL)
  {
    promiseURL2 = [(_UIDocumentPickerNSURLWrapper *)self promiseURL];
    [coderCopy encodeObject:promiseURL2 forKey:@"NSPromise"];

    promiseScope = [(_UIDocumentPickerNSURLWrapper *)self promiseScope];
    [coderCopy encodeObject:promiseScope forKey:@"NSPromiseScope"];
  }
}

+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox
{
  lCopy = l;
  sandboxCopy = sandbox;
  rLCopy = rL;
  physicalSandboxCopy = physicalSandbox;
  if (lCopy)
  {
    if (sandboxCopy)
    {
      MEMORY[0x18CFE8460](lCopy, sandboxCopy);
    }

    if (rLCopy && physicalSandboxCopy)
    {
      MEMORY[0x18CFE8460](rLCopy, physicalSandboxCopy);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (_UIDocumentPickerNSURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];

  [objc_opt_class() assembleURL:v6 sandbox:v8 physicalURL:v7 physicalSandbox:v9];
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSURL+UIDocumentPicker.m" lineNumber:420 description:@"tried to unarchive a wrapper with nil url"];
  }

  [(_UIDocumentPickerNSURLWrapper *)self setUrl:v6];

  return self;
}

@end