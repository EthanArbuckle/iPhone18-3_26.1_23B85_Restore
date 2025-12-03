@interface SFMagicHeadMarkerView
- (SFMagicHeadMarkerView)initWithPositionDegree:(double)degree containerRadius:(double)radius;
- (void)updateMarkerWithDegreeOffset:(double)offset;
@end

@implementation SFMagicHeadMarkerView

- (SFMagicHeadMarkerView)initWithPositionDegree:(double)degree containerRadius:(double)radius
{
  v10.receiver = self;
  v10.super_class = SFMagicHeadMarkerView;
  v6 = [(SFMagicHeadMarkerView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_positionDegree = degree;
    v6->_containerRadius = radius;
    [(SFMagicHeadMarkerView *)v6 setBounds:0.0, 0.0, 5.0, 10.0];
    systemPurpleColor = [MEMORY[0x1E69DC888] systemPurpleColor];
    [(SFMagicHeadMarkerView *)v7 setBackgroundColor:systemPurpleColor];
  }

  return v7;
}

- (void)updateMarkerWithDegreeOffset:(double)offset
{
  v4 = self->_positionDegree + offset;
  self->_currentOffset = v4;
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  v7 = *&v13.a;
  *&v13.c = v6;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  v5 = *&v13.tx;
  *&v4 = v4;
  *&v4 = *&v4 * 0.0174532925;
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, *&v4);
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeTranslation(&v11, 0.0, -self->_containerRadius);
  t1 = v12;
  *&t2.a = v7;
  *&t2.c = v6;
  *&t2.tx = v5;
  CGAffineTransformConcat(&v13, &t1, &t2);
  t2 = v11;
  v8 = v13;
  CGAffineTransformConcat(&t1, &t2, &v8);
  v13 = t1;
  [(SFMagicHeadMarkerView *)self setTransform:&t1];
}

@end