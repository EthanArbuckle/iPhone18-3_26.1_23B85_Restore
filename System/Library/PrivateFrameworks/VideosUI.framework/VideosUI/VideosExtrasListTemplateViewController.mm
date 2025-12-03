@interface VideosExtrasListTemplateViewController
+ (id)relatedContentViewControllerForElement:(id)element;
- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)template;
- (VideosExtrasListTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)templateElement;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addConstraintsToTableView:(id)view;
- (void)_configureBannerWithElement:(id)element;
- (void)_configureVignette:(BOOL)vignette;
- (void)_embedRelatedContentViewController;
- (void)_prepareLayout;
- (void)_pushRelatedViewController:(id)controller animated:(BOOL)animated;
- (void)_setDetailContraints;
- (void)_setRelatedContentEmbedded:(BOOL)embedded;
- (void)_unembedRelatedContent;
- (void)_updateForTemplate:(id)template;
- (void)_updateRelatedContent:(id)content forListItem:(id)item;
- (void)dealloc;
- (void)setRelatedContentViewController:(id)controller;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VideosExtrasListTemplateViewController

- (VideosExtrasListTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context
{
  v14.receiver = self;
  v14.super_class = VideosExtrasListTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v14 initWithDocument:document options:options context:context];
  if (v5)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    relatedContentViewControllerMap = v5->_relatedContentViewControllerMap;
    v5->_relatedContentViewControllerMap = strongToStrongObjectsMapTable;

    templateElement = [(VideosExtrasListTemplateViewController *)v5 templateElement];
    list = [templateElement list];
    sections = [list sections];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke;
    v12[3] = &unk_1E87362E0;
    v13 = v5;
    [sections enumerateObjectsUsingBlock:v12];
  }

  return v5;
}

void __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 items];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke_2;
  v8[3] = &unk_1E87362B8;
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = a4;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 autoHighlightIdentifier];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:*(a1 + 40)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 1104);
    *(v9 + 1104) = v8;

    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (void)dealloc
{
  [(UITableView *)self->_tableView setDataSource:0];
  [(UITableView *)self->_tableView setDelegate:0];
  v3.receiver = self;
  v3.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v3 dealloc];
}

- (id)templateElement
{
  document = [(VideosExtrasTemplateViewController *)self document];
  templateElement = [document templateElement];

  return templateElement;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v33 viewDidLoad];
  view = [(VideosExtrasListTemplateViewController *)self view];
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  style = [templateElement style];
  elementAlignment = [style elementAlignment];

  self->_tableViewLeft = elementAlignment == 1;
  templateElement2 = [(VideosExtrasListTemplateViewController *)self templateElement];
  background = [templateElement2 background];

  templateElement3 = [(VideosExtrasListTemplateViewController *)self templateElement];
  documentBanner = [templateElement3 documentBanner];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v11;
  if (background)
  {
    [v11 addObject:background];
  }

  background2 = [documentBanner background];

  if (background2)
  {
    background3 = [documentBanner background];
    [v12 addObject:background3];
  }

  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v12];
  [(VideosExtrasListTemplateViewController *)self _configureBannerWithElement:documentBanner];
  v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  vignetteView = self->_vignetteView;
  self->_vignetteView = v15;

  [(UIImageView *)self->_vignetteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v18 = self->_vignetteView;
  view2 = [(VideosExtrasListTemplateViewController *)self view];
  v20 = [v17 constraintsByAttachingView:v18 toView:view2 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  view3 = [(VideosExtrasListTemplateViewController *)self view];
  [view3 addSubview:self->_vignetteView];

  view4 = [(VideosExtrasListTemplateViewController *)self view];
  [view4 addConstraints:v20];

  v23 = [VideosExtrasTableView alloc];
  v24 = [(VideosExtrasTableView *)v23 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableView = self->_tableView;
  self->_tableView = v24;

  [(UITableView *)self->_tableView _setHeaderAndFooterViewsFloat:0];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  v26 = self->_tableView;
  v27 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
  [(UITableView *)v26 setSeparatorColor:v27];

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ListTableViewCell"];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v28 = self->_tableView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)v28 setBackgroundColor:clearColor];

  [(UITableView *)self->_tableView setShowsHorizontalScrollIndicator:0];
  [(UITableView *)self->_tableView setShowsVerticalScrollIndicator:0];
  v30 = self->_tableView;
  v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UITableView *)v30 setTableFooterView:v31];

  [(UITableView *)self->_tableView _setContentInsetAdjustmentBehavior:2];
  [(UITableView *)self->_tableView setEstimatedRowHeight:60.0];
  v32 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setBackgroundView:v32];
  [view addSubview:self->_tableView];
}

