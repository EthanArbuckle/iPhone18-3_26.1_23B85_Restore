@interface PKAppearanceSpecifier
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKAppearanceSpecifier

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setHasDarkAppearance:self->_hasDarkAppearance];
  [v4 setBackgroundColor:self->_backgroundColor];
  [v4 setForegroundColor:self->_foregroundColor];
  [v4 setTintColor:self->_tintColor];
  [v4 setTableViewSeparatorColor:self->_tableViewSeparatorColor];
  [v4 setTableViewCellHighlightColor:self->_tableViewCellHighlightColor];
  [v4 setTableViewCellAccessoryColor:self->_tableViewCellAccessoryColor];
  [v4 setTableViewCellAccessoryHighlightColor:self->_tableViewCellAccessoryHighlightColor];
  [v4 setTextColor:self->_textColor];
  [v4 setAltTextColor:self->_altTextColor];
  [v4 setButtonTextColor:self->_buttonTextColor];
  [v4 setButtonDisabledTextColor:self->_buttonDisabledTextColor];
  [v4 setButtonBackgroundColor:self->_buttonBackgroundColor];
  [v4 setContinueButtonTintColor:self->_continueButtonTintColor];
  [v4 setEditableTextColor:self->_editableTextColor];
  [v4 setEditablePlaceholderTextColor:self->_editablePlaceholderTextColor];
  [v4 setEditableInsertionPointColor:self->_editableInsertionPointColor];
  [v4 setEditableSelectionBarColor:self->_editableSelectionBarColor];
  [v4 setEditableSelectionHighlightColor:self->_editableSelectionHighlightColor];
  [v4 setFooterHyperlinkColor:self->_footerHyperlinkColor];
  [v4 setProgressBarTintColor:self->_progressBarTintColor];
  [v4 setProgressBarTrackTintColor:self->_progressBarTrackTintColor];
  [v4 setCameraCaptureMaskColor:self->_cameraCaptureMaskColor];
  [v4 setCameraCaptureMaskOutlineColor:self->_cameraCaptureMaskOutlineColor];
  [v4 setNavBarPointImage:self->_navBarPointImage];
  [v4 setNavBarShadowPointImage:self->_navBarShadowPointImage];
  return v4;
}

@end