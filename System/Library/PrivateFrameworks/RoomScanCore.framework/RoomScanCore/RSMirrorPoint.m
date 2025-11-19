@interface RSMirrorPoint
- (RSMirrorPoint)initWithCoder:(id)a3;
- (RSMirrorPoint)initWithOrigin:(RSMirrorPoint *)self reflect:(SEL)a2;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RSMirrorPoint

- (id)dictionaryRepresentation
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"origin";
  v4 = sub_262294488(*self->_origin, self, a2, v2);
  v12[1] = @"reflect";
  v13[0] = v4;
  v7 = sub_262294488(*self->_reflect, v4, v5, v6);
  v13[1] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v13, v12, 2);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (RSMirrorPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RSMirrorPoint;
  v5 = [(RSMirrorPoint *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v10, @"origin");
    sub_2622946E4(v12, v5->_origin);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v13, v10, @"reflect");
    sub_2622946E4(v14, v5->_reflect);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v6 = sub_262294488(*self->_origin, v13, v4, v5);
  objc_msgSend_encodeObject_forKey_(v13, v7, v6, @"origin");

  v11 = sub_262294488(*self->_reflect, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v13, v12, v11, @"reflect");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RSMirrorPoint alloc];
  v7 = *self->_origin;
  v8 = *self->_reflect;

  return objc_msgSend_initWithOrigin_reflect_(v4, v5, v6, *&v7, *&v8);
}

- (RSMirrorPoint)initWithOrigin:(RSMirrorPoint *)self reflect:(SEL)a2
{
  v5 = v2;
  v6 = v3;
  v7.receiver = self;
  v7.super_class = RSMirrorPoint;
  result = [(RSMirrorPoint *)&v7 init];
  if (result)
  {
    *result->_origin = v5;
    *result->_reflect = v6;
  }

  return result;
}

@end