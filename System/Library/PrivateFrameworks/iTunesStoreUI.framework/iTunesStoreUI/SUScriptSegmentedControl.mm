@interface SUScriptSegmentedControl
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSNumber)selectedIndex;
- (NSNumber)selectedSegmentIndex;
- (NSString)cancelButtonTitle;
- (NSString)moreListTitle;
- (NSString)style;
- (SUScriptSegmentedControl)initWithPageSectionGroup:(id)group;
- (SUSegmentedControl)activeSegmentedControl;
- (SUSegmentedControl)nativeSegmentedControl;
- (SUStorePageViewController)storePageViewController;
- (double)maximumWidth;
- (id)_newNativeSegmentedControl;
- (id)_newPageSectionGroupWithSegments:(id)segments;
- (id)_newSegmentsFromPageSectionGroup:(id)group;
- (id)makeSegmentWithTitle:(id)title userInfo:(id)info;
- (id)newPageSectionGroup;
- (id)scriptAttributeKeys;
- (id)segments;
- (id)showsMoreListAutomatically;
- (id)tintColor;
- (id)titleColorForControlState:(unint64_t)state;
- (id)titleShadowColorForControlState:(unint64_t)state;
- (int64_t)maximumNumberOfItems;
- (int64_t)nativeSelectedIndex;
- (int64_t)tintStyle;
- (void)_reloadSegmentedControl:(id)control withSegments:(id)segments;
- (void)_reloadViewControllerPageSectionGroup;
- (void)_setColor:(id)color forTitleTextAttribute:(id)attribute controlState:(unint64_t)state;
- (void)_setRawSegments:(id)segments;
- (void)dealloc;
- (void)setNativeSegmentedControl:(id)control;
- (void)setSegments:(id)segments;
- (void)setSelectedIndex:(id)index;
- (void)setShowsMoreListAutomatically:(id)automatically;
- (void)setStyle:(id)style;
- (void)setTintColor:(id)color;
- (void)setTitleColor:(id)color forControlState:(unint64_t)state;
- (void)setTitleShadowColor:(id)color forControlState:(unint64_t)state;
- (void)showPopoverController:(id)controller fromSegmentIndex:(int64_t)index animated:(BOOL)animated;
@end

@implementation SUScriptSegmentedControl

- (SUScriptSegmentedControl)initWithPageSectionGroup:(id)group
{
  v8.receiver = self;
  v8.super_class = SUScriptSegmentedControl;
  v4 = [(SUScriptObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(SUScriptSegmentedControl *)v4 _newSegmentsFromPageSectionGroup:group];
    [(SUScriptSegmentedControl *)v5 setSegments:v6];
    -[SUScriptSegmentedControl setSelectedIndex:](v5, "setSelectedIndex:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(group, "defaultSectionIndex")}]);
    v5->_style = [group style];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptSegmentedControl;
  [(SUScriptObject *)&v3 dealloc];
}

- (SUSegmentedControl)nativeSegmentedControl
{
  object = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    object = [(SUScriptSegmentedControl *)self _newNativeSegmentedControl];
    [(SUScriptObject *)self setNativeObject:[(SUScriptNativeObject *)SUScriptSegmentedControlNativeObject objectWithNativeObject:object]];
    v4 = object;
  }

  return object;
}

- (int64_t)nativeSelectedIndex
{
  activeSegmentedControl = [(SUScriptSegmentedControl *)self activeSegmentedControl];

  return [(SUSegmentedControl *)activeSegmentedControl selectedItemIndex];
}

- (id)newPageSectionGroup
{
  segments = [(SUScriptSegmentedControl *)self segments];

  return [(SUScriptSegmentedControl *)self _newPageSectionGroupWithSegments:segments];
}

- (void)setNativeSegmentedControl:(id)control
{
  v4 = [(SUScriptNativeObject *)SUScriptSegmentedControlNativeObject objectWithNativeObject:control];

  [(SUScriptObject *)self setNativeObject:v4];
}

uint64_t __49__SUScriptSegmentedControl_hideMoreListAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);

  return [v2 showMoreList:0 animated:v3];
}

- (id)makeSegmentWithTitle:(id)title userInfo:(id)info
{
  v7 = objc_alloc_init(SUScriptSegmentedControlItem);
  [(SUScriptSegmentedControlItem *)v7 setTitle:title];
  [(SUScriptSegmentedControlItem *)v7 setUserInfo:info];
  [(SUScriptObject *)self checkInScriptObject:v7];

  return v7;
}

- (void)setTitleColor:(id)color forControlState:(unint64_t)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    color = 0;
  }

  v7 = *MEMORY[0x1E69DB650];

  [(SUScriptSegmentedControl *)self _setColor:color forTitleTextAttribute:v7 controlState:state];
}

