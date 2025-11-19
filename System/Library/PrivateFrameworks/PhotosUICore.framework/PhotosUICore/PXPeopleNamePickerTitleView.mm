@interface PXPeopleNamePickerTitleView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (PXPeopleNamePickerTitleView)initWithCoder:(id)a3;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3 face:(id)a4;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3 person:(id)a4;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3 person:(id)a4 face:(id)a5;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_updateFieldPlaceholder;
- (void)_updateFieldText;
- (void)dealloc;
- (void)finishEditing;
- (void)resetImages;
- (void)setLocalizedName:(id)a3;
- (void)setNameFont:(id)a3;
- (void)setPlaceholder:(id)a3;
- (void)setPlaceholderFont:(id)a3;
@end

@implementation PXPeopleNamePickerTitleView

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(PXPeopleNamePickerTitleView *)self fetchResults];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 changeDetailsForFetchResult:*(*(&v17 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 removedObjects];
          v12 = [v11 count];

          if (v12)
          {
            LODWORD(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = [(PXPeopleNamePickerTitleView *)self face];
  if (!v13)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = [v4 changeDetailsForObject:v13];
  if (v14)
  {
    LOBYTE(v6) = 1;
  }

  if (v6)
  {
LABEL_16:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PXPeopleNamePickerTitleView_prepareForPhotoLibraryChange___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_17:

  return 0;
}

- (void)_updateFieldPlaceholder
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  v4 = [(PXPeopleNamePickerTitleView *)self placeholder];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  v11 = *MEMORY[0x1E69DB648];
  v7 = [(PXPeopleNamePickerTitleView *)self placeholderFont];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v3 initWithString:v6 attributes:v8];

  v10 = [(PXPeopleNamePickerTitleView *)self nameField];
  [v10 setAttributedPlaceholder:v9];
}

- (void)_updateFieldText
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  v4 = [(PXPeopleNamePickerTitleView *)self localizedName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  v11 = *MEMORY[0x1E69DB648];
  v7 = [(PXPeopleNamePickerTitleView *)self nameFont];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v3 initWithString:v6 attributes:v8];

  v10 = [(PXPeopleNamePickerTitleView *)self nameField];
  [v10 setAttributedText:v9];
}

- (void)setPlaceholderFont:(id)a3
{
  objc_storeStrong(&self->_placeholderFont, a3);

  [(PXPeopleNamePickerTitleView *)self _updateFieldPlaceholder];
}

- (void)setNameFont:(id)a3
{
  objc_storeStrong(&self->_nameFont, a3);

  [(PXPeopleNamePickerTitleView *)self _updateFieldText];
}

- (void)setPlaceholder:(id)a3
{
  objc_storeStrong(&self->_placeholder, a3);

  [(PXPeopleNamePickerTitleView *)self _updateFieldPlaceholder];
}

- (void)setLocalizedName:(id)a3
{
  objc_storeStrong(&self->_localizedName, a3);

  [(PXPeopleNamePickerTitleView *)self _updateFieldText];
}

- (void)resetImages
{
  v8 = [(PXPeopleNamePickerTitleView *)self avatarView];
  v4 = [(PXPeopleNamePickerTitleView *)self person];

  if (v4)
  {
    v5 = [(PXPeopleNamePickerTitleView *)self person];
    [v8 setPerson:v5];
  }

  else
  {
    v6 = [(PXPeopleNamePickerTitleView *)self face];

    if (!v6)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:150 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v5 = [(PXPeopleNamePickerTitleView *)self face];
    [v8 setFace:v5];
  }
}

- (void)finishEditing
{
  [(PXPeopleNamePickerTitleView *)self _updateFieldText];
  v3 = [(PXPeopleNamePickerTitleView *)self nameField];
  [v3 resignFirstResponder];
}

