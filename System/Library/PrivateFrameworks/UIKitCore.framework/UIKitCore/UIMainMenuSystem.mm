@interface UIMainMenuSystem
+ (UIMainMenuSystem)sharedSystem;
- (BOOL)_buildMenuWithBuilder:(id)builder fromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (NSArray)_keyCommands;
- (UIMenu)_rootMenu;
- (id)_additionalKeyCommands;
- (id)_defaultRootMenuChildren;
- (id)_effectiveBuildHandler;
- (id)_effectiveConfiguration;
- (id)_init;
- (void)_automaticallyRebuildIfNeeded;
- (void)_setInitialBuildingResponder:(id)responder;
- (void)_setOverrideApplicationName:(id)name;
- (void)_setOverrideBuildConfiguration:(id)configuration overrideBuildHandler:(id)handler;
- (void)dealloc;
- (void)setBuildConfiguration:(id)configuration buildHandler:(id)handler;
- (void)setNeedsRebuild;
@end

@implementation UIMainMenuSystem

+ (UIMainMenuSystem)sharedSystem
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__UIMainMenuSystem_sharedSystem__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A500 != -1)
  {
    dispatch_once(&qword_1ED49A500, block);
  }

  v2 = qword_1ED49A508;

  return v2;
}

void __32__UIMainMenuSystem_sharedSystem__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = qword_1ED49A508;
  qword_1ED49A508 = v1;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIMainMenuSystem;
  return [(UIMenuSystem *)&v3 _init];
}

- (id)_defaultRootMenuChildren
{
  v188[1] = *MEMORY[0x1E69E9840];
  if (![UIApp _supportsMenuActions])
  {
    v6 = MEMORY[0x1E695E0F0];
    goto LABEL_67;
  }

  _effectiveConfiguration = [(UIMainMenuSystem *)self _effectiveConfiguration];
  v4 = _effectiveConfiguration;
  if (_effectiveConfiguration)
  {
    v5 = _effectiveConfiguration;
  }

  else
  {
    v5 = +[UIMainMenuSystemConfiguration _compatibilityConfiguration];
  }

  v7 = v5;

  v153 = dyld_program_sdk_at_least();
  newScenePreference = [v7 newScenePreference];
  documentPreference = [v7 documentPreference];
  _supportsOpenMainMenuCommands = [UIApp _supportsOpenMainMenuCommands];
  v10 = ([UIApp _supportsPrintCommand] & 1) != 0 || objc_msgSend(v7, "printingPreference") != 1;
  v155 = v10;
  findingPreference = [v7 findingPreference];
  toolbarPreference = [v7 toolbarPreference];
  sidebarPreference = [v7 sidebarPreference];
  inspectorPreference = [v7 inspectorPreference];
  textFormattingPreference = [v7 textFormattingPreference];
  v150 = newScenePreference;
  v157 = _supportsOpenMainMenuCommands;
  if (findingPreference != 1)
  {
    findingConfiguration = [v7 findingConfiguration];
    style = [findingConfiguration style];

    v15 = [UICommand _defaultCommandForAction:sel_find_];
    v16 = v15;
    if (style == 2)
    {
      v187[0] = v15;
      v20 = [UICommand _defaultCommandForAction:sel_findNext_];
      v187[1] = v20;
      v21 = [UICommand _defaultCommandForAction:sel_findPrevious_];
      v187[2] = v21;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:3];
    }

    else
    {
      if (style == 1)
      {
        v17 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
        [v16 setTitle:v17];

        v18 = [UIImage systemImageNamed:@"magnifyingglass"];
        [v16 setImage:v18];

        v188[0] = v16;
        v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:1];
        v19 = v16;
LABEL_22:
        v12 = newScenePreference;

        goto LABEL_23;
      }

      v186[0] = v15;
      v20 = [UICommand _defaultCommandForAction:sel_findAndReplace_];
      v186[1] = v20;
      v21 = [UICommand _defaultCommandForAction:sel_findNext_];
      v186[2] = v21;
      v22 = [UICommand _defaultCommandForAction:sel_findPrevious_];
      v186[3] = v22;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:4];

      newScenePreference = v150;
    }

    v23 = [UICommand _defaultCommandForAction:sel_useSelectionForFind_];
    v185 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v185 count:1];

    if (qword_1ED49A510 != -1)
    {
      dispatch_once(&qword_1ED49A510, &__block_literal_global_16);
    }

    if ((_MergedGlobals_5_1 & 1) != 0 || ([(UIMainMenuSystem *)self _effectiveConfiguration], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
    {
      v26 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.find-panel" children:v19];
      v184 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v184 count:1];
    }

    else
    {
      v27 = v19;
    }

    v154 = [v27 arrayByAddingObjectsFromArray:v24];

    goto LABEL_22;
  }

  v12 = newScenePreference;
  v154 = MEMORY[0x1E695E0F0];
