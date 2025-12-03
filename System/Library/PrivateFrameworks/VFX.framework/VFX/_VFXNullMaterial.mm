@interface _VFXNullMaterial
+ (id)nullMaterial;
- (_VFXNullMaterial)initWithCoder:(id)coder;
@end

@implementation _VFXNullMaterial

+ (id)nullMaterial
{
  if (qword_1EB658870 != -1)
  {
    sub_1AFDF5BAC();
  }

  return qword_1EB658868;
}

- (_VFXNullMaterial)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _VFXNullMaterial;
  result = [(VFXMaterial *)&v7 initWithCoder:coder];
  if (result)
  {

    return objc_msgSend_nullMaterial(_VFXNullMaterial, v4, v5, v6);
  }

  return result;
}

@end