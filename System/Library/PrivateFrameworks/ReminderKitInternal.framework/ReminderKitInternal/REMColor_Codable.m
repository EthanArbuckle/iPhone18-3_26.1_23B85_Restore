@interface REMColor_Codable
- (REMColor_Codable)init;
- (REMColor_Codable)initWithCKSymbolicColorName:(id)a3 hexString:(id)a4;
- (REMColor_Codable)initWithDASymbolicColorName:(id)a3 daHexString:(id)a4;
- (REMColor_Codable)initWithHexString:(id)a3;
- (REMColor_Codable)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (REMColor_Codable)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7;
- (REMColor_Codable)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7 daSymbolicColorName:(id)a8 daHexString:(id)a9 ckSymbolicColorName:(id)a10;
@end

@implementation REMColor_Codable

- (REMColor_Codable)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7 daSymbolicColorName:(id)a8 daHexString:(id)a9 ckSymbolicColorName:(id)a10
{
  v11 = a9;
  if (a8)
  {
    v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v19 = v18;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (a10)
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = 0;
    v24 = 0;
    return REMColor_Codable.init(red:green:blue:alpha:colorSpace:daSymbolicColorName:daHexString:ckSymbolicColorName:)(a7, a3, a4, a5, a6, v17, v19, v11, v21, v22, v24);
  }

  v17 = 0;
  v19 = 0;
  if (!a9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v21 = v20;
  if (!a10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v24 = v23;
  return REMColor_Codable.init(red:green:blue:alpha:colorSpace:daSymbolicColorName:daHexString:ckSymbolicColorName:)(a7, a3, a4, a5, a6, v17, v19, v11, v21, v22, v24);
}

- (REMColor_Codable)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithHexString:(id)a3
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

- (REMColor_Codable)initWithDASymbolicColorName:(id)a3 daHexString:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (REMColor_Codable)initWithCKSymbolicColorName:(id)a3 hexString:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end