- (void)_addConstraintsToTableView:(id)view
{
  viewCopy = view;
  view = [(VideosExtrasListTemplateViewController *)self view];
  v5 = view;
  if (self->_masterViewConstraints)
  {
    [view removeConstraints:?];
  }

  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v6 = [MEMORY[0x1E696ACD8] constraintsBySizingView:viewCopy toSize:{305.0, 500.0}];
    if (self->_tableViewLeft)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    v8 = MEMORY[0x1E69A8958];
    UIEdgeInsetsMakeWithEdges();
    v9 = [v8 positionConstraintsForView:viewCopy insets:v7 position:?];
    v10 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:10 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
    v11 = [v9 arrayByAddingObject:v10];

    v12 = [v6 arrayByAddingObjectsFromArray:v11];
    masterViewConstraints = self->_masterViewConstraints;
    self->_masterViewConstraints = v12;

    [viewCopy setContentInset:{0.0, 0.0, 60.0, 0.0}];
  }

  else
  {
    if (MEMORY[0x1E6913230]() && [MEMORY[0x1E69DF6F0] isPhone])
    {
      v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:viewCopy toView:v5 alongEdges:13 insets:{10.0, 0.0, 0.0, 0.0}];
      v14 = *MEMORY[0x1E69DDCE0];
      v15 = *(MEMORY[0x1E69DDCE0] + 8);
      v17 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v14 = *MEMORY[0x1E69DDCE0];
      v15 = *(MEMORY[0x1E69DDCE0] + 8);
      v17 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
      v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:viewCopy toView:v5 alongEdges:13 insets:{*MEMORY[0x1E69DDCE0], v15, v17, v16}];
    }

    navigationController = [(VideosExtrasListTemplateViewController *)self navigationController];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      navigationController2 = [(VideosExtrasListTemplateViewController *)self navigationController];
      mainTemplateViewController = [navigationController2 mainTemplateViewController];
      view2 = [mainTemplateViewController view];
      [view2 bounds];
      v24 = v23;

      v17 = 60.0;
      if (v24 > 60.0)
      {
        menuBarView = [mainTemplateViewController menuBarView];
        [menuBarView bounds];
        v27 = v26;

        v17 = fmax(v27, 60.0);
      }
    }

    [viewCopy setContentInset:{v14, v15, v17, v16}];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    if (v29 > 480.0)
    {
      v30 = 0.4;
    }

    else
    {
      v30 = 0.5;
    }

    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:7 relatedBy:0 toItem:v5 attribute:7 multiplier:v30 constant:0.0];
    v31 = [v6 arrayByAddingObject:v11];
    v10 = self->_masterViewConstraints;
    self->_masterViewConstraints = v31;
  }

  [v5 addConstraints:self->_masterViewConstraints];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];
  v6 = [sections count];

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];
  v8 = [sections objectAtIndex:section];
  items = [v8 items];
  v10 = [items count];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"ListTableViewCell" forIndexPath:pathCopy];
  section = [pathCopy section];
  v10 = [pathCopy row];
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];

  if (section >= [sections count])
  {
    v14 = 0;
  }

  else
  {
    v14 = [sections objectAtIndex:section];
  }

  items = [v14 items];
  if (v10 < [items count])
  {
    v16 = [items objectAtIndex:v10];
    if (v16)
    {
      v17 = v16;
      [v8 configureForListItemLockupElement:v16 wide:{-[VideosExtrasElementViewController isWide](self, "isWide")}];
    }
  }

  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  v19 = [pathCopy isEqual:indexPathForSelectedRow];

  [v8 setSelected:v19 animated:0];

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (tableView_heightForHeaderInSection__onceToken != -1)
  {
    [VideosExtrasListTemplateViewController tableView:heightForHeaderInSection:];
  }

  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];

  if ([sections count] <= section)
  {
    v10 = 0;
  }

  else
  {
    v10 = [sections objectAtIndex:section];
  }

  header = [v10 header];
  title = [header title];
  text = [title text];
  v14 = [text length];

  if (v14)
  {
    [tableView_heightForHeaderInSection__headerView configureForHeaderElement:header];
    [tableView_heightForHeaderInSection__headerView intrinsicContentSize];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

void __77__VideosExtrasListTemplateViewController_tableView_heightForHeaderInSection___block_invoke()
{
  v0 = [[VideosExtrasTableViewHeaderView alloc] initWithReuseIdentifier:@"ListTableViewHeaderLayout"];
  v1 = tableView_heightForHeaderInSection__headerView;
  tableView_heightForHeaderInSection__headerView = v0;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];

  if ([sections count] <= section)
  {
    v10 = 0;
  }

  else
  {
    v10 = [sections objectAtIndex:section];
  }

  header = [v10 header];
  if (header)
  {
    v12 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"ListTableViewHeader"];
    if (!v12)
    {
      v12 = [[VideosExtrasTableViewHeaderView alloc] initWithReuseIdentifier:@"ListTableViewHeader"];
    }

    [(VideosExtrasTableViewHeaderView *)v12 configureForHeaderElement:header];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v7 = [pathCopy row];

  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];

  if (section >= [sections count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [sections objectAtIndex:section];
  }

  items = [v10 items];
  if (v7 < [items count])
  {
    v12 = [items objectAtIndex:v7];
    [v12 dispatchEventOfType:4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  list = [templateElement list];
  sections = [list sections];

  if (section >= [sections count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [sections objectAtIndex:section];
  }

  items = [v10 items];
  if (v6 >= [items count])
  {
    relatedContent = 0;
    v12 = 0;
  }

  else
  {
    v12 = [items objectAtIndex:v6];
    relatedContent = [v12 relatedContent];
    if (relatedContent)
    {
      if ([(VideosExtrasElementViewController *)self isWide])
      {
        v14 = pathCopy;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&self->_autohighlightIndexPath, v14);
      v15 = [objc_opt_class() relatedContentViewControllerForElement:relatedContent];
      [(NSMapTable *)self->_relatedContentViewControllerMap setObject:v15 forKey:v12];
      [(VideosExtrasListTemplateViewController *)self setRelatedContentViewController:v15];
    }
  }

  [v12 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)template
{
  templateCopy = template;
  v5 = objc_opt_class();
  templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
  v7 = objc_opt_class();

  if (v5 == v7)
  {
    [(VideosExtrasListTemplateViewController *)self _updateForTemplate:templateCopy];
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VideosExtrasListTemplateViewController;
    v8 = [(VideosExtrasListTemplateViewController *)&v10 shouldReplaceViewControllerWithNewTemplate:templateCopy];
  }

  return v8;
}

- (void)_updateForTemplate:(id)template
{
  v32 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  if ([templateCopy updateType] == 1)
  {
    v20 = templateCopy;
    [templateCopy list];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v29 = 0u;
    obj = [v19 sections];
    v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if ([v9 updateType] == 1)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            items = [v9 items];
            v11 = [items countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v23;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v23 != v13)
                  {
                    objc_enumerationMutation(items);
                  }

                  v15 = *(*(&v22 + 1) + 8 * j);
                  updateType = [v15 updateType];
                  if (updateType == 4 || updateType == 1)
                  {
                    relatedContent = [v15 relatedContent];
                    [(VideosExtrasListTemplateViewController *)self _updateRelatedContent:relatedContent forListItem:v15];
                  }
                }

                v12 = [items countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v12);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

    templateCopy = v20;
  }
}

- (void)_updateRelatedContent:(id)content forListItem:(id)item
{
  relatedContentViewControllerMap = self->_relatedContentViewControllerMap;
  itemCopy = item;
  contentCopy = content;
  v9 = [(NSMapTable *)relatedContentViewControllerMap objectForKey:itemCopy];
  relatedContentViewController = [(VideosExtrasListTemplateViewController *)self relatedContentViewController];

  v11 = [objc_opt_class() relatedContentViewControllerForElement:contentCopy];

  [(NSMapTable *)self->_relatedContentViewControllerMap setObject:v11 forKey:itemCopy];
  if (v9 == relatedContentViewController)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__VideosExtrasListTemplateViewController__updateRelatedContent_forListItem___block_invoke;
    v12[3] = &unk_1E872D990;
    v12[4] = self;
    v13 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

- (void)_configureBannerWithElement:(id)element
{
  v11.receiver = self;
  v11.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasElementViewController *)&v11 _configureBannerWithElement:element];
  title = [(VideosExtrasListTemplateViewController *)self title];

  if (!title)
  {
    templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
    list = [templateElement list];

    header = [list header];
    title2 = [header title];
    text = [title2 text];
    string = [text string];

    [(VideosExtrasListTemplateViewController *)self setTitle:string];
  }
}

- (void)_setRelatedContentEmbedded:(BOOL)embedded
{
  if (self->_relatedContentEmbedded != embedded)
  {
    if (self->_relatedContentViewController)
    {
      if (embedded)
      {
        [(VideosExtrasListTemplateViewController *)self _embedRelatedContentViewController];
      }

      else
      {
        [(VideosExtrasListTemplateViewController *)self _unembedRelatedContent];
        [(VideosExtrasListTemplateViewController *)self _pushRelatedViewController:self->_relatedContentViewController animated:0];
      }
    }

    self->_relatedContentEmbedded = embedded;
  }
}

- (void)setRelatedContentViewController:(id)controller
{
  controllerCopy = controller;
  relatedContentViewController = self->_relatedContentViewController;
  v19 = controllerCopy;
  if (relatedContentViewController != controllerCopy)
  {
    if (relatedContentViewController)
    {
      if (self->_relatedContentEmbedded)
      {
        [(VideosExtrasListTemplateViewController *)self _unembedRelatedContent];
      }

      else if (controllerCopy)
      {
        navigationController = [(VideosExtrasListTemplateViewController *)self navigationController];
        v8 = [navigationController popViewControllerAnimated:0];
      }
    }

    objc_storeStrong(&self->_relatedContentViewController, controller);
    v9 = self->_relatedContentViewController;
    if (self->_relatedContentEmbedded)
    {
      if (v9)
      {
        [(VideosExtrasListTemplateViewController *)self _embedRelatedContentViewController];
      }
    }

    else if (v9)
    {
      v10 = v19;
      if (objc_opt_respondsToSelector())
      {
        templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
        background = [templateElement background];

        templateElement2 = [(VideosExtrasListTemplateViewController *)self templateElement];
        documentBanner = [templateElement2 documentBanner];

        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = v15;
        if (background)
        {
          [v15 addObject:background];
        }

        background2 = [documentBanner background];

        if (background2)
        {
          background3 = [documentBanner background];
          [v16 addObject:background3];
        }

        [(VideosExtrasElementViewController *)v10 configureBackgroundWithElements:v16];
      }

      [(VideosExtrasListTemplateViewController *)self _pushRelatedViewController:self->_relatedContentViewController animated:1];
    }
  }
}

- (void)_embedRelatedContentViewController
{
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController setEmbedded:1];
  [(VideosExtrasListTemplateViewController *)self addChildViewController:self->_relatedContentViewController];
  view = [(VideosExtrasListTemplateViewController *)self view];
  view2 = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:view2];
  [(VideosExtrasListTemplateViewController *)self _setDetailContraints];
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController didMoveToParentViewController:self];
  backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
  [backgroundViewController setVignetteType:3];
}

