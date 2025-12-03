@interface GQDBGAbstractSlide
- (int)readAttributesForSlide:(_xmlTextReader *)slide;
- (void)dealloc;
@end

@implementation GQDBGAbstractSlide

- (void)dealloc
{
  mID = self->mID;
  if (mID)
  {
    free(mID);
  }

  v4.receiver = self;
  v4.super_class = GQDBGAbstractSlide;
  [(GQDBGAbstractSlide *)&v4 dealloc];
}

- (int)readAttributesForSlide:(_xmlTextReader *)slide
{
  self->mHidden = sub_42340(slide, qword_A35F8, "hidden", 0);
  self->mID = xmlTextReaderGetAttributeNs(slide, off_9D3D8, *(qword_A35E0 + 16));
  return 1;
}

@end