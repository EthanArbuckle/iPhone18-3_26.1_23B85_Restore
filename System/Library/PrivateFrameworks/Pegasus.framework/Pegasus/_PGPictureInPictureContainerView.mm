@interface _PGPictureInPictureContainerView
- (PGPictureInPictureViewController)vcForDebugging;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation _PGPictureInPictureContainerView

- (void)willMoveToSuperview:(id)superview
{
  v16 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _PGPictureInPictureContainerView;
  superviewCopy = superview;
  [(_PGPictureInPictureContainerView *)&v9 willMoveToSuperview:superviewCopy];
  WeakRetained = objc_loadWeakRetained(&self->_vcForDebugging);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  v7 = [superviewCopy isEqual:viewIfLoaded];

  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[_PGPictureInPictureContainerView willMoveToSuperview:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p newSuperview is VC's view: %{BOOL}u", buf, 0x1Cu);
  }
}

- (void)didMoveToSuperview
{
  v15 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _PGPictureInPictureContainerView;
  [(_PGPictureInPictureContainerView *)&v8 didMoveToSuperview];
  superview = [(_PGPictureInPictureContainerView *)self superview];
  WeakRetained = objc_loadWeakRetained(&self->_vcForDebugging);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  v6 = [superview isEqual:viewIfLoaded];

  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[_PGPictureInPictureContainerView didMoveToSuperview]";
    v11 = 2048;
    selfCopy = self;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p newSuperview is VC's view: %{BOOL}u", buf, 0x1Cu);
  }
}

- (PGPictureInPictureViewController)vcForDebugging
{
  WeakRetained = objc_loadWeakRetained(&self->_vcForDebugging);

  return WeakRetained;
}

@end