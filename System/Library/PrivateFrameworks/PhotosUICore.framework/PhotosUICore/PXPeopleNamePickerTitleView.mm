@interface PXPeopleNamePickerTitleView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (PXPeopleNamePickerTitleView)initWithCoder:(id)coder;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame face:(id)face;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame person:(id)person;
- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame person:(id)person face:(id)face;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_updateFieldPlaceholder;
- (void)_updateFieldText;
- (void)dealloc;
- (void)finishEditing;
- (void)resetImages;
- (void)setLocalizedName:(id)name;
- (void)setNameFont:(id)font;
- (void)setPlaceholder:(id)placeholder;
- (void)setPlaceholderFont:(id)font;
@end

@implementation PXPeopleNamePickerTitleView

- (id)prepareForPhotoLibraryChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  fetchResults = [(PXPeopleNamePickerTitleView *)self fetchResults];
  v6 = [fetchResults countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(fetchResults);
        }

        v9 = [changeCopy changeDetailsForFetchResult:*(*(&v17 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          removedObjects = [v9 removedObjects];
          v12 = [removedObjects count];

          if (v12)
          {
            LODWORD(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [fetchResults countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  face = [(PXPeopleNamePickerTitleView *)self face];
  if (!face)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = [changeCopy changeDetailsForObject:face];
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
  placeholder = [(PXPeopleNamePickerTitleView *)self placeholder];
  v5 = placeholder;
  if (placeholder)
  {
    v6 = placeholder;
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  v11 = *MEMORY[0x1E69DB648];
  placeholderFont = [(PXPeopleNamePickerTitleView *)self placeholderFont];
  v12[0] = placeholderFont;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v3 initWithString:v6 attributes:v8];

  nameField = [(PXPeopleNamePickerTitleView *)self nameField];
  [nameField setAttributedPlaceholder:v9];
}

- (void)_updateFieldText
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  localizedName = [(PXPeopleNamePickerTitleView *)self localizedName];
  v5 = localizedName;
  if (localizedName)
  {
    v6 = localizedName;
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  v11 = *MEMORY[0x1E69DB648];
  nameFont = [(PXPeopleNamePickerTitleView *)self nameFont];
  v12[0] = nameFont;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v3 initWithString:v6 attributes:v8];

  nameField = [(PXPeopleNamePickerTitleView *)self nameField];
  [nameField setAttributedText:v9];
}

- (void)setPlaceholderFont:(id)font
{
  objc_storeStrong(&self->_placeholderFont, font);

  [(PXPeopleNamePickerTitleView *)self _updateFieldPlaceholder];
}

- (void)setNameFont:(id)font
{
  objc_storeStrong(&self->_nameFont, font);

  [(PXPeopleNamePickerTitleView *)self _updateFieldText];
}

- (void)setPlaceholder:(id)placeholder
{
  objc_storeStrong(&self->_placeholder, placeholder);

  [(PXPeopleNamePickerTitleView *)self _updateFieldPlaceholder];
}

- (void)setLocalizedName:(id)name
{
  objc_storeStrong(&self->_localizedName, name);

  [(PXPeopleNamePickerTitleView *)self _updateFieldText];
}

- (void)resetImages
{
  avatarView = [(PXPeopleNamePickerTitleView *)self avatarView];
  person = [(PXPeopleNamePickerTitleView *)self person];

  if (person)
  {
    person2 = [(PXPeopleNamePickerTitleView *)self person];
    [avatarView setPerson:person2];
  }

  else
  {
    face = [(PXPeopleNamePickerTitleView *)self face];

    if (!face)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:150 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    person2 = [(PXPeopleNamePickerTitleView *)self face];
    [avatarView setFace:person2];
  }
}

- (void)finishEditing
{
  [(PXPeopleNamePickerTitleView *)self _updateFieldText];
  nameField = [(PXPeopleNamePickerTitleView *)self nameField];
  [nameField resignFirstResponder];
}

- (void)dealloc
{
  person = [(PXPeopleNamePickerTitleView *)self person];
  if (person)
  {
    [(PXPeopleNamePickerTitleView *)self person];
  }

  else
  {
    [(PXPeopleNamePickerTitleView *)self face];
  }
  v4 = ;

  photoLibrary = [v4 photoLibrary];
  [photoLibrary px_unregisterChangeObserver:self];

  v6.receiver = self;
  v6.super_class = PXPeopleNamePickerTitleView;
  [(PXPeopleNamePickerTitleView *)&v6 dealloc];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  nameField = [(PXPeopleNamePickerTitleView *)self nameField];
  [nameField convertPoint:self fromView:{x, y}];
  v9 = v8;
  v11 = v10;

  nameField2 = [(PXPeopleNamePickerTitleView *)self nameField];
  [nameField2 bounds];
  v14.x = v9;
  v14.y = v11;
  LOBYTE(nameField) = CGRectContainsPoint(v15, v14);

  return nameField;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame person:(id)person face:(id)face
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v65[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  faceCopy = face;
  if (!(personCopy | faceCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:62 description:@"Both person and face are nil"];
  }

  v63.receiver = self;
  v63.super_class = PXPeopleNamePickerTitleView;
  height = [(PXPeopleNamePickerTitleView *)&v63 initWithFrame:x, y, width, height];
  if (height)
  {
    if (personCopy)
    {
      v15 = [PXPeopleUtilities titleStringForPerson:personCopy];
      v16 = &OBJC_IVAR___PXPeopleNamePickerTitleView__person;
      v17 = personCopy;
    }

    else
    {
      v16 = &OBJC_IVAR___PXPeopleNamePickerTitleView__face;
      v17 = faceCopy;
      v15 = &stru_1F1741150;
    }

    localizedName = height->_localizedName;
    height->_localizedName = &v15->isa;

    v19 = *v16;
    v20 = v17;
    v21 = *(&height->super.super.super.isa + v19);
    *(&height->super.super.super.isa + v19) = v20;

    v22 = objc_alloc(MEMORY[0x1E69DD0B0]);
    [(PXPeopleNamePickerTitleView *)height bounds];
    v23 = [v22 initWithFrame:?];
    [v23 setText:height->_localizedName];
    [v23 setBorderStyle:0];
    [v23 setReturnKeyType:9];
    [v23 setAutocorrectionType:1];
    [v23 setAutocapitalizationType:1];
    font = [v23 font];
    nameFont = height->_nameFont;
    height->_nameFont = font;

    objc_storeStrong(&height->_placeholderFont, height->_nameFont);
    objc_storeStrong(&height->_nameField, v23);
    [(PXPeopleNamePickerTitleView *)height addSubview:v23];
    [v23 setTextAlignment:4];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = objc_alloc_init(PXPeopleScalableAvatarView);
    [(PXPeopleScalableAvatarView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleScalableAvatarView *)v26 setAccessibilityIgnoresInvertColors:1];
    v61 = faceCopy;
    v62 = personCopy;
    if (personCopy)
    {
      [(PXPeopleScalableAvatarView *)v26 setPerson:personCopy];
      photoLibrary = [personCopy photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setFetchLimit:1];
      v29 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(personCopy, "detectionType")}];
      v65[0] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
      [librarySpecificFetchOptions setIncludedDetectionTypes:v30];

      [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
      v31 = [MEMORY[0x1E69787C8] px_fetchKeyFaceForPerson:personCopy options:librarySpecificFetchOptions];
      array = [MEMORY[0x1E695DF70] array];
      fetchResults = height->_fetchResults;
      height->_fetchResults = array;

      [(NSMutableArray *)height->_fetchResults addObject:v31];
      v60 = personCopy;
    }

    else
    {
      [(PXPeopleScalableAvatarView *)v26 setFace:faceCopy];
      v60 = faceCopy;
    }

    avatarView = height->_avatarView;
    height->_avatarView = v26;
    v35 = v26;

    [(PXPeopleNamePickerTitleView *)height addSubview:v35];
    v51 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(PXPeopleScalableAvatarView *)v35 leadingAnchor];
    leadingAnchor2 = [(PXPeopleNamePickerTitleView *)height leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v64[0] = v57;
    centerYAnchor = [(PXPeopleScalableAvatarView *)v35 centerYAnchor];
    centerYAnchor2 = [(PXPeopleNamePickerTitleView *)height centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[1] = v54;
    widthAnchor = [(PXPeopleScalableAvatarView *)v35 widthAnchor];
    v52 = [widthAnchor constraintEqualToConstant:50.0];
    v64[2] = v52;
    heightAnchor = [(PXPeopleScalableAvatarView *)v35 heightAnchor];
    v49 = [heightAnchor constraintEqualToConstant:50.0];
    v64[3] = v49;
    leadingAnchor3 = [v23 leadingAnchor];
    trailingAnchor = [(PXPeopleScalableAvatarView *)v35 trailingAnchor];
    v46 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v64[4] = v46;
    trailingAnchor2 = [v23 trailingAnchor];
    trailingAnchor3 = [(PXPeopleNamePickerTitleView *)height trailingAnchor];
    v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-10.0];
    v64[5] = v38;
    centerYAnchor3 = [v23 centerYAnchor];
    centerYAnchor4 = [(PXPeopleNamePickerTitleView *)height centerYAnchor];
    v41 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v64[6] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
    [v51 activateConstraints:v42];

    photoLibrary2 = [v60 photoLibrary];
    [photoLibrary2 px_registerChangeObserver:height];

    faceCopy = v61;
    personCopy = v62;
  }

  return height;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame face:(id)face
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  faceCopy = face;
  if (!faceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  height = [(PXPeopleNamePickerTitleView *)self initWithFrame:0 person:faceCopy face:x, y, width, height];

  return height;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame person:(id)person
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  height = [(PXPeopleNamePickerTitleView *)self initWithFrame:personCopy person:0 face:x, y, width, height];

  return height;
}

- (PXPeopleNamePickerTitleView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:46 description:@"invalid initializer"];

  return 0;
}

- (PXPeopleNamePickerTitleView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerTitleView.m" lineNumber:39 description:@"invalid initializer"];

  return 0;
}

@end