LABEL_23:
  v129 = MEMORY[0x1E695DEC8];
  v28 = MEMORY[0x1E695E0F0];
  v148 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.about" children:MEMORY[0x1E695E0F0]];
  v182[0] = v148;
  v147 = [UICommand _defaultCommandForAction:sel_orderFrontPreferencesPanel_];
  v181 = v147;
  v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v181 count:1];
  v145 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.preferences" children:?];
  v182[1] = v145;
  v144 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.services" children:v28];
  v182[2] = v144;
  v143 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.hide" children:v28];
  v182[3] = v143;
  v142 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.quit" children:v28];
  v182[4] = v142;
  v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:5];
  v140 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.application" children:?];
  v183[0] = v140;
  if (v12 == 1)
  {
    v29 = v28;
  }

  else
  {
    v86 = [UICommand _defaultCommandForAction:sel_requestNewScene_];
    v179 = v86;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v179 count:1];
  }

  v92 = v29;
  v139 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.new-item" children:v29];
  v180[0] = v139;
  if (v157)
  {
    v85 = [UICommand _defaultCommandForAction:sel_open_];
    v178[0] = v85;
    v84 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.open-recent" children:MEMORY[0x1E695E0F0]];
    v178[1] = v84;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:2];
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  v91 = v30;
  v138 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.open" children:v30];
  v180[1] = v138;
  v137 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_performClose_];
  v177 = v137;
  v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
  v133 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.close" children:?];
  v180[2] = v133;
  if (documentPreference == 1)
  {
    v31 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v83 = [UICommand _defaultCommandForAction:sel_duplicate_];
    v176[0] = v83;
    v82 = [UICommand _defaultCommandForAction:sel_move_];
    v176[1] = v82;
    v81 = [UICommand _defaultCommandForAction:sel_rename_];
    v176[2] = v81;
    v80 = [UICommand _defaultCommandForAction:sel_export_];
    v176[3] = v80;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:4];
  }

  v90 = v31;
  v130 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.document" children:v31];
  v180[3] = v130;
  if (v155)
  {
    v79 = [UICommand _defaultCommandForAction:sel_print_];
    v175 = v79;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  v149 = v7;
  v89 = v32;
  v128 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.print" children:v32];
  v180[4] = v128;
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:5];
  v126 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.file" children:?];
  v183[1] = v126;
  v125 = [UICommand _defaultCommandForAction:sel_undo_];
  v173[0] = v125;
  v124 = [UICommand _defaultCommandForAction:sel_redo_];
  v173[1] = v124;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:2];
  v122 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.undo-redo" children:?];
  v174[0] = v122;
  v121 = [UICommand _defaultCommandForAction:sel_cut_];
  v172[0] = v121;
  v120 = [UICommand _defaultCommandForAction:sel_copy_];
  v172[1] = v120;
  v119 = [UICommand _defaultCommandForAction:sel_paste_];
  v172[2] = v119;
  v118 = [UICommand _defaultCommandForAction:sel_pasteAndMatchStyle_];
  v172[3] = v118;
  v117 = [UICommand _defaultCommandForAction:sel_delete_];
  v172[4] = v117;
  v116 = [UICommand _defaultCommandForAction:sel_selectAll_];
  v172[5] = v116;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:6];
  v114 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.standard-edit" children:?];
  v174[1] = v114;
  v113 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.find" children:v154];
  v174[2] = v113;
  v33 = MEMORY[0x1E695E0F0];
  v112 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.spelling-panel" children:MEMORY[0x1E695E0F0]];
  v171[0] = v112;
  v111 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.spelling-options" children:v33];
  v171[1] = v111;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:2];
  v109 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.spelling" children:?];
  v174[3] = v109;
  v108 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.substitutions-panel" children:v33];
  v170[0] = v108;
  v107 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.substitution-options" children:v33];
  v170[1] = v107;
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:2];
  v105 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.substitutions" children:?];
  v174[4] = v105;
  v104 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.transformations" children:v33];
  v174[5] = v104;
  v103 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.command.speech" children:v33];
  v174[6] = v103;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:7];
  v101 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.edit" children:?];
  v183[2] = v101;
  if (textFormattingPreference == 1)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v153 = 0;
    v100 = null;
  }

  else
  {
    v35 = [UICommand _defaultCommandForAction:sel_toggleBoldface_];
    v167[0] = v35;
    v77 = [UICommand _defaultCommandForAction:sel_toggleItalics_];
    v167[1] = v77;
    v76 = [UICommand _defaultCommandForAction:sel_toggleUnderline_];
    v167[2] = v76;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:3];
    v74 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.text-style" children:?];
    v168[0] = v74;
    v73 = [UICommand _defaultCommandForAction:sel_increaseSize_];
    v166[0] = v73;
    v72 = [UICommand _defaultCommandForAction:sel_decreaseSize_];
    v166[1] = v72;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:2];
    v70 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.text-size" children:?];
    v168[1] = v70;
    v36 = MEMORY[0x1E695E0F0];
    v69 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.text-color" children:MEMORY[0x1E695E0F0]];
    v168[2] = v69;
    v68 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.text-style-pasteboard" children:v36];
    v168[3] = v68;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:4];
    v169[0] = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.font" children:?];
    v78 = v35;
    v66 = v169[0];
    if (v153)
    {
      v55 = [UICommand _defaultCommandForAction:sel_alignLeft_];
      v164[0] = v55;
      v54 = [UICommand _defaultCommandForAction:sel_alignCenter_];
      v164[1] = v54;
      v53 = [UICommand _defaultCommandForAction:sel_alignJustified_];
      v164[2] = v53;
      v52 = [UICommand _defaultCommandForAction:sel_alignRight_];
      v164[3] = v52;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:4];
    }

    else
    {
      v37 = v36;
    }

    v65 = v37;
    v100 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.alignment" children:v37];
    v165[0] = v100;
    v64 = [UICommand _defaultCommandForAction:sel_makeTextWritingDirectionNatural_];
    v163[0] = v64;
    v63 = [UICommand _defaultCommandForAction:sel_makeTextWritingDirectionRightToLeft_];
    v163[1] = v63;
    v62 = [UICommand _defaultCommandForAction:sel_makeTextWritingDirectionLeftToRight_];
    v163[2] = v62;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:3];
    v60 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.writing-direction" children:?];
    v165[1] = v60;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:2];
    v58 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.text" children:?];
    v169[1] = v58;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:2];
    null = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.format" children:?];
  }

  v183[3] = null;
  v88 = null;
  if (toolbarPreference == 1)
  {
    v38 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v56 = [UICommand _defaultCommandForAction:sel_runToolbarCustomizationPalette_];
    v161 = v56;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v161 count:1];
  }

  v87 = v38;
  v99 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.toolbar" children:v38];
  v162[0] = v99;
  v39 = MEMORY[0x1E695DEC8];
  if (sidebarPreference == 1)
  {
    [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    [UICommand _defaultCommandForAction:sel_toggleSidebar_];
  }
  v132 = ;
  v160[0] = v132;
  if (inspectorPreference == 1)
  {
    [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    [UICommand _defaultCommandForAction:sel_toggleInspector_];
  }
  v135 = ;
  v160[1] = v135;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2];
  v97 = [v39 ui_arrayByCompactingArray:v98];
  v96 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.sidebar" children:v97];
  v162[1] = v96;
  v40 = MEMORY[0x1E695E0F0];
  v95 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.fullscreen" children:MEMORY[0x1E695E0F0]];
  v162[2] = v95;
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:3];
  v93 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.view" children:v94];
  v183[4] = v93;
  v41 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.minimize-and-zoom" children:v40];
  v159[0] = v41;
  v42 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.bring-all-to-front" children:v40];
  v159[1] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:2];
  v44 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.window" children:v43];
  v183[5] = v44;
  v45 = MEMORY[0x1E695DEC8];
  v46 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_showHelp_];
  v158 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v158 count:1];
  v48 = [v45 ui_arrayByCompactingArray:v47];
  v49 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.help" children:v48];
  v183[6] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:7];
  v6 = [v129 ui_arrayByCompactingArray:v50];

  if (toolbarPreference != 1)
  {
  }

  if (textFormattingPreference != 1)
  {
  }

  if (v153)
  {
  }

  if (textFormattingPreference != 1)
  {
  }

  if (v155)
  {
  }

  if (documentPreference != 1)
  {
  }

  if (v157)
  {
  }

  if (v150 != 1)
  {
  }

