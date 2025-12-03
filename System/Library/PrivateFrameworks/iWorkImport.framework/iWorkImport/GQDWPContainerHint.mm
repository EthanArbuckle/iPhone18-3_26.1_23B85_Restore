@interface GQDWPContainerHint
- (CGRect)frame;
- (GQDWPContainerHint)initWithPageIndex:(int64_t)index cIndex:(int64_t)cIndex sIndex:(int64_t)sIndex lIndex:(int64_t)lIndex anchorLocation:(int64_t)location frame:(CGRect)frame;
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
@end

@implementation GQDWPContainerHint

- (GQDWPContainerHint)initWithPageIndex:(int64_t)index cIndex:(int64_t)cIndex sIndex:(int64_t)sIndex lIndex:(int64_t)lIndex anchorLocation:(int64_t)location frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18.receiver = self;
  v18.super_class = GQDWPContainerHint;
  result = [(GQDWPContainerHint *)&v18 init];
  if (result)
  {
    result->mPageIndex = index;
    result->mCIndex = cIndex;
    result->mSIndex = sIndex;
    result->mLIndex = lIndex;
    result->mAnchorLocation = location;
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

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  if (!sub_42384(reader, qword_A35E8, "page-index", &self->mPageIndex) || !sub_42384(reader, qword_A35E8, "cindex", &self->mCIndex) || !sub_42384(reader, qword_A35E8, "sindex", &self->mSIndex) || (sub_42384(reader, qword_A35E8, "lindex", &self->mLIndex) & 1) == 0)
  {
    sub_4290C(reader, qword_A35E8, "attachment-pos");
    self->mAttachmentPosition = v12;
    return 3;
  }

  v5 = sub_42384(reader, qword_A35E8, "anchor-loc", &self->mAnchorLocation);
  sub_4290C(reader, qword_A35E8, "attachment-pos");
  self->mAttachmentPosition = v6;
  if (!v5)
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "frame-x", &self->mFrame.origin.x);
  if (!v7)
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "frame-y", &self->mFrame.origin.y);
  if (!v8)
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "frame-w", &self->mFrame.size.width);
  v9 = 3;
  if (v10)
  {
    sub_428CC(reader, qword_A35E8, "frame-h", &self->mFrame.size.height);
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