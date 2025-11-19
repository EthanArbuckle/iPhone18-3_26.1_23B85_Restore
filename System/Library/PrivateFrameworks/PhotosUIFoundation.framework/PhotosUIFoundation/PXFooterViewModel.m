@interface PXFooterViewModel
- (PXFooterViewModel)init;
- (void)configureWithPhotosEnvironment:(id)a3;
- (void)performChanges:(id)a3;
- (void)setAccessoryView:(id)a3;
- (void)setAction:(id)a3;
- (void)setActionConfirmationAlertButtonTitle:(id)a3;
- (void)setActionConfirmationAlertSubtitle:(id)a3;
- (void)setActionConfirmationAlertTitle:(id)a3;
- (void)setActionTitle:(id)a3;
- (void)setAnimatedIconMode:(int64_t)a3;
- (void)setExtendedSystemImageName:(id)a3;
- (void)setExtendedTitle:(id)a3;
- (void)setFilterView:(id)a3;
- (void)setHasImportantInformation:(BOOL)a3;
- (void)setInternalMessageSubtitle:(id)a3;
- (void)setIsPaused:(BOOL)a3;
- (void)setIsProcessing:(BOOL)a3;
- (void)setProgress:(float)a3;
- (void)setShowBadge:(BOOL)a3;
- (void)setSubtitle1:(id)a3;
- (void)setSubtitle1Style:(int64_t)a3;
- (void)setSubtitle2:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTopAccessoryView:(id)a3;
- (void)setUseBlankActionSeparator:(BOOL)a3;
@end

@implementation PXFooterViewModel

- (PXFooterViewModel)init
{
  v3.receiver = self;
  v3.super_class = PXFooterViewModel;
  result = [(PXObservable *)&v3 init];
  if (result)
  {
    result->_progress = -1.0;
  }

  return result;
}

- (void)configureWithPhotosEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B405DAF4();
  swift_unknownObjectRelease();
  sub_1B3FCB920(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)setShowBadge:(BOOL)a3
{
  if (self->_showBadge != a3)
  {
    self->_showBadge = a3;
    [(PXObservable *)self signalChange:0x200000];
  }
}

- (void)setIsProcessing:(BOOL)a3
{
  if (self->_isProcessing != a3)
  {
    self->_isProcessing = a3;
    [(PXObservable *)self signalChange:0x100000];
  }
}

- (void)setSubtitle1Style:(int64_t)a3
{
  if (self->_subtitle1Style != a3)
  {
    self->_subtitle1Style = a3;
    [(PXObservable *)self signalChange:0x80000];
  }
}

- (void)setHasImportantInformation:(BOOL)a3
{
  if (self->_hasImportantInformation != a3)
  {
    self->_hasImportantInformation = a3;
    [(PXObservable *)self signalChange:0x40000];
  }
}

- (void)setAnimatedIconMode:(int64_t)a3
{
  if (self->_animatedIconMode != a3)
  {
    self->_animatedIconMode = a3;
    [(PXObservable *)self signalChange:0x8000];
  }
}

- (void)setTopAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_topAccessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_topAccessoryView, a3);
    [(PXObservable *)self signalChange:0x10000];
    v5 = v6;
  }
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_accessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryView, a3);
    [(PXObservable *)self signalChange:0x4000];
    v5 = v6;
  }
}

- (void)setUseBlankActionSeparator:(BOOL)a3
{
  if (self->_useBlankActionSeparator != a3)
  {
    self->_useBlankActionSeparator = a3;
    [(PXObservable *)self signalChange:0x400000];
  }
}

- (void)setAction:(id)a3
{
  if (self->_action != a3)
  {
    v4 = [a3 copy];
    action = self->_action;
    self->_action = v4;

    [(PXObservable *)self signalChange:0x2000];
  }
}

