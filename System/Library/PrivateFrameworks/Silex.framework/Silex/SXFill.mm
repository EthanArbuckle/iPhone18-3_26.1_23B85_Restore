@interface SXFill
- (unint64_t)attachmentWithValue:(id)a3 withType:(int)a4;
- (unint64_t)fillModeWithValue:(id)a3 withType:(int)a4;
- (unint64_t)horizontalAlignmentWithValue:(id)a3 withType:(int)a4;
- (unint64_t)verticalAlignmentWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXFill

- (unint64_t)attachmentWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    return [a3 isEqualToString:{@"fixed", v4, v5}];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)fillModeWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"fit"])
  {
    v5 = 0;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"cover"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"stretch"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_6:

  return v5;
}

- (unint64_t)horizontalAlignmentWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"left"])
  {
    v5 = 0;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"center"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"right"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_6:

  return v5;
}

- (unint64_t)verticalAlignmentWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"top"])
  {
    v5 = 0;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"center"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"bottom"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_6:

  return v5;
}

@end