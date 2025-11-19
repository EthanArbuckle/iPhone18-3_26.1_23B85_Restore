@interface SBSApplicationShortcutCustomImageIcon
- (BOOL)isEqual:(id)a3;
- (SBSApplicationShortcutCustomImageIcon)initWithImageData:(id)a3 dataType:(int64_t)a4 isTemplate:(BOOL)a5;
- (SBSApplicationShortcutCustomImageIcon)initWithXPCDictionary:(id)a3;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSApplicationShortcutCustomImageIcon

- (SBSApplicationShortcutCustomImageIcon)initWithImageData:(id)a3 dataType:(int64_t)a4 isTemplate:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SBSApplicationShortcutCustomImageIcon;
  v10 = [(SBSApplicationShortcutIcon *)&v13 _initForSubclass];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 2, a3);
    v11->_dataType = a4;
    v11->_isTemplate = a5;
  }

  return v11;
}

- (id)_initForSubclass
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithImageData:dataType:isTemplate:].", "-[SBSApplicationShortcutCustomImageIcon _initForSubclass]", v6}];

  return [(SBSApplicationShortcutCustomImageIcon *)self initWithImageData:0 dataType:0 isTemplate:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(SBSApplicationShortcutCustomImageIcon *)self imageData];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__SBSApplicationShortcutCustomImageIcon_isEqual___block_invoke;
    v20[3] = &unk_1E7360C58;
    v7 = v4;
    v21 = v7;
    v8 = [v5 appendObject:v6 counterpart:v20];

    v9 = [(SBSApplicationShortcutCustomImageIcon *)self dataType];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__SBSApplicationShortcutCustomImageIcon_isEqual___block_invoke_2;
    v18[3] = &unk_1E7360C80;
    v10 = v7;
    v19 = v10;
    v11 = [v5 appendInteger:v9 counterpart:v18];
    v12 = [(SBSApplicationShortcutCustomImageIcon *)self isTemplate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__SBSApplicationShortcutCustomImageIcon_isEqual___block_invoke_3;
    v16[3] = &unk_1E7360CA8;
    v17 = v10;
    v13 = [v5 appendBool:v12 counterpart:v16];
    v14 = [v5 isEqual];
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(SBSApplicationShortcutCustomImageIcon *)self imageData];
  v5 = [v3 appendObject:v4];

  v6 = [v3 appendInteger:{-[SBSApplicationShortcutCustomImageIcon dataType](self, "dataType")}];
  v7 = [v3 appendBool:{-[SBSApplicationShortcutCustomImageIcon isTemplate](self, "isTemplate")}];
  v8 = [v3 hash];

  return v8;
}

- (SBSApplicationShortcutCustomImageIcon)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = xpc_dictionary_get_value(v4, "customImageIconImageData");
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = xpc_dictionary_get_value(v5, "customIconPNGData");
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    if (MEMORY[0x193AFFE60](v7) == MEMORY[0x1E69E9E70])
    {
      v10 = MEMORY[0x1E695DEF0];
      bytes_ptr = xpc_data_get_bytes_ptr(v7);
      v9 = [v10 dataWithBytes:bytes_ptr length:xpc_data_get_length(v7)];
      int64 = xpc_dictionary_get_int64(v5, "customImageIconDataType");
      self = [(SBSApplicationShortcutCustomImageIcon *)self initWithImageData:v9 dataType:int64 isTemplate:xpc_dictionary_get_BOOL(v5, "customImageIconIsTemplate")];
      v8 = self;
      goto LABEL_9;
    }

LABEL_7:
    v9 = 0;
    v8 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    v5 = [(SBSApplicationShortcutCustomImageIcon *)self imageData];
    v6 = [v5 length];
    if (v6)
    {
      xpc_dictionary_set_data(xdict, "customImageIconImageData", [v5 bytes], v6);
    }

    xpc_dictionary_set_int64(xdict, "customImageIconDataType", [(SBSApplicationShortcutCustomImageIcon *)self dataType]);
    xpc_dictionary_set_BOOL(xdict, "customImageIconIsTemplate", [(SBSApplicationShortcutCustomImageIcon *)self isTemplate]);

    v4 = xdict;
  }
}

@end