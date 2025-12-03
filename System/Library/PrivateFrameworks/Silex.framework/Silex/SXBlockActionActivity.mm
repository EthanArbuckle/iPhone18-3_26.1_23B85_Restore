@interface SXBlockActionActivity
- (SXBlockActionActivity)initWithLabel:(id)label image:(id)image type:(unint64_t)type block:(id)block;
- (SXBlockActionActivity)initWithLabel:(id)label type:(unint64_t)type immediateBlock:(id)block userSelectedBlock:(id)selectedBlock;
- (void)invokeWithAction:(id)action invocationMethod:(unint64_t)method;
@end

@implementation SXBlockActionActivity

- (SXBlockActionActivity)initWithLabel:(id)label image:(id)image type:(unint64_t)type block:(id)block
{
  labelCopy = label;
  imageCopy = image;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = SXBlockActionActivity;
  v13 = [(SXBlockActionActivity *)&v19 init];
  if (v13)
  {
    v14 = [labelCopy copy];
    label = v13->_label;
    v13->_label = v14;

    objc_storeStrong(&v13->_image, image);
    v13->_type = type;
    v16 = [blockCopy copy];
    genericBlock = v13->_genericBlock;
    v13->_genericBlock = v16;
  }

  return v13;
}

- (SXBlockActionActivity)initWithLabel:(id)label type:(unint64_t)type immediateBlock:(id)block userSelectedBlock:(id)selectedBlock
{
  labelCopy = label;
  blockCopy = block;
  selectedBlockCopy = selectedBlock;
  v21.receiver = self;
  v21.super_class = SXBlockActionActivity;
  v13 = [(SXBlockActionActivity *)&v21 init];
  if (v13)
  {
    v14 = [labelCopy copy];
    label = v13->_label;
    v13->_label = v14;

    v13->_type = type;
    v16 = MEMORY[0x1DA716BE0](blockCopy);
    immediateBlock = v13->_immediateBlock;
    v13->_immediateBlock = v16;

    v18 = MEMORY[0x1DA716BE0](selectedBlockCopy);
    userSelectedBlock = v13->_userSelectedBlock;
    v13->_userSelectedBlock = v18;
  }

  return v13;
}

- (void)invokeWithAction:(id)action invocationMethod:(unint64_t)method
{
  actionCopy = action;
  genericBlock = [(SXBlockActionActivity *)self genericBlock];

  if (genericBlock)
  {
    genericBlock2 = [(SXBlockActionActivity *)self genericBlock];
LABEL_3:
    v8 = genericBlock2;
    (*(genericBlock2 + 16))(genericBlock2, actionCopy);

    goto LABEL_4;
  }

  userSelectedBlock = [(SXBlockActionActivity *)self userSelectedBlock];
  if (userSelectedBlock)
  {
    v10 = userSelectedBlock;
    immediateBlock = [(SXBlockActionActivity *)self immediateBlock];

    if (immediateBlock)
    {
      if (method == 1)
      {
        genericBlock2 = [(SXBlockActionActivity *)self userSelectedBlock];
        goto LABEL_3;
      }

      if (!method)
      {
        genericBlock2 = [(SXBlockActionActivity *)self immediateBlock];
        goto LABEL_3;
      }
    }
  }

LABEL_4:
}

@end