- (void)dealloc
{
  v3 = [(PXPeopleNamePickerTitleView *)self person];
  if (v3)
  {
    [(PXPeopleNamePickerTitleView *)self person];
  }

  else
  {
    [(PXPeopleNamePickerTitleView *)self face];
  }
  v4 = ;

  v5 = [v4 photoLibrary];
  [v5 px_unregisterChangeObserver:self];

  v6.receiver = self;
  v6.super_class = PXPeopleNamePickerTitleView;
  [(PXPeopleNamePickerTitleView *)&v6 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(PXPeopleNamePickerTitleView *)self nameField];
  [v7 convertPoint:self fromView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(PXPeopleNamePickerTitleView *)self nameField];
  [v12 bounds];
  v14.x = v9;
  v14.y = v11;
  LOBYTE(v7) = CGRectContainsPoint(v15, v14);

  return v7;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3 person:(id)a4 face:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v65[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  if (!(v12 | v13))
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:62 description:@"Both person and face are nil"];
  }

  v63.receiver = self;
  v63.super_class = PXPeopleNamePickerTitleView;
  v14 = [(PXPeopleNamePickerTitleView *)&v63 initWithFrame:x, y, width, height];
  if (v14)
  {
    if (v12)
    {
      v15 = [PXPeopleUtilities titleStringForPerson:v12];
      v16 = &OBJC_IVAR___PXPeopleNamePickerTitleView__person;
      v17 = v12;
    }

    else
    {
      v16 = &OBJC_IVAR___PXPeopleNamePickerTitleView__face;
      v17 = v13;
      v15 = &stru_1F1741150;
    }

    localizedName = v14->_localizedName;
    v14->_localizedName = &v15->isa;

    v19 = *v16;
    v20 = v17;
    v21 = *(&v14->super.super.super.isa + v19);
    *(&v14->super.super.super.isa + v19) = v20;

    v22 = objc_alloc(MEMORY[0x1E69DD0B0]);
    [(PXPeopleNamePickerTitleView *)v14 bounds];
    v23 = [v22 initWithFrame:?];
    [v23 setText:v14->_localizedName];
    [v23 setBorderStyle:0];
    [v23 setReturnKeyType:9];
    [v23 setAutocorrectionType:1];
    [v23 setAutocapitalizationType:1];
    v24 = [v23 font];
    nameFont = v14->_nameFont;
    v14->_nameFont = v24;

    objc_storeStrong(&v14->_placeholderFont, v14->_nameFont);
    objc_storeStrong(&v14->_nameField, v23);
    [(PXPeopleNamePickerTitleView *)v14 addSubview:v23];
    [v23 setTextAlignment:4];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = objc_alloc_init(PXPeopleScalableAvatarView);
    [(PXPeopleScalableAvatarView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleScalableAvatarView *)v26 setAccessibilityIgnoresInvertColors:1];
    v61 = v13;
    v62 = v12;
    if (v12)
    {
      [(PXPeopleScalableAvatarView *)v26 setPerson:v12];
      v27 = [v12 photoLibrary];
      v28 = [v27 librarySpecificFetchOptions];

      [v28 setFetchLimit:1];
      v29 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v12, "detectionType")}];
      v65[0] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
      [v28 setIncludedDetectionTypes:v30];

      [v28 setIncludeTorsoAndFaceDetectionData:1];
      v31 = [MEMORY[0x1E69787C8] px_fetchKeyFaceForPerson:v12 options:v28];
      v32 = [MEMORY[0x1E695DF70] array];
      fetchResults = v14->_fetchResults;
      v14->_fetchResults = v32;

      [(NSMutableArray *)v14->_fetchResults addObject:v31];
      v60 = v12;
    }

    else
    {
      [(PXPeopleScalableAvatarView *)v26 setFace:v13];
      v60 = v13;
    }

    avatarView = v14->_avatarView;
    v14->_avatarView = v26;
    v35 = v26;

    [(PXPeopleNamePickerTitleView *)v14 addSubview:v35];
    v51 = MEMORY[0x1E696ACD8];
    v59 = [(PXPeopleScalableAvatarView *)v35 leadingAnchor];
    v58 = [(PXPeopleNamePickerTitleView *)v14 leadingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:10.0];
    v64[0] = v57;
    v56 = [(PXPeopleScalableAvatarView *)v35 centerYAnchor];
    v55 = [(PXPeopleNamePickerTitleView *)v14 centerYAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v64[1] = v54;
    v53 = [(PXPeopleScalableAvatarView *)v35 widthAnchor];
    v52 = [v53 constraintEqualToConstant:50.0];
    v64[2] = v52;
    v50 = [(PXPeopleScalableAvatarView *)v35 heightAnchor];
    v49 = [v50 constraintEqualToConstant:50.0];
    v64[3] = v49;
    v48 = [v23 leadingAnchor];
    v47 = [(PXPeopleScalableAvatarView *)v35 trailingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:10.0];
    v64[4] = v46;
    v36 = [v23 trailingAnchor];
    v37 = [(PXPeopleNamePickerTitleView *)v14 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-10.0];
    v64[5] = v38;
    v39 = [v23 centerYAnchor];
    v40 = [(PXPeopleNamePickerTitleView *)v14 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v64[6] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
    [v51 activateConstraints:v42];

    v43 = [v60 photoLibrary];
    [v43 px_registerChangeObserver:v14];

    v13 = v61;
    v12 = v62;
  }

  return v14;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3 face:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v11 = [(PXPeopleNamePickerTitleView *)self initWithFrame:0 person:v10 face:x, y, width, height];

  return v11;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3 person:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v11 = [(PXPeopleNamePickerTitleView *)self initWithFrame:v10 person:0 face:x, y, width, height];

  return v11;
}

- (PXPeopleNamePickerTitleView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:46 description:@"invalid initializer"];

  return 0;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:39 description:@"invalid initializer"];

  return 0;
}

@end