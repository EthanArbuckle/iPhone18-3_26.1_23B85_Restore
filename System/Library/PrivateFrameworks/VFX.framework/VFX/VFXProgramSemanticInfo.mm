@interface VFXProgramSemanticInfo
+ (id)infoWithSemantic:(id)semantic options:(id)options;
- (VFXProgramSemanticInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXProgramSemanticInfo

+ (id)infoWithSemantic:(id)semantic options:(id)options
{
  v6 = objc_alloc_init(self);
  objc_msgSend_setSemantic_(v6, v7, semantic, v8);
  objc_msgSend_setOptions_(v6, v9, options, v10);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_semantic(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"semantic");
  v12 = objc_msgSend_options(self, v8, v9, v10);

  objc_msgSend_encodeObject_forKey_(coder, v11, v12, @"options");
}

- (VFXProgramSemanticInfo)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = VFXProgramSemanticInfo;
  v4 = [(VFXProgramSemanticInfo *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"semantic");
    objc_msgSend_setSemantic_(v4, v8, v7, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"options");
    objc_msgSend_setOptions_(v4, v13, v12, v14);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXProgramSemanticInfo;
  [(VFXProgramSemanticInfo *)&v3 dealloc];
}

@end