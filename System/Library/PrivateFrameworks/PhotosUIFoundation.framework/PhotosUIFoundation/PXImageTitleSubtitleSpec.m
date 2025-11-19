@interface PXImageTitleSubtitleSpec
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXImageTitleSubtitleSpec

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = PXImageTitleSubtitleSpec;
  v5 = [(PXViewSpec *)&v11 copyWithZone:?];
  v6 = [(PXTitleSubtitleLabelSpec *)self->_titleSubtitleSpec copyWithZone:a3];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [(PXImageViewSpec *)self->_imageSpec copyWithZone:a3];
  v9 = v5[13];
  v5[13] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PXImageTitleSubtitleSpec;
  v5 = [(PXViewSpec *)&v16 isEqual:v4];
  v6 = v4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = [v6 titleSubtitleSpec];
  v9 = [(PXImageTitleSubtitleSpec *)self titleSubtitleSpec];
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_10;
    }
  }

  v13 = [v7 imageSpec];
  v14 = [(PXImageTitleSubtitleSpec *)self imageSpec];
  if (v13 == v14)
  {
    v12 = 1;
  }

  else
  {
    v12 = [v13 isEqual:v14];
  }

LABEL_10:
  return v12;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = PXImageTitleSubtitleSpec;
  v3 = [(PXViewSpec *)&v9 hash];
  v4 = [(PXImageTitleSubtitleSpec *)self titleSubtitleSpec];
  v5 = [v4 hash];

  v6 = [(PXImageTitleSubtitleSpec *)self imageSpec];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

@end