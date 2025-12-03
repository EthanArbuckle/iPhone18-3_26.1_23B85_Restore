@interface WFTTSPause
+ (id)parseAnnotationString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WFTTSPause)initWithSeconds:(double)seconds;
@end

@implementation WFTTSPause

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WFTTSPause;
  v3 = [(WFTTSPause *)&v7 description];
  seconds = [(WFTTSPause *)self seconds];
  v5 = [v3 stringByAppendingFormat:@": seconds %@", seconds];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    seconds = [(WFTTSPause *)self seconds];
    seconds2 = [equalCopy seconds];
    v7 = [seconds isEqualToNumber:seconds2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFTTSPause)initWithSeconds:(double)seconds
{
  if (seconds == 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"seconds"}];
  }

  v12.receiver = self;
  v12.super_class = WFTTSPause;
  v5 = [(WFTTSPause *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:seconds];
    seconds = v5->_seconds;
    v5->_seconds = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)parseAnnotationString:(id)string
{
  v10 = 0.0;
  v4 = MEMORY[0x1E696AE88];
  stringCopy = string;
  v6 = [[v4 alloc] initWithString:stringCopy];

  if ([v6 scanString:@"pauseForSeconds:" intoString:0] && objc_msgSend(v6, "scanDouble:", &v10) && objc_msgSend(v6, "isAtEnd"))
  {
    v7 = [self alloc];
    v8 = [v7 initWithSeconds:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end