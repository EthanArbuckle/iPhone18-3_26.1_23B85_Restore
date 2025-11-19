@interface TSWPIterativeAttachmentPositioningState
- (BOOL)hasLoopInLastPasses;
- (CGPoint)bestPosition;
- (CGPoint)position;
- (TSWPIterativeAttachmentPositioningState)init;
- (void)dealloc;
- (void)setPosition:(CGPoint)a3 mismatch:(double)a4 afterLoop:(BOOL)a5;
@end

@implementation TSWPIterativeAttachmentPositioningState

- (TSWPIterativeAttachmentPositioningState)init
{
  v3.receiver = self;
  v3.super_class = TSWPIterativeAttachmentPositioningState;
  result = [(TSWPIterativeAttachmentPositioningState *)&v3 init];
  if (result)
  {
    result->_smallestMismatch = 1.79769313e308;
  }

  return result;
}

- (void)setPosition:(CGPoint)a3 mismatch:(double)a4 afterLoop:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  self->_position = a3;
  self->_mismatch = a4;
  passPositions = self->_passPositions;
  ++self->_passCount;
  if (passPositions)
  {
    v11 = -[NSArray arrayByAddingObject:](passPositions, "arrayByAddingObject:", [MEMORY[0x277CCAE60] valueWithCGPoint:{a3.x, a3.y}]);
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = [v12 initWithObjects:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", x, y), 0}];
  }

  self->_passPositions = v11;
  if (!a5)
  {
    v13 = -a4;
    if (a4 >= 0.0)
    {
      v13 = a4;
    }

    smallestMismatch = self->_smallestMismatch;
    if (smallestMismatch < 0.0)
    {
      smallestMismatch = -smallestMismatch;
    }

    if (v13 < smallestMismatch)
    {
      self->_smallestMismatch = a4;
      self->_bestPosition.x = x;
      self->_bestPosition.y = y;
    }
  }
}

- (BOOL)hasLoopInLastPasses
{
  v3 = [(NSArray *)[(TSWPIterativeAttachmentPositioningState *)self passPositions] count];
  if (v3 < 2)
  {
    return 0;
  }

  v4 = v3;
  [-[NSArray objectAtIndex:](-[TSWPIterativeAttachmentPositioningState passPositions](self "passPositions")];
  v6 = v5;
  v8 = v7;
  [-[NSArray objectAtIndex:](-[TSWPIterativeAttachmentPositioningState passPositions](self "passPositions")];
  v11 = v8 == v10 && v6 == v9;
  if (v4 != 2)
  {
    [-[NSArray objectAtIndex:](-[TSWPIterativeAttachmentPositioningState passPositions](self "passPositions")];
    return v11 || v8 == v13 && v6 == v12;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPIterativeAttachmentPositioningState;
  [(TSWPIterativeAttachmentPositioningState *)&v3 dealloc];
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bestPosition
{
  x = self->_bestPosition.x;
  y = self->_bestPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end