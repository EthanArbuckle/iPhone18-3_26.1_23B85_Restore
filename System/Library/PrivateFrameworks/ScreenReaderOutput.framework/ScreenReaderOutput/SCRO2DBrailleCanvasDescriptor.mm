@interface SCRO2DBrailleCanvasDescriptor
- (SCRO2DBrailleCanvasDescriptor)initWithCoder:(id)coder;
- (unint64_t)numberOfCellsInRowAvailable;
- (unint64_t)numberOfGraphicsLinesAvailableForTextLines:(unint64_t)lines;
- (unint64_t)numberOfTextLinesAvailable;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCRO2DBrailleCanvasDescriptor

- (SCRO2DBrailleCanvasDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SCRO2DBrailleCanvasDescriptor;
  v5 = [(SCRO2DBrailleCanvasDescriptor *)&v12 init];
  if (v5)
  {
    v5->_height = [coderCopy decodeIntegerForKey:@"height"];
    v5->_width = [coderCopy decodeIntegerForKey:@"width"];
    v5->_cellHeight = [coderCopy decodeIntegerForKey:@"cellHeight"];
    v5->_cellWidth = [coderCopy decodeIntegerForKey:@"cellWidth"];
    v5->_hasConsistentHorizontalPinSpacing = [coderCopy decodeBoolForKey:@"hasConsistentHorizontalPinSpacing"];
    v5->_hasConsistentVerticalPinSpacing = [coderCopy decodeBoolForKey:@"hasConsistentVerticalPinSpacing"];
    [coderCopy decodeDoubleForKey:@"verticalPinSpacing"];
    v5->_verticalPinSpacing = v6;
    [coderCopy decodeDoubleForKey:@"horizontalPinSpacing"];
    v5->_horizontalPinSpacing = v7;
    [coderCopy decodeDoubleForKey:@"interCellHorizontalSpacing"];
    v5->_interCellHorizontalSpacing = v8;
    [coderCopy decodeDoubleForKey:@"interCellVerticalSpacing"];
    v5->_interCellVerticalSpacing = v9;
    v5->_skipPinBetweenCellsHorizontally = [coderCopy decodeBoolForKey:@"skipPinBetweenCellsHorizontally"];
    v5->_skipPinBetweenCellsVertically = [coderCopy decodeBoolForKey:@"skipPinBetweenCellsVertically"];
    v5->_pinHeightStyle = [coderCopy decodeIntegerForKey:@"pinHeightStyle"];
    v5->_detentCount = [coderCopy decodeIntegerForKey:@"detentCount"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  height = self->_height;
  coderCopy = coder;
  [coderCopy encodeInteger:height forKey:@"height"];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:-[SCRO2DBrailleCanvasDescriptor cellHeight](self forKey:{"cellHeight"), @"cellHeight"}];
  [coderCopy encodeInteger:-[SCRO2DBrailleCanvasDescriptor cellWidth](self forKey:{"cellWidth"), @"cellWidth"}];
  [coderCopy encodeBool:-[SCRO2DBrailleCanvasDescriptor hasConsistentHorizontalPinSpacing](self forKey:{"hasConsistentHorizontalPinSpacing"), @"hasConsistentHorizontalPinSpacing"}];
  [coderCopy encodeBool:-[SCRO2DBrailleCanvasDescriptor hasConsistentVerticalPinSpacing](self forKey:{"hasConsistentVerticalPinSpacing"), @"hasConsistentVerticalPinSpacing"}];
  [(SCRO2DBrailleCanvasDescriptor *)self verticalPinSpacing];
  [coderCopy encodeDouble:@"verticalPinSpacing" forKey:?];
  [(SCRO2DBrailleCanvasDescriptor *)self horizontalPinSpacing];
  [coderCopy encodeDouble:@"horizontalPinSpacing" forKey:?];
  [(SCRO2DBrailleCanvasDescriptor *)self interCellHorizontalSpacing];
  [coderCopy encodeDouble:@"interCellHorizontalSpacing" forKey:?];
  [(SCRO2DBrailleCanvasDescriptor *)self interCellVerticalSpacing];
  [coderCopy encodeDouble:@"interCellVerticalSpacing" forKey:?];
  [coderCopy encodeBool:-[SCRO2DBrailleCanvasDescriptor skipPinBetweenCellsHorizontally](self forKey:{"skipPinBetweenCellsHorizontally"), @"skipPinBetweenCellsHorizontally"}];
  [coderCopy encodeBool:-[SCRO2DBrailleCanvasDescriptor skipPinBetweenCellsVertically](self forKey:{"skipPinBetweenCellsVertically"), @"skipPinBetweenCellsVertically"}];
  [coderCopy encodeInteger:-[SCRO2DBrailleCanvasDescriptor pinHeightStyle](self forKey:{"pinHeightStyle"), @"pinHeightStyle"}];
  [coderCopy encodeInteger:-[SCRO2DBrailleCanvasDescriptor detentCount](self forKey:{"detentCount"), @"detentCount"}];
}

- (unint64_t)numberOfCellsInRowAvailable
{
  skipPinBetweenCellsHorizontally = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsHorizontally];
  v4 = [(SCRO2DBrailleCanvasDescriptor *)self cellWidth]+ skipPinBetweenCellsHorizontally;
  width = self->_width;
  v6 = width / v4;
  if (width % v4 == [(SCRO2DBrailleCanvasDescriptor *)self cellWidth])
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)numberOfTextLinesAvailable
{
  skipPinBetweenCellsVertically = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsVertically];
  v4 = [(SCRO2DBrailleCanvasDescriptor *)self cellHeight]+ skipPinBetweenCellsVertically;
  height = self->_height;
  v6 = height / v4;
  if (height % v4 == [(SCRO2DBrailleCanvasDescriptor *)self cellHeight])
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)numberOfGraphicsLinesAvailableForTextLines:(unint64_t)lines
{
  v5 = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsVertically]<< 63 >> 63;
  v6 = v5 - [(SCRO2DBrailleCanvasDescriptor *)self cellHeight];
  skipPinBetweenCellsVertically = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsVertically];
  if (lines)
  {
    v8 = skipPinBetweenCellsVertically;
  }

  else
  {
    v8 = 0;
  }

  return self->_height + v6 * lines + v8;
}

@end