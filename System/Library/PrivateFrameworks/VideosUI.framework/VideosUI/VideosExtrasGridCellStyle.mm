@interface VideosExtrasGridCellStyle
- (CGSize)imageSize;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VideosExtrasGridCellStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)self imageSize];
  [(VideosExtrasGridCellStyle *)v4 setImageSize:?];
  [(VideosExtrasGridCellStyle *)self titleFirstBaselineHeight];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:?];
  [(VideosExtrasGridCellStyle *)self subtitleFirstBaselineHeight];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:?];
  v5 = [(VideosExtrasGridCellStyle *)self titleTextStyle];
  v6 = [v5 copy];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:v6];

  v7 = [(VideosExtrasGridCellStyle *)self subtitleTextStyle];
  v8 = [v7 copy];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:v8];

  v9 = [(VideosExtrasGridCellStyle *)self titleDefaultFontAttributes];
  v10 = [v9 copy];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v10];

  v11 = [(VideosExtrasGridCellStyle *)self subtitleDefaultFontAttributes];
  v12 = [v11 copy];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v12];

  v13 = [(VideosExtrasGridCellStyle *)self titleTextColor];
  v14 = [v13 copy];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v14];

  v15 = [(VideosExtrasGridCellStyle *)self subtitleTextColor];
  v16 = [v15 copy];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextColor:v16];

  [(VideosExtrasGridCellStyle *)self textFirstBaselineToBottom];
  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:?];
  [(VideosExtrasGridCellStyle *)self textLastBaselineToBottom];
  [(VideosExtrasGridCellStyle *)v4 setTextLastBaselineToBottom:?];
  [(VideosExtrasGridCellStyle *)v4 setDefaultTextAlignment:[(VideosExtrasGridCellStyle *)self defaultTextAlignment]];
  return v4;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end