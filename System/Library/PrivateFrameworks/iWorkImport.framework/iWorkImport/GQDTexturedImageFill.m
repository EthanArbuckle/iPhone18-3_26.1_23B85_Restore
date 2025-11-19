@interface GQDTexturedImageFill
- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4;
- (void)dealloc;
- (void)setColor:(id)a3;
@end

@implementation GQDTexturedImageFill

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTexturedImageFill;
  [(GQDTexturedImageFill *)&v3 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  if (sub_42FBC(a3, qword_A35E8, "technique", &dword_A40E8, &self->mTechnique))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)setColor:(id)a3
{
  mColor = self->mColor;
  if (mColor != a3)
  {

    self->mColor = a3;
  }
}

@end