@interface _UIDocumentPickerNSURLWrapper
+ (id)wrapperForExportWithURL:(id)a3 error:(id *)a4;
+ (id)wrapperWithURL:(id)a3 readonly:(BOOL)a4;
+ (void)assembleURL:(id)a3 sandbox:(id)a4 physicalURL:(id)a5 physicalSandbox:(id)a6;
- (_UIDocumentPickerNSURLWrapper)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIDocumentPickerNSURLWrapper

+ (id)wrapperWithURL:(id)a3 readonly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"NSURL+UIDocumentPicker.m" lineNumber:324 description:@"tried to create wrapper with nil url"];
  }

  v7 = objc_alloc_init(_UIDocumentPickerNSURLWrapper);
  [(_UIDocumentPickerNSURLWrapper *)v7 setUrl:v6];
  v8 = _CFURLPromiseCopyPhysicalURL();
  if (([v6 isEqual:v8] & 1) == 0)
  {
    [(_UIDocumentPickerNSURLWrapper *)v7 setPromiseURL:v8];
  }

  v9 = [v6 startAccessingSecurityScopedResource];
  v10 = [v8 startAccessingSecurityScopedResource];
  v11 = MEMORY[0x1E69E9BA8];
  if (!v4)
  {
    v11 = MEMORY[0x1E69E9BB0];
  }

  v12 = *v11;
  v13 = @"read-write";
  if (v4)
  {
    v13 = @"read-only";
  }

  v14 = v13;
  v27 = 0;
  v15 = [v6 ui_issueSandboxExtensionOfClass:v12 error:&v27];
  v16 = v27;
  [(_UIDocumentPickerNSURLWrapper *)v7 setScope:v15];

  v17 = [(_UIDocumentPickerNSURLWrapper *)v7 scope];

  if (v17)
  {
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_19:
    v19 = v16;
    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:a1 file:@"NSURL+UIDocumentPicker.m" lineNumber:339 description:{@"Could not issue %@ sandbox extension (%@).", v14, v16}];

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_11:
  v26 = v16;
  v18 = [v8 ui_issueSandboxExtensionOfClass:v12 error:&v26];
  v19 = v26;

  [(_UIDocumentPickerNSURLWrapper *)v7 setPromiseScope:v18];
  v20 = [(_UIDocumentPickerNSURLWrapper *)v7 scope];

  if (!v20)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"NSURL+UIDocumentPicker.m" lineNumber:342 description:{@"Could not issue %@ sandbox extension (%@).", v14, v19}];

    if (v9)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_20:
  [v6 stopAccessingSecurityScopedResource];
  if (v10)
  {
LABEL_14:
    [v8 stopAccessingSecurityScopedResource];
  }

LABEL_15:

  return v7;
}

+ (id)wrapperForExportWithURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_UIDocumentPickerNSURLWrapper);
  [(_UIDocumentPickerNSURLWrapper *)v6 setUrl:v5];
  v7 = [(_UIDocumentPickerNSURLWrapper *)v6 url];
  v8 = [v7 ui_issueReadSandboxExtensionWithError:a4];
  [(_UIDocumentPickerNSURLWrapper *)v6 setScope:v8];

  v9 = [(_UIDocumentPickerNSURLWrapper *)v6 scope];

  if (v9)
  {
    v10 = _CFURLPromiseCopyPhysicalURL();
    if (!v10 || ([v5 isEqual:v10] & 1) != 0 || (-[_UIDocumentPickerNSURLWrapper setPromiseURL:](v6, "setPromiseURL:", v10), objc_msgSend(v10, "ui_issueReadSandboxExtensionWithError:", a4), v11 = objc_claimAutoreleasedReturnValue(), -[_UIDocumentPickerNSURLWrapper setPromiseScope:](v6, "setPromiseScope:", v11), v11, -[_UIDocumentPickerNSURLWrapper promiseScope](v6, "promiseScope"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
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

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(_UIDocumentPickerNSURLWrapper *)self url];
  [v9 encodeObject:v4 forKey:@"NSURL"];

  v5 = [(_UIDocumentPickerNSURLWrapper *)self scope];
  [v9 encodeObject:v5 forKey:@"NSURLScope"];

  v6 = [(_UIDocumentPickerNSURLWrapper *)self promiseURL];

  if (v6)
  {
    v7 = [(_UIDocumentPickerNSURLWrapper *)self promiseURL];
    [v9 encodeObject:v7 forKey:@"NSPromise"];

    v8 = [(_UIDocumentPickerNSURLWrapper *)self promiseScope];
    [v9 encodeObject:v8 forKey:@"NSPromiseScope"];
  }
}

+ (void)assembleURL:(id)a3 sandbox:(id)a4 physicalURL:(id)a5 physicalSandbox:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v12)
  {
    if (v9)
    {
      MEMORY[0x18CFE8460](v12, v9);
    }

    if (v10 && v11)
    {
      MEMORY[0x18CFE8460](v10, v11);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (_UIDocumentPickerNSURLWrapper)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];

  [objc_opt_class() assembleURL:v6 sandbox:v8 physicalURL:v7 physicalSandbox:v9];
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NSURL+UIDocumentPicker.m" lineNumber:420 description:@"tried to unarchive a wrapper with nil url"];
  }

  [(_UIDocumentPickerNSURLWrapper *)self setUrl:v6];

  return self;
}

@end