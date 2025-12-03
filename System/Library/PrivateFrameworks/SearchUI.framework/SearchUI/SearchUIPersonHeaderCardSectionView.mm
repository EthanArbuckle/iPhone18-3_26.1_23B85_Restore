@interface SearchUIPersonHeaderCardSectionView
- (UIEdgeInsets)layoutMargins;
- (id)contact;
- (id)setupContentView;
- (void)sendCommandEngagementFeedbackWithType:(id)type didSelectFromOptionsMenu:(BOOL)menu didDisplayHandleOptions:(BOOL)options;
- (void)updateWithContact:(id)contact person:(id)person;
- (void)updateWithPerson:(id)person;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIPersonHeaderCardSectionView

- (id)setupContentView
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUIPersonHeaderCardSectionView *)self setBoxView:v3];

  v4 = objc_opt_new();
  [v4 setDelegate:self];
  v5 = [[SearchUIPersonHeaderViewController alloc] initWithDowntimeButton:1];
  [(SearchUIPersonHeaderCardSectionView *)self setViewControllerWithDowntimeButton:v5];

  [(SearchUIPersonHeaderCardSectionView *)self setViewControllerWithPayButton:v4];
  view = [v4 view];
  v11[0] = view;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  boxView = [(SearchUIPersonHeaderCardSectionView *)self boxView];
  [boxView setArrangedSubviews:v7];

  [(SearchUIPersonHeaderCardSectionView *)self setViewController:v4];
  boxView2 = [(SearchUIPersonHeaderCardSectionView *)self boxView];

  return boxView2;
}

- (void)updateWithContact:(id)contact person:(id)person
{
  contactCopy = contact;
  personCopy = person;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__SearchUIPersonHeaderCardSectionView_updateWithContact_person___block_invoke;
  v10[3] = &unk_1E85B26A8;
  v11 = contactCopy;
  v12 = personCopy;
  selfCopy = self;
  v8 = personCopy;
  v9 = contactCopy;
  [SearchUIUtilities dispatchAsyncIfNecessary:v10];
}

void __64__SearchUIPersonHeaderCardSectionView_updateWithContact_person___block_invoke(uint64_t a1)
{
  v2 = [SearchUIDowntimeManager screenTimeIsEnabledForContact:*(a1 + 32)];
  v3 = [SearchUIDowntimeManager familyMemberForContact:*(a1 + 32) isMe:0];
  v4 = [SearchUIDowntimeManager isChildOrTeenFamilyMember:v3];

  v5 = [SearchUIDowntimeManager familyMemberForContact:0 isMe:1];
  v6 = [v5 isGuardian];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SearchUIPersonHeaderCardSectionView_updateWithContact_person___block_invoke_2;
  v9[3] = &unk_1E85B34B0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 32);
  v13 = v2 & v6 & v4;
  [SearchUIUtilities dispatchMainIfNecessary:v9];
}

void __64__SearchUIPersonHeaderCardSectionView_updateWithContact_person___block_invoke_2(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) section];
  v4 = [v3 person];
  v5 = v4;
  if (v2)
  {
    v6 = [v4 displayName];
    [*(a1 + 32) displayName];
  }

  else
  {
    v6 = [v4 contactIdentifier];
    [*(a1 + 48) identifier];
  }
  v7 = ;
  v8 = [v6 isEqual:v7];

  v9 = [*(a1 + 40) contact];
  v10 = [v9 identifier];
  v11 = [*(a1 + 48) identifier];
  v12 = [v10 isEqual:v11];

  v13 = *(a1 + 40);
  if (*(a1 + 56))
  {
    [v13 viewControllerWithDowntimeButton];
  }

  else
  {
    [v13 viewControllerWithPayButton];
  }
  v14 = ;
  v15 = [*(a1 + 40) viewController];

  if (v15 == v14)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  if (v8 && (v16 & 1) == 0)
  {
    if (v15 != v14)
    {
      [*(a1 + 40) setViewController:v14];
      v17 = [v14 view];
      v21[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v19 = [*(a1 + 40) boxView];
      [v19 setArrangedSubviews:v18];
    }

    v20 = [*(a1 + 40) viewController];
    [v20 updateWithContact:*(a1 + 48) isActualContact:*(a1 + 32) != 0];
  }
}

- (void)updateWithPerson:(id)person
{
  personCopy = person;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SearchUIPersonHeaderCardSectionView_updateWithPerson___block_invoke;
  v6[3] = &unk_1E85B2540;
  v7 = personCopy;
  selfCopy = self;
  v5 = personCopy;
  [SearchUIUtilities dispatchAsyncIfNecessary:v6];
}