- (void)_pushRelatedViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = MEMORY[0x1E69DD258];
  controllerCopy = controller;
  v14 = [[v6 alloc] initWithNibName:0 bundle:0];
  view = [v14 view];
  view2 = [controllerCopy view];
  [v14 addChildViewController:controllerCopy];
  [view addSubview:view2];
  v10 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:view2 toView:view alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  detailViewConstraints = self->_detailViewConstraints;
  self->_detailViewConstraints = v10;

  [view addConstraints:self->_detailViewConstraints];
  [controllerCopy didMoveToParentViewController:v14];
  title = [controllerCopy title];

  [v14 setTitle:title];
  navigationController = [(VideosExtrasListTemplateViewController *)self navigationController];
  [navigationController pushViewController:v14 animated:animatedCopy];
}

- (void)_unembedRelatedContent
{
  view = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController view];
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController willMoveToParentViewController:0];
  view2 = [(VideosExtrasListTemplateViewController *)self view];
  [view2 removeConstraints:self->_detailViewConstraints];

  [view removeFromSuperview];
  detailViewConstraints = self->_detailViewConstraints;
  self->_detailViewConstraints = 0;

  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController removeFromParentViewController];
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController setEmbedded:0];
}

- (void)_setDetailContraints
{
  v24[3] = *MEMORY[0x1E69E9840];
  view = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController view];
  v4 = self->_tableView;
  if (self->_detailViewConstraints)
  {
    view2 = [(VideosExtrasListTemplateViewController *)self view];
    [view2 removeConstraints:self->_detailViewConstraints];
  }

  if (self->_tableViewLeft)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = MEMORY[0x1E69A8958];
  UIEdgeInsetsMakeWithEdges();
  v23 = [v7 positionConstraintsForView:view insets:v6 position:?];
  if ([(VideosExtrasViewElementViewController *)self->_relatedContentViewController matchParentHeight])
  {
    safeAreaLayoutGuide = v4;
    v9 = v4;
  }

  else
  {
    [(VideosExtrasListTemplateViewController *)self view];
    v10 = v9 = v4;
    safeAreaLayoutGuide = [v10 safeAreaLayoutGuide];
  }

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:view attribute:4 relatedBy:0 toItem:safeAreaLayoutGuide attribute:4 multiplier:1.0 constant:0.0];
  preferredLayoutGuide = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController preferredLayoutGuide];
  preferredLayoutAttribute = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController preferredLayoutAttribute];
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:preferredLayoutGuide attribute:preferredLayoutAttribute relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:0.0];
  if (self->_tableViewLeft)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (self->_tableViewLeft)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (self->_tableViewLeft)
  {
    v16 = 67.0;
  }

  else
  {
    v16 = -67.0;
  }

  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:view attribute:v14 relatedBy:0 toItem:v9 attribute:v15 multiplier:1.0 constant:v16];
  v24[0] = v11;
  v24[1] = v13;
  v24[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v19 = [v23 arrayByAddingObjectsFromArray:v18];
  detailViewConstraints = self->_detailViewConstraints;
  self->_detailViewConstraints = v19;

  view3 = [(VideosExtrasListTemplateViewController *)self view];
  [view3 addConstraints:self->_detailViewConstraints];
}

