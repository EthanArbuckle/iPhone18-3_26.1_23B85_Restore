@interface WLMessageAttachment
- (id)_initWithData:(id)a3 fileName:(id)a4 mimeType:(id)a5 uti:(id)a6;
@end

@implementation WLMessageAttachment

- (id)_initWithData:(id)a3 fileName:(id)a4 mimeType:(id)a5 uti:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = WLMessageAttachment;
  v15 = [(WLMessageAttachment *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_data, a3);
    objc_storeStrong(p_isa + 1, a4);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 3, a6);
  }

  return p_isa;
}

@end