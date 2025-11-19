@interface PTScanlineIter_FocusBlurMap
- (PTScanlineIter_FocusBlurMap)initWithMask:(id)a3;
- (_NSRange)nextRangeX;
- (_NSRange)nextRangeY;
- (void)_advanceToNextTile;
- (void)_advanceToNextTileRow;
- (void)reset;
- (void)resetX;
@end

@implementation PTScanlineIter_FocusBlurMap

- (PTScanlineIter_FocusBlurMap)initWithMask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTScanlineIter_FocusBlurMap;
  v6 = [(PTScanlineIter_FocusBlurMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mask, a3);
    [(PTScanlineIter_FocusBlurMap *)v7 reset];
  }

  return v7;
}

- (_NSRange)nextRangeY
{
  if (self->_currentTileRow == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v5 = [(PTScanlineMask_FocusBlurMap *)self->_mask map];
    v6 = [v5 tileYForTile:self->_currentTile];

    v7 = [(PTScanlineMask_FocusBlurMap *)self->_mask pixelRangeForTileRangeY:v6, 1];
    v9 = v8;
    [(PTScanlineIter_FocusBlurMap *)self _advanceToNextTileRow];
    v2 = v7;
    v3 = v9;
  }

  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)nextRangeX
{
  if (self->_currentTile == 0x7FFFFFFFFFFFFFFFLL || (-[PTScanlineMask_FocusBlurMap map](self->_mask, "map"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 tileYForTile:self->_currentTile], -[PTScanlineMask_FocusBlurMap map](self->_mask, "map"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "tileYForTile:", self->_currentTileRow), v5, v3, v4 != v6))
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v7 = [(PTScanlineMask_FocusBlurMap *)self->_mask map];
    v8 = [v7 tileXForTile:self->_currentTile];

    v9 = [(PTScanlineMask_FocusBlurMap *)self->_mask pixelRangeForTileRangeX:v8, 1];
    v11 = v10;
    [(PTScanlineIter_FocusBlurMap *)self _advanceToNextTile];
    v12 = v9;
    v13 = v11;
  }

  result.length = v13;
  result.location = v12;
  return result;
}

- (void)resetX
{
  currentTileRow = self->_currentTileRow;
  if (currentTileRow == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PTScanlineIter_FocusBlurMap *)self reset];
    currentTileRow = self->_currentTileRow;
  }

  self->_currentTile = currentTileRow;
}

- (void)reset
{
  v3 = [(PTScanlineMask_FocusBlurMap *)self->_mask region];
  self->_currentTileRow = [v3 firstIndex];

  self->_currentTile = self->_currentTileRow;
}

- (void)_advanceToNextTileRow
{
  if (self->_currentTileRow == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PTScanlineIter_FocusBlurMap *)self reset];
  }

  else
  {
    v3 = [(PTScanlineMask_FocusBlurMap *)self->_mask map];
    v4 = [v3 tileYForTile:self->_currentTileRow];

    do
    {
      v5 = [(PTScanlineMask_FocusBlurMap *)self->_mask region];
      self->_currentTileRow = [v5 indexGreaterThanIndex:self->_currentTileRow];

      if (self->_currentTileRow == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v6 = [(PTScanlineMask_FocusBlurMap *)self->_mask map];
      v7 = [v6 tileYForTile:self->_currentTileRow];
    }

    while (v7 == v4);
  }
}

- (void)_advanceToNextTile
{
  if (self->_currentTile == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PTScanlineIter_FocusBlurMap *)self resetX];
  }

  else
  {
    v3 = [(PTScanlineMask_FocusBlurMap *)self->_mask map];
    v4 = [v3 tileYForTile:self->_currentTile];
    v5 = [(PTScanlineMask_FocusBlurMap *)self->_mask map];
    v6 = [v5 tileYForTile:self->_currentTileRow];

    if (v4 == v6)
    {
      v7 = [(PTScanlineMask_FocusBlurMap *)self->_mask region];
      self->_currentTile = [v7 indexGreaterThanIndex:self->_currentTile];
    }
  }
}

@end