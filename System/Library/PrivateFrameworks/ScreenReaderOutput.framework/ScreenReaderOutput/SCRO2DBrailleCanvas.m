@interface SCRO2DBrailleCanvas
- ($488472A07B2E1D1A523D39A95A553F6B)_fullyDownPinState;
- ($488472A07B2E1D1A523D39A95A553F6B)_fullyUpPinState;
- ($488472A07B2E1D1A523D39A95A553F6B)pinStateForX:(unint64_t)a3 y:(unint64_t)a4;
- (BOOL)_canBlitCellAtX:(unint64_t)a3 y:(unint64_t)a4;
- (BOOL)hasConsistentHorizontalPinSpacing;
- (BOOL)hasConsistentVerticalPinSpacing;
- (BOOL)skipPinBetweenCellsHorizontally;
- (BOOL)skipPinBetweenCellsVertically;
- (BOOL)supportsBrailleText;
- (SCRO2DBrailleCanvas)init;
- (SCRO2DBrailleCanvas)initWithCanvasDescriptor:(id)a3;
- (double)horizontalPinSpacing;
- (double)interCellHorizontalSpacing;
- (double)interCellVerticalSpacing;
- (double)verticalPinSpacing;
- (id)_pinForX:(unint64_t)a3 y:(unint64_t)a4;
- (id)debugAsciiCanvas;
- (unint64_t)_textDisplayHeight;
- (void)_blitBMP;
- (void)_blitCell:(unsigned __int8)a3 AtX:(unint64_t)a4 y:(unint64_t)a5;
- (void)_blitText;
- (void)_clearCells;
- (void)_updateCells;
- (void)setBrailleText:(const char *)a3 length:(unint64_t)a4;
- (void)setImageData:(id)a3;
- (void)setNumberOfTextLines:(unint64_t)a3;
- (void)setPinState:(id)a3 forX:(unint64_t)a4 y:(unint64_t)a5;
@end

@implementation SCRO2DBrailleCanvas

- (SCRO2DBrailleCanvas)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:@"SCRO2DBrailleException" format:{@"use of %@ is not allowed", v4}];

  return 0;
}

- (SCRO2DBrailleCanvas)initWithCanvasDescriptor:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SCRO2DBrailleCanvas;
  v6 = [(SCRO2DBrailleCanvas *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
    v8 = [MEMORY[0x277CBEB18] array];
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
            [v8 addObject:v11];

            ++v10;
          }

          while (v10 < [(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor height]);
        }

        ++v9;
      }

      while (v9 < [(SCRO2DBrailleCanvasDescriptor *)v7->_descriptor width]);
    }

    objc_storeStrong(&v7->_pins, v8);
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

- (id)_pinForX:(unint64_t)a3 y:(unint64_t)a4
{
  pins = self->_pins;
  v5 = a3 + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width]* a4;

  return [(NSArray *)pins objectAtIndex:v5];
}

- (void)setPinState:(id)a3 forX:(unint64_t)a4 y:(unint64_t)a5
{
  v6 = [(SCRO2DBrailleCanvas *)self _pinForX:a4 y:a5];
  [v6 setState:a3.var0];
}

- ($488472A07B2E1D1A523D39A95A553F6B)pinStateForX:(unint64_t)a3 y:(unint64_t)a4
{
  v4 = [(SCRO2DBrailleCanvas *)self _pinForX:a3 y:a4];
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

- (void)setNumberOfTextLines:(unint64_t)a3
{
  if ([(SCRO2DBrailleCanvasDescriptor *)self->_descriptor numberOfTextLinesAvailable]< a3)
  {
    [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor numberOfTextLinesAvailable];
  }

  self->_numberOfTextLines = a3;
}

- (unint64_t)_textDisplayHeight
{
  v3 = [(SCRO2DBrailleCanvas *)self cellHeight];
  v4 = v3 + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor skipPinBetweenCellsVertically];
  return v4 * [(SCRO2DBrailleCanvas *)self _numberOfTextLines];
}

- (void)setBrailleText:(const char *)a3 length:(unint64_t)a4
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  brailleTextData = self->_brailleTextData;
  self->_brailleTextData = v5;

  [(SCRO2DBrailleCanvas *)self _updateTextCells];
}

