@interface _UILargeContentViewerItemStoredProperties
- (UIEdgeInsets)largeContentImageInsets;
- (_UILargeContentViewerItemStoredProperties)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLargeContentImage:(id)a3;
- (void)setLargeContentImageInsets:(UIEdgeInsets)a3;
- (void)setLargeContentTitle:(id)a3;
@end

@implementation _UILargeContentViewerItemStoredProperties

- (_UILargeContentViewerItemStoredProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UILargeContentViewerItemStoredProperties;
  v5 = [(_UILargeContentViewerItemStoredProperties *)&v17 init];
  if (v5)
  {
    v5->_didSetShowsLargeContentViewer = [v4 decodeBoolForKey:@"DidSetShowsLargeContentViewer"];
    v5->_showsLargeContentViewer = [v4 decodeBoolForKey:@"ShowsLargeContentViewer"];
    v5->_didSetLargeContentTitle = [v4 decodeBoolForKey:@"DidSetLargeContentTitle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LargeContentTitle"];
    largeContentTitle = v5->_largeContentTitle;
    v5->_largeContentTitle = v6;

    v5->_didSetLargeContentImage = [v4 decodeBoolForKey:@"DidSetLargeContentImage"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LargeContentImage"];
    largeContentImage = v5->_largeContentImage;
    v5->_largeContentImage = v8;

    v5->_didSetScalesLargeContentImage = [v4 decodeBoolForKey:@"DidSetScalesLargeContentImage"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScalesLargeContentImage"];
    v5->_scalesLargeContentImage = v10 != 0;

    v5->_didSetLargeContentImageInsets = [v4 decodeBoolForKey:@"DidSetLargeContentImageInsets"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LargeContentImageInsets"];
    [v11 UIEdgeInsetsValue];
    v5->_largeContentImageInsets.top = v12;
    v5->_largeContentImageInsets.left = v13;
    v5->_largeContentImageInsets.bottom = v14;
    v5->_largeContentImageInsets.right = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties didSetShowsLargeContentViewer](self forKey:{"didSetShowsLargeContentViewer"), @"DidSetShowsLargeContentViewer"}];
  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties showsLargeContentViewer](self forKey:{"showsLargeContentViewer"), @"ShowsLargeContentViewer"}];
  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties didSetLargeContentTitle](self forKey:{"didSetLargeContentTitle"), @"DidSetLargeContentTitle"}];
  v5 = [(_UILargeContentViewerItemStoredProperties *)self largeContentTitle];
  [v4 encodeObject:v5 forKey:@"LargeContentTitle"];

  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties didSetLargeContentImage](self forKey:{"didSetLargeContentImage"), @"DidSetLargeContentImage"}];
  v6 = [(_UILargeContentViewerItemStoredProperties *)self largeContentImage];
  [v4 encodeObject:v6 forKey:@"LargeContentImage"];

  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties didSetScalesLargeContentImage](self forKey:{"didSetScalesLargeContentImage"), @"DidSetScalesLargeContentImage"}];
  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties scalesLargeContentImage](self forKey:{"scalesLargeContentImage"), @"ScalesLargeContentImage"}];
  [v4 encodeBool:-[_UILargeContentViewerItemStoredProperties didSetLargeContentImageInsets](self forKey:{"didSetLargeContentImageInsets"), @"DidSetLargeContentImageInsets"}];
  v7 = MEMORY[0x1E696B098];
  [(_UILargeContentViewerItemStoredProperties *)self largeContentImageInsets];
  v8 = [v7 valueWithUIEdgeInsets:?];
  [v4 encodeObject:v8 forKey:@"LargeContentImageInsets"];
}

- (void)setLargeContentTitle:(id)a3
{
  v4 = a3;
  [(_UILargeContentViewerItemStoredProperties *)self setDidSetLargeContentTitle:1];
  v5 = [v4 copy];

  largeContentTitle = self->_largeContentTitle;
  self->_largeContentTitle = v5;
}

- (void)setLargeContentImage:(id)a3
{
  v4 = a3;
  [(_UILargeContentViewerItemStoredProperties *)self setDidSetLargeContentImage:1];
  largeContentImage = self->_largeContentImage;
  self->_largeContentImage = v4;
}

- (void)setLargeContentImageInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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