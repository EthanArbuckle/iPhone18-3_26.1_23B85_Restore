@interface TSCEThunkValue
+ (id)thunkValue:(const TSCEASTNodeArray *)value;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCERichTextStorage)asRawRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCEThunkValue)initWithAST:(const TSCEASTNodeArray *)t asDeepCopy:(BOOL)copy;
- (const)arguments;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)evaluateThunk:(id)thunk;
- (void)dealloc;
@end

@implementation TSCEThunkValue

+ (id)thunkValue:(const TSCEASTNodeArray *)value
{
  v4 = [TSCEThunkValue alloc];
  v7 = objc_msgSend_initWithAST_asDeepCopy_(v4, v5, value, 0, v6);

  return v7;
}

- (TSCEThunkValue)initWithAST:(const TSCEASTNodeArray *)t asDeepCopy:(BOOL)copy
{
  copyCopy = copy;
  v11.receiver = self;
  v11.super_class = TSCEThunkValue;
  v6 = [(TSCEValue *)&v11 init];
  v8 = v6;
  if (v6)
  {
    v6->_rangeContextOverride = 3;
    v6->_hasDeepCopy = copyCopy;
    if (copyCopy)
    {
      if (t)
      {
        v9 = TSCEASTNodeArray::copyNodeArray(t, v7);
LABEL_8:
        v8->_AST = v9;
        return v8;
      }
    }

    else if (t)
    {
      TSCEASTNodeArray::shallowCopy(t);
    }

    v9 = 0;
    goto LABEL_8;
  }

  return v8;
}

- (void)dealloc
{
  AST = self->_AST;
  if (AST)
  {
    if (self->_hasDeepCopy)
    {
      TSCEASTNodeArray::freeNodeArray(AST, a2);
    }

    else
    {
      TSCEASTNodeArray::~TSCEASTNodeArray(AST);
      MEMORY[0x223DA1450]();
    }
  }

  v4.receiver = self;
  v4.super_class = TSCEThunkValue;
  [(TSCEThunkValue *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TSCEThunkValue;
  v5 = [(TSCEValue *)&v8 copyWithZone:zone];
  if (v5)
  {
    AST = self->_AST;
    if (self->_hasDeepCopy)
    {
      if (AST)
      {
        AST = TSCEASTNodeArray::copyNodeArray(AST, v4);
      }
    }

    else if (AST)
    {
      TSCEASTNodeArray::shallowCopy(AST);
    }

    v5[7] = AST;
    *(v5 + 64) = self->_rangeContextOverride;
    *(v5 + 65) = self->_hasDeepCopy;
  }

  return v5;
}

- (id)evaluateThunk:(id)thunk
{
  AST = self->_AST;
  if (AST)
  {
    sub_221250CB8(AST, thunk, 0);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, a2, thunk, v3, v4);
  }
  v6 = ;

  return v6;
}

- (const)arguments
{
  if (qword_27CFB51C0 != -1)
  {
    sub_2216F651C();
  }

  return qword_27CFB51B8;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  v10 = objc_msgSend_unwrapThunk_(number, a2, self, spec, *&index);
  v12 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v11, number, spec, v7, error);

  return v12;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  v10 = objc_msgSend_unwrapThunk_(date, a2, self, spec, *&index);
  v12 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v10, v11, date, spec, v7, error);

  return v12;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  v10 = objc_msgSend_unwrapThunk_(string, a2, self, spec, *&index);
  v12 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v10, v11, string, spec, v7, error);

  return v12;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  v10 = objc_msgSend_unwrapThunk_(string, a2, self, spec, *&index);
  v12 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v10, v11, string, spec, v7, error);

  return v12;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  v12 = objc_msgSend_unwrapThunk_(spec, storage, self, index, *&error);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v12, v13, spec, index, v8, a7);
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
  v12 = objc_msgSend_unwrapThunk_(spec, storage, self, index, *&error);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_asRawRichTextStorage_functionSpec_argumentIndex_outError_(v12, v13, spec, index, v8, a7);
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
  v10 = objc_msgSend_unwrapThunk_(boolean, a2, self, spec, *&index);
  LOBYTE(error) = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v10, v11, boolean, spec, v7, error);

  return error;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  formatCopy = format;
  v9 = *&index;
  v12 = objc_msgSend_unwrapThunk_(grid, a2, self, spec, *&index);
  v14 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v12, v13, grid, spec, v9, formatCopy, error);

  return v14;
}

@end