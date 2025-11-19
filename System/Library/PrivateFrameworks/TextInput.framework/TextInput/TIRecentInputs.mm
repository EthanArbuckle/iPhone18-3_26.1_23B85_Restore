@interface TIRecentInputs
+ (BOOL)identifierIsSystemIdentifier:(id)a3;
+ (BOOL)validateInputFormat:(id)a3 forIdentifier:(id)a4;
+ (id)_lexiconPathForLocalIdentifier:(id)a3;
+ (id)_sanitizeRecentInputString:(id)a3;
+ (id)recentInputAtPath:(id)a3;
+ (id)recentInputForIdentifier:(id)a3;
+ (void)clearRecentInputForIdentifier:(id)a3;
+ (void)recentInputForIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)removeInput:(id)a3 forSystemIdentifier:(id)a4;
+ (void)requestLexiconForRecentInputIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)a3;
+ (void)storeInput:(id)a3 forLocalIdentifier:(id)a4;
+ (void)storeInput:(id)a3 forSystemIdentifier:(id)a4;
+ (void)storeInput:(id)a3 forSystemIdentifier:(id)a4 atPath:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)lexiconByRemovingEntry:(id)a3;
- (id)lexiconWithAdditionalEntry:(id)a3 maximumSize:(int64_t)a4;
- (void)storeIfNecessary;
@end

@implementation TIRecentInputs

- (void)storeIfNecessary
{
  if ([(TIRecentInputs *)self needsSync])
  {
    v3 = [(TIRecentInputs *)self filePath];

    if (v3)
    {
      v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
      if (v7)
      {
        v4 = MEMORY[0x1E695DFF8];
        v5 = [(TIRecentInputs *)self filePath];
        v6 = [v4 fileURLWithPath:v5];
        [v7 writeToURL:v6 atomically:1];
      }

      [(TIRecentInputs *)self setNeedsSync:0];
    }
  }
}

- (id)lexiconByRemovingEntry:(id)a3
{
  v4 = a3;
  v5 = [(TILexicon *)self entries];
  v6 = [v5 mutableCopy];

  v7 = [v6 indexOfObject:v4];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeObjectAtIndex:v7];
  }

  v8 = [(TILexicon *)TIRecentInputs lexiconWithEntries:v6];
  [v8 setNeedsSync:1];
  v9 = [(TIRecentInputs *)self filePath];
  [v8 setFilePath:v9];

  return v8;
}

- (id)lexiconWithAdditionalEntry:(id)a3 maximumSize:(int64_t)a4
{
  v6 = a3;
  v7 = [(TILexicon *)self entries];
  v8 = [v7 mutableCopy];

  v9 = [v8 indexOfObject:v6];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 removeObjectAtIndex:v9];
  }

  [v8 insertObject:v6 atIndex:0];
  v10 = v8;
  v11 = v10;
  if ([v10 count] > a4)
  {
    v11 = [v10 subarrayWithRange:{0, a4}];
  }

  v12 = [(TILexicon *)TIRecentInputs lexiconWithEntries:v11];
  [v12 setNeedsSync:1];
  v13 = [(TIRecentInputs *)self filePath];
  [v12 setFilePath:v13];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(TILexicon *)self entries];
  v5 = [(TILexicon *)TIRecentInputs lexiconWithEntries:v4];

  *(v5 + 16) = self->_needsSync;
  v6 = [(NSString *)self->_filePath copy];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  return v5;
}

+ (BOOL)identifierIsSystemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TIEmailRecentInputIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TISearchRecentInputIdentifier"];
  }

  return v4;
}

+ (void)clearRecentInputForIdentifier:(id)a3
{
  v6 = a3;
  if ([a1 identifierIsSystemIdentifier:?])
  {
    [a1 requestRemovalOfLexiconForRecentInputIdentifier:v6];
  }

  else if (v6)
  {
    v4 = [a1 _lexiconPathForLocalIdentifier:v6];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtPath:v4 error:0];
  }
}

+ (BOOL)validateInputFormat:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  if ([a4 isEqualToString:@"TIEmailRecentInputIdentifier"])
  {
    if (validateInputFormat_forIdentifier__onceToken != -1)
    {
      dispatch_once(&validateInputFormat_forIdentifier__onceToken, &__block_literal_global_109);
    }

    v6 = [validateInputFormat_forIdentifier__regExEmail numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}] != 0;
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

