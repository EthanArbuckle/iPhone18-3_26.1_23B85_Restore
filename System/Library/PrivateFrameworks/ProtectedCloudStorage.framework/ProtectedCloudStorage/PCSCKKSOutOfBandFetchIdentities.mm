@interface PCSCKKSOutOfBandFetchIdentities
@end

@implementation PCSCKKSOutOfBandFetchIdentities

void ___PCSCKKSOutOfBandFetchIdentities_block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void ___PCSCKKSOutOfBandFetchIdentities_block_invoke_62(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    Mutable = PCSIdentitySetCreateMutable(0);
    cf = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = *(*(*(a1 + 40) + 8) + 40);
          v14 = [v12 publicKey];
          [v13 removeObject:v14];

          v15 = [v12 decryptedRecord];
          v16 = PCSIdentityCreateWithKeychainAttributes(v15);

          if (v16)
          {
            v17 = cf == 0;
          }

          else
          {
            v17 = 0;
          }

          if (!v17)
          {
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            Mutable = 0;
            v18 = 1;
            goto LABEL_24;
          }

          PCSIdentitySetAddIdentity(Mutable, v16);
          CFRelease(v16);
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = Mutable == 0;
    if (Mutable && !cf)
    {
      v7 = +[PCSCKKSOutOfBandFetchCache cache];
      [v7 cachePCSIdentityFetchResult:*(*(*(a1 + 48) + 8) + 24) notFound:*(*(*(a1 + 40) + 8) + 40) serviceID:*(a1 + 56)];
      v18 = 0;
LABEL_24:
    }

    (*(*(a1 + 32) + 16))();
    if (!v18)
    {
      CFRelease(Mutable);
    }

    v19 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v19);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end