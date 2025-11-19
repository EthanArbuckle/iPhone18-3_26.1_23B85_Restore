@interface MRTouch
+ (id)touchWithLocation:(CGPoint)a3 timestamp:(double)a4 tapCount:(unint64_t)a5;
+ (id)touchWithUITouch:(id)a3 inView:(id)a4;
- (CGPoint)location;
- (MRTouch)initWithUITouch:(id)a3 inView:(id)a4;
- (id)description;
- (void)addGestureRecognizer:(id)a3;
- (void)dealloc;
@end

@implementation MRTouch

+ (id)touchWithLocation:(CGPoint)a3 timestamp:(double)a4 tapCount:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  v9 = objc_alloc_init(MRTouch);
  v9->_location.x = x;
  v9->_location.y = y;
  v9->_timestamp = a4;
  v9->_tapCount = a5;
  v9->_phase = 0;

  return v9;
}

- (MRTouch)initWithUITouch:(id)a3 inView:(id)a4
{
  v15.receiver = self;
  v15.super_class = MRTouch;
  v6 = [(MRTouch *)&v15 init];
  if (v6)
  {
    [a3 locationInView:a4];
    v6->_location.x = v7;
    v6->_location.y = v8;
    [a4 contentScaleFactor];
    v6->_location.x = v9 * v6->_location.x;
    [a4 bounds];
    v11 = v10 - v6->_location.y;
    [a4 contentScaleFactor];
    v6->_location.y = v12 * v11;
    [a3 timestamp];
    v6->_timestamp = v13;
    v6->_tapCount = [a3 tapCount];
    v6->_phase = [a3 phase];
  }

  return v6;
}

+ (id)touchWithUITouch:(id)a3 inView:(id)a4
{
  v4 = [[MRTouch alloc] initWithUITouch:a3 inView:a4];

  return v4;
}

- (void)dealloc
{
  self->_gestureRecognizers = 0;
  v3.receiver = self;
  v3.super_class = MRTouch;
  [(MRTouch *)&v3 dealloc];
}

- (void)addGestureRecognizer:(id)a3
{
  gestureRecognizers = self->_gestureRecognizers;
  if (!gestureRecognizers)
  {
    gestureRecognizers = objc_alloc_init(NSMutableArray);
    self->_gestureRecognizers = gestureRecognizers;
  }

  [(NSMutableArray *)gestureRecognizers addObject:a3];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MRTouch;
  v3 = [(MRTouch *)&v6 description];
  phase = self->_phase;
  if (phase >= 5)
  {
    phase = 5;
  }

  return [v3 stringByAppendingFormat:@" location=(%f, %f), timestamp=%f, tapCount=%d, phase=%@, numberOfGestureRecognizers=%d", *&self->_location, *&self->_timestamp, self->_tapCount, off_1AB060[phase], -[NSMutableArray count](self->_gestureRecognizers, "count")];
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end