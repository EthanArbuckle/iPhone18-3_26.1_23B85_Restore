@interface UIDropProposal
+ (UIDropProposal)new;
- (UIDropProposal)init;
- (UIDropProposal)initWithDropOperation:(UIDropOperation)operation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UIDropProposal

- (UIDropProposal)initWithDropOperation:(UIDropOperation)operation
{
  v5.receiver = self;
  v5.super_class = UIDropProposal;
  result = [(UIDropProposal *)&v5 init];
  if (result)
  {
    result->_operation = operation;
    result->_prefersFullSizePreview = 1;
  }

  return result;
}

- (UIDropProposal)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIDropInteraction.m" lineNumber:108 description:@"Not implemented"];

  return 0;
}

+ (UIDropProposal)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"UIDropInteraction.m" lineNumber:114 description:@"Not implemented"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithDropOperation:{-[UIDropProposal operation](self, "operation")}];
  [v4 setPrecise:{-[UIDropProposal isPrecise](self, "isPrecise")}];
  [v4 setPrefersFullSizePreview:{-[UIDropProposal prefersFullSizePreview](self, "prefersFullSizePreview")}];
  [v4 _setPreferredBadgeStyle:{-[UIDropProposal _preferredBadgeStyle](self, "_preferredBadgeStyle")}];
  return v4;
}

- (id)description
{
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(UIDropProposal *)self operation]- 1;
  if (v4 > 2)
  {
    v5 = @"Cancel";
  }

  else
  {
    v5 = off_1E71062F0[v4];
  }

  v6 = [v3 appendName:@"operation" object:v5];
  v7 = [v3 appendName:@"isPrecise" BOOLValue:{-[UIDropProposal isPrecise](self, "isPrecise")}];
  v8 = [v3 appendName:@"prefersFullSizePreview" BOOLValue:{-[UIDropProposal prefersFullSizePreview](self, "prefersFullSizePreview")}];
  if ([(UIDropProposal *)self _preferredBadgeStyle])
  {
    v9 = [(UIDropProposal *)self _preferredBadgeStyle]- 1;
    if (v9 > 3)
    {
      v10 = @"Automatic";
    }

    else
    {
      v10 = off_1E7106308[v9];
    }

    v11 = [v3 appendName:@"preferredBadgeStyle" object:v10];
  }

  v12 = [v3 string];

  return v12;
}

@end