@interface WFDialogContentListItem
- (BOOL)loadAltTextWithCompletion:(id)completion;
- (BOOL)loadImageWithSize:(CGSize)size completion:(id)completion;
- (BOOL)loadSubtitleWithCompletion:(id)completion;
- (WFDialogContentListItem)initWithCoder:(id)coder;
- (WFDialogContentListItem)initWithContentItem:(id)item encodedTypedValue:(id)value selected:(BOOL)selected serializedPossibleState:(id)state;
- (void)_loadContentItemWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForDisplayWithCompletionHandler:(id)handler;
@end

@implementation WFDialogContentListItem

- (BOOL)loadImageWithSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v21[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDialogContentListItem.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(WFDialogListItem *)self showingStaticContent])
  {
    image = [(WFDialogContentListItem *)self image];
    v10 = [image resizedImageWithSizeInPoints:{width, height}];

    v20 = *MEMORY[0x1E69E0FE8];
    v21[0] = &unk_1F4A9AC60;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    completionCopy[2](completionCopy, v10, v11);
    v12 = v10 != 0;
  }

  else
  {
    contentItem = [(WFDialogContentListItem *)self contentItem];
    if (contentItem)
    {
      v10 = contentItem;
      v12 = [contentItem getListThumbnail:completionCopy forSize:{width, height}];
    }

    else
    {
      v14 = getWFDialogLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v19 = "[WFDialogContentListItem loadImageWithSize:completion:]";
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Attempting to load image without loading the content item first. Please call [WFDialogListItem prepareForDisplayWithCompletionHandler:] first.", buf, 0xCu);
      }

      v10 = 0;
      v12 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)loadAltTextWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDialogContentListItem.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(WFDialogListItem *)self showingStaticContent])
  {
    v6 = 0;
  }

  else
  {
    contentItem = [(WFDialogContentListItem *)self contentItem];
    if (contentItem)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __53__WFDialogContentListItem_loadAltTextWithCompletion___block_invoke;
      v12[3] = &unk_1E837B0F0;
      v13 = completionCopy;
      v6 = [contentItem getListAltText:v12];
      v8 = v13;
    }

    else
    {
      v8 = getWFDialogLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = "[WFDialogContentListItem loadAltTextWithCompletion:]";
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Attempting to load alt text without loading the content item first. Please call [WFDialogListItem prepareForDisplayWithCompletionHandler:] first.", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)loadSubtitleWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDialogContentListItem.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(WFDialogListItem *)self showingStaticContent])
  {
    subtitle = [(WFDialogContentListItem *)self subtitle];
    completionCopy[2](completionCopy, subtitle);

    subtitle2 = [(WFDialogContentListItem *)self subtitle];
    v8 = [subtitle2 length] != 0;
LABEL_13:

    goto LABEL_14;
  }

  if (![(WFDialogContentListItem *)self hideSubtitle])
  {
    subtitle2 = [(WFDialogContentListItem *)self contentItem];
    if (subtitle2)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__WFDialogContentListItem_loadSubtitleWithCompletion___block_invoke;
      v13[3] = &unk_1E837B0C8;
      v15 = completionCopy;
      v14 = subtitle2;
      v8 = [v14 getListSubtitle:v13];

      v9 = v15;
    }

    else
    {
      v9 = getWFDialogLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v17 = "[WFDialogContentListItem loadSubtitleWithCompletion:]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Attempting to load subtitles without loading the content item first. Please call [WFDialogListItem prepareForDisplayWithCompletionHandler:] first.", buf, 0xCu);
      }

      v8 = 0;
    }

    goto LABEL_13;
  }

  v8 = 0;
LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void __54__WFDialogContentListItem_loadSubtitleWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() localizedTypeDescription];
    (*(v2 + 16))(v2, v6);
  }
}

- (void)_loadContentItemWithCompletion:(id)completion
{
  completionCopy = completion;
  archivedContentItem = [(WFDialogContentListItem *)self archivedContentItem];

  if (!archivedContentItem)
  {
    completionCopy[2](completionCopy, 0);
  }

  v6 = MEMORY[0x1E696ACD0];
  archivedContentItem2 = [(WFDialogContentListItem *)self archivedContentItem];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__WFDialogContentListItem__loadContentItemWithCompletion___block_invoke;
  v11[3] = &unk_1E837B0A0;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [v6 wf_securelyUnarchiveObjectWithData:archivedContentItem2 allowedClasses:v8 completionHandler:v11];
}

void __58__WFDialogContentListItem__loadContentItemWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setContentItem:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)prepareForDisplayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(WFDialogListItem *)self showingStaticContent]|| ([(WFDialogContentListItem *)self contentItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    handlerCopy[2](handlerCopy, self);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__WFDialogContentListItem_prepareForDisplayWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E837B078;
    v6[4] = self;
    v7 = handlerCopy;
    [(WFDialogContentListItem *)self _loadContentItemWithCompletion:v6];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentItem = [(WFDialogContentListItem *)self contentItem];

  if (contentItem)
  {
    v6 = MEMORY[0x1E696ACC8];
    contentItem2 = [(WFDialogContentListItem *)self contentItem];
    v8 = [v6 wf_securelyArchivedDataWithRootObject:contentItem2 deletionResponsibility:0];

    [(WFDialogContentListItem *)self setArchivedContentItem:v8];
  }

  identifier = [(WFDialogListItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  title = [(WFDialogListItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(WFDialogContentListItem *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  image = [(WFDialogContentListItem *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  [coderCopy encodeBool:-[WFDialogListItem selected](self forKey:{"selected"), @"selected"}];
  archivedContentItem = [(WFDialogContentListItem *)self archivedContentItem];
  [coderCopy encodeObject:archivedContentItem forKey:@"archivedContentItem"];

  [coderCopy encodeBool:-[WFDialogContentListItem hideSubtitle](self forKey:{"hideSubtitle"), @"hideSubtitle"}];
  serializedPossibleState = [(WFDialogListItem *)self serializedPossibleState];
  [coderCopy encodeObject:serializedPossibleState forKey:@"serializedPossibleState"];
}

- (WFDialogContentListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v20 = [coderCopy decodeBoolForKey:@"selected"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedContentItem"];
  v19 = [coderCopy decodeBoolForKey:@"hideSubtitle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"serializedPossibleState"];

  v15 = [(WFDialogListItem *)self initWithTitle:v21 subtitle:v22 identifier:v23 image:v4 selected:v20 hideSubtitle:v19 encodedTypedValue:v6 serializedPossibleState:v14];
  v16 = v15;
  if (v15)
  {
    [(WFDialogContentListItem *)v15 setArchivedContentItem:v5];
    v17 = v16;
  }

  return v16;
}

- (WFDialogContentListItem)initWithContentItem:(id)item encodedTypedValue:(id)value selected:(BOOL)selected serializedPossibleState:(id)state
{
  selectedCopy = selected;
  stateCopy = state;
  valueCopy = value;
  itemCopy = item;
  listItem = [itemCopy listItem];
  title = [listItem title];
  listItem2 = [itemCopy listItem];
  subtitle = [listItem2 subtitle];
  listItem3 = [itemCopy listItem];
  image = [listItem3 image];
  LOBYTE(v20) = 0;
  v18 = [(WFDialogContentListItem *)self initWithTitle:title subtitle:subtitle image:image selected:selectedCopy contentItem:itemCopy encodedTypedValue:valueCopy hideSubtitle:v20 serializedPossibleState:stateCopy];

  return v18;
}

@end