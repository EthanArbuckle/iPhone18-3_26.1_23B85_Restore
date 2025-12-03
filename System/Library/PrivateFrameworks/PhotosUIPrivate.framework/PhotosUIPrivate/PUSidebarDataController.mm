@interface PUSidebarDataController
+ (id)_actionManagerWithActionType:(id)type;
+ (id)_singleItemDataSourceManagerForCollection:(id)collection context:(id)context;
+ (id)fromMyMacAlbumsDataSectionManagerWithPhotoLibrary:(id)library context:(id)context;
+ (id)mediaTypesDataSectionManagerWithPhotoLibrary:(id)library context:(id)context;
+ (id)myAlbumsDataSectionManagerForPhotoLibrary:(id)library context:(id)context hideAdd:(BOOL)add;
+ (id)photosDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)pickerSectionManagerForLibrary:(id)library allPhotosCollection:(id)collection context:(id)context;
+ (id)sharedAlbumsDataSectionManagerWithPhotoLibrary:(id)library context:(id)context hideAdd:(BOOL)add;
+ (id)utilitiesDataSectionManagerWithPhotoLibrary:(id)library context:(id)context options:(unint64_t)options;
+ (void)_prepareSectionConfiguration:(id)configuration assetsFilterPredicate:(id)predicate;
- (PHAssetCollection)primaryPhotosCollection;
- (UIImage)emptyAlbumPlaceholderImage;
- (id)_makeLegacySectionManagers;
- (id)_makeSectionManagers;
- (id)backedPlusButtonImage;
- (id)makeSectionManagers;
- (id)sidebarCustomSymbolImageWithName:(id)name symbolColor:(id)color scale:(double)scale;
- (int64_t)requestImageForItem:(id)item parentItem:(id)parentItem completion:(id)completion;
- (void)_addSectionManagerTo:(id)to enablementItem:(int64_t)item signpostName:(const char *)name provider:(id)provider;
- (void)appearanceDidChange;
@end

@implementation PUSidebarDataController

- (id)sidebarCustomSymbolImageWithName:(id)name symbolColor:(id)color scale:(double)scale
{
  v6 = MEMORY[0x1E69DCAD8];
  v7 = scale * 100.0;
  colorCopy = color;
  nameCopy = name;
  v10 = [v6 configurationWithPointSize:5 weight:v7];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy withConfiguration:v10];

  systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
  v13 = [v11 px_tintedImageWithColor:colorCopy];

  v14 = [MEMORY[0x1E69DCAB8] pu_centeredImage:v13 withBackgroundColor:systemGray5Color size:{100.0, 100.0}];

  return v14;
}

- (id)backedPlusButtonImage
{
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v4 = [(PUSidebarDataController *)self sidebarCustomSymbolImageWithName:@"plus" symbolColor:systemBlueColor scale:0.6];

  return v4;
}

- (UIImage)emptyAlbumPlaceholderImage
{
  emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  if (!emptyAlbumPlaceholderImage)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v5 = [(PUSidebarDataController *)self sidebarCustomSymbolImageWithName:@"photo.on.rectangle" symbolColor:tertiaryLabelColor scale:0.5];
    v6 = self->_emptyAlbumPlaceholderImage;
    self->_emptyAlbumPlaceholderImage = v5;

    emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  }

  return emptyAlbumPlaceholderImage;
}

- (PHAssetCollection)primaryPhotosCollection
{
  photoLibrary = [(PXSidebarDataController *)self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];

  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  if ([mEMORY[0x1E69C3650] enableTabs])
  {
    [px_virtualCollections photosCollection];
  }

  else
  {
    [px_virtualCollections momentsCollection];
  }
  v5 = ;

  return v5;
}

