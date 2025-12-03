@interface TSCEFunctorWithArgsThunkValue
+ (id)functorWithArgsValue:(const TSCEFunctor *)value args:(const void *)args;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCEFunctorWithArgsThunkValue)initWithFunctor:(const TSCEFunctor *)functor args:(const void *)args;
- (TSCERichTextStorage)asRawRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (id).cxx_construct;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)evaluateThunk:(id)thunk;
@end

@implementation TSCEFunctorWithArgsThunkValue

+ (id)functorWithArgsValue:(const TSCEFunctor *)value args:(const void *)args
{
  v6 = [TSCEFunctorWithArgsThunkValue alloc];
  v9 = objc_msgSend_initWithFunctor_args_(v6, v7, value, args, v8);

  return v9;
}

- (TSCEFunctorWithArgsThunkValue)initWithFunctor:(const TSCEFunctor *)functor args:(const void *)args
{
  v9.receiver = self;
  v9.super_class = TSCEFunctorWithArgsThunkValue;
  v6 = [(TSCEValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    TSCEFunctor::operator=(&v6->_functor._formula, functor);
    if (&v7->_arguments != args)
    {
      sub_22116CF34(&v7->_arguments, *args, *(args + 1), (*(args + 1) - *args) >> 3);
    }

    v7->_rangeContextOverride = 3;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TSCEFunctorWithArgsThunkValue;
  v4 = [(TSCEValue *)&v7 copyWithZone:zone];
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

- (id)evaluateThunk:(id)thunk
{
  v3 = TSCEFunctor::evaluateWithArgs(&self->_functor, thunk, &self->_arguments);

  return v3;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  numberCopy = number;
  v14 = objc_msgSend_unwrapThunk_(numberCopy, v11, self, v12, v13);
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v15, numberCopy, spec, v7, error);

  return v16;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  dateCopy = date;
  v14 = objc_msgSend_unwrapThunk_(dateCopy, v11, self, v12, v13);
  v16 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v14, v15, dateCopy, spec, v7, error);

  return v16;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  v14 = objc_msgSend_unwrapThunk_(stringCopy, v11, self, v12, v13);
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v15, stringCopy, spec, v7, error);

  return v16;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  v14 = objc_msgSend_unwrapThunk_(stringCopy, v11, self, v12, v13);
  v16 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v14, v15, stringCopy, spec, v7, error);

  return v16;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  specCopy = spec;
  v15 = objc_msgSend_unwrapThunk_(specCopy, v12, self, v13, v14);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v15, v16, specCopy, index, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (TSCERichTextStorage)asRawRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  specCopy = spec;
  v15 = objc_msgSend_unwrapThunk_(specCopy, v12, self, v13, v14);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_asRawRichTextStorage_functionSpec_argumentIndex_outError_(v15, v16, specCopy, index, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  booleanCopy = boolean;
  v14 = objc_msgSend_unwrapThunk_(booleanCopy, v11, self, v12, v13);
  LOBYTE(error) = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v14, v15, booleanCopy, spec, v7, error);

  return error;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  formatCopy = format;
  v9 = *&index;
  gridCopy = grid;
  v16 = objc_msgSend_unwrapThunk_(gridCopy, v13, self, v14, v15);
  v18 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, gridCopy, spec, v9, formatCopy, error);

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