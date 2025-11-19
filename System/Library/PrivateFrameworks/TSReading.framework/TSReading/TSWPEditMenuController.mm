@interface TSWPEditMenuController
+ (id)p_sharedEditMenuController;
+ (int)menuState;
+ (void)hideEditMenu;
+ (void)showEditMenuAtTargetRect:(CGRect)a3 canCenterHUD:(BOOL)a4 interactiveCanvasController:(id)a5;
- (CGRect)targetRect;
- (TSWPEditMenuController)init;
- (UIView)targetView;
- (void)dealloc;
- (void)p_didAnimateKeyboard;
- (void)p_setMenuVisible:(id)a3;
- (void)setIsBeginningEditing:(BOOL)a3;
@end

@implementation TSWPEditMenuController

+ (id)p_sharedEditMenuController
{
  if (+[TSWPEditMenuController p_sharedEditMenuController]::onceToken != -1)
  {
    +[TSWPEditMenuController p_sharedEditMenuController];
  }

  v3 = +[TSWPEditMenuController p_sharedEditMenuController]::sSharedEditMenuController;

  return v3;
}

uint64_t __52__TSWPEditMenuController_p_sharedEditMenuController__block_invoke()
{
  +[TSWPEditMenuController p_sharedEditMenuController]::sSharedEditMenuController = objc_alloc_init(TSWPEditMenuController);

  return MEMORY[0x2821F96F8]();
}

+ (int)menuState
{
  v2 = [a1 p_sharedEditMenuController];
  v3 = v2[2];

  return v3;
}

+ (void)showEditMenuAtTargetRect:(CGRect)a3 canCenterHUD:(BOOL)a4 interactiveCanvasController:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40 = a5;
  v11 = [MEMORY[0x277D75718] sharedMenuController];
  [v40 visibleBoundsRectClippedToWindow];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v53.origin.x = v13;
  v53.origin.y = v15;
  v53.size.width = v17;
  v53.size.height = v19;
  v45 = CGRectIntersection(v44, v53);
  v41 = v45.origin.x;
  v42 = v45.size.height;
  v20 = v45.origin.y;
  v21 = v45.size.width;
  [v11 setArrowDirection:0];
  v46.origin.x = v41;
  v46.size.height = v42;
  v46.origin.y = v20;
  v46.size.width = v21;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = v13;
  v47.origin.y = v15;
  v47.size.width = v17;
  v47.size.height = v19;
  v23 = CGRectGetMinY(v47);
  v48.origin.x = v13;
  v48.origin.y = v15;
  v48.size.width = v17;
  v48.size.height = v19;
  MaxY = CGRectGetMaxY(v48);
  v49.origin.x = v41;
  v49.size.height = v42;
  v49.origin.y = v20;
  v49.size.width = v21;
  v25 = CGRectGetMaxY(v49);
  v26 = MinY - v23;
  v27 = MaxY - v25;
  if (MinY - v23 < 55.0 || v27 < 55.0)
  {
    if (v26 >= 55.0 || v27 >= 55.0)
    {
      if (v26 < 55.0)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [v11 setArrowDirection:v33];
    }

    else if (v5)
    {
      v28.n128_f64[0] = TSDCenterOfRect(v41, v20, v21, v42);
      v29.n128_u64[0] = *MEMORY[0x277CBF3A8];
      v30.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
      v50.origin.x = TSDRectWithOriginAndSize(v31, v28, v32, v29, v30);
      v51 = CGRectInset(v50, -0.5, -0.5);
      v41 = v51.origin.x;
      v42 = v51.size.height;
      v20 = v51.origin.y;
      v21 = v51.size.width;
    }
  }

  v52.origin.x = v41;
  v52.size.height = v42;
  v52.origin.y = v20;
  v52.size.width = v21;
  if (CGRectGetHeight(v52) != 0.0)
  {
    if (v21 == 0.0)
    {
      v21 = 1.0;
    }

    v34 = [v40 layerHost];
    v35 = [v34 asiOSCVC];

    v36 = [v35 extraMenuItems];
    [v11 setMenuItems:v36];

    v37 = [v40 layerHost];
    v38 = [v37 canvasView];

    v39 = [a1 p_sharedEditMenuController];
    [v39 setTargetRect:{v41, v20, v21, v42}];
    [v39 setTargetView:v38];
    [v39 p_setMenuVisible:MEMORY[0x277CBEC38]];
  }
}

+ (void)hideEditMenu
{
  v2 = [a1 p_sharedEditMenuController];
  [v2 p_setMenuVisible:MEMORY[0x277CBEC28]];
}

- (TSWPEditMenuController)init
{
  v5.receiver = self;
  v5.super_class = TSWPEditMenuController;
  v2 = [(TSWPEditMenuController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_p_willShowMenu_ name:*MEMORY[0x277D76CC0] object:0];
    [v3 addObserver:v2 selector:sel_p_didShowMenu_ name:*MEMORY[0x277D76CB0] object:0];
    [v3 addObserver:v2 selector:sel_p_willHideMenu_ name:*MEMORY[0x277D76CB8] object:0];
    [v3 addObserver:v2 selector:sel_p_didHideMenu_ name:*MEMORY[0x277D76CA8] object:0];
    [TSKKeyboardMonitor addKeyboardObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TSWPEditMenuController;
  [(TSWPEditMenuController *)&v4 dealloc];
}

- (void)p_setMenuVisible:(id)a3
{
  v7 = a3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_setMenuVisible_ object:0];
  if ((self->_menuState | 2) == 3)
  {
    [(TSWPEditMenuController *)self performSelector:sel_p_setMenuVisible_ withObject:v7 afterDelay:0.1];
    goto LABEL_3;
  }

  if (([v7 BOOLValue] & 1) == 0)
  {
    self->_showMenuOnKeyboard = 0;
    if (!self->_menuState)
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x277D75718] sharedMenuController];
    [v5 hideMenu];
    goto LABEL_12;
  }

  if (self->_menuState != 2)
  {
    v4 = [(TSWPEditMenuController *)self targetView];

    if (v4)
    {
      v5 = [MEMORY[0x277D75718] sharedMenuController];
      v6 = [(TSWPEditMenuController *)self targetView];
      [(TSWPEditMenuController *)self targetRect];
      [v5 showMenuFromView:v6 rect:?];

LABEL_12:
    }
  }

LABEL_3:
}

- (void)p_didAnimateKeyboard
{
  if (self->_showMenuOnKeyboard)
  {
    self->_showMenuOnKeyboard = 0;
    [(TSWPEditMenuController *)self p_setMenuVisible:MEMORY[0x277CBEC38]];
  }
}

- (void)setIsBeginningEditing:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_clearIsBeginningEditing object:0];
  self->_isBeginningEditing = v3;
  if (v3)
  {

    [(TSWPEditMenuController *)self performSelector:sel_p_clearIsBeginningEditing withObject:0 afterDelay:0.25];
  }
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end