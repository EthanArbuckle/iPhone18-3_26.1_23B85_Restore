@interface _UICollectionLayoutSolutionState
- (id)description;
@end

@implementation _UICollectionLayoutSolutionState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sectionGeometryTranslator = self->_sectionGeometryTranslator;
  if (sectionGeometryTranslator)
  {
    x = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.origin.x;
    y = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.origin.y;
    width = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.size.width;
    height = sectionGeometryTranslator->_contentFrameIncludingAuxiliaries.size.height;
  }

  else
  {
    y = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
  }

  v11 = NSStringFromCGRect(*&x);
  v12 = [v3 stringWithFormat:@"<%@ %p: contentFrameIncludingAuxiliaries=%@ bookmarks=%@>", v5, self, v11, self->_bookmarks];;

  return v12;
}

@end