- (void)setTitleShadowColor:(id)color forControlState:(unint64_t)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    color = 0;
  }

  v7 = *MEMORY[0x1E69DE3E8];

  [(SUScriptSegmentedControl *)self _setColor:color forTitleTextAttribute:v7 controlState:state];
}

uint64_t __49__SUScriptSegmentedControl_showMoreListAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);

  return [v2 showMoreList:1 animated:v3];
}

- (void)showPopoverController:(id)controller fromSegmentIndex:(int64_t)index animated:(BOOL)animated
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  WebThreadRunOnMainThread();
}

uint64_t __76__SUScriptSegmentedControl_showPopoverController_fromSegmentIndex_animated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) presentablePopoverController];
  if (result)
  {
    v3 = result;
    v4 = [*(a1 + 40) activeSegmentedControl];
    [v3 setPassthroughViews:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v4, 0)}];
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v4 showPopover:v3 fromSegmentIndex:v5 animated:v6];
  }

  return result;
}

- (id)titleColorForControlState:(unint64_t)state
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  WebThreadRunOnMainThread();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v3;
}

SUScriptColor *__54__SUScriptSegmentedControl_titleColorForControlState___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DB650]];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [[SUScriptColor alloc] initWithUIColor:v3];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)titleShadowColorForControlState:(unint64_t)state
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  WebThreadRunOnMainThread();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v3;
}

SUScriptColor *__60__SUScriptSegmentedControl_titleShadowColorForControlState___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DE3E8]];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [[SUScriptColor alloc] initWithUIColor:v3];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSString)cancelButtonTitle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__34;
  v8 = __Block_byref_object_dispose__34;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __45__SUScriptSegmentedControl_cancelButtonTitle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)maximumNumberOfItems
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __48__SUScriptSegmentedControl_maximumNumberOfItems__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)maximumWidth
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __40__SUScriptSegmentedControl_maximumWidth__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (NSString)moreListTitle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__34;
  v8 = __Block_byref_object_dispose__34;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __41__SUScriptSegmentedControl_moreListTitle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)segments
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__34;
  v12 = __Block_byref_object_dispose__34;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __36__SUScriptSegmentedControl_segments__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storePageViewController];
  v3 = *(a1 + 32);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 40) = [v3 _newSegmentsFromPageSectionGroup:{objc_msgSend(v2, "sectionGroup")}];
    v4 = *(a1 + 32);

    return [v4 _setRawSegments:0];
  }

  else
  {
    result = v3[9];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSNumber)selectedIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v4 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{v7[3], v4, 3221225472, __41__SUScriptSegmentedControl_selectedIndex__block_invoke, &unk_1E81650D8, self, &v6}];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __41__SUScriptSegmentedControl_selectedIndex__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSNumber)selectedSegmentIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v4 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{v7[3], v4, 3221225472, __48__SUScriptSegmentedControl_selectedSegmentIndex__block_invoke, &unk_1E81650D8, self, &v6}];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __48__SUScriptSegmentedControl_selectedSegmentIndex__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __49__SUScriptSegmentedControl_setCancelButtonTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);

  return [v2 setCancelButtonTitle:v3];
}

uint64_t __52__SUScriptSegmentedControl_setMaximumNumberOfItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);

  return [v2 setMaximumNumberOfItems:v3];
}

uint64_t __44__SUScriptSegmentedControl_setMaximumWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  [v2 setMaximumWidth:*(a1 + 40)];
  [v2 sizeToFitUserInterfaceIdiom];
  v3 = [v2 superview];

  return [v3 setNeedsLayout];
}

uint64_t __45__SUScriptSegmentedControl_setMoreListTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);

  return [v2 setMoreListTitle:v3];
}

- (void)setSegments:(id)segments
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    segmentsCopy = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    segmentsCopy = 0;
    if (segments)
    {
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        segmentsCopy = segments;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v5 = [segmentsCopy copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
  if (!v5)
  {
LABEL_8:
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v6 = 0;
    goto LABEL_9;
  }

  v6 = v5;
  WebThreadRunOnMainThread();
LABEL_9:
}

uint64_t __40__SUScriptSegmentedControl_setSegments___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setRawSegments:*(a1 + 40)];
  v2 = [*(a1 + 32) storePageViewController];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _reloadViewControllerPageSectionGroup];
  }

  else
  {
    result = [v3 activeSegmentedControl];
    if (result)
    {
      v5 = result;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      return [v6 _reloadSegmentedControl:v5 withSegments:v7];
    }
  }

  return result;
}

- (void)setSelectedIndex:(id)index
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !index) || (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __45__SUScriptSegmentedControl_setSelectedIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return [v2 setSelectedItemIndex:v4];
}

