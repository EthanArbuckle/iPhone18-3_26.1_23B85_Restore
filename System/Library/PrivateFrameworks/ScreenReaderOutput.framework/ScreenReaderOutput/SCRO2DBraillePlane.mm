@interface SCRO2DBraillePlane
- (BOOL)canPanLeft;
- (BOOL)canPanRight;
- (SCRO2DBraillePlane)initWithDriver:(id)a3;
- (id)createContentWithBrailleData:(id)a3 width:(int64_t)a4 height:(int64_t)a5 canvas:(id)a6;
- (void)panLeft;
- (void)panRight;
- (void)refresh;
- (void)setBrailleData:(id)a3;
@end

@implementation SCRO2DBraillePlane

- (SCRO2DBraillePlane)initWithDriver:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SCRO2DBraillePlane;
  v6 = [(SCRO2DBraillePlane *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brailleDriver, a3);
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
      v11 = [(SCROBrailleDriverProtocol *)v7->_brailleDriver canvas];
      canvas = v7->_canvas;
      v7->_canvas = v11;
    }

    v13 = v7;
  }

  return v7;
}

- (id)createContentWithBrailleData:(id)a3 width:(int64_t)a4 height:(int64_t)a5 canvas:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [v10 imageData];

  if (v12)
  {
    v13 = [[SCRO2DBrailleImageContent alloc] initWithBrailleData:v10 canvas:v11];
  }

  else
  {
    if ([v10 truncateStrings])
    {
      v14 = [SCRO2DBrailleListContent alloc];
      v15 = v10;
      v16 = a4;
      v17 = a5;
      wordWrapEnabled = 0;
    }

    else
    {
      v14 = [SCRO2DBrailleReadingContent alloc];
      wordWrapEnabled = self->_wordWrapEnabled;
      v15 = v10;
      v16 = a4;
      v17 = a5;
    }

    v13 = [(SCRO2DBrailleListContent *)v14 initWithBrailleData:v15 width:v16 height:v17 wordWrap:wordWrapEnabled];
  }

  v19 = v13;

  return v19;
}

- (void)setBrailleData:(id)a3
{
  v11 = a3;
  if (self->_supportsCanvas)
  {
    v4 = [(SCRO2DBrailleCanvas *)self->_canvas descriptor];
    v5 = [v4 numberOfCellsInRowAvailable];
    v6 = [(SCRO2DBrailleCanvas *)self->_canvas descriptor];
    v7 = -[SCRO2DBraillePlane createContentWithBrailleData:width:height:canvas:](self, "createContentWithBrailleData:width:height:canvas:", v11, v5, [v6 numberOfTextLinesAvailable], self->_canvas);
    content = self->_content;
    self->_content = v7;

    [(SCRO2DBrailleContentProtocol *)self->_content drawOnCanvas:self->_canvas];
  }

  else if (self->_shouldUseMultiRow)
  {
    v9 = [(SCRO2DBraillePlane *)self createContentWithBrailleData:v11 width:[(SCROBrailleDriverProtocol *)self->_brailleDriver rowSize] height:[(SCROBrailleDriverProtocol *)self->_brailleDriver rowCount] canvas:0];
    v10 = self->_content;
    self->_content = v9;
  }

  [(SCRO2DBraillePlane *)self refresh];
}

- (BOOL)canPanLeft
{
  v3 = [(SCRO2DBraillePlane *)self _isPlanarCapable];
  if (v3)
  {
    content = self->_content;

    LOBYTE(v3) = [(SCRO2DBrailleContentProtocol *)content canPanLeft];
  }

  return v3;
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
  v3 = [(SCRO2DBraillePlane *)self _isPlanarCapable];
  if (v3)
  {
    content = self->_content;

    LOBYTE(v3) = [(SCRO2DBrailleContentProtocol *)content canPanRight];
  }

  return v3;
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
    v5 = [(SCRO2DBrailleContentProtocol *)self->_content multiLineBraille];
    [(SCROBrailleDriverProtocol *)v4 setMainCellsArray:v5];
  }
}

@end