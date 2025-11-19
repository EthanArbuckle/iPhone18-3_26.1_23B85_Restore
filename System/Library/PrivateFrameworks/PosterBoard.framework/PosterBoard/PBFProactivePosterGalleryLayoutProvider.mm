@interface PBFProactivePosterGalleryLayoutProvider
- (void)fetchGalleryLayoutWithCompletion:(id)a3;
- (void)handlePosterDescriptorsDidChange:(id)a3 withCompletion:(id)a4;
@end

@implementation PBFProactivePosterGalleryLayoutProvider

- (void)fetchGalleryLayoutWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CEB530] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PBFProactivePosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke;
  v6[3] = &unk_2782C7D20;
  v7 = v3;
  v5 = v3;
  [v4 fetchFaceGalleryConfigurationWithCompletion:v6];
}

void __76__PBFProactivePosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 posterBoardRepresentation];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)handlePosterDescriptorsDidChange:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [v14 bs_map:&__block_literal_global_10];
        [v7 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x277CEB530] sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__PBFProactivePosterGalleryLayoutProvider_handlePosterDescriptorsDidChange_withCompletion___block_invoke_2;
  v18[3] = &unk_2782C7D68;
  v19 = v6;
  v17 = v6;
  [v16 posterBoardDidUpdateDescriptors:v7 completion:v18];
}

@end