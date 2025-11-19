@interface TSTTableHeaderInfo
- (id)description;
@end

@implementation TSTTableHeaderInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p size %f count %u hiding 0x%02hx cstyle %p tstyle %p", v7, v8, v5, self, *&self->_size, self->_numberOfCells, self->_hidingState, self->_cellStyle, self->_textStyle);

  return v9;
}

@end