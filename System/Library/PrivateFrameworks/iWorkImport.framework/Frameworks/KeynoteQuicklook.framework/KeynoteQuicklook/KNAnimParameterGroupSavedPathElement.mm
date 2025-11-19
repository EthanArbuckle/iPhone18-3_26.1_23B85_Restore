@interface KNAnimParameterGroupSavedPathElement
- (CGPoint)cp1;
- (CGPoint)cp2;
- (CGPoint)toPoint;
- (KNAnimParameterGroupSavedPathElement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNAnimParameterGroupSavedPathElement

- (KNAnimParameterGroupSavedPathElement)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = KNAnimParameterGroupSavedPathElement;
  v6 = [(KNAnimParameterGroupSavedPathElement *)&v29 init];
  if (v6)
  {
    v6->_elementType = objc_msgSend_decodeIntegerForKey_(v4, v5, @"ele");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"tv");
    objc_msgSend_CGPointValue(v9, v10, v11);
    v6->_toPoint.x = v12;
    v6->_toPoint.y = v13;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"cp1");
    objc_msgSend_CGPointValue(v16, v17, v18);
    v6->_cp1.x = v19;
    v6->_cp1.y = v20;

    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v21, @"cp2");
    objc_msgSend_CGPointValue(v23, v24, v25);
    v6->_cp2.x = v26;
    v6->_cp2.y = v27;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_elementType(self, v5, v6);
  objc_msgSend_encodeInteger_forKey_(v4, v8, v7, @"ele");
  v9 = MEMORY[0x277CCAE60];
  objc_msgSend_toPoint(self, v10, v11);
  v14 = objc_msgSend_valueWithCGPoint_(v9, v12, v13);
  objc_msgSend_encodeObject_forKey_(v4, v15, v14, @"tv");

  v16 = MEMORY[0x277CCAE60];
  objc_msgSend_cp1(self, v17, v18);
  v21 = objc_msgSend_valueWithCGPoint_(v16, v19, v20);
  objc_msgSend_encodeObject_forKey_(v4, v22, v21, @"cp1");

  v23 = MEMORY[0x277CCAE60];
  objc_msgSend_cp2(self, v24, v25);
  v29 = objc_msgSend_valueWithCGPoint_(v23, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v28, v29, @"cp2");
}

- (CGPoint)toPoint
{
  x = self->_toPoint.x;
  y = self->_toPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp1
{
  x = self->_cp1.x;
  y = self->_cp1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp2
{
  x = self->_cp2.x;
  y = self->_cp2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end