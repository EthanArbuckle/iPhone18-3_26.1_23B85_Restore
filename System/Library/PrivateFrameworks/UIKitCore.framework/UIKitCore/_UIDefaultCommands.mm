@interface _UIDefaultCommands
+ (id)sharedCommands;
- (id)defaultCommandForAction:(int)action wantsCopy:;
- (void)defaultCommandsContainingAppName;
- (void)fixedDefaultCommands;
@end

@implementation _UIDefaultCommands

+ (id)sharedCommands
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36___UIDefaultCommands_sharedCommands__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_1ED49E538 != -1)
  {
    dispatch_once(&qword_1ED49E538, block);
  }

  v1 = _MergedGlobals_1134;

  return v1;
}

- (void)fixedDefaultCommands
{
  v136[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = self[1];
    if (!v1)
    {
      selfCopy = self;
      v59 = _UINSLocalizedStringWithDefaultValue(@"Duplicate", @"Duplicate");
      v56 = _UINSLocalizedStringWithDefaultValue(@"Move", @"Move");
      v57 = _UINSLocalizedStringWithDefaultValue(@"Rename", @"Rename");
      v54 = _UINSLocalizedStringWithDefaultValue(@"Export", @"Export");
      v73 = [_UISelectorDictionary alloc];
      v2 = _UINSLocalizedStringWithDefaultValue(@"Dictation", @"Dictation");
      v3 = [UIKeyCommand commandWithTitle:v2 imageName:@"microphone" action:sel_startDictation_ input:@"d" modifierFlags:0x800000];
      _allowGlobeModifierKeyCommand = [v3 _allowGlobeModifierKeyCommand];

      [_allowGlobeModifierKeyCommand setRepeatBehavior:2];
      v4 = _UINSLocalizedStringWithDefaultValue(@"Emoji", @"Emoji");
      v5 = [UIKeyCommand commandWithTitle:v4 imageName:@"emoji.face.grinning" action:sel_orderFrontCharacterPalette_ input:@"e" modifierFlags:0x800000];
      _allowGlobeModifierKeyCommand2 = [v5 _allowGlobeModifierKeyCommand];

      [_allowGlobeModifierKeyCommand2 setRepeatBehavior:2];
      v131 = [UIKeyCommand commandWithTitle:&stru_1EFB14550 imageName:@"emoji.face.grinning" action:sel__handleLegacyEmojiKeyboardShortcut_ input:@" " modifierFlags:1310720];
      [v131 setAttributes:4];
      [v131 setRepeatBehavior:2];
      v86 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FILE_NEW_WINDOW", @"New Window");
      v130 = [UIKeyCommand commandWithTitle:v86 imageName:@"plus.square" action:sel_requestNewScene_ input:@"n" modifierFlags:0x100000];
      v85 = _UIKitBundle();
      v84 = [v85 localizedStringForKey:@"Copy[Menu]" value:@"Copy" table:@"Localizable"];
      v129 = [UIKeyCommand commandWithTitle:v84 imageName:@"document.on.document" action:sel_copy_ input:@"c" modifierFlags:0x100000];
      v83 = _UINSLocalizedStringWithDefaultValue(@"Cut", @"Cut");
      v128 = [UIKeyCommand commandWithTitle:v83 imageName:@"scissors" action:sel_cut_ input:@"x" modifierFlags:0x100000];
      v82 = _UINSLocalizedStringWithDefaultValue(@"Smaller", @"Smaller");
      v127 = [UIKeyCommand commandWithTitle:v82 imageName:@"textformat.size.smaller" action:sel_decreaseSize_ input:@"-" modifierFlags:0x100000];
      v81 = _UIKitBundle();
      v80 = [v81 localizedStringForKey:@"Delete[Menu]" value:@"Delete" table:@"Localizable"];
      v126 = [UICommand commandWithTitle:v80 imageName:@"trash" attributes:2 action:sel_delete_];
      v79 = _UINSLocalizedStringWithDefaultValue(@"Bigger", @"Bigger");
      v125 = [UIKeyCommand commandWithTitle:v79 imageName:@"textformat.size.larger" action:sel_increaseSize_ input:@"+" modifierFlags:0x100000];
      v78 = _UINSLocalizedStringWithDefaultValue(@"Default", @"Default");
      v124 = [UICommand commandWithTitle:v78 imageName:@"arrow.left.arrow.right" action:sel_makeTextWritingDirectionNatural_];
      v77 = _UINSLocalizedStringWithDefaultValue(@"Left to Right", @"Left to Right");
      v123 = [UICommand commandWithTitle:v77 imageName:@"arrow.text.left.to.right" preferredDisplayMode:3 action:sel_makeTextWritingDirectionLeftToRight_];
      v75 = _UINSLocalizedStringWithDefaultValue(@"Right to Left", @"Right to Left");
      v122 = [UICommand commandWithTitle:v75 imageName:@"arrow.text.right.to.left" preferredDisplayMode:3 action:sel_makeTextWritingDirectionRightToLeft_];
      v74 = _UINSLocalizedStringWithDefaultValue(@"Paste", @"Paste");
      v121 = [UIKeyCommand commandWithTitle:v74 imageName:@"document.on.clipboard" action:sel_paste_ input:@"v" modifierFlags:0x100000];
      v72 = _UINSLocalizedStringWithDefaultValue(@"Paste and Match Style", @"Paste and Match Style");
      v120 = [UIKeyCommand commandWithTitle:v72 imageName:@"paintbrush.page.on.clipboard" action:sel_pasteAndMatchStyle_ input:@"v" modifierFlags:1703936];
      v71 = _UINSLocalizedStringWithDefaultValue(@"Redo", @"Redo");
      v119 = [UIKeyCommand commandWithTitle:v71 imageName:@"arrow.uturn.forward" action:sel_redo_ input:@"z" modifierFlags:1179648];
      v70 = _UINSLocalizedStringWithDefaultValue(@"Select", @"Select");
      v118 = [UICommand commandWithTitle:v70 imageName:@"selection.pin.in.out" action:sel_select_];
      v69 = _UINSLocalizedStringWithDefaultValue(@"Select All", @"Select All");
      v117 = [UIKeyCommand commandWithTitle:v69 imageName:@"character.textbox" action:sel_selectAll_ input:@"a" modifierFlags:0x100000];
      v68 = _UINSLocalizedStringWithDefaultValue(@"TEXT_FORMATTING_MORE", @"More…");
      v116 = [UIKeyCommand commandWithTitle:v68 imageName:@"textformat" action:sel__showTextFormattingOptions_ input:@"t" modifierFlags:1572864];
      v67 = _UINSLocalizedStringWithDefaultValue(@"Bold", @"Bold");
      v115 = [UIKeyCommand commandWithTitle:v67 imageName:@"bold" action:sel_toggleBoldface_ input:@"b" modifierFlags:0x100000];
      v66 = _UINSLocalizedStringWithDefaultValue(@"Italic", @"Italic");
      v114 = [UIKeyCommand commandWithTitle:v66 imageName:@"italic" action:sel_toggleItalics_ input:@"i" modifierFlags:0x100000];
      v65 = _UINSLocalizedStringWithDefaultValue(@"Underline", @"Underline");
      v113 = [UIKeyCommand commandWithTitle:v65 imageName:@"underline" action:sel_toggleUnderline_ input:@"u" modifierFlags:0x100000];
      v64 = _UINSLocalizedStringWithDefaultValue(@"Undo", @"Undo");
      v112 = [UIKeyCommand commandWithTitle:v64 imageName:@"arrow.uturn.backward" action:sel_undo_ input:@"z" modifierFlags:0x100000];
      v63 = _UINSLocalizedStringWithDefaultValue(@"Pause", @"Pause");
      v111 = [UICommand commandWithTitle:v63 imageName:@"pause" action:sel__accessibilityPauseSpeaking_];
      v62 = _UINSLocalizedStringWithDefaultValue(@"Speak", @"Speak");
      v110 = [UICommand commandWithTitle:v62 imageName:@"play" action:sel__accessibilitySpeak_];
      v61 = _UINSLocalizedStringWithDefaultValue(@"Speak…", @"Speak…");
      v109 = [UICommand commandWithTitle:v61 imageName:@"play" action:sel__accessibilitySpeakLanguageSelection_];
      v60 = _UINSLocalizedStringWithDefaultValue(@"Learn…", @"Learn…");
      v108 = [UICommand commandWithTitle:v60 imageName:@"character.book.closed" action:sel_addShortcut_ fallbackAction:sel__addShortcut_];
      v58 = _UINSLocalizedStringWithDefaultValue(@"Look Up", @"Look Up");
      v107 = [UICommand commandWithTitle:v58 imageName:@"doc.text.magnifyingglass" action:sel__define_ fallbackAction:sel_define_];
      v55 = _UINSLocalizedStringWithDefaultValue(@"Insert Drawing", @"Insert Drawing");
      v106 = [UICommand commandWithTitle:v55 imageName:@"scribble" action:sel__insertDrawing_];
      v53 = _UINSLocalizedStringWithDefaultValue(@"Look Up", @"Look Up");
      v105 = [UICommand commandWithTitle:v53 imageName:@"doc.text.magnifyingglass" action:sel__lookup_ fallbackAction:sel_lookup_];
      v52 = _UINSLocalizedStringWithDefaultValue(@"Replace…", @"Replace…");
      v104 = [UICommand commandWithTitle:v52 imageName:@"character.cursor.ibeam" action:sel_promptForReplace_ fallbackAction:sel__promptForReplace_];
      v51 = _UINSLocalizedStringWithDefaultValue(@"Share…", @"Share…");
      v103 = [UICommand commandWithTitle:v51 imageName:@"square.and.arrow.up" action:sel_share_ fallbackAction:sel__share_];
      v50 = _UINSLocalizedStringWithDefaultValue(@"Find", @"Find");
      v102 = [UIKeyCommand commandWithTitle:v50 imageName:0 action:sel_find_ input:@"f" modifierFlags:0x100000];
      v49 = _UINSLocalizedStringWithDefaultValue(@"Find & Replace", @"Find & Replace");
      v101 = [UIKeyCommand commandWithTitle:v49 imageName:0 action:sel_findAndReplace_ input:@"f" modifierFlags:1572864];
      v48 = _UINSLocalizedStringWithDefaultValue(@"Find Next", @"Find Next");
      v100 = [UIKeyCommand commandWithTitle:v48 imageName:0 action:sel_findNext_ input:@"g" modifierFlags:0x100000];
      v47 = _UINSLocalizedStringWithDefaultValue(@"Find Previous", @"Find Previous");
      v99 = [UIKeyCommand commandWithTitle:v47 imageName:0 action:sel_findPrevious_ input:@"g" modifierFlags:1179648];
      v46 = _UINSLocalizedStringWithDefaultValue(@"Use Selection for Find", @"Use Selection for Find");
      v98 = [UIKeyCommand commandWithTitle:v46 imageName:0 action:sel_useSelectionForFind_ input:@"e" modifierFlags:0x100000];
      v45 = _UINSLocalizedStringWithDefaultValue(@"Find Selection", @"Find Selection");
      v97 = [UICommand commandWithTitle:v45 imageName:@"text.magnifyingglass" action:sel_findSelected_ fallbackAction:sel__findSelected_];
      v96 = [UIKeyCommand commandWithTitle:v59 imageName:@"plus.square.on.square" action:sel_duplicate_ input:@"S" modifierFlags:1179648];
      v93 = [UICommand commandWithTitle:v57 imageName:@"pencil" action:sel_rename_];
      v95 = [UICommand commandWithTitle:v56 imageName:@"folder" action:sel_move_];
      v94 = [UICommand commandWithTitle:v54 imageName:@"square.and.arrow.up.on.square" action:sel_export_];
      v92 = [UICommand commandWithTitle:@"简⇄繁" imageName:0 action:sel_transliterateChinese_ fallbackAction:sel__transliterateChinese_];
      v44 = _UINSLocalizedStringWithDefaultValue(@"Open...", @"Open...");
      v91 = [UIKeyCommand commandWithTitle:v44 imageName:@"arrow.up.forward" action:sel_open_ input:@"o" modifierFlags:0x100000];
      v43 = _UINSLocalizedStringWithDefaultValue(@"Open in New Window", @"Open in New Window");
      v90 = [UICommand commandWithTitle:v43 imageName:@"rectangle.badge.plus" action:sel__openInNewCanvas_];
      v42 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXTALIGN_LEFT", @"Align Left");
      v89 = [UIKeyCommand commandWithTitle:v42 imageName:@"text.alignleft" action:sel_alignLeft_ input:@"{" modifierFlags:0x100000];
      v41 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXTALIGN_CENTER", @"Center");
      v88 = [UIKeyCommand commandWithTitle:v41 imageName:@"text.aligncenter" action:sel_alignCenter_ input:@"|" modifierFlags:0x100000];
      v40 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXTALIGN_JUSTIFY", @"Justify");
      v87 = [UICommand commandWithTitle:v40 imageName:@"text.justify" action:sel_alignJustified_];
      v39 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXTALIGN_RIGHT", @"Align Right");
      v36 = [UIKeyCommand commandWithTitle:v39 imageName:@"text.alignright" action:sel_alignRight_ input:@"}" modifierFlags:0x100000];
      v38 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_VIEW_CUSTOMIZE_TOOLBAR", @"Customize Toolbar…");
      v35 = [UICommand commandWithTitle:v38 imageName:@"wrench" action:sel_runToolbarCustomizationPalette_];
      v6 = _UINSLocalizedStringWithDefaultValue(@"Show Sidebar", @"Show Sidebar");
      v34 = [UIKeyCommand commandWithTitle:v6 imageName:@"sidebar.leading" action:sel_toggleSidebar_ input:@"s" modifierFlags:1310720];

      v37 = _UINSLocalizedStringWithDefaultValue(@"Show Inspector", @"Show Inspector");
      v33 = [UIKeyCommand commandWithTitle:v37 imageName:@"sidebar.trailing" action:sel_toggleInspector_ input:@"i" modifierFlags:1310720];
      v7 = _UINSLocalizedStringWithDefaultValue(@"Show Keyboard", @"Show Keyboard");
      v32 = [UICommand commandWithTitle:v7 imageName:@"keyboard" action:sel__toggleSoftwareKeyboard_];

      v8 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FILE_CLOSE", @"Close");
      v9 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FILE_CLOSE_ALL", @"Close All");
      v10 = [UIKeyCommand commandWithTitle:v9 imageName:@"xmark" action:sel__performCloseAll_ input:@"w" modifierFlags:1572864];

      [v10 _setEnumerationPriority:-1];
      v11 = [_UIMenuLeafAlternate alternateWithModifierFlags:0x80000 menuLeaf:v10];
      v136[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:1];
      v13 = [UIKeyCommand commandWithTitle:v8 imageName:@"xmark" action:sel_performClose_ input:@"w" modifierFlags:0x100000 propertyList:0 leafOrCommandAlternates:v12];

      v14 = v13;
      v29 = v13;
      [v13 _setEnumerationPriority:-1];
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = __42___UIDefaultCommands_fixedDefaultCommands__block_invoke_9;
      v134[3] = &unk_1E710B660;
      v135 = &stru_1EFB14550;
      v15 = __42___UIDefaultCommands_fixedDefaultCommands__block_invoke_9(v134);
      v16 = _UINSLocalizedStringWithDefaultValue(@"Print", @"Print");
      v17 = [UIKeyCommand commandWithTitle:v16 imageName:@"printer" action:sel_print_ input:@"p" modifierFlags:0x100000];

      v18 = v17;
      v28 = v17;
      [v17 setRepeatBehavior:2];
      v31 = +[UIAction _textFromCameraTitle];
      v30 = +[UIAction _textFromCameraImageName];
      v19 = [UICommand commandWithTitle:v31 imageName:v30 action:sel_captureTextFromCamera_];
      v20 = _UINSLocalizedStringWithDefaultValue(@"Translate", @"Translate");
      v21 = [UICommand commandWithTitle:v20 imageName:@"translate" action:sel__translate_ fallbackAction:sel_translate_];
      v22 = _UINSLocalizedStringWithDefaultValue(@"Writing Tools", @"Writing Tools");
      if (_UISolariumEnabled())
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      v24 = [UICommand commandWithTitle:v22 imageName:@"apple.writing.tools" preferredDisplayMode:v23 action:sel_showWritingTools_];
      v25 = [(_UISelectorDictionary *)v73 initWithMapping:&__block_literal_global_292 objects:_allowGlobeModifierKeyCommand, _allowGlobeModifierKeyCommand2, v131, v130, v129, v128, v127, v126, v125, v124, v123, v122, v121, v120, v119, v118, v117, v116, v115, v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v93, v95, v94, v92, v91, v90, v89, v88, v87, v36, v35, v34, v33, v32, v14, v15, v18, v19, v21, v24, 0];
      v26 = selfCopy[1];
      selfCopy[1] = v25;

      v1 = selfCopy[1];
    }

    self = v1;
  }

  return self;
}

