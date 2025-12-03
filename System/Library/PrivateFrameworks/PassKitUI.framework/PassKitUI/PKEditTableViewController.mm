@interface PKEditTableViewController
+ (id)_generatePlaceholderImageForStyle:(int64_t)style;
+ (void)loadPlaceholdersWithCompletion:(id)completion;
- (NSDictionary)placeholders;
- (PKEditTableViewController)initWithStyle:(int64_t)style placeholders:(id)placeholders isForWatch:(BOOL)watch;
- (PKEditTableViewControllerCachingDelegate)cachingDelegate;
- (id)_createImageForPass:(id)pass imageSize:(CGSize)size cacheKey:(id)key fullPass:(BOOL)fullPass stacked:(BOOL)stacked;
- (id)_createPassStackWithPassImage:(id)image withHeight:(double)height;
- (id)mostRecentPassInGroup:(id)group;
- (id)tableView:(id)view cellWithIdentifier:(id)identifier;
- (void)_imageOfSize:(CGSize)size forPass:(id)pass fullPass:(BOOL)fullPass stacked:(BOOL)stacked synchronously:(BOOL)synchronously preemptive:(BOOL)preemptive placeholder:(id)placeholder completion:(id)self0;
- (void)_placeholderImageForStyle:(int64_t)style completion:(id)completion;
- (void)_setShouldProcessLowPriorityRequests:(BOOL)requests;
- (void)_updateShouldProcessHighPriorityRequestsWithFastScrolling:(BOOL)scrolling;
- (void)beginPassDeletionTestWithTestName:(id)name;
- (void)beginPassSelectionTestWithTestName:(id)name;
- (void)beginScrollingTestWithTestName:(id)name;
- (void)clearImageCacheForPass:(id)pass;
- (void)currentCacheRequestCompletedWithImage:(id)image duration:(double)duration;
- (void)failedTestWithReason:(id)reason;
- (void)findApps;
- (void)loadContentAndImageSetFromExistingPassForPass:(id)pass;
- (void)moveHighPriorityToLowPriorityWithCacheKey:(id)key;
- (void)passedTest;
- (void)processCacheRequest:(id)request;
- (void)removeRequestsWithCacheKey:(id)key;
- (void)resumeRequestIfNoScrollingAfterTimeInterval:(double)interval;
- (void)scanCode;
- (void)scrollToFirstRowOrFailTest;
- (void)scrollToLastRowOrFailTest;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectFirstRowOrFailTest;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setPlaceholders:(id)placeholders;
- (void)showNoPassesView:(BOOL)view;
- (void)startedTestWithName:(id)name;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)triageCacheRequest:(id)request;
- (void)updateAverageSnapshotDuration:(double)duration;
- (void)viewDidLoad;
@end

@implementation PKEditTableViewController

- (PKEditTableViewController)initWithStyle:(int64_t)style placeholders:(id)placeholders isForWatch:(BOOL)watch
{
  placeholdersCopy = placeholders;
  v29.receiver = self;
  v29.super_class = PKEditTableViewController;
  v9 = [(PKEditTableViewController *)&v29 initWithStyle:style];
  v10 = v9;
  if (v9)
  {
    v9->_imagesToKeep = 200;
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v10->_imageCache;
    v10->_imageCache = v11;

    [(NSCache *)v10->_imageCache setCountLimit:v10->_imagesToKeep];
    if (placeholdersCopy)
    {
      v13 = [placeholdersCopy mutableCopy];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v13;
    objc_storeStrong(&v10->_placeholdersPerPassStyle, v13);

    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      v10->_isAccessibilityCategory = 1;
    }

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v18 = dispatch_queue_create("com.apple.passkitui.edit-table-caching", v17);
    queueCaching = v10->_queueCaching;
    v10->_queueCaching = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lowPriorityRequests = v10->_lowPriorityRequests;
    v10->_lowPriorityRequests = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    highPriorityRequests = v10->_highPriorityRequests;
    v10->_highPriorityRequests = v22;

    v10->_shouldProcessLowPriorityRequests = 1;
    v10->_shouldProcessHighPriorityRequests = 1;
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    lastSnapshotDurations = v10->_lastSnapshotDurations;
    v10->_lastSnapshotDurations = v24;

    v10->_isForWatch = watch;
    +[PKEditPassesTableViewCell imageSizeNeeded];
    v10->_imageSizeNeeded.width = v26;
    v10->_imageSizeNeeded.height = v27;
    v10->_needsFullPass = +[PKEditPassesTableViewCell needsFullPassImage];
    v10->_performanceTest = 0;
    v10->_testIteration = 0;
    objc_storeWeak(&v10->_cachingDelegate, 0);
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PKEditTableViewController;
  [(PKEditTableViewController *)&v10 viewDidLoad];
  view = [(PKEditTableViewController *)self view];
  [view bounds];
  v5 = v4;
  +[PKEditPassesTableViewCell height];
  self->_visibleRows = vcvtpd_u64_f64(v5 / v6);

  tableView = [(PKEditTableViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = tableView;

  [(UITableView *)self->_tableView setPrefetchDataSource:self];
  v9 = self->_tableView;
  +[PKEditPassesTableViewCell height];
  [(UITableView *)v9 setEstimatedRowHeight:?];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  [(PKEditTableViewController *)self setEditing:1];
}

+ (void)loadPlaceholdersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (_MergedGlobals_3_4 != -1)
    {
      dispatch_once(&_MergedGlobals_3_4, &__block_literal_global_181);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = qword_1EBDAAB28;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PKEditTableViewController_loadPlaceholdersWithCompletion___block_invoke_2;
    block[3] = &unk_1E801B4E8;
    selfCopy = self;
    v9 = v5;
    v10 = completionCopy;
    v7 = v5;
    dispatch_async(v6, block);
  }
}

void __60__PKEditTableViewController_loadPlaceholdersWithCompletion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.passkitui.edit-table-placeholder", v2);
  v1 = qword_1EBDAAB28;
  qword_1EBDAAB28 = v0;
}

void __60__PKEditTableViewController_loadPlaceholdersWithCompletion___block_invoke_2(uint64_t a1)
{
  for (i = 0; i != 13; ++i)
  {
    v3 = [*(a1 + 48) _generatePlaceholderImageForStyle:i];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v4 setObject:v3 forKey:v5];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) copy];
  (*(v6 + 16))(v6, v7);
}

