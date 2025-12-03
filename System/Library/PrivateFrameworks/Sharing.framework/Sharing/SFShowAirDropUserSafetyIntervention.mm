@interface SFShowAirDropUserSafetyIntervention
- (SFShowAirDropUserSafetyIntervention)init;
- (SFShowAirDropUserSafetyIntervention)initWithCoder:(id)coder;
@end

@implementation SFShowAirDropUserSafetyIntervention

- (SFShowAirDropUserSafetyIntervention)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SFXPCInvocation *)&v3 init];
}

- (SFShowAirDropUserSafetyIntervention)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1A98548EC(coderCopy);

  return v4;
}

@end