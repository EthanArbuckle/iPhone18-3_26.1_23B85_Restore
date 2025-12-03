@interface PXImageTitleSubtitleSpec
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXImageTitleSubtitleSpec

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = PXImageTitleSubtitleSpec;
  v5 = [(PXViewSpec *)&v11 copyWithZone:?];
  v6 = [(PXTitleSubtitleLabelSpec *)self->_titleSubtitleSpec copyWithZone:zone];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [(PXImageViewSpec *)self->_imageSpec copyWithZone:zone];
  v9 = v5[13];
  v5[13] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = PXImageTitleSubtitleSpec;
  v5 = [(PXViewSpec *)&v16 isEqual:equalCopy];
  v6 = equalCopy;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_4;
  }

  titleSubtitleSpec = [v6 titleSubtitleSpec];
  titleSubtitleSpec2 = [(PXImageTitleSubtitleSpec *)self titleSubtitleSpec];
  v10 = titleSubtitleSpec2;
  if (titleSubtitleSpec == titleSubtitleSpec2)
  {
  }

  else
  {
    v11 = [titleSubtitleSpec isEqual:titleSubtitleSpec2];

    if ((v11 & 1) == 0)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_10;
    }
  }

  imageSpec = [v7 imageSpec];
  imageSpec2 = [(PXImageTitleSubtitleSpec *)self imageSpec];
  if (imageSpec == imageSpec2)
  {
    v12 = 1;
  }

  else
  {
    v12 = [imageSpec isEqual:imageSpec2];
  }

LABEL_10:
  return v12;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = PXImageTitleSubtitleSpec;
  v3 = [(PXViewSpec *)&v9 hash];
  titleSubtitleSpec = [(PXImageTitleSubtitleSpec *)self titleSubtitleSpec];
  v5 = [titleSubtitleSpec hash];

  imageSpec = [(PXImageTitleSubtitleSpec *)self imageSpec];
  v7 = v5 ^ [imageSpec hash];

  return v7 ^ v3;
}

@end