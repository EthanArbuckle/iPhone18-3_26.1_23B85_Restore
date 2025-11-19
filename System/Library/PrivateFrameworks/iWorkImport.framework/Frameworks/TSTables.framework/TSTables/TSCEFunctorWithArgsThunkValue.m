@interface TSCEFunctorWithArgsThunkValue
+ (id)functorWithArgsValue:(const TSCEFunctor *)a3 args:(const void *)a4;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCEFunctorWithArgsThunkValue)initWithFunctor:(const TSCEFunctor *)a3 args:(const void *)a4;
- (TSCERichTextStorage)asRawRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (id).cxx_construct;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)evaluateThunk:(id)a3;
@end

@implementation TSCEFunctorWithArgsThunkValue

+ (id)functorWithArgsValue:(const TSCEFunctor *)a3 args:(const void *)a4
{
  v6 = [TSCEFunctorWithArgsThunkValue alloc];
  v9 = objc_msgSend_initWithFunctor_args_(v6, v7, a3, a4, v8);

  return v9;
}

- (TSCEFunctorWithArgsThunkValue)initWithFunctor:(const TSCEFunctor *)a3 args:(const void *)a4
{
  v9.receiver = self;
  v9.super_class = TSCEFunctorWithArgsThunkValue;
  v6 = [(TSCEValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    TSCEFunctor::operator=(&v6->_functor._formula, a3);
    if (&v7->_arguments != a4)
    {
      sub_22116CF34(&v7->_arguments, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 3);
    }

    v7->_rangeContextOverride = 3;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TSCEFunctorWithArgsThunkValue;
  v4 = [(TSCEValue *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    TSCEFunctor::operator=(v4 + 7, &self->_functor);
    if (v5 != self)
    {
      sub_22116CF34(&v5->_arguments, self->_arguments.__begin_, self->_arguments.var0, self->_arguments.var0 - self->_arguments.__begin_);
    }

    v5->_rangeContextOverride = self->_rangeContextOverride;
  }

  return v5;
}

- (id)evaluateThunk:(id)a3
{
  v3 = TSCEFunctor::evaluateWithArgs(&self->_functor, a3, &self->_arguments);

  return v3;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  v14 = objc_msgSend_unwrapThunk_(v10, v11, self, v12, v13);
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v15, v10, a4, v7, a6);

  return v16;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  v14 = objc_msgSend_unwrapThunk_(v10, v11, self, v12, v13);
  v16 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v14, v15, v10, a4, v7, a6);

  return v16;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  v14 = objc_msgSend_unwrapThunk_(v10, v11, self, v12, v13);
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v15, v10, a4, v7, a6);

  return v16;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  v14 = objc_msgSend_unwrapThunk_(v10, v11, self, v12, v13);
  v16 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v14, v15, v10, a4, v7, a6);

  return v16;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  v19 = a4;
  v15 = objc_msgSend_unwrapThunk_(v19, v12, self, v13, v14);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v15, v16, v19, a5, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (TSCERichTextStorage)asRawRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  v19 = a4;
  v15 = objc_msgSend_unwrapThunk_(v19, v12, self, v13, v14);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_asRawRichTextStorage_functionSpec_argumentIndex_outError_(v15, v16, v19, a5, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  v14 = objc_msgSend_unwrapThunk_(v10, v11, self, v12, v13);
  LOBYTE(a6) = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v14, v15, v10, a4, v7, a6);

  return a6;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v8 = a6;
  v9 = *&a5;
  v12 = a3;
  v16 = objc_msgSend_unwrapThunk_(v12, v13, self, v14, v15);
  v18 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, v12, a4, v9, v8, a7);

  return v18;
}

- (id).cxx_construct
{
  TSCEFunctor::TSCEFunctor(&self->_functor);
  self->_arguments.var0 = 0;
  self->_arguments.var1 = 0;
  self->_arguments.__begin_ = 0;
  return self;
}

@end