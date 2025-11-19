@interface NSReadAttributedStringFromHTMLData
@end

@implementation NSReadAttributedStringFromHTMLData

id ___NSReadAttributedStringFromHTMLData_block_invoke(uint64_t a1)
{
  _NSReadAttributedStringFromHTMLData_connectionQueue = dispatch_queue_create("_NSReadAttributedStringFromHTMLData", MEMORY[0x1E69E96A8]);
  v2 = [MEMORY[0x1E696AAB0] _allowedTokensClasses];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F01F0D98];
  [v3 setClasses:*(a1 + 32) forSelector:sel_renderHTML_options_extensionTokens_withReply_ argumentIndex:1 ofReply:0];
  [v3 setClasses:v2 forSelector:sel_renderHTML_options_extensionTokens_withReply_ argumentIndex:2 ofReply:0];
  [v3 setClasses:*(a1 + 32) forSelector:sel_renderHTML_options_extensionTokens_withReply_ argumentIndex:0 ofReply:1];
  result = v3;
  _NSReadAttributedStringFromHTMLData_connectionInterface = result;
  return result;
}

uint64_t ___NSReadAttributedStringFromHTMLData_block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void ___NSReadAttributedStringFromHTMLData_block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  dispatch_semaphore_signal(*(a1 + 32));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

uint64_t ___NSReadAttributedStringFromHTMLData_block_invoke_4(uint64_t a1)
{
  v32[2] = *MEMORY[0x1E69E9840];
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
    v32[0] = v2;
    v32[1] = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v32;
    v7 = 2;
  }

  else
  {
    v31 = v2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v31;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:v7];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  [v9 setObject:v8 forKeyedSubscript:@"_WKReadAccessFileURLsOption"];
  v29 = 0u;
  v30 = 0u;
  v10 = *(a1 + 40);
  if (v10)
  {
    [v10 auditToken];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [v2 path];
  v27 = v29;
  v28 = v30;
  v13 = _extensionTokenForPath(&v27, v12);
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [v4 path];
  v27 = v29;
  v28 = v30;
  v15 = _extensionTokenForPath(&v27, v14);
  if (v15)
  {
    [v11 addObject:v15];
  }

  v16 = NSTemporaryDirectory();
  v27 = v29;
  v28 = v30;
  v17 = _extensionTokenForPath(&v27, v16);
  if (v17)
  {
    [v11 addObject:v17];
  }

  v18 = [v11 copy];
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v21 = *(a1 + 64);
  v25 = *(a1 + 80);
  v23[2] = ___NSReadAttributedStringFromHTMLData_block_invoke_5;
  v23[3] = &unk_1E7266AD8;
  v23[4] = *(a1 + 32);
  v26 = *(a1 + 96);
  v24 = v21;
  return [v19 renderHTML:v20 options:v9 extensionTokens:v18 withReply:v23];
}

void ___NSReadAttributedStringFromHTMLData_block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  if (![a2 objectForKeyedSubscript:@"DocumentType"])
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"DocumentType"];
    if (v6)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = @"NSHTML";
    }

    [v9 setObject:v11 forKeyedSubscript:@"DocumentType"];
    v6 = [v10 copy];
  }

  *(*(*(a1 + 48) + 8) + 40) = [a3 mutableCopy];
  *(*(*(a1 + 56) + 8) + 40) = [v6 copy];
  *(*(*(a1 + 64) + 8) + 40) = [a4 copy];
  if ((*(a1 + 72) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    v12 = *(a1 + 40);

    dispatch_release(v12);
  }
}

@end