- (void)_prepareLayout
{
  v15.receiver = self;
  v15.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasElementViewController *)&v15 _prepareLayout];
  [(VideosExtrasListTemplateViewController *)self _setRelatedContentEmbedded:[(VideosExtrasElementViewController *)self isWide]];
  if (!self->_relatedContentEmbedded)
  {
    relatedContentViewController = self->_relatedContentViewController;
    self->_relatedContentViewController = 0;
  }

  [(VideosExtrasListTemplateViewController *)self _addConstraintsToTableView:self->_tableView];
  [(VideosExtrasListTemplateViewController *)self _configureVignette:[(VideosExtrasElementViewController *)self isWide]];
  [(UITableView *)self->_tableView reloadData];
  if (![(VideosExtrasElementViewController *)self isWide])
  {
    autohighlightIndexPath = self->_autohighlightIndexPath;
    self->_autohighlightIndexPath = 0;
  }

  if (self->_autohighlightIndexPath)
  {
    templateElement = [(VideosExtrasListTemplateViewController *)self templateElement];
    list = [templateElement list];
    sections = [list sections];

    section = [(NSIndexPath *)self->_autohighlightIndexPath section];
    if (section < [sections count])
    {
      v9 = [sections objectAtIndex:{-[NSIndexPath section](self->_autohighlightIndexPath, "section")}];
      items = [v9 items];

      v11 = [(NSIndexPath *)self->_autohighlightIndexPath row];
      if (v11 < [items count])
      {
        v12 = [items objectAtIndex:{-[NSIndexPath row](self->_autohighlightIndexPath, "row")}];
        relatedContent = [v12 relatedContent];
        if (relatedContent)
        {
          v14 = [objc_opt_class() relatedContentViewControllerForElement:relatedContent];
          [(NSMapTable *)self->_relatedContentViewControllerMap setObject:v14 forKey:v12];
          [(VideosExtrasListTemplateViewController *)self setRelatedContentViewController:v14];
        }

        [(UITableView *)self->_tableView selectRowAtIndexPath:self->_autohighlightIndexPath animated:0 scrollPosition:0];
      }
    }
  }
}

