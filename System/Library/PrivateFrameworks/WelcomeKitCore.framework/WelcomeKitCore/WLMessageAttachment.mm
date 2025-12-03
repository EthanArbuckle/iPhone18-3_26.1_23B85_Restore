@interface WLMessageAttachment
- (id)_initWithData:(id)data fileName:(id)name mimeType:(id)type uti:(id)uti;
@end

@implementation WLMessageAttachment

- (id)_initWithData:(id)data fileName:(id)name mimeType:(id)type uti:(id)uti
{
  dataCopy = data;
  nameCopy = name;
  typeCopy = type;
  utiCopy = uti;
  v18.receiver = self;
  v18.super_class = WLMessageAttachment;
  v15 = [(WLMessageAttachment *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_data, data);
    objc_storeStrong(p_isa + 1, name);
    objc_storeStrong(p_isa + 2, type);
    objc_storeStrong(p_isa + 3, uti);
  }

  return p_isa;
}

@end