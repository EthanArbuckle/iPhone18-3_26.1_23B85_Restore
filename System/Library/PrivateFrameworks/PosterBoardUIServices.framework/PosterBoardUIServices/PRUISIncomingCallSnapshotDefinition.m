@interface PRUISIncomingCallSnapshotDefinition
- (PRUISIncomingCallSnapshotDefinition)initWithBaseIdentifier:(id)a3 context:(id)a4 attachmentUniqueIdentifiers:(id)a5;
- (void)applySceneSettings:(id)a3;
@end

@implementation PRUISIncomingCallSnapshotDefinition

- (PRUISIncomingCallSnapshotDefinition)initWithBaseIdentifier:(id)a3 context:(id)a4 attachmentUniqueIdentifiers:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  obj = a4;
  v9 = a4;
  v10 = a5;
  v11 = [v8 copy];
  v12 = _PRUISIncomingCallPosterSnapshotDefinitionLevelSetsForIdentifier(v8);
  v13 = [v12 firstObject];
  v41 = [v13 containsLevel:{+[PRUISPosterAppearanceObservingAttachmentProvider obscurableContentAttachmentLevel](PRUISPosterAppearanceObservingAttachmentProvider, "obscurableContentAttachmentLevel")}];
  v39 = v13;
  v14 = [v13 containsLevel:{+[PRUISPosterAppearanceObservingAttachmentProvider overlayContentAttachmentLevel](PRUISPosterAppearanceObservingAttachmentProvider, "overlayContentAttachmentLevel")}];
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v40 = v9;
  if (!v10 || ![v10 count])
  {
    LOBYTE(v16) = 0;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v16)
  {
    goto LABEL_16;
  }

  v34 = v10;
  v35 = self;
  v36 = v12;
  v37 = v8;
  v17 = 0;
  v18 = *v49;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v49 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v48 + 1) + 8 * i);
      v21 = _PRUISIncomingCallPosterSnapshotAttachmentTypeIdentifierIsPredefined(v20);
      v22 = _PRUISIncomingCallPosterSnapshotAttachmentTypeIdentifierWillIncludeName(v20);
      if (!v21)
      {
        v17 = 1;
LABEL_12:
        [v42 addObject:v20];
        continue;
      }

      if (([v20 isEqualToString:PRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel] & v41 | v14))
      {
        goto LABEL_12;
      }
    }

    v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  }

  while (v16);
  LOBYTE(v16) = v22 | v17;
  v12 = v36;
  v8 = v37;
  v9 = v40;
  v10 = v34;
  self = v35;
LABEL_16:

  if (v9)
  {
LABEL_19:
    objc_storeStrong(&self->_context, obj);
    if (v16)
    {
      v23 = [v9 identifierForSnapshotting];
      v24 = [v11 stringByAppendingFormat:@"-%@", v23];

      v11 = v24;
    }
  }

LABEL_21:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = v10;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      v29 = 0;
      v30 = v11;
      do
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v11 = [v30 stringByAppendingFormat:@"-%@", *(*(&v44 + 1) + 8 * v29)];

        ++v29;
        v30 = v11;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v27);
  }

  v31 = [v11 stringByAppendingFormat:@"_%@", &unk_1F4AE1E38];

  v43.receiver = self;
  v43.super_class = PRUISIncomingCallSnapshotDefinition;
  v32 = [(PRPosterSnapshotDefinition *)&v43 initWithUniqueIdentifier:v31 includeHeaderElements:0 includesComplications:0 levelSets:v12 isUnlocked:0 renderingContent:0 renderingMode:1 previewContent:1];

  return v32;
}

- (void)applySceneSettings:(id)a3
{
  context = self->_context;
  v5 = a3;
  [(PRUISIncomingCallPosterContext *)context horizontalTitleBoundingRect];
  [v5 pr_setHorizontalTitleBoundingRect:?];
  [(PRUISIncomingCallPosterContext *)self->_context verticalTitleBoundingRect];
  [v5 pr_setVerticalTitleBoundingRect:?];
  v6.receiver = self;
  v6.super_class = PRUISIncomingCallSnapshotDefinition;
  [(PRPosterSnapshotDefinition *)&v6 applySceneSettings:v5];
}

@end