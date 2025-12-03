@interface SCRO2DBrailleCanvas
- ($488472A07B2E1D1A523D39A95A553F6B)_fullyDownPinState;
- ($488472A07B2E1D1A523D39A95A553F6B)_fullyUpPinState;
- ($488472A07B2E1D1A523D39A95A553F6B)pinStateForX:(unint64_t)x y:(unint64_t)y;
- (BOOL)_canBlitCellAtX:(unint64_t)x y:(unint64_t)y;
- (BOOL)hasConsistentHorizontalPinSpacing;
- (BOOL)hasConsistentVerticalPinSpacing;
- (BOOL)skipPinBetweenCellsHorizontally;
- (BOOL)skipPinBetweenCellsVertically;
- (BOOL)supportsBrailleText;
- (SCRO2DBrailleCanvas)init;
- (SCRO2DBrailleCanvas)initWithCanvasDescriptor:(id)descriptor;
- (double)horizontalPinSpacing;
- (double)interCellHorizontalSpacing;
- (double)interCellVerticalSpacing;
- (double)verticalPinSpacing;
- (id)_pinForX:(unint64_t)x y:(unint64_t)y;
- (id)debugAsciiCanvas;
- (unint64_t)_textDisplayHeight;
- (void)_blitBMP;
- (void)_blitCell:(unsigned __int8)cell AtX:(unint64_t)x y:(unint64_t)y;
- (void)_blitText;
- (void)_clearCells;
- (void)_updateCells;
- (void)setBrailleText:(const char *)text length:(unint64_t)length;
- (void)setImageData:(id)data;
- (void)setNumberOfTextLines:(unint64_t)lines;
- (void)setPinState:(id)state forX:(unint64_t)x y:(unint64_t)y;
@end

@implementation SCRO2DBrailleCanvas

- (SCRO2DBrailleCanvas)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"use of %@ is not allowed", v4}];

  return 0;
}

- (SCRO2DBrailleCanvas)initWithCanvasDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v14.receiver = self;
  v14.super_class = SCRO2DBrailleCanvas;
  v6 = [(SCRO2DBrailleCanvas *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
    array = [MEMORY[0x277CBEB18] array];
    if ([(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor width])
    {
      v9 = 0;
      do
      {
        if ([(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor height])
        {
          v10 = 0;
          do
          {
            v11 = [[SCRO2DPin alloc] initWithX:v9 y:v10 style:[(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor pinHeightStyle]];
            [(SCRO2DPin *)v11 setState:[(SCRO2DBrailleCanvas *)v7 _fullyDownPinState]];
            [array addObject:v11];

            ++v10;
          }

          while (v10 < [(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor height]);
        }

        ++v9;
      }

      while (v9 < [(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor width]);
    }

    objc_storeStrong(&v7->_pins, array);
    if (![(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor hasConsistentVerticalPinSpacing])
    {
      [MEMORY[0x277CBEAD8] raise:@"SCRO2DBrailleException" format:@"Displays with variable vertical pin spacing are not yet supported."];
    }

    if (![(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor hasConsistentHorizontalPinSpacing])
    {
      [MEMORY[0x277CBEAD8] raise:@"SCRO2DBrailleException" format:@"Displays with variable horizontal pin spacing are not yet supported."];
    }

    v7->_numberOfTextLines = [(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor numberOfTextLinesAvailable];
    v12 = v7;
  }

  return v7;
}

- (BOOL)hasConsistentHorizontalPinSpacing
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0;
}

- (BOOL)hasConsistentVerticalPinSpacing
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0;
}

- (BOOL)supportsBrailleText
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0;
}

- (BOOL)skipPinBetweenCellsVertically
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0;
}

- (BOOL)skipPinBetweenCellsHorizontally
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0;
}

- (double)horizontalPinSpacing
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0.0;
}

- (double)verticalPinSpacing
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0.0;
}

- (double)interCellHorizontalSpacing
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0.0;
}

- (double)interCellVerticalSpacing
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"Subclasses of %@ must implement %@", v5, v6}];

  return 0.0;
}

- (id)_pinForX:(unint64_t)x y:(unint64_t)y
{
  pins = self->_pins;
  v5 = x + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width]* y;

  return [(NSArray *)pins objectAtIndex:v5];
}

