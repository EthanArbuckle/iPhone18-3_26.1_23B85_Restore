@interface GQDRLineEnd
- (CGPoint)endPoint;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
- (void)dealloc;
@end

@implementation GQDRLineEnd

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDRLineEnd;
  [(GQDRLineEnd *)&v3 dealloc];
}

- (CGPoint)endPoint
{
  x = self->mEndPoint.x;
  y = self->mEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  self->mIsFilled = sub_42340(a3, qword_A35E8, "filled", 0);
  sub_4290C(a3, qword_A35E8, "scale");
  self->mScale = v5;
  return 1;
}

@end