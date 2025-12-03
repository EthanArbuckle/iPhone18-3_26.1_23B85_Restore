@interface SUIAColorMatrixPrototypeSettings
+ (BOOL)ignoresKey:(id)key;
+ (id)settingsControllerModule;
- (CAColorMatrix)caColorMatrix;
- (double)m11;
- (double)m12;
- (double)m13;
- (double)m14;
- (double)m15;
- (double)m21;
- (double)m22;
- (double)m23;
- (double)m24;
- (double)m25;
- (double)m31;
- (double)m32;
- (double)m33;
- (double)m34;
- (double)m35;
- (double)m41;
- (double)m42;
- (double)m43;
- (double)m44;
- (double)m45;
- (id)drillDownSummary;
- (void)setDefaultValues;
- (void)setM11:(double)m11;
- (void)setM12:(double)m12;
- (void)setM13:(double)m13;
- (void)setM14:(double)m14;
- (void)setM15:(double)m15;
- (void)setM21:(double)m21;
- (void)setM22:(double)m22;
- (void)setM23:(double)m23;
- (void)setM24:(double)m24;
- (void)setM25:(double)m25;
- (void)setM31:(double)m31;
- (void)setM32:(double)m32;
- (void)setM33:(double)m33;
- (void)setM34:(double)m34;
- (void)setM35:(double)m35;
- (void)setM41:(double)m41;
- (void)setM42:(double)m42;
- (void)setM43:(double)m43;
- (void)setM44:(double)m44;
- (void)setM45:(double)m45;
@end

@implementation SUIAColorMatrixPrototypeSettings

- (double)m11
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m11;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM11:(double)m11
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m11;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m11;
}

- (double)m12
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m12;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM12:(double)m12
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m12;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m12;
}

- (double)m13
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m13;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM13:(double)m13
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m13;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m13;
}

- (double)m14
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m14;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM14:(double)m14
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m14;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m14;
}

- (double)m15
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m15;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM15:(double)m15
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m15;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m15;
}

- (double)m21
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m21;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM21:(double)m21
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m21;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m21;
}

- (double)m22
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m22;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM22:(double)m22
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m22;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m22;
}

- (double)m23
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m23;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM23:(double)m23
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m23;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m23;
}

- (double)m24
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m24;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM24:(double)m24
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m24;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m24;
}

- (double)m25
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m25;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM25:(double)m25
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m25;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m25;
}

- (double)m31
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m31;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM31:(double)m31
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m31;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m31;
}

- (double)m32
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m32;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM32:(double)m32
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m32;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m32;
}

- (double)m33
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m33;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM33:(double)m33
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m33;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m33;
}

- (double)m34
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m34;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM34:(double)m34
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m34;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m34;
}

- (double)m35
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m35;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM35:(double)m35
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m35;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m35;
}

- (double)m41
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m41;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM41:(double)m41
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m41;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m41;
}

- (double)m42
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m42;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM42:(double)m42
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m42;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m42;
}

- (double)m43
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m43;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM43:(double)m43
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m43;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m43;
}

- (double)m44
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m44;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM44:(double)m44
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m44;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m44;
}

- (double)m45
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m45;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setM45:(double)m45
{
  v5 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m45;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = m45;
}

- (CAColorMatrix)caColorMatrix
{
  selfCopy = self;
  SUIAColorMatrixPrototypeSettings.caColorMatrix.getter(v10);

  v6 = v10[1];
  v7 = v10[2];
  v8 = v10[3];
  v9 = v10[4];
  *&retstr->var0 = v10[0];
  *&retstr->var4 = v6;
  *&retstr->var8 = v7;
  *&retstr->var12 = v8;
  *&retstr->var16 = v9;
  return result;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SUIAColorMatrixPrototypeSettings;
  selfCopy = self;
  [(PTSettings *)&v3 setDefaultValues];
  memset(&withColorMatrix, 0, sizeof(withColorMatrix));
  SUIAColorMatrixPrototypeSettings.update(withColorMatrix:)(&withColorMatrix);
}

+ (id)settingsControllerModule
{
  _sSo32SUIAColorMatrixPrototypeSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

+ (BOOL)ignoresKey:(id)key
{
  if (key)
  {
    if (sub_26C614E48() == 0x4D726F6C6F436163 && v3 == 0xED00007869727461)
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_26C615128();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)drillDownSummary
{
  selfCopy = self;
  object = SUIAColorMatrixPrototypeSettings.drillDownSummary()().value._object;

  if (object)
  {
    v4 = sub_26C614E38();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end