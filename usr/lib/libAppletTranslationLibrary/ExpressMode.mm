@interface ExpressMode
+ (BOOL)applyAssertionConfiguration:(id)configuration toSecureElement:(id)element inSessionWithPassUniqueIDs:(id)ds hasActivatedApplets:(BOOL *)applets performActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error;
+ (BOOL)applyConfiguration:(id)configuration toSecureElement:(id)element inSessionWithAID:(id)d hasActivatedApplets:(BOOL *)applets performActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error;
+ (BOOL)getFastPathWithPassInformation:(id)information fastPathOut:(BOOL *)out useLegacyBehavior:(BOOL)behavior error:(id *)error;
+ (id)checkCompatibilityWithPassInformation:(id)information error:(id *)error;
+ (id)checkCompatibilityWithPassInformation:(id)information useLegacyBehavior:(BOOL)behavior error:(id *)error;
@end

@implementation ExpressMode

+ (id)checkCompatibilityWithPassInformation:(id)information useLegacyBehavior:(BOOL)behavior error:(id *)error
{
  informationCopy = information;
  sub_22EFA3414(informationCopy, behavior);

  sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
  v7 = sub_22EFB653C();

  return v7;
}

+ (id)checkCompatibilityWithPassInformation:(id)information error:(id *)error
{
  v4 = qword_281477D68;
  informationCopy = information;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_22EF85014(informationCopy, 1, 0);
  v7 = v6;

  sub_22EF71704(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  v8 = sub_22EFB653C();

  return v8;
}

+ (BOOL)getFastPathWithPassInformation:(id)information fastPathOut:(BOOL *)out useLegacyBehavior:(BOOL)behavior error:(id *)error
{
  informationCopy = information;
  sub_22EFA35A4(informationCopy, out, behavior);

  return 1;
}

+ (BOOL)applyConfiguration:(id)configuration toSecureElement:(id)element inSessionWithAID:(id)d hasActivatedApplets:(BOOL *)applets performActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error
{
  dCopy = d;
  if (d)
  {
    configurationCopy = configuration;
    elementCopy = element;
    v17 = dCopy;
    dCopy = sub_22EFB61DC();
    v19 = v18;
  }

  else
  {
    configurationCopy2 = configuration;
    elementCopy2 = element;
    v19 = 0xF000000000000000;
  }

  sub_22EFA60A4(configuration, element, dCopy, v19, applets, activations, behavior);

  sub_22EF708B4(dCopy, v19);
  return 1;
}

+ (BOOL)applyAssertionConfiguration:(id)configuration toSecureElement:(id)element inSessionWithPassUniqueIDs:(id)ds hasActivatedApplets:(BOOL *)applets performActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error
{
  configurationCopy = configuration;
  elementCopy = element;
  dsCopy = ds;
  sub_22EFA783C(configurationCopy, elementCopy, ds, applets, activations, behavior);

  return 1;
}

@end