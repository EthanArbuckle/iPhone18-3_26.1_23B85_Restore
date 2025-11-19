@interface GQDWPContainerHint
- (CGRect)frame;
- (GQDWPContainerHint)initWithPageIndex:(int64_t)a3 cIndex:(int64_t)a4 sIndex:(int64_t)a5 lIndex:(int64_t)a6 anchorLocation:(int64_t)a7 frame:(CGRect)a8;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
@end

@implementation GQDWPContainerHint

- (GQDWPContainerHint)initWithPageIndex:(int64_t)a3 cIndex:(int64_t)a4 sIndex:(int64_t)a5 lIndex:(int64_t)a6 anchorLocation:(int64_t)a7 frame:(CGRect)a8
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v18.receiver = self;
  v18.super_class = GQDWPContainerHint;
  result = [(GQDWPContainerHint *)&v18 init];
  if (result)
  {
    result->mPageIndex = a3;
    result->mCIndex = a4;
    result->mSIndex = a5;
    result->mLIndex = a6;
    result->mAnchorLocation = a7;
    result->mAttachmentPosition = 0.0;
    result->mFrame.origin.x = x;
    result->mFrame.origin.y = y;
    result->mFrame.size.width = width;
    result->mFrame.size.height = height;
  }

  return result;
}

- (CGRect)frame
{
  x = self->mFrame.origin.x;
  y = self->mFrame.origin.y;
  width = self->mFrame.size.width;
  height = self->mFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  if (!sub_42384(a3, qword_A35E8, "page-index", &self->mPageIndex) || !sub_42384(a3, qword_A35E8, "cindex", &self->mCIndex) || !sub_42384(a3, qword_A35E8, "sindex", &self->mSIndex) || (sub_42384(a3, qword_A35E8, "lindex", &self->mLIndex) & 1) == 0)
  {
    sub_4290C(a3, qword_A35E8, "attachment-pos");
    self->mAttachmentPosition = v12;
    return 3;
  }

  v5 = sub_42384(a3, qword_A35E8, "anchor-loc", &self->mAnchorLocation);
  sub_4290C(a3, qword_A35E8, "attachment-pos");
  self->mAttachmentPosition = v6;
  if (!v5)
  {
    return 3;
  }

  sub_428CC(a3, qword_A35E8, "frame-x", &self->mFrame.origin.x);
  if (!v7)
  {
    return 3;
  }

  sub_428CC(a3, qword_A35E8, "frame-y", &self->mFrame.origin.y);
  if (!v8)
  {
    return 3;
  }

  sub_428CC(a3, qword_A35E8, "frame-w", &self->mFrame.size.width);
  v9 = 3;
  if (v10)
  {
    sub_428CC(a3, qword_A35E8, "frame-h", &self->mFrame.size.height);
    if (v11)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v9;
}

@end