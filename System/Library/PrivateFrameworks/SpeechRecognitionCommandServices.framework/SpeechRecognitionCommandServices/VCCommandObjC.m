@interface VCCommandObjC
- (BOOL)isNewForCurrentDevice;
- (BOOL)showCodingGuideInSettings;
- (NSDictionary)commandProperties;
- (NSString)commandIdentifier;
- (VCCommandObjC)init;
@end

@implementation VCCommandObjC

- (NSString)commandIdentifier
{
  v2 = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 136];
  v9[8] = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 120];
  v9[9] = v2;
  v9[10] = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 152];
  v10 = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 168];
  v3 = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 72];
  v9[4] = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 56];
  v9[5] = v3;
  v4 = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 104];
  v9[6] = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 88];
  v9[7] = v4;
  v5 = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 8];
  v9[0] = *(&self->super.isa + OBJC_IVAR___VCCommandObjC_representedCommand);
  v9[1] = v5;
  v6 = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 40];
  v9[2] = *&self->representedCommand[OBJC_IVAR___VCCommandObjC_representedCommand + 24];
  v9[3] = v6;
  result = sub_26B4C4C80(v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v8 = sub_26B542A74();

    return v8;
  }

  return result;
}

- (NSDictionary)commandProperties
{
  v2 = self;
  VCCommandObjC.commandProperties.getter();

  v3 = sub_26B5429A4();

  return v3;
}

- (BOOL)isNewForCurrentDevice
{
  v2 = self;
  v3 = VCCommandObjC.isNewForCurrentDevice.getter();

  return v3 & 1;
}

- (BOOL)showCodingGuideInSettings
{
  v2 = self;
  v3 = VCCommandObjC.showCodingGuideInSettings.getter();

  return v3 & 1;
}

- (VCCommandObjC)init
{
  v3 = self + OBJC_IVAR___VCCommandObjC_representedCommand;
  sub_26B4C4C5C(v11);
  v4 = v11[9];
  *(v3 + 8) = v11[8];
  *(v3 + 9) = v4;
  *(v3 + 10) = v11[10];
  *(v3 + 22) = v12;
  v5 = v11[5];
  *(v3 + 4) = v11[4];
  *(v3 + 5) = v5;
  v6 = v11[7];
  *(v3 + 6) = v11[6];
  *(v3 + 7) = v6;
  v7 = v11[1];
  *v3 = v11[0];
  *(v3 + 1) = v7;
  v8 = v11[3];
  *(v3 + 2) = v11[2];
  *(v3 + 3) = v8;
  v10.receiver = self;
  v10.super_class = VCCommandObjC;
  return [(VCCommandObjC *)&v10 init];
}

@end