- (int64_t)requestImageForItem:(id)item parentItem:(id)parentItem completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  parentItemCopy = parentItem;
  completionCopy = completion;
  v10 = PLSidebarGetLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  v43 = v11 - 1;
  if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v17 = v13;
  }

  else
  {
    if (os_signpost_enabled(v12))
    {
      identifier = [itemCopy identifier];
      *buf = 138543362;
      v58 = identifier;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PUSidebarDataController.requestImageForItem_parentItem_completion_.sync", "itemIdentifier: %{public}@", buf, 0xCu);
    }

    v15 = v13;
    if (os_signpost_enabled(v15))
    {
      identifier2 = [itemCopy identifier];
      *buf = 138543362;
      v58 = identifier2;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PUSidebarDataController.requestImageForItem_parentItem_completion_.async", "itemIdentifier: %{public}@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke;
  aBlock[3] = &unk_1E7B7FE38;
  v18 = v13;
  v54 = v18;
  v56 = v11;
  v19 = completionCopy;
  v55 = v19;
  v20 = _Block_copy(aBlock);
  v21 = *MEMORY[0x1E69C4150];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke_262;
  v50[3] = &unk_1E7B7FE60;
  v22 = itemCopy;
  v51 = v22;
  selfCopy = self;
  v23 = _Block_copy(v50);
  v24 = +[PUTabbedLibrarySettings sharedInstance];
  sidebarSymbolImagesOnly = [v24 sidebarSymbolImagesOnly];

  if (sidebarSymbolImagesOnly)
  {
    v26 = v23[2](v23);
    v20[2](v20, v26);

    v27 = v18;
    collection = v27;
    if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, collection, OS_SIGNPOST_INTERVAL_END, v11, "PUSidebarDataController.requestImageForItem_parentItem_completion_.sync", "", buf, 2u);
    }
  }

  else
  {
    collection = [v22 collection];
    if (parentItemCopy)
    {
      v29 = [(PXSidebarDataController *)self dataSectionManagerForItem:?];
    }

    else
    {
      v29 = 0;
    }

    v42 = v29;
    if (![collection px_isFolder]|| ([collection isTransient]& 1) != 0 || ([collection px_isTopLevelFolder]& 1) != 0)
    {
      v30 = [v29 auxiliaryObjectForKey:*MEMORY[0x1E69C40F0] dataSectionObject:v22 hintIndex:0x7FFFFFFFFFFFFFFFLL];
      if (v30)
      {
        imageLoader = [(PXSidebarDataController *)self imageLoader];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke_2;
        v45[3] = &unk_1E7B7FEB0;
        v46 = v20;
        v47 = v23;
        v21 = [imageLoader requestImageForAsset:v30 pixelSize:v45 completion:{100.0, 100.0}];

        v32 = v46;
      }

      else
      {
        v32 = v23[2](v23);
        v20[2](v20, v32);
      }
    }

    else
    {
      v33 = [v29 auxiliaryObjectForKey:*MEMORY[0x1E69C40D8] dataSectionObject:v22 hintIndex:0x7FFFFFFFFFFFFFFFLL];
      v34 = v33;
      v35 = MEMORY[0x1E695E0F0];
      if (v33)
      {
        v35 = v33;
      }

      v36 = v35;

      v30 = [MEMORY[0x1E69DD1B8] traitCollectionWithDisplayScale:2.0];
      imageLoader2 = [(PXSidebarDataController *)self imageLoader];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke_266;
      v48[3] = &unk_1E7B7FE88;
      v49 = v20;
      v37 = v36;
      v21 = [imageLoader2 requestFolderImageWithAssets:v36 imageSize:v30 traitCollection:v48 completion:{100.0, 100.0}];

      v32 = v49;
    }

    v38 = v18;
    v39 = v38;
    if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v39, OS_SIGNPOST_INTERVAL_END, v11, "PUSidebarDataController.requestImageForItem_parentItem_completion_.sync", "", buf, 2u);
    }
  }

  return v21;
}

void __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PUSidebarDataController.requestImageForItem_parentItem_completion_.async", "", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

id __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke_262(uint64_t a1)
{
  v2 = [*(a1 + 32) glyphImageName];
  if ([v2 isEqual:*MEMORY[0x1E69C40E8]])
  {
    v3 = [*(a1 + 40) backedPlusButtonImage];
    goto LABEL_5;
  }

  if ([v2 isEqual:*MEMORY[0x1E69C40E0]])
  {
    v3 = [*(a1 + 40) emptyAlbumPlaceholderImage];
LABEL_5:
    v4 = v3;
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v4)
  {
    v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v2];
  }

LABEL_10:

  return v4;
}

void __69__PUSidebarDataController_requestImageForItem_parentItem_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = (*(*(a1 + 40) + 16))();
    (*(v2 + 16))(v2, v5);
  }
}

- (void)appearanceDidChange
{
  v4.receiver = self;
  v4.super_class = PUSidebarDataController;
  [(PXSidebarDataController *)&v4 appearanceDidChange];
  emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  self->_emptyAlbumPlaceholderImage = 0;
}

