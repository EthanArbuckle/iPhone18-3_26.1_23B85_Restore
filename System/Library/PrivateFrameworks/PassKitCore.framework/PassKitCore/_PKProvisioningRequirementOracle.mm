@interface _PKProvisioningRequirementOracle
- (_PKProvisioningRequirementOracle)init;
- (id)recoverableRequirementsContainer;
- (id)requirementsForAddSecureElementPassConfiguration:(id)a3;
@end

@implementation _PKProvisioningRequirementOracle

- (_PKProvisioningRequirementOracle)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProvisioningRequirementOracle();
  return [(_PKProvisioningRequirementOracle *)&v3 init];
}

- (id)requirementsForAddSecureElementPassConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AD50EC78(v4);
  v7 = sub_1AD4CEF98(v6);

  v8 = type metadata accessor for ProvisioningRequirementsContainer();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = v7;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = [(_PKProvisioningRequirementOracle *)&v14 init];
  v12 = [objc_allocWithZone(PKProvisioningRequirementsContainer) initWithContainer_];

  return v12;
}

- (id)recoverableRequirementsContainer
{
  v3 = type metadata accessor for ProvisioningRequirementsContainer();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = &unk_1F2261DA8;
  v11.receiver = v4;
  v11.super_class = v3;
  v6 = self;
  v7 = [(_PKProvisioningRequirementOracle *)&v11 init];
  v8 = objc_allocWithZone(PKProvisioningRequirementsContainer);
  v9 = [v8 initWithContainer_];

  return v9;
}

@end