- (void)setPinState:(id)state forX:(unint64_t)x y:(unint64_t)y
{
  v6 = [(SCRO2DBrailleCanvas *)self _pinForX:x y:y];
  [v6 setState:state.var0];
}

- ($488472A07B2E1D1A523D39A95A553F6B)pinStateForX:(unint64_t)x y:(unint64_t)y
{
  v4 = [(SCRO2DBrailleCanvas *)self _pinForX:x y:y];
  v5.var0 = [v4 state];

  return v5.var0;
}

- (void)_clearCells
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_pins;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setState:{-[SCRO2DBrailleCanvas _fullyDownPinState](self, "_fullyDownPinState", v9)}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateCells
{
  [(SCRO2DBrailleCanvas *)self _clearCells];

  [(SCRO2DBrailleCanvas *)self _blitBMP];
}

- (void)setNumberOfTextLines:(unint64_t)lines
{
  if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor numberOfTextLinesAvailable]< lines)
  {
    [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor numberOfTextLinesAvailable];
  }

  self->_numberOfTextLines = lines;
}

- (unint64_t)_textDisplayHeight
{
  cellHeight = [(SCRO2DBrailleCanvas *)self cellHeight];
  v4 = cellHeight + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor skipPinBetweenCellsVertically];
  return v4 * [(SCRO2DBrailleCanvas *)self _numberOfTextLines];
}

- (void)setBrailleText:(const char *)text length:(unint64_t)length
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:text length:length];
  brailleTextData = self->_brailleTextData;
  self->_brailleTextData = v5;

  [(SCRO2DBrailleCanvas *)self _updateTextCells];
}

- (void)_blitBMP
{
  bytes = [(NSData *)self->_imageData bytes];
  v4 = [(NSData *)self->_imageData length];
  if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor height])
  {
    v5 = 0;
    do
    {
      if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width])
      {
        v6 = 0;
        do
        {
          width = [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width];
          if (v6 + v5 * width >= v4)
          {
            v8 = 0;
          }

          else
          {
            v8 = bytes[v5 * width + v6];
          }

          if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor pinHeightStyle]!= 2)
          {
            *&v9 = v8 / 255.0;
            v8 = v9;
          }

          [(SCRO2DBrailleCanvas *)self setPinState:v8 forX:v6++ y:v5];
        }

        while (v6 < [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width]);
      }

      ++v5;
    }

    while (v5 < [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor height]);
  }
}

- (void)_blitText
{
  bytes = [(NSData *)self->_brailleTextData bytes];
  v4 = [(NSData *)self->_brailleTextData length];
  if (bytes)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    do
    {
      if (![(SCRO2DBrailleCanvas *)self _canBlitCellAtX:v8 y:v7])
      {
        break;
      }

      [(SCRO2DBrailleCanvas *)self _blitCell:*bytes AtX:v8 y:v7];
      v9 = [(SCRO2DBrailleCanvas *)self cellWidth]+ v8;
      v8 = v9 + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor skipPinBetweenCellsHorizontally];
      if (![(SCRO2DBrailleCanvas *)self _canBlitCellAtX:v8 y:v7])
      {
        v10 = [(SCRO2DBrailleCanvas *)self cellHeight]+ v7;
        v8 = 0;
        v7 = v10 + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor skipPinBetweenCellsVertically];
      }

      ++bytes;
      --v6;
    }

    while (v6);
  }
}

- (BOOL)_canBlitCellAtX:(unint64_t)x y:(unint64_t)y
{
  cellHeight = [(SCRO2DBrailleCanvas *)self cellHeight];
  v8 = x + [(SCRO2DBrailleCanvas *)self cellWidth]- 1;
  return v8 < [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width]&& y + cellHeight - 1 < [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor height];
}

