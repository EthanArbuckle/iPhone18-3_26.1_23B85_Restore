@interface SearchUILinkPresentationCardSectionView
+ (id)fallbackMetadataWithURL:(id)l;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (id)setupContentView;
- (void)_performCommand;
- (void)fetchMetadataFromMessagesWithURL:(id)l completionBlock:(id)block;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUILinkPresentationCardSectionView

+ (id)fallbackMetadataWithURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setOriginalURL:lCopy];
  v5 = SearchUIGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SearchUILinkPresentationCardSectionView *)lCopy fallbackMetadataWithURL:v5];
  }

  return v4;
}

- (id)setupContentView
{
  v3 = objc_opt_new();
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 _setOverrideBackgroundColor:clearColor];

  [v3 _setDisableAnimations:1];
  [v3 _setPreferredSizeClass:5];
  [v3 _setDisablePreviewGesture:0];
  [v3 _setDisableTapGesture:1];
  [v3 _setDisableHighlightGesture:1];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__performCommand];
  [(SearchUILinkPresentationCardSectionView *)self setLinkPresentationTapped:v5];

  [v3 addGestureRecognizer:self->_linkPresentationTapped];
  [(SearchUILinkPresentationCardSectionView *)self setLinkView:v3];

  return v3;
}

- (void)updateWithRowModel:(id)model
{
  v43 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (updateWithRowModel__onceToken_0 != -1)
  {
    [SearchUILinkPresentationCardSectionView updateWithRowModel:];
  }

  v41.receiver = self;
  v41.super_class = SearchUILinkPresentationCardSectionView;
  [(SearchUICardSectionView *)&v41 updateWithRowModel:modelCopy];
  v5 = MEMORY[0x1E695DFF8];
  section = [(SearchUICardSectionView *)self section];
  v7 = [section url];
  v8 = [v5 URLWithString:v7];

  linkView = [(SearchUILinkPresentationCardSectionView *)self linkView];
  [linkView setURL:v8];

  linkView2 = [(SearchUILinkPresentationCardSectionView *)self linkView];
  [linkView2 _setMetadata:0 isFinal:0];

  linkView3 = [(SearchUILinkPresentationCardSectionView *)self linkView];
  [linkView3 _setContactsForAttribution:0];

  linkView4 = [(SearchUILinkPresentationCardSectionView *)self linkView];
  [linkView4 _setHighlightedForAttribution:0];

  if (v8)
  {
    v13 = [updateWithRowModel__metadataCache objectForKey:v8];
    v30 = v13;
    if (v13)
    {
      v14 = v13;
      linkView5 = [(SearchUILinkPresentationCardSectionView *)self linkView];
      [linkView5 setMetadata:v14];
    }

    else
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_2;
      v37[3] = &unk_1E85B3370;
      v38 = v8;
      selfCopy = self;
      v40 = modelCopy;
      [(SearchUILinkPresentationCardSectionView *)self fetchMetadataFromMessagesWithURL:v38 completionBlock:v37];

      linkView5 = v38;
    }

    v16 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    section2 = [(SearchUICardSectionView *)self section];
    peopleToBadge = [section2 peopleToBadge];

    v19 = [peopleToBadge countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(peopleToBadge);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          contactIdentifier = [v23 contactIdentifier];

          if (contactIdentifier)
          {
            contactIdentifier2 = [v23 contactIdentifier];
            [v16 addObject:contactIdentifier2];
          }
        }

        v20 = [peopleToBadge countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v20);
    }

    v26 = +[SearchUIContactCache sharedCache];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_2_20;
    v31[3] = &unk_1E85B29E8;
    v31[4] = self;
    v32 = modelCopy;
    [v26 fetchContactsForIdentifiers:v16 completionHandler:v31];

    section3 = [(SearchUICardSectionView *)self section];
    isHighlighted = [section3 isHighlighted];
    linkView6 = [(SearchUILinkPresentationCardSectionView *)self linkView];
    [linkView6 _setHighlightedForAttribution:isHighlighted];
  }
}

