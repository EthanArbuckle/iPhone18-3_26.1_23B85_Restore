@interface SBAppStatusBarTransitionInfo
- (id)description;
@end

@implementation SBAppStatusBarTransitionInfo

- (id)description
{
  if (self->_zoomOther)
  {
    v3 = @"(zoomOther) :";
  }

  else
  {
    v3 = @":";
  }

  v4 = v3;
  endOrientation = self->_endOrientation;
  if (self->_startOrientation == endOrientation)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%i", self->_startOrientation, v17];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%i -> %i", self->_startOrientation, endOrientation];
  }
  v6 = ;
  if (([(UIStatusBarStyleRequest *)self->_startStyleRequest isEqual:self->_endStyleRequest]& 1) != 0)
  {
    v7 = __stringForStyleRequest(self->_startStyleRequest);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = __stringForStyleRequest(self->_startStyleRequest);
    v10 = __stringForStyleRequest(self->_endStyleRequest);
    v7 = [v8 stringWithFormat:@"%@ -> %@", v9, v10];
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  transition = self->_transition;
  if (transition > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_2783BE298[transition];
  }

  v15 = [v11 stringWithFormat:@"<%@:%p transition=%@ %@ orientation=%@ : styleRequest=%@>", v12, self, v14, v4, v6, v7];

  return v15;
}

@end