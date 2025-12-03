@interface _UILargeContentViewerItemStoredProperties
- (UIEdgeInsets)largeContentImageInsets;
- (_UILargeContentViewerItemStoredProperties)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setLargeContentImage:(id)image;
- (void)setLargeContentImageInsets:(UIEdgeInsets)insets;
- (void)setLargeContentTitle:(id)title;
@end

@implementation _UILargeContentViewerItemStoredProperties

- (_UILargeContentViewerItemStoredProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _UILargeContentViewerItemStoredProperties;
  v5 = [(_UILargeContentViewerItemStoredProperties *)&v17 init];
  if (v5)
  {
    v5->_didSetShowsLargeContentViewer = [coderCopy decodeBoolForKey:@"DidSetShowsLargeContentViewer"];
    v5->_showsLargeContentViewer = [coderCopy decodeBoolForKey:@"ShowsLargeContentViewer"];
    v5->_didSetLargeContentTitle = [coderCopy decodeBoolForKey:@"DidSetLargeContentTitle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LargeContentTitle"];
    largeContentTitle = v5->_largeContentTitle;
    v5->_largeContentTitle = v6;

    v5->_didSetLargeContentImage = [coderCopy decodeBoolForKey:@"DidSetLargeContentImage"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LargeContentImage"];
    largeContentImage = v5->_largeContentImage;
    v5->_largeContentImage = v8;

    v5->_didSetScalesLargeContentImage = [coderCopy decodeBoolForKey:@"DidSetScalesLargeContentImage"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScalesLargeContentImage"];
    v5->_scalesLargeContentImage = v10 != 0;

    v5->_didSetLargeContentImageInsets = [coderCopy decodeBoolForKey:@"DidSetLargeContentImageInsets"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LargeContentImageInsets"];
    [v11 UIEdgeInsetsValue];
    v5->_largeContentImageInsets.top = v12;
    v5->_largeContentImageInsets.left = v13;
    v5->_largeContentImageInsets.bottom = v14;
    v5->_largeContentImageInsets.right = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties didSetShowsLargeContentViewer](self forKey:{"didSetShowsLargeContentViewer"), @"DidSetShowsLargeContentViewer"}];
  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties showsLargeContentViewer](self forKey:{"showsLargeContentViewer"), @"ShowsLargeContentViewer"}];
  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties didSetLargeContentTitle](self forKey:{"didSetLargeContentTitle"), @"DidSetLargeContentTitle"}];
  largeContentTitle = [(_UILargeContentViewerItemStoredProperties *)self largeContentTitle];
  [coderCopy encodeObject:largeContentTitle forKey:@"LargeContentTitle"];

  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties didSetLargeContentImage](self forKey:{"didSetLargeContentImage"), @"DidSetLargeContentImage"}];
  largeContentImage = [(_UILargeContentViewerItemStoredProperties *)self largeContentImage];
  [coderCopy encodeObject:largeContentImage forKey:@"LargeContentImage"];

  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties didSetScalesLargeContentImage](self forKey:{"didSetScalesLargeContentImage"), @"DidSetScalesLargeContentImage"}];
  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties scalesLargeContentImage](self forKey:{"scalesLargeContentImage"), @"ScalesLargeContentImage"}];
  [coderCopy encodeBool:-[_UILargeContentViewerItemStoredProperties didSetLargeContentImageInsets](self forKey:{"didSetLargeContentImageInsets"), @"DidSetLargeContentImageInsets"}];
  v7 = MEMORY[0x1E696B098];
  [(_UILargeContentViewerItemStoredProperties *)self largeContentImageInsets];
  v8 = [v7 valueWithUIEdgeInsets:?];
  [coderCopy encodeObject:v8 forKey:@"LargeContentImageInsets"];
}

- (void)setLargeContentTitle:(id)title
{
  titleCopy = title;
  [(_UILargeContentViewerItemStoredProperties *)self setDidSetLargeContentTitle:1];
  v5 = [titleCopy copy];

  largeContentTitle = self->_largeContentTitle;
  self->_largeContentTitle = v5;
}

- (void)setLargeContentImage:(id)image
{
  imageCopy = image;
  [(_UILargeContentViewerItemStoredProperties *)self setDidSetLargeContentImage:1];
  largeContentImage = self->_largeContentImage;
  self->_largeContentImage = imageCopy;
}

- (void)setLargeContentImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(_UILargeContentViewerItemStoredProperties *)self setDidSetLargeContentImageInsets:1];
  self->_largeContentImageInsets.top = top;
  self->_largeContentImageInsets.left = left;
  self->_largeContentImageInsets.bottom = bottom;
  self->_largeContentImageInsets.right = right;
}

- (UIEdgeInsets)largeContentImageInsets
{
  top = self->_largeContentImageInsets.top;
  left = self->_largeContentImageInsets.left;
  bottom = self->_largeContentImageInsets.bottom;
  right = self->_largeContentImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end