- (id)_makeLegacySectionManagers
{
  v100[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PXSidebarDataController *)self photoLibrary];
  context = [(PXSidebarDataController *)self context];
  options = [(PXSidebarDataController *)self options];
  options2 = [(PXSidebarDataController *)self options];
  options3 = [(PXSidebarDataController *)self options];
  v8 = PLSidebarGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  v55 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PUSidebarDataController.makeSectionManagers", "", buf, 2u);
  }

  spid = v9;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke;
  aBlock[3] = &unk_1E7B7FCD0;
  v13 = v11;
  v97 = v13;
  v14 = v12;
  v98 = v14;
  v58 = _Block_copy(aBlock);
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_224;
  v91[3] = &unk_1E7B7FCF8;
  v15 = v13;
  v92 = v15;
  selfCopy = self;
  v16 = context;
  v94 = v16;
  v17 = v14;
  v95 = v17;
  v57 = _Block_copy(v91);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_226;
  v86[3] = &unk_1E7B7FD20;
  v54 = v15;
  v87 = v54;
  selfCopy2 = self;
  v52 = v16;
  v89 = v52;
  v56 = v17;
  v90 = v56;
  v18 = _Block_copy(v86);
  px_virtualCollections = [photoLibrary px_virtualCollections];
  momentsCollection = [px_virtualCollections momentsCollection];
  v18[2](v18, "photos", momentsCollection, 0);

  pickerAllPhotosVirtualCollection = [(PXSidebarDataController *)self pickerAllPhotosVirtualCollection];

  if (pickerAllPhotosVirtualCollection)
  {
    pickerAllPhotosVirtualCollection2 = [(PXSidebarDataController *)self pickerAllPhotosVirtualCollection];
    v18[2](v18, "all photos", pickerAllPhotosVirtualCollection2, 18);
  }

  v53 = (options >> 1) & 1;
  v23 = (options2 >> 2) & 1;
  v24 = (options3 >> 4) & 1;
  v25 = [photoLibrary px_assetCollectionForSmartAlbumWithSubtype:203];
  v18[2](v18, "favorites", v25, 13);

  eventsCollection = [px_virtualCollections eventsCollection];
  v18[2](v18, "events", eventsCollection, 9);

  peopleCollection = [px_virtualCollections peopleCollection];
  v18[2](v18, "people", peopleCollection, 17);

  memoriesCollection = [px_virtualCollections memoriesCollection];
  v18[2](v18, "memories", memoriesCollection, 1);

  tripsCollection = [px_virtualCollections tripsCollection];
  v18[2](v18, "trips", tripsCollection, 8);

  featuredPhotosCollection = [px_virtualCollections featuredPhotosCollection];
  v18[2](v18, "featured", featuredPhotosCollection, 11);

  wallpaperSuggestionsCollection = [px_virtualCollections wallpaperSuggestionsCollection];
  v18[2](v18, "wallpaper", wallpaperSuggestionsCollection, 10);

  if (([(PXSidebarDataController *)self options]& 4) == 0)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_238;
    v84[3] = &unk_1E7B7FD48;
    v84[4] = self;
    v85 = photoLibrary;
    v58[2](v58, "devices", v84);
  }

  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_2;
  v80[3] = &unk_1E7B7FD70;
  v32 = photoLibrary;
  v81 = v32;
  v33 = px_virtualCollections;
  v82 = v33;
  v83 = @"root";
  v57[2](v57, "bookmarks", 12, v80);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_3;
  v74[3] = &unk_1E7B7FD98;
  v34 = v32;
  v75 = v34;
  v76 = @"root";
  v78 = v23;
  v79 = v24;
  v35 = v33;
  v77 = v35;
  v58[2](v58, "utility", v74);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_4;
  v71[3] = &unk_1E7B7FDC0;
  v71[4] = self;
  v36 = v34;
  v72 = v36;
  v37 = v52;
  v73 = v37;
  v58[2](v58, "fromMyMac", v71);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_5;
  v67[3] = &unk_1E7B7FD70;
  v38 = v36;
  v68 = v38;
  v69 = @"root";
  v39 = v35;
  v70 = v39;
  v58[2](v58, "mediaTypes", v67);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_6;
  v63[3] = &unk_1E7B7FCA8;
  v63[4] = self;
  v40 = v38;
  v64 = v40;
  v41 = v37;
  v65 = v41;
  v66 = v53;
  v58[2](v58, "myAlbums", v63);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_7;
  v59[3] = &unk_1E7B7FDE8;
  v59[4] = self;
  v42 = v40;
  v60 = v42;
  v43 = v41;
  v61 = v43;
  v62 = v53;
  v57[2](v57, "shared", 6, v59);
  v44 = [objc_alloc(MEMORY[0x1E69C3750]) initWithChildDataSectionManagers:v56];
  v45 = objc_alloc(MEMORY[0x1E69C3710]);
  v46 = [v45 initWithIdentifier:*MEMORY[0x1E69C40F8] displayInline:1];
  [v44 setOutlineObject:v46];

  v47 = v54;
  v48 = v47;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v48, OS_SIGNPOST_INTERVAL_END, spid, "PUSidebarDataController.makeSectionManagers", "", buf, 2u);
  }

  v100[0] = v44;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:1];

  return v49;
}

void __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = os_signpost_id_generate(v5);
  v8 = *(a1 + 32);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = 136315138;
    v14 = a2;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PUSidebarDataController.makeSectionManagers.item", "item=%s", &v13, 0xCu);
  }

  v10 = v6[2](v6);

  v11 = *(a1 + 32);
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v12, OS_SIGNPOST_INTERVAL_END, v7, "PUSidebarDataController.makeSectionManagers.item", "", &v13, 2u);
  }

  if (v10)
  {
    [*(a1 + 40) addObject:v10];
  }
}

void __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = os_signpost_id_generate(*(a1 + 32));
  v9 = *(a1 + 32);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v16 = 136315138;
    v17 = a2;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PUSidebarDataController.makeSectionManagers.item", "item=%s", &v16, 0xCu);
  }

  v11 = [objc_opt_class() _singleItemDataSourceManagerForCollection:0 context:*(a1 + 48)];
  v12 = [*(a1 + 48) enablementProvider];
  [v12 configureEnablementOfSectionManager:v11 enablementItem:a3];

  v13 = 0;
  if ([v11 isEnabled])
  {
    v13 = v7[2](v7);
  }

  v14 = *(a1 + 32);
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PUSidebarDataController.makeSectionManagers.item", "", &v16, 2u);
  }

  if (v13)
  {
    [*(a1 + 56) addObject:v13];
  }
}

