@interface SCRO2DBrailleReadingContent
- (id)multiLineBraille;
- (void)drawOnCanvas:(id)canvas;
- (void)multiLineBraille;
- (void)panLeft;
- (void)panRight;
@end

@implementation SCRO2DBrailleReadingContent

- (void)drawOnCanvas:(id)canvas
{
  canvasCopy = canvas;
  multiLineBraille = [(SCRO2DBrailleReadingContent *)self multiLineBraille];
  v11 = canvasCopy;
  data = [MEMORY[0x277CBEA90] data];
  [v11 setImageData:data];

  v7 = [multiLineBraille componentsJoinedByString:&stru_28763D5C8];
  v8 = [v7 length];
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v9[i] = [v7 characterAtIndex:i];
    }
  }

  [v11 setBrailleText:v9 length:v8];
  free(v9);
}

- (id)multiLineBraille
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_height >= 1)
  {
    firstDisplayedLine = self->_firstDisplayedLine;
    do
    {
      if (firstDisplayedLine < 0 || firstDisplayedLine >= [(NSArray *)self->_brailleLines count])
      {
        v6 = [&stru_28763D5C8 stringByPaddingToLength:self->_width withString:@"⠀" startingAtIndex:0];
      }

      else
      {
        v6 = [(NSArray *)self->_brailleLines objectAtIndex:firstDisplayedLine];
        if ([v6 length] != self->_width)
        {
          [(SCRO2DBrailleReadingContent *)v6 multiLineBraille:a2];
        }
      }

      [v4 addObject:v6];

      ++firstDisplayedLine;
    }

    while (firstDisplayedLine < self->_height + self->_firstDisplayedLine);
  }

  return v4;
}

- (void)panLeft
{
  if ([(SCRO2DBrailleReadingContent *)self canPanLeft])
  {
    self->_firstDisplayedLine -= self->_height;
  }
}

- (void)panRight
{
  if ([(SCRO2DBrailleReadingContent *)self canPanRight])
  {
    self->_firstDisplayedLine += self->_height;
  }
}

- (void)multiLineBraille
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "length")}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*a2];
  [currentHandler handleFailureInMethod:a3 object:a4 file:@"SCRO2DBrailleReadingContent.m" lineNumber:106 description:{@"Each element of _brailleLine (%@, length %@) must be of length _width (%@)", self, v8, v9}];
}

@end