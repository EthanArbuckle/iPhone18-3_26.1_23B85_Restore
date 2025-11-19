@interface VFXKeyedUnarchiver
- (NSURL)documentEnclosingURL;
- (id)initForReadingWithData:(id)a3 secure:(BOOL)a4;
- (void)dealloc;
- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4;
@end

@implementation VFXKeyedUnarchiver

- (id)initForReadingWithData:(id)a3 secure:(BOOL)a4
{
  v4 = a4;
  v15.receiver = self;
  v15.super_class = VFXKeyedUnarchiver;
  v16 = 0;
  v5 = [(VFXKeyedUnarchiver *)&v15 initForReadingFromData:a3 error:&v16];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setDecodingFailurePolicy_(v5, v6, 0, v7);
    objc_msgSend_setRequiresSecureCoding_(v8, v9, v4, v10);
  }

  if (v16)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5770(&v16, v11, v12, v13);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXKeyedUnarchiver;
  [(VFXKeyedUnarchiver *)&v3 dealloc];
}

- (NSURL)documentEnclosingURL
{
  v4 = objc_msgSend_documentURL(self, a2, v2, v3);

  return objc_msgSend_URLByDeletingLastPathComponent(v4, v5, v6, v7);
}

- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4
{
  if (!strcmp(a3, "{CATransform3D=dddddddddddddddd}"))
  {
    v17 = 0;
    v9 = objc_msgSend_decodeBytesWithReturnedLength_(self, v7, &v17, v8);
    if (v17 == 64)
    {
      sub_1AF3BAED8(v9, a4);
    }

    else
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5800(v10);
      }

      v11 = MEMORY[0x1E69792E8];
      v12 = *(MEMORY[0x1E69792E8] + 80);
      *(a4 + 4) = *(MEMORY[0x1E69792E8] + 64);
      *(a4 + 5) = v12;
      v13 = v11[7];
      *(a4 + 6) = v11[6];
      *(a4 + 7) = v13;
      v14 = v11[1];
      *a4 = *v11;
      *(a4 + 1) = v14;
      v15 = v11[3];
      *(a4 + 2) = v11[2];
      *(a4 + 3) = v15;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VFXKeyedUnarchiver;
    [(VFXKeyedUnarchiver *)&v16 decodeValueOfObjCType:a3 at:a4];
  }
}

@end