+ (id)_generatePlaceholderImageForStyle:(int64_t)style
{
  +[PKEditPassesTableViewCell imageSizeNeeded];
  v4 = v3;
  v6 = v5;
  v7 = +[PKEditPassesTableViewCell needsFullPassImage];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  if (v7)
  {
    v6 = 1.79769313e308;
  }

  PKPassFrontFaceContentSize();
  v10 = v9;
  v12 = v11;
  v13 = PKPassFaceShadowInsets();
  v14 = UIEdgeInsetsForPKEdgeInsets(v13);
  v17 = v10 + v15 + v16;
  v19.n128_f64[0] = v14 + v18;
  v20 = v12;
  v21 = v12 + v19.n128_f64[0];
  v22 = fmin(v4 / v10, v8 / v20);
  v23.n128_f64[0] = v22 * v17;
  v24.n128_f64[0] = v22 * v21;
  PKSizeCeilToPixel(v23, v24, v19);
  v62 = v25;
  v63 = v26;
  v61 = fmin(v26, v6);
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  v28 = objc_autoreleasePoolPush();
  v29 = log(v22);
  v30 = exp(v29 * 0.15 + 0.0);
  v31.n128_f64[0] = v17 * v30;
  v32.n128_f64[0] = v21 * v30;
  PKSizeCeilToPixel(v31, v32, v33);
  v35 = v34;
  v37 = v36;
  v38 = PKPassGrayPlaceholderImage();
  v39 = objc_alloc(MEMORY[0x1E69DCA78]);
  v40 = *MEMORY[0x1E695EFF8];
  v41 = *(MEMORY[0x1E695EFF8] + 8);
  v42 = [v39 initWithBounds:preferredFormat format:{*MEMORY[0x1E695EFF8], v41, v35, v37}];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __PKEditPassesResizedPlaceholderImage_block_invoke;
  v68[3] = &unk_1E801EE78;
  v69 = v38;
  v70 = v30;
  v71 = v17;
  v72 = v21;
  v43 = v38;
  v44 = [v42 imageWithActions:v68];

  objc_autoreleasePoolPop(v28);
  v45 = objc_autoreleasePoolPush();
  v46 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:preferredFormat format:{v40, v41, v62, v61}];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __PKEditPassesResizedPlaceholderImage_block_invoke_2;
  v64[3] = &unk_1E801EEA0;
  v47 = v44;
  v65 = v47;
  v66 = v62;
  v67 = v63;
  v48 = [v46 imageWithActions:v64];

  objc_autoreleasePoolPop(v45);
  PKFloatRoundToPixel();
  v50 = v49;
  PKFloatRoundToPixel();
  v52 = v51;
  PKFloatRoundToPixel();
  v54 = v53;
  PKFloatRoundToPixel();
  v56 = v63 - v52 - v55;
  v57 = fmax(v56 - (v63 - v61), 0.0);
  if (v63 <= v61)
  {
    v58 = v56;
  }

  else
  {
    v58 = v57;
  }

  v59 = [v48 imageWithAlignmentRectInsets:{v52, v50, v58, v62 - v50 - v54}];

  return v59;
}

- (void)_placeholderImageForStyle:(int64_t)style completion:(id)completion
{
  completionCopy = completion;
  placeholdersPerPassStyle = self->_placeholdersPerPassStyle;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v8 = [(NSMutableDictionary *)placeholdersPerPassStyle objectForKey:v7];

  if (!v8)
  {
    v8 = [objc_opt_class() _generatePlaceholderImageForStyle:style];
    v9 = self->_placeholdersPerPassStyle;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];
  }

  completionCopy[2](completionCopy, v8);
}

- (NSDictionary)placeholders
{
  v2 = [(NSMutableDictionary *)self->_placeholdersPerPassStyle copy];

  return v2;
}

- (void)setPlaceholders:(id)placeholders
{
  v4 = [placeholders mutableCopy];
  placeholdersPerPassStyle = self->_placeholdersPerPassStyle;
  self->_placeholdersPerPassStyle = v4;
}