void __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_226(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  v8 = a3;
  v9 = os_signpost_id_generate(v7);
  v10 = a1[4];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v16 = 136315138;
    v17 = a2;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PUSidebarDataController.makeSectionManagers.item", "item=%s", &v16, 0xCu);
  }

  v12 = [objc_opt_class() _singleItemDataSourceManagerForCollection:v8 context:a1[6]];

  v13 = [a1[6] enablementProvider];
  [v13 configureEnablementOfSectionManager:v12 enablementItem:a4];

  v14 = a1[4];
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v15, OS_SIGNPOST_INTERVAL_END, v9, "PUSidebarDataController.makeSectionManagers.item", "", &v16, 2u);
  }

  if ([v12 isEnabled])
  {
    [a1[7] addObject:v12];
  }
}

uint64_t __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_238(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);

  return [v2 devicesDataSectionManagerForLibrary:v3];
}

id __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C3A38] makeBookmarksDataSectionManagerWithLibrary:*(a1 + 32) topLevelIdentifier:@"bookmarks"];
  v3 = objc_alloc(MEMORY[0x1E69C36F8]);
  v4 = [*(a1 + 40) bookmarksCollectionList];
  v5 = [v3 initWithCollectionList:v4 accessoryTitle:0 reorderable:0 topLevelIdentifier:*(a1 + 48)];
  [v2 setOutlineObject:v5];

  return v2;
}

id __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C3A38] makeUtilitiesDataSectionManagerWithLibrary:*(a1 + 32) topLevelIdentifier:*(a1 + 40) forPicker:*(a1 + 56) excludeHiddenAlbum:*(a1 + 57)];
  v3 = objc_alloc(MEMORY[0x1E69C36F8]);
  v4 = [*(a1 + 48) utilitiesCollectionList];
  v5 = [v3 initWithCollectionList:v4 accessoryTitle:0 reorderable:0 topLevelIdentifier:*(a1 + 40)];
  [v2 setOutlineObject:v5];

  return v2;
}

uint64_t __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 fromMyMacAlbumsDataSectionManagerWithPhotoLibrary:v3 context:v4];
}

id __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C3A38] makeMediaTypesDataSectionManagerWithLibrary:*(a1 + 32) topLevelIdentifier:*(a1 + 40)];
  v3 = objc_alloc(MEMORY[0x1E69C36F8]);
  v4 = [*(a1 + 48) mediaTypesCollectionList];
  v5 = [v3 initWithCollectionList:v4 accessoryTitle:0 reorderable:0 topLevelIdentifier:*(a1 + 40)];
  [v2 setOutlineObject:v5];

  return v2;
}

uint64_t __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_6(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 myAlbumsDataSectionManagerForPhotoLibrary:v3 context:v4 hideAdd:v5];
}

uint64_t __53__PUSidebarDataController__makeLegacySectionManagers__block_invoke_7(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 sharedAlbumsDataSectionManagerWithPhotoLibrary:v3 context:v4 hideAdd:v5];
}

- (void)_addSectionManagerTo:(id)to enablementItem:(int64_t)item signpostName:(const char *)name provider:(id)provider
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  providerCopy = provider;
  v12 = PLSidebarGetLog();
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v22 = 136315138;
    nameCopy = name;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PUSidebarDataController.makeSectionManagers.item", "item=%s", &v22, 0xCu);
  }

  context = [(PXSidebarDataController *)self context];
  v17 = [objc_opt_class() _singleItemDataSourceManagerForCollection:0 context:context];
  enablementProvider = [context enablementProvider];
  [enablementProvider configureEnablementOfSectionManager:v17 enablementItem:item];

  v19 = 0;
  if ([v17 isEnabled])
  {
    v19 = providerCopy[2](providerCopy);
  }

  v20 = v15;
  v21 = v20;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v21, OS_SIGNPOST_INTERVAL_END, v13, "PUSidebarDataController.makeSectionManagers.item", "", &v22, 2u);
  }

  if (v19)
  {
    [toCopy addObject:v19];
  }
}