LABEL_67:

  return v6;
}

void __44__UIMainMenuSystem__defaultRootMenuChildren__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v1 = _UIMainBundleIdentifier();
    if ([v1 isEqualToString:@"com.apple.mobileslideshow"])
    {
      _MergedGlobals_5_1 = 0;
    }

    else
    {
      v0 = _UIMainBundleIdentifier();
      _MergedGlobals_5_1 = [v0 isEqualToString:@"com.apple.mobilemail"] ^ 1;
    }
  }

  else
  {
    _MergedGlobals_5_1 = 0;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UIMainMenuSystem;
  [(UIMainMenuSystem *)&v2 dealloc];
}

- (void)setNeedsRebuild
{
  automaticallyRebuildingBuilder = self->_automaticallyRebuildingBuilder;
  self->_automaticallyRebuildingBuilder = 0;

  v4.receiver = self;
  v4.super_class = UIMainMenuSystem;
  [(UIMenuSystem *)&v4 setNeedsRebuild];
}

- (void)_automaticallyRebuildIfNeeded
{
  if (!self->_automaticallyRebuildingBuilder)
  {
    v8 = UIApp;
    WeakRetained = objc_loadWeakRetained(&self->_initialBuildingResponderOverride);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_initialBuildingResponderOverride);

      v5 = v4;
    }

    else
    {
      v5 = v8;
    }

    v9 = v5;
    v6 = [(UIMenuSystem *)self _newBuilderFromResponderChain:v5 atLocation:0 inCoordinateSpace:NAN, NAN];
    automaticallyRebuildingBuilder = self->_automaticallyRebuildingBuilder;
    self->_automaticallyRebuildingBuilder = v6;
  }
}

