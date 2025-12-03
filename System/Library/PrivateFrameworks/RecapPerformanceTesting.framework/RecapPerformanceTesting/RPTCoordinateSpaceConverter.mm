@interface RPTCoordinateSpaceConverter
+ (RPTCoordinateSpaceConverter)identityConverter;
+ (id)converterFromView:(id)view;
+ (id)converterFromWindow:(id)window;
+ (id)converterFromWindow:(id)window toScreen:(id)screen;
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

+ (id)converterFromView:(id)view
{
  viewCopy = view;
  v4 = [[RPTViewCoordinateSpaceConverter alloc] initFromView:viewCopy];

  return v4;
}

+ (id)converterFromWindow:(id)window
{
  windowCopy = window;
  v4 = [RPTWindowCoordinateSpaceConverter alloc];
  screen = [windowCopy screen];
  v6 = [(RPTWindowCoordinateSpaceConverter *)v4 initFromWindow:windowCopy toScreen:screen];

  return v6;
}

+ (id)converterFromWindow:(id)window toScreen:(id)screen
{
  screenCopy = screen;
  windowCopy = window;
  v7 = [[RPTWindowCoordinateSpaceConverter alloc] initFromWindow:windowCopy toScreen:screenCopy];

  return v7;
}

@end