@interface TSCH3DFBOResource
- (id)description;
@end

@implementation TSCH3DFBOResource

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DFBOResource;
  v4 = [(TSCH3DFBOResource *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(name %@)", v4, self->_name);

  return v9;
}

@end