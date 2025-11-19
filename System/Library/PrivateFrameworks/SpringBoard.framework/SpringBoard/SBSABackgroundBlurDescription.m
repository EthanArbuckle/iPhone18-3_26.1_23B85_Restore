@interface SBSABackgroundBlurDescription
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)blurFrame;
- (NSString)description;
- (NSUUID)interfaceElementIdentifier;
- (id)copyBySettingBlurFrame:(CGRect)a3;
- (id)copyBySettingBlurHidden:(BOOL)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSABackgroundBlurDescription

- (NSUUID)interfaceElementIdentifier
{
  if (interfaceElementIdentifier___onceToken != -1)
  {
    [SBSABackgroundBlurDescription interfaceElementIdentifier];
  }

  v3 = interfaceElementIdentifier___backgroundBlurInterfaceElementUUID;

  return v3;
}

- (CGRect)blurFrame
{
  x = self->_blurFrame.origin.x;
  y = self->_blurFrame.origin.y;
  width = self->_blurFrame.size.width;
  height = self->_blurFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)copyBySettingBlurHidden:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SBSABackgroundBlurDescription_copyBySettingBlurHidden___block_invoke;
  v4[3] = &__block_descriptor_33_e46_v16__0__SBSABackgroundBlurDescriptionMutator_8l;
  v5 = a3;
  return [(SBSABackgroundBlurDescription *)self copyWithBlock:v4];
}

- (id)copyBySettingBlurFrame:(CGRect)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SBSABackgroundBlurDescription_copyBySettingBlurFrame___block_invoke;
  v4[3] = &__block_descriptor_64_e46_v16__0__SBSABackgroundBlurDescriptionMutator_8l;
  v5 = a3;
  return [(SBSABackgroundBlurDescription *)self copyWithBlock:v4];
}

void __59__SBSABackgroundBlurDescription_interfaceElementIdentifier__block_invoke()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = interfaceElementIdentifier___backgroundBlurInterfaceElementUUID;
  interfaceElementIdentifier___backgroundBlurInterfaceElementUUID = v0;
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSABackgroundBlurDescription *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  blurHidden = self->_blurHidden;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__SBSABackgroundBlurDescription_isEqual___block_invoke;
  v21[3] = &unk_2783ACE58;
  v7 = v4;
  v22 = v7;
  v8 = [v5 appendBool:blurHidden counterpart:v21];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __41__SBSABackgroundBlurDescription_isEqual___block_invoke_2;
  v19 = &unk_2783B0268;
  v20 = v7;
  x = self->_blurFrame.origin.x;
  y = self->_blurFrame.origin.y;
  width = self->_blurFrame.size.width;
  height = self->_blurFrame.size.height;
  v13 = v7;
  v14 = [v8 appendCGRect:&v16 counterpart:{x, y, width, height}];
  LOBYTE(v7) = [v14 isEqual];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_blurHidden];
  v5 = [v4 appendCGRect:{self->_blurFrame.origin.x, self->_blurFrame.origin.y, self->_blurFrame.size.width, self->_blurFrame.size.height}];
  v6 = [v5 hash];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromBOOL();
  v6 = NSStringFromCGRect(self->_blurFrame);
  v7 = [v3 stringWithFormat:@"<%@: %p blurHidden: %@; blurFrame: %@>", v4, self, v5, v6];;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 8) = self->_blurHidden;
  size = self->_blurFrame.size;
  *(result + 1) = self->_blurFrame.origin;
  *(result + 2) = size;
  return result;
}

@end