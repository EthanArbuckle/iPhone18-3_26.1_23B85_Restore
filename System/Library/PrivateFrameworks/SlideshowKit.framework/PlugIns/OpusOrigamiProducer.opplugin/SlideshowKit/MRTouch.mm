@interface MRTouch
+ (id)touchWithLocation:(CGPoint)location timestamp:(double)timestamp tapCount:(unint64_t)count;
+ (id)touchWithUITouch:(id)touch inView:(id)view;
- (CGPoint)location;
- (MRTouch)initWithUITouch:(id)touch inView:(id)view;
- (id)description;
- (void)addGestureRecognizer:(id)recognizer;
- (void)dealloc;
@end

@implementation MRTouch

+ (id)touchWithLocation:(CGPoint)location timestamp:(double)timestamp tapCount:(unint64_t)count
{
  y = location.y;
  x = location.x;
  v9 = objc_alloc_init(MRTouch);
  v9->_location.x = x;
  v9->_location.y = y;
  v9->_timestamp = timestamp;
  v9->_tapCount = count;
  v9->_phase = 0;

  return v9;
}

- (MRTouch)initWithUITouch:(id)touch inView:(id)view
{
  v15.receiver = self;
  v15.super_class = MRTouch;
  v6 = [(MRTouch *)&v15 init];
  if (v6)
  {
    [touch locationInView:view];
    v6->_location.x = v7;
    v6->_location.y = v8;
    [view contentScaleFactor];
    v6->_location.x = v9 * v6->_location.x;
    [view bounds];
    v11 = v10 - v6->_location.y;
    [view contentScaleFactor];
    v6->_location.y = v12 * v11;
    [touch timestamp];
    v6->_timestamp = v13;
    v6->_tapCount = [touch tapCount];
    v6->_phase = [touch phase];
  }

  return v6;
}

+ (id)touchWithUITouch:(id)touch inView:(id)view
{
  v4 = [[MRTouch alloc] initWithUITouch:touch inView:view];

  return v4;
}

- (void)dealloc
{
  self->_gestureRecognizers = 0;
  v3.receiver = self;
  v3.super_class = MRTouch;
  [(MRTouch *)&v3 dealloc];
}

- (void)addGestureRecognizer:(id)recognizer
{
  gestureRecognizers = self->_gestureRecognizers;
  if (!gestureRecognizers)
  {
    gestureRecognizers = objc_alloc_init(NSMutableArray);
    self->_gestureRecognizers = gestureRecognizers;
  }

  [(NSMutableArray *)gestureRecognizers addObject:recognizer];
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