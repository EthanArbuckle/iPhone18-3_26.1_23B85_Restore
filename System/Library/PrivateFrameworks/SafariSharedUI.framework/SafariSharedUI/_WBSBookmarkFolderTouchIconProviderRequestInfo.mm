@interface _WBSBookmarkFolderTouchIconProviderRequestInfo
- (NSArray)backgroundColors;
- (NSArray)thumbnailImages;
- (_WBSBookmarkFolderTouchIconProviderRequestInfo)init;
- (void)setBackgroundColor:(id)a3 atIndex:(unint64_t)a4;
- (void)setThumbnailImage:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation _WBSBookmarkFolderTouchIconProviderRequestInfo

- (_WBSBookmarkFolderTouchIconProviderRequestInfo)init
{
  v9.receiver = self;
  v9.super_class = _WBSBookmarkFolderTouchIconProviderRequestInfo;
  v2 = [(_WBSBookmarkFolderTouchIconProviderRequestInfo *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    thumbnailImages = v2->_thumbnailImages;
    v2->_thumbnailImages = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    backgroundColors = v2->_backgroundColors;
    v2->_backgroundColors = v5;

    v7 = v2;
  }

  return v2;
}

- (void)setThumbnailImage:(id)a3 atIndex:(unint64_t)a4
{
  thumbnailImages = self->_thumbnailImages;
  v6 = MEMORY[0x1E695DFB0];
  v7 = a3;
  v8 = [v6 null];
  [(NSMutableArray *)thumbnailImages safari_setObject:v7 atIndex:a4 withPaddingObject:v8];
}

- (void)setBackgroundColor:(id)a3 atIndex:(unint64_t)a4
{
  backgroundColors = self->_backgroundColors;
  v6 = MEMORY[0x1E695DFB0];
  v7 = a3;
  v8 = [v6 null];
  [(NSMutableArray *)backgroundColors safari_setObject:v7 atIndex:a4 withPaddingObject:v8];
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