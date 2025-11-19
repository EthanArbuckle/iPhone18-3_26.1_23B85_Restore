@interface OutliersRemovalShaders
- (OutliersRemovalShaders)initWithMetal:(id)a3;
@end

@implementation OutliersRemovalShaders

- (OutliersRemovalShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OutliersRemovalShaders;
  v6 = [(OutliersRemovalShaders *)&v11 init];
  if (!v6)
  {
    sub_2958CBCD8();
LABEL_9:
    v9 = 0;
    goto LABEL_5;
  }

  if (!v4)
  {
    sub_2958CBC34();
    goto LABEL_9;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(v4, v5, @"OutliersRemoval", 0);
  outiersRemovalFilter = v6->_outiersRemovalFilter;
  v6->_outiersRemovalFilter = v7;

  if (!v6->_outiersRemovalFilter)
  {
    sub_2958CBB90();
    goto LABEL_9;
  }

  v9 = v6;
LABEL_5:

  return v9;
}

@end