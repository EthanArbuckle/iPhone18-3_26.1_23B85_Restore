@interface RSRecessedArea
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RSRecessedArea

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = objc_msgSend_initWithArray_copyItems_(v5, v6, self->recessedWalls, 1);
  v8 = v4[1];
  v4[1] = v7;

  v9 = objc_alloc(MEMORY[0x277CBEA60]);
  v11 = objc_msgSend_initWithArray_copyItems_(v9, v10, self->bayWindows, 1);
  v12 = v4[2];
  v4[2] = v11;

  v15 = objc_msgSend_copy(self->frontOpening, v13, v14);
  v16 = v4[3];
  v4[3] = v15;

  return v4;
}

@end