- (void)_blitBMP
{
  v3 = [(NSData *)self->_imageData bytes];
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
          v7 = [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width];
          if (v6 + v5 * v7 >= v4)
          {
            v8 = 0;
          }

          else
          {
            v8 = v3[v5 * v7 + v6];
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
  v3 = [(NSData *)self->_brailleTextData bytes];
  v4 = [(NSData *)self->_brailleTextData length];
  if (v3)
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

      [(SCRO2DBrailleCanvas *)self _blitCell:*v3 AtX:v8 y:v7];
      v9 = [(SCRO2DBrailleCanvas *)self cellWidth]+ v8;
      v8 = v9 + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor skipPinBetweenCellsHorizontally];
      if (![(SCRO2DBrailleCanvas *)self _canBlitCellAtX:v8 y:v7])
      {
        v10 = [(SCRO2DBrailleCanvas *)self cellHeight]+ v7;
        v8 = 0;
        v7 = v10 + [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor skipPinBetweenCellsVertically];
      }

      ++v3;
      --v6;
    }

    while (v6);
  }
}

- (BOOL)_canBlitCellAtX:(unint64_t)a3 y:(unint64_t)a4
{
  v7 = [(SCRO2DBrailleCanvas *)self cellHeight];
  v8 = a3 + [(SCRO2DBrailleCanvas *)self cellWidth]- 1;
  return v8 < [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor width]&& a4 + v7 - 1 < [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor height];
}

- (void)_blitCell:(unsigned __int8)a3 AtX:(unint64_t)a4 y:(unint64_t)a5
{
  v7 = a3;
  if ([(SCRO2DBrailleCanvas *)self cellWidth]+ a4 > a4)
  {
    v9 = a4;
    do
    {
      if ([(SCRO2DBrailleCanvas *)self cellHeight]+ a5 > a5)
      {
        v10 = v9 - a4;
        v11 = 1;
        v12 = a5;
        do
        {
          if (v9 == a4 && v11 == 1)
          {
            v13 = 1;
          }

          else if (v9 != a4 || v11)
          {
            if (v9 == a4 && v11 == -1)
            {
              v13 = 4;
            }

            else if (v9 == a4 && v11 == -2)
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

          if ((v13 & v7) != 0)
          {
            v15.var0 = [(SCRO2DBrailleCanvas *)self _fullyUpPinState];
          }

          else
          {
            v15.var0 = [(SCRO2DBrailleCanvas *)self _fullyDownPinState];
          }

          [(SCRO2DBrailleCanvas *)self setPinState:v15.var0 forX:v9 y:v12++];
          --v11;
        }

        while (v12 < [(SCRO2DBrailleCanvas *)self cellHeight]+ a5);
      }

      ++v9;
    }

    while (v9 < [(SCRO2DBrailleCanvas *)self cellWidth]+ a4);
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
    v5 = [(SCRO2DBrailleCanvasDescriptor *)self->_descriptor detentCount];
    v3 = (v5 - 1) & 0xFFFFFFFF00000000;
    v4 = (v5 - 1);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"SCRO2DBrailleException" format:{@"Unexpected pinHeightStyle: %ld", -[SCRO2DBrailleCanvasDescriptor pinHeightStyle](self->_descriptor, "pinHeightStyle")}];
    v3 = 0;
    v4 = 0;
  }

  return (v4 | v3);
}

- (void)setImageData:(id)a3
{
  objc_storeStrong(&self->_imageData, a3);

  [(SCRO2DBrailleCanvas *)self _updateCells];
}

- (id)debugAsciiCanvas
{
  v3 = [(SCRO2DBrailleCanvas *)self descriptor];
  v4 = [v3 height];

  if (v4)
  {
    v5 = 0;
    v6 = &stru_28763D5C8;
    do
    {
      v7 = [(SCRO2DBrailleCanvas *)self descriptor];
      v8 = [v7 width];

      if (v8)
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
          v13 = [(SCRO2DBrailleCanvas *)self descriptor];
          v14 = [v13 width];

          v10 = v12;
        }

        while (v9 < v14);
      }

      else
      {
        v12 = &stru_28763D5C8;
      }

      v15 = [(__CFString *)v6 stringByAppendingString:v12];

      v6 = [v15 stringByAppendingString:@"\n"];

      ++v5;
      v16 = [(SCRO2DBrailleCanvas *)self descriptor];
      v17 = [v16 height];
    }

    while (v5 < v17);
  }

  else
  {
    v6 = &stru_28763D5C8;
  }

  return v6;
}

@end