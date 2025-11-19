@interface SXBlockActionActivity
- (SXBlockActionActivity)initWithLabel:(id)a3 image:(id)a4 type:(unint64_t)a5 block:(id)a6;
- (SXBlockActionActivity)initWithLabel:(id)a3 type:(unint64_t)a4 immediateBlock:(id)a5 userSelectedBlock:(id)a6;
- (void)invokeWithAction:(id)a3 invocationMethod:(unint64_t)a4;
@end

@implementation SXBlockActionActivity

- (SXBlockActionActivity)initWithLabel:(id)a3 image:(id)a4 type:(unint64_t)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = SXBlockActionActivity;
  v13 = [(SXBlockActionActivity *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    label = v13->_label;
    v13->_label = v14;

    objc_storeStrong(&v13->_image, a4);
    v13->_type = a5;
    v16 = [v12 copy];
    genericBlock = v13->_genericBlock;
    v13->_genericBlock = v16;
  }

  return v13;
}

- (SXBlockActionActivity)initWithLabel:(id)a3 type:(unint64_t)a4 immediateBlock:(id)a5 userSelectedBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SXBlockActionActivity;
  v13 = [(SXBlockActionActivity *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    label = v13->_label;
    v13->_label = v14;

    v13->_type = a4;
    v16 = MEMORY[0x1DA716BE0](v11);
    immediateBlock = v13->_immediateBlock;
    v13->_immediateBlock = v16;

    v18 = MEMORY[0x1DA716BE0](v12);
    userSelectedBlock = v13->_userSelectedBlock;
    v13->_userSelectedBlock = v18;
  }

  return v13;
}

- (void)invokeWithAction:(id)a3 invocationMethod:(unint64_t)a4
{
  v12 = a3;
  v6 = [(SXBlockActionActivity *)self genericBlock];

  if (v6)
  {
    v7 = [(SXBlockActionActivity *)self genericBlock];
LABEL_3:
    v8 = v7;
    (*(v7 + 16))(v7, v12);

    goto LABEL_4;
  }

  v9 = [(SXBlockActionActivity *)self userSelectedBlock];
  if (v9)
  {
    v10 = v9;
    v11 = [(SXBlockActionActivity *)self immediateBlock];

    if (v11)
    {
      if (a4 == 1)
      {
        v7 = [(SXBlockActionActivity *)self userSelectedBlock];
        goto LABEL_3;
      }

      if (!a4)
      {
        v7 = [(SXBlockActionActivity *)self immediateBlock];
        goto LABEL_3;
      }
    }
  }

LABEL_4:
}

@end