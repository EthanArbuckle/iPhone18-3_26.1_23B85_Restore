@interface TSCHChartAxisLayoutUtilities
+ (int64_t)snappedLabelAngleInDegrees:(float)degrees prefersVerticalAngles:(BOOL)angles;
@end

@implementation TSCHChartAxisLayoutUtilities

+ (int64_t)snappedLabelAngleInDegrees:(float)degrees prefersVerticalAngles:(BOOL)angles
{
  anglesCopy = angles;
  LODWORD(v4) = 1135869952;
  v6 = sub_27628C1E0(self, a2, *&degrees, 0.0, v4);
  v7 = 70.0;
  if (anglesCopy)
  {
    v7 = 20.0;
  }

  if (v6 >= 0.0 && v6 <= v7)
  {
    return 0;
  }

  if (v6 >= (360.0 - v7) && v6 <= 360.0)
  {
    return 0;
  }

  v10 = v7 + 180.0;
  if (v6 >= (180.0 - v7) && v6 <= v10)
  {
    return 180;
  }

  if (v6 > v7 && v6 < (180.0 - v7))
  {
    return 90;
  }

  if (v6 >= (360.0 - v7) || v6 <= v10)
  {
    return 0;
  }

  else
  {
    return 270;
  }
}

@end