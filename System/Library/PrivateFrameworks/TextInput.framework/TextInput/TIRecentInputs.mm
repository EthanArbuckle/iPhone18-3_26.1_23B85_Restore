@interface TIRecentInputs
+ (BOOL)identifierIsSystemIdentifier:(id)identifier;
+ (BOOL)validateInputFormat:(id)format forIdentifier:(id)identifier;
+ (id)_lexiconPathForLocalIdentifier:(id)identifier;
+ (id)_sanitizeRecentInputString:(id)string;
+ (id)recentInputAtPath:(id)path;
+ (id)recentInputForIdentifier:(id)identifier;
+ (void)clearRecentInputForIdentifier:(id)identifier;
+ (void)recentInputForIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)removeInput:(id)input forSystemIdentifier:(id)identifier;
+ (void)requestLexiconForRecentInputIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)identifier;
+ (void)storeInput:(id)input forLocalIdentifier:(id)identifier;
+ (void)storeInput:(id)input forSystemIdentifier:(id)identifier;
+ (void)storeInput:(id)input forSystemIdentifier:(id)identifier atPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lexiconByRemovingEntry:(id)entry;
- (id)lexiconWithAdditionalEntry:(id)entry maximumSize:(int64_t)size;
- (void)storeIfNecessary;
@end

@implementation TIRecentInputs

- (void)storeIfNecessary
{
  if ([(TIRecentInputs *)self needsSync])
  {
    filePath = [(TIRecentInputs *)self filePath];

    if (filePath)
    {
      v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
      if (v7)
      {
        v4 = MEMORY[0x1E695DFF8];
        filePath2 = [(TIRecentInputs *)self filePath];
        v6 = [v4 fileURLWithPath:filePath2];
        [v7 writeToURL:v6 atomically:1];
      }

      [(TIRecentInputs *)self setNeedsSync:0];
    }
  }
}

- (id)lexiconByRemovingEntry:(id)entry
{
  entryCopy = entry;
  entries = [(TILexicon *)self entries];
  v6 = [entries mutableCopy];

  v7 = [v6 indexOfObject:entryCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeObjectAtIndex:v7];
  }

  v8 = [(TILexicon *)TIRecentInputs lexiconWithEntries:v6];
  [v8 setNeedsSync:1];
  filePath = [(TIRecentInputs *)self filePath];
  [v8 setFilePath:filePath];

  return v8;
}

- (id)lexiconWithAdditionalEntry:(id)entry maximumSize:(int64_t)size
{
  entryCopy = entry;
  entries = [(TILexicon *)self entries];
  v8 = [entries mutableCopy];

  v9 = [v8 indexOfObject:entryCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 removeObjectAtIndex:v9];
  }

  [v8 insertObject:entryCopy atIndex:0];
  v10 = v8;
  v11 = v10;
  if ([v10 count] > size)
  {
    v11 = [v10 subarrayWithRange:{0, size}];
  }

  v12 = [(TILexicon *)TIRecentInputs lexiconWithEntries:v11];
  [v12 setNeedsSync:1];
  filePath = [(TIRecentInputs *)self filePath];
  [v12 setFilePath:filePath];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  entries = [(TILexicon *)self entries];
  v5 = [(TILexicon *)TIRecentInputs lexiconWithEntries:entries];

  *(v5 + 16) = self->_needsSync;
  v6 = [(NSString *)self->_filePath copy];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  return v5;
}

+ (BOOL)identifierIsSystemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"TIEmailRecentInputIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"TISearchRecentInputIdentifier"];
  }

  return v4;
}

+ (void)clearRecentInputForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([self identifierIsSystemIdentifier:?])
  {
    [self requestRemovalOfLexiconForRecentInputIdentifier:identifierCopy];
  }

  else if (identifierCopy)
  {
    v4 = [self _lexiconPathForLocalIdentifier:identifierCopy];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtPath:v4 error:0];
  }
}