- (void)loadContentAndImageSetFromExistingPassForPass:(id)pass
{
  passCopy = pass;
  if (([passCopy isContentLoaded] & 1) == 0)
  {
    existingGroupsController = [(PKEditTableViewController *)self existingGroupsController];
    uniqueID = [passCopy uniqueID];
    v6 = [existingGroupsController passWithUniqueID:uniqueID];

    if ([v6 isContentLoaded])
    {
      content = [v6 content];
      [passCopy setContent:content];

      if (([passCopy isImageSetLoaded:0] & 1) == 0)
      {
        if ([v6 isImageSetLoaded:0])
        {
          v8 = [v6 imageSetLoadedIfNeeded:0];
          [passCopy setImageSet:v8 forImageSetType:0];
        }
      }
    }
  }
}

- (void)showNoPassesView:(BOOL)view
{
  self->_shouldShowNoPassesView = view;
  noPassesView = self->_noPassesView;
  if (view)
  {
    if (noPassesView)
    {
      v5 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      v7 = *(MEMORY[0x1E695F058] + 16);
      v8 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v10 = [PKEditTableNoPassesView alloc];
      v5 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      v7 = *(MEMORY[0x1E695F058] + 16);
      v8 = *(MEMORY[0x1E695F058] + 24);
      v11 = [(PKEditTableNoPassesView *)v10 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
      v12 = self->_noPassesView;
      self->_noPassesView = v11;

      [(PKEditTableNoPassesView *)self->_noPassesView setDelegate:self];
      view = [(PKEditTableViewController *)self view];
      [view addSubview:self->_noPassesView];

      view2 = [(PKEditTableViewController *)self view];
      [view2 bounds];
      v16 = v15;
      v18 = v17;

      [(PKEditTableNoPassesView *)self->_noPassesView sizeThatFits:v16 + -16.0, v18 + -16.0];
      v19 = self->_noPassesView;
      PKSizeAlignedInRect();
      [(PKEditTableNoPassesView *)v19 setFrame:?];
      noPassesView = self->_noPassesView;
    }

    [(PKEditTableNoPassesView *)noPassesView setHidden:0];
    tableView = self->_tableView;
    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [(UITableView *)tableView setTableFooterView:v21];
  }

  else
  {
    if (noPassesView)
    {
      [(PKEditTableNoPassesView *)noPassesView setHidden:1];
    }

    v9 = self->_tableView;

    [(UITableView *)v9 setTableFooterView:0];
  }
}

- (id)mostRecentPassInGroup:(id)group
{
  v21 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  passes = [groupCopy passes];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [passes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(passes);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (v7)
        {
          ingestedDate = [*(*(&v16 + 1) + 8 * i) ingestedDate];
          ingestedDate2 = [v7 ingestedDate];
          v13 = [ingestedDate compare:ingestedDate2];

          if (v13 != -1)
          {
            continue;
          }
        }

        v14 = v10;

        v7 = v14;
      }

      v6 = [passes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_imageOfSize:(CGSize)size forPass:(id)pass fullPass:(BOOL)fullPass stacked:(BOOL)stacked synchronously:(BOOL)synchronously preemptive:(BOOL)preemptive placeholder:(id)placeholder completion:(id)self0
{
  preemptiveCopy = preemptive;
  synchronouslyCopy = synchronously;
  stackedCopy = stacked;
  fullPassCopy = fullPass;
  height = size.height;
  width = size.width;
  v53[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  placeholderCopy = placeholder;
  completionCopy = completion;
  uniqueID = [passCopy uniqueID];
  if (stackedCopy)
  {
    v21 = @"stack_";
  }

  else
  {
    v21 = @"single_";
  }

  v22 = [(__CFString *)v21 stringByAppendingString:uniqueID];
  if (!synchronouslyCopy)
  {
    v23 = [(NSCache *)self->_imageCache objectForKey:v22];
    v24 = v23;
    if (completionCopy && v23)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __115__PKEditTableViewController__imageOfSize_forPass_fullPass_stacked_synchronously_preemptive_placeholder_completion___block_invoke_2;
      block[3] = &unk_1E8010E20;
      v34 = completionCopy;
      v33 = v24;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v25 = v34;
    }

    else
    {
      if (v23)
      {
LABEL_19:

        goto LABEL_20;
      }

      if (placeholderCopy)
      {
        style = [passCopy style];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __115__PKEditTableViewController__imageOfSize_forPass_fullPass_stacked_synchronously_preemptive_placeholder_completion___block_invoke_3;
        v30[3] = &unk_1E801EE00;
        v31 = placeholderCopy;
        [(PKEditTableViewController *)self _placeholderImageForStyle:style completion:v30];
      }

      v25 = objc_alloc_init(PKEditPendingCacheRequest);
      [(PKEditPendingCacheRequest *)v25 setStacked:stackedCopy];
      [(PKEditPendingCacheRequest *)v25 setCacheKey:v22];
      [(PKEditPendingCacheRequest *)v25 setPass:passCopy];
      if (completionCopy)
      {
        v28 = [completionCopy copy];
        v53[0] = v28;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
        [(PKEditPendingCacheRequest *)v25 setCompletionHandlers:v27];
      }

      else
      {
        [(PKEditPendingCacheRequest *)v25 setCompletionHandlers:MEMORY[0x1E695E0F0]];
      }

      [(PKEditPendingCacheRequest *)v25 setImageSize:width, height];
      [(PKEditPendingCacheRequest *)v25 setFullPass:fullPassCopy];
      [(PKEditPendingCacheRequest *)v25 setPriority:!preemptiveCopy];
      [(PKEditTableViewController *)self processCacheRequest:v25];
    }

    goto LABEL_19;
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__43;
  v51 = __Block_byref_object_dispose__43;
  v52 = 0;
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __115__PKEditTableViewController__imageOfSize_forPass_fullPass_stacked_synchronously_preemptive_placeholder_completion___block_invoke;
  v38 = &unk_1E801EDD8;
  v42 = &v47;
  selfCopy = self;
  v40 = passCopy;
  v43 = width;
  v44 = height;
  v41 = v22;
  v45 = fullPassCopy;
  v46 = stackedCopy;
  PKTimeToPerformBlock();
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v48[5]);
  }

  _Block_object_dispose(&v47, 8);
LABEL_20:
}

void __115__PKEditTableViewController__imageOfSize_forPass_fullPass_stacked_synchronously_preemptive_placeholder_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createImageForPass:*(a1 + 40) imageSize:*(a1 + 48) cacheKey:*(a1 + 80) fullPass:*(a1 + 81) stacked:{*(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __115__PKEditTableViewController__imageOfSize_forPass_fullPass_stacked_synchronously_preemptive_placeholder_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __115__PKEditTableViewController__imageOfSize_forPass_fullPass_stacked_synchronously_preemptive_placeholder_completion___block_invoke_4;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)processCacheRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  queueCaching = self->_queueCaching;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PKEditTableViewController_processCacheRequest___block_invoke;
  v7[3] = &unk_1E8011828;
  objc_copyWeak(&v10, &location);
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(queueCaching, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49__PKEditTableViewController_processCacheRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  [WeakRetained triageCacheRequest:*(a1 + 32)];
  if (*(v3 + 141) || v3[1136] != 1)
  {
    goto LABEL_22;
  }

  v4 = (v3 + 1144);
  v5 = [*(v3 + 143) lastObject];
  if (v5)
  {
    v6 = v5;
LABEL_6:
    [*v4 removeLastObject];
    goto LABEL_11;
  }

  if (v3[1152] == 1)
  {
    v4 = (v3 + 1160);
    v6 = [*(v3 + 145) lastObject];
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  v7 = *(v3 + 141);
  *(v3 + 141) = v6;

  if (*(v3 + 141))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PKEditTableViewController_processCacheRequest___block_invoke_2;
    aBlock[3] = &unk_1E801EE28;
    aBlock[4] = *(a1 + 40);
    v8 = _Block_copy(aBlock);
    if (v3[1152])
    {
      v9 = 1;
    }

    else
    {
      v10 = &framesToSkipForSlowDevices;
      if (*(*(a1 + 40) + 1192) <= 0.034)
      {
        v10 = &framesToSkipForPerformantDevices;
      }

      v9 = *v10;
    }

    v11 = [*(v3 + 141) pass];
    if ([v11 isContentLoaded] && objc_msgSend(v11, "isImageSetLoaded:", 0))
    {
      v8[2](v8, *(v3 + 141), v11, v9);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__PKEditTableViewController_processCacheRequest___block_invoke_5;
      v12[3] = &unk_1E8019D88;
      v13 = v11;
      v15 = v8;
      v14 = v3;
      v16 = v9;
      [v13 loadContentAsyncWithCompletion:v12];
    }
  }

LABEL_22:
}

void __49__PKEditTableViewController_processCacheRequest___block_invoke_2(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a2;
  v8 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v9 = dispatch_time(0, (a4 * 17.0 * 1000000.0));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKEditTableViewController_processCacheRequest___block_invoke_3;
  v12[3] = &unk_1E8011828;
  objc_copyWeak(&v15, &location);
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_after(v9, MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __49__PKEditTableViewController_processCacheRequest___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 154);
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0 && ([a1[4] uniqueID], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "passExistsWithUniqueIdentifier:", v5), v5, !v6))
    {
      [v3 currentCacheRequestCompletedWithImage:0 duration:0.0];
    }

    else
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__43;
      v13 = __Block_byref_object_dispose__43;
      v14 = 0;
      v7 = v3;
      v8 = a1[5];
      PKTimeToPerformBlock();
      [v7 currentCacheRequestCompletedWithImage:v10[5] duration:?];

      _Block_object_dispose(&v9, 8);
    }
  }
}

