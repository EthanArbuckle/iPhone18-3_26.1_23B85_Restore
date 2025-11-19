@interface UIImage(TPTelephonyUIUtilities)
+ (id)_tpImageNamed:()TPTelephonyUIUtilities inBundle:compatibleWithTraitCollection:;
+ (id)tpImageNamed:()TPTelephonyUIUtilities inBundle:;
@end

@implementation UIImage(TPTelephonyUIUtilities)

+ (id)_tpImageNamed:()TPTelephonyUIUtilities inBundle:compatibleWithTraitCollection:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      v10 = [MEMORY[0x1E69DCAB8] imageNamed:v7 inBundle:v8 compatibleWithTraitCollection:v9];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = TelephonyUIBundle();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (id)tpImageNamed:()TPTelephonyUIUtilities inBundle:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 mainScreen];
  v10 = [v9 traitCollection];
  v11 = [v5 _tpImageNamed:v8 inBundle:v7 compatibleWithTraitCollection:v10];

  return v11;
}

@end