- (void)setActionConfirmationAlertButtonTitle:(id)a3
{
  v4 = a3;
  actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  if (actionConfirmationAlertButtonTitle != v4)
  {
    v8 = v4;
    actionConfirmationAlertButtonTitle = [actionConfirmationAlertButtonTitle isEqualToString:v4];
    v4 = v8;
    if ((actionConfirmationAlertButtonTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertButtonTitle;
      self->_actionConfirmationAlertButtonTitle = v6;

      actionConfirmationAlertButtonTitle = [(PXObservable *)self signalChange:4096];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertButtonTitle, v4);
}

- (void)setActionConfirmationAlertSubtitle:(id)a3
{
  v4 = a3;
  actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  if (actionConfirmationAlertSubtitle != v4)
  {
    v8 = v4;
    actionConfirmationAlertSubtitle = [actionConfirmationAlertSubtitle isEqualToString:v4];
    v4 = v8;
    if ((actionConfirmationAlertSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertSubtitle;
      self->_actionConfirmationAlertSubtitle = v6;

      actionConfirmationAlertSubtitle = [(PXObservable *)self signalChange:2048];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertSubtitle, v4);
}

- (void)setActionConfirmationAlertTitle:(id)a3
{
  v4 = a3;
  actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  if (actionConfirmationAlertTitle != v4)
  {
    v8 = v4;
    actionConfirmationAlertTitle = [actionConfirmationAlertTitle isEqualToString:v4];
    v4 = v8;
    if ((actionConfirmationAlertTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertTitle;
      self->_actionConfirmationAlertTitle = v6;

      actionConfirmationAlertTitle = [(PXObservable *)self signalChange:1024];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertTitle, v4);
}

- (void)setActionTitle:(id)a3
{
  v4 = a3;
  actionTitle = self->_actionTitle;
  if (actionTitle != v4)
  {
    v8 = v4;
    actionTitle = [actionTitle isEqualToString:v4];
    v4 = v8;
    if ((actionTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionTitle;
      self->_actionTitle = v6;

      actionTitle = [(PXObservable *)self signalChange:512];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionTitle, v4);
}

- (void)setProgress:(float)a3
{
  if (a3 != -1.0 && (a3 < 0.0 || a3 > 1.0))
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXFooterViewModel.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"(progress == PXFooterViewModelNoProgress) || ((progress >= 0.0f) && (progress <= 1.0f))"}];
  }

  if (vabdd_f64(self->_progress, a3) > 0.00000999999975)
  {
    self->_progress = a3;

    [(PXObservable *)self signalChange:128];
  }
}

- (void)setIsPaused:(BOOL)a3
{
  if (self->_isPaused != a3)
  {
    self->_isPaused = a3;
    [(PXObservable *)self signalChange:64];
  }
}

- (void)setInternalMessageSubtitle:(id)a3
{
  v4 = a3;
  internalMessageSubtitle = self->_internalMessageSubtitle;
  if (internalMessageSubtitle != v4)
  {
    v8 = v4;
    internalMessageSubtitle = [internalMessageSubtitle isEqualToString:v4];
    v4 = v8;
    if ((internalMessageSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_internalMessageSubtitle;
      self->_internalMessageSubtitle = v6;

      internalMessageSubtitle = [(PXObservable *)self signalChange:32];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](internalMessageSubtitle, v4);
}

- (void)setSubtitle2:(id)a3
{
  v4 = a3;
  subtitle2 = self->_subtitle2;
  if (subtitle2 != v4)
  {
    v8 = v4;
    subtitle2 = [subtitle2 isEqualToString:v4];
    v4 = v8;
    if ((subtitle2 & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_subtitle2;
      self->_subtitle2 = v6;

      subtitle2 = [(PXObservable *)self signalChange:16];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](subtitle2, v4);
}

- (void)setSubtitle1:(id)a3
{
  v4 = a3;
  subtitle1 = self->_subtitle1;
  if (subtitle1 != v4)
  {
    v8 = v4;
    subtitle1 = [subtitle1 isEqualToString:v4];
    v4 = v8;
    if ((subtitle1 & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_subtitle1;
      self->_subtitle1 = v6;

      subtitle1 = [(PXObservable *)self signalChange:8];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](subtitle1, v4);
}

- (void)setFilterView:(id)a3
{
  v5 = a3;
  if (self->_filterView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_filterView, a3);
    [(PXObservable *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setExtendedSystemImageName:(id)a3
{
  v4 = a3;
  extendedSystemImageName = self->_extendedSystemImageName;
  if (extendedSystemImageName != v4)
  {
    v8 = v4;
    extendedSystemImageName = [extendedSystemImageName isEqualToString:v4];
    v4 = v8;
    if ((extendedSystemImageName & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_extendedSystemImageName;
      self->_extendedSystemImageName = v6;

      extendedSystemImageName = [(PXObservable *)self signalChange:0x20000];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](extendedSystemImageName, v4);
}

- (void)setExtendedTitle:(id)a3
{
  v4 = a3;
  extendedTitle = self->_extendedTitle;
  if (extendedTitle != v4)
  {
    v8 = v4;
    extendedTitle = [extendedTitle isEqualToString:v4];
    v4 = v8;
    if ((extendedTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_extendedTitle;
      self->_extendedTitle = v6;

      extendedTitle = [(PXObservable *)self signalChange:2];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](extendedTitle, v4);
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  title = self->_title;
  if (title != v4)
  {
    v8 = v4;
    title = [title isEqualToString:v4];
    v4 = v8;
    if ((title & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_title;
      self->_title = v6;

      title = [(PXObservable *)self signalChange:1];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](title, v4);
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXFooterViewModel;
  [(PXObservable *)&v3 performChanges:a3];
}

@end