- (void)setShowsMoreListAutomatically:(id)automatically
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !automatically) || (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __58__SUScriptSegmentedControl_setShowsMoreListAutomatically___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = [*(a1 + 40) BOOLValue];

  return [v2 setShowsMoreListAutomatically:v3];
}

- (void)setStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !style) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __37__SUScriptSegmentedControl_setStyle___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = [*(a1 + 32) _sectionsStyleForString:*(a1 + 40)];
  v2 = [*(a1 + 32) storePageViewController];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _reloadViewControllerPageSectionGroup];
  }

  else
  {
    v5 = [v3 activeSegmentedControl];
    v6 = v5;
    if (*(*(a1 + 32) + 80) == 1)
    {
      v7 = 7;
    }

    else
    {
      result = _UIApplicationUsesLegacyUI();
      if (!result)
      {
        return result;
      }

      v5 = v6;
      v7 = 2;
    }

    return [v5 setSegmentedControlStyle:v7];
  }
}

- (void)setTintColor:(id)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    color = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorCopy = [[SUScriptColor alloc] initWithStyleString:color];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorCopy = color;
LABEL_8:
    v5 = colorCopy;
    if (!color)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = 0;
  if (!color)
  {
LABEL_13:
    WebThreadRunOnMainThread();
    goto LABEL_14;
  }

LABEL_11:
  if (v5)
  {
    goto LABEL_13;
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_14:
}

uint64_t __41__SUScriptSegmentedControl_setTintColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = [*(a1 + 40) nativeColor];

  return [v2 setTintColor:v3];
}

uint64_t __41__SUScriptSegmentedControl_setTintStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v3 = *(a1 + 40);

  return [v2 setTintStyle:v3];
}

- (id)showsMoreListAutomatically
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __54__SUScriptSegmentedControl_showsMoreListAutomatically__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)style
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  if (v5[3] == 1)
  {
    v2 = @"body";
  }

  else
  {
    v2 = @"navigation";
  }

  _Block_object_dispose(&v4, 8);
  return &v2->isa;
}

void *__33__SUScriptSegmentedControl_style__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 80);
  result = [*(a1 + 32) storePageViewController];
  if (result)
  {
    result = [objc_msgSend(result "sectionGroup")];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (id)tintColor
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__34;
  v8 = __Block_byref_object_dispose__34;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

SUScriptColor *__37__SUScriptSegmentedControl_tintColor__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  if (result)
  {
    result = [[SUScriptColor alloc] initWithUIColor:result];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (int64_t)tintStyle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __37__SUScriptSegmentedControl_tintStyle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "activeSegmentedControl")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SUSegmentedControl)activeSegmentedControl
{
  result = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  if (!result)
  {
    result = [(SUStorePageViewController *)[(SUScriptSegmentedControl *)self storePageViewController] sectionSegmentedControl];
    if (!result)
    {

      return [(SUScriptSegmentedControl *)self nativeSegmentedControl];
    }
  }

  return result;
}

- (SUStorePageViewController)storePageViewController
{
  object = [(SUScriptNativeObject *)[[(SUScriptObject *)self parentScriptObject] nativeObject] object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  else
  {
    return 0;
  }
}

- (id)_newNativeSegmentedControl
{
  v3 = [(SUScriptObject *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];
  [v3 setClientInterface:{-[SUScriptObject clientInterface](self, "clientInterface")}];
  [(SUScriptSegmentedControl *)self _reloadSegmentedControl:v3 withSegments:self->_segments];
  return v3;
}

- (id)_newPageSectionGroupWithSegments:(id)segments
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [segments countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(segments);
        }

        newPageSection = [*(*(&v15 + 1) + 8 * v9) newPageSection];
        if (!newPageSection)
        {
          v12 = 0;
          goto LABEL_13;
        }

        v11 = newPageSection;
        [v5 addObject:newPageSection];

        ++v9;
      }

      while (v7 != v9);
      v7 = [segments countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = objc_alloc_init(SUPageSectionGroup);
  selectedItemIndex = [(SUSegmentedControl *)[(SUScriptSegmentedControl *)self activeSegmentedControl] selectedItemIndex];
  if (selectedItemIndex != -1)
  {
    [(SUPageSectionGroup *)v12 setDefaultSectionIndex:selectedItemIndex];
  }

  [(SUPageSectionGroup *)v12 setSections:v5];
  [(SUPageSectionGroup *)v12 setStyle:self->_style];
LABEL_13:

  return v12;
}

- (id)_newSegmentsFromPageSectionGroup:(id)group
{
  v18 = *MEMORY[0x1E69E9840];
  if (!group)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sections = [group sections];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sections);
        }

        v10 = [[SUScriptSegmentedControlItem alloc] initWithPageSection:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          v11 = v10;
          [v4 addObject:v10];
        }
      }

      v7 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_reloadSegmentedControl:(id)control withSegments:(id)segments
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [segments countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(segments);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        image = [v11 image];
        if (!image)
        {
          image = [v11 title];
        }

        [v6 addObject:image];
      }

      v8 = [segments countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [control setItems:v6];
}

