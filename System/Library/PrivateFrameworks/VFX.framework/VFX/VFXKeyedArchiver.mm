@interface VFXKeyedArchiver
+ (id)archivedDataWithRootObject:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
@end

@implementation VFXKeyedArchiver

+ (id)archivedDataWithRootObject:(id)a3 options:(id)a4
{
  v7 = objc_allocWithZone(MEMORY[0x1E695DF88]);
  v10 = objc_msgSend_initWithLength_(v7, v8, 0, v9);
  v11 = objc_opt_new();
  v12 = objc_allocWithZone(a1);
  v15 = objc_msgSend_initForWritingWithMutableData_(v12, v13, v10, v14);
  objc_msgSend_setOptions_(v15, v16, a4, v17);
  objc_msgSend_encodeObject_forKey_(v15, v18, a3, *MEMORY[0x1E696A508]);
  objc_msgSend_finishEncoding(v15, v19, v20, v21);
  objc_msgSend_drain(v11, v22, v23, v24);
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXKeyedArchiver;
  [(VFXKeyedArchiver *)&v3 dealloc];
}

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  if (!strcmp(a3, "{CATransform3D=dddddddddddddddd}"))
  {
    memset(v10, 0, sizeof(v10));
    *&v7 = *&sub_1AF3BAF14(v10, a4);
    objc_msgSend_encodeBytes_length_(self, v8, v10, 64, v7);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VFXKeyedArchiver;
    [(VFXKeyedArchiver *)&v9 encodeValueOfObjCType:a3 at:a4];
  }
}

@end