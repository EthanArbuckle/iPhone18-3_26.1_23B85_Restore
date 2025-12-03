@interface VOSGesture
+ (NSSet)allGestures;
+ (NSSet)conflictingZoomGestures;
+ (NSSet)fiveFingerGestures;
+ (NSSet)fourFingerGestures;
+ (NSSet)oneFingerGestures;
+ (NSSet)oneFingerSplitGestures;
+ (NSSet)threeFingerGestures;
+ (NSSet)twoFingerGestures;
+ (NSSet)twoFingerSplitGestures;
+ (VOSGesture)BackTapDoubleTap;
+ (VOSGesture)BackTapTripleTap;
+ (VOSGesture)FiveFingerDoubleTap;
+ (VOSGesture)FiveFingerQuadrupleTap;
+ (VOSGesture)FiveFingerSingleTap;
+ (VOSGesture)FiveFingerTripleTap;
+ (VOSGesture)FourFingerDoubleTap;
+ (VOSGesture)FourFingerFlickDown;
+ (VOSGesture)FourFingerFlickLeft;
+ (VOSGesture)FourFingerFlickRight;
+ (VOSGesture)FourFingerFlickUp;
+ (VOSGesture)FourFingerQuadrupleTap;
+ (VOSGesture)FourFingerSingleTap;
+ (VOSGesture)FourFingerTripleTap;
+ (VOSGesture)Invalid;
+ (VOSGesture)OneFingerDoubleTap;
+ (VOSGesture)OneFingerDoubleTapAndHold;
+ (VOSGesture)OneFingerFlickDown;
+ (VOSGesture)OneFingerFlickLeft;
+ (VOSGesture)OneFingerFlickRight;
+ (VOSGesture)OneFingerFlickUp;
+ (VOSGesture)OneFingerQuadrupleTap;
+ (VOSGesture)OneFingerSingleTap;
+ (VOSGesture)OneFingerSingleTapAndHold;
+ (VOSGesture)OneFingerSplitFlickDown;
+ (VOSGesture)OneFingerSplitFlickLeft;
+ (VOSGesture)OneFingerSplitFlickRight;
+ (VOSGesture)OneFingerSplitFlickUp;
+ (VOSGesture)OneFingerTripleTap;
+ (VOSGesture)ThreeFingerDoubleTap;
+ (VOSGesture)ThreeFingerDoubleTapAndHold;
+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickDown;
+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickLeft;
+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickRight;
+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickUp;
+ (VOSGesture)ThreeFingerFlickDown;
+ (VOSGesture)ThreeFingerFlickLeft;
+ (VOSGesture)ThreeFingerFlickRight;
+ (VOSGesture)ThreeFingerFlickUp;
+ (VOSGesture)ThreeFingerQuadrupleTap;
+ (VOSGesture)ThreeFingerSingleTap;
+ (VOSGesture)ThreeFingerSingleTapAndHold;
+ (VOSGesture)ThreeFingerTripleTap;
+ (VOSGesture)TwoDistantFingerDoubleTap;
+ (VOSGesture)TwoDistantFingerSingleTap;
+ (VOSGesture)TwoDistantFingerTripleTap;
+ (VOSGesture)TwoFingerDoubleTap;
+ (VOSGesture)TwoFingerDoubleTapAndHold;
+ (VOSGesture)TwoFingerFlickDown;
+ (VOSGesture)TwoFingerFlickLeft;
+ (VOSGesture)TwoFingerFlickRight;
+ (VOSGesture)TwoFingerFlickUp;
+ (VOSGesture)TwoFingerPinch;
+ (VOSGesture)TwoFingerQuadrupleTap;
+ (VOSGesture)TwoFingerRotateClockwise;
+ (VOSGesture)TwoFingerRotateCounterclockwise;
+ (VOSGesture)TwoFingerScrub;
+ (VOSGesture)TwoFingerSingleTap;
+ (VOSGesture)TwoFingerSingleTapAndHold;
+ (VOSGesture)TwoFingerSplitFlickLeft;
+ (VOSGesture)TwoFingerSplitFlickRight;
+ (VOSGesture)TwoFingerTripleTap;
+ (VOSGesture)gestureWithStringValue:(id)value;
+ (id)_gesturesForFingerCount:(int64_t)count;
+ (id)_splitGesturesForFingerCount:(int64_t)count;
+ (id)horizontalMirrorGestureForGesture:(id)gesture;
+ (id)rtlGestureForGesture:(id)gesture;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedName;
- (VOSGesture)initWithCoder:(id)coder;
- (id)_initWithRawValue:(id)value;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOSGesture

- (id)_initWithRawValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = VOSGesture;
  v6 = [(VOSGesture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValue, value);
  }

  return v7;
}

- (VOSGesture)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawValue"];

  v6 = [(VOSGesture *)self _initWithRawValue:v5];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>: %@", v5, self, self->_rawValue];

  return v6;
}

- (unint64_t)hash
{
  rawValue = [(VOSGesture *)self rawValue];
  v3 = [rawValue hash];

  return v3;
}

