@interface _WBSBookmarkFolderTouchIconProviderRequestInfo
- (NSArray)backgroundColors;
- (NSArray)thumbnailImages;
- (_WBSBookmarkFolderTouchIconProviderRequestInfo)init;
- (void)setBackgroundColor:(id)color atIndex:(unint64_t)index;
- (void)setThumbnailImage:(id)image atIndex:(unint64_t)index;
@end

@implementation _WBSBookmarkFolderTouchIconProviderRequestInfo

- (_WBSBookmarkFolderTouchIconProviderRequestInfo)init
{
  v9.receiver = self;
  v9.super_class = _WBSBookmarkFolderTouchIconProviderRequestInfo;
  v2 = [(_WBSBookmarkFolderTouchIconProviderRequestInfo *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    thumbnailImages = v2->_thumbnailImages;
    v2->_thumbnailImages = array;

    array2 = [MEMORY[0x1E695DF70] array];
    backgroundColors = v2->_backgroundColors;
    v2->_backgroundColors = array2;

    v7 = v2;
  }

  return v2;
}

- (void)setThumbnailImage:(id)image atIndex:(unint64_t)index
{
  thumbnailImages = self->_thumbnailImages;
  v6 = MEMORY[0x1E695DFB0];
  imageCopy = image;
  null = [v6 null];
  [(NSMutableArray *)thumbnailImages safari_setObject:imageCopy atIndex:index withPaddingObject:null];
}

- (void)setBackgroundColor:(id)color atIndex:(unint64_t)index
{
  backgroundColors = self->_backgroundColors;
  v6 = MEMORY[0x1E695DFB0];
  colorCopy = color;
  null = [v6 null];
  [(NSMutableArray *)backgroundColors safari_setObject:colorCopy atIndex:index withPaddingObject:null];
}

- (NSArray)thumbnailImages
{
  v2 = [(NSMutableArray *)self->_thumbnailImages copy];

  return v2;
}

- (NSArray)backgroundColors
{
  v2 = [(NSMutableArray *)self->_backgroundColors copy];

  return v2;
}

@end