- (NSArray)_keyCommands
{
  [(UIMainMenuSystem *)self _automaticallyRebuildIfNeeded];
  _keyCommands = [(_UIMenuBuilder *)self->_automaticallyRebuildingBuilder _keyCommands];
  _additionalKeyCommands = [(UIMainMenuSystem *)self _additionalKeyCommands];
  v5 = [_keyCommands arrayByAddingObjectsFromArray:_additionalKeyCommands];

  return v5;
}

- (id)_additionalKeyCommands
{
  if (qword_1ED49A520 != -1)
  {
    dispatch_once(&qword_1ED49A520, &__block_literal_global_98);
  }

  v3 = qword_1ED49A518;

  return v3;
}

void __42__UIMainMenuSystem__additionalKeyCommands__block_invoke()
{
  v16[4] = *MEMORY[0x1E69E9840];
  v0 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_performClose_];
  v16[0] = v0;
  v1 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_startDictation_];
  v16[1] = v1;
  v2 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_orderFrontCharacterPalette_];
  v16[2] = v2;
  v3 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel__handleLegacyEmojiKeyboardShortcut_];
  v16[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v5 = qword_1ED49A518;
  qword_1ED49A518 = v4;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = qword_1ED49A518;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setAttributes:{objc_msgSend(*(*(&v11 + 1) + 8 * v10), "attributes", v11) | 4}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (UIMenu)_rootMenu
{
  [(UIMainMenuSystem *)self _automaticallyRebuildIfNeeded];
  automaticallyRebuildingBuilder = self->_automaticallyRebuildingBuilder;

  return [(_UIMenuBuilder *)automaticallyRebuildingBuilder menuForIdentifier:@"com.apple.menu.root"];
}

- (void)_setInitialBuildingResponder:(id)responder
{
  objc_storeWeak(&self->_initialBuildingResponderOverride, responder);

  [(UIMainMenuSystem *)self setNeedsRebuild];
}

uint64_t __74__UIMainMenuSystem__ensureRootMenuChildrenAreUIMenus_appDidCustomizeMenu___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __72__UIMainMenuSystem__insertTextInputMenuWithBuilder_appDidCustomizeMenu___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1E695E0F0];
  v4 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.insert-from-external-sources" children:MEMORY[0x1E695E0F0]];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6 = [UIKBAutoFillMenus updatedSystemAutoFillMenuWithMenuElements:v5 hideUnavailableItems:0];

  if (v6)
  {
    v7 = [UICommand _defaultCommandForAction:sel_captureTextFromCamera_];
    v8 = [v6 arrayByAddingObject:v7];

    v9 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.autofill" children:v8];
    v10 = v9;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  }

  v2[2](v2, v3);
}

id __85__UIMainMenuSystem__mergeNewItemAndOpenMenusIfNeededWithBuilder_appDidCustomizeMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 children];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

id __82__UIMainMenuSystem__reparentFindMenuItemsIfNeededWithBuilder_appDidCustomizeMenu___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v8 identifier];
          v11 = [v10 isEqualToString:@"com.apple.menu.find"];

          if (v11)
          {
            v12 = [v8 children];
            [v3 addObjectsFromArray:v12];

            continue;
          }
        }

        else
        {
        }

        [v3 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

id __91__UIMainMenuSystem__mergeSidebarAndFullscreenMenusIfNeededWithBuilder_appDidCustomizeMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 children];
  v5 = [v4 arrayByAddingObjectsFromArray:v3];

  return v5;
}

