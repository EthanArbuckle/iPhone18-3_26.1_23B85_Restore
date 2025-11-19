@interface SXAXCustomRotorDefinition
+ (id)audioVideoRotor;
+ (id)headingsRotor;
+ (id)imagesRotor;
+ (id)linksRotor;
@end

@implementation SXAXCustomRotorDefinition

+ (id)headingsRotor
{
  objc_opt_self();
  v0 = headingsRotor_rotorName;
  if (!headingsRotor_rotorName)
  {
    v1 = SXBundle();
    v2 = [v1 localizedStringForKey:@"Headings" value:&stru_1F532F6C0 table:0];
    v3 = headingsRotor_rotorName;
    headingsRotor_rotorName = v2;

    v0 = headingsRotor_rotorName;
  }

  return v0;
}

+ (id)linksRotor
{
  objc_opt_self();
  v0 = linksRotor_rotorName;
  if (!linksRotor_rotorName)
  {
    v1 = SXBundle();
    v2 = [v1 localizedStringForKey:@"Links" value:&stru_1F532F6C0 table:0];
    v3 = linksRotor_rotorName;
    linksRotor_rotorName = v2;

    v0 = linksRotor_rotorName;
  }

  return v0;
}

+ (id)imagesRotor
{
  objc_opt_self();
  v0 = imagesRotor_rotorName;
  if (!imagesRotor_rotorName)
  {
    v1 = SXBundle();
    v2 = [v1 localizedStringForKey:@"Images" value:&stru_1F532F6C0 table:0];
    v3 = imagesRotor_rotorName;
    imagesRotor_rotorName = v2;

    v0 = imagesRotor_rotorName;
  }

  return v0;
}

+ (id)audioVideoRotor
{
  objc_opt_self();
  v0 = audioVideoRotor_rotorName;
  if (!audioVideoRotor_rotorName)
  {
    v1 = SXBundle();
    v2 = [v1 localizedStringForKey:@"Audio/Video" value:&stru_1F532F6C0 table:0];
    v3 = audioVideoRotor_rotorName;
    audioVideoRotor_rotorName = v2;

    v0 = audioVideoRotor_rotorName;
  }

  return v0;
}

@end