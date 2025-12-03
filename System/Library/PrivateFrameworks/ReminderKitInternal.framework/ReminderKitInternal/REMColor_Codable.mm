@interface REMColor_Codable
- (REMColor_Codable)init;
- (REMColor_Codable)initWithCKSymbolicColorName:(id)name hexString:(id)string;
- (REMColor_Codable)initWithDASymbolicColorName:(id)name daHexString:(id)string;
- (REMColor_Codable)initWithHexString:(id)string;
- (REMColor_Codable)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (REMColor_Codable)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space;
- (REMColor_Codable)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space daSymbolicColorName:(id)name daHexString:(id)string ckSymbolicColorName:(id)self0;
@end

@implementation REMColor_Codable

- (REMColor_Codable)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space daSymbolicColorName:(id)name daHexString:(id)string ckSymbolicColorName:(id)self0
{
  stringCopy = string;
  if (name)
  {
    v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v19 = v18;
    if (stringCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (colorName)
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = 0;
    v24 = 0;
    return REMColor_Codable.init(red:green:blue:alpha:colorSpace:daSymbolicColorName:daHexString:ckSymbolicColorName:)(space, red, green, blue, alpha, v17, v19, stringCopy, v21, v22, v24);
  }

  v17 = 0;
  v19 = 0;
  if (!string)
  {
    goto LABEL_6;
  }

LABEL_3:
  stringCopy = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v21 = v20;
  if (!colorName)
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v24 = v23;
  return REMColor_Codable.init(red:green:blue:alpha:colorSpace:daSymbolicColorName:daHexString:ckSymbolicColorName:)(space, red, green, blue, alpha, v17, v19, stringCopy, v21, v22, v24);
}

- (REMColor_Codable)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithHexString:(id)string
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithDASymbolicColorName:(id)name daHexString:(id)string
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithCKSymbolicColorName:(id)name hexString:(id)string
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end