+ (VOSGesture)OneFingerSingleTap
{
  if (OneFingerSingleTap_onceToken != -1)
  {
    +[VOSGesture OneFingerSingleTap];
  }

  v3 = OneFingerSingleTap__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_OneFingerSingleTap__block_invoke()
{
  OneFingerSingleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerSingleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerDoubleTap
{
  if (OneFingerDoubleTap_onceToken != -1)
  {
    +[VOSGesture OneFingerDoubleTap];
  }

  v3 = OneFingerDoubleTap__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_OneFingerDoubleTap__block_invoke()
{
  OneFingerDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerTripleTap
{
  if (OneFingerTripleTap_onceToken != -1)
  {
    +[VOSGesture OneFingerTripleTap];
  }

  v3 = OneFingerTripleTap__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_OneFingerTripleTap__block_invoke()
{
  OneFingerTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerQuadrupleTap
{
  if (OneFingerQuadrupleTap_onceToken != -1)
  {
    +[VOSGesture OneFingerQuadrupleTap];
  }

  v3 = OneFingerQuadrupleTap__Gesture;

  return v3;
}

uint64_t __35__VOSGesture_OneFingerQuadrupleTap__block_invoke()
{
  OneFingerQuadrupleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerQuadrupleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerSingleTap
{
  if (TwoFingerSingleTap_onceToken != -1)
  {
    +[VOSGesture TwoFingerSingleTap];
  }

  v3 = TwoFingerSingleTap__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_TwoFingerSingleTap__block_invoke()
{
  TwoFingerSingleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerSingleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerDoubleTap
{
  if (TwoFingerDoubleTap_onceToken != -1)
  {
    +[VOSGesture TwoFingerDoubleTap];
  }

  v3 = TwoFingerDoubleTap__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_TwoFingerDoubleTap__block_invoke()
{
  TwoFingerDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerTripleTap
{
  if (TwoFingerTripleTap_onceToken != -1)
  {
    +[VOSGesture TwoFingerTripleTap];
  }

  v3 = TwoFingerTripleTap__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_TwoFingerTripleTap__block_invoke()
{
  TwoFingerTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerQuadrupleTap
{
  if (TwoFingerQuadrupleTap_onceToken != -1)
  {
    +[VOSGesture TwoFingerQuadrupleTap];
  }

  v3 = TwoFingerQuadrupleTap__Gesture;

  return v3;
}

uint64_t __35__VOSGesture_TwoFingerQuadrupleTap__block_invoke()
{
  TwoFingerQuadrupleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerQuadrupleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoDistantFingerSingleTap
{
  if (TwoDistantFingerSingleTap_onceToken != -1)
  {
    +[VOSGesture TwoDistantFingerSingleTap];
  }

  v3 = TwoDistantFingerSingleTap__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_TwoDistantFingerSingleTap__block_invoke()
{
  TwoDistantFingerSingleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoDistantFingerSingleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoDistantFingerDoubleTap
{
  if (TwoDistantFingerDoubleTap_onceToken != -1)
  {
    +[VOSGesture TwoDistantFingerDoubleTap];
  }

  v3 = TwoDistantFingerDoubleTap__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_TwoDistantFingerDoubleTap__block_invoke()
{
  TwoDistantFingerDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoDistantFingerDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoDistantFingerTripleTap
{
  if (TwoDistantFingerTripleTap_onceToken != -1)
  {
    +[VOSGesture TwoDistantFingerTripleTap];
  }

  v3 = TwoDistantFingerTripleTap__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_TwoDistantFingerTripleTap__block_invoke()
{
  TwoDistantFingerTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoDistantFingerTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerSingleTap
{
  if (ThreeFingerSingleTap_onceToken != -1)
  {
    +[VOSGesture ThreeFingerSingleTap];
  }

  v3 = ThreeFingerSingleTap__Gesture;

  return v3;
}

uint64_t __34__VOSGesture_ThreeFingerSingleTap__block_invoke()
{
  ThreeFingerSingleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerSingleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerDoubleTap
{
  if (ThreeFingerDoubleTap_onceToken != -1)
  {
    +[VOSGesture ThreeFingerDoubleTap];
  }

  v3 = ThreeFingerDoubleTap__Gesture;

  return v3;
}

uint64_t __34__VOSGesture_ThreeFingerDoubleTap__block_invoke()
{
  ThreeFingerDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerTripleTap
{
  if (ThreeFingerTripleTap_onceToken != -1)
  {
    +[VOSGesture ThreeFingerTripleTap];
  }

  v3 = ThreeFingerTripleTap__Gesture;

  return v3;
}

uint64_t __34__VOSGesture_ThreeFingerTripleTap__block_invoke()
{
  ThreeFingerTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerQuadrupleTap
{
  if (ThreeFingerQuadrupleTap_onceToken != -1)
  {
    +[VOSGesture ThreeFingerQuadrupleTap];
  }

  v3 = ThreeFingerQuadrupleTap__Gesture;

  return v3;
}

uint64_t __37__VOSGesture_ThreeFingerQuadrupleTap__block_invoke()
{
  ThreeFingerQuadrupleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerQuadrupleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerSingleTap
{
  if (FourFingerSingleTap_onceToken != -1)
  {
    +[VOSGesture FourFingerSingleTap];
  }

  v3 = FourFingerSingleTap__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FourFingerSingleTap__block_invoke()
{
  FourFingerSingleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerSingleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerDoubleTap
{
  if (FourFingerDoubleTap_onceToken != -1)
  {
    +[VOSGesture FourFingerDoubleTap];
  }

  v3 = FourFingerDoubleTap__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FourFingerDoubleTap__block_invoke()
{
  FourFingerDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerTripleTap
{
  if (FourFingerTripleTap_onceToken != -1)
  {
    +[VOSGesture FourFingerTripleTap];
  }

  v3 = FourFingerTripleTap__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FourFingerTripleTap__block_invoke()
{
  FourFingerTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerQuadrupleTap
{
  if (FourFingerQuadrupleTap_onceToken != -1)
  {
    +[VOSGesture FourFingerQuadrupleTap];
  }

  v3 = FourFingerQuadrupleTap__Gesture;

  return v3;
}

uint64_t __36__VOSGesture_FourFingerQuadrupleTap__block_invoke()
{
  FourFingerQuadrupleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerQuadrupleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FiveFingerSingleTap
{
  if (FiveFingerSingleTap_onceToken != -1)
  {
    +[VOSGesture FiveFingerSingleTap];
  }

  v3 = FiveFingerSingleTap__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FiveFingerSingleTap__block_invoke()
{
  FiveFingerSingleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FiveFingerSingleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FiveFingerDoubleTap
{
  if (FiveFingerDoubleTap_onceToken != -1)
  {
    +[VOSGesture FiveFingerDoubleTap];
  }

  v3 = FiveFingerDoubleTap__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FiveFingerDoubleTap__block_invoke()
{
  FiveFingerDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FiveFingerDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FiveFingerTripleTap
{
  if (FiveFingerTripleTap_onceToken != -1)
  {
    +[VOSGesture FiveFingerTripleTap];
  }

  v3 = FiveFingerTripleTap__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FiveFingerTripleTap__block_invoke()
{
  FiveFingerTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FiveFingerTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FiveFingerQuadrupleTap
{
  if (FiveFingerQuadrupleTap_onceToken != -1)
  {
    +[VOSGesture FiveFingerQuadrupleTap];
  }

  v3 = FiveFingerQuadrupleTap__Gesture;

  return v3;
}

uint64_t __36__VOSGesture_FiveFingerQuadrupleTap__block_invoke()
{
  FiveFingerQuadrupleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FiveFingerQuadrupleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerFlickUp
{
  if (OneFingerFlickUp_onceToken != -1)
  {
    +[VOSGesture OneFingerFlickUp];
  }

  v3 = OneFingerFlickUp__Gesture;

  return v3;
}

uint64_t __30__VOSGesture_OneFingerFlickUp__block_invoke()
{
  OneFingerFlickUp__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerFlickUp"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerFlickDown
{
  if (OneFingerFlickDown_onceToken != -1)
  {
    +[VOSGesture OneFingerFlickDown];
  }

  v3 = OneFingerFlickDown__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_OneFingerFlickDown__block_invoke()
{
  OneFingerFlickDown__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerFlickDown"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerFlickLeft
{
  if (OneFingerFlickLeft_onceToken != -1)
  {
    +[VOSGesture OneFingerFlickLeft];
  }

  v3 = OneFingerFlickLeft__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_OneFingerFlickLeft__block_invoke()
{
  OneFingerFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerFlickRight
{
  if (OneFingerFlickRight_onceToken != -1)
  {
    +[VOSGesture OneFingerFlickRight];
  }

  v3 = OneFingerFlickRight__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_OneFingerFlickRight__block_invoke()
{
  OneFingerFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerFlickUp
{
  if (TwoFingerFlickUp_onceToken != -1)
  {
    +[VOSGesture TwoFingerFlickUp];
  }

  v3 = TwoFingerFlickUp__Gesture;

  return v3;
}

uint64_t __30__VOSGesture_TwoFingerFlickUp__block_invoke()
{
  TwoFingerFlickUp__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerFlickUp"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerFlickDown
{
  if (TwoFingerFlickDown_onceToken != -1)
  {
    +[VOSGesture TwoFingerFlickDown];
  }

  v3 = TwoFingerFlickDown__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_TwoFingerFlickDown__block_invoke()
{
  TwoFingerFlickDown__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerFlickDown"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerFlickLeft
{
  if (TwoFingerFlickLeft_onceToken != -1)
  {
    +[VOSGesture TwoFingerFlickLeft];
  }

  v3 = TwoFingerFlickLeft__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_TwoFingerFlickLeft__block_invoke()
{
  TwoFingerFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerFlickRight
{
  if (TwoFingerFlickRight_onceToken != -1)
  {
    +[VOSGesture TwoFingerFlickRight];
  }

  v3 = TwoFingerFlickRight__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_TwoFingerFlickRight__block_invoke()
{
  TwoFingerFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerFlickUp
{
  if (ThreeFingerFlickUp_onceToken != -1)
  {
    +[VOSGesture ThreeFingerFlickUp];
  }

  v3 = ThreeFingerFlickUp__Gesture;

  return v3;
}

uint64_t __32__VOSGesture_ThreeFingerFlickUp__block_invoke()
{
  ThreeFingerFlickUp__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerFlickUp"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerFlickDown
{
  if (ThreeFingerFlickDown_onceToken != -1)
  {
    +[VOSGesture ThreeFingerFlickDown];
  }

  v3 = ThreeFingerFlickDown__Gesture;

  return v3;
}

uint64_t __34__VOSGesture_ThreeFingerFlickDown__block_invoke()
{
  ThreeFingerFlickDown__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerFlickDown"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerFlickLeft
{
  if (ThreeFingerFlickLeft_onceToken != -1)
  {
    +[VOSGesture ThreeFingerFlickLeft];
  }

  v3 = ThreeFingerFlickLeft__Gesture;

  return v3;
}

uint64_t __34__VOSGesture_ThreeFingerFlickLeft__block_invoke()
{
  ThreeFingerFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerFlickRight
{
  if (ThreeFingerFlickRight_onceToken != -1)
  {
    +[VOSGesture ThreeFingerFlickRight];
  }

  v3 = ThreeFingerFlickRight__Gesture;

  return v3;
}

uint64_t __35__VOSGesture_ThreeFingerFlickRight__block_invoke()
{
  ThreeFingerFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickUp
{
  if (ThreeFingerDoubleTapHoldAndFlickUp_onceToken != -1)
  {
    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
  }

  v3 = ThreeFingerDoubleTapHoldAndFlickUp__Gesture;

  return v3;
}

uint64_t __48__VOSGesture_ThreeFingerDoubleTapHoldAndFlickUp__block_invoke()
{
  ThreeFingerDoubleTapHoldAndFlickUp__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerDoubleTapHoldAndFlickUp"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickDown
{
  if (ThreeFingerDoubleTapHoldAndFlickDown_onceToken != -1)
  {
    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];
  }

  v3 = ThreeFingerDoubleTapHoldAndFlickDown__Gesture;

  return v3;
}

uint64_t __50__VOSGesture_ThreeFingerDoubleTapHoldAndFlickDown__block_invoke()
{
  ThreeFingerDoubleTapHoldAndFlickDown__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerDoubleTapHoldAndFlickDown"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickLeft
{
  if (ThreeFingerDoubleTapHoldAndFlickLeft_onceToken != -1)
  {
    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
  }

  v3 = ThreeFingerDoubleTapHoldAndFlickLeft__Gesture;

  return v3;
}

uint64_t __50__VOSGesture_ThreeFingerDoubleTapHoldAndFlickLeft__block_invoke()
{
  ThreeFingerDoubleTapHoldAndFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerDoubleTapHoldAndFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerDoubleTapHoldAndFlickRight
{
  if (ThreeFingerDoubleTapHoldAndFlickRight_onceToken != -1)
  {
    +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
  }

  v3 = ThreeFingerDoubleTapHoldAndFlickRight__Gesture;

  return v3;
}

uint64_t __51__VOSGesture_ThreeFingerDoubleTapHoldAndFlickRight__block_invoke()
{
  ThreeFingerDoubleTapHoldAndFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerDoubleTapHoldAndFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerFlickUp
{
  if (FourFingerFlickUp_onceToken != -1)
  {
    +[VOSGesture FourFingerFlickUp];
  }

  v3 = FourFingerFlickUp__Gesture;

  return v3;
}

uint64_t __31__VOSGesture_FourFingerFlickUp__block_invoke()
{
  FourFingerFlickUp__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerFlickUp"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerFlickDown
{
  if (FourFingerFlickDown_onceToken != -1)
  {
    +[VOSGesture FourFingerFlickDown];
  }

  v3 = FourFingerFlickDown__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FourFingerFlickDown__block_invoke()
{
  FourFingerFlickDown__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerFlickDown"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerFlickLeft
{
  if (FourFingerFlickLeft_onceToken != -1)
  {
    +[VOSGesture FourFingerFlickLeft];
  }

  v3 = FourFingerFlickLeft__Gesture;

  return v3;
}

uint64_t __33__VOSGesture_FourFingerFlickLeft__block_invoke()
{
  FourFingerFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)FourFingerFlickRight
{
  if (FourFingerFlickRight_onceToken != -1)
  {
    +[VOSGesture FourFingerFlickRight];
  }

  v3 = FourFingerFlickRight__Gesture;

  return v3;
}

uint64_t __34__VOSGesture_FourFingerFlickRight__block_invoke()
{
  FourFingerFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"FourFingerFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerSplitFlickUp
{
  if (OneFingerSplitFlickUp_onceToken != -1)
  {
    +[VOSGesture OneFingerSplitFlickUp];
  }

  v3 = OneFingerSplitFlickUp__Gesture;

  return v3;
}

uint64_t __35__VOSGesture_OneFingerSplitFlickUp__block_invoke()
{
  OneFingerSplitFlickUp__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerSplitFlickUp"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerSplitFlickDown
{
  if (OneFingerSplitFlickDown_onceToken != -1)
  {
    +[VOSGesture OneFingerSplitFlickDown];
  }

  v3 = OneFingerSplitFlickDown__Gesture;

  return v3;
}

uint64_t __37__VOSGesture_OneFingerSplitFlickDown__block_invoke()
{
  OneFingerSplitFlickDown__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerSplitFlickDown"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerSplitFlickLeft
{
  if (OneFingerSplitFlickLeft_onceToken != -1)
  {
    +[VOSGesture OneFingerSplitFlickLeft];
  }

  v3 = OneFingerSplitFlickLeft__Gesture;

  return v3;
}

uint64_t __37__VOSGesture_OneFingerSplitFlickLeft__block_invoke()
{
  OneFingerSplitFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerSplitFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerSplitFlickRight
{
  if (OneFingerSplitFlickRight_onceToken != -1)
  {
    +[VOSGesture OneFingerSplitFlickRight];
  }

  v3 = OneFingerSplitFlickRight__Gesture;

  return v3;
}

uint64_t __38__VOSGesture_OneFingerSplitFlickRight__block_invoke()
{
  OneFingerSplitFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerSplitFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerSplitFlickLeft
{
  if (TwoFingerSplitFlickLeft_onceToken != -1)
  {
    +[VOSGesture TwoFingerSplitFlickLeft];
  }

  v3 = TwoFingerSplitFlickLeft__Gesture;

  return v3;
}

uint64_t __37__VOSGesture_TwoFingerSplitFlickLeft__block_invoke()
{
  TwoFingerSplitFlickLeft__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerSplitFlickLeft"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerSplitFlickRight
{
  if (TwoFingerSplitFlickRight_onceToken != -1)
  {
    +[VOSGesture TwoFingerSplitFlickRight];
  }

  v3 = TwoFingerSplitFlickRight__Gesture;

  return v3;
}

uint64_t __38__VOSGesture_TwoFingerSplitFlickRight__block_invoke()
{
  TwoFingerSplitFlickRight__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerSplitFlickRight"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerRotateClockwise
{
  if (TwoFingerRotateClockwise_onceToken != -1)
  {
    +[VOSGesture TwoFingerRotateClockwise];
  }

  v3 = TwoFingerRotateClockwise__Gesture;

  return v3;
}

uint64_t __38__VOSGesture_TwoFingerRotateClockwise__block_invoke()
{
  TwoFingerRotateClockwise__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerRotateClockwise"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerRotateCounterclockwise
{
  if (TwoFingerRotateCounterclockwise_onceToken != -1)
  {
    +[VOSGesture TwoFingerRotateCounterclockwise];
  }

  v3 = TwoFingerRotateCounterclockwise__Gesture;

  return v3;
}

uint64_t __45__VOSGesture_TwoFingerRotateCounterclockwise__block_invoke()
{
  TwoFingerRotateCounterclockwise__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerRotateCounterclockwise"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerPinch
{
  if (TwoFingerPinch_onceToken != -1)
  {
    +[VOSGesture TwoFingerPinch];
  }

  v3 = TwoFingerPinch__Gesture;

  return v3;
}

uint64_t __28__VOSGesture_TwoFingerPinch__block_invoke()
{
  TwoFingerPinch__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerPinch"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerScrub
{
  if (TwoFingerScrub_onceToken != -1)
  {
    +[VOSGesture TwoFingerScrub];
  }

  v3 = TwoFingerScrub__Gesture;

  return v3;
}

uint64_t __28__VOSGesture_TwoFingerScrub__block_invoke()
{
  TwoFingerScrub__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerScrub"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerSingleTapAndHold
{
  if (OneFingerSingleTapAndHold_onceToken != -1)
  {
    +[VOSGesture OneFingerSingleTapAndHold];
  }

  v3 = OneFingerSingleTapAndHold__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_OneFingerSingleTapAndHold__block_invoke()
{
  OneFingerSingleTapAndHold__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerSingleTapAndHold"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)OneFingerDoubleTapAndHold
{
  if (OneFingerDoubleTapAndHold_onceToken != -1)
  {
    +[VOSGesture OneFingerDoubleTapAndHold];
  }

  v3 = OneFingerDoubleTapAndHold__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_OneFingerDoubleTapAndHold__block_invoke()
{
  OneFingerDoubleTapAndHold__Gesture = [[VOSGesture alloc] _initWithRawValue:@"OneFingerDoubleTapAndHold"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerSingleTapAndHold
{
  if (TwoFingerSingleTapAndHold_onceToken != -1)
  {
    +[VOSGesture TwoFingerSingleTapAndHold];
  }

  v3 = TwoFingerSingleTapAndHold__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_TwoFingerSingleTapAndHold__block_invoke()
{
  TwoFingerSingleTapAndHold__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerSingleTapAndHold"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)TwoFingerDoubleTapAndHold
{
  if (TwoFingerDoubleTapAndHold_onceToken != -1)
  {
    +[VOSGesture TwoFingerDoubleTapAndHold];
  }

  v3 = TwoFingerDoubleTapAndHold__Gesture;

  return v3;
}

uint64_t __39__VOSGesture_TwoFingerDoubleTapAndHold__block_invoke()
{
  TwoFingerDoubleTapAndHold__Gesture = [[VOSGesture alloc] _initWithRawValue:@"TwoFingerDoubleTapAndHold"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerSingleTapAndHold
{
  if (ThreeFingerSingleTapAndHold_onceToken != -1)
  {
    +[VOSGesture ThreeFingerSingleTapAndHold];
  }

  v3 = ThreeFingerSingleTapAndHold__Gesture;

  return v3;
}

uint64_t __41__VOSGesture_ThreeFingerSingleTapAndHold__block_invoke()
{
  ThreeFingerSingleTapAndHold__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerSingleTapAndHold"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)ThreeFingerDoubleTapAndHold
{
  if (ThreeFingerDoubleTapAndHold_onceToken != -1)
  {
    +[VOSGesture ThreeFingerDoubleTapAndHold];
  }

  v3 = ThreeFingerDoubleTapAndHold__Gesture;

  return v3;
}

uint64_t __41__VOSGesture_ThreeFingerDoubleTapAndHold__block_invoke()
{
  ThreeFingerDoubleTapAndHold__Gesture = [[VOSGesture alloc] _initWithRawValue:@"ThreeFingerDoubleTapAndHold"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)BackTapDoubleTap
{
  if (BackTapDoubleTap_onceToken != -1)
  {
    +[VOSGesture BackTapDoubleTap];
  }

  v3 = BackTapDoubleTap__Gesture;

  return v3;
}

uint64_t __30__VOSGesture_BackTapDoubleTap__block_invoke()
{
  BackTapDoubleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"BackTapDoubleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)BackTapTripleTap
{
  if (BackTapTripleTap_onceToken != -1)
  {
    +[VOSGesture BackTapTripleTap];
  }

  v3 = BackTapTripleTap__Gesture;

  return v3;
}

uint64_t __30__VOSGesture_BackTapTripleTap__block_invoke()
{
  BackTapTripleTap__Gesture = [[VOSGesture alloc] _initWithRawValue:@"BackTapTripleTap"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSGesture)Invalid
{
  if (Invalid_onceToken != -1)
  {
    +[VOSGesture Invalid];
  }

  v3 = Invalid__Gesture;

  return v3;
}

uint64_t __21__VOSGesture_Invalid__block_invoke()
{
  Invalid__Gesture = [[VOSGesture alloc] _initWithRawValue:@"Invalid"];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)allGestures
{
  if (allGestures_onceToken != -1)
  {
    +[VOSGesture allGestures];
  }

  v3 = allGestures__AllGestures;

  return v3;
}

void __25__VOSGesture_allGestures__block_invoke()
{
  v14 = MEMORY[0x277CBEB98];
  v63 = +[VOSGesture OneFingerSingleTap];
  v62 = +[VOSGesture OneFingerDoubleTap];
  v61 = +[VOSGesture OneFingerTripleTap];
  v60 = +[VOSGesture OneFingerQuadrupleTap];
  v59 = +[VOSGesture TwoFingerSingleTap];
  v58 = +[VOSGesture TwoFingerDoubleTap];
  v57 = +[VOSGesture TwoFingerTripleTap];
  v56 = +[VOSGesture TwoFingerQuadrupleTap];
  v55 = +[VOSGesture TwoDistantFingerSingleTap];
  v54 = +[VOSGesture TwoDistantFingerDoubleTap];
  v53 = +[VOSGesture TwoDistantFingerTripleTap];
  v52 = +[VOSGesture ThreeFingerSingleTap];
  v51 = +[VOSGesture ThreeFingerDoubleTap];
  v50 = +[VOSGesture ThreeFingerTripleTap];
  v49 = +[VOSGesture ThreeFingerQuadrupleTap];
  v48 = +[VOSGesture FourFingerSingleTap];
  v47 = +[VOSGesture FourFingerDoubleTap];
  v46 = +[VOSGesture FourFingerTripleTap];
  v45 = +[VOSGesture FourFingerQuadrupleTap];
  v44 = +[VOSGesture FiveFingerSingleTap];
  v43 = +[VOSGesture FiveFingerDoubleTap];
  v42 = +[VOSGesture FiveFingerTripleTap];
  v41 = +[VOSGesture FiveFingerQuadrupleTap];
  v40 = +[VOSGesture OneFingerFlickUp];
  v39 = +[VOSGesture OneFingerFlickDown];
  v38 = +[VOSGesture OneFingerFlickLeft];
  v37 = +[VOSGesture OneFingerFlickRight];
  v36 = +[VOSGesture TwoFingerFlickUp];
  v35 = +[VOSGesture TwoFingerFlickDown];
  v34 = +[VOSGesture TwoFingerFlickLeft];
  v33 = +[VOSGesture TwoFingerFlickRight];
  v29 = +[VOSGesture ThreeFingerFlickUp];
  v31 = +[VOSGesture ThreeFingerFlickDown];
  v32 = +[VOSGesture ThreeFingerFlickLeft];
  v30 = +[VOSGesture ThreeFingerFlickRight];
  v26 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
  v28 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];
  v13 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
  v27 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
  v25 = +[VOSGesture FourFingerFlickUp];
  v12 = +[VOSGesture FourFingerFlickDown];
  v24 = +[VOSGesture FourFingerFlickLeft];
  v23 = +[VOSGesture FourFingerFlickRight];
  v22 = +[VOSGesture OneFingerSplitFlickUp];
  v21 = +[VOSGesture OneFingerSplitFlickDown];
  v20 = +[VOSGesture OneFingerSplitFlickLeft];
  v19 = +[VOSGesture OneFingerSplitFlickRight];
  v18 = +[VOSGesture TwoFingerSplitFlickLeft];
  v17 = +[VOSGesture TwoFingerSplitFlickRight];
  v16 = +[VOSGesture TwoFingerRotateClockwise];
  v15 = +[VOSGesture TwoFingerRotateCounterclockwise];
  v11 = +[VOSGesture TwoFingerPinch];
  v0 = +[VOSGesture TwoFingerScrub];
  v10 = +[VOSGesture OneFingerSingleTapAndHold];
  v1 = +[VOSGesture OneFingerDoubleTapAndHold];
  v2 = +[VOSGesture TwoFingerSingleTapAndHold];
  v3 = +[VOSGesture TwoFingerDoubleTapAndHold];
  v4 = +[VOSGesture ThreeFingerSingleTapAndHold];
  v5 = +[VOSGesture ThreeFingerDoubleTapAndHold];
  v6 = +[VOSGesture BackTapDoubleTap];
  v7 = +[VOSGesture BackTapTripleTap];
  v8 = [v14 setWithObjects:{v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v29, v31, v32, v30, v26, v28, v13, v27, v25, v12, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v11, v0, v10, v1, v2, v3, v4, v5, v6, v7}];
  v9 = allGestures__AllGestures;
  allGestures__AllGestures = v8;
}

+ (VOSGesture)gestureWithStringValue:(id)value
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allGestures = [self allGestures];
  v6 = [allGestures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allGestures);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9[1] isEqualToString:valueCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allGestures countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)horizontalMirrorGestureForGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = +[VOSGesture OneFingerFlickLeft];

  v5 = +[VOSGesture OneFingerFlickRight];
  v6 = v5;
  if (v4 != gestureCopy)
  {

    if (v6 == gestureCopy)
    {
      v19 = +[VOSGesture OneFingerFlickLeft];
    }

    else
    {
      v7 = +[VOSGesture TwoFingerFlickLeft];

      v8 = +[VOSGesture TwoFingerFlickRight];
      v6 = v8;
      if (v7 == gestureCopy)
      {
        goto LABEL_24;
      }

      if (v6 == gestureCopy)
      {
        v19 = +[VOSGesture TwoFingerFlickLeft];
      }

      else
      {
        v9 = +[VOSGesture ThreeFingerFlickLeft];

        v10 = +[VOSGesture ThreeFingerFlickRight];
        v6 = v10;
        if (v9 == gestureCopy)
        {
          goto LABEL_24;
        }

        if (v6 == gestureCopy)
        {
          v19 = +[VOSGesture ThreeFingerFlickLeft];
        }

        else
        {
          v11 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];

          v12 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
          v6 = v12;
          if (v11 == gestureCopy)
          {
            goto LABEL_24;
          }

          if (v6 == gestureCopy)
          {
            v19 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
          }

          else
          {
            v13 = +[VOSGesture FourFingerFlickLeft];

            v14 = +[VOSGesture FourFingerFlickRight];
            v6 = v14;
            if (v13 == gestureCopy)
            {
              goto LABEL_24;
            }

            if (v6 == gestureCopy)
            {
              v19 = +[VOSGesture FourFingerFlickLeft];
            }

            else
            {
              v15 = +[VOSGesture OneFingerSplitFlickLeft];

              v16 = +[VOSGesture OneFingerSplitFlickRight];
              v6 = v16;
              if (v15 == gestureCopy)
              {
                goto LABEL_24;
              }

              if (v6 == gestureCopy)
              {
                v19 = +[VOSGesture OneFingerSplitFlickLeft];
              }

              else
              {
                v17 = +[VOSGesture TwoFingerSplitFlickLeft];

                v18 = +[VOSGesture TwoFingerSplitFlickRight];
                v6 = v18;
                if (v17 == gestureCopy)
                {
                  goto LABEL_24;
                }

                if (v6 != gestureCopy)
                {
                  v6 = 0;
                  goto LABEL_24;
                }

                v19 = +[VOSGesture TwoFingerSplitFlickLeft];
              }
            }
          }
        }
      }
    }

    v6 = v19;
  }

LABEL_24:

  return v6;
}

+ (id)rtlGestureForGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = +[VOSGesture OneFingerFlickLeft];

  v5 = +[VOSGesture OneFingerFlickRight];
  v6 = v5;
  if (v4 != gestureCopy)
  {

    if (v6 == gestureCopy)
    {
      v11 = +[VOSGesture OneFingerFlickLeft];
    }

    else
    {
      v7 = +[VOSGesture OneFingerSplitFlickLeft];

      v8 = +[VOSGesture OneFingerSplitFlickRight];
      v6 = v8;
      if (v7 == gestureCopy)
      {
        goto LABEL_12;
      }

      if (v6 == gestureCopy)
      {
        v11 = +[VOSGesture OneFingerSplitFlickLeft];
      }

      else
      {
        v9 = +[VOSGesture TwoFingerSplitFlickLeft];

        v10 = +[VOSGesture TwoFingerSplitFlickRight];
        v6 = v10;
        if (v9 == gestureCopy)
        {
          goto LABEL_12;
        }

        if (v6 != gestureCopy)
        {
          v6 = 0;
          goto LABEL_12;
        }

        v11 = +[VOSGesture TwoFingerSplitFlickLeft];
      }
    }

    v6 = v11;
  }

LABEL_12:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    rawValue = self->_rawValue;
    rawValue = [equalCopy rawValue];
    LOBYTE(rawValue) = [(NSString *)rawValue isEqualToString:rawValue];

    if (rawValue)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (NSString)localizedName
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"VOSGesture.%@", self->_rawValue];
  v3 = VOSLocString(v2);

  return v3;
}

+ (id)_gesturesForFingerCount:(int64_t)count
{
  v4 = [MEMORY[0x277CBEB58] set];
  if (count > 3)
  {
    if (count > 10)
    {
      if (count == 11)
      {
        v56 = +[VOSGesture OneFingerSplitFlickUp];
        [v4 addObject:v56];

        v57 = +[VOSGesture OneFingerSplitFlickDown];
        [v4 addObject:v57];

        v58 = +[VOSGesture OneFingerSplitFlickLeft];
        [v4 addObject:v58];

        v14 = +[VOSGesture OneFingerSplitFlickRight];
      }

      else
      {
        if (count != 12)
        {
          goto LABEL_21;
        }

        v31 = +[VOSGesture TwoFingerSplitFlickLeft];
        [v4 addObject:v31];

        v14 = +[VOSGesture TwoFingerSplitFlickRight];
      }
    }

    else if (count == 4)
    {
      v33 = +[VOSGesture FourFingerSingleTap];
      [v4 addObject:v33];

      v34 = +[VOSGesture FourFingerDoubleTap];
      [v4 addObject:v34];

      v35 = +[VOSGesture FourFingerTripleTap];
      [v4 addObject:v35];

      v36 = +[VOSGesture FourFingerQuadrupleTap];
      [v4 addObject:v36];

      v37 = +[VOSGesture FourFingerFlickUp];
      [v4 addObject:v37];

      v38 = +[VOSGesture FourFingerFlickDown];
      [v4 addObject:v38];

      v39 = +[VOSGesture FourFingerFlickLeft];
      [v4 addObject:v39];

      v14 = +[VOSGesture FourFingerFlickRight];
    }

    else
    {
      if (count != 5)
      {
        goto LABEL_21;
      }

      v15 = +[VOSGesture FiveFingerSingleTap];
      [v4 addObject:v15];

      v16 = +[VOSGesture FiveFingerDoubleTap];
      [v4 addObject:v16];

      v17 = +[VOSGesture FiveFingerTripleTap];
      [v4 addObject:v17];

      v14 = +[VOSGesture FiveFingerQuadrupleTap];
    }
  }

  else if (count > 1)
  {
    if (count == 2)
    {
      v40 = +[VOSGesture TwoFingerSingleTap];
      [v4 addObject:v40];

      v41 = +[VOSGesture TwoFingerDoubleTap];
      [v4 addObject:v41];

      v42 = +[VOSGesture TwoFingerTripleTap];
      [v4 addObject:v42];

      v43 = +[VOSGesture TwoFingerQuadrupleTap];
      [v4 addObject:v43];

      v44 = +[VOSGesture TwoDistantFingerSingleTap];
      [v4 addObject:v44];

      v45 = +[VOSGesture TwoDistantFingerDoubleTap];
      [v4 addObject:v45];

      v46 = +[VOSGesture TwoDistantFingerTripleTap];
      [v4 addObject:v46];

      v47 = +[VOSGesture TwoFingerFlickUp];
      [v4 addObject:v47];

      v48 = +[VOSGesture TwoFingerFlickDown];
      [v4 addObject:v48];

      v49 = +[VOSGesture TwoFingerFlickLeft];
      [v4 addObject:v49];

      v50 = +[VOSGesture TwoFingerFlickRight];
      [v4 addObject:v50];

      v51 = +[VOSGesture TwoFingerRotateClockwise];
      [v4 addObject:v51];

      v52 = +[VOSGesture TwoFingerRotateCounterclockwise];
      [v4 addObject:v52];

      v53 = +[VOSGesture TwoFingerPinch];
      [v4 addObject:v53];

      v54 = +[VOSGesture TwoFingerScrub];
      [v4 addObject:v54];

      v55 = +[VOSGesture TwoFingerSingleTapAndHold];
      [v4 addObject:v55];

      +[VOSGesture TwoFingerDoubleTapAndHold];
    }

    else
    {
      v18 = +[VOSGesture ThreeFingerSingleTap];
      [v4 addObject:v18];

      v19 = +[VOSGesture ThreeFingerDoubleTap];
      [v4 addObject:v19];

      v20 = +[VOSGesture ThreeFingerTripleTap];
      [v4 addObject:v20];

      v21 = +[VOSGesture ThreeFingerQuadrupleTap];
      [v4 addObject:v21];

      v22 = +[VOSGesture ThreeFingerFlickUp];
      [v4 addObject:v22];

      v23 = +[VOSGesture ThreeFingerFlickDown];
      [v4 addObject:v23];

      v24 = +[VOSGesture ThreeFingerFlickLeft];
      [v4 addObject:v24];

      v25 = +[VOSGesture ThreeFingerFlickRight];
      [v4 addObject:v25];

      v26 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
      [v4 addObject:v26];

      v27 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];
      [v4 addObject:v27];

      v28 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
      [v4 addObject:v28];

      v29 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
      [v4 addObject:v29];

      v30 = +[VOSGesture ThreeFingerSingleTapAndHold];
      [v4 addObject:v30];

      +[VOSGesture ThreeFingerDoubleTapAndHold];
    }
    v14 = ;
  }

  else if (count)
  {
    if (count != 1)
    {
      goto LABEL_21;
    }

    v5 = +[VOSGesture OneFingerSingleTap];
    [v4 addObject:v5];

    v6 = +[VOSGesture OneFingerDoubleTap];
    [v4 addObject:v6];

    v7 = +[VOSGesture OneFingerTripleTap];
    [v4 addObject:v7];

    v8 = +[VOSGesture OneFingerQuadrupleTap];
    [v4 addObject:v8];

    v9 = +[VOSGesture OneFingerFlickUp];
    [v4 addObject:v9];

    v10 = +[VOSGesture OneFingerFlickDown];
    [v4 addObject:v10];

    v11 = +[VOSGesture OneFingerFlickLeft];
    [v4 addObject:v11];

    v12 = +[VOSGesture OneFingerFlickRight];
    [v4 addObject:v12];

    v13 = +[VOSGesture OneFingerSingleTapAndHold];
    [v4 addObject:v13];

    v14 = +[VOSGesture OneFingerDoubleTapAndHold];
  }

  else
  {
    v32 = +[VOSGesture BackTapDoubleTap];
    [v4 addObject:v32];

    v14 = +[VOSGesture BackTapTripleTap];
  }

  v59 = v14;
  [v4 addObject:v14];

LABEL_21:

  return v4;
}

+ (id)_splitGesturesForFingerCount:(int64_t)count
{
  v4 = [MEMORY[0x277CBEB58] set];
  if (count > -7)
  {
    if (count > 0)
    {
      if (count == 1)
      {
        v56 = +[VOSGesture OneFingerSplitFlickUp];
        [v4 addObject:v56];

        v57 = +[VOSGesture OneFingerSplitFlickDown];
        [v4 addObject:v57];

        v58 = +[VOSGesture OneFingerSplitFlickLeft];
        [v4 addObject:v58];

        v14 = +[VOSGesture OneFingerSplitFlickRight];
      }

      else
      {
        if (count != 2)
        {
          goto LABEL_21;
        }

        v31 = +[VOSGesture TwoFingerSplitFlickLeft];
        [v4 addObject:v31];

        v14 = +[VOSGesture TwoFingerSplitFlickRight];
      }
    }

    else if (count == -6)
    {
      v33 = +[VOSGesture FourFingerSingleTap];
      [v4 addObject:v33];

      v34 = +[VOSGesture FourFingerDoubleTap];
      [v4 addObject:v34];

      v35 = +[VOSGesture FourFingerTripleTap];
      [v4 addObject:v35];

      v36 = +[VOSGesture FourFingerQuadrupleTap];
      [v4 addObject:v36];

      v37 = +[VOSGesture FourFingerFlickUp];
      [v4 addObject:v37];

      v38 = +[VOSGesture FourFingerFlickDown];
      [v4 addObject:v38];

      v39 = +[VOSGesture FourFingerFlickLeft];
      [v4 addObject:v39];

      v14 = +[VOSGesture FourFingerFlickRight];
    }

    else
    {
      if (count != -5)
      {
        goto LABEL_21;
      }

      v15 = +[VOSGesture FiveFingerSingleTap];
      [v4 addObject:v15];

      v16 = +[VOSGesture FiveFingerDoubleTap];
      [v4 addObject:v16];

      v17 = +[VOSGesture FiveFingerTripleTap];
      [v4 addObject:v17];

      v14 = +[VOSGesture FiveFingerQuadrupleTap];
    }
  }

  else if (count > -9)
  {
    if (count == -8)
    {
      v40 = +[VOSGesture TwoFingerSingleTap];
      [v4 addObject:v40];

      v41 = +[VOSGesture TwoFingerDoubleTap];
      [v4 addObject:v41];

      v42 = +[VOSGesture TwoFingerTripleTap];
      [v4 addObject:v42];

      v43 = +[VOSGesture TwoFingerQuadrupleTap];
      [v4 addObject:v43];

      v44 = +[VOSGesture TwoDistantFingerSingleTap];
      [v4 addObject:v44];

      v45 = +[VOSGesture TwoDistantFingerDoubleTap];
      [v4 addObject:v45];

      v46 = +[VOSGesture TwoDistantFingerTripleTap];
      [v4 addObject:v46];

      v47 = +[VOSGesture TwoFingerFlickUp];
      [v4 addObject:v47];

      v48 = +[VOSGesture TwoFingerFlickDown];
      [v4 addObject:v48];

      v49 = +[VOSGesture TwoFingerFlickLeft];
      [v4 addObject:v49];

      v50 = +[VOSGesture TwoFingerFlickRight];
      [v4 addObject:v50];

      v51 = +[VOSGesture TwoFingerRotateClockwise];
      [v4 addObject:v51];

      v52 = +[VOSGesture TwoFingerRotateCounterclockwise];
      [v4 addObject:v52];

      v53 = +[VOSGesture TwoFingerPinch];
      [v4 addObject:v53];

      v54 = +[VOSGesture TwoFingerScrub];
      [v4 addObject:v54];

      v55 = +[VOSGesture TwoFingerSingleTapAndHold];
      [v4 addObject:v55];

      +[VOSGesture TwoFingerDoubleTapAndHold];
    }

    else
    {
      v18 = +[VOSGesture ThreeFingerSingleTap];
      [v4 addObject:v18];

      v19 = +[VOSGesture ThreeFingerDoubleTap];
      [v4 addObject:v19];

      v20 = +[VOSGesture ThreeFingerTripleTap];
      [v4 addObject:v20];

      v21 = +[VOSGesture ThreeFingerQuadrupleTap];
      [v4 addObject:v21];

      v22 = +[VOSGesture ThreeFingerFlickUp];
      [v4 addObject:v22];

      v23 = +[VOSGesture ThreeFingerFlickDown];
      [v4 addObject:v23];

      v24 = +[VOSGesture ThreeFingerFlickLeft];
      [v4 addObject:v24];

      v25 = +[VOSGesture ThreeFingerFlickRight];
      [v4 addObject:v25];

      v26 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
      [v4 addObject:v26];

      v27 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];
      [v4 addObject:v27];

      v28 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
      [v4 addObject:v28];

      v29 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
      [v4 addObject:v29];

      v30 = +[VOSGesture ThreeFingerSingleTapAndHold];
      [v4 addObject:v30];

      +[VOSGesture ThreeFingerDoubleTapAndHold];
    }
    v14 = ;
  }

  else if (count == -10)
  {
    v32 = +[VOSGesture BackTapDoubleTap];
    [v4 addObject:v32];

    v14 = +[VOSGesture BackTapTripleTap];
  }

  else
  {
    if (count != -9)
    {
      goto LABEL_21;
    }

    v5 = +[VOSGesture OneFingerSingleTap];
    [v4 addObject:v5];

    v6 = +[VOSGesture OneFingerDoubleTap];
    [v4 addObject:v6];

    v7 = +[VOSGesture OneFingerTripleTap];
    [v4 addObject:v7];

    v8 = +[VOSGesture OneFingerQuadrupleTap];
    [v4 addObject:v8];

    v9 = +[VOSGesture OneFingerFlickUp];
    [v4 addObject:v9];

    v10 = +[VOSGesture OneFingerFlickDown];
    [v4 addObject:v10];

    v11 = +[VOSGesture OneFingerFlickLeft];
    [v4 addObject:v11];

    v12 = +[VOSGesture OneFingerFlickRight];
    [v4 addObject:v12];

    v13 = +[VOSGesture OneFingerSingleTapAndHold];
    [v4 addObject:v13];

    v14 = +[VOSGesture OneFingerDoubleTapAndHold];
  }

  v59 = v14;
  [v4 addObject:v14];

LABEL_21:

  return v4;
}

+ (NSSet)oneFingerGestures
{
  if (oneFingerGestures_onceToken != -1)
  {
    +[VOSGesture oneFingerGestures];
  }

  v3 = oneFingerGestures__gestures;

  return v3;
}

uint64_t __31__VOSGesture_oneFingerGestures__block_invoke()
{
  oneFingerGestures__gestures = [VOSGesture _gesturesForFingerCount:1];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)twoFingerGestures
{
  if (twoFingerGestures_onceToken != -1)
  {
    +[VOSGesture twoFingerGestures];
  }

  v3 = twoFingerGestures__gestures;

  return v3;
}

uint64_t __31__VOSGesture_twoFingerGestures__block_invoke()
{
  twoFingerGestures__gestures = [VOSGesture _gesturesForFingerCount:2];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)threeFingerGestures
{
  if (threeFingerGestures_onceToken != -1)
  {
    +[VOSGesture threeFingerGestures];
  }

  v3 = threeFingerGestures__gestures;

  return v3;
}

uint64_t __33__VOSGesture_threeFingerGestures__block_invoke()
{
  threeFingerGestures__gestures = [VOSGesture _gesturesForFingerCount:3];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)fourFingerGestures
{
  if (fourFingerGestures_onceToken != -1)
  {
    +[VOSGesture fourFingerGestures];
  }

  v3 = fourFingerGestures__gestures;

  return v3;
}

uint64_t __32__VOSGesture_fourFingerGestures__block_invoke()
{
  fourFingerGestures__gestures = [VOSGesture _gesturesForFingerCount:4];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)fiveFingerGestures
{
  if (fiveFingerGestures_onceToken != -1)
  {
    +[VOSGesture fiveFingerGestures];
  }

  v3 = fiveFingerGestures__gestures;

  return v3;
}

uint64_t __32__VOSGesture_fiveFingerGestures__block_invoke()
{
  fiveFingerGestures__gestures = [VOSGesture _gesturesForFingerCount:5];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)oneFingerSplitGestures
{
  if (oneFingerSplitGestures_onceToken != -1)
  {
    +[VOSGesture oneFingerSplitGestures];
  }

  v3 = oneFingerSplitGestures__gestures;

  return v3;
}

uint64_t __36__VOSGesture_oneFingerSplitGestures__block_invoke()
{
  oneFingerSplitGestures__gestures = [VOSGesture _splitGesturesForFingerCount:1];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)twoFingerSplitGestures
{
  if (twoFingerSplitGestures_onceToken != -1)
  {
    +[VOSGesture twoFingerSplitGestures];
  }

  v3 = twoFingerSplitGestures__gestures;

  return v3;
}

uint64_t __36__VOSGesture_twoFingerSplitGestures__block_invoke()
{
  twoFingerSplitGestures__gestures = [VOSGesture _splitGesturesForFingerCount:2];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)conflictingZoomGestures
{
  if (conflictingZoomGestures_onceToken != -1)
  {
    +[VOSGesture conflictingZoomGestures];
  }

  v3 = conflictingZoomGestures__gestures;

  return v3;
}

void __37__VOSGesture_conflictingZoomGestures__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v5 = +[VOSGesture ThreeFingerDoubleTap];
  v1 = +[VOSGesture ThreeFingerTripleTap];
  v2 = +[VOSGesture ThreeFingerQuadrupleTap];
  v3 = [v0 setWithObjects:{v5, v1, v2, 0}];
  v4 = conflictingZoomGestures__gestures;
  conflictingZoomGestures__gestures = v3;
}

@end