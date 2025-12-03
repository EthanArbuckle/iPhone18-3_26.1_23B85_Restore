@interface UIVideoEditorController
+ (BOOL)canEditVideoAtPath:(NSString *)videoPath;
- (NSString)videoPath;
- (NSTimeInterval)videoMaximumDuration;
- (UIVideoEditorController)init;
- (id)_createInitialController;
- (id)_properties;
- (id)_valueForProperty:(id)property;
- (void)_autoDismiss;
- (void)_initializeProperties;
- (void)_removeAllChildren;
- (void)_setProperties:(id)properties;
- (void)_setValue:(id)value forProperty:(id)property;
- (void)_setupControllers;
- (void)editVideoViewController:(id)controller didFailWithError:(id)error;
- (void)editVideoViewController:(id)controller didTrimVideoWithOptions:(id)options;
- (void)editVideoViewControllerDidCancel:(id)cancel;
- (void)setVideoMaximumDuration:(NSTimeInterval)videoMaximumDuration;
- (void)setVideoPath:(NSString *)videoPath;
- (void)setVideoQuality:(UIImagePickerControllerQualityType)videoQuality;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillUnload;
@end

@implementation UIVideoEditorController

+ (BOOL)canEditVideoAtPath:(NSString *)videoPath
{
  v4 = MGGetBoolAnswer();
  if (v4)
  {

    LOBYTE(v4) = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(videoPath);
  }

  return v4;
}

- (UIVideoEditorController)init
{
  v4.receiver = self;
  v4.super_class = UIVideoEditorController;
  v2 = [(UIViewController *)&v4 init];
  if (v2 && (!MGGetBoolAnswer() || !UIImagePickerLoadPhotoLibraryIfNecessary()))
  {

    return 0;
  }

  return v2;
}

