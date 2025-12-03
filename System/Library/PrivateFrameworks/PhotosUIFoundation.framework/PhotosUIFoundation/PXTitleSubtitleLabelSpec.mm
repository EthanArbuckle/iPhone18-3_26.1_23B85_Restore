@interface PXTitleSubtitleLabelSpec
- (BOOL)isEqual:(id)equal;
- (UIEdgeInsets)padding;
- (double)maximumTitleSubtitleHeight;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXTitleSubtitleLabelSpec

- (double)maximumTitleSubtitleHeight
{
  titleLabelSpec = [(PXTitleSubtitleLabelSpec *)self titleLabelSpec];
  subtitleLabelSpec = [(PXTitleSubtitleLabelSpec *)self subtitleLabelSpec];
  [(PXTitleSubtitleLabelSpec *)self interLabelSpacing];
  v6 = v5;
  font = [titleLabelSpec font];
  BoundingBox = CTFontGetBoundingBox(font);
  Height = CGRectGetHeight(BoundingBox);
  v9 = Height * [titleLabelSpec numberOfLines];

  font2 = [subtitleLabelSpec font];
  v15 = CTFontGetBoundingBox(font2);
  v11 = CGRectGetHeight(v15);
  v12 = v11 * [subtitleLabelSpec numberOfLines];

  return ceil(v6 + v9 + v12) + 1.0;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = PXTitleSubtitleLabelSpec;
  v5 = [(PXViewSpec *)&v12 copyWithZone:?];
  v6 = [(PXLabelSpec *)self->_titleLabelSpec copyWithZone:zone];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [(PXLabelSpec *)self->_subtitleLabelSpec copyWithZone:zone];
  v9 = v5[13];
  v5[13] = v8;

  v5[14] = *&self->_interLabelSpacing;
  v5[15] = *&self->_distanceBetweenTitleBaselineAndSubtitleBaseline;
  v10 = *&self->_padding.bottom;
  *(v5 + 8) = *&self->_padding.top;
  *(v5 + 9) = v10;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v36.receiver = self;
  v36.super_class = PXTitleSubtitleLabelSpec;
  v5 = [(PXViewSpec *)&v36 isEqual:equalCopy];
  v6 = equalCopy;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_16;
  }

  titleLabelSpec = [v6 titleLabelSpec];
  titleLabelSpec2 = [(PXTitleSubtitleLabelSpec *)self titleLabelSpec];
  v10 = titleLabelSpec2;
  if (titleLabelSpec == titleLabelSpec2)
  {
  }

  else
  {
    v11 = [titleLabelSpec isEqual:titleLabelSpec2];

    if ((v11 & 1) == 0)
    {
LABEL_16:
      v33 = 0;
      goto LABEL_17;
    }
  }

  subtitleLabelSpec = [v7 subtitleLabelSpec];
  subtitleLabelSpec2 = [(PXTitleSubtitleLabelSpec *)self subtitleLabelSpec];
  v14 = subtitleLabelSpec2;
  if (subtitleLabelSpec == subtitleLabelSpec2)
  {
  }

  else
  {
    v15 = [subtitleLabelSpec isEqual:subtitleLabelSpec2];

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  [v7 interLabelSpacing];
  v17 = v16;
  [(PXTitleSubtitleLabelSpec *)self interLabelSpacing];
  if (v17 != v18)
  {
    goto LABEL_16;
  }

  [v7 distanceBetweenTitleBaselineAndSubtitleBaseline];
  v20 = v19;
  [(PXTitleSubtitleLabelSpec *)self distanceBetweenTitleBaselineAndSubtitleBaseline];
  if (v20 != v21)
  {
    goto LABEL_16;
  }

  [v7 padding];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(PXTitleSubtitleLabelSpec *)self padding];
  v33 = 0;
  if (v25 == v34 && v23 == v30 && v29 == v32)
  {
    v33 = v27 == v31;
  }

LABEL_17:

  return v33;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = PXTitleSubtitleLabelSpec;
  v3 = [(PXViewSpec *)&v12 hash];
  titleLabelSpec = [(PXTitleSubtitleLabelSpec *)self titleLabelSpec];
  v5 = [titleLabelSpec hash];

  subtitleLabelSpec = [(PXTitleSubtitleLabelSpec *)self subtitleLabelSpec];
  v7 = v5 ^ [subtitleLabelSpec hash] ^ v3;

  [(PXTitleSubtitleLabelSpec *)self distanceBetweenTitleBaselineAndSubtitleBaseline];
  v9 = (v8 * 1000.0);
  [(PXTitleSubtitleLabelSpec *)self padding];
  return v7 ^ v10 ^ v9;
}

@end