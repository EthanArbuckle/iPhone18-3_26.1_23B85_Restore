@interface _WBSBookmarkFolderTouchIconProviderInfo
- (_WBSBookmarkFolderTouchIconProviderInfo)initWithThumbnailImages:(id)a3 backgroundColors:(id)a4 touchIcon:(id)a5;
@end

@implementation _WBSBookmarkFolderTouchIconProviderInfo

- (_WBSBookmarkFolderTouchIconProviderInfo)initWithThumbnailImages:(id)a3 backgroundColors:(id)a4 touchIcon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _WBSBookmarkFolderTouchIconProviderInfo;
  v11 = [(_WBSBookmarkFolderTouchIconProviderInfo *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    thumbnailImages = v11->_thumbnailImages;
    v11->_thumbnailImages = v12;

    v14 = [v9 copy];
    backgroundColors = v11->_backgroundColors;
    v11->_backgroundColors = v14;

    objc_storeStrong(&v11->_touchIcon, a5);
    v16 = v11;
  }

  return v11;
}

@end