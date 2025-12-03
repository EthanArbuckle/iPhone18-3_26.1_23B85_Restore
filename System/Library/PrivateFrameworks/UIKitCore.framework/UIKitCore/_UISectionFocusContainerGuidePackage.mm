@interface _UISectionFocusContainerGuidePackage
- (void)_updateFocusGuidesArray;
- (void)setSectionEndFocusGuide:(id)guide;
- (void)setSectionFocusGuide:(id)guide;
@end

@implementation _UISectionFocusContainerGuidePackage

- (void)_updateFocusGuidesArray
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_sectionFocusGuide)
  {
    [(NSArray *)array addObject:?];
  }

  if (self->_sectionEndFocusGuide)
  {
    [(NSArray *)v4 addObject:?];
  }

  focusGuides = self->_focusGuides;
  self->_focusGuides = v4;
}

- (void)setSectionFocusGuide:(id)guide
{
  guideCopy = guide;
  if (self->_sectionFocusGuide != guideCopy)
  {
    v6 = guideCopy;
    objc_storeStrong(&self->_sectionFocusGuide, guide);
    [(_UISectionFocusContainerGuidePackage *)self _updateFocusGuidesArray];
    guideCopy = v6;
  }
}

- (void)setSectionEndFocusGuide:(id)guide
{
  guideCopy = guide;
  if (self->_sectionEndFocusGuide != guideCopy)
  {
    v6 = guideCopy;
    objc_storeStrong(&self->_sectionEndFocusGuide, guide);
    [(_UISectionFocusContainerGuidePackage *)self _updateFocusGuidesArray];
    guideCopy = v6;
  }
}

@end