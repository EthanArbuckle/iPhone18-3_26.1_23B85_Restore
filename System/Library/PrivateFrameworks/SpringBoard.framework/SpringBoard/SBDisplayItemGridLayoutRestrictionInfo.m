@interface SBDisplayItemGridLayoutRestrictionInfo
+ (id)layoutRestrictionInfoWithLayoutRestrictions:(unint64_t)a3 restrictedSize:(CGSize)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)restrictedSize;
- (id)_initWithLayoutRestrictions:(unint64_t)a3 restrictedSize:(CGSize)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBDisplayItemGridLayoutRestrictionInfo

+ (id)layoutRestrictionInfoWithLayoutRestrictions:(unint64_t)a3 restrictedSize:(CGSize)a4
{
  if (a3)
  {
    v5 = [[a1 alloc] _initWithLayoutRestrictions:a3 restrictedSize:{a4.width, a4.height}];
  }

  else
  {
    if (a4.width != -1.0 || a4.height != -1.0)
    {
      [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:a2 restrictedSize:a1];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__SBDisplayItemGridLayoutRestrictionInfo_layoutRestrictionInfoWithLayoutRestrictions_restrictedSize___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (layoutRestrictionInfoWithLayoutRestrictions_restrictedSize__onceToken != -1)
    {
      dispatch_once(&layoutRestrictionInfoWithLayoutRestrictions_restrictedSize__onceToken, block);
    }

    v5 = layoutRestrictionInfoWithLayoutRestrictions_restrictedSize__sSharedUnrestrictedInfo;
  }

  return v5;
}

void __101__SBDisplayItemGridLayoutRestrictionInfo_layoutRestrictionInfoWithLayoutRestrictions_restrictedSize___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithLayoutRestrictions:0 restrictedSize:{-1.0, -1.0}];
  v2 = layoutRestrictionInfoWithLayoutRestrictions_restrictedSize__sSharedUnrestrictedInfo;
  layoutRestrictionInfoWithLayoutRestrictions_restrictedSize__sSharedUnrestrictedInfo = v1;
}

- (id)_initWithLayoutRestrictions:(unint64_t)a3 restrictedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v13.receiver = self;
  v13.super_class = SBDisplayItemGridLayoutRestrictionInfo;
  v7 = [(SBDisplayItemGridLayoutRestrictionInfo *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_layoutRestrictions = a3;
    v7->_restrictedSize.width = width;
    v7->_restrictedSize.height = height;
    v9 = [MEMORY[0x277CF0C40] builder];
    v10 = [v9 appendUnsignedInteger:v8->_layoutRestrictions];
    v11 = [v9 appendCGSize:{v8->_restrictedSize.width, v8->_restrictedSize.height}];
    v8->_cachedHash = [v9 hash];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_layoutRestrictions == *(v4 + 2) && self->_restrictedSize.height == v4[4] && self->_restrictedSize.width == v4[3];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBDisplayItemGridLayoutRestrictionInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  width = self->_restrictedSize.width;
  height = self->_restrictedSize.height;
  if (width != -1.0 || height != -1.0)
  {
    v7 = NSStringFromCGSize(*&width);
    [v3 appendString:v7 withName:@"restrictedSize"];
  }

  v8 = SBDisplayItemGridLayoutRestrictionsDescription(self->_layoutRestrictions);
  [v3 appendString:v8 withName:@"restrictions"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDisplayItemGridLayoutRestrictionInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (CGSize)restrictedSize
{
  width = self->_restrictedSize.width;
  height = self->_restrictedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)layoutRestrictionInfoWithLayoutRestrictions:(uint64_t)a1 restrictedSize:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayItemGridLayoutRestrictionInfo.m" lineNumber:48 description:@"invalid layout restriction initialization"];
}

@end