- (void)_blitCell:(unsigned __int8)cell AtX:(unint64_t)x y:(unint64_t)y
{
  cellCopy = cell;
  if ([(SCRO2DBrailleCanvas *)self cellWidth]+ x > x)
  {
    xCopy = x;
    do
    {
      if ([(SCRO2DBrailleCanvas *)self cellHeight]+ y > y)
      {
        v10 = xCopy - x;
        v11 = 1;
        yCopy = y;
        do
        {
          if (xCopy == x && v11 == 1)
          {
            v13 = 1;
          }

          else if (xCopy != x || v11)
          {
            if (xCopy == x && v11 == -1)
            {
              v13 = 4;
            }

            else if (xCopy == x && v11 == -2)
            {
              v13 = 64;
            }

            else if (v10 == 1 && v11 == 1)
            {
              v13 = 8;
            }

            else if (v10 != 1 || v11)
            {
              if (v10 == 1 && v11 == -1)
              {
                v13 = 32;
              }

              else if (v11 == -2 && v10 == 1)
              {
                v13 = 128;
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 16;
            }
          }

          else
          {
            v13 = 2;
          }

          if ((v13 & cellCopy) != 0)
          {
            v15.var0 = [(SCRO2DBrailleCanvas *)self _fullyUpPinState];
          }

          else
          {
            v15.var0 = [(SCRO2DBrailleCanvas *)self _fullyDownPinState];
          }

          [(SCRO2DBrailleCanvas *)self setPinState:v15.var0 forX:xCopy y:yCopy++];
          --v11;
        }

        while (yCopy < [(SCRO2DBrailleCanvas *)self cellHeight]+ y);
      }

      ++xCopy;
    }

    while (xCopy < [(SCRO2DBrailleCanvas *)self cellWidth]+ x);
  }
}

- ($488472A07B2E1D1A523D39A95A553F6B)_fullyDownPinState
{
  if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor pinHeightStyle]!= 1 && [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor pinHeightStyle]!= 2)
  {
    [MEMORY[0x277CBEAD8] raise:@"SCRO2DBrailleException" format:{@"Unexpected pinHeightStyle: %ld", -[SCRO2DBrailleCanvasDescriptor pinHeightStyle](self->_descriptor, "pinHeightStyle")}];
  }

  return 0;
}

- ($488472A07B2E1D1A523D39A95A553F6B)_fullyUpPinState
{
  if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor pinHeightStyle]== 1)
  {
    v3 = 0;
    v4 = 1065353216;
  }

  else if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor pinHeightStyle]== 2)
  {
    detentCount = [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor detentCount];
    v3 = (detentCount - 1) & 0xFFFFFFFF00000000;
    v4 = (detentCount - 1);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"SCRO2DBrailleException" format:{@"Unexpected pinHeightStyle: %ld", -[SCRO2DBrailleCanvasDescriptor pinHeightStyle](self->_descriptor, "pinHeightStyle")}];
    v3 = 0;
    v4 = 0;
  }

  return (v4 | v3);
}

- (void)setImageData:(id)data
{
  objc_storeStrong(&self->_imageData, data);

  [(SCRO2DBrailleCanvas *)self _updateCells];
}

- (id)debugAsciiCanvas
{
  descriptor = [(SCRO2DBrailleCanvas *)self descriptor];
  height = [descriptor height];

  if (height)
  {
    v5 = 0;
    v6 = &stru_28763D5C8;
    do
    {
      descriptor2 = [(SCRO2DBrailleCanvas *)self descriptor];
      width = [descriptor2 width];

      if (width)
      {
        v9 = 0;
        v10 = &stru_28763D5C8;
        do
        {
          if ([(SCRO2DBrailleCanvas *)self pinStateForX:v9 y:v5])
          {
            v11 = @"#";
          }

          else
          {
            v11 = @".";
          }

          v12 = [(__CFString *)v10 stringByAppendingString:v11];

          ++v9;
          descriptor3 = [(SCRO2DBrailleCanvas *)self descriptor];
          width2 = [descriptor3 width];

          v10 = v12;
        }

        while (v9 < width2);
      }

      else
      {
        v12 = &stru_28763D5C8;
      }

      v15 = [(__CFString *)v6 stringByAppendingString:v12];

      v6 = [v15 stringByAppendingString:@"\n"];

      ++v5;
      descriptor4 = [(SCRO2DBrailleCanvas *)self descriptor];
      height2 = [descriptor4 height];
    }

    while (v5 < height2);
  }

  else
  {
    v6 = &stru_28763D5C8;
  }

  return v6;
}

@end