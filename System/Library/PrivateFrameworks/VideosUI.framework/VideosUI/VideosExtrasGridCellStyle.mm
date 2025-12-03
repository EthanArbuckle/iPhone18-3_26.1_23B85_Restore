@interface VideosExtrasGridCellStyle
- (CGSize)imageSize;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VideosExtrasGridCellStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)self imageSize];
  [(VideosExtrasGridCellStyle *)v4 setImageSize:?];
  [(VideosExtrasGridCellStyle *)self titleFirstBaselineHeight];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:?];
  [(VideosExtrasGridCellStyle *)self subtitleFirstBaselineHeight];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:?];
  titleTextStyle = [(VideosExtrasGridCellStyle *)self titleTextStyle];
  v6 = [titleTextStyle copy];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:v6];

  subtitleTextStyle = [(VideosExtrasGridCellStyle *)self subtitleTextStyle];
  v8 = [subtitleTextStyle copy];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:v8];

  titleDefaultFontAttributes = [(VideosExtrasGridCellStyle *)self titleDefaultFontAttributes];
  v10 = [titleDefaultFontAttributes copy];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v10];

  subtitleDefaultFontAttributes = [(VideosExtrasGridCellStyle *)self subtitleDefaultFontAttributes];
  v12 = [subtitleDefaultFontAttributes copy];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v12];

  titleTextColor = [(VideosExtrasGridCellStyle *)self titleTextColor];
  v14 = [titleTextColor copy];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v14];

  subtitleTextColor = [(VideosExtrasGridCellStyle *)self subtitleTextColor];
  v16 = [subtitleTextColor copy];
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