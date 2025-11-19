@interface UISDisplaySingleRectShape(SpringBoard)
+ (id)sb_displayShapeForScreenType:()SpringBoard;
+ (id)sb_thisDeviceDisplayShape;
@end

@implementation UISDisplaySingleRectShape(SpringBoard)

+ (id)sb_thisDeviceDisplayShape
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UISDisplaySingleRectShape_SpringBoard__sb_thisDeviceDisplayShape__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sb_thisDeviceDisplayShape_onceToken != -1)
  {
    dispatch_once(&sb_thisDeviceDisplayShape_onceToken, block);
  }

  v1 = sb_thisDeviceDisplayShape_sThisDeviceScreenType;

  return v1;
}

+ (id)sb_displayShapeForScreenType:()SpringBoard
{
  v4 = _SBHNativeScaleForScreenType(a3);
  if (a3 <= 0x10 && ((1 << a3) & 0x18600) != 0)
  {
    v4 = v4 * 1.04166667;
  }

  v5 = 0.0;
  v6 = 90.0;
  v7 = 627.0;
  v8 = 249.0;
  switch(a3)
  {
    case 3uLL:
    case 4uLL:
      goto LABEL_18;
    case 5uLL:
    case 6uLL:
      v7 = 628.0;
      v8 = 307.0;
      goto LABEL_18;
    case 7uLL:
    case 8uLL:
      v6 = 64.0;
      v7 = 454.0;
      v8 = 187.0;
      goto LABEL_18;
    case 9uLL:
    case 0xAuLL:
      v6 = 103.0;
      v7 = 678.0;
      v8 = 223.5;
      goto LABEL_18;
    case 0xBuLL:
    case 0xCuLL:
      v6 = 96.0;
      v7 = 630.0;
      v8 = 270.0;
      goto LABEL_18;
    case 0xDuLL:
    case 0xEuLL:
      v6 = 96.0;
      v7 = 628.0;
      v8 = 328.0;
      goto LABEL_18;
    case 0xFuLL:
    case 0x10uLL:
      v6 = 112.0;
      v7 = 522.0;
      v8 = 301.5;
      goto LABEL_18;
    case 0x11uLL:
    case 0x12uLL:
      v6 = 101.0;
      v7 = 484.0;
      v8 = 343.0;
      goto LABEL_18;
    case 0x13uLL:
    case 0x14uLL:
      v6 = 101.0;
      v7 = 484.0;
      v8 = 400.0;
      goto LABEL_18;
    case 0x15uLL:
    case 0x16uLL:
      v6 = 110.0;
      v7 = 375.0;
      v5 = 34.0;
      v8 = 402.0;
      goto LABEL_18;
    case 0x17uLL:
    case 0x18uLL:
      v6 = 110.0;
      v7 = 376.0;
      v5 = 34.0;
      v8 = 457.0;
      goto LABEL_18;
    case 0x19uLL:
    case 0x1AuLL:
      v6 = 110.0;
      v7 = 375.0;
      v5 = 42.0;
      v8 = 415.0;
      goto LABEL_18;
    case 0x1BuLL:
    case 0x1CuLL:
      v6 = 110.0;
      v7 = 376.0;
      v5 = 42.0;
      v8 = 472.0;
      goto LABEL_18;
    case 0x1DuLL:
    case 0x1EuLL:
      v6 = 110.0;
      v7 = 376.0;
      v5 = 60.0;
      v8 = 442.0;
LABEL_18:
      v16.origin.x = v8;
      v16.origin.y = v5;
      v16.size.width = v7;
      v16.size.height = v6;
      v9 = CGRectGetMinX(v16) / v4;
      v17.origin.x = v8;
      v17.origin.y = v5;
      v17.size.width = v7;
      v17.size.height = v6;
      v10 = CGRectGetMinY(v17) / v4;
      v18.origin.x = v8;
      v18.origin.y = v5;
      v18.size.width = v7;
      v18.size.height = v6;
      v11 = CGRectGetWidth(v18) / v4;
      v19.origin.x = v8;
      v19.origin.y = v5;
      v19.size.width = v7;
      v19.size.height = v6;
      v12 = [objc_alloc(MEMORY[0x277D77780]) initWithRect:{v9, v10, v11, CGRectGetHeight(v19) / v4}];
      break;
    default:
      if (SBHScreenTypeIsPhone() && (SBHScreenTypeHasHomeButton() & 1) == 0)
      {
        v14 = SBLogHomeAffordance();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(UISDisplaySingleRectShape(SpringBoard) *)a3 sb_displayShapeForScreenType:v14];
        }
      }

      v12 = 0;
      break;
  }

  return v12;
}

+ (void)sb_displayShapeForScreenType:()SpringBoard .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBHStringForScreenType();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "We expect an exclusion rect for %@, but don't have one", &v4, 0xCu);
}

@end