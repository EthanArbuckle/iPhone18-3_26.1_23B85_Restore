@interface PUPhotoEditPerfHUD
- (NSString)detailText;
- (PUPhotoEditPerfHUD)initWithCoder:(id)coder;
- (PUPhotoEditPerfHUD)initWithFrame:(CGRect)frame;
- (void)setAutoCalcInterval:(id)interval;
- (void)setDetailText:(id)text;
- (void)setEnterEditTimeInterval:(id)interval;
- (void)setExitEditTimeInterval:(id)interval;
- (void)setFilterInterval:(id)interval;
- (void)setFirstSinceBoot:(BOOL)boot;
- (void)setFirstSinceLaunch:(BOOL)launch;
- (void)setResourceCheckingInterval:(id)interval;
- (void)setResourceDownloadInterval:(id)interval;
- (void)setResourceLoadingInterval:(id)interval;
@end

@implementation PUPhotoEditPerfHUD

- (void)setExitEditTimeInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_exitEditTimeInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_exitEditTimeInterval, interval);
    exitEditVisualization = [(PUPhotoEditPerfHUD *)self exitEditVisualization];
    [exitEditVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setFilterInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_filterInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_filterInterval, interval);
    filterVisualization = [(PUPhotoEditPerfHUD *)self filterVisualization];
    [filterVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setAutoCalcInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_autoCalcInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_autoCalcInterval, interval);
    autoCalcVisualization = [(PUPhotoEditPerfHUD *)self autoCalcVisualization];
    [autoCalcVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setResourceLoadingInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_resourceLoadingInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_resourceLoadingInterval, interval);
    resourceLoadingVisualization = [(PUPhotoEditPerfHUD *)self resourceLoadingVisualization];
    [resourceLoadingVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setResourceDownloadInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_resourceDownloadInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_resourceDownloadInterval, interval);
    resourceDownloadVisualization = [(PUPhotoEditPerfHUD *)self resourceDownloadVisualization];
    [resourceDownloadVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setResourceCheckingInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_resourceCheckingInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_resourceCheckingInterval, interval);
    resourceCheckingVisualization = [(PUPhotoEditPerfHUD *)self resourceCheckingVisualization];
    [resourceCheckingVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setEnterEditTimeInterval:(id)interval
{
  intervalCopy = interval;
  if (self->_enterEditTimeInterval != intervalCopy)
  {
    v7 = intervalCopy;
    objc_storeStrong(&self->_enterEditTimeInterval, interval);
    enterEditVisualization = [(PUPhotoEditPerfHUD *)self enterEditVisualization];
    [enterEditVisualization setTimeInterval:v7];

    intervalCopy = v7;
  }
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  if ([textCopy length] >= 0x11)
  {
    v4 = [textCopy substringFromIndex:{objc_msgSend(textCopy, "length") - 16}];

    textCopy = [@"…" stringByAppendingString:v4];
  }

  detailVisualization = [(PUPhotoEditPerfHUD *)self detailVisualization];
  [detailVisualization setTitle:textCopy];
}

- (NSString)detailText
{
  detailVisualization = [(PUPhotoEditPerfHUD *)self detailVisualization];
  title = [detailVisualization title];

  return title;
}

- (void)setFirstSinceLaunch:(BOOL)launch
{
  self->_firstSinceLaunch = launch;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  firstSinceLaunchVisualization = [(PUPhotoEditPerfHUD *)self firstSinceLaunchVisualization];
  [firstSinceLaunchVisualization setValue:v5];
}

- (void)setFirstSinceBoot:(BOOL)boot
{
  self->_firstSinceBoot = boot;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  firstSinceBootVisualization = [(PUPhotoEditPerfHUD *)self firstSinceBootVisualization];
  [firstSinceBootVisualization setValue:v5];
}

- (PUPhotoEditPerfHUD)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditPerfHUD;
  v3 = [(PUPhotoEditPerfHUD *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_53484(v3);
  }

  return v4;
}

- (PUPhotoEditPerfHUD)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditPerfHUD;
  v3 = [(PUPhotoEditPerfHUD *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_53484(v3);
  }

  return v4;
}

@end