- (id)_makeSectionManagers
{
  photoLibrary = [(PXSidebarDataController *)self photoLibrary];
  context = [(PXSidebarDataController *)self context];
  options = [(PXSidebarDataController *)self options];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  pickerAllPhotosVirtualCollection = [(PXSidebarDataController *)self pickerAllPhotosVirtualCollection];
  v8 = objc_opt_class();
  if (pickerAllPhotosVirtualCollection)
  {
    [v8 pickerSectionManagerForLibrary:photoLibrary allPhotosCollection:pickerAllPhotosVirtualCollection context:context];
  }

  else
  {
    v9 = [v8 photosDataSectionManagerForLibrary:photoLibrary context:context];
    [v6 addObject:v9];

    [objc_opt_class() devicesDataSectionManagerForLibrary:photoLibrary];
  }
  v10 = ;
  [v6 addObject:v10];

  v11 = [objc_opt_class() bookmarksDataSectionManagerForLibrary:photoLibrary];
  [v6 addObject:v11];

  v12 = (options >> 1) & 1;
  v13 = [objc_opt_class() myAlbumsDataSectionManagerForPhotoLibrary:photoLibrary context:context hideAdd:v12];
  [v6 addObject:v13];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __47__PUSidebarDataController__makeSectionManagers__block_invoke;
  v23 = &unk_1E7B7FCA8;
  selfCopy = self;
  v25 = photoLibrary;
  v26 = context;
  v27 = v12;
  v14 = context;
  v15 = photoLibrary;
  [(PUSidebarDataController *)self _addSectionManagerTo:v6 enablementItem:6 signpostName:"shared" provider:&v20];
  v16 = [objc_opt_class() fromMyMacAlbumsDataSectionManagerWithPhotoLibrary:v15 context:{v14, v20, v21, v22, v23, selfCopy}];
  [v6 addObject:v16];

  v17 = [objc_opt_class() mediaTypesDataSectionManagerWithPhotoLibrary:v15 context:v14];
  [v6 addObject:v17];

  v18 = [objc_opt_class() utilitiesDataSectionManagerWithPhotoLibrary:v15 context:v14 options:{-[PXSidebarDataController options](self, "options")}];
  [v6 addObject:v18];

  return v6;
}

uint64_t __47__PUSidebarDataController__makeSectionManagers__block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 sharedAlbumsDataSectionManagerWithPhotoLibrary:v3 context:v4 hideAdd:v5];
}

- (id)makeSectionManagers
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    [(PUSidebarDataController *)self _makeSectionManagers];
  }

  else
  {
    [(PUSidebarDataController *)self _makeLegacySectionManagers];
  }
  v3 = ;

  return v3;
}

+ (void)_prepareSectionConfiguration:(id)configuration assetsFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  configurationCopy = configuration;
  v7 = +[PUTabbedLibrarySettings sharedInstance];
  [configurationCopy setSimulateNonIncrementalChanges:{objc_msgSend(v7, "sidebarSimulateNonIncrementalChanges")}];
  [configurationCopy setPausedChangeDetailsBufferLength:{objc_msgSend(v7, "sidebarPausedChangeDetailsBufferLength")}];
  [configurationCopy setAssetsFilterPredicate:predicateCopy];
}

+ (id)fromMyMacAlbumsDataSectionManagerWithPhotoLibrary:(id)library context:(id)context
{
  v44[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  contextCopy = context;
  v8 = PLSidebarGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PUSidebarDataController.makeSectionManagers.item", "item=fromMyMac, subItem=albumsFolder", buf, 2u);
  }

  px_virtualCollections = [libraryCopy px_virtualCollections];
  rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];

  v14 = [MEMORY[0x1E69C3700] configurationWithCollectionList:rootAlbumCollectionList];
  assetsFilterPredicate = [contextCopy assetsFilterPredicate];

  [self _prepareSectionConfiguration:v14 assetsFilterPredicate:assetsFilterPredicate];
  [v14 setIncludeKeyAssetFetches:1];
  [v14 setShowSyncedFromMacAlbums:1];
  [v14 setSkipAssetFetches:1];
  [v14 setSkipAssetCountFetches:1];
  v16 = [objc_alloc(MEMORY[0x1E69C3708]) initWithConfiguration:v14 topLevelIdentifier:0];
  v17 = v11;
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v18, OS_SIGNPOST_INTERVAL_END, v9, "PUSidebarDataController.makeSectionManagers.item", "", buf, 2u);
  }

  v19 = objc_alloc(MEMORY[0x1E69C3A70]);
  v44[0] = v16;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v21 = [v19 initWithChildDataSectionManagers:v20];

  px_virtualCollections2 = [libraryCopy px_virtualCollections];
  macSyncedAlbumsCollectionList = [px_virtualCollections2 macSyncedAlbumsCollectionList];

  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  enableSidebarHeaderSelection = [mEMORY[0x1E69C3650] enableSidebarHeaderSelection];

  if (enableSidebarHeaderSelection)
  {
    [v21 setAlwaysContainsObjects:1];
    transientIdentifier = [macSyncedAlbumsCollectionList transientIdentifier];
    v27 = transientIdentifier;
    if (transientIdentifier)
    {
      localIdentifier = transientIdentifier;
    }

    else
    {
      localIdentifier = [macSyncedAlbumsCollectionList localIdentifier];
    }

    v29 = localIdentifier;

    v30 = [objc_alloc(MEMORY[0x1E69C36F8]) initWithCollectionList:macSyncedAlbumsCollectionList accessoryTitle:0 reorderable:0 topLevelIdentifier:v29];
    [v21 setOutlineObject:v30];
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:macSyncedAlbumsCollectionList];
    [v21 setOutlineObject:v29];
  }

  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__PUSidebarDataController_fromMyMacAlbumsDataSectionManagerWithPhotoLibrary_context___block_invoke;
  v38[3] = &unk_1E7B7FE10;
  v39 = v18;
  v40 = v16;
  v32 = v21;
  v41 = v32;
  v42 = v9;
  v33 = v16;
  v34 = v18;
  [mEMORY[0x1E69C4598] scheduleTaskAfterCATransactionCommits:v38];

  v35 = v41;
  v36 = v32;

  return v32;
}