void __49__PKEditTableViewController_processCacheRequest___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [*(a1 + 40) pass];
  [*(a1 + 40) imageSize];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 40) cacheKey];
  v8 = [v2 _createImageForPass:v11 imageSize:v7 cacheKey:objc_msgSend(*(a1 + 40) fullPass:"fullPass") stacked:{objc_msgSend(*(a1 + 40), "stacked"), v4, v6}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __49__PKEditTableViewController_processCacheRequest___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKEditTableViewController_processCacheRequest___block_invoke_6;
  v5[3] = &unk_1E801EE50;
  v8 = *(a1 + 48);
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7 = v3;
  v9 = v4;
  [v2 loadImageSetAsync:0 preheat:1 withCompletion:v5];
}

- (void)currentCacheRequestCompletedWithImage:(id)image duration:(double)duration
{
  imageCopy = image;
  objc_initWeak(&location, self);
  queueCaching = self->_queueCaching;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKEditTableViewController_currentCacheRequestCompletedWithImage_duration___block_invoke;
  v9[3] = &unk_1E8011408;
  objc_copyWeak(v11, &location);
  v10 = imageCopy;
  v11[1] = *&duration;
  v8 = imageCopy;
  dispatch_async(queueCaching, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __76__PKEditTableViewController_currentCacheRequestCompletedWithImage_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [*(WeakRetained + 141) completionHandlers];
    v5 = [v4 copy];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKEditTableViewController_currentCacheRequestCompletedWithImage_duration___block_invoke_2;
    block[3] = &unk_1E8012C50;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (*(a1 + 32))
    {
      [v3 updateAverageSnapshotDuration:*(a1 + 48)];
    }

    v7 = v3[141];
    v3[141] = 0;

    [v3 processCacheRequest:0];
  }
}

