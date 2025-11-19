@interface NSReadAttributedStringFromURLOrDataAsync
@end

@implementation NSReadAttributedStringFromURLOrDataAsync

id ___NSReadAttributedStringFromURLOrDataAsync_block_invoke(uint64_t a1)
{
  _NSReadAttributedStringFromURLOrDataAsync_connectionQueue = dispatch_queue_create("_NSReadAttributedStringFromURLOrDataAsync", MEMORY[0x1E69E96A8]);
  v2 = [MEMORY[0x1E696AAB0] _allowedTokensClasses];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F01F0D98];
  [v3 setClasses:*(a1 + 32) forSelector:sel_readFromData_orFileURL_options_extensionTokens_withReply_ argumentIndex:2 ofReply:0];
  [v3 setClasses:v2 forSelector:sel_readFromData_orFileURL_options_extensionTokens_withReply_ argumentIndex:3 ofReply:0];
  [v3 setClasses:*(a1 + 32) forSelector:sel_readFromData_orFileURL_options_extensionTokens_withReply_ argumentIndex:1 ofReply:1];
  result = v3;
  _NSReadAttributedStringFromURLOrDataAsync_connectionInterface = result;
  return result;
}

uint64_t ___NSReadAttributedStringFromURLOrDataAsync_block_invoke_3(uint64_t a1)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v3 = [*(a1 + 32) objectForKeyedSubscript:NSBaseURLDocumentOption];
  if ([v3 isFileURL])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v31[0] = v2;
    v31[1] = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v31;
    v7 = 2;
  }

  else
  {
    v30 = v2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v30;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:v7];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  [v9 setObject:v8 forKeyedSubscript:@"_WKReadAccessFileURLsOption"];
  v28 = 0u;
  v29 = 0u;
  v10 = *(a1 + 40);
  if (v10)
  {
    [v10 auditToken];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [*(a1 + 48) path];
  v26 = v28;
  v27 = v29;
  v13 = _extensionTokenForPath(&v26, v12);
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [v2 path];
  v26 = v28;
  v27 = v29;
  v15 = _extensionTokenForPath(&v26, v14);
  if (v15)
  {
    [v11 addObject:v15];
  }

  v16 = [v4 path];
  v26 = v28;
  v27 = v29;
  v17 = _extensionTokenForPath(&v26, v16);
  if (v17)
  {
    [v11 addObject:v17];
  }

  v18 = NSTemporaryDirectory();
  v26 = v28;
  v27 = v29;
  v19 = _extensionTokenForPath(&v26, v18);
  if (v19)
  {
    [v11 addObject:v19];
  }

  v20 = [v11 copy];
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 48);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___NSReadAttributedStringFromURLOrDataAsync_block_invoke_4;
  v25[3] = &unk_1E72669E8;
  v25[4] = *(a1 + 72);
  return [v21 readFromData:v22 orFileURL:v23 options:v9 extensionTokens:v20 withReply:v25];
}

@end