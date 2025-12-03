@interface WBSPasswordImportCSVColumnIndices
- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)index usernameIndex:(unint64_t)usernameIndex passwordIndex:(unint64_t)passwordIndex;
- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)index usernameIndex:(unint64_t)usernameIndex passwordIndex:(unint64_t)passwordIndex sidecarDataIndices:(id)indices;
@end

@implementation WBSPasswordImportCSVColumnIndices

- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)index usernameIndex:(unint64_t)usernameIndex passwordIndex:(unint64_t)passwordIndex
{
  v13.receiver = self;
  v13.super_class = WBSPasswordImportCSVColumnIndices;
  v8 = [(WBSPasswordImportCSVColumnIndices *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_urlIndex = index;
    v8->_usernameIndex = usernameIndex;
    v8->_passwordIndex = passwordIndex;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *&v8->_otpAuthURLIndex = vnegq_f64(v10);
    v8->_titleIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11 = v8;
  }

  return v9;
}

- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)index usernameIndex:(unint64_t)usernameIndex passwordIndex:(unint64_t)passwordIndex sidecarDataIndices:(id)indices
{
  indicesCopy = indices;
  v11 = [(WBSPasswordImportCSVColumnIndices *)self initWithURLIndex:index usernameIndex:usernameIndex passwordIndex:passwordIndex];
  if (v11)
  {
    v12 = [indicesCopy objectForKeyedSubscript:@"otpAuthURLIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11->_otpAuthURLIndex = unsignedIntegerValue;
    v14 = [indicesCopy objectForKeyedSubscript:@"notesEntryIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [v14 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11->_notesEntryIndex = unsignedIntegerValue2;
    v16 = [indicesCopy objectForKeyedSubscript:@"titleIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue3 = [v16 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11->_titleIndex = unsignedIntegerValue3;
    v18 = v11;
  }

  return v11;
}

@end