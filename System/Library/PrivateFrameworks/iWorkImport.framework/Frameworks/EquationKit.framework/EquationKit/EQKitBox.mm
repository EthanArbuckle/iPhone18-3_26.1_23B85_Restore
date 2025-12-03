@interface EQKitBox
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transformFromDescendant:(SEL)descendant;
- (CGRect)erasableBounds;
- (double)layoutDepth;
- (double)layoutHeight;
- (double)layoutVSize;
- (double)vsize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EQKitBox

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v4, v5, zone, v6);

  return MEMORY[0x2821F9670](v7, sel_init, v8, v9);
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v5 = objc_opt_class();

  return objc_msgSend_isMemberOfClass_(equal, v4, v5, v6);
}

- (double)vsize
{
  objc_msgSend_height(self, a2, v2, v3);
  v6 = v5;
  objc_msgSend_depth(self, v7, v8, v9);
  return v6 + v10;
}

- (double)layoutHeight
{
  objc_msgSend_height(self, a2, v2, v3);
  if (v8 < 0.0)
  {
    return 0.0;
  }

  objc_msgSend_height(self, v5, v6, v7);
  return result;
}

- (double)layoutDepth
{
  objc_msgSend_depth(self, a2, v2, v3);
  if (v8 < 0.0)
  {
    return 0.0;
  }

  objc_msgSend_depth(self, v5, v6, v7);
  return result;
}

- (double)layoutVSize
{
  objc_msgSend_layoutHeight(self, a2, v2, v3);
  v6 = v5;
  objc_msgSend_layoutDepth(self, v7, v8, v9);
  return v6 + v10;
}

- (CGRect)erasableBounds
{
  objc_msgSend_height(self, a2, v2, v3);
  v6 = v5;
  v7 = -v5;
  objc_msgSend_width(self, v8, v9, v10);
  v12 = v11;
  objc_msgSend_vsize(self, v13, v14, v15);
  v17 = -v12;
  if (v12 < 0.0)
  {
    v18 = v12 + 0.0;
  }

  else
  {
    v17 = v12;
    v18 = 0.0;
  }

  v19 = v16 - v6;
  v20 = -v16;
  if (v16 >= 0.0)
  {
    v20 = v16;
    v19 = v7;
  }

  v21 = v18;
  result.size.height = v20;
  result.size.width = v17;
  result.origin.y = v19;
  result.origin.x = v21;
  return result;
}

- (CGAffineTransform)transformFromDescendant:(SEL)descendant
{
  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  return objc_msgSend_p_getTransform_fromDescendant_(self, descendant, retstr, a4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@ %p>", v6, v4, self);
}

@end