void __56__SearchUIPersonHeaderCardSectionView_updateWithPerson___block_invoke(int8x16_t *a1)
{
  v2 = +[SearchUIContactCache sharedCache];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SearchUIPersonHeaderCardSectionView_updateWithPerson___block_invoke_2;
  v4[3] = &unk_1E85B34D8;
  v3 = a1[2];
  v5 = vextq_s8(v3, v3, 8uLL);
  [v2 fetchContactForPerson:v3.i64[0] completionHandler:v4];
}

- (void)updateWithRowModel:(id)model
{
  v14.receiver = self;
  v14.super_class = SearchUIPersonHeaderCardSectionView;
  [(SearchUICardSectionView *)&v14 updateWithRowModel:model];
  contact = [(SearchUIPersonHeaderCardSectionView *)self contact];
  section = [(SearchUICardSectionView *)self section];
  person = [section person];

  contactIdentifier = [person contactIdentifier];
  identifier = [contact identifier];
  v9 = [contactIdentifier isEqual:identifier];

  if ((v9 & 1) == 0)
  {
    viewController = [(SearchUIPersonHeaderCardSectionView *)self viewController];
    [viewController updateWithContact:0 isActualContact:0];

    if (contactIdentifier)
    {
      v11 = +[SearchUIContactCache sharedCache];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__SearchUIPersonHeaderCardSectionView_updateWithRowModel___block_invoke;
      v12[3] = &unk_1E85B34D8;
      v12[4] = self;
      v13 = person;
      [v11 fetchContactForIdentifier:contactIdentifier completionHandler:v12];
    }

    else
    {
      [(SearchUIPersonHeaderCardSectionView *)self updateWithPerson:person];
    }
  }
}

void __58__SearchUIPersonHeaderCardSectionView_updateWithRowModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __58__SearchUIPersonHeaderCardSectionView_updateWithRowModel___block_invoke_2;
    v9 = &unk_1E85B2540;
    v10 = *(a1 + 32);
    v5 = v3;
    v11 = v5;
    [SearchUIUtilities dispatchMainIfNecessary:&v6];
    [*(a1 + 32) updateWithContact:v5 person:{0, v6, v7, v8, v9, v10}];
  }

  else
  {
    [*(a1 + 32) updateWithPerson:*(a1 + 40)];
  }
}

void __58__SearchUIPersonHeaderCardSectionView_updateWithRowModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) section];
  v3 = [v2 person];
  v4 = [v3 contactIdentifier];
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 isEqual:v5];

  v7 = [*(a1 + 32) contact];
  v8 = [v7 identifier];
  v9 = [*(a1 + 40) identifier];
  v10 = [v8 isEqual:v9];

  if (v6 && (v10 & 1) == 0)
  {
    v11 = [*(a1 + 32) viewController];
    [v11 updateWithContact:*(a1 + 40) isActualContact:1];
  }
}

- (UIEdgeInsets)layoutMargins
{
  +[SearchUIUtilities standardTableCellContentInset];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (id)contact
{
  viewController = [(SearchUIPersonHeaderCardSectionView *)self viewController];
  group = [viewController group];
  contacts = [group contacts];
  firstObject = [contacts firstObject];

  return firstObject;
}

- (void)sendCommandEngagementFeedbackWithType:(id)type didSelectFromOptionsMenu:(BOOL)menu didDisplayHandleOptions:(BOOL)options
{
  optionsCopy = options;
  menuCopy = menu;
  typeCopy = type;
  v8 = objc_opt_new();
  [v8 setDidSelectFromOptionsMenu:menuCopy];
  [v8 setDidDisplayHandleOptions:optionsCopy];
  if ([typeCopy isEqual:*MEMORY[0x1E695C170]])
  {
    v9 = 1;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C178]])
  {
    v9 = 2;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C1B8]])
  {
    v9 = 3;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C150]])
  {
    v9 = 4;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C190]])
  {
    v9 = 5;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C1A8]])
  {
    v9 = 6;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C188]])
  {
    v9 = 7;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C160]])
  {
    v9 = 8;
  }

  else if ([typeCopy isEqual:*MEMORY[0x1E695C168]])
  {
    v9 = 9;
  }

  else
  {
    v9 = 0;
  }

  [v8 setContactActionType:v9];
  v10 = objc_opt_new();
  [v10 setCommand:v8];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v13 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];
  v14 = [SearchUICommandHandler handlerForButton:v10 rowModel:rowModel environment:v13];
  v15 = v14;
  if (optionsCopy)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  [v14 wasPerformedWithTriggerEvent:2 punchout:0 destination:v16];
}

@end