void __85__PUSidebarDataController_fromMyMacAlbumsDataSectionManagerWithPhotoLibrary_context___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(a1 + 32));
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PUSidebarDataController.makeSectionManagers.item", "item=fromMyMac, subItem=albumsFolder, detail=startBackgroundFetchingIfNeeded", buf, 2u);
  }

  [*(a1 + 40) startBackgroundFetchingIfNeeded];
  v5 = *(a1 + 32);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, v2, "PUSidebarDataController.makeSectionManagers.item", "", v16, 2u);
  }

  v7 = os_signpost_id_generate(*(a1 + 32));
  v8 = *(a1 + 32);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PUSidebarDataController.makeSectionManagers.item", "item=fromMyMac, detail=enablement", v15, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x1E69C3440]) initWithSourceDataSectionManager:*(a1 + 40)];
  [v10 setEnablementTarget:*(a1 + 48)];
  [*(a1 + 48) setEnablementForwarder:v10];
  v11 = *(a1 + 32);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PUSidebarDataController.makeSectionManagers.item", "", v14, 2u);
  }
}

+ (id)sharedAlbumsDataSectionManagerWithPhotoLibrary:(id)library context:(id)context hideAdd:(BOOL)add
{
  addCopy = add;
  v42[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  libraryCopy = library;
  px_virtualCollections = [libraryCopy px_virtualCollections];
  v11 = objc_alloc(MEMORY[0x1E69C3718]);
  sharedAlbumsCollection = [px_virtualCollections sharedAlbumsCollection];
  v13 = [v11 initWithCollection:sharedAlbumsCollection context:contextCopy];

  v14 = objc_alloc(MEMORY[0x1E69C36F0]);
  sharedAlbumsCollection2 = [px_virtualCollections sharedAlbumsCollection];
  v16 = [v14 initWithAssetCollection:sharedAlbumsCollection2 accessoryTitle:0 reorderable:0 topLevelIdentifier:0];
  [v13 setOutlineObject:v16];

  v17 = MEMORY[0x1E69C3700];
  px_virtualCollections2 = [libraryCopy px_virtualCollections];

  sharedAlbumsCollectionList = [px_virtualCollections2 sharedAlbumsCollectionList];
  v20 = [v17 configurationWithCollectionList:sharedAlbumsCollectionList];

  assetsFilterPredicate = [contextCopy assetsFilterPredicate];

  [self _prepareSectionConfiguration:v20 assetsFilterPredicate:assetsFilterPredicate];
  [v20 setIncludeKeyAssetFetches:1];
  [v20 setSkipAssetFetches:1];
  [v20 setSkipAssetCountFetches:1];
  v22 = [objc_alloc(MEMORY[0x1E69C3708]) initWithConfiguration:v20 topLevelIdentifier:0];
  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __90__PUSidebarDataController_sharedAlbumsDataSectionManagerWithPhotoLibrary_context_hideAdd___block_invoke;
  v39[3] = &unk_1E7B80DD0;
  v24 = v22;
  v40 = v24;
  [mEMORY[0x1E69C4598] scheduleTaskAfterCATransactionCommits:v39];

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  if (([mEMORY[0x1E69C3650] enableSidebarHeaderSelection] & 1) == 0)
  {
    [v25 addObject:v13];
  }

  if (addCopy)
  {
    v42[0] = v24;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v25 addObjectsFromArray:v27];
  }

  else
  {
    v27 = [self _actionManagerWithActionType:*MEMORY[0x1E69C4000]];
    v41[0] = v24;
    v41[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    [v25 addObjectsFromArray:v28];
  }

  v29 = objc_alloc(MEMORY[0x1E69C3A70]);
  v30 = [v25 copy];
  v31 = [v29 initWithChildDataSectionManagers:v30];

  [v31 setAlwaysContainsObjects:!addCopy];
  sharedAlbumsCollectionList2 = [px_virtualCollections sharedAlbumsCollectionList];
  if ([mEMORY[0x1E69C3650] enableSidebarHeaderSelection])
  {
    transientIdentifier = [sharedAlbumsCollectionList2 transientIdentifier];
    v34 = transientIdentifier;
    if (transientIdentifier)
    {
      localIdentifier = transientIdentifier;
    }

    else
    {
      localIdentifier = [sharedAlbumsCollectionList2 localIdentifier];
    }

    v36 = localIdentifier;

    v37 = [objc_alloc(MEMORY[0x1E69C36F8]) initWithCollectionList:sharedAlbumsCollectionList2 accessoryTitle:0 reorderable:0 topLevelIdentifier:v36];
    [v31 setOutlineObject:v37];
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:sharedAlbumsCollectionList2];
    [v31 setOutlineObject:v36];
  }

  return v31;
}

