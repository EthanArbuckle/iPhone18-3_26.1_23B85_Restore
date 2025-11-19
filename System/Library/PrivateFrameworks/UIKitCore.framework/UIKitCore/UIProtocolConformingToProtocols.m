@interface UIProtocolConformingToProtocols
@end

@implementation UIProtocolConformingToProtocols

void ___UIProtocolConformingToProtocols_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___UIProtocolConformingToProtocols_block_invoke_2;
  v27[3] = &unk_1E7128F80;
  v28 = v2;
  v3 = [v28 sortedArrayUsingComparator:v27];
  v4 = [MEMORY[0x1E696AD60] string];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 appendFormat:@"_%s", protocol_getName(*(*(&v23 + 1) + 8 * v9++))];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v7);
  }

  v10 = objc_getProtocol([v4 UTF8String]);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v13 = objc_allocateProtocol([v4 UTF8String]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = *(a1 + 32);
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          protocol_addProtocol(v13, *(*(&v19 + 1) + 8 * v18++));
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v16);
    }

    objc_registerProtocol(v13);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
  }
}

uint64_t ___UIProtocolConformingToProtocols_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Name = protocol_getName(v5);
  v8 = protocol_getName(v6);

  v9 = strcmp(Name, v8);
  if (v9 < 0)
  {
    v10 = -1;
  }

  else if (v9)
  {
    v10 = 1;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"List of protocols %@ includes %@ twice", *(a1 + 32), v5}];
    v10 = 0;
  }

  return v10;
}

@end