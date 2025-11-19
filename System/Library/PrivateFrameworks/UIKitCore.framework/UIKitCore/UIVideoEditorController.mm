@interface UIVideoEditorController
+ (BOOL)canEditVideoAtPath:(NSString *)videoPath;
- (NSString)videoPath;
- (NSTimeInterval)videoMaximumDuration;
- (UIVideoEditorController)init;
- (id)_createInitialController;
- (id)_properties;
- (id)_valueForProperty:(id)a3;
- (void)_autoDismiss;
- (void)_initializeProperties;
- (void)_removeAllChildren;
- (void)_setProperties:(id)a3;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)_setupControllers;
- (void)editVideoViewController:(id)a3 didFailWithError:(id)a4;
- (void)editVideoViewController:(id)a3 didTrimVideoWithOptions:(id)a4;
- (void)editVideoViewControllerDidCancel:(id)a3;
- (void)setVideoMaximumDuration:(NSTimeInterval)videoMaximumDuration;
- (void)setVideoPath:(NSString *)videoPath;
- (void)setVideoQuality:(UIImagePickerControllerQualityType)videoQuality;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  [(UINavigationController *)&v7 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (([UIApp _viewControllerBasedStatusBarAppearance] & 1) == 0)
  {
    v5 = [(UINavigationController *)self viewControllers];
    if (![(UIViewController *)self presentedViewController]&& [(NSArray *)v5 count]>= 2)
    {
      *&self->_flags |= 4u;
      v6 = [__UIStatusBarManagerForWindow(-[UINavigationController _window](self "_window"))];
      v7 = [-[NSArray lastObject](v5 "lastObject")];
      previousStatusBarStyle = self->_previousStatusBarStyle;
      v9 = previousStatusBarStyle != -1 && v6 == v7;
      if (v9 && v6 != previousStatusBarStyle)
      {
        if (v3)
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
  [(UINavigationController *)&v13 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (![(UIViewController *)self parentViewController]&& ![(UIViewController *)self presentingViewController])
  {
    *&self->_flags &= ~1u;
    [(UIVideoEditorController *)self _removeAllChildren];
  }

  *&self->_flags &= ~4u;
  v5.receiver = self;
  v5.super_class = UIVideoEditorController;
  [(UINavigationController *)&v5 viewDidDisappear:v3];
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
    v3 = [(UIViewController *)self view];

    [(UIView *)v3 layoutSubviews];
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
  v3 = [(UIVideoEditorController *)self _createInitialController];
  if (v3)
  {
    v4 = v3;
    [(UIVideoEditorController *)self _removeAllChildren];
    -[UINavigationController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v4 _displaysFullScreen], 0);
    [(UINavigationController *)self pushViewController:v4 animated:0];
  }
}

- (void)_autoDismiss
{
  v2 = [(UIViewController *)self presentingViewController];

  [(UIViewController *)v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)editVideoViewControllerDidCancel:(id)a3
{
  [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UINavigationController *)self delegate];

    [v4 videoEditorControllerDidCancel:self];
  }

  else
  {

    [(UIVideoEditorController *)self _autoDismiss];
  }
}

- (void)editVideoViewController:(id)a3 didTrimVideoWithOptions:(id)a4
{
  v7 = [a4 objectForKey:@"UIImagePickerControllerMediaURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 isFileURL];
    if (v8)
    {
      v9 = [v7 path];
      LOBYTE(v8) = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    objc_opt_class();
    LOBYTE(v8) = objc_opt_isKindOfClass();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v7)
  {
    v10 = (v8 & (v9 == 0)) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
LABEL_12:

    [(UIVideoEditorController *)self editVideoViewControllerDidCancel:a3];
    return;
  }

  [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UINavigationController *)self delegate];

    [v11 videoEditorController:self didTrimVideoWithOptions:a4];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    [(UINavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [(UINavigationController *)self delegate];

      [v12 videoEditorController:self didSaveEditedVideoToPath:v9];
    }

    else
    {

      [(UIVideoEditorController *)self _autoDismiss];
    }
  }
}

- (void)editVideoViewController:(id)a3 didFailWithError:(id)a4
{
  [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UINavigationController *)self delegate];

    [v6 videoEditorController:self didFailWithError:a4];
  }

  else
  {

    [(UIVideoEditorController *)self _autoDismiss];
  }
}

- (NSString)videoPath
{
  v3 = [(UIVideoEditorController *)self _videoURL];
  if (![v3 isFileURL] || (result = objc_msgSend(v3, "path")) == 0)
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

- (void)_setProperties:(id)a3
{
  properties = self->_properties;
  if (properties != a3)
  {

    self->_properties = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a3];
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

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  properties = self->_properties;
  if (properties)
  {
    if (a3)
    {
LABEL_3:

      [(NSMutableDictionary *)properties setObject:a3 forKey:a4];
      return;
    }
  }

  else
  {
    [(UIVideoEditorController *)self _initializeProperties];
    properties = self->_properties;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)properties removeObjectForKey:a4];
}

- (id)_valueForProperty:(id)a3
{
  properties = self->_properties;
  if (!properties)
  {
    [(UIVideoEditorController *)self _initializeProperties];
    properties = self->_properties;
  }

  return [(NSMutableDictionary *)properties objectForKey:a3];
}

@end