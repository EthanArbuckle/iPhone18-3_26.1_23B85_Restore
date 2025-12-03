@interface SHMaths
+ (double)interpolateValue:(double)value leftMin:(double)min leftMax:(double)max rightMin:(double)rightMin rightMax:(double)rightMax;
@end

@implementation SHMaths

+ (double)interpolateValue:(double)value leftMin:(double)min leftMax:(double)max rightMin:(double)rightMin rightMax:(double)rightMax
{
  if (value <= max)
  {
    maxCopy = value;
  }

  else
  {
    maxCopy = max;
  }

  if (value >= min)
  {
    minCopy = maxCopy;
  }

  else
  {
    minCopy = min;
  }

  return rightMin + (minCopy - min) / (max - min) * (rightMax - rightMin);
}

@end