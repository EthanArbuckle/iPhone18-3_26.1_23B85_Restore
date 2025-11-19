@interface PXMenuGenerator
+ (id)photosConfiguration;
+ (void)insertImageMenuWithBuilder:(id)a3 afterMenuForIdentifier:(id)a4 options:(unint64_t)a5;
@end

@implementation PXMenuGenerator

+ (void)insertImageMenuWithBuilder:(id)a3 afterMenuForIdentifier:(id)a4 options:(unint64_t)a5
{
  v118 = a5;
  v129[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 menuForIdentifier:@"com.apple.photos.menu.image"];
  if (!v8)
  {
    v9 = MEMORY[0x1E69DCC60];
    v10 = PXLocalizedStringFromTable(@"MENU_TITLE_IMAGE", @"PhotosUICore");
    v8 = [v9 menuWithTitle:v10 image:0 identifier:@"com.apple.photos.menu.image" options:1 children:MEMORY[0x1E695E0F0]];

    [v6 insertSiblingMenu:v8 afterMenuForIdentifier:v7];
  }

  v120 = v8;
  v121 = v7;
  v11 = MEMORY[0x1E69DCC60];
  v12 = MEMORY[0x1E69DC8B0];
  v13 = PXLocalizedStringFromTable(@"PXAdjustDateAndTimeActionName", @"PhotosUICore");
  v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"calendar.badge.clock"];
  v15 = [v12 commandWithTitle:v13 image:v14 action:sel_adjustDateTime_ propertyList:0];
  v129[0] = v15;
  v16 = MEMORY[0x1E69DC8B0];
  v17 = PXLocalizedStringFromTable(@"PXAdjustLocationActionName", @"PhotosUICore");
  v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"mappin.circle"];
  v19 = [v16 commandWithTitle:v17 image:v18 action:sel_adjustLocation_ propertyList:0];
  v129[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
  v21 = [v11 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v20];
  [v6 insertChildMenu:v21 atEndOfMenuForIdentifier:@"com.apple.photos.menu.image"];

  v104 = MEMORY[0x1E69DCC60];
  v22 = MEMORY[0x1E69DCBA0];
  v114 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_ROTATE_COUNTERCLOCKWISE", @"PhotosUICore");
  v110 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"rotate.left"];
  v107 = [v22 commandWithTitle:v114 image:v110 action:sel_rotateAssetsCounterclockwise_ input:@"r" modifierFlags:0x100000 propertyList:0];
  v128[0] = v107;
  v23 = MEMORY[0x1E69DCBA0];
  v101 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_ROTATE_CLOCKWISE", @"PhotosUICore");
  v100 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"rotate.right"];
  v24 = [v23 commandWithTitle:v101 image:v100 action:sel_rotateAssetsClockwise_ input:@"r" modifierFlags:1572864 propertyList:0];
  v128[1] = v24;
  v25 = MEMORY[0x1E69DCBA0];
  v26 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_AUTO_ENHANCE", @"PhotosUICore");
  v27 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"wand.and.sparkles.inverse"];
  v28 = [v25 commandWithTitle:v26 image:v27 action:sel_autoEnhanceAssets_ input:@"e" modifierFlags:0x100000 propertyList:0];
  v128[2] = v28;
  v29 = v6;
  v122 = v6;
  v30 = MEMORY[0x1E69DCBA0];
  v31 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_OPEN_EDITOR", @"PhotosUICore");
  v32 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"slider.horizontal.3"];
  v33 = [v30 commandWithTitle:v31 image:v32 action:sel_toggleEditor_ input:@"\r" modifierFlags:0 propertyList:0];
  v128[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:4];
  v35 = [v104 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v34];
  [v29 insertChildMenu:v35 atEndOfMenuForIdentifier:@"com.apple.photos.menu.image"];

  v111 = MEMORY[0x1E69DCC60];
  v36 = MEMORY[0x1E69DCBA0];
  v115 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_COPY_ADJUSTMENTS", @"PhotosUICore");
  v37 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"document.on.document"];
  v38 = [v36 commandWithTitle:v115 image:v37 action:sel_copyAdjustments_ input:@"c" modifierFlags:1179648 propertyList:0];
  v127[0] = v38;
  v39 = MEMORY[0x1E69DCBA0];
  v40 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_PASTE_ADJUSTMENTS", @"PhotosUICore");
  v41 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"document.on.clipboard"];
  v42 = [v39 commandWithTitle:v40 image:v41 action:sel_pasteAdjustments_ input:@"v" modifierFlags:1179648 propertyList:0];
  v127[1] = v42;
  v43 = MEMORY[0x1E69DC8B0];
  v44 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_REVERT_ADJUSTMENTS", @"PhotosUICore");
  v45 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrow.uturn.backward"];
  v46 = [v43 commandWithTitle:v44 image:v45 action:sel_revertAdjustments_ propertyList:0];
  v127[2] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:3];
  v48 = [v111 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v47];
  [v122 insertChildMenu:v48 atEndOfMenuForIdentifier:@"com.apple.photos.menu.image"];

  v102 = MEMORY[0x1E69DCC60];
  v49 = MEMORY[0x1E69DCBA0];
  v116 = PXLocalizedStringFromTable(@"FAVORITE_ASSET_SHORTCUT", @"PhotosUICore");
  v112 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"heart"];
  v108 = [v49 commandWithTitle:v116 image:v112 action:sel_favoriteAssets_ input:@"." modifierFlags:0 propertyList:0];
  v126[0] = v108;
  v50 = MEMORY[0x1E69DCBA0];
  v105 = PXLocalizedStringFromTable(@"ADD_TO_ALBUM_FROM_GRID_SHORTCUT", @"PhotosUICore");
  v51 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"rectangle.stack.badge.plus"];
  v52 = [v50 commandWithTitle:v105 image:v51 action:sel_addAssetsToAlbum_ input:@"a" modifierFlags:1179648 propertyList:0];
  v126[1] = v52;
  v53 = MEMORY[0x1E69DCBA0];
  v54 = +[PXAddAssetsToLastUsedAssetCollectionAction placeholderCommandTitle];
  v55 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"rectangle.stack.badge.plus"];
  v56 = [v53 commandWithTitle:v54 image:v55 action:sel_addAssetsToLastUsedAlbum_ input:@"a" modifierFlags:1310720 propertyList:0];
  v126[2] = v56;
  v57 = MEMORY[0x1E69DCBA0];
  v58 = PXLocalizedStringFromTable(@"ADD_TO_SHARED_ALBUM_FROM_GRID_SHORTCUT", @"PhotosUICore");
  v59 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"rectangle.stack.badge.person.crop"];
  v60 = [v57 commandWithTitle:v58 image:v59 action:sel_addAssetsToSharedCollection_ input:@"s" modifierFlags:1179648 propertyList:0];
  v126[3] = v60;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:4];
  v62 = [v102 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v61];
  [v122 insertChildMenu:v62 atEndOfMenuForIdentifier:@"com.apple.photos.menu.image"];

  v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  if ((v118 & 1) == 0)
  {
    v64 = MEMORY[0x1E69DCBA0];
    v65 = PXLocalizedStringFromTable(@"MENU_ITEM_TITLE_OPEN_VIEWER", @"PhotosUICore");
    v66 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"inset.filled.rectangle"];
    v67 = [v64 commandWithTitle:v65 image:v66 action:sel_toggleViewer_ input:@" " modifierFlags:0 propertyList:0];
    [v63 addObject:v67];
  }

  if ((v118 & 2) == 0)
  {
    v68 = MEMORY[0x1E69DCBA0];
    v69 = PXLocalizedStringFromTable(@"PLAY_ASSET_SHORTCUT", @"PhotosUICore");
    v70 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"playpause"];
    v71 = [v68 commandWithTitle:v69 image:v70 action:sel_togglePlayback_ input:@" " modifierFlags:0x80000 propertyList:0];
    [v63 addObject:v71];
  }

  if ((v118 & 4) == 0)
  {
    v72 = MEMORY[0x1E69DCBA0];
    v73 = PXLocalizedStringFromTable(@"MAKE_KEY_PHOTO_SHORTCUT", @"PhotosUICore");
    v74 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"person.crop.square"];
    v75 = [v72 commandWithTitle:v73 image:v74 action:sel_makeKeyPhoto_ input:@"k" modifierFlags:1179648 propertyList:0];
    [v63 addObject:v75];
  }

  v117 = v63;
  v76 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v63];
  [v122 insertChildMenu:v76 atEndOfMenuForIdentifier:@"com.apple.photos.menu.image"];

  v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  if ((v118 & 8) == 0)
  {
    v78 = MEMORY[0x1E69DCBA0];
    v79 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_SHORTCUT", @"PhotosUICore");
    v80 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrow.trianglehead.merge"];
    v81 = MEMORY[0x1E69DC8B8];
    v82 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_SHORTCUT", @"PhotosUICore");
    v83 = [v81 alternateWithTitle:v82 action:sel_mergeDuplicatesWithoutConfirmation_ modifierFlags:1835008];
    v125 = v83;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
    v85 = [v78 commandWithTitle:v79 image:v80 action:sel_mergeDuplicates_ input:@"m" modifierFlags:1310720 propertyList:0 alternates:v84];
    [v77 addObject:v85];
  }

  v86 = MEMORY[0x1E69DCBA0];
  v119 = PXLocalizedStringFromTable(@"DUPLICATE_ASSET_SHORTCUT", @"PhotosUICore");
  v113 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"document.on.document"];
  v109 = [v86 commandWithTitle:v119 image:v113 action:sel_duplicateAssets_ input:@"d" modifierFlags:0x100000 propertyList:0];
  v124[0] = v109;
  v87 = MEMORY[0x1E69DCBA0];
  v106 = PXLocalizedStringFromTable(@"HIDE_ASSET_SHORTCUT", @"PhotosUICore");
  v103 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"eye.slash"];
  [v87 commandWithTitle:v106 image:v103 action:sel_hideAssets_ input:@"l" modifierFlags:0x100000 propertyList:0];
  v89 = v88 = v77;
  v124[1] = v89;
  v90 = MEMORY[0x1E69DCBA0];
  v91 = PXLocalizedStringFromTable(@"TRASH_ASSET_SHORTCUT", @"PhotosUICore");
  v92 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"trash"];
  v93 = MEMORY[0x1E69DC8B8];
  v94 = PXLocalizedStringFromTable(@"TRASH_ASSET_SHORTCUT", @"PhotosUICore");
  v95 = [v93 alternateWithTitle:v94 action:sel_trashAssetsWithoutConfirmation_ modifierFlags:0x100000];
  v123 = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
  v97 = [v90 commandWithTitle:v91 image:v92 action:sel_trashAssets_ input:@"\b" modifierFlags:0 propertyList:0 alternates:v96];
  v124[2] = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:3];
  [v88 addObjectsFromArray:v98];

  v99 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v88];
  [v122 insertChildMenu:v99 atEndOfMenuForIdentifier:@"com.apple.photos.menu.image"];
}

+ (id)photosConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC58]);
  [v2 setFindingPreference:2];
  v3 = [v2 findingConfiguration];
  [v3 setStyle:1];

  [v2 setNewScenePreference:1];
  [v2 setDocumentPreference:1];
  [v2 setInspectorPreference:1];
  [v2 setToolbarPreference:1];
  [v2 setTextFormattingPreference:1];

  return v2;
}

@end