@interface SBLayoutElement
+ (SBLayoutElement)elementWithDescriptor:(id)a3;
+ (SBLayoutElement)elementWithDescriptor:(id)a3 layoutRole:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)representsSameLayoutElementAsDescriptor:(id)a3;
- (SBLayoutElement)initWithIdentifier:(id)a3 layoutRole:(int64_t)a4 supportedLayoutRoles:(id)a5 layoutAttributes:(unint64_t)a6 viewControllerClass:(Class)a7 entityGenerator:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)workspaceEntity;
- (unint64_t)hash;
@end

@implementation SBLayoutElement

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(SBLayoutElement *)self uniqueIdentifier];
  v5 = [v3 appendObject:v4];

  v6 = [v3 appendInteger:{-[SBLayoutElement layoutRole](self, "layoutRole")}];
  v7 = [(SBLayoutElement *)self supportedLayoutRoles];
  v8 = [v3 appendObject:v7];

  v9 = [v3 appendUnsignedInteger:{-[SBLayoutElement layoutAttributes](self, "layoutAttributes")}];
  v10 = NSStringFromClass([(SBLayoutElement *)self viewControllerClass]);
  v11 = [v3 appendObject:v10];

  v12 = [v3 hash];
  return v12;
}

- (id)workspaceEntity
{
  v3 = [(SBLayoutElement *)self entityGenerator];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
    [v5 setLayoutRole:{-[SBLayoutElement layoutRole](self, "layoutRole")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (SBLayoutElement)elementWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [a1 elementWithDescriptor:v4 layoutRole:{objc_msgSend(v4, "layoutRole")}];

  return v5;
}

+ (SBLayoutElement)elementWithDescriptor:(id)a3 layoutRole:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [v6 uniqueIdentifier];
  v9 = [v6 supportedLayoutRoles];
  v10 = [v6 layoutAttributes];
  v11 = [v6 viewControllerClass];
  v12 = [v6 entityGenerator];

  v13 = [v7 initWithIdentifier:v8 layoutRole:a4 supportedLayoutRoles:v9 layoutAttributes:v10 viewControllerClass:v11 entityGenerator:v12];

  return v13;
}

- (SBLayoutElement)initWithIdentifier:(id)a3 layoutRole:(int64_t)a4 supportedLayoutRoles:(id)a5 layoutAttributes:(unint64_t)a6 viewControllerClass:(Class)a7 entityGenerator:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v23.receiver = self;
  v23.super_class = SBLayoutElement;
  v17 = [(SBLayoutElement *)&v23 init];
  if (v17)
  {
    v18 = [v14 copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v18;

    v17->_layoutRole = a4;
    objc_storeStrong(&v17->_supportedLayoutRoles, a5);
    v17->_layoutAttributes = a6;
    v17->_viewControllerClass = a7;
    v20 = [v16 copy];
    entityGenerator = v17->_entityGenerator;
    v17->_entityGenerator = v20;
  }

  return v17;
}

- (id)succinctDescription
{
  v2 = [(SBLayoutElement *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBLayoutElement *)self uniqueIdentifier];
  v5 = [v3 appendObject:v4 withName:@"uniqueIdentifier"];

  v6 = SBLayoutRoleDescription([(SBLayoutElement *)self layoutRole]);
  v7 = [v3 appendObject:v6 withName:@"layoutRole"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLayoutElement *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLayoutElement *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SBLayoutElement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (BOOL)representsSameLayoutElementAsDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(SBLayoutElement *)self uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SBLayoutElement *)self uniqueIdentifier];
      v6 = [(SBLayoutElement *)v4 uniqueIdentifier];
      if ([v5 isEqualToString:v6] && (v7 = -[SBLayoutElement layoutRole](self, "layoutRole"), v7 == -[SBLayoutElement layoutRole](v4, "layoutRole")))
      {
        v8 = [(SBLayoutElement *)self supportedLayoutRoles];
        v9 = [(SBLayoutElement *)v4 supportedLayoutRoles];
        if ([v8 isEqual:v9] && (v10 = -[SBLayoutElement layoutAttributes](self, "layoutAttributes"), v10 == -[SBLayoutElement layoutAttributes](v4, "layoutAttributes")))
        {
          v11 = [(SBLayoutElement *)self viewControllerClass];
          v12 = v11 == [(SBLayoutElement *)v4 viewControllerClass];
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