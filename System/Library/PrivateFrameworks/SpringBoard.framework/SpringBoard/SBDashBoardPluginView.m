@interface SBDashBoardPluginView
- (CGRect)presentationRegion;
- (id)presentationRegions;
@end

@implementation SBDashBoardPluginView

- (id)presentationRegions
{
  v10[1] = *MEMORY[0x277D85DE8];
  [(SBDashBoardPluginView *)self presentationRegion];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectEqualToRect(v12, *MEMORY[0x277CBF3A0]))
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D02C80] regionForCoordinateSpace:self withExtent:{x, y, width, height}];
    v10[0] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  return v7;
}

- (CGRect)presentationRegion
{
  x = self->_presentationRegion.origin.x;
  y = self->_presentationRegion.origin.y;
  width = self->_presentationRegion.size.width;
  height = self->_presentationRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end