@interface GQDWPPadding
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
@end

@implementation GQDWPPadding

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, off_9CD60);
  *&v5 = v5;
  self->mTop = *&v5;
  sub_4290C(a3, qword_A35E8, off_9CD68);
  *&v6 = v6;
  self->mLeft = *&v6;
  sub_4290C(a3, qword_A35E8, off_9CD70);
  *&v7 = v7;
  self->mBottom = *&v7;
  sub_4290C(a3, qword_A35E8, off_9CD78);
  *&v8 = v8;
  self->mRight = *&v8;
  return 1;
}

@end