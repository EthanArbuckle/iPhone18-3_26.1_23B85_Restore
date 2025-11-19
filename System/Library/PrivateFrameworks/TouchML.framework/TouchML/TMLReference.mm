@interface TMLReference
+ (id)referenceForTarget:(id)a3;
+ (id)referenceWithBlock:(id)a3;
- (NSString)description;
- (TMLReference)initWithTarget:(id)a3 block:(id)a4;
- (id)value;
@end

@implementation TMLReference

- (TMLReference)initWithTarget:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TMLReference;
  v9 = [(TMLReference *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_target, a3);
    v11 = MEMORY[0x27438BB60](v8);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

+ (id)referenceForTarget:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v8 = objc_msgSend_initWithTarget_block_(v5, v6, v7, v4, 0);

  return v8;
}

+ (id)referenceWithBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v8 = objc_msgSend_initWithTarget_block_(v5, v6, v7, 0, v4);

  return v8;
}

- (id)value
{
  block = self->_block;
  if (block)
  {
    v4 = block[2](block, a2);
    target = self->_target;
    self->_target = v4;

    v6 = self->_block;
    self->_block = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = self->_target;
  if (isKindOfClass)
  {
    v11 = objc_msgSend_object(v10, v7, v9);
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_tmlIdentifier(self->_target, v5, v6);
  v10 = objc_msgSend_stringWithFormat_(v3, v8, v9, @"%@:%@", v4, v7);

  return v10;
}

@end