+ (BOOL)validateInputFormat:(id)format forIdentifier:(id)identifier
{
  formatCopy = format;
  if ([identifier isEqualToString:@"TIEmailRecentInputIdentifier"])
  {
    if (validateInputFormat_forIdentifier__onceToken != -1)
    {
      dispatch_once(&validateInputFormat_forIdentifier__onceToken, &__block_literal_global_109);
    }

    v6 = [validateInputFormat_forIdentifier__regExEmail numberOfMatchesInString:formatCopy options:0 range:{0, objc_msgSend(formatCopy, "length")}] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __52__TIRecentInputs_validateInputFormat_forIdentifier___block_invoke()
{
  if (!validateInputFormat_forIdentifier__regExEmail)
  {

    MEMORY[0x1EEE66BB8]();
  }
}

+ (void)storeInput:(id)input forSystemIdentifier:(id)identifier
{
  inputCopy = input;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (inputCopy && identifierCopy)
  {
    v15 = [self _sanitizeRecentInputString:inputCopy];

    if (v15)
    {
      if ([self identifierIsSystemIdentifier:v8] && objc_msgSend(self, "validateInputFormat:forIdentifier:", v15, v8))
      {
        if (_recentLexiconDispatchQueue_onceToken != -1)
        {
          dispatch_once(&_recentLexiconDispatchQueue_onceToken, &__block_literal_global_149);
        }

        v9 = MEMORY[0x1E696B0B8];
        v10 = _recentLexiconDispatchQueue___xpc_queue;
        v11 = [[v9 alloc] initWithMachServiceName:@"com.apple.TextInput.lexicon-server" options:4096];
        v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F7F58];
        [v11 setRemoteObjectInterface:v12];

        [v11 _setQueue:v10];
        [v11 resume];
        v13 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_104];
        v14 = v13;
        if (v13)
        {
          [v13 addEntryString:v15 forRecentInputIdentifier:v8];
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = inputCopy;
  }
}

+ (void)removeInput:(id)input forSystemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = [self _sanitizeRecentInputString:input];
  if (v11 && [self identifierIsSystemIdentifier:identifierCopy])
  {
    v7 = [self _lexiconPathForLocalIdentifier:identifierCopy];
    v8 = [TIRecentInputs recentInputAtPath:v7];
    v9 = [TILexiconEntry entryWithDocumentText:v11 userInput:v11];
    v10 = [v8 lexiconByRemovingEntry:v9];

    [v10 storeIfNecessary];
  }
}

+ (void)storeInput:(id)input forSystemIdentifier:(id)identifier atPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v13 = [self _sanitizeRecentInputString:input];
  if (v13 && [self identifierIsSystemIdentifier:identifierCopy] && objc_msgSend(self, "validateInputFormat:forIdentifier:", v13, identifierCopy))
  {
    v10 = [TIRecentInputs recentInputAtPath:pathCopy];
    v11 = [TILexiconEntry entryWithDocumentText:v13 userInput:v13];
    v12 = [v10 lexiconWithAdditionalEntry:v11 maximumSize:7];

    [v12 storeIfNecessary];
  }
}

+ (void)storeInput:(id)input forLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self _sanitizeRecentInputString:input];
  v11 = v7;
  if (identifierCopy && v7 && ([self identifierIsSystemIdentifier:identifierCopy] & 1) == 0 && objc_msgSend(self, "validateInputFormat:forIdentifier:", v11, identifierCopy))
  {
    v8 = [self recentInputForIdentifier:identifierCopy];
    v9 = [TILexiconEntry entryWithDocumentText:v11 userInput:v11];
    v10 = [v8 lexiconWithAdditionalEntry:v9 maximumSize:7];

    [v10 storeIfNecessary];
  }
}

+ (id)_sanitizeRecentInputString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [MEMORY[0x1E696AEC0] _stringWithUnichar:65532];
    v5 = [stringCopy stringByReplacingOccurrencesOfString:v4 withString:&stru_1EF56D550];
  }

  else
  {
    v5 = 0;
  }

  if (![v5 length])
  {

    v5 = 0;
  }

  return v5;
}

