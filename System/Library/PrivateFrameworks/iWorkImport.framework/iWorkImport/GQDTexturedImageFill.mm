@interface GQDTexturedImageFill
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
- (void)dealloc;
- (void)setColor:(id)color;
@end

@implementation GQDTexturedImageFill

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTexturedImageFill;
  [(GQDTexturedImageFill *)&v3 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  if (sub_42FBC(reader, qword_A35E8, "technique", &dword_A40E8, &self->mTechnique))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)setColor:(id)color
{
  mColor = self->mColor;
  if (mColor != color)
  {

    self->mColor = color;
  }
}

@end