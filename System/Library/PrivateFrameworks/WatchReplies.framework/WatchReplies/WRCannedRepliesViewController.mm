@interface WRCannedRepliesViewController
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (WRCannedRepliesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)cannedReplies;
- (id)cannedRepliesFromSpecifiers;
- (id)customReply:(id)a3;
- (id)includeSmartReplies;
- (id)newCannedReplySpecifier;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)addNewReply:(id)a3;
- (void)configureCellAccessoryImage:(id)a3;
- (void)loadRepliesStoreIfNeeded;
- (void)returnPressedAtEnd;
- (void)saveReplies;
- (void)setCustomReply:(id)a3 specifier:(id)a4;
- (void)setIncludeSmartReplies:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateEditDoneButton;
- (void)viewDidLoad;
@end

@implementation WRCannedRepliesViewController

- (WRCannedRepliesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = WRCannedRepliesViewController;
  v4 = [(WRCannedRepliesViewController *)&v6 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v4->_supportedEnhancedEditing = +[WRCannedRepliesStore supportsEnhancedEditing];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WRCannedRepliesViewController;
  [(WRCannedRepliesViewController *)&v4 viewDidLoad];
  if (![(WRCannedRepliesViewController *)self category])
  {
    v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Set the category before accessing the view. WRCategoryQuickboard is an invalid category." userInfo:0];
    [v3 raise];
  }
}

- (void)updateEditDoneButton
{
  if (self->_supportedEnhancedEditing && (-[WRCannedRepliesViewController cannedReplies](self, "cannedReplies"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v6 = [(WRCannedRepliesViewController *)self editButtonItem];
    v5 = [(WRCannedRepliesViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v6];
  }

  else
  {
    v6 = [(WRCannedRepliesViewController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277D3FAD8];
    v7 = WRBundle();
    v8 = [v7 localizedStringForKey:@"DEFAULT_REPLIES" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
    v9 = [v6 groupSpecifierWithName:v8];

    v10 = WRBundle();
    v11 = [v10 localizedStringForKey:@"DEFAULT_REPLIES_HELP" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v5 addObject:v9];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = [v5 indexOfObject:v9];
    v12 = v30[3];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30[3] = v12 + 1;
      v13 = [(WRCannedRepliesViewController *)self cannedReplies];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __43__WRCannedRepliesViewController_specifiers__block_invoke;
      v25 = &unk_279E66A28;
      v26 = self;
      v14 = v5;
      v27 = v14;
      v28 = &v29;
      [v13 enumerateObjectsUsingBlock:&v22];
      if (self->_supportedEnhancedEditing)
      {
        v15 = MEMORY[0x277D3FAD8];
        v16 = WRBundle();
        v17 = [v16 localizedStringForKey:@"ADD_NEW_REPLY" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
        v18 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:13 edit:{0, v22, v23, v24, v25, v26}];
        addNewSpecifier = self->_addNewSpecifier;
        self->_addNewSpecifier = v18;

        [(PSSpecifier *)self->_addNewSpecifier setButtonAction:sel_addNewReply_];
        [(PSSpecifier *)self->_addNewSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
        [v14 addObject:self->_addNewSpecifier];
      }
    }

    v20 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    _Block_object_dispose(&v29, 8);
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __43__WRCannedRepliesViewController_specifiers__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v16 = v3;
  if (v4[1496] == 1)
  {
    v5 = [v3 defaultReplyText];
    v6 = [v5 isEqualToString:@"SMART_REPLIES_MARKER"];

    if (v6)
    {
      v7 = MEMORY[0x277D3FAD8];
      v8 = WRBundle();
      v9 = [v8 localizedStringForKey:@"SMART_REPLIES" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
      v10 = [v7 preferenceSpecifierNamed:v9 target:a1[4] set:sel_setIncludeSmartReplies_specifier_ get:sel_includeSmartReplies detail:0 cell:6 edit:0];
      v11 = a1[4];
      v12 = *(v11 + 1472);
      *(v11 + 1472) = v10;

      v13 = *(a1[4] + 1472);
      goto LABEL_6;
    }

    v4 = a1[4];
  }

  v13 = [v4 newCannedReplySpecifier];
  v14 = [v16 defaultReplyText];
  [v13 setPlaceholder:v14];

LABEL_6:
  [v13 setProperty:v16 forKey:@"WRCannedReplyKey"];
  v15 = a1[5];
  ++*(*(a1[6] + 8) + 24);
  [v15 insertObject:v13 atIndex:?];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = WRCannedRepliesViewController;
  v5 = [(WRCannedRepliesViewController *)&v12 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 tag];
  if (v6 == 6)
  {
    v9 = BPSBridgeTintColor();
    v10 = [v5 textLabel];
    [v10 setTextColor:v9];

    [v5 setSelectionStyle:3];
  }

  else if (v6 == 8)
  {
    v7 = [v5 editableTextField];
    [v7 setClearButtonMode:1];

    v8 = [v5 editableTextField];
    [v8 setReturnKeyType:9];

    [v5 setShowsReorderControl:{-[WRCannedRepliesViewController isEditing](self, "isEditing")}];
    [(WRCannedRepliesViewController *)self configureCellAccessoryImage:v5];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  if (self->_supportedEnhancedEditing)
  {
    v8 = [(WRCannedRepliesViewController *)self specifierAtIndexPath:v7];
    v9 = [v8 cellType];

    if (v9 == 8)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1 && self->_supportedEnhancedEditing)
  {
    v6 = [(WRCannedRepliesViewController *)self specifierAtIndexPath:a5];
    [WRCannedRepliesViewController removeSpecifier:"removeSpecifier:animated:" animated:?];
    if (([(WRCannedRepliesViewController *)self isEditing]& 1) == 0)
    {
      [(WRCannedRepliesViewController *)self saveReplies];
    }
  }
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (self->_supportedEnhancedEditing && [(WRCannedRepliesViewController *)self isEditing])
  {
    v6 = [(WRCannedRepliesViewController *)self specifierAtIndexPath:v5];
    v7 = [v6 cellType];

    v8 = ((v7 - 6) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_supportedEnhancedEditing)
  {
    v10 = *MEMORY[0x277D3FC48];
    if ([*(&self->super.super.super.super.super.isa + v10) count])
    {
      v11 = [(WRCannedRepliesViewController *)self indexForIndexPath:v8];
      v12 = [(WRCannedRepliesViewController *)self indexForIndexPath:v9];
      if (v11 >= [*(&self->super.super.super.super.super.isa + v10) count])
      {
        [WRCannedRepliesViewController tableView:moveRowAtIndexPath:toIndexPath:];
      }

      if (v11 < [*(&self->super.super.super.super.super.isa + v10) count])
      {
        v13 = [(WRCannedRepliesViewController *)self specifierAtIndex:v11];
        if (v13)
        {
          v14 = [*(&self->super.super.super.super.super.isa + v10) mutableCopy];
          if (v12 >= [v14 count])
          {
            [WRCannedRepliesViewController tableView:moveRowAtIndexPath:toIndexPath:];
          }

          if (v12 < [v14 count])
          {
            [v14 removeObjectAtIndex:v11];
            [v14 insertObject:v13 atIndex:v12];
          }

          v15 = *(&self->super.super.super.super.super.isa + v10);
          *(&self->super.super.super.super.super.isa + v10) = v14;
        }
      }
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WRCannedRepliesViewController;
  if ([-[WRCannedRepliesViewController class](&v11 class)])
  {
    v10.receiver = self;
    v10.super_class = WRCannedRepliesViewController;
    [(WRCannedRepliesViewController *)&v10 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  v8 = [v6 cellForRowAtIndexPath:v7];
  if ([v8 tag] == 6)
  {
    v9 = [v8 control];
    [v9 setOn:objc_msgSend(v9 animated:{"isOn") ^ 1, 1}];
  }
}

- (void)returnPressedAtEnd
{
  v3 = [*MEMORY[0x277D76620] keyWindow];
  v2 = [v3 firstResponder];
  [v2 resignFirstResponder];
}

- (id)newCannedReplySpecifier
{
  result = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:0 target:self set:sel_setCustomReply_specifier_ get:sel_customReply_ detail:0 cell:8 edit:0];
  *(result + *MEMORY[0x277D3FC88]) = 2;
  return result;
}

- (void)setCustomReply:(id)a3 specifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 propertyForKey:@"WRCannedReplyKey"];
  v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v13 stringByTrimmingCharactersInSet:v8];

  if (([v13 isEqualToString:&stru_288224B90] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", &stru_288224B90) & 1) == 0)
  {
    [v7 setText:v13];
    [(WRCannedRepliesViewController *)self saveReplies];
  }

  else
  {
    [(WRCannedRepliesViewController *)self reloadSpecifier:v6];
  }

  v10 = [v7 text];
  if ([v10 length])
  {
  }

  else
  {
    v11 = [v7 defaultReplyText];
    v12 = [v11 length];

    if (!v12)
    {
      [(WRCannedRepliesViewController *)self removeSpecifier:v6 animated:0];
      [(WRCannedRepliesViewController *)self saveReplies];
    }
  }
}

- (id)customReply:(id)a3
{
  v3 = [a3 propertyForKey:@"WRCannedReplyKey"];
  v4 = [v3 text];

  return v4;
}

- (void)setIncludeSmartReplies:(id)a3 specifier:(id)a4
{
  repliesStore = self->_repliesStore;
  v5 = [a3 BOOLValue];

  [(WRCannedRepliesStore *)repliesStore setIncludeSmartReplies:v5];
}

- (id)includeSmartReplies
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(WRCannedRepliesStore *)self->_repliesStore includeSmartReplies];

  return [v2 numberWithBool:v3];
}

- (void)configureCellAccessoryImage:(id)a3
{
  v4 = [a3 editableTextField];
  v15 = v4;
  if (!self->_accessoryImage || !self->_highlightedAccessoryImage)
  {
    v5 = [v4 _clearButton];
    v6 = [v5 imageForState:0];

    v7 = BPSAccessoryHighlightColor();
    v8 = [v6 _flatImageWithColor:v7];
    accessoryImage = self->_accessoryImage;
    self->_accessoryImage = v8;

    v10 = BPSAccessoryColor();
    v11 = [v6 _flatImageWithColor:v10];
    highlightedAccessoryImage = self->_highlightedAccessoryImage;
    self->_highlightedAccessoryImage = v11;

    v4 = v15;
  }

  v13 = [v4 _clearButton];
  [v13 setImage:self->_accessoryImage forState:0];

  v14 = [v15 _clearButton];
  [v14 setImage:self->_highlightedAccessoryImage forState:1];
}

- (void)addNewReply:(id)a3
{
  v4 = [(WRCannedRepliesViewController *)self indexOfSpecifier:self->_addNewSpecifier];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v14 = [(WRCannedRepliesViewController *)self newCannedReplySpecifier];
    v6 = objc_alloc_init(WRCannedReply);
    [v14 setProperty:v6 forKey:@"WRCannedReplyKey"];

    [(WRCannedRepliesViewController *)self insertSpecifier:v14 atIndex:v5 animated:1];
    [(WRCannedRepliesViewController *)self saveReplies];
    v7 = [(WRCannedRepliesViewController *)self table];
    v8 = [(WRCannedRepliesViewController *)self indexPathForSpecifier:v14];
    v9 = [v7 cellForRowAtIndexPath:v8];

    v10 = [v9 editableTextField];
    [v10 becomeFirstResponder];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *MEMORY[0x277D770B0];
    v13 = [v9 editableTextField];
    [v11 postNotificationName:v12 object:v13];
  }
}

- (id)cannedRepliesFromSpecifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = *MEMORY[0x277D3FC48];
  v5 = [v3 initWithCapacity:{objc_msgSend(*(&self->super.super.super.super.super.isa + v4), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(&self->super.super.super.super.super.isa + v4);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) propertyForKey:{@"WRCannedReplyKey", v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)cannedReplies
{
  [(WRCannedRepliesViewController *)self loadRepliesStoreIfNeeded];
  repliesStore = self->_repliesStore;

  return [(WRCannedRepliesStore *)repliesStore cannedReplies];
}

- (void)loadRepliesStoreIfNeeded
{
  if (!self->_repliesStore)
  {
    v3 = [[WRCannedRepliesStore alloc] initWithCategory:[(WRCannedRepliesViewController *)self category]];
    repliesStore = self->_repliesStore;
    self->_repliesStore = v3;

    MEMORY[0x2821F96F8]();
  }
}

- (void)saveReplies
{
  [(WRCannedRepliesViewController *)self loadRepliesStoreIfNeeded];
  v3 = [(WRCannedRepliesViewController *)self cannedRepliesFromSpecifiers];
  [(WRCannedRepliesStore *)self->_repliesStore setCannedReplies:v3];
}

@end