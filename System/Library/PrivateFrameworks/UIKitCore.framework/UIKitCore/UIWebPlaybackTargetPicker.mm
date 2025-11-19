@interface UIWebPlaybackTargetPicker
- (void)_dismissAirPlayRoutePickerIPad;
- (void)_presentAirPlayPopoverAnimated:(BOOL)a3 fromRect:(CGRect)a4;
- (void)dealloc;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)show:(BOOL)a3 fromRect:(CGRect)a4;
- (void)showAirPlayPickerIPad:(int64_t)a3 fromRect:(CGRect)a4;
- (void)showAirPlayPickerIPhone:(int64_t)a3;
@end

@implementation UIWebPlaybackTargetPicker

- (void)dealloc
{
  [(MPAVRoutingSheet *)self->_actionSheet dismiss];
  [(UIWebPlaybackTargetPicker *)self _dismissAirPlayRoutePickerIPad];
  v3.receiver = self;
  v3.super_class = UIWebPlaybackTargetPicker;
  [(UIView *)&v3 dealloc];
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  if (self->_popoverController == a3)
  {
    [(UIWebPlaybackTargetPicker *)self _dismissAirPlayRoutePickerIPad];
  }
}

- (void)_presentAirPlayPopoverAnimated:(BOOL)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  popoverController = self->_popoverController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(MPAudioVideoRoutingPopoverController *)popoverController presentPopoverFromRect:WeakRetained inView:15 permittedArrowDirections:v8 animated:x, y, width, height];
}

- (void)_dismissAirPlayRoutePickerIPad
{
  routingController = self->_routingController;
  self->_routingController = 0;

  if (self->_popoverController)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:@"UIWindowWillRotateNotification" object:0];
    [v5 removeObserver:self name:@"UIWindowDidRotateNotification" object:0];
    [(MPAudioVideoRoutingPopoverController *)self->_popoverController dismissPopoverAnimated:0];
    [(MPAudioVideoRoutingPopoverController *)self->_popoverController setDelegate:0];
    popoverController = self->_popoverController;
    self->_popoverController = 0;
  }
}

- (void)showAirPlayPickerIPad:(int64_t)a3 fromRect:(CGRect)a4
{
  if (!self->_popoverController)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v10 = getMPAudioVideoRoutingPopoverControllerClass_softClass;
    v19 = getMPAudioVideoRoutingPopoverControllerClass_softClass;
    if (!getMPAudioVideoRoutingPopoverControllerClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getMPAudioVideoRoutingPopoverControllerClass_block_invoke;
      v15[3] = &unk_1E70F2F20;
      v15[4] = &v16;
      __getMPAudioVideoRoutingPopoverControllerClass_block_invoke(v15);
      v10 = v17[3];
    }

    v11 = v10;
    _Block_object_dispose(&v16, 8);
    v12 = [[v10 alloc] initWithType:a3];
    popoverController = self->_popoverController;
    self->_popoverController = v12;

    [(MPAudioVideoRoutingPopoverController *)self->_popoverController setDelegate:self];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:self selector:sel__windowWillRotate_ name:@"UIWindowWillRotateNotification" object:0];
    [v14 addObserver:self selector:sel__windowDidRotate_ name:@"UIWindowDidRotateNotification" object:0];
    [(UIWebPlaybackTargetPicker *)self _presentAirPlayPopoverAnimated:1 fromRect:x, y, width, height];
  }
}

- (void)showAirPlayPickerIPhone:(int64_t)a3
{
  if (!self->_actionSheet)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v5 = getMPAVRoutingSheetClass_softClass;
    v16 = getMPAVRoutingSheetClass_softClass;
    if (!getMPAVRoutingSheetClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getMPAVRoutingSheetClass_block_invoke;
      v12[3] = &unk_1E70F2F20;
      v12[4] = &v13;
      __getMPAVRoutingSheetClass_block_invoke(v12);
      v5 = v14[3];
    }

    v6 = v5;
    _Block_object_dispose(&v13, 8);
    v7 = [[v5 alloc] initWithAVItemType:a3];
    actionSheet = self->_actionSheet;
    self->_actionSheet = v7;

    v9 = self->_actionSheet;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__UIWebPlaybackTargetPicker_showAirPlayPickerIPhone___block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    [(MPAVRoutingSheet *)v9 showInView:WeakRetained withCompletionHandler:v11];
  }
}

void __53__UIWebPlaybackTargetPicker_showAirPlayPickerIPhone___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 408);
  *(v2 + 408) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 424);
  *(v4 + 424) = 0;
}

- (void)show:(BOOL)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v10 = getMPAVRoutingControllerClass_softClass;
  v19 = getMPAVRoutingControllerClass_softClass;
  if (!getMPAVRoutingControllerClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getMPAVRoutingControllerClass_block_invoke;
    v15[3] = &unk_1E70F2F20;
    v15[4] = &v16;
    __getMPAVRoutingControllerClass_block_invoke(v15);
    v10 = v17[3];
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);
  v12 = [[v10 alloc] initWithName:@"WebKit - HTML media element showing AirPlay route picker"];
  routingController = self->_routingController;
  self->_routingController = v12;

  [(MPAVRoutingController *)self->_routingController setDiscoveryMode:3];
  if (v8)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (UIWebCurrentUserInterfaceIdiomIsSmallScreen())
  {
    [(UIWebPlaybackTargetPicker *)self showAirPlayPickerIPhone:v14];
  }

  else
  {
    [(UIWebPlaybackTargetPicker *)self showAirPlayPickerIPad:v14 fromRect:x, y, width, height];
  }
}

@end