- (void)viewWillUnload
{
  if ([(UIViewController *)self parentViewController]&& ![(UIViewController *)self presentingViewController])
  {
    *&self->_flags &= ~1u;
    [(UIVideoEditorController *)self _removeAllChildren];
  }

  v3.receiver = self;
  v3.super_class = UIVideoEditorController;
  [(UIViewController *)&v3 viewWillUnload];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ((*&self->_flags & 3) == 0)
  {
    *&self->_flags = *&self->_flags & 0xF8 | 1;
    [(UIVideoEditorController *)self _setupControllers];
    if (([UIApp _viewControllerBasedStatusBarAppearance] & 1) == 0)
    {
      v5 = [__UIStatusBarManagerForWindow(-[UINavigationController _window](self "_window"))];
      if ([__UIStatusBarManagerForWindow(-[UINavigationController _window](self "_window"))])
      {
        v6 = -1;
      }

      else
      {
        v6 = v5;
      }

      self->_previousStatusBarStyle = v6;
    }
  }

  v7.receiver = self;
  v7.super_class = UIVideoEditorController;
  [(UINavigationController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (([UIApp _viewControllerBasedStatusBarAppearance] & 1) == 0)
  {
    viewControllers = [(UINavigationController *)self viewControllers];
    if (![(UIViewController *)self presentedViewController]&& [(NSArray *)viewControllers count]>= 2)
    {
      *&self->_flags |= 4u;
      v6 = [__UIStatusBarManagerForWindow(-[UINavigationController _window](self "_window"))];
      v7 = [-[NSArray lastObject](viewControllers "lastObject")];
      previousStatusBarStyle = self->_previousStatusBarStyle;
      v9 = previousStatusBarStyle != -1 && v6 == v7;
      if (v9 && v6 != previousStatusBarStyle)
      {
        if (disappearCopy)
        {
          [UITransitionView defaultDurationForTransition:2];
          *&v11 = v11;
          v12 = *&v11;
          previousStatusBarStyle = self->_previousStatusBarStyle;
        }

        else
        {
          v12 = 0.0;
        }

        [UIApp setStatusBarStyle:previousStatusBarStyle duration:v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = UIVideoEditorController;
  [(UINavigationController *)&v13 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (![(UIViewController *)self parentViewController]&& ![(UIViewController *)self presentingViewController])
  {
    *&self->_flags &= ~1u;
    [(UIVideoEditorController *)self _removeAllChildren];
  }

  *&self->_flags &= ~4u;
  v5.receiver = self;
  v5.super_class = UIVideoEditorController;
  [(UINavigationController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)_removeAllChildren
{
  if ([(UINavigationController *)self topViewController])
  {
    if ([(UIViewController *)self presentedViewController])
    {
      *&self->_flags |= 2u;
      [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
      *&self->_flags &= ~2u;
    }

    [(UINavigationController *)self setViewControllers:MEMORY[0x1E695E0F0]];
    view = [(UIViewController *)self view];

    [(UIView *)view layoutSubviews];
  }
}

- (id)_createInitialController
{
  v3 = [objc_alloc(NSClassFromString(&cfstr_Pluieditvideov.isa)) initWithProperties:{-[UIVideoEditorController _properties](self, "_properties")}];
  [v3 setDelegate:self];
  return v3;
}

- (void)_setupControllers
{
  _createInitialController = [(UIVideoEditorController *)self _createInitialController];
  if (_createInitialController)
  {
    v4 = _createInitialController;
    [(UIVideoEditorController *)self _removeAllChildren];
    -[UINavigationController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v4 _displaysFullScreen], 0);
    [(UINavigationController *)self pushViewController:v4 animated:0];
  }
}

- (void)_autoDismiss
{
  presentingViewController = [(UIViewController *)self presentingViewController];

  [(UIViewController *)presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)editVideoViewControllerDidCancel:(id)cancel
{
  [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(UINavigationController *)self delegate];

    [delegate videoEditorControllerDidCancel:self];
  }

  else
  {

    [(UIVideoEditorController *)self _autoDismiss];
  }
}

- (void)editVideoViewController:(id)controller didTrimVideoWithOptions:(id)options
{
  v7 = [options objectForKey:@"UIImagePickerControllerMediaURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isFileURL = [v7 isFileURL];
    if (isFileURL)
    {
      path = [v7 path];
      LOBYTE(isFileURL) = 1;
    }

    else
    {
      path = 0;
    }
  }

  else
  {
    objc_opt_class();
    LOBYTE(isFileURL) = objc_opt_isKindOfClass();
    if (isFileURL)
    {
      path = v7;
    }

    else
    {
      path = 0;
    }
  }

  if (v7)
  {
    v10 = (isFileURL & (path == 0)) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
LABEL_12:

    [(UIVideoEditorController *)self editVideoViewControllerDidCancel:controller];
    return;
  }

  [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(UINavigationController *)self delegate];

    [delegate videoEditorController:self didTrimVideoWithOptions:options];
  }

  else
  {
    if (!path)
    {
      goto LABEL_12;
    }

    [(UINavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(UINavigationController *)self delegate];

      [delegate2 videoEditorController:self didSaveEditedVideoToPath:path];
    }

    else
    {

      [(UIVideoEditorController *)self _autoDismiss];
    }
  }
}

- (void)editVideoViewController:(id)controller didFailWithError:(id)error
{
  [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(UINavigationController *)self delegate];

    [delegate videoEditorController:self didFailWithError:error];
  }

  else
  {

    [(UIVideoEditorController *)self _autoDismiss];
  }
}

- (NSString)videoPath
{
  _videoURL = [(UIVideoEditorController *)self _videoURL];
  if (![_videoURL isFileURL] || (result = objc_msgSend(_videoURL, "path")) == 0)
  {

    return [(UIVideoEditorController *)self _valueForProperty:@"_UIVideoEditorControllerVideoPath"];
  }

  return result;
}

- (void)setVideoPath:(NSString *)videoPath
{
  -[UIVideoEditorController _setVideoURL:](self, "_setVideoURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:videoPath isDirectory:0]);

  [(UIVideoEditorController *)self _setValue:videoPath forProperty:@"_UIVideoEditorControllerVideoPath"];
}

- (NSTimeInterval)videoMaximumDuration
{
  v2 = [(UIVideoEditorController *)self _valueForProperty:@"UIImagePickerControllerVideoMaximumDuration"];

  [v2 doubleValue];
  return result;
}

- (void)setVideoMaximumDuration:(NSTimeInterval)videoMaximumDuration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:videoMaximumDuration];

  [(UIVideoEditorController *)self _setValue:v4 forProperty:@"UIImagePickerControllerVideoMaximumDuration"];
}

- (void)setVideoQuality:(UIImagePickerControllerQualityType)videoQuality
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:videoQuality];

  [(UIVideoEditorController *)self _setValue:v4 forProperty:@"UIImagePickerControllerVideoQuality"];
}

- (void)_setProperties:(id)properties
{
  properties = self->_properties;
  if (properties != properties)
  {

    self->_properties = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:properties];
  }
}

- (void)_initializeProperties
{
  if (!self->_properties)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF90]);
    v4 = *MEMORY[0x1E695E4C0];
    v5 = [MEMORY[0x1E696AD98] numberWithInt:1];
    self->_properties = [v3 initWithObjectsAndKeys:{v4, @"UIImagePickerControllerAllowsEditing", v5, @"UIImagePickerControllerVideoQuality", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 600.0), @"UIImagePickerControllerVideoMaximumDuration", 0}];
  }
}

- (id)_properties
{
  properties = self->_properties;
  if (!properties)
  {
    [(UIVideoEditorController *)self _initializeProperties];
    properties = self->_properties;
  }

  v4 = [(NSMutableDictionary *)properties copy];

  return v4;
}

- (void)_setValue:(id)value forProperty:(id)property
{
  properties = self->_properties;
  if (properties)
  {
    if (value)
    {
LABEL_3:

      [(NSMutableDictionary *)properties setObject:value forKey:property];
      return;
    }
  }

  else
  {
    [(UIVideoEditorController *)self _initializeProperties];
    properties = self->_properties;
    if (value)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)properties removeObjectForKey:property];
}

- (id)_valueForProperty:(id)property
{
  properties = self->_properties;
  if (!properties)
  {
    [(UIVideoEditorController *)self _initializeProperties];
    properties = self->_properties;
  }

  return [(NSMutableDictionary *)properties objectForKey:property];
}

@end