@interface _WBSBookmarkFolderTouchIconProviderInfo
- (_WBSBookmarkFolderTouchIconProviderInfo)initWithThumbnailImages:(id)images backgroundColors:(id)colors touchIcon:(id)icon;
@end

@implementation _WBSBookmarkFolderTouchIconProviderInfo

- (_WBSBookmarkFolderTouchIconProviderInfo)initWithThumbnailImages:(id)images backgroundColors:(id)colors touchIcon:(id)icon
{
  imagesCopy = images;
  colorsCopy = colors;
  iconCopy = icon;
  v18.receiver = self;
  v18.super_class = _WBSBookmarkFolderTouchIconProviderInfo;
  v11 = [(_WBSBookmarkFolderTouchIconProviderInfo *)&v18 init];
  if (v11)
  {
    v12 = [imagesCopy copy];
    thumbnailImages = v11->_thumbnailImages;
    v11->_thumbnailImages = v12;

    v14 = [colorsCopy copy];
    backgroundColors = v11->_backgroundColors;
    v11->_backgroundColors = v14;

    objc_storeStrong(&v11->_touchIcon, icon);
    v16 = v11;
  }

  return v11;
}

@end