- (BOOL)_buildMenuWithBuilder:(id)builder fromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  v153[1] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  chainCopy = chain;
  spaceCopy = space;
  _effectiveBuildHandler = [(UIMainMenuSystem *)self _effectiveBuildHandler];
  v135 = _effectiveBuildHandler;
  if (_effectiveBuildHandler)
  {
    (*(_effectiveBuildHandler + 16))(_effectiveBuildHandler, builderCopy);
    v136 = 1;
  }

  else
  {
    v142.receiver = self;
    v142.super_class = UIMainMenuSystem;
    v136 = [(UIMenuSystem *)&v142 _buildMenuWithBuilder:builderCopy fromResponderChain:chainCopy atLocation:spaceCopy inCoordinateSpace:x, y];
  }

  if ([UIApp _supportsMenuActions])
  {
    v12 = builderCopy;
    v13 = !v136;
    if (!self)
    {
      v13 = 1;
    }

    v138 = v12;
    if (v13)
    {

      v14 = v138;
      v15 = v14;

      v16 = v15;
      v17 = v16;

      v18 = v17;
      if (!self)
      {
        v126 = v18;

        v127 = v126;
        v128 = v127;

        v129 = v128;
        v130 = v129;
        goto LABEL_119;
      }

LABEL_61:
      v55 = [v138 _parentOfMenuForIdentifier:@"com.apple.menu.edit" commandForIdentifier:0];
      if ([v55 isEqualToString:@"com.apple.menu.root"])
      {
        v56 = MEMORY[0x1E695DFD8];
        _keyCommands = [v138 _keyCommands];
        v58 = [v56 setWithArray:_keyCommands];

        array = [MEMORY[0x1E695DF70] array];
        v60 = [UICommand _defaultCommandForAction:sel_startDictation_];
        v61 = [UICommand _defaultCommandForAction:sel_orderFrontCharacterPalette_];
        v139 = [UICommand _defaultCommandForAction:sel__handleLegacyEmojiKeyboardShortcut_];
        v62 = [UICommand _defaultCommandForAction:sel__toggleSoftwareKeyboard_];
        v63 = [UIDeferredMenuElement elementWithUncachedProvider:&__block_literal_global_115];
        [array addObject:v63];

        action = [v60 action];
        propertyList = [v60 propertyList];
        v66 = [v138 commandForAction:action propertyList:propertyList];
        if (v66)
        {
        }

        else
        {
          v67 = [v58 containsObject:v60];

          if ((v67 & 1) == 0)
          {
            [array addObject:v60];
          }
        }

        action2 = [v61 action];
        propertyList2 = [v61 propertyList];
        v70 = [v138 commandForAction:action2 propertyList:propertyList2];
        if (v70)
        {
        }

        else
        {
          action3 = [v139 action];
          propertyList3 = [v139 propertyList];
          v73 = [v138 commandForAction:action3 propertyList:propertyList3];
          if (v73 || ([v58 containsObject:v61] & 1) != 0)
          {
          }

          else
          {
            v125 = [v58 containsObject:v139];

            if ((v125 & 1) == 0)
            {
              [array addObject:v61];
              [array addObject:v139];
            }
          }
        }

        action4 = [v62 action];
        propertyList4 = [v62 propertyList];
        v76 = [v138 commandForAction:action4 propertyList:propertyList4];
        if (v76)
        {
        }

        else
        {
          v77 = [v58 containsObject:v62];

          if ((v77 & 1) == 0)
          {
            [array addObject:v62];
          }
        }

        v78 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.text-input" children:array];
        [v138 insertChildMenu:v78 atEndOfMenuForIdentifier:@"com.apple.menu.edit"];
      }

      v79 = v138;
      *&v143 = 0;
      *(&v143 + 1) = &v143;
      *&v144 = 0x2050000000;
      v80 = qword_1ED49A540;
      *(&v144 + 1) = qword_1ED49A540;
      if (!qword_1ED49A540)
      {
        v148 = MEMORY[0x1E69E9820];
        v149 = 3221225472;
        v150 = __getWTWritingToolsViewControllerClass_block_invoke;
        v151 = &unk_1E70F2F20;
        v152 = &v143;
        __getWTWritingToolsViewControllerClass_block_invoke(&v148);
        v80 = *(*(&v143 + 1) + 24);
      }

      v81 = v80;
      _Block_object_dispose(&v143, 8);
      if ([v80 isAvailable])
      {
        v82 = [UICommand _defaultCommandForAction:sel_showWritingTools_];
        v83 = [v79 _parentOfMenuForIdentifier:@"com.apple.menu.spelling" commandForIdentifier:0];
        if ([v83 isEqualToString:@"com.apple.menu.edit"])
        {
          *buf = v82;
          v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
          [v79 insertElements:v84 beforeMenuForIdentifier:@"com.apple.menu.spelling"];
        }

        else
        {
          v153[0] = v82;
          v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:1];
          [v79 insertElements:v84 atStartOfMenuForIdentifier:@"com.apple.menu.text-input"];
        }
      }

      v85 = v79;
      v86 = [v85 menuForIdentifier:@"com.apple.menu.new-item"];
      v87 = [v85 menuForIdentifier:@"com.apple.menu.open"];
      v88 = v87;
      if (v136)
      {
        v89 = 0;
        if (!v86 || !v87 || ([v85 _parentOfMenuForIdentifier:@"com.apple.menu.new-item" commandForIdentifier:0], v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v85, "_parentOfMenuForIdentifier:commandForIdentifier:", @"com.apple.menu.open", 0), v90 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend(v89, "isEqualToString:", v90), v90, !v91))
        {
LABEL_91:

          v97 = v85;
          v98 = [v97 menuForIdentifier:@"com.apple.menu.find"];
          v99 = [v97 _parentOfMenuForIdentifier:@"com.apple.menu.find" commandForIdentifier:0];
          v100 = v99;
          if (v98)
          {
            if (v99)
            {
              children = [v98 children];
              v102 = [children count] > 1;

              if (!v102)
              {
                children2 = [v98 children];
                if ([children2 count] == 1)
                {
                  v104 = [v97 _parentOfMenuForIdentifier:@"com.apple.menu.find-panel" commandForIdentifier:0];
                  v105 = [v104 isEqualToString:@"com.apple.menu.find"];

                  if (v105)
                  {
                    children3 = [v98 children];
                    firstObject = [children3 firstObject];

                    children4 = [firstObject children];
                    v109 = [children4 count] < 2;

                    if (!v109)
                    {
                      goto LABEL_100;
                    }
                  }
                }

                else
                {
                }

                [v97 replaceChildrenOfMenuForIdentifier:v100 fromChildrenBlock:&__block_literal_global_125];
              }
            }
          }

LABEL_100:

          v110 = v97;
          v111 = [v110 menuForIdentifier:@"com.apple.menu.sidebar"];
          v112 = [v110 menuForIdentifier:@"com.apple.menu.fullscreen"];
          if (v136)
          {
            if (v111)
            {
              children5 = [v111 children];
              if ([children5 count] == 1)
              {
                children6 = [v111 children];
                firstObject2 = [children6 firstObject];
                v115 = objc_opt_self();
                if (objc_opt_isKindOfClass())
                {
                  children7 = [v111 children];
                  firstObject3 = [children7 firstObject];
                  v117 = [firstObject3 action] == sel_toggleSidebar_;
                }

                else
                {
                  v117 = 0;
                }
              }

              else
              {
                v117 = 0;
              }
            }

            else
            {
              v117 = 0;
            }

            if (v112)
            {
              children8 = [v112 children];
              v119 = [children8 count] == 0;
            }

            else
            {
              v119 = 0;
            }

            v120 = [v110 _parentOfMenuForIdentifier:@"com.apple.menu.sidebar" commandForIdentifier:0];
            v121 = [v110 _parentOfMenuForIdentifier:@"com.apple.menu.fullscreen" commandForIdentifier:0];
            v122 = [v120 isEqualToString:v121];
            if (!v117)
            {

              goto LABEL_117;
            }

            v123 = v122;

            if ((v119 & v123) == 0)
            {
LABEL_118:

LABEL_119:
              goto LABEL_120;
            }
          }

          [v110 replaceChildrenOfMenuForIdentifier:@"com.apple.menu.sidebar" fromChildrenBlock:&__block_literal_global_127];
          v148 = MEMORY[0x1E69E9820];
          v149 = 3221225472;
          v150 = __91__UIMainMenuSystem__mergeSidebarAndFullscreenMenusIfNeededWithBuilder_appDidCustomizeMenu___block_invoke_2;
          v151 = &unk_1E70F45F8;
          v152 = v111;
          [v110 replaceChildrenOfMenuForIdentifier:@"com.apple.menu.fullscreen" fromChildrenBlock:&v148];
          v120 = v152;
LABEL_117:

          goto LABEL_118;
        }

        v92 = [v85 menuForIdentifier:v89];
        children9 = [v92 children];
        v94 = [children9 indexOfObject:v86];

        children10 = [v92 children];
        if (v94 < [children10 count] - 1)
        {
          children11 = [v92 children];
          v96 = [children11 objectAtIndexedSubscript:v94 + 1];
          [v88 isEqual:v96];
        }
      }

      [v85 replaceChildrenOfMenuForIdentifier:@"com.apple.menu.open" fromChildrenBlock:&__block_literal_global_123];
      v148 = MEMORY[0x1E69E9820];
      v149 = 3221225472;
      v150 = __85__UIMainMenuSystem__mergeNewItemAndOpenMenusIfNeededWithBuilder_appDidCustomizeMenu___block_invoke_2;
      v151 = &unk_1E70F45F8;
      v152 = v88;
      [v85 replaceChildrenOfMenuForIdentifier:@"com.apple.menu.new-item" fromChildrenBlock:&v148];
      v89 = v152;
      goto LABEL_91;
    }

    v131 = [v12 menuForIdentifier:?];
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    children12 = [v131 children];
    v20 = [children12 countByEnumeratingWithState:&v143 objects:&v148 count:16];
    if (v20)
    {
      v21 = 0;
      v22 = *v144;
      do
      {
        v23 = 0;
        do
        {
          if (*v144 != v22)
          {
            objc_enumerationMutation(children12);
          }

          v24 = *(*(&v143 + 1) + 8 * v23);
          v25 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            if (qword_1ED49A538 != -1)
            {
              dispatch_once(&qword_1ED49A538, &__block_literal_global_292);
            }

            v27 = qword_1ED49A530;
            if (os_log_type_enabled(qword_1ED49A530, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v24;
              _os_log_error_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "All root main menu children are required to be UIMenus. Ignoring non-UIMenu child: %{public}@", buf, 0xCu);
            }

            v21 = 1;
          }

          ++v23;
        }

        while (v20 != v23);
        v20 = [children12 countByEnumeratingWithState:&v143 objects:&v148 count:16];
      }

      while (v20);

      if (v21)
      {
        children13 = [v131 children];
        v29 = [children13 bs_filter:&__block_literal_global_107];
        v30 = [v131 menuByReplacingChildren:v29];

        [v138 replaceMenuForIdentifier:@"com.apple.menu.root" withMenu:v30];
      }

      else
      {
        v30 = v131;
      }
    }

    else
    {
    }

    v31 = v138;
    v32 = [v31 menuForIdentifier:@"com.apple.menu.root"];
    v33 = [v31 menuForIdentifier:@"com.apple.menu.application"];
    if (v33)
    {
      children14 = [v32 children];
      firstObject4 = [children14 firstObject];
      v36 = v33;
      v37 = v36;
      if (firstObject4 == v36)
      {

        goto LABEL_38;
      }

      if (firstObject4)
      {
        v38 = [firstObject4 isEqual:v36];

        if (v38)
        {
LABEL_38:

          v39 = v31;
          v40 = [v39 menuForIdentifier:@"com.apple.menu.quit"];
          v41 = [v39 menuForIdentifier:@"com.apple.menu.application"];
          v42 = v41;
          if (v40)
          {
            children15 = [v41 children];
            lastObject = [children15 lastObject];
            v45 = v40;
            v46 = v45;
            if (lastObject == v45)
            {

              goto LABEL_48;
            }

            if (lastObject)
            {
              v47 = [lastObject isEqual:v45];

              if (v47)
              {
LABEL_48:

                v48 = v39;
                v49 = [v48 menuForIdentifier:@"com.apple.menu.help"];
                if (v49)
                {
                  v50 = [v48 _parentOfMenuForIdentifier:@"com.apple.menu.help" commandForIdentifier:0];
                  if ([v50 isEqualToString:@"com.apple.menu.root"])
                  {

                    goto LABEL_54;
                  }

                  [v48 removeMenuForIdentifier:@"com.apple.menu.help"];
                }

                else
                {
                  v49 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.help" children:MEMORY[0x1E695E0F0]];
                }

                [v48 insertChildMenu:v49 atEndOfMenuForIdentifier:@"com.apple.menu.root"];
LABEL_54:

                v51 = v48;
                v52 = [v51 menuForIdentifier:@"com.apple.menu.window"];
                if (v52)
                {
                  v53 = [v51 _parentOfMenuForIdentifier:@"com.apple.menu.window" commandForIdentifier:0];
                  if ([v53 isEqualToString:@"com.apple.menu.root"])
                  {

LABEL_60:
                    v54 = v51;
                    goto LABEL_61;
                  }

                  [v51 removeMenuForIdentifier:@"com.apple.menu.window"];
                }

                else
                {
                  v52 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.window" children:MEMORY[0x1E695E0F0]];
                }

                [v51 insertSiblingMenu:v52 beforeMenuForIdentifier:@"com.apple.menu.help"];
                goto LABEL_60;
              }
            }

            else
            {
            }

            [v39 removeMenuForIdentifier:@"com.apple.menu.quit"];
          }

          else
          {
            v46 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.quit" children:MEMORY[0x1E695E0F0]];
          }

          [v39 insertChildMenu:v46 atEndOfMenuForIdentifier:@"com.apple.menu.application"];
          goto LABEL_48;
        }
      }

      else
      {
      }

      [v31 removeMenuForIdentifier:@"com.apple.menu.application"];
    }

    else
    {
      v37 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.application" children:MEMORY[0x1E695E0F0]];
    }

    [v31 insertChildMenu:v37 atStartOfMenuForIdentifier:@"com.apple.menu.root"];
    goto LABEL_38;
  }

