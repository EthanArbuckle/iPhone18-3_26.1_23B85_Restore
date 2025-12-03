@interface SXFill
- (unint64_t)attachmentWithValue:(id)value withType:(int)type;
- (unint64_t)fillModeWithValue:(id)value withType:(int)type;
- (unint64_t)horizontalAlignmentWithValue:(id)value withType:(int)type;
- (unint64_t)verticalAlignmentWithValue:(id)value withType:(int)type;
@end

@implementation SXFill

- (unint64_t)attachmentWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    return [value isEqualToString:{@"fixed", v4, v5}];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)fillModeWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([valueCopy isEqualToString:@"fit"])
  {
    v5 = 0;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"cover"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"stretch"])
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

- (unint64_t)horizontalAlignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([valueCopy isEqualToString:@"left"])
  {
    v5 = 0;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"center"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"right"])
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

- (unint64_t)verticalAlignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([valueCopy isEqualToString:@"top"])
  {
    v5 = 0;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"center"])
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"bottom"])
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