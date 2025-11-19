@interface WFTTSPause
+ (id)parseAnnotationString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WFTTSPause)initWithSeconds:(double)a3;
@end

@implementation WFTTSPause

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WFTTSPause;
  v3 = [(WFTTSPause *)&v7 description];
  v4 = [(WFTTSPause *)self seconds];
  v5 = [v3 stringByAppendingFormat:@": seconds %@", v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFTTSPause *)self seconds];
    v6 = [v4 seconds];
    v7 = [v5 isEqualToNumber:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFTTSPause)initWithSeconds:(double)a3
{
  if (a3 == 0.0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"seconds"}];
  }

  v12.receiver = self;
  v12.super_class = WFTTSPause;
  v5 = [(WFTTSPause *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    seconds = v5->_seconds;
    v5->_seconds = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)parseAnnotationString:(id)a3
{
  v10 = 0.0;
  v4 = MEMORY[0x1E696AE88];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  if ([v6 scanString:@"pauseForSeconds:" intoString:0] && objc_msgSend(v6, "scanDouble:", &v10) && objc_msgSend(v6, "isAtEnd"))
  {
    v7 = [a1 alloc];
    v8 = [v7 initWithSeconds:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end