LABEL_120:

  return v136;
}

- (void)setBuildConfiguration:(id)configuration buildHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(UIMenuSystem *)self _isBuilding])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMainMenuSystem.m" lineNumber:1342 description:@"Cannot set a main menu system configuration while the main menu system is building."];

    if (configurationCopy)
    {
      goto LABEL_3;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIMainMenuSystem.m" lineNumber:1343 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

LABEL_3:
  v9 = self->_configuration;
  v10 = configurationCopy;
  v18 = v10;
  if (v9 == v10)
  {

    goto LABEL_12;
  }

  if (v10 && v9)
  {
    v11 = [(UIMainMenuSystemConfiguration *)v9 isEqual:v10];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = [(UIMainMenuSystemConfiguration *)v18 copy];
  configuration = self->_configuration;
  self->_configuration = v12;

  v14 = _Block_copy(handlerCopy);
  buildHandler = self->_buildHandler;
  self->_buildHandler = v14;

  if (!self->_overrideConfiguration)
  {
    [(UIMenuSystem *)self _invalidateCachedInitialRootMenu];
    [(UIMainMenuSystem *)self setNeedsRebuild];
  }

LABEL_12:
}

- (void)_setOverrideBuildConfiguration:(id)configuration overrideBuildHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(UIMenuSystem *)self _isBuilding])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMainMenuSystem.m" lineNumber:1355 description:@"Cannot set an override main menu system configuration while the main menu system is building."];
  }

  v9 = self->_overrideConfiguration;
  v10 = configurationCopy;
  v17 = v10;
  if (v9 == v10)
  {

    goto LABEL_11;
  }

  if (!v10 || !v9)
  {

    goto LABEL_10;
  }

  v11 = [(UIMainMenuSystemConfiguration *)v9 isEqual:v10];

  if (!v11)
  {
LABEL_10:
    v12 = [(UIMainMenuSystemConfiguration *)v17 copy];
    overrideConfiguration = self->_overrideConfiguration;
    self->_overrideConfiguration = v12;

    v14 = _Block_copy(handlerCopy);
    overrideBuildHandler = self->_overrideBuildHandler;
    self->_overrideBuildHandler = v14;

    [(UIMenuSystem *)self _invalidateCachedInitialRootMenu];
    [(UIMainMenuSystem *)self setNeedsRebuild];
  }

