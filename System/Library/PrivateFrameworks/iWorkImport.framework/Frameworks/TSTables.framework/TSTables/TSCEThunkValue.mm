@interface TSCEThunkValue
+ (id)thunkValue:(const TSCEASTNodeArray *)a3;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCERichTextStorage)asRawRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCEThunkValue)initWithAST:(const TSCEASTNodeArray *)a3 asDeepCopy:(BOOL)a4;
- (const)arguments;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)evaluateThunk:(id)a3;
- (void)dealloc;
@end

@implementation TSCEThunkValue

+ (id)thunkValue:(const TSCEASTNodeArray *)a3
{
  v4 = [TSCEThunkValue alloc];
  v7 = objc_msgSend_initWithAST_asDeepCopy_(v4, v5, a3, 0, v6);

  return v7;
}

- (TSCEThunkValue)initWithAST:(const TSCEASTNodeArray *)a3 asDeepCopy:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = TSCEThunkValue;
  v6 = [(TSCEValue *)&v11 init];
  v8 = v6;
  if (v6)
  {
    v6->_rangeContextOverride = 3;
    v6->_hasDeepCopy = v4;
    if (v4)
    {
      if (a3)
      {
        v9 = TSCEASTNodeArray::copyNodeArray(a3, v7);
LABEL_8:
        v8->_AST = v9;
        return v8;
      }
    }

    else if (a3)
    {
      TSCEASTNodeArray::shallowCopy(a3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TSCEThunkValue;
  v5 = [(TSCEValue *)&v8 copyWithZone:a3];
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

- (id)evaluateThunk:(id)a3
{
  AST = self->_AST;
  if (AST)
  {
    sub_221250CB8(AST, a3, 0);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, a2, a3, v3, v4);
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

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = objc_msgSend_unwrapThunk_(a3, a2, self, a4, *&a5);
  v12 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v11, a3, a4, v7, a6);

  return v12;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = objc_msgSend_unwrapThunk_(a3, a2, self, a4, *&a5);
  v12 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v10, v11, a3, a4, v7, a6);

  return v12;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = objc_msgSend_unwrapThunk_(a3, a2, self, a4, *&a5);
  v12 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v10, v11, a3, a4, v7, a6);

  return v12;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = objc_msgSend_unwrapThunk_(a3, a2, self, a4, *&a5);
  v12 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v10, v11, a3, a4, v7, a6);

  return v12;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  v12 = objc_msgSend_unwrapThunk_(a4, a3, self, a5, *&a6);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v12, v13, a4, a5, v8, a7);
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
  v12 = objc_msgSend_unwrapThunk_(a4, a3, self, a5, *&a6);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_asRawRichTextStorage_functionSpec_argumentIndex_outError_(v12, v13, a4, a5, v8, a7);
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
  v10 = objc_msgSend_unwrapThunk_(a3, a2, self, a4, *&a5);
  LOBYTE(a6) = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v10, v11, a3, a4, v7, a6);

  return a6;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v8 = a6;
  v9 = *&a5;
  v12 = objc_msgSend_unwrapThunk_(a3, a2, self, a4, *&a5);
  v14 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v12, v13, a3, a4, v9, v8, a7);

  return v14;
}

@end