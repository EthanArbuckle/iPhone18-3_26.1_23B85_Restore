@interface SXJSONComponentAnchor
- (int64_t)anchorAlignmentForString:(id)a3;
- (int64_t)originAnchorPositionWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXJSONComponentAnchor

- (int64_t)originAnchorPositionWithValue:(id)a3 withType:(int)a4
{
  if (a3)
  {
    return [(SXJSONComponentAnchor *)self anchorAlignmentForString:a3, *&a4];
  }

  else
  {
    return [(SXJSONComponentAnchor *)self targetAnchorPosition:0];
  }
}

- (int64_t)anchorAlignmentForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"top"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"bottom"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"center"])
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