LABEL_11:
}

- (id)_effectiveConfiguration
{
  overrideConfiguration = self->_overrideConfiguration;
  if (!overrideConfiguration)
  {
    overrideConfiguration = self->_configuration;
  }

  return overrideConfiguration;
}

- (id)_effectiveBuildHandler
{
  v2 = 5;
  if (!self->_overrideConfiguration)
  {
    v2 = 3;
  }

  v3 = _Block_copy(*(&self->super.super.isa + OBJC_IVAR___UIMainMenuSystem__automaticallyRebuildingBuilder[v2]));

  return v3;
}

- (void)_setOverrideApplicationName:(id)name
{
  nameCopy = name;
  if (qword_1ED49A528 != -1)
  {
    dispatch_once(&qword_1ED49A528, &__block_literal_global_147);
  }

  if ((byte_1ED49A4F9 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMainMenuSystem.m" lineNumber:1378 description:@"Process is not approved to use -[UIMenuSystem _setOverrideApplicationName]"];
  }

  if ([(UIMenuSystem *)self _isBuilding])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIMainMenuSystem.m" lineNumber:1379 description:@"Cannot set an override application name while the main menu system is building."];
  }

  v6 = self->_overrideApplicationName;
  v7 = nameCopy;
  v17 = v7;
  if (v6 == v7)
  {

LABEL_17:
    v9 = v17;
    goto LABEL_18;
  }

  if (!v7 || !v6)
  {

    v9 = v17;
    goto LABEL_14;
  }

  v8 = [(NSString *)v6 isEqual:v7];

  v9 = v17;
  if ((v8 & 1) == 0)
  {
LABEL_14:
    v10 = [(NSString *)v9 copy];
    overrideApplicationName = self->_overrideApplicationName;
    self->_overrideApplicationName = v10;

    v12 = +[_UIDefaultCommands sharedCommands];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 16);
      *(v12 + 16) = 0;
    }

    [(UIMenuSystem *)self _invalidateCachedInitialRootMenu];
    [(UIMainMenuSystem *)self setNeedsRebuild];
    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __48__UIMainMenuSystem__setOverrideApplicationName___block_invoke()
{
  if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsInCallService())
  {
    result = 1;
  }

  else
  {
    result = _UIApplicationProcessIsUIKitester();
  }

  byte_1ED49A4F9 = result;
  return result;
}

@end