void __76__PKEditTableViewController_currentCacheRequestCompletedWithImage_duration___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (v7)
        {
          (*(v7 + 16))(v7, *(a1 + 40), *(a1 + 48));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)triageCacheRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v19 = requestCopy;
    v5 = [(NSMutableArray *)self->_lowPriorityRequests indexOfObject:requestCopy];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSMutableArray *)self->_highPriorityRequests indexOfObject:v19];
      priority = [v19 priority];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (priority == 1)
        {
          highPriorityRequests = self->_highPriorityRequests;
        }

        else
        {
          requestCopy = v19;
          if (priority)
          {
            goto LABEL_15;
          }

          highPriorityRequests = self->_lowPriorityRequests;
        }

        [(NSMutableArray *)highPriorityRequests addObject:v19];
        goto LABEL_14;
      }

      requestCopy = v19;
      if (priority != 1)
      {
        goto LABEL_15;
      }

      v11 = [(NSMutableArray *)self->_highPriorityRequests objectAtIndex:v6];
      [(NSMutableArray *)self->_highPriorityRequests removeObjectAtIndex:v6];
      completionHandlers = [v19 completionHandlers];
      completionHandlers2 = [v11 completionHandlers];
      v18 = [completionHandlers arrayByAddingObjectsFromArray:completionHandlers2];
      [v19 setCompletionHandlers:v18];

      v15 = self->_highPriorityRequests;
    }

    else
    {
      v9 = v5;
      priority2 = [v19 priority];
      requestCopy = v19;
      if (priority2 != 1)
      {
        goto LABEL_15;
      }

      v11 = [(NSMutableArray *)self->_lowPriorityRequests objectAtIndex:v9];
      [(NSMutableArray *)self->_lowPriorityRequests removeObjectAtIndex:v9];
      completionHandlers3 = [v19 completionHandlers];
      completionHandlers4 = [v11 completionHandlers];
      v14 = [completionHandlers3 arrayByAddingObjectsFromArray:completionHandlers4];
      [v19 setCompletionHandlers:v14];

      v15 = self->_highPriorityRequests;
    }

    [(NSMutableArray *)v15 addObject:v19];

LABEL_14:
    requestCopy = v19;
  }

LABEL_15:
}

- (void)moveHighPriorityToLowPriorityWithCacheKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  queueCaching = self->_queueCaching;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKEditTableViewController_moveHighPriorityToLowPriorityWithCacheKey___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(queueCaching, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__PKEditTableViewController_moveHighPriorityToLowPriorityWithCacheKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = objc_alloc_init(PKEditPendingCacheRequest);
    [(PKEditPendingCacheRequest *)v4 setCacheKey:*(a1 + 32)];
    v5 = [v7[143] indexOfObject:v4];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v7[143] objectAtIndex:v5];
      [v7[143] removeObject:v6];
      [v6 setPriority:0];
      [v7[145] addObject:v6];
    }

    v3 = v7;
  }
}

- (void)removeRequestsWithCacheKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  queueCaching = self->_queueCaching;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKEditTableViewController_removeRequestsWithCacheKey___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(queueCaching, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__PKEditTableViewController_removeRequestsWithCacheKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_alloc_init(PKEditPendingCacheRequest);
    [(PKEditPendingCacheRequest *)v3 setCacheKey:*(a1 + 32)];
    [v4[143] removeObject:v3];
    [v4[145] removeObject:v3];

    WeakRetained = v4;
  }
}

- (void)updateAverageSnapshotDuration:(double)duration
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_lastSnapshotDurations count]>= 0xA)
  {
    [(NSMutableArray *)self->_lastSnapshotDurations removeObjectAtIndex:0];
  }

  lastSnapshotDurations = self->_lastSnapshotDurations;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [(NSMutableArray *)lastSnapshotDurations addObject:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_lastSnapshotDurations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * i) floatValue];
        v11 = v11 + v13;
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  self->_snapshotDurationAverage = v11 / [(NSMutableArray *)self->_lastSnapshotDurations count];
}

