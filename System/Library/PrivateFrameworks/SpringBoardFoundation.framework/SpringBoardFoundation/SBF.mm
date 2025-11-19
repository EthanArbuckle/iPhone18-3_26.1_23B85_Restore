@interface SBF
@end

@implementation SBF

uint64_t ___SBF_Private_IsN84OrSimilarDevice_block_invoke()
{
  result = SBFEffectiveArtworkSubtype();
  _SBF_Private_IsN84OrSimilarDevice_isN84OrSimilarDevice = result == 1792;
  return result;
}

uint64_t ___SBF_Private_IsN84ZoomedOrSimilarDevice_block_invoke()
{
  v0 = SBFEffectiveArtworkSubtype();
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 nativeScale];

  if (v0 == 1792)
  {
    result = BSFloatEqualToFloat();
  }

  else
  {
    result = 0;
  }

  _SBF_Private_IsN84ZoomedOrSimilarDevice_isN84Zoomed4OrSimilarDevice = result;
  return result;
}

uint64_t ___SBF_Private_IsD33OrSimilarDevice_block_invoke()
{
  result = MGGetSInt32Answer();
  _SBF_Private_IsD33OrSimilarDevice_isD33OrSimilarDevice = (result & 0xFFFFFFFE) == 18;
  return result;
}

void ___SBF_Private_IsD52OrSimilarDevice_block_invoke()
{
  v0 = MGGetSInt32Answer();
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 nativeScale];

  if (v0 == 22)
  {
    v2 = BSFloatEqualToFloat() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  _SBF_Private_IsD52OrSimilarDevice_isD52OrSimilarDevice = v2;
}

uint64_t ___SBF_Private_IsD52ZoomedOrSimilarDevice_block_invoke()
{
  v0 = MGGetSInt32Answer();
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 nativeScale];

  if (v0 == 22)
  {
    result = BSFloatEqualToFloat();
  }

  else
  {
    result = 0;
  }

  _SBF_Private_IsD52ZoomedOrSimilarDevice_isD52ZoomedOrSimilarDevice = result;
  return result;
}

void ___SBF_Private_IsD54_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD54_isD54 = [v1 hasPrefix:@"D54"];
}

void ___SBF_Private_IsD53_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD53_isD53 = [v1 hasPrefix:@"D53"];
}

void ___SBF_Private_IsD16_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD16_isD16 = [v1 hasPrefix:@"D16"];
}

void ___SBF_Private_IsD17_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD17_isD17 = [v1 hasPrefix:@"D17"];
}

void ___SBF_Private_IsD63_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD63_isD63 = [v1 hasPrefix:@"D63"];
}

void ___SBF_Private_IsD64_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD64_isD64 = [v1 hasPrefix:@"D64"];
}

void ___SBF_Private_IsV59_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsV59_isV59 = [v1 hasPrefix:@"V59"];
}

void ___SBF_Private_IsD63Like_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v3 = [v0 productHardwareModel];

  if ([v3 hasPrefix:@"D17"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"D27") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"D63") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"D73") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"D37") & 1) != 0 || (_SBF_Private_IsD63Like_isD63Like = objc_msgSend(v3, "hasPrefix:", @"D83"), (_SBF_Private_IsD63Like_isD63Like) || (_SBF_Private_IsD63Like_isD63Like = objc_msgSend(v3, "hasPrefix:", @"D47"), (_SBF_Private_IsD63Like_isD63Like))
  {
    v1 = 1;
    v2 = v3;
  }

  else
  {
    if (_SBF_Private_IsV59_onceToken != -1)
    {
      _SBF_Private_IsV59_cold_1();
    }

    v2 = v3;
    v1 = _SBF_Private_IsV59_isV59;
  }

  _SBF_Private_IsD63Like_isD63Like = v1 & 1;
}

void ___SBF_Private_IsD64Like_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v2 = [v0 productHardwareModel];

  if ([v2 hasPrefix:@"D64"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"D28") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"D74") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"D38") & 1) != 0 || (_SBF_Private_IsD64Like_isD64Like = objc_msgSend(v2, "hasPrefix:", @"D84"), (_SBF_Private_IsD64Like_isD64Like))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 hasPrefix:@"D48"];
  }

  _SBF_Private_IsD64Like_isD64Like = v1;
}

void ___SBF_Private_IsD93Like_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v2 = [v0 productHardwareModel];

  _SBF_Private_IsD93Like_isD93Like = [v2 hasPrefix:@"D93"];
  if (_SBF_Private_IsD93Like_isD93Like & 1) != 0 || ([v2 hasPrefix:@"V53"])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 hasPrefix:@"V57"];
  }

  _SBF_Private_IsD93Like_isD93Like = v1;
}

void ___SBF_Private_IsD94Like_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v2 = [v0 productHardwareModel];

  _SBF_Private_IsD94Like_isD94Like = [v2 hasPrefix:@"D94"];
  if (_SBF_Private_IsD94Like_isD94Like)
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 hasPrefix:@"V54"];
  }

  _SBF_Private_IsD94Like_isD94Like = v1;
}

void ___SBF_Private_IsD23Like_block_invoke()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 productHardwareModel];

  _SBF_Private_IsD23Like_isD23Like = [v1 hasPrefix:@"D23"];
}

@end