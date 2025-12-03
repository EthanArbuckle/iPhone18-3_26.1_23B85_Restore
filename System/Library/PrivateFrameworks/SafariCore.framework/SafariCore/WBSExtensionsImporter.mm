@interface WBSExtensionsImporter
- (BOOL)_checkNotAtRootLevel;
- (BOOL)_isParsingExtension;
- (BOOL)_isParsingExtensionsArray;
- (BOOL)jsonReader:(id)reader scalarValue:(id)value;
- (BOOL)jsonReaderBeginArray:(id)array;
- (BOOL)jsonReaderBeginObject:(id)object;
- (BOOL)jsonReaderEndArray:(id)array;
- (BOOL)jsonReaderEndObject:(id)object;
- (WBSExtensionsImporterDelegate)delegate;
- (id)_popKeyFromStackIfPossible;
- (void)parseFileHandle:(id)handle completionHandler:(id)handler;
- (void)parseURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSExtensionsImporter

- (void)parseURL:(id)l completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AC00];
  v11 = 0;
  handlerCopy = handler;
  v8 = [v6 safari_fileHandleWithURL:l options:0 createMode:0 error:&v11];
  v9 = v11;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    handlerCopy[2](handlerCopy, v9);
  }

  else
  {
    [(WBSExtensionsImporter *)self parseFileHandle:v8 completionHandler:handlerCopy];
  }
}

- (void)parseFileHandle:(id)handle completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  handleCopy = handle;
  v8 = objc_alloc_init(WBSJSONReader);
  [(WBSJSONReader *)v8 setDelegate:self];
  lastError = self->_lastError;
  self->_lastError = 0;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  stack = self->_stack;
  self->_stack = v10;

  v19 = 0;
  [(WBSJSONReader *)v8 parseFileHandle:handleCopy error:&v19];

  v12 = v19;
  if (v12)
  {
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    v13 = self->_lastError;
    if (!self->_foundExtensionsArray && !v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = @"Could not find extensions array in JSON file";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.SafariShared.WBSExtensionsImporterErrorDomain" code:2 userInfo:v15];
      v17 = self->_lastError;
      self->_lastError = v16;

      v13 = self->_lastError;
    }

    handlerCopy[2](handlerCopy, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkNotAtRootLevel
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_stack count];
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Root node is expected to be a dictionary";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.SafariShared.WBSExtensionsImporterErrorDomain" code:1 userInfo:v5];
    lastError = self->_lastError;
    self->_lastError = v6;
  }

  result = v3 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isParsingExtensionsArray
{
  v6[3] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v6[0] = &unk_1F308E4B0;
  v6[1] = @"extensions";
  v6[2] = &unk_1F308E4C8;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  v4 = *MEMORY[0x1E69E9840];
  return stack;
}

- (BOOL)_isParsingExtension
{
  v6[4] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v6[0] = &unk_1F308E4B0;
  v6[1] = @"extensions";
  v6[2] = &unk_1F308E4C8;
  v6[3] = &unk_1F308E4B0;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  v4 = *MEMORY[0x1E69E9840];
  return stack;
}

- (id)_popKeyFromStackIfPossible
{
  lastObject = [(NSMutableArray *)self->_stack lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    lastObject2 = [(NSMutableArray *)self->_stack lastObject];
    [(NSMutableArray *)self->_stack removeLastObject];
  }

  else
  {
    lastObject2 = 0;
  }

  return lastObject2;
}

- (BOOL)jsonReader:(id)reader scalarValue:(id)value
{
  valueCopy = value;
  _checkNotAtRootLevel = [(WBSExtensionsImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    _popKeyFromStackIfPossible = [(WBSExtensionsImporter *)self _popKeyFromStackIfPossible];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([_popKeyFromStackIfPossible isEqualToString:@"display_name"])
      {
        v9 = 48;
LABEL_15:
        objc_storeStrong((&self->super.isa + v9), value);
        goto LABEL_16;
      }

      if ([_popKeyFromStackIfPossible isEqualToString:@"developer_name"])
      {
        v9 = 40;
        goto LABEL_15;
      }

      if ([_popKeyFromStackIfPossible isEqualToString:@"composed_identifier"])
      {
        v9 = 32;
        goto LABEL_15;
      }

      if ([_popKeyFromStackIfPossible isEqualToString:@"store_identifier"])
      {
        v9 = 56;
        goto LABEL_15;
      }

      if ([_popKeyFromStackIfPossible isEqualToString:@"ios_extension_bundle_identifier"])
      {
        v9 = 72;
        goto LABEL_15;
      }

      if ([_popKeyFromStackIfPossible isEqualToString:@"ios_app_bundle_identifier"])
      {
        v9 = 64;
        goto LABEL_15;
      }
    }

LABEL_16:
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderBeginObject:(id)object
{
  [(NSMutableArray *)self->_stack addObject:&unk_1F308E4B0];
  if ([(WBSExtensionsImporter *)self _isParsingExtension])
  {
    composedIdentifier = self->_composedIdentifier;
    self->_composedIdentifier = 0;

    developerName = self->_developerName;
    self->_developerName = 0;

    displayName = self->_displayName;
    self->_displayName = 0;

    adamIdentifier = self->_adamIdentifier;
    self->_adamIdentifier = 0;

    alternatePlatformAppBundleIdentifier = self->_alternatePlatformAppBundleIdentifier;
    self->_alternatePlatformAppBundleIdentifier = 0;

    alternatePlatformExtensionBundleIdentifier = self->_alternatePlatformExtensionBundleIdentifier;
    self->_alternatePlatformExtensionBundleIdentifier = 0;
  }

  return 1;
}

- (BOOL)jsonReaderEndObject:(id)object
{
  if ([(WBSExtensionsImporter *)self _isParsingExtension])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained enableExtensionWithComposedIdentifier:self->_composedIdentifier adamIdentifier:self->_adamIdentifier alternatePlatformAppBundleIdentifier:self->_alternatePlatformAppBundleIdentifier alternatePlatformExtensionBundleIdentifier:self->_alternatePlatformExtensionBundleIdentifier];
  }

  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSExtensionsImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (BOOL)jsonReaderBeginArray:(id)array
{
  _checkNotAtRootLevel = [(WBSExtensionsImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    [(NSMutableArray *)self->_stack addObject:&unk_1F308E4C8];
    if ([(WBSExtensionsImporter *)self _isParsingExtensionsArray])
    {
      self->_foundExtensionsArray = 1;
    }
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderEndArray:(id)array
{
  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSExtensionsImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (WBSExtensionsImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end