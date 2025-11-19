@interface WBSPasswordImportCSVColumnIndices
- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)a3 usernameIndex:(unint64_t)a4 passwordIndex:(unint64_t)a5;
- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)a3 usernameIndex:(unint64_t)a4 passwordIndex:(unint64_t)a5 sidecarDataIndices:(id)a6;
@end

@implementation WBSPasswordImportCSVColumnIndices

- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)a3 usernameIndex:(unint64_t)a4 passwordIndex:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = WBSPasswordImportCSVColumnIndices;
  v8 = [(WBSPasswordImportCSVColumnIndices *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_urlIndex = a3;
    v8->_usernameIndex = a4;
    v8->_passwordIndex = a5;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *&v8->_otpAuthURLIndex = vnegq_f64(v10);
    v8->_titleIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11 = v8;
  }

  return v9;
}

- (WBSPasswordImportCSVColumnIndices)initWithURLIndex:(unint64_t)a3 usernameIndex:(unint64_t)a4 passwordIndex:(unint64_t)a5 sidecarDataIndices:(id)a6
{
  v10 = a6;
  v11 = [(WBSPasswordImportCSVColumnIndices *)self initWithURLIndex:a3 usernameIndex:a4 passwordIndex:a5];
  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"otpAuthURLIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 unsignedIntegerValue];
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11->_otpAuthURLIndex = v13;
    v14 = [v10 objectForKeyedSubscript:@"notesEntryIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 unsignedIntegerValue];
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11->_notesEntryIndex = v15;
    v16 = [v10 objectForKeyedSubscript:@"titleIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 unsignedIntegerValue];
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11->_titleIndex = v17;
    v18 = v11;
  }

  return v11;
}

@end