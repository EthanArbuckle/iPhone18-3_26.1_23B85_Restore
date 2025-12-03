@interface SCRO2DBraillePlane
- (BOOL)canPanLeft;
- (BOOL)canPanRight;
- (SCRO2DBraillePlane)initWithDriver:(id)driver;
- (id)createContentWithBrailleData:(id)data width:(int64_t)width height:(int64_t)height canvas:(id)canvas;
- (void)panLeft;
- (void)panRight;
- (void)refresh;
- (void)setBrailleData:(id)data;
@end

@implementation SCRO2DBraillePlane

- (SCRO2DBraillePlane)initWithDriver:(id)driver
{
  driverCopy = driver;
  v15.receiver = self;
  v15.super_class = SCRO2DBraillePlane;
  v6 = [(SCRO2DBraillePlane *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brailleDriver, driver);
    brailleDriver = v7->_brailleDriver;
    v7->_supportsCanvas = objc_opt_respondsToSelector() & 1;
    v9 = v7->_brailleDriver;
    if (objc_opt_respondsToSelector() & 1) != 0 && [(SCROBrailleDriverProtocol *)v9 shouldUseMultiRow]&& (objc_opt_respondsToSelector())
    {
      v10 = objc_opt_respondsToSelector();
    }

    else
    {
      v10 = 0;
    }

    v7->_shouldUseMultiRow = v10 & 1;
    v7->_wordWrapEnabled = 1;
    if (v7->_supportsCanvas)
    {
      canvas = [(SCROBrailleDriverProtocol *)v7->_brailleDriver canvas];
      canvas = v7->_canvas;
      v7->_canvas = canvas;
    }

    v13 = v7;
  }

  return v7;
}

- (id)createContentWithBrailleData:(id)data width:(int64_t)width height:(int64_t)height canvas:(id)canvas
{
  dataCopy = data;
  canvasCopy = canvas;
  imageData = [dataCopy imageData];

  if (imageData)
  {
    v13 = [[SCRO2DBrailleImageContent alloc] initWithBrailleData:dataCopy canvas:canvasCopy];
  }

  else
  {
    if ([dataCopy truncateStrings])
    {
      v14 = [SCRO2DBrailleListContent alloc];
      v15 = dataCopy;
      widthCopy2 = width;
      heightCopy2 = height;
      wordWrapEnabled = 0;
    }

    else
    {
      v14 = [SCRO2DBrailleReadingContent alloc];
      wordWrapEnabled = self->_wordWrapEnabled;
      v15 = dataCopy;
      widthCopy2 = width;
      heightCopy2 = height;
    }

    v13 = [(SCRO2DBrailleListContent *)v14 initWithBrailleData:v15 width:widthCopy2 height:heightCopy2 wordWrap:wordWrapEnabled];
  }

  v19 = v13;

  return v19;
}

- (void)setBrailleData:(id)data
{
  dataCopy = data;
  if (self->_supportsCanvas)
  {
    descriptor = [(SCRO2DBrailleCanvas *)self->_canvas descriptor];
    numberOfCellsInRowAvailable = [descriptor numberOfCellsInRowAvailable];
    descriptor2 = [(SCRO2DBrailleCanvas *)self->_canvas descriptor];
    v7 = -[SCRO2DBraillePlane createContentWithBrailleData:width:height:canvas:](self, "createContentWithBrailleData:width:height:canvas:", dataCopy, numberOfCellsInRowAvailable, [descriptor2 numberOfTextLinesAvailable], self->_canvas);
    content = self->_content;
    self->_content = v7;

    [(SCRO2DBrailleContentProtocol *)self->_content drawOnCanvas:self->_canvas];
  }

  else if (self->_shouldUseMultiRow)
  {
    v9 = [(SCRO2DBraillePlane *)self createContentWithBrailleData:dataCopy width:[(SCROBrailleDriverProtocol *)self->_brailleDriver rowSize] height:[(SCROBrailleDriverProtocol *)self->_brailleDriver rowCount] canvas:0];
    v10 = self->_content;
    self->_content = v9;
  }

  [(SCRO2DBraillePlane *)self refresh];
}

- (BOOL)canPanLeft
{
  _isPlanarCapable = [(SCRO2DBraillePlane *)self _isPlanarCapable];
  if (_isPlanarCapable)
  {
    content = self->_content;

    LOBYTE(_isPlanarCapable) = [(SCRO2DBrailleContentProtocol *)content canPanLeft];
  }

  return _isPlanarCapable;
}

- (void)panLeft
{
  if ([(SCRO2DBraillePlane *)self _isPlanarCapable]&& [(SCRO2DBraillePlane *)self canPanLeft])
  {
    [(SCRO2DBrailleContentProtocol *)self->_content panLeft];

    [(SCRO2DBraillePlane *)self refresh];
  }
}

- (BOOL)canPanRight
{
  _isPlanarCapable = [(SCRO2DBraillePlane *)self _isPlanarCapable];
  if (_isPlanarCapable)
  {
    content = self->_content;

    LOBYTE(_isPlanarCapable) = [(SCRO2DBrailleContentProtocol *)content canPanRight];
  }

  return _isPlanarCapable;
}

- (void)panRight
{
  if ([(SCRO2DBraillePlane *)self _isPlanarCapable]&& [(SCRO2DBraillePlane *)self canPanRight])
  {
    [(SCRO2DBrailleContentProtocol *)self->_content panRight];

    [(SCRO2DBraillePlane *)self refresh];
  }
}

- (void)refresh
{
  if (self->_supportsCanvas)
  {
    [(SCRO2DBrailleContentProtocol *)self->_content drawOnCanvas:self->_canvas];
    brailleDriver = self->_brailleDriver;

    [(SCROBrailleDriverProtocol *)brailleDriver displayCanvas];
  }

  else if (self->_shouldUseMultiRow)
  {
    v4 = self->_brailleDriver;
    multiLineBraille = [(SCRO2DBrailleContentProtocol *)self->_content multiLineBraille];
    [(SCROBrailleDriverProtocol *)v4 setMainCellsArray:multiLineBraille];
  }
}

@end