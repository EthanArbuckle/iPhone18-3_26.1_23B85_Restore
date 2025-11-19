@interface PXStoryPagedTimelineSpec
- (CGSize)keyPageSize;
- (CGSize)regularPageSize;
- (id)description;
@end

@implementation PXStoryPagedTimelineSpec

- (CGSize)keyPageSize
{
  width = self->_keyPageSize.width;
  height = self->_keyPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)regularPageSize
{
  width = self->_regularPageSize.width;
  height = self->_regularPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  regularPageSize = self->_regularPageSize;
  keyPageSize = self->_keyPageSize;
  regularInterpageSpacing = self->_regularInterpageSpacing;
  keyInterpageSpacing = self->_keyInterpageSpacing;
  if (self->_displayOneAssetPerPage)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  v9 = [v3 stringWithFormat:@"<%@: %p regularPageSize={%g, %g}; keyPageSize={%g, %g}; regularInterpageSpacing=%g; keyInterpageSpacing=%g; displayOneAssetPerPage=%@>", v4, self, regularPageSize, keyPageSize, *&regularInterpageSpacing, *&keyInterpageSpacing, v8];;

  return v9;
}

@end