@interface ATLGetDecoder
+ (id)getDecoderForApplet:(uint64_t)applet withPackage:(void *)package withModule:;
@end

@implementation ATLGetDecoder

+ (id)getDecoderForApplet:(uint64_t)applet withPackage:(void *)package withModule:
{
  packageCopy = package;
  objc_opt_self();
  v5 = [AppletConfigurationData pluginDecoderForMid:packageCopy];
  v6 = v5;
  if (v5)
  {
    sharedInstance = v5;
LABEL_11:
    v10 = sharedInstance;
    goto LABEL_12;
  }

  if (([packageCopy isEqualToString:@"A0000006800100010101"] & 1) != 0 || objc_msgSend(packageCopy, "isEqualToString:", @"A00000068001FF010101"))
  {
    v8 = SlalomDecoder;
LABEL_6:
    sharedInstance = [(__objc2_class *)v8 sharedInstance];
    goto LABEL_11;
  }

  if (([packageCopy isEqualToString:@"D1560000101000001201"] & 1) != 0 || objc_msgSend(packageCopy, "isEqualToString:", @"9156000014020001"))
  {
    v9 = MercuryDecoder;
LABEL_10:
    sharedInstance = objc_alloc_init(v9);
    goto LABEL_11;
  }

  if ([packageCopy isEqualToString:@"A0000003965453000000010150000000"])
  {
    v9 = MifareDecoder;
    goto LABEL_10;
  }

  if ([EMVDecoder isEMV:packageCopy])
  {
    v9 = EMVDecoder;
    goto LABEL_10;
  }

  if ([CopernicusDecoder isCopernicus:packageCopy])
  {
    v12 = CopernicusDecoder;
LABEL_21:
    sharedInstance = [(__objc2_class *)v12 getInstance];
    goto LABEL_11;
  }

  if ([CopernicusHCEDecoder isCopernicusHCE:packageCopy])
  {
    sharedInstance = objc_opt_new();
    goto LABEL_11;
  }

  if ([packageCopy isEqualToString:@"A000000704D011500000000004000000"])
  {
    v12 = LyonDecoder;
    goto LABEL_21;
  }

  if ([packageCopy isEqualToString:@"A000000704A0010010010001"])
  {
    v12 = WuluDecoder;
    goto LABEL_21;
  }

  if ([packageCopy isEqualToString:@"A0000004408001010001"])
  {
    v9 = SeosDecoder;
    goto LABEL_10;
  }

  if ([packageCopy isEqualToString:@"F8434E412E43414C2E52657633"])
  {
    v8 = CalypsoDecoder;
    goto LABEL_6;
  }

  if ([packageCopy isEqualToString:@"A0000008588400010100"])
  {
    v12 = DreamworksDecoder;
    goto LABEL_21;
  }

  if ([packageCopy isEqualToString:@"A0000008588202010100"])
  {
    v12 = AlphonsoDecoder;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end