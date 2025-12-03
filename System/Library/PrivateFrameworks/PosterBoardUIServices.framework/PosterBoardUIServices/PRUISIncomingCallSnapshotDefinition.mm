@interface PRUISIncomingCallSnapshotDefinition
- (PRUISIncomingCallSnapshotDefinition)initWithBaseIdentifier:(id)identifier context:(id)context attachmentUniqueIdentifiers:(id)identifiers;
- (void)applySceneSettings:(id)settings;
@end

@implementation PRUISIncomingCallSnapshotDefinition

- (PRUISIncomingCallSnapshotDefinition)initWithBaseIdentifier:(id)identifier context:(id)context attachmentUniqueIdentifiers:(id)identifiers
{
  v54 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  obj = context;
  contextCopy = context;
  identifiersCopy = identifiers;
  v11 = [identifierCopy copy];
  v12 = _PRUISIncomingCallPosterSnapshotDefinitionLevelSetsForIdentifier(identifierCopy);
  firstObject = [v12 firstObject];
  v41 = [firstObject containsLevel:{+[PRUISPosterAppearanceObservingAttachmentProvider obscurableContentAttachmentLevel](PRUISPosterAppearanceObservingAttachmentProvider, "obscurableContentAttachmentLevel")}];
  v39 = firstObject;
  v14 = [firstObject containsLevel:{+[PRUISPosterAppearanceObservingAttachmentProvider overlayContentAttachmentLevel](PRUISPosterAppearanceObservingAttachmentProvider, "overlayContentAttachmentLevel")}];
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v40 = contextCopy;
  if (!identifiersCopy || ![identifiersCopy count])
  {
    LOBYTE(v16) = 0;
    if (!contextCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = identifiersCopy;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v16)
  {
    goto LABEL_16;
  }

  v34 = identifiersCopy;
  selfCopy = self;
  v36 = v12;
  v37 = identifierCopy;
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
  identifierCopy = v37;
  contextCopy = v40;
  identifiersCopy = v34;
  self = selfCopy;
LABEL_16:

  if (contextCopy)
  {
LABEL_19:
    objc_storeStrong(&self->_context, obj);
    if (v16)
    {
      identifierForSnapshotting = [contextCopy identifierForSnapshotting];
      v24 = [v11 stringByAppendingFormat:@"-%@", identifierForSnapshotting];

      v11 = v24;
    }
  }

LABEL_21:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = identifiersCopy;
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

- (void)applySceneSettings:(id)settings
{
  context = self->_context;
  settingsCopy = settings;
  [(PRUISIncomingCallPosterContext *)context horizontalTitleBoundingRect];
  [settingsCopy pr_setHorizontalTitleBoundingRect:?];
  [(PRUISIncomingCallPosterContext *)self->_context verticalTitleBoundingRect];
  [settingsCopy pr_setVerticalTitleBoundingRect:?];
  v6.receiver = self;
  v6.super_class = PRUISIncomingCallSnapshotDefinition;
  [(PRPosterSnapshotDefinition *)&v6 applySceneSettings:settingsCopy];
}

@end