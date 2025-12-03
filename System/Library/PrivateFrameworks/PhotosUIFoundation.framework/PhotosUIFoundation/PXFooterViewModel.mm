@interface PXFooterViewModel
- (PXFooterViewModel)init;
- (void)configureWithPhotosEnvironment:(id)environment;
- (void)performChanges:(id)changes;
- (void)setAccessoryView:(id)view;
- (void)setAction:(id)action;
- (void)setActionConfirmationAlertButtonTitle:(id)title;
- (void)setActionConfirmationAlertSubtitle:(id)subtitle;
- (void)setActionConfirmationAlertTitle:(id)title;
- (void)setActionTitle:(id)title;
- (void)setAnimatedIconMode:(int64_t)mode;
- (void)setExtendedSystemImageName:(id)name;
- (void)setExtendedTitle:(id)title;
- (void)setFilterView:(id)view;
- (void)setHasImportantInformation:(BOOL)information;
- (void)setInternalMessageSubtitle:(id)subtitle;
- (void)setIsPaused:(BOOL)paused;
- (void)setIsProcessing:(BOOL)processing;
- (void)setProgress:(float)progress;
- (void)setShowBadge:(BOOL)badge;
- (void)setSubtitle1:(id)subtitle1;
- (void)setSubtitle1Style:(int64_t)style;
- (void)setSubtitle2:(id)subtitle2;
- (void)setTitle:(id)title;
- (void)setTopAccessoryView:(id)view;
- (void)setUseBlankActionSeparator:(BOOL)separator;
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

- (void)configureWithPhotosEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B405DAF4();
  swift_unknownObjectRelease();
  sub_1B3FCB920(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)setShowBadge:(BOOL)badge
{
  if (self->_showBadge != badge)
  {
    self->_showBadge = badge;
    [(PXObservable *)self signalChange:0x200000];
  }
}

- (void)setIsProcessing:(BOOL)processing
{
  if (self->_isProcessing != processing)
  {
    self->_isProcessing = processing;
    [(PXObservable *)self signalChange:0x100000];
  }
}

- (void)setSubtitle1Style:(int64_t)style
{
  if (self->_subtitle1Style != style)
  {
    self->_subtitle1Style = style;
    [(PXObservable *)self signalChange:0x80000];
  }
}

- (void)setHasImportantInformation:(BOOL)information
{
  if (self->_hasImportantInformation != information)
  {
    self->_hasImportantInformation = information;
    [(PXObservable *)self signalChange:0x40000];
  }
}

- (void)setAnimatedIconMode:(int64_t)mode
{
  if (self->_animatedIconMode != mode)
  {
    self->_animatedIconMode = mode;
    [(PXObservable *)self signalChange:0x8000];
  }
}

- (void)setTopAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_topAccessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_topAccessoryView, view);
    [(PXObservable *)self signalChange:0x10000];
    viewCopy = v6;
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_accessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_accessoryView, view);
    [(PXObservable *)self signalChange:0x4000];
    viewCopy = v6;
  }
}

- (void)setUseBlankActionSeparator:(BOOL)separator
{
  if (self->_useBlankActionSeparator != separator)
  {
    self->_useBlankActionSeparator = separator;
    [(PXObservable *)self signalChange:0x400000];
  }
}

- (void)setAction:(id)action
{
  if (self->_action != action)
  {
    v4 = [action copy];
    action = self->_action;
    self->_action = v4;

    [(PXObservable *)self signalChange:0x2000];
  }
}

