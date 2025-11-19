@interface PUPhotoEditPerfHUD
- (NSString)detailText;
- (PUPhotoEditPerfHUD)initWithCoder:(id)a3;
- (PUPhotoEditPerfHUD)initWithFrame:(CGRect)a3;
- (void)setAutoCalcInterval:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setEnterEditTimeInterval:(id)a3;
- (void)setExitEditTimeInterval:(id)a3;
- (void)setFilterInterval:(id)a3;
- (void)setFirstSinceBoot:(BOOL)a3;
- (void)setFirstSinceLaunch:(BOOL)a3;
- (void)setResourceCheckingInterval:(id)a3;
- (void)setResourceDownloadInterval:(id)a3;
- (void)setResourceLoadingInterval:(id)a3;
@end

@implementation PUPhotoEditPerfHUD

- (void)setExitEditTimeInterval:(id)a3
{
  v5 = a3;
  if (self->_exitEditTimeInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_exitEditTimeInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self exitEditVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setFilterInterval:(id)a3
{
  v5 = a3;
  if (self->_filterInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_filterInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self filterVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setAutoCalcInterval:(id)a3
{
  v5 = a3;
  if (self->_autoCalcInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_autoCalcInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self autoCalcVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setResourceLoadingInterval:(id)a3
{
  v5 = a3;
  if (self->_resourceLoadingInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_resourceLoadingInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self resourceLoadingVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setResourceDownloadInterval:(id)a3
{
  v5 = a3;
  if (self->_resourceDownloadInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_resourceDownloadInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self resourceDownloadVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setResourceCheckingInterval:(id)a3
{
  v5 = a3;
  if (self->_resourceCheckingInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_resourceCheckingInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self resourceCheckingVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setEnterEditTimeInterval:(id)a3
{
  v5 = a3;
  if (self->_enterEditTimeInterval != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_enterEditTimeInterval, a3);
    v6 = [(PUPhotoEditPerfHUD *)self enterEditVisualization];
    [v6 setTimeInterval:v7];

    v5 = v7;
  }
}

- (void)setDetailText:(id)a3
{
  v6 = a3;
  if ([v6 length] >= 0x11)
  {
    v4 = [v6 substringFromIndex:{objc_msgSend(v6, "length") - 16}];

    v6 = [@"…" stringByAppendingString:v4];
  }

  v5 = [(PUPhotoEditPerfHUD *)self detailVisualization];
  [v5 setTitle:v6];
}

- (NSString)detailText
{
  v2 = [(PUPhotoEditPerfHUD *)self detailVisualization];
  v3 = [v2 title];

  return v3;
}

- (void)setFirstSinceLaunch:(BOOL)a3
{
  self->_firstSinceLaunch = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v4 = [(PUPhotoEditPerfHUD *)self firstSinceLaunchVisualization];
  [v4 setValue:v5];
}

- (void)setFirstSinceBoot:(BOOL)a3
{
  self->_firstSinceBoot = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v4 = [(PUPhotoEditPerfHUD *)self firstSinceBootVisualization];
  [v4 setValue:v5];
}

- (PUPhotoEditPerfHUD)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditPerfHUD;
  v3 = [(PUPhotoEditPerfHUD *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_53484(v3);
  }

  return v4;
}

- (PUPhotoEditPerfHUD)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditPerfHUD;
  v3 = [(PUPhotoEditPerfHUD *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_53484(v3);
  }

  return v4;
}

@end