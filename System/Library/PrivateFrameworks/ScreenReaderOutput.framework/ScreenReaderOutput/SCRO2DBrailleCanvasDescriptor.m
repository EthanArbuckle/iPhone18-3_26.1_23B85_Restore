@interface SCRO2DBrailleCanvasDescriptor
- (SCRO2DBrailleCanvasDescriptor)initWithCoder:(id)a3;
- (unint64_t)numberOfCellsInRowAvailable;
- (unint64_t)numberOfGraphicsLinesAvailableForTextLines:(unint64_t)a3;
- (unint64_t)numberOfTextLinesAvailable;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCRO2DBrailleCanvasDescriptor

- (SCRO2DBrailleCanvasDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SCRO2DBrailleCanvasDescriptor;
  v5 = [(SCRO2DBrailleCanvasDescriptor *)&v12 init];
  if (v5)
  {
    v5->_height = [v4 decodeIntegerForKey:@"height"];
    v5->_width = [v4 decodeIntegerForKey:@"width"];
    v5->_cellHeight = [v4 decodeIntegerForKey:@"cellHeight"];
    v5->_cellWidth = [v4 decodeIntegerForKey:@"cellWidth"];
    v5->_hasConsistentHorizontalPinSpacing = [v4 decodeBoolForKey:@"hasConsistentHorizontalPinSpacing"];
    v5->_hasConsistentVerticalPinSpacing = [v4 decodeBoolForKey:@"hasConsistentVerticalPinSpacing"];
    [v4 decodeDoubleForKey:@"verticalPinSpacing"];
    v5->_verticalPinSpacing = v6;
    [v4 decodeDoubleForKey:@"horizontalPinSpacing"];
    v5->_horizontalPinSpacing = v7;
    [v4 decodeDoubleForKey:@"interCellHorizontalSpacing"];
    v5->_interCellHorizontalSpacing = v8;
    [v4 decodeDoubleForKey:@"interCellVerticalSpacing"];
    v5->_interCellVerticalSpacing = v9;
    v5->_skipPinBetweenCellsHorizontally = [v4 decodeBoolForKey:@"skipPinBetweenCellsHorizontally"];
    v5->_skipPinBetweenCellsVertically = [v4 decodeBoolForKey:@"skipPinBetweenCellsVertically"];
    v5->_pinHeightStyle = [v4 decodeIntegerForKey:@"pinHeightStyle"];
    v5->_detentCount = [v4 decodeIntegerForKey:@"detentCount"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  height = self->_height;
  v5 = a3;
  [v5 encodeInteger:height forKey:@"height"];
  [v5 encodeInteger:self->_width forKey:@"width"];
  [v5 encodeInteger:-[SCRO2DBrailleCanvasDescriptor cellHeight](self forKey:{"cellHeight"), @"cellHeight"}];
  [v5 encodeInteger:-[SCRO2DBrailleCanvasDescriptor cellWidth](self forKey:{"cellWidth"), @"cellWidth"}];
  [v5 encodeBool:-[SCRO2DBrailleCanvasDescriptor hasConsistentHorizontalPinSpacing](self forKey:{"hasConsistentHorizontalPinSpacing"), @"hasConsistentHorizontalPinSpacing"}];
  [v5 encodeBool:-[SCRO2DBrailleCanvasDescriptor hasConsistentVerticalPinSpacing](self forKey:{"hasConsistentVerticalPinSpacing"), @"hasConsistentVerticalPinSpacing"}];
  [(SCRO2DBrailleCanvasDescriptor *)self verticalPinSpacing];
  [v5 encodeDouble:@"verticalPinSpacing" forKey:?];
  [(SCRO2DBrailleCanvasDescriptor *)self horizontalPinSpacing];
  [v5 encodeDouble:@"horizontalPinSpacing" forKey:?];
  [(SCRO2DBrailleCanvasDescriptor *)self interCellHorizontalSpacing];
  [v5 encodeDouble:@"interCellHorizontalSpacing" forKey:?];
  [(SCRO2DBrailleCanvasDescriptor *)self interCellVerticalSpacing];
  [v5 encodeDouble:@"interCellVerticalSpacing" forKey:?];
  [v5 encodeBool:-[SCRO2DBrailleCanvasDescriptor skipPinBetweenCellsHorizontally](self forKey:{"skipPinBetweenCellsHorizontally"), @"skipPinBetweenCellsHorizontally"}];
  [v5 encodeBool:-[SCRO2DBrailleCanvasDescriptor skipPinBetweenCellsVertically](self forKey:{"skipPinBetweenCellsVertically"), @"skipPinBetweenCellsVertically"}];
  [v5 encodeInteger:-[SCRO2DBrailleCanvasDescriptor pinHeightStyle](self forKey:{"pinHeightStyle"), @"pinHeightStyle"}];
  [v5 encodeInteger:-[SCRO2DBrailleCanvasDescriptor detentCount](self forKey:{"detentCount"), @"detentCount"}];
}

- (unint64_t)numberOfCellsInRowAvailable
{
  v3 = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsHorizontally];
  v4 = [(SCRO2DBrailleCanvasDescriptor *)self cellWidth]+ v3;
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
  v3 = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsVertically];
  v4 = [(SCRO2DBrailleCanvasDescriptor *)self cellHeight]+ v3;
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

- (unint64_t)numberOfGraphicsLinesAvailableForTextLines:(unint64_t)a3
{
  v5 = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsVertically]<< 63 >> 63;
  v6 = v5 - [(SCRO2DBrailleCanvasDescriptor *)self cellHeight];
  v7 = [(SCRO2DBrailleCanvasDescriptor *)self skipPinBetweenCellsVertically];
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return self->_height + v6 * a3 + v8;
}

@end