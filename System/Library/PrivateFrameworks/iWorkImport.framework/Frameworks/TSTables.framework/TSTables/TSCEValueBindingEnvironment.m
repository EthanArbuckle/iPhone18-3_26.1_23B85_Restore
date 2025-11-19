@interface TSCEValueBindingEnvironment
- (TSCEValueBindingEnvironment)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)lookup:(const unsigned int *)a3;
- (void)popScope;
- (void)pushScope;
@end

@implementation TSCEValueBindingEnvironment

- (TSCEValueBindingEnvironment)init
{
  v13.receiver = self;
  v13.super_class = TSCEValueBindingEnvironment;
  v2 = [(TSCEValueBindingEnvironment *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    var0 = v2->_bindings.var0;
    var1 = v2->_bindings.var1;
    if (var0 >= var1)
    {
      begin = v2->_bindings.__begin_;
      v8 = (var0 - begin) >> 3;
      if ((v8 + 1) >> 61)
      {
        sub_22107C148();
      }

      v9 = var1 - begin;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      p_bindings = &v2->_bindings;
      if (v11)
      {
        sub_22107C1F0(&v2->_bindings, v11);
      }

      v14 = 0;
      v15 = (8 * v8);
      v17 = 0;
      *v15 = v3;
      v16 = 8 * v8 + 8;
      sub_22107C098(&v2->_bindings, &v14);
      v6 = v2->_bindings.var0;
      sub_22107C26C(&v14);
    }

    else
    {
      *var0 = v3;
      v6 = (var0 + 1);
      v2->_bindings.var0 = v6;
    }

    v2->_bindings.var0 = v6;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  begin = self->_bindings.__begin_;
  var0 = self->_bindings.var0;
  while (begin != var0)
  {
    v7 = *begin;
    v13 = objc_msgSend_copy(v7, v8, v9, v10, v11);
    sub_22130BAC8((v4 + 8), &v13);

    ++begin;
  }

  objc_storeStrong((v4 + 32), self->_syntaxErrorValue);
  return v4;
}

- (id)lookup:(const unsigned int *)a3
{
  var0 = self->_bindings.var0;
  while (var0 != self->_bindings.__begin_)
  {
    v6 = *--var0;
    v7 = v6;
    v11 = objc_msgSend_lookup_(v7, v8, a3, v9, v10);

    if (v11)
    {
      goto LABEL_8;
    }
  }

  if (qword_27CFB5458 != -1)
  {
    sub_2216F7714();
  }

  v11 = qword_27CFB5450;
LABEL_8:

  return v11;
}

- (void)pushScope
{
  v3 = objc_opt_new();
  sub_22130BAC8(&self->_bindings.__begin_, &v3);
}

- (void)popScope
{
  begin = self->_bindings.__begin_;
  var0 = self->_bindings.var0;
  if (begin == var0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueBindingEnvironment popScope]", v2, v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueBindingEnvironment.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 156, 0, "Can't popScope with empty ValueBindingEnvironment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    begin = self->_bindings.__begin_;
    var0 = self->_bindings.var0;
  }

  if (begin != var0)
  {

    self->_bindings.var0 = var0 - 1;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end