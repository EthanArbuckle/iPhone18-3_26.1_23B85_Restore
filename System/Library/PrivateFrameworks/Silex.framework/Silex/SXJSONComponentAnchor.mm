@interface SXJSONComponentAnchor
- (int64_t)anchorAlignmentForString:(id)string;
- (int64_t)originAnchorPositionWithValue:(id)value withType:(int)type;
@end

@implementation SXJSONComponentAnchor

- (int64_t)originAnchorPositionWithValue:(id)value withType:(int)type
{
  if (value)
  {
    return [(SXJSONComponentAnchor *)self anchorAlignmentForString:value, *&type];
  }

  else
  {
    return [(SXJSONComponentAnchor *)self targetAnchorPosition:0];
  }
}

- (int64_t)anchorAlignmentForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"top"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"bottom"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"center"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end