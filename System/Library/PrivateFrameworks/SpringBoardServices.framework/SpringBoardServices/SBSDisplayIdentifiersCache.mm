@interface SBSDisplayIdentifiersCache
@end

@implementation SBSDisplayIdentifiersCache

void __35___SBSDisplayIdentifiersCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_noteChanged];
}

void __49___SBSDisplayIdentifiersCache_displayIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v11 = 0;
    v10 = 0;
    v3 = SBSSpringBoardBackgroundServerPort();
    SBGetDisplayIdentifiers(v3, &v11, &v10);
    if (v10)
    {
      v4 = objc_alloc(MEMORY[0x1E695DEF0]);
      v5 = [v4 initWithBytesNoCopy:v11 length:v10 freeWhenDone:0];
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    if (v11)
    {
      MEMORY[0x193AFFD40](*MEMORY[0x1E69E9A60], v11, v10);
    }

    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

uint64_t __45___SBSDisplayIdentifiersCache_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52___SBSDisplayIdentifiersCache_registerChangedBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = [*(a1 + 40) copy];

  return MEMORY[0x1EEE66BB8]();
}

@end