- (void)setActionConfirmationAlertButtonTitle:(id)title
{
  titleCopy = title;
  actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  if (actionConfirmationAlertButtonTitle != titleCopy)
  {
    v8 = titleCopy;
    actionConfirmationAlertButtonTitle = [actionConfirmationAlertButtonTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((actionConfirmationAlertButtonTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertButtonTitle;
      self->_actionConfirmationAlertButtonTitle = v6;

      actionConfirmationAlertButtonTitle = [(PXObservable *)self signalChange:4096];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertButtonTitle, titleCopy);
}

- (void)setActionConfirmationAlertSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  if (actionConfirmationAlertSubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    actionConfirmationAlertSubtitle = [actionConfirmationAlertSubtitle isEqualToString:subtitleCopy];
    subtitleCopy = v8;
    if ((actionConfirmationAlertSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertSubtitle;
      self->_actionConfirmationAlertSubtitle = v6;

      actionConfirmationAlertSubtitle = [(PXObservable *)self signalChange:2048];
      subtitleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertSubtitle, subtitleCopy);
}

- (void)setActionConfirmationAlertTitle:(id)title
{
  titleCopy = title;
  actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  if (actionConfirmationAlertTitle != titleCopy)
  {
    v8 = titleCopy;
    actionConfirmationAlertTitle = [actionConfirmationAlertTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((actionConfirmationAlertTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionConfirmationAlertTitle;
      self->_actionConfirmationAlertTitle = v6;

      actionConfirmationAlertTitle = [(PXObservable *)self signalChange:1024];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionConfirmationAlertTitle, titleCopy);
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  actionTitle = self->_actionTitle;
  if (actionTitle != titleCopy)
  {
    v8 = titleCopy;
    actionTitle = [actionTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((actionTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_actionTitle;
      self->_actionTitle = v6;

      actionTitle = [(PXObservable *)self signalChange:512];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](actionTitle, titleCopy);
}

- (void)setProgress:(float)progress
{
  if (progress != -1.0 && (progress < 0.0 || progress > 1.0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFooterViewModel.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"(progress == PXFooterViewModelNoProgress) || ((progress >= 0.0f) && (progress <= 1.0f))"}];
  }

  if (vabdd_f64(self->_progress, progress) > 0.00000999999975)
  {
    self->_progress = progress;

    [(PXObservable *)self signalChange:128];
  }
}

- (void)setIsPaused:(BOOL)paused
{
  if (self->_isPaused != paused)
  {
    self->_isPaused = paused;
    [(PXObservable *)self signalChange:64];
  }
}

- (void)setInternalMessageSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  internalMessageSubtitle = self->_internalMessageSubtitle;
  if (internalMessageSubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    internalMessageSubtitle = [internalMessageSubtitle isEqualToString:subtitleCopy];
    subtitleCopy = v8;
    if ((internalMessageSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_internalMessageSubtitle;
      self->_internalMessageSubtitle = v6;

      internalMessageSubtitle = [(PXObservable *)self signalChange:32];
      subtitleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](internalMessageSubtitle, subtitleCopy);
}

- (void)setSubtitle2:(id)subtitle2
{
  subtitle2Copy = subtitle2;
  subtitle2 = self->_subtitle2;
  if (subtitle2 != subtitle2Copy)
  {
    v8 = subtitle2Copy;
    subtitle2 = [subtitle2 isEqualToString:subtitle2Copy];
    subtitle2Copy = v8;
    if ((subtitle2 & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_subtitle2;
      self->_subtitle2 = v6;

      subtitle2 = [(PXObservable *)self signalChange:16];
      subtitle2Copy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](subtitle2, subtitle2Copy);
}

- (void)setSubtitle1:(id)subtitle1
{
  subtitle1Copy = subtitle1;
  subtitle1 = self->_subtitle1;
  if (subtitle1 != subtitle1Copy)
  {
    v8 = subtitle1Copy;
    subtitle1 = [subtitle1 isEqualToString:subtitle1Copy];
    subtitle1Copy = v8;
    if ((subtitle1 & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_subtitle1;
      self->_subtitle1 = v6;

      subtitle1 = [(PXObservable *)self signalChange:8];
      subtitle1Copy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](subtitle1, subtitle1Copy);
}

- (void)setFilterView:(id)view
{
  viewCopy = view;
  if (self->_filterView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_filterView, view);
    [(PXObservable *)self signalChange:4];
    viewCopy = v6;
  }
}

- (void)setExtendedSystemImageName:(id)name
{
  nameCopy = name;
  extendedSystemImageName = self->_extendedSystemImageName;
  if (extendedSystemImageName != nameCopy)
  {
    v8 = nameCopy;
    extendedSystemImageName = [extendedSystemImageName isEqualToString:nameCopy];
    nameCopy = v8;
    if ((extendedSystemImageName & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_extendedSystemImageName;
      self->_extendedSystemImageName = v6;

      extendedSystemImageName = [(PXObservable *)self signalChange:0x20000];
      nameCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](extendedSystemImageName, nameCopy);
}

- (void)setExtendedTitle:(id)title
{
  titleCopy = title;
  extendedTitle = self->_extendedTitle;
  if (extendedTitle != titleCopy)
  {
    v8 = titleCopy;
    extendedTitle = [extendedTitle isEqualToString:titleCopy];
    titleCopy = v8;
    if ((extendedTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_extendedTitle;
      self->_extendedTitle = v6;

      extendedTitle = [(PXObservable *)self signalChange:2];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](extendedTitle, titleCopy);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  if (title != titleCopy)
  {
    v8 = titleCopy;
    title = [title isEqualToString:titleCopy];
    titleCopy = v8;
    if ((title & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_title;
      self->_title = v6;

      title = [(PXObservable *)self signalChange:1];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](title, titleCopy);
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXFooterViewModel;
  [(PXObservable *)&v3 performChanges:changes];
}

@end