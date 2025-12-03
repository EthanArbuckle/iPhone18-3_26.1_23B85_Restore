@interface ICSDateTimeUTCValue
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSDateTimeUTCValue

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  [stringCopy appendFormat:@"%.4d%.2d%.2dT%.2d%.2d%.2dZ", -[ICSDateValue year](self, "year"), -[ICSDateValue month](self, "month"), -[ICSDateValue day](self, "day"), -[ICSDateTimeValue hour](self, "hour"), -[ICSDateTimeValue minute](self, "minute"), -[ICSDateTimeValue second](self, "second")];
}

@end