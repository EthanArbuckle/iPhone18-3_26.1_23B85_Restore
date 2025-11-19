@interface WFDialogContentListItem
- (BOOL)loadAltTextWithCompletion:(id)a3;
- (BOOL)loadImageWithSize:(CGSize)a3 completion:(id)a4;
- (BOOL)loadSubtitleWithCompletion:(id)a3;
- (WFDialogContentListItem)initWithCoder:(id)a3;
- (WFDialogContentListItem)initWithContentItem:(id)a3 encodedTypedValue:(id)a4 selected:(BOOL)a5 serializedPossibleState:(id)a6;
- (void)_loadContentItemWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForDisplayWithCompletionHandler:(id)a3;
@end

@implementation WFDialogContentListItem

- (BOOL)loadImageWithSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!v8)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFDialogContentListItem.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(WFDialogListItem *)self showingStaticContent])
  {
    v9 = [(WFDialogContentListItem *)self image];
    v10 = [v9 resizedImageWithSizeInPoints:{width, height}];

    v20 = *MEMORY[0x1E69E0FE8];
    v21[0] = &unk_1F4A9AC60;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v8[2](v8, v10, v11);
    v12 = v10 != 0;
  }

  else
  {
    v13 = [(WFDialogContentListItem *)self contentItem];
    if (v13)
    {
      v10 = v13;
      v12 = [v13 getListThumbnail:v8 forSize:{width, height}];
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

- (BOOL)loadAltTextWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFDialogContentListItem.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(WFDialogListItem *)self showingStaticContent])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(WFDialogContentListItem *)self contentItem];
    if (v7)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __53__WFDialogContentListItem_loadAltTextWithCompletion___block_invoke;
      v12[3] = &unk_1E837B0F0;
      v13 = v5;
      v6 = [v7 getListAltText:v12];
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

- (BOOL)loadSubtitleWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFDialogContentListItem.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(WFDialogListItem *)self showingStaticContent])
  {
    v6 = [(WFDialogContentListItem *)self subtitle];
    v5[2](v5, v6);

    v7 = [(WFDialogContentListItem *)self subtitle];
    v8 = [v7 length] != 0;
LABEL_13:

    goto LABEL_14;
  }

  if (![(WFDialogContentListItem *)self hideSubtitle])
  {
    v7 = [(WFDialogContentListItem *)self contentItem];
    if (v7)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__WFDialogContentListItem_loadSubtitleWithCompletion___block_invoke;
      v13[3] = &unk_1E837B0C8;
      v15 = v5;
      v14 = v7;
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

- (void)_loadContentItemWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogContentListItem *)self archivedContentItem];

  if (!v5)
  {
    v4[2](v4, 0);
  }

  v6 = MEMORY[0x1E696ACD0];
  v7 = [(WFDialogContentListItem *)self archivedContentItem];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__WFDialogContentListItem__loadContentItemWithCompletion___block_invoke;
  v11[3] = &unk_1E837B0A0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  v10 = [v6 wf_securelyUnarchiveObjectWithData:v7 allowedClasses:v8 completionHandler:v11];
}

void __58__WFDialogContentListItem__loadContentItemWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setContentItem:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)prepareForDisplayWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(WFDialogListItem *)self showingStaticContent]|| ([(WFDialogContentListItem *)self contentItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v4[2](v4, self);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__WFDialogContentListItem_prepareForDisplayWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E837B078;
    v6[4] = self;
    v7 = v4;
    [(WFDialogContentListItem *)self _loadContentItemWithCompletion:v6];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogContentListItem *)self contentItem];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACC8];
    v7 = [(WFDialogContentListItem *)self contentItem];
    v8 = [v6 wf_securelyArchivedDataWithRootObject:v7 deletionResponsibility:0];

    [(WFDialogContentListItem *)self setArchivedContentItem:v8];
  }

  v9 = [(WFDialogListItem *)self identifier];
  [v4 encodeObject:v9 forKey:@"identifier"];

  v10 = [(WFDialogListItem *)self title];
  [v4 encodeObject:v10 forKey:@"title"];

  v11 = [(WFDialogContentListItem *)self subtitle];
  [v4 encodeObject:v11 forKey:@"subtitle"];

  v12 = [(WFDialogContentListItem *)self image];
  [v4 encodeObject:v12 forKey:@"image"];

  [v4 encodeBool:-[WFDialogListItem selected](self forKey:{"selected"), @"selected"}];
  v13 = [(WFDialogContentListItem *)self archivedContentItem];
  [v4 encodeObject:v13 forKey:@"archivedContentItem"];

  [v4 encodeBool:-[WFDialogContentListItem hideSubtitle](self forKey:{"hideSubtitle"), @"hideSubtitle"}];
  v14 = [(WFDialogListItem *)self serializedPossibleState];
  [v4 encodeObject:v14 forKey:@"serializedPossibleState"];
}

- (WFDialogContentListItem)initWithCoder:(id)a3
{
  v3 = a3;
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v20 = [v3 decodeBoolForKey:@"selected"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"archivedContentItem"];
  v19 = [v3 decodeBoolForKey:@"hideSubtitle"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"serializedPossibleState"];

  v15 = [(WFDialogListItem *)self initWithTitle:v21 subtitle:v22 identifier:v23 image:v4 selected:v20 hideSubtitle:v19 encodedTypedValue:v6 serializedPossibleState:v14];
  v16 = v15;
  if (v15)
  {
    [(WFDialogContentListItem *)v15 setArchivedContentItem:v5];
    v17 = v16;
  }

  return v16;
}

- (WFDialogContentListItem)initWithContentItem:(id)a3 encodedTypedValue:(id)a4 selected:(BOOL)a5 serializedPossibleState:(id)a6
{
  v21 = a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [v11 listItem];
  v13 = [v12 title];
  v14 = [v11 listItem];
  v15 = [v14 subtitle];
  v16 = [v11 listItem];
  v17 = [v16 image];
  LOBYTE(v20) = 0;
  v18 = [(WFDialogContentListItem *)self initWithTitle:v13 subtitle:v15 image:v17 selected:v21 contentItem:v11 encodedTypedValue:v10 hideSubtitle:v20 serializedPossibleState:v9];

  return v18;
}

@end