- (void)_configureVignette:(BOOL)vignette
{
  if (self->_relatedContentEmbedded)
  {
    if (self->_relatedContentViewController)
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
  [backgroundViewController setVignetteType:v3];
}

+ (id)relatedContentViewControllerForElement:(id)element
{
  elementCopy = element;
  if (relatedContentViewControllerForElement__onceToken != -1)
  {
    +[VideosExtrasListTemplateViewController relatedContentViewControllerForElement:];
  }

  v4 = relatedContentViewControllerForElement__templateMap;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKey:v6];

  if (v7)
  {
    v7 = [[v7 alloc] initWithViewElement:elementCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = v7;
    v8 = +[VideosExtrasGridElementViewController wideDetailStyle];
    [(objc_class *)v7 setWideStyle:v8];

    v9 = +[VideosExtrasGridElementViewController smallDetailStyle];
    [(objc_class *)v7 setSmallStyle:v9];

    v10 = +[VideosExtrasGridElementViewController mediumDetailStyle];
    [(objc_class *)v7 setMediumStyle:v10];

    v11 = +[VideosExtrasGridElementViewController largeDetailStyle];
    [(objc_class *)v7 setLargeStyle:v11];

    v12 = +[VideosExtrasGridElementViewController extraLargeDetailStyle];
    [(objc_class *)v7 setExtraLargeStyle:v12];
  }

  else
  {
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    NSLog(&cfstr_CouldNotGetVie.isa, v12);
  }

LABEL_8:

  return v7;
}

void __81__VideosExtrasListTemplateViewController_relatedContentViewControllerForElement___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"IKGridElement";
  v3[0] = objc_opt_class();
  v2[1] = @"IKLockupElement";
  v3[1] = objc_opt_class();
  v2[2] = @"IKActivityIndicatorElement";
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = relatedContentViewControllerForElement__templateMap;
  relatedContentViewControllerForElement__templateMap = v0;
}

@end