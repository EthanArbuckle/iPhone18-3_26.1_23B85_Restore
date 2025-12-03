@interface TUCollaborationHighlightProvider
- (TUCollaborationHighlightProvider)init;
- (TUCollaborationProviderDelegate)delegate;
- (id)addTemporaryCollaboration:(id)collaboration;
- (id)ckBundleIDForCollaborationIdentifier:(id)identifier;
- (id)collaborationHighlightForIdentifier:(id)identifier;
- (void)highlightCenterHighlightsDidChange:(id)change;
@end

@implementation TUCollaborationHighlightProvider

- (TUCollaborationHighlightProvider)init
{
  v12.receiver = self;
  v12.super_class = TUCollaborationHighlightProvider;
  v2 = [(TUCollaborationHighlightProvider *)&v12 init];
  if (v2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v3 = getSWHighlightCenterClass_softClass;
    v17 = getSWHighlightCenterClass_softClass;
    if (!getSWHighlightCenterClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getSWHighlightCenterClass_block_invoke;
      v13[3] = &unk_1E7424CD8;
      v13[4] = &v14;
      __getSWHighlightCenterClass_block_invoke(v13);
      v3 = v15[3];
    }

    v4 = v3;
    _Block_object_dispose(&v14, 8);
    v5 = objc_alloc_init(v3);
    highlightCenter = v2->_highlightCenter;
    v2->_highlightCenter = v5;

    [(SWHighlightCenter *)v2->_highlightCenter setDelegate:v2];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    collaborationIdentifierToPendingCollaborations = v2->_collaborationIdentifierToPendingCollaborations;
    v2->_collaborationIdentifierToPendingCollaborations = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    collaborationIdentifierToBundleIDs = v2->_collaborationIdentifierToBundleIDs;
    v2->_collaborationIdentifierToBundleIDs = dictionary2;
  }

  return v2;
}

- (id)collaborationHighlightForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collaborationIdentifierToPendingCollaborations = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToPendingCollaborations];
  v6 = [collaborationIdentifierToPendingCollaborations objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    highlightCenter = [(TUCollaborationHighlightProvider *)self highlightCenter];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      highlightCenter2 = [(TUCollaborationHighlightProvider *)self highlightCenter];
      v6 = [highlightCenter2 collaborationHighlightForIdentifier:identifierCopy error:0];

      if (v6)
      {
        highlightCenter3 = [(TUCollaborationHighlightProvider *)self highlightCenter];
        v11 = [highlightCenter3 fetchAttributionsForHighlight:v6];

        getSWCollaborationHighlightClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;

          v6 = v12;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)ckBundleIDForCollaborationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collaborationIdentifierToBundleIDs = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToBundleIDs];
  ckAppBundleIDs = [collaborationIdentifierToBundleIDs objectForKeyedSubscript:identifierCopy];

  if (!ckAppBundleIDs)
  {
    v7 = [(TUCollaborationHighlightProvider *)self collaborationHighlightForIdentifier:identifierCopy];
    attributions = [v7 attributions];
    firstObject = [attributions firstObject];
    collaborationMetadata = [firstObject collaborationMetadata];
    ckAppBundleIDs = [collaborationMetadata ckAppBundleIDs];
  }

  return ckAppBundleIDs;
}

- (void)highlightCenterHighlightsDidChange:(id)change
{
  v30 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    highlights = [changeCopy highlights];
    *buf = 138412290;
    v29 = highlights;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "collaborationsDidChange highlights: %@", buf, 0xCu);
  }

  v22 = changeCopy;

  collaborationIdentifierToPendingCollaborations = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToPendingCollaborations];
  v8 = [collaborationIdentifierToPendingCollaborations copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        highlightCenter = [(TUCollaborationHighlightProvider *)self highlightCenter];
        v16 = [highlightCenter collaborationHighlightForIdentifier:v14 error:0];

        if (v16)
        {
          v17 = TUDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v14;
            _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Collaboration populated for: %@", buf, 0xCu);
          }

          collaborationIdentifierToPendingCollaborations2 = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToPendingCollaborations];
          [collaborationIdentifierToPendingCollaborations2 removeObjectForKey:v14];

          collaborationIdentifierToBundleIDs = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToBundleIDs];
          [collaborationIdentifierToBundleIDs removeObjectForKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  delegate = [(TUCollaborationHighlightProvider *)self delegate];
  [delegate collaborationsDidChange:self];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)addTemporaryCollaboration:(id)collaboration
{
  v24 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  v5 = [collaborationCopy objectForKeyedSubscript:@"ci"];
  v6 = [(TUCollaborationHighlightProvider *)self collaborationHighlightForIdentifier:v5];
  delegate = TUDefaultLog();
  v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1956FD000, delegate, OS_LOG_TYPE_DEFAULT, "Not adding temporary collaboration, already populated", &v20, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v8)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1956FD000, delegate, OS_LOG_TYPE_DEFAULT, "Adding temporary collaboration", &v20, 2u);
  }

  v6 = [objc_alloc(getSWCollaborationHighlightClass()) initWithDictionary:collaborationCopy];
  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Collaboration highlight: %@  collaboration Identifier: %@", &v20, 0x16u);
  }

  if (v5 && v6)
  {
    collaborationIdentifierToPendingCollaborations = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToPendingCollaborations];
    [collaborationIdentifierToPendingCollaborations setObject:v6 forKeyedSubscript:v5];

    v11 = [collaborationCopy objectForKeyedSubscript:@"ckAppBundleIDs"];

    if (v11)
    {
      v12 = TUDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [collaborationCopy objectForKeyedSubscript:@"ckAppBundleIDs"];
        v20 = 138412290;
        v21 = v13;
        _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Collaboration bundleIDS: %@", &v20, 0xCu);
      }

      v14 = [collaborationCopy objectForKeyedSubscript:@"ckAppBundleIDs"];
      v15 = [v14 copy];
      collaborationIdentifierToBundleIDs = [(TUCollaborationHighlightProvider *)self collaborationIdentifierToBundleIDs];
      [collaborationIdentifierToBundleIDs setObject:v15 forKeyedSubscript:v5];
    }

    delegate = [(TUCollaborationHighlightProvider *)self delegate];
    [delegate collaborationsDidChange:self];
    goto LABEL_15;
  }

LABEL_16:
  v17 = v6;

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (TUCollaborationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end