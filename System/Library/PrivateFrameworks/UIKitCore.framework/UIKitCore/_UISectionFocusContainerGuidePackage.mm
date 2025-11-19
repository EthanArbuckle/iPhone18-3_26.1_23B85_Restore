@interface _UISectionFocusContainerGuidePackage
- (void)_updateFocusGuidesArray;
- (void)setSectionEndFocusGuide:(id)a3;
- (void)setSectionFocusGuide:(id)a3;
@end

@implementation _UISectionFocusContainerGuidePackage

- (void)_updateFocusGuidesArray
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_sectionFocusGuide)
  {
    [(NSArray *)v3 addObject:?];
  }

  if (self->_sectionEndFocusGuide)
  {
    [(NSArray *)v4 addObject:?];
  }

  focusGuides = self->_focusGuides;
  self->_focusGuides = v4;
}

- (void)setSectionFocusGuide:(id)a3
{
  v5 = a3;
  if (self->_sectionFocusGuide != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sectionFocusGuide, a3);
    [(_UISectionFocusContainerGuidePackage *)self _updateFocusGuidesArray];
    v5 = v6;
  }
}

- (void)setSectionEndFocusGuide:(id)a3
{
  v5 = a3;
  if (self->_sectionEndFocusGuide != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sectionEndFocusGuide, a3);
    [(_UISectionFocusContainerGuidePackage *)self _updateFocusGuidesArray];
    v5 = v6;
  }
}

@end