- (void)defaultCommandsContainingAppName
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = [_UISelectorDictionary alloc];
      v5 = +[UIApplication _applicationNameForMenus];
      v11 = _UILocalizedFormat(@"KEYSHORTCUTHUD_APP_SETTINGS_ELLIPSIS", @"Key Shortcut HUD: App menu Settings item title. This string is parameterized to contain the provided app name app name, so it is expected to look like Mail Settings… or Messages Settings…. This string is displayed in the iOS Key Shortcut HUD. It should have an ellipsis at the end, indicating that it opens a separate panel.", @"%@ Settings…", v6, v7, v8, v9, v10, v5);
      0x100000 = [UIKeyCommand commandWithTitle:v11 imageName:@"gear" action:sel_orderFrontPreferencesPanel_ input:@" modifierFlags:", 0x100000];

      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [0x100000 _setEnumerationPriority:-1];
      }

      v13 = [(_UISelectorDictionary *)v4 initWithMapping:&__block_literal_global_579_0 objects:0x100000, 0];
      v14 = selfCopy[2];
      selfCopy[2] = v13;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)defaultCommandForAction:(int)action wantsCopy:
{
  if (!self)
  {
    v7 = 0;
    goto LABEL_7;
  }

  fixedDefaultCommands = [(_UIDefaultCommands *)self fixedDefaultCommands];
  v7 = [fixedDefaultCommands objectForSelector:a2];

  if (!v7)
  {
    defaultCommandsContainingAppName = [(_UIDefaultCommands *)self defaultCommandsContainingAppName];
    v7 = [defaultCommandsContainingAppName objectForSelector:a2];

    if (!action)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (action)
  {
LABEL_6:
    v9 = [v7 copy];

    v7 = v9;
  }

LABEL_7:

  return v7;
}

@end