- (void)_reloadViewControllerPageSectionGroup
{
  storePageViewController = [(SUScriptSegmentedControl *)self storePageViewController];
  if (storePageViewController)
  {
    v4 = storePageViewController;
    v5 = [(SUScriptSegmentedControl *)self _newPageSectionGroupWithSegments:self->_segments];
    [(SUStorePageViewController *)v4 reloadForSectionsWithGroup:v5];
  }
}

- (void)_setColor:(id)color forTitleTextAttribute:(id)attribute controlState:(unint64_t)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorCopy = [[SUScriptColor alloc] initWithStyleString:color];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorCopy = color;
LABEL_5:
    v7 = colorCopy;
    if (!color)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v7 = 0;
  if (!color)
  {
LABEL_10:
    WebThreadRunOnMainThread();
    goto LABEL_11;
  }

LABEL_8:
  if (v7)
  {
    goto LABEL_10;
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_11:
}

void __73__SUScriptSegmentedControl__setColor_forTitleTextAttribute_controlState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSegmentedControl];
  v5 = [objc_msgSend(v2 titleTextAttributesForState:{*(a1 + 56)), "mutableCopy"}];
  v3 = [*(a1 + 40) nativeColor];
  if (v3)
  {
    v4 = v3;
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v5 setObject:v4 forKey:*(a1 + 48)];
  }

  else
  {
    [v5 removeObjectForKey:*(a1 + 48)];
  }

  [v2 setTitleTextAttributes:v5 forState:*(a1 + 56)];
}

- (void)_setRawSegments:(id)segments
{
  segments = self->_segments;
  if (segments != segments)
  {
    if (segments)
    {
      [(SUScriptObject *)self checkOutScriptObjects:?];
      v6 = self->_segments;
    }

    else
    {
      v6 = 0;
    }

    segmentsCopy = segments;
    self->_segments = segmentsCopy;
    if (segmentsCopy)
    {

      [(SUScriptObject *)self checkInScriptObjects:segmentsCopy];
    }
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_46 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSegmentedControl;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_37, 8);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSegmentedControl;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSegmentedControl;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_46 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_37 = sel_hideMoreListAnimated_;
    *algn_1EBF3B2A8 = @"hideMoreList";
    qword_1EBF3B2B0 = sel_makeSegmentWithTitle_userInfo_;
    unk_1EBF3B2B8 = @"createSegment";
    qword_1EBF3B2C0 = sel_setTitleColor_forControlState_;
    unk_1EBF3B2C8 = @"setTitleColor";
    qword_1EBF3B2D0 = sel_setTitleShadowColor_forControlState_;
    unk_1EBF3B2D8 = @"setTitleShadowColor";
    qword_1EBF3B2E0 = sel_showMoreListAnimated_;
    unk_1EBF3B2E8 = @"showMoreList";
    qword_1EBF3B2F0 = sel_showPopoverController_fromSegmentIndex_animated_;
    unk_1EBF3B2F8 = @"showPopOver";
    qword_1EBF3B300 = sel_titleColorForControlState_;
    unk_1EBF3B308 = @"getTitleColor";
    qword_1EBF3B310 = sel_titleShadowColorForControlState_;
    unk_1EBF3B318 = @"getTitleShadowColor";
    __KeyMapping_46 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"cancelButtonTitle", @"maximumNumberOfItems", @"maximumNumberOfItems", @"maximumWidth", @"maximumWidth", @"moreListTitle", @"moreListTitle", @"segments", @"segments", @"selectedIndex", @"selectedIndex", @"selectedSegmentIndex", @"selectedSegmentIndex", @"showsMoreListAutomatically", @"showsMoreListAutomatically", @"style", @"style", @"tintColor", @"tintColor", @"tintStyle", @"tintStyle", @"CONTROL_STATE_DISABLED", @"controlStateDisabled", @"CONTROL_STATE_HIGHLIGHTED", @"controlStateHighlighted", @"CONTROL_STATE_NORMAL", @"controlStateNormal", @"CONTROL_STATE_SELECTED", @"controlStateSelected", @"NO_SEGMENT_INDEX", @"noSegmentIndex", @"TINT_STYLE_DARK", @"tintStyleDark", @"TINT_STYLE_DEFAULT", @"tintStyleDefault", 0}];
  }
}

@end