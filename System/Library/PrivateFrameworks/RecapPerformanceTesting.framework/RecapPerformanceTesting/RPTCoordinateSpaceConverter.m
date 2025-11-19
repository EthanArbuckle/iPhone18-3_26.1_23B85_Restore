@interface RPTCoordinateSpaceConverter
+ (RPTCoordinateSpaceConverter)identityConverter;
+ (id)converterFromView:(id)a3;
+ (id)converterFromWindow:(id)a3;
+ (id)converterFromWindow:(id)a3 toScreen:(id)a4;
@end

@implementation RPTCoordinateSpaceConverter

+ (RPTCoordinateSpaceConverter)identityConverter
{
  if (identityConverter_onceToken != -1)
  {
    +[RPTCoordinateSpaceConverter identityConverter];
  }

  v3 = identityConverter_identity;

  return v3;
}

uint64_t __48__RPTCoordinateSpaceConverter_identityConverter__block_invoke()
{
  identityConverter_identity = objc_alloc_init(RPTNullCoordinateSpaceConverter);

  return MEMORY[0x2821F96F8]();
}

+ (id)converterFromView:(id)a3
{
  v3 = a3;
  v4 = [[RPTViewCoordinateSpaceConverter alloc] initFromView:v3];

  return v4;
}

+ (id)converterFromWindow:(id)a3
{
  v3 = a3;
  v4 = [RPTWindowCoordinateSpaceConverter alloc];
  v5 = [v3 screen];
  v6 = [(RPTWindowCoordinateSpaceConverter *)v4 initFromWindow:v3 toScreen:v5];

  return v6;
}

+ (id)converterFromWindow:(id)a3 toScreen:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RPTWindowCoordinateSpaceConverter alloc] initFromWindow:v6 toScreen:v5];

  return v7;
}

@end