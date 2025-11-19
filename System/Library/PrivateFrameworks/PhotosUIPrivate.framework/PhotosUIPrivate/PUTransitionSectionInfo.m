@interface PUTransitionSectionInfo
- (PUGridCoordinates)anchorShiftOffset;
- (PUTransitionSectionInfo)init;
- (id)description;
@end

@implementation PUTransitionSectionInfo

- (PUGridCoordinates)anchorShiftOffset
{
  column = self->_anchorShiftOffset.column;
  row = self->_anchorShiftOffset.row;
  result.column = column;
  result.row = row;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PUTransitionSectionInfo;
  v4 = [(PUTransitionSectionInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ \n  transitionSection: %ld\n  visualSections: %@\n  contiguousRows: %ld\n  anchorRealPath: %@\n  anchorShiftOffset: %ld, %ld\n  rowStartMarkers: %@", v4, self->_transitionSection, self->_visualSections, self->_contiguousRows, self->_anchorRealPath, self->_anchorShiftOffset.row, self->_anchorShiftOffset.column, self->_visualRowStartMarkers];

  return v5;
}

- (PUTransitionSectionInfo)init
{
  v4.receiver = self;
  v4.super_class = PUTransitionSectionInfo;
  result = [(PUTransitionSectionInfo *)&v4 init];
  if (result)
  {
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    result->_anchorShiftOffset = vnegq_f64(v3);
  }

  return result;
}

@end