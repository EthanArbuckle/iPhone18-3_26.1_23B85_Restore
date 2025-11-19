@interface MRGesture
- (CGPoint)currentTranslation;
- (CGPoint)locationInSlideAtStart;
- (CGPoint)locationInViewAtStart;
- (CGPoint)slideCenterAtStart;
- (MRGesture)initWithHitBlob:(id)a3;
- (void)dealloc;
@end

@implementation MRGesture

- (MRGesture)initWithHitBlob:(id)a3
{
  v4 = [(MRGesture *)self init];
  if (v4)
  {
    v4->_hitBlob = a3;
  }

  return v4;
}

- (void)dealloc
{
  self->_hitBlob = 0;
  v3.receiver = self;
  v3.super_class = MRGesture;
  [(MRGesture *)&v3 dealloc];
}

- (CGPoint)locationInViewAtStart
{
  objc_copyStruct(v4, &self->_locationInViewAtStart, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)locationInSlideAtStart
{
  objc_copyStruct(v4, &self->_locationInSlideAtStart, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)slideCenterAtStart
{
  objc_copyStruct(v4, &self->_slideCenterAtStart, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)currentTranslation
{
  objc_copyStruct(v4, &self->_currentTranslation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end