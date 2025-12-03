@interface SCRO2DBrailleCanvasDOT
- (SCRO2DBrailleCanvasDOT)init;
- (SCRO2DBrailleCanvasDOT)initWithWidth:(unint64_t)width initWithHeight:(unint64_t)height;
- (char)mainCells;
- (unint64_t)mainCellsLength;
- (void)_print;
- (void)dealloc;
@end

@implementation SCRO2DBrailleCanvasDOT

- (SCRO2DBrailleCanvasDOT)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:@"SCRO2DBrailleException" format:@"use of %@ is not allowed", v3];

  return 0;
}

- (SCRO2DBrailleCanvasDOT)initWithWidth:(unint64_t)width initWithHeight:(unint64_t)height
{
  v7 = objc_alloc_init(SCRO2DBrailleCanvasDescriptor);
  [v7 setHeight:height];
  [v7 setWidth:width];
  v8 = _SCROD_LOG();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedInteger:height];
    v10 = [NSNumber numberWithUnsignedInteger:width];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTLE Dot Pad height %@, width %@", &v13, 0x16u);
  }

  [v7 setCellHeight:4];
  [v7 setCellWidth:2];
  [v7 setHasConsistentHorizontalPinSpacing:1];
  [v7 setHasConsistentVerticalPinSpacing:1];
  [v7 setVerticalPinSpacing:2.0];
  [v7 setHorizontalPinSpacing:2.0];
  [(SCRO2DBrailleCanvasDOT *)self horizontalPinSpacing];
  [v7 setInterCellHorizontalSpacing:?];
  [(SCRO2DBrailleCanvasDOT *)self verticalPinSpacing];
  [v7 setVerticalPinSpacing:?];
  [v7 setSkipPinBetweenCellsHorizontally:1];
  [v7 setSkipPinBetweenCellsVertically:1];
  [v7 setPinHeightStyle:2];
  [v7 setDetentCount:2];
  v11 = [(SCRO2DBrailleCanvasDOT *)self initWithCanvasDescriptor:v7];
  v11->_cells = malloc_type_malloc([(SCRO2DBrailleCanvasDOT *)v11 mainCellsLength], 0x100004077774924uLL);

  return v11;
}

- (void)dealloc
{
  free(self->_cells);
  v3.receiver = self;
  v3.super_class = SCRO2DBrailleCanvasDOT;
  [(SCRO2DBrailleCanvasDOT *)&v3 dealloc];
}

- (char)mainCells
{
  cells = self->_cells;
  descriptor = [(SCRO2DBrailleCanvasDOT *)self descriptor];
  height = [descriptor height];

  if (height)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      descriptor2 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
      width = [descriptor2 width];

      if (width)
      {
        v10 = 0;
        do
        {
          v11 = [(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 y:v7];
          v12 = v11 | (2 * [(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 y:v7 | 1]);
          v13 = v12 | (4 * [(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 y:v7 | 2]);
          v14 = v13 | ([(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 y:v7 | 3]<< 6);
          v15 = v14 | (8 * [(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 + 1 y:v7]);
          v16 = v15 | (16 * [(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 + 1 y:v7 | 1]);
          v17 = v16 | (32 * [(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 + 1 y:v7 | 2]);
          cells[v6++] = v17 | ([(SCRO2DBrailleCanvasDOT *)self pinStateForX:v10 + 1 y:v7 | 3]<< 7);
          descriptor3 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
          width2 = [descriptor3 width];

          v10 += 2;
        }

        while (v10 < width2);
      }

      v7 += 4;
      descriptor4 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
      height2 = [descriptor4 height];
    }

    while (v7 < height2);
  }

  return self->_cells;
}

- (unint64_t)mainCellsLength
{
  descriptor = [(SCRO2DBrailleCanvasDOT *)self descriptor];
  width = [descriptor width];
  descriptor2 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
  v6 = width / [descriptor2 cellWidth];
  descriptor3 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
  v8 = [descriptor3 height] * v6;
  descriptor4 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
  v10 = v8 / [descriptor4 cellHeight];

  return v10;
}

- (void)_print
{
  descriptor = [(SCRO2DBrailleCanvasDOT *)self descriptor];
  height = [descriptor height];

  if (height)
  {
    v5 = 0;
    do
    {
      descriptor2 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
      width = [descriptor2 width];

      if (width)
      {
        v8 = 0;
        v9 = &stru_82B8;
        do
        {
          if ([(SCRO2DBrailleCanvasDOT *)self pinStateForX:v8 y:v5])
          {
            v10 = @"X";
          }

          else
          {
            v10 = @" ";
          }

          v11 = [(__CFString *)v9 stringByAppendingString:v10];

          ++v8;
          descriptor3 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
          width2 = [descriptor3 width];

          v9 = v11;
        }

        while (v8 < width2);
      }

      else
      {
        v11 = &stru_82B8;
      }

      ++v5;
      descriptor4 = [(SCRO2DBrailleCanvasDOT *)self descriptor];
      height2 = [descriptor4 height];
    }

    while (v5 < height2);
  }
}

@end