- (id)_createImageForPass:(id)pass imageSize:(CGSize)size cacheKey:(id)key fullPass:(BOOL)fullPass stacked:(BOOL)stacked
{
  stackedCopy = stacked;
  fullPassCopy = fullPass;
  height = size.height;
  width = size.width;
  passCopy = pass;
  keyCopy = key;
  v15 = keyCopy;
  height = 0;
  if (passCopy)
  {
    if (keyCopy)
    {
      height = [(NSCache *)self->_imageCache objectForKey:keyCopy];
      if (!height)
      {
        v17 = [PKPassView alloc];
        if (fullPassCopy)
        {
          v18 = [(PKPassView *)v17 initWithPass:passCopy content:4 suppressedContent:375];
          [(PKPassView *)v18 setUserInteractionEnabled:0];
          height = [(PKPassView *)v18 snapshotOfFrontFaceWithRequestedSize:width, height];
        }

        else
        {
          v18 = [(PKPassView *)v17 initWithPass:passCopy content:4 suppressedContent:4087];
          height = [(PKPassView *)v18 snapshotOfFrontFaceWithRequestedSize:width, 3.40282347e38];
          [height size];
          if (v19 > height)
          {
            v20 = height;
            [v20 alignmentRectInsets];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            [v20 size];
            v30 = v29;
            v32 = v31;
            [v20 scale];
            v34 = v30 * v33;
            v35 = v32 * v33;
            v36 = fmin(v32 * v33, height * v33);
            v37 = fmax(v26 - (v35 - v36), 0.0);
            cGImage = [v20 CGImage];
            v48.origin.x = *MEMORY[0x1E695EFF8];
            v48.origin.y = *(MEMORY[0x1E695EFF8] + 8);
            v48.size.width = v34;
            v48.size.height = v36;
            v39 = CGImageCreateWithImageInRect(cGImage, v48);
            v40 = MEMORY[0x1E69DCAB8];
            [v20 scale];
            v42 = v41;
            imageOrientation = [v20 imageOrientation];

            v44 = [v40 imageWithCGImage:v39 scale:imageOrientation orientation:v42];
            CGImageRelease(v39);
            height = [v44 imageWithAlignmentRectInsets:{fmin(v22, v36), v24, v37, v28}];
          }
        }

        if (stackedCopy)
        {
          v45 = [(PKEditTableViewController *)self _createPassStackWithPassImage:height withHeight:height];

          height = v45;
        }

        [(NSCache *)self->_imageCache setObject:height forKey:v15];
      }
    }
  }

  return height;
}

- (id)_createPassStackWithPassImage:(id)image withHeight:(double)height
{
  imageCopy = image;
  [imageCopy alignmentRectInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [imageCopy size];
  v15 = v14;
  v17 = v16;
  v18 = fmin(v16, height);
  v19 = fmin(v7, v18);
  v20 = fmax(v11 - (v16 - v18) + -4.0, 0.0);
  v21 = PKUIScreenScale();
  v26.width = v15;
  v26.height = v17;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v21);
  [imageCopy drawAtPoint:{0.0, 0.0}];
  [imageCopy drawAtPoint:{0.0, 2.0}];
  [imageCopy drawAtPoint:{0.0, 4.0}];

  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v23 = [v22 imageWithAlignmentRectInsets:{v19, v9, v20, v13}];

  return v23;
}

- (void)clearImageCacheForPass:(id)pass
{
  if (pass)
  {
    uniqueID = [pass uniqueID];
    v4 = [uniqueID stringByAppendingString:@"single_"];
    [(NSCache *)self->_imageCache removeObjectForKey:v4];
    [(PKEditTableViewController *)self removeRequestsWithCacheKey:v4];
    v5 = [uniqueID stringByAppendingString:@"stack_"];
    [(NSCache *)self->_imageCache removeObjectForKey:v5];
    [(PKEditTableViewController *)self removeRequestsWithCacheKey:v5];
  }
}

- (void)_setShouldProcessLowPriorityRequests:(BOOL)requests
{
  objc_initWeak(&location, self);
  queueCaching = self->_queueCaching;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKEditTableViewController__setShouldProcessLowPriorityRequests___block_invoke;
  block[3] = &unk_1E80111A8;
  objc_copyWeak(&v7, &location);
  requestsCopy = requests;
  dispatch_async(queueCaching, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __66__PKEditTableViewController__setShouldProcessLowPriorityRequests___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    if (v4 != WeakRetained[1152])
    {
      WeakRetained[1152] = v4;
      if (v4)
      {
        WeakRetained[1136] = 1;
        [WeakRetained processCacheRequest:0];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__PKEditTableViewController__setShouldProcessLowPriorityRequests___block_invoke_2;
        block[3] = &unk_1E8010970;
        v6 = v3;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

void __66__PKEditTableViewController__setShouldProcessLowPriorityRequests___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1232));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v4 = objc_opt_respondsToSelector();
    v3 = v10;
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 1056) indexPathsForVisibleRows];
      v6 = [v5 lastObject];

      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = [v6 row] + 1; i < objc_msgSend(v6, "row") + 2 * *(*(a1 + 32) + 1168) + 1; ++i)
      {
        v9 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
        [v7 addObject:v9];
      }

      [v10 prefetchItemsAtIndexPaths:v7];

      v3 = v10;
    }
  }
}

