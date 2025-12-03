@interface VFXModelDeformer
- (VFXModelDeformer)initWithCoder:(id)coder;
- (void)_enumerateDependencyNodesUsingBlock:(id)block;
@end

@implementation VFXModelDeformer

- (VFXModelDeformer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = VFXModelDeformer;
  return [(VFXModelDeformer *)&v4 init];
}

- (void)_enumerateDependencyNodesUsingBlock:(id)block
{
  v13 = 0;
  v8 = objc_msgSend_requiredInputs(self, a2, block, v3);
  if ((v8 & 0x38) != 0)
  {
    v9 = objc_msgSend_dependencyNodeAtIndex_(self, v6, 0, v7);
    if (v9)
    {
      (*(block + 2))(block, 0, v9, v8, &v13);
    }

    else if ((byte_1EB658658 & 1) == 0)
    {
      byte_1EB658658 = 1;
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE18B8(v10);
      }
    }
  }

  if ((v8 & 0x1C0) != 0)
  {
    v11 = objc_msgSend_dependencyNodeAtIndex_(self, v6, 1, v7);
    if (v11)
    {
      (*(block + 2))(block, 1, v11, v8, &v13);
    }

    else if ((byte_1EB658659 & 1) == 0)
    {
      byte_1EB658659 = 1;
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE18FC(v12);
      }
    }
  }
}

@end