+ (id)myAlbumsDataSectionManagerForPhotoLibrary:(id)library context:(id)context hideAdd:(BOOL)add
{
  addCopy = add;
  v68[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  libraryCopy = library;
  px_virtualCollections = [libraryCopy px_virtualCollections];
  v10 = PLSidebarGetLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PUSidebarDataController.makeSectionManagers.item", "item=search", buf, 2u);
  }

  v57 = addCopy;

  v14 = objc_alloc(MEMORY[0x1E69C3718]);
  allAlbumsCollection = [px_virtualCollections allAlbumsCollection];
  v16 = [v14 initWithCollection:allAlbumsCollection context:contextCopy];

  v17 = objc_alloc(MEMORY[0x1E69C36F0]);
  allAlbumsCollection2 = [px_virtualCollections allAlbumsCollection];
  v19 = [v17 initWithAssetCollection:allAlbumsCollection2 accessoryTitle:0 reorderable:0 topLevelIdentifier:0];
  v59 = v16;
  [v16 setOutlineObject:v19];

  v20 = v13;
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v21, OS_SIGNPOST_INTERVAL_END, v11, "PUSidebarDataController.makeSectionManagers.item", "", buf, 2u);
  }

  v22 = os_signpost_id_generate(v21);
  v23 = v21;
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PUSidebarDataController.makeSectionManagers.item", "item=myAlbums, subItem=albumsFolder", buf, 2u);
  }

  v60 = px_virtualCollections;
  rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
  v25 = [MEMORY[0x1E69C3700] configurationWithCollectionList:?];
  assetsFilterPredicate = [contextCopy assetsFilterPredicate];
  [self _prepareSectionConfiguration:v25 assetsFilterPredicate:assetsFilterPredicate];

  [v25 setIncludeKeyAssetFetches:1];
  [v25 setIncludeUserSmartAlbums:1];
  [v25 setSkipAssetFetches:1];
  [v25 setSkipAssetCountFetches:1];
  v27 = [objc_alloc(MEMORY[0x1E69C3708]) initWithConfiguration:v25 topLevelIdentifier:0];
  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __85__PUSidebarDataController_myAlbumsDataSectionManagerForPhotoLibrary_context_hideAdd___block_invoke;
  v63[3] = &unk_1E7B80C38;
  v29 = v24;
  v64 = v29;
  v61 = v27;
  v65 = v61;
  [mEMORY[0x1E69C4598] scheduleTaskAfterCATransactionCommits:v63];

  v30 = v29;
  v31 = v30;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v31, OS_SIGNPOST_INTERVAL_END, v22, "PUSidebarDataController.makeSectionManagers.item", "", buf, 2u);
  }

  v32 = os_signpost_id_generate(v31);
  v33 = v31;
  v34 = v33;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "PUSidebarDataController.makeSectionManagers.item", "item=myAlbums, subItem=MPS", buf, 2u);
  }

  v35 = MEMORY[0x1E6978650];
  px_standardLibrarySpecificFetchOptions = [libraryCopy px_standardLibrarySpecificFetchOptions];

  v37 = [v35 fetchAssetCollectionsWithType:1 subtype:100 options:px_standardLibrarySpecificFetchOptions];

  v55 = v37;
  v38 = [MEMORY[0x1E69C3700] configurationWithCollectionsFetchResult:v37];
  v58 = contextCopy;
  assetsFilterPredicate2 = [contextCopy assetsFilterPredicate];
  [self _prepareSectionConfiguration:v38 assetsFilterPredicate:assetsFilterPredicate2];

  v40 = [objc_alloc(MEMORY[0x1E69C3708]) initWithConfiguration:v38 topLevelIdentifier:0];
  v41 = v34;
  v42 = v41;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v42, OS_SIGNPOST_INTERVAL_END, v32, "PUSidebarDataController.makeSectionManagers.item", "", buf, 2u);
  }

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  if (([mEMORY[0x1E69C3650] enableSidebarHeaderSelection] & 1) == 0)
  {
    [v43 addObject:v59];
  }

  if (v57)
  {
    v68[0] = v40;
    v68[1] = v61;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    [v43 addObjectsFromArray:v45];
  }

  else
  {
    v67[0] = v40;
    v67[1] = v61;
    v45 = [self _actionManagerWithActionType:*MEMORY[0x1E69C3FF0]];
    v67[2] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
    [v43 addObjectsFromArray:v46];
  }

  v47 = objc_alloc(MEMORY[0x1E69C3A70]);
  v48 = [v43 copy];
  v49 = [v47 initWithChildDataSectionManagers:v48];

  [v49 setAlwaysContainsObjects:!v57];
  if ([mEMORY[0x1E69C3650] enableSidebarHeaderSelection])
  {
    allAlbumsCollection3 = [v60 allAlbumsCollection];
    transientIdentifier = [allAlbumsCollection3 transientIdentifier];

    v52 = [objc_alloc(MEMORY[0x1E69C36F8]) initWithCollectionList:rootAlbumCollectionList accessoryTitle:0 reorderable:0 topLevelIdentifier:transientIdentifier];
    [v49 setOutlineObject:v52];

    v53 = rootAlbumCollectionList;
  }

  else
  {
    v53 = rootAlbumCollectionList;
    transientIdentifier = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:rootAlbumCollectionList];
    [v49 setOutlineObject:transientIdentifier];
  }

  return v49;
}