- (void)_updateShouldProcessHighPriorityRequestsWithFastScrolling:(BOOL)scrolling
{
  objc_initWeak(&location, self);
  queueCaching = self->_queueCaching;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKEditTableViewController__updateShouldProcessHighPriorityRequestsWithFastScrolling___block_invoke;
  block[3] = &unk_1E80111A8;
  objc_copyWeak(&v7, &location);
  scrollingCopy = scrolling;
  dispatch_async(queueCaching, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __87__PKEditTableViewController__updateShouldProcessHighPriorityRequestsWithFastScrolling___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      v3 = WeakRetained[149];
      v4 = v3 <= 0.034;
      if (*(WeakRetained + 1136) == v4)
      {
        goto LABEL_9;
      }

      *(WeakRetained + 1136) = v4;
      if (v3 > 0.034)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (WeakRetained[142])
      {
        goto LABEL_9;
      }

      *(WeakRetained + 1136) = 1;
    }

    v5 = WeakRetained;
    [WeakRetained processCacheRequest:0];
    WeakRetained = v5;
  }

LABEL_9:
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v13.receiver = self;
  v13.super_class = PKEditTableViewController;
  [PKEditTableViewController setEditing:sel_setEditing_animated_ animated:?];
  navigationItem = [(PKEditTableViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  if (editingCopy)
  {
    v9 = @"PASS_EDITING_CANCEL";
  }

  else
  {
    v9 = @"PASS_EDITING_EDIT";
  }

  if (editingCopy)
  {
    v10 = @"PASS_EDITING_TITLE_EDITING";
  }

  else
  {
    v10 = @"PASS_EDITING_TITLE";
  }

  v11 = PKLocalizedString(&v9->isa);
  [leftBarButtonItem setTitle:v11];

  v12 = PKLocalizedString(&v10->isa);
  [(PKEditTableViewController *)self setTitle:v12];

  [(UITableView *)self->_tableView setEditing:editingCopy animated:animatedCopy];
}

- (id)tableView:(id)view cellWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [view dequeueReusableCellWithIdentifier:identifierCopy];
  if (!v7)
  {
    if ([identifierCopy isEqualToString:@"cellActionEditIdentifier"])
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:identifierCopy];
      textLabel = [(PKEditPassesTableViewCell *)v7 textLabel];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [textLabel setTextColor:systemBlueColor];
    }

    else
    {
      v7 = [[PKEditPassesTableViewCell alloc] initWithReuseIdentifier:identifierCopy showImage:!self->_isAccessibilityCategory];
      [(PKEditPassesTableViewCell *)v7 setAccessoryType:1];
      [(PKEditPassesTableViewCell *)v7 setEditingAccessoryType:1];
    }
  }

  return v7;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained prefetchItemsAtIndexPaths:pathsCopy];
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);
  if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_14;
  }

  _imagesToKeepOutsideVisibleCells = [(PKEditTableViewController *)self _imagesToKeepOutsideVisibleCells];
  v10 = [pathCopy row];
  section = [pathCopy section];
  if (!self->_scrollingUp)
  {
    if ([pathCopy row] >= _imagesToKeepOutsideVisibleCells)
    {
      v13 = MEMORY[0x1E696AC88];
      v14 = v10 - _imagesToKeepOutsideVisibleCells;
      goto LABEL_10;
    }

    if (!self->_scrollingUp)
    {
      goto LABEL_11;
    }
  }

  v12 = v10 + _imagesToKeepOutsideVisibleCells;
  if (v12 < [(PKEditTableViewController *)self tableView:viewCopy numberOfRowsInSection:section])
  {
    v13 = MEMORY[0x1E696AC88];
    v14 = v12;
LABEL_10:
    v15 = [v13 indexPathForRow:v14 inSection:section];
    v16 = [WeakRetained passAtIndexPath:v15];
    [(PKEditTableViewController *)self clearImageCacheForPass:v16];
  }

LABEL_11:
  v17 = [WeakRetained passAtIndexPath:pathCopy];
  v18 = v17;
  if (v17)
  {
    uniqueID = [v17 uniqueID];
    v20 = [@"stack_" stringByAppendingString:uniqueID];
    [(PKEditTableViewController *)self moveHighPriorityToLowPriorityWithCacheKey:v20];

    v21 = [@"single_" stringByAppendingString:uniqueID];
    [(PKEditTableViewController *)self moveHighPriorityToLowPriorityWithCacheKey:v21];
  }

LABEL_14:
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [(PKEditTableViewController *)self _setShouldProcessLowPriorityRequests:0];
  panGestureRecognizer = [draggingCopy panGestureRecognizer];
  [panGestureRecognizer translationInView:draggingCopy];
  v7 = v6;

  self->_dragging = 1;
  if (v7 == 0.0)
  {
    [(PKEditTableViewController *)self resumeRequestIfNoScrollingAfterTimeInterval:0.2];
  }

  self->_scrollingUp = v7 > 0.0;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v13 = scrollCopy;
  if (self->_lastYOffsetTime == 0.0)
  {
    self->_lastYOffsetTime = mach_absolute_time();
    [v13 contentOffset];
    v5 = v13;
    self->_lastYOffset = v6;
  }

  else
  {
    [scrollCopy contentOffset];
    v8 = v7;
    v9 = mach_absolute_time();
    PKSecondsFromMachTimeInterval();
    v11 = fabs((v8 - self->_lastYOffset) / v10);
    v12 = v11 > 150.0;
    if (self->_scrollingFast != v12)
    {
      self->_scrollingFast = v12;
      [(PKEditTableViewController *)self _updateShouldProcessHighPriorityRequestsWithFastScrolling:v11 > 150.0];
    }

    self->_lastYOffset = v8;
    self->_lastYOffsetTime = v9;
    v5 = v13;
    if (self->_dragging)
    {
      [(PKEditTableViewController *)self resumeRequestIfNoScrollingAfterTimeInterval:0.2];
      v5 = v13;
    }
  }
}