+ (void)storeInput:(id)a3 forSystemIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v15 = [a1 _sanitizeRecentInputString:v6];

    if (v15)
    {
      if ([a1 identifierIsSystemIdentifier:v8] && objc_msgSend(a1, "validateInputFormat:forIdentifier:", v15, v8))
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
    v15 = v6;
  }
}

+ (void)removeInput:(id)a3 forSystemIdentifier:(id)a4
{
  v6 = a4;
  v11 = [a1 _sanitizeRecentInputString:a3];
  if (v11 && [a1 identifierIsSystemIdentifier:v6])
  {
    v7 = [a1 _lexiconPathForLocalIdentifier:v6];
    v8 = [TIRecentInputs recentInputAtPath:v7];
    v9 = [TILexiconEntry entryWithDocumentText:v11 userInput:v11];
    v10 = [v8 lexiconByRemovingEntry:v9];

    [v10 storeIfNecessary];
  }
}

+ (void)storeInput:(id)a3 forSystemIdentifier:(id)a4 atPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13 = [a1 _sanitizeRecentInputString:a3];
  if (v13 && [a1 identifierIsSystemIdentifier:v8] && objc_msgSend(a1, "validateInputFormat:forIdentifier:", v13, v8))
  {
    v10 = [TIRecentInputs recentInputAtPath:v9];
    v11 = [TILexiconEntry entryWithDocumentText:v13 userInput:v13];
    v12 = [v10 lexiconWithAdditionalEntry:v11 maximumSize:7];

    [v12 storeIfNecessary];
  }
}

+ (void)storeInput:(id)a3 forLocalIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 _sanitizeRecentInputString:a3];
  v11 = v7;
  if (v6 && v7 && ([a1 identifierIsSystemIdentifier:v6] & 1) == 0 && objc_msgSend(a1, "validateInputFormat:forIdentifier:", v11, v6))
  {
    v8 = [a1 recentInputForIdentifier:v6];
    v9 = [TILexiconEntry entryWithDocumentText:v11 userInput:v11];
    v10 = [v8 lexiconWithAdditionalEntry:v9 maximumSize:7];

    [v10 storeIfNecessary];
  }
}

+ (id)_sanitizeRecentInputString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] _stringWithUnichar:65532];
    v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_1EF56D550];
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

+ (void)recentInputForIdentifier:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([a1 identifierIsSystemIdentifier:v9])
  {
    [a1 requestLexiconForRecentInputIdentifier:v9 completionHandler:v6];
  }

  else if (v9 && v6)
  {
    v7 = [a1 _lexiconPathForLocalIdentifier:v9];
    v8 = [a1 recentInputAtPath:v7];
    v6[2](v6, v8);
  }
}

+ (id)recentInputForIdentifier:(id)a3
{
  v4 = a3;
  if ([a1 identifierIsSystemIdentifier:v4])
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
    [a1 requestLexiconForRecentInputIdentifier:v4 completionHandler:v11];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else if (v4)
  {
    v9 = [a1 _lexiconPathForLocalIdentifier:v4];
    v8 = [a1 recentInputAtPath:v9];
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

+ (id)_lexiconPathForLocalIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Default";
  }

  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v6 = [v5 objectAtIndex:0];

  v7 = [v6 stringByAppendingPathComponent:@"Keyboard"];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 _web_createDirectoryAtPathWithIntermediateDirectories:v7 attributes:0];

  v9 = [v7 stringByAppendingPathComponent:v4];

  v10 = [v9 stringByAppendingPathExtension:@"recents"];

  return v10;
}

+ (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v10 = v3;
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

    v3 = v10;
  }
}

+ (void)requestLexiconForRecentInputIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
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
        [v12 requestLexiconForRecentInputIdentifier:v5 completionHandler:v11];
      }

      else
      {
        (*(v11 + 2))(v11, 0);
      }
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

uint64_t __75__TIRecentInputs_requestLexiconForRecentInputIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_UikitSentARece.isa, a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (id)recentInputAtPath:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DEF0];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v6 = [v4 dataWithContentsOfURL:v5 options:1 error:0];

  if (!v6 || ([MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(TILexicon *)TIRecentInputs lexiconWithEntries:MEMORY[0x1E695E0F0]];
  }

  [v7 setFilePath:v3];

  return v7;
}

@end