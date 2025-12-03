@interface NSError(PXErrorRecovery)
- (id)px_errorWithRecoveryOptions:()PXErrorRecovery;
@end

@implementation NSError(PXErrorRecovery)

- (id)px_errorWithRecoveryOptions:()PXErrorRecovery
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    userInfo = [self userInfo];
    v6 = [userInfo mutableCopy];

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          title = [v13 title];
          v15 = title;
          if (!v13)
          {

            v15 = &stru_1F1741150;
          }

          [v7 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A590]];
    v16 = objc_alloc_init(PXErrorRecoveryAttempter);
    [(PXErrorRecoveryAttempter *)v16 setRecoveryOptions:v8];
    [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A8A8]];
    v17 = MEMORY[0x1E696ABC0];
    domain = [self domain];
    selfCopy = [v17 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v6}];

    v4 = v21;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end