uint64_t __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke()
{
  updateWithRowModel__metadataCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SearchUIGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_2_cold_1(v6, v7);
    }
  }

  if (v5)
  {
    [updateWithRowModel__metadataCache setObject:v5 forKey:a1[4]];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_16;
    v9[3] = &unk_1E85B26A8;
    v8 = a1[6];
    v9[4] = a1[5];
    v10 = v8;
    v11 = v5;
    [SearchUIUtilities dispatchMainIfNecessary:v9];
  }
}

void __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_16(uint64_t a1)
{
  v2 = [*(a1 + 32) rowModel];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) linkView];
    [v5 setMetadata:v4];
  }
}

void __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_2_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_3;
  v6[3] = &unk_1E85B26A8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v6];
}

void __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) rowModel];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) linkView];
    [v5 _setContactsForAttribution:v4];
  }
}

- (void)fetchMetadataFromMessagesWithURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  v9 = [SearchUIUtilities bundleIdentifierForApp:10];
  section = [(SearchUICardSectionView *)self section];
  coreSpotlightIdentifier = [section coreSpotlightIdentifier];

  if (coreSpotlightIdentifier)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__SearchUILinkPresentationCardSectionView_fetchMetadataFromMessagesWithURL_completionBlock___block_invoke;
    v13[3] = &unk_1E85B3398;
    v15 = blockCopy;
    v13[4] = self;
    v14 = lCopy;
    [defaultSearchableIndex provideDataForBundle:v9 identifier:coreSpotlightIdentifier type:@"com.apple.metadata-importer.linkMetadata" completionHandler:v13];
  }

  else
  {
    v12 = [objc_opt_class() fallbackMetadataWithURL:lCopy];
    (*(blockCopy + 2))(blockCopy, v12, 0);
  }
}

void __92__SearchUILinkPresentationCardSectionView_fetchMetadataFromMessagesWithURL_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (IDSBAASignerErrorDomain_block_invoke_onceToken != -1)
    {
      __92__SearchUILinkPresentationCardSectionView_fetchMetadataFromMessagesWithURL_completionBlock___block_invoke_cold_1();
    }

    v17 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:IDSBAASignerErrorDomain_block_invoke_objectClasses fromData:v5 error:&v17];
    v16 = v17;
    v8 = [v7 objectForKeyedSubscript:@"attachmentPaths"];
    v9 = [v7 objectForKeyedSubscript:@"payloadData"];
    v10 = [MEMORY[0x1E696ECD8] linkWithDataRepresentation:v9 attachments:v8];
    v11 = [v10 metadata];
    v12 = *(a1 + 48);
    if (v11)
    {
      (*(v12 + 16))(*(a1 + 48), v11, v6);
    }

    else
    {
      v15 = [objc_opt_class() fallbackMetadataWithURL:*(a1 + 40)];
      (*(v12 + 16))(v12, v15, v6);
    }
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = [objc_opt_class() fallbackMetadataWithURL:*(a1 + 40)];
    (*(v13 + 16))(v13, v14, v6);
  }
}

void __92__SearchUILinkPresentationCardSectionView_fetchMetadataFromMessagesWithURL_completionBlock___block_invoke_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:5];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7}];
  v3 = IDSBAASignerErrorDomain_block_invoke_objectClasses;
  IDSBAASignerErrorDomain_block_invoke_objectClasses = v2;
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  subviewCopy = subview;
  linkView = [(SearchUILinkPresentationCardSectionView *)self linkView];

  if (linkView == subviewCopy)
  {
    rowModel = [(SearchUICardSectionView *)self rowModel];
    sectionType = [rowModel sectionType];

    if (sectionType)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  width = *MEMORY[0x1E698B708];
  height = *(MEMORY[0x1E698B708] + 8);
LABEL_5:
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_performCommand
{
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v6 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  rowModel = [(SearchUICardSectionView *)self rowModel];
  v5 = [SearchUICommandHandler handlerForRowModel:rowModel environment:v6];
  [v5 executeWithTriggerEvent:2];
}

+ (void)fallbackMetadataWithURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Using fallback metadata with url: %@", &v2, 0xCu);
}

void __62__SearchUILinkPresentationCardSectionView_updateWithRowModel___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Error fetching SearchUILinkPresentation metadata: %@", &v2, 0xCu);
}

@end