@interface SBLayoutElement
+ (SBLayoutElement)elementWithDescriptor:(id)descriptor;
+ (SBLayoutElement)elementWithDescriptor:(id)descriptor layoutRole:(int64_t)role;
- (BOOL)isEqual:(id)equal;
- (BOOL)representsSameLayoutElementAsDescriptor:(id)descriptor;
- (SBLayoutElement)initWithIdentifier:(id)identifier layoutRole:(int64_t)role supportedLayoutRoles:(id)roles layoutAttributes:(unint64_t)attributes viewControllerClass:(Class)class entityGenerator:(id)generator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)workspaceEntity;
- (unint64_t)hash;
@end

@implementation SBLayoutElement

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  uniqueIdentifier = [(SBLayoutElement *)self uniqueIdentifier];
  v5 = [builder appendObject:uniqueIdentifier];

  v6 = [builder appendInteger:{-[SBLayoutElement layoutRole](self, "layoutRole")}];
  supportedLayoutRoles = [(SBLayoutElement *)self supportedLayoutRoles];
  v8 = [builder appendObject:supportedLayoutRoles];

  v9 = [builder appendUnsignedInteger:{-[SBLayoutElement layoutAttributes](self, "layoutAttributes")}];
  v10 = NSStringFromClass([(SBLayoutElement *)self viewControllerClass]);
  v11 = [builder appendObject:v10];

  v12 = [builder hash];
  return v12;
}

- (id)workspaceEntity
{
  entityGenerator = [(SBLayoutElement *)self entityGenerator];
  v4 = entityGenerator;
  if (entityGenerator)
  {
    v5 = (*(entityGenerator + 16))(entityGenerator);
    [v5 setLayoutRole:{-[SBLayoutElement layoutRole](self, "layoutRole")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (SBLayoutElement)elementWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [self elementWithDescriptor:descriptorCopy layoutRole:{objc_msgSend(descriptorCopy, "layoutRole")}];

  return v5;
}

+ (SBLayoutElement)elementWithDescriptor:(id)descriptor layoutRole:(int64_t)role
{
  descriptorCopy = descriptor;
  v7 = [self alloc];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];
  supportedLayoutRoles = [descriptorCopy supportedLayoutRoles];
  layoutAttributes = [descriptorCopy layoutAttributes];
  viewControllerClass = [descriptorCopy viewControllerClass];
  entityGenerator = [descriptorCopy entityGenerator];

  v13 = [v7 initWithIdentifier:uniqueIdentifier layoutRole:role supportedLayoutRoles:supportedLayoutRoles layoutAttributes:layoutAttributes viewControllerClass:viewControllerClass entityGenerator:entityGenerator];

  return v13;
}

- (SBLayoutElement)initWithIdentifier:(id)identifier layoutRole:(int64_t)role supportedLayoutRoles:(id)roles layoutAttributes:(unint64_t)attributes viewControllerClass:(Class)class entityGenerator:(id)generator
{
  identifierCopy = identifier;
  rolesCopy = roles;
  generatorCopy = generator;
  v23.receiver = self;
  v23.super_class = SBLayoutElement;
  v17 = [(SBLayoutElement *)&v23 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v18;

    v17->_layoutRole = role;
    objc_storeStrong(&v17->_supportedLayoutRoles, roles);
    v17->_layoutAttributes = attributes;
    v17->_viewControllerClass = class;
    v20 = [generatorCopy copy];
    entityGenerator = v17->_entityGenerator;
    v17->_entityGenerator = v20;
  }

  return v17;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLayoutElement *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  uniqueIdentifier = [(SBLayoutElement *)self uniqueIdentifier];
  v5 = [v3 appendObject:uniqueIdentifier withName:@"uniqueIdentifier"];

  v6 = SBLayoutRoleDescription([(SBLayoutElement *)self layoutRole]);
  v7 = [v3 appendObject:v6 withName:@"layoutRole"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLayoutElement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBLayoutElement *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SBLayoutElement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __57__SBLayoutElement_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) supportedLayoutRoles];
  v4 = [v2 appendObject:v3 withName:@"supportedLayoutRoles"];

  v5 = *(a1 + 32);
  v6 = SBLayoutAttributesDescription([*(a1 + 40) layoutAttributes]);
  v7 = [v5 appendObject:v6 withName:@"layoutAttributes"];

  v8 = *(a1 + 32);
  v10 = NSStringFromClass([*(a1 + 40) viewControllerClass]);
  v9 = [v8 appendObject:v10 withName:@"viewControllerClass"];
}

- (BOOL)representsSameLayoutElementAsDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  uniqueIdentifier = [(SBLayoutElement *)self uniqueIdentifier];
  uniqueIdentifier2 = [descriptorCopy uniqueIdentifier];

  LOBYTE(descriptorCopy) = [uniqueIdentifier isEqualToString:uniqueIdentifier2];
  return descriptorCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSString *)self->_uniqueIdentifier copy];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    *(v4 + 2) = self->_layoutRole;
    objc_storeStrong(v4 + 3, self->_supportedLayoutRoles);
    *(v4 + 4) = self->_layoutAttributes;
    *(v4 + 5) = self->_viewControllerClass;
    v7 = [self->_entityGenerator copy];
    v8 = *(v4 + 6);
    *(v4 + 6) = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = [(SBLayoutElement *)self uniqueIdentifier];
      uniqueIdentifier2 = [(SBLayoutElement *)equalCopy uniqueIdentifier];
      if ([uniqueIdentifier isEqualToString:uniqueIdentifier2] && (v7 = -[SBLayoutElement layoutRole](self, "layoutRole"), v7 == -[SBLayoutElement layoutRole](equalCopy, "layoutRole")))
      {
        supportedLayoutRoles = [(SBLayoutElement *)self supportedLayoutRoles];
        supportedLayoutRoles2 = [(SBLayoutElement *)equalCopy supportedLayoutRoles];
        if ([supportedLayoutRoles isEqual:supportedLayoutRoles2] && (v10 = -[SBLayoutElement layoutAttributes](self, "layoutAttributes"), v10 == -[SBLayoutElement layoutAttributes](equalCopy, "layoutAttributes")))
        {
          viewControllerClass = [(SBLayoutElement *)self viewControllerClass];
          v12 = viewControllerClass == [(SBLayoutElement *)equalCopy viewControllerClass];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end