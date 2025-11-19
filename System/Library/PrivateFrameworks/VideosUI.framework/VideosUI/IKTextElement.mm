@interface IKTextElement
@end

@implementation IKTextElement

void __51__IKTextElement_NSAttributedString__textAttributes__block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DB648];
  v4[0] = @"NSFont";
  v4[1] = @"NSParagraphStyle";
  v1 = *MEMORY[0x1E69DB688];
  v5[0] = v0;
  v5[1] = v1;
  v4[2] = @"NSColor";
  v5[2] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = textAttributes___keyMappings;
  textAttributes___keyMappings = v2;
}

void __51__IKTextElement_NSAttributedString__textAttributes__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [textAttributes___keyMappings objectForKey:v8];
        if (v9)
        {
          v10 = [v3 objectForKey:v8];
          [*(a1 + 32) setObject:v10 forKey:v9];
        }

        else
        {
          NSLog(&cfstr_NoMappedKeyFor.isa, v8);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end