- (void)resumeRequestIfNoScrollingAfterTimeInterval:(double)interval
{
  v5 = dispatch_time(0, (interval * 1000000000.0));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__PKEditTableViewController_resumeRequestIfNoScrollingAfterTimeInterval___block_invoke;
  v6[3] = &unk_1E80119C8;
  v6[4] = self;
  *&v6[5] = interval;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
}

uint64_t __73__PKEditTableViewController_resumeRequestIfNoScrollingAfterTimeInterval___block_invoke(uint64_t a1)
{
  mach_absolute_time();
  result = PKSecondsFromMachTimeInterval();
  if (v3 >= *(a1 + 40) * 0.5)
  {
    v4 = *(a1 + 32);

    return [v4 _setShouldProcessLowPriorityRequests:1];
  }

  return result;
}

- (void)findApps
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EC0], 0);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BBB68]];
  [mEMORY[0x1E69DC668] openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)scanCode
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EB8], 0);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BBC30]];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  if (self->_performanceTest == 2)
  {
    v6 = animationCopy;
    if (self->_scrollingUp)
    {
      testIteration = self->_testIteration;
      if (testIteration > 9)
      {
        [(PKEditTableViewController *)self passedTest];
      }

      else
      {
        self->_testIteration = testIteration + 1;
        [(PKEditTableViewController *)self scrollToLastRowOrFailTest];
      }
    }

    else
    {
      [(PKEditTableViewController *)self scrollToFirstRowOrFailTest];
    }

    animationCopy = v6;
  }
}

- (void)startedTestWithName:(id)name
{
  objc_storeStrong(&self->_performanceTestName, name);
  nameCopy = name;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] startedTest:nameCopy];
}

- (void)passedTest
{
  navigationController = [(PKEditTableViewController *)self navigationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PKEditTableViewController_passedTest__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v4];
}

void __39__PKEditTableViewController_passedTest__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 finishedTest:*(*(a1 + 32) + 1256)];
}

- (void)failedTestWithReason:(id)reason
{
  reasonCopy = reason;
  navigationController = [(PKEditTableViewController *)self navigationController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKEditTableViewController_failedTestWithReason___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [navigationController dismissViewControllerAnimated:1 completion:v7];
}

void __50__PKEditTableViewController_failedTestWithReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 failedTest:*(*(a1 + 32) + 1256) withFailure:*(a1 + 40)];
}

- (void)selectFirstRowOrFailTest
{
  if ([(UITableView *)self->_tableView numberOfRowsInSection:0]< 1)
  {

    [(PKEditTableViewController *)self failedTestWithReason:@"No passes available..."];
  }

  else
  {
    v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    [(PKEditTableViewController *)self tableView:self->_tableView didSelectRowAtIndexPath:v3];
  }
}

- (void)scrollToFirstRowOrFailTest
{
  if ([(UITableView *)self->_tableView numberOfRowsInSection:0]< 1)
  {

    [(PKEditTableViewController *)self failedTestWithReason:@"No passes available..."];
  }

  else
  {
    self->_scrollingUp = 1;
    tableView = self->_tableView;
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    [(UITableView *)tableView scrollToRowAtIndexPath:v4 atScrollPosition:1 animated:1];
  }
}

- (void)scrollToLastRowOrFailTest
{
  v3 = [(UITableView *)self->_tableView numberOfRowsInSection:0];
  if (v3 < 1)
  {

    [(PKEditTableViewController *)self failedTestWithReason:@"No passes available..."];
  }

  else
  {
    self->_scrollingUp = 0;
    tableView = self->_tableView;
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:v3 - 1 inSection:0];
    [(UITableView *)tableView scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
  }
}

- (void)beginScrollingTestWithTestName:(id)name
{
  self->_performanceTest = 2;
  [(PKEditTableViewController *)self startedTestWithName:name];

  [(PKEditTableViewController *)self scrollToLastRowOrFailTest];
}

- (void)beginPassSelectionTestWithTestName:(id)name
{
  self->_performanceTest = 1;
  [(PKEditTableViewController *)self startedTestWithName:name];

  [(PKEditTableViewController *)self selectFirstRowOrFailTest];
}

- (void)beginPassDeletionTestWithTestName:(id)name
{
  self->_performanceTest = 3;
  [(PKEditTableViewController *)self startedTestWithName:name];

  [(PKEditTableViewController *)self selectFirstRowOrFailTest];
}

- (PKEditTableViewControllerCachingDelegate)cachingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);

  return WeakRetained;
}

@end