void __85__PUSidebarDataController_myAlbumsDataSectionManagerForPhotoLibrary_context_hideAdd___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(a1 + 32));
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PUSidebarDataController.makeSectionManagers.item", "item=myAlbums, subItem=albumsFolder, detail=startBackgroundFetchingIfNeeded", buf, 2u);
  }

  [*(a1 + 40) startBackgroundFetchingIfNeeded];
  v5 = *(a1 + 32);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, v2, "PUSidebarDataController.makeSectionManagers.item", "", v7, 2u);
  }
}

+ (id)_actionManagerWithActionType:(id)type
{
  v3 = MEMORY[0x1E69C36E8];
  typeCopy = type;
  v5 = [[v3 alloc] initWithActionType:typeCopy];

  v6 = [objc_alloc(MEMORY[0x1E69C3718]) initWithItem:v5];
  [v6 setOutlineObject:v5];

  return v6;
}

+ (id)_singleItemDataSourceManagerForCollection:(id)collection context:(id)context
{
  collectionCopy = collection;
  v6 = MEMORY[0x1E69C3718];
  contextCopy = context;
  v8 = [[v6 alloc] initWithCollection:0 context:contextCopy];

  if (collectionCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E69C36F0]) initWithAssetCollection:collectionCopy accessoryTitle:0 reorderable:0 topLevelIdentifier:0];
    [v8 setOutlineObject:v9];
  }

  return v8;
}

+ (id)utilitiesDataSectionManagerWithPhotoLibrary:(id)library context:(id)context options:(unint64_t)options
{
  v5 = (options >> 3) & 1;
  v6 = (options >> 4) & 1;
  v7 = MEMORY[0x1E69C3A38];
  libraryCopy = library;
  v9 = [v7 makeUtilitiesDataSectionManagerWithLibrary:libraryCopy topLevelIdentifier:@"utilities" forPicker:v5 excludeHiddenAlbum:v6];
  v10 = objc_alloc(MEMORY[0x1E69C3710]);
  px_virtualCollections = [libraryCopy px_virtualCollections];

  utilitiesCollectionList = [px_virtualCollections utilitiesCollectionList];
  v13 = [v10 initWithCollectionList:utilitiesCollectionList];
  [v9 setOutlineObject:v13];

  return v9;
}

+ (id)mediaTypesDataSectionManagerWithPhotoLibrary:(id)library context:(id)context
{
  v4 = MEMORY[0x1E69C3A38];
  libraryCopy = library;
  v6 = [v4 makeMediaTypesDataSectionManagerWithLibrary:libraryCopy topLevelIdentifier:@"media-types"];
  v7 = objc_alloc(MEMORY[0x1E69C3710]);
  px_virtualCollections = [libraryCopy px_virtualCollections];

  mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];
  v10 = [v7 initWithCollectionList:mediaTypesCollectionList];
  [v6 setOutlineObject:v10];

  return v6;
}

+ (id)pickerSectionManagerForLibrary:(id)library allPhotosCollection:(id)collection context:(id)context
{
  v20[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  collectionCopy = collection;
  px_virtualCollections = [library px_virtualCollections];
  v11 = objc_alloc(MEMORY[0x1E69C3A70]);
  v12 = [self dataSectionManagerForCollection:collectionCopy context:contextCopy];

  v20[0] = v12;
  collectionsCollection = [px_virtualCollections collectionsCollection];
  v14 = [self dataSectionManagerForCollection:collectionsCollection context:contextCopy];

  v20[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [v11 initWithChildDataSectionManagers:v15];

  v17 = objc_alloc(MEMORY[0x1E69C3710]);
  v18 = [v17 initWithIdentifier:*MEMORY[0x1E69C40D0] displayInline:1];
  [v16 setOutlineObject:v18];

  return v16;
}

+ (id)photosDataSectionManagerForLibrary:(id)library context:(id)context
{
  v18[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  px_virtualCollections = [library px_virtualCollections];
  v8 = objc_alloc(MEMORY[0x1E69C3A70]);
  photosCollection = [px_virtualCollections photosCollection];
  v10 = [self dataSectionManagerForCollection:photosCollection context:contextCopy];
  v18[0] = v10;
  collectionsCollection = [px_virtualCollections collectionsCollection];
  v12 = [self dataSectionManagerForCollection:collectionsCollection context:contextCopy];

  v18[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v8 initWithChildDataSectionManagers:v13];

  v15 = objc_alloc(MEMORY[0x1E69C3710]);
  v16 = [v15 initWithIdentifier:*MEMORY[0x1E69C40D0] displayInline:1];
  [v14 setOutlineObject:v16];

  return v14;
}

@end