+ (void)recentInputForIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([self identifierIsSystemIdentifier:identifierCopy])
  {
    [self requestLexiconForRecentInputIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else if (identifierCopy && handlerCopy)
  {
    v7 = [self _lexiconPathForLocalIdentifier:identifierCopy];
    v8 = [self recentInputAtPath:v7];
    handlerCopy[2](handlerCopy, v8);
  }
}

+ (id)recentInputForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([self identifierIsSystemIdentifier:identifierCopy])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__963;
    v18 = __Block_byref_object_dispose__964;
    v19 = 0;
    v5 = dispatch_semaphore_create(0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__TIRecentInputs_recentInputForIdentifier___block_invoke;
    v11[3] = &unk_1E6F4BBB0;
    v12 = v5;
    v13 = &v14;
    v6 = v5;
    [self requestLexiconForRecentInputIdentifier:identifierCopy completionHandler:v11];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else if (identifierCopy)
  {
    v9 = [self _lexiconPathForLocalIdentifier:identifierCopy];
    v8 = [self recentInputAtPath:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __43__TIRecentInputs_recentInputForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_lexiconPathForLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = identifierCopy;
  }

  else
  {
    v4 = @"Default";
  }

  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v6 = [v5 objectAtIndex:0];

  v7 = [v6 stringByAppendingPathComponent:@"Keyboard"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v7 attributes:0];

  v9 = [v7 stringByAppendingPathComponent:v4];

  v10 = [v9 stringByAppendingPathExtension:@"recents"];

  return v10;
}

+ (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = identifierCopy;
    if (_recentLexiconDispatchQueue_onceToken != -1)
    {
      dispatch_once(&_recentLexiconDispatchQueue_onceToken, &__block_literal_global_149);
    }

    v4 = MEMORY[0x1E696B0B8];
    v5 = _recentLexiconDispatchQueue___xpc_queue;
    v6 = [[v4 alloc] initWithMachServiceName:@"com.apple.TextInput.lexicon-server" options:4096];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F7F58];
    [v6 setRemoteObjectInterface:v7];

    [v6 _setQueue:v5];
    [v6 resume];
    v8 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_85];
    v9 = v8;
    if (v8)
    {
      [v8 requestRemovalOfLexiconForRecentInputIdentifier:v10];
    }

    identifierCopy = v10;
  }
}

+ (void)requestLexiconForRecentInputIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      if (_recentLexiconDispatchQueue_onceToken != -1)
      {
        dispatch_once(&_recentLexiconDispatchQueue_onceToken, &__block_literal_global_149);
      }

      v8 = _recentLexiconDispatchQueue___xpc_queue;
      v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.lexicon-server" options:4096];
      v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F7F58];
      [v9 setRemoteObjectInterface:v10];

      [v9 _setQueue:v8];
      [v9 resume];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __75__TIRecentInputs_requestLexiconForRecentInputIdentifier_completionHandler___block_invoke;
      v14[3] = &unk_1E6F4CD38;
      v11 = v7;
      v15 = v11;
      v12 = [v9 remoteObjectProxyWithErrorHandler:v14];
      v13 = v12;
      if (v12)
      {
        [v12 requestLexiconForRecentInputIdentifier:identifierCopy completionHandler:v11];
      }

      else
      {
        (*(v11 + 2))(v11, 0);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

uint64_t __75__TIRecentInputs_requestLexiconForRecentInputIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_UikitSentARece.isa, a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (id)recentInputAtPath:(id)path
{
  pathCopy = path;
  v4 = MEMORY[0x1E695DEF0];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v6 = [v4 dataWithContentsOfURL:v5 options:1 error:0];

  if (!v6 || ([MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(TILexicon *)TIRecentInputs lexiconWithEntries:MEMORY[0x1E695E0F0]];
  }

  [v7 setFilePath:pathCopy];

  return v7;
}

@end