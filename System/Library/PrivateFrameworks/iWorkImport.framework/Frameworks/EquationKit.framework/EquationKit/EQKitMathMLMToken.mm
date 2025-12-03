@interface EQKitMathMLMToken
- (EQKitMathMLMToken)initWithContent:(id)content;
- (EQKitMathMLMToken)initWithString:(id)string environment:(id)environment;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)schemataTokenString;
- (unsigned)schemataUnicharOrNul;
- (void)dealloc;
@end

@implementation EQKitMathMLMToken

- (EQKitMathMLMToken)initWithString:(id)string environment:(id)environment
{
  v12.receiver = self;
  v12.super_class = EQKitMathMLMToken;
  v8 = [(EQKitMathMLMToken *)&v12 init:string];
  if (v8)
  {
    v9 = sub_275C95134(string, v5, v6, v7);
    v10 = *&v8->mFlags & 0xFC;
    if (v9)
    {
      *&v8->mFlags = v10;
      v8->mContent.mChar = v9;
    }

    else
    {
      *&v8->mFlags = v10 | 1;
      v8->mContent.mString = string;
    }
  }

  return v8;
}

- (EQKitMathMLMToken)initWithContent:(id)content
{
  if (content)
  {
    v7.receiver = self;
    v7.super_class = EQKitMathMLMToken;
    v4 = [(EQKitMathMLMToken *)&v7 init];
    v5 = v4;
    if (v4)
    {
      *&v4->mFlags = *&v4->mFlags & 0xFC | 2;
      v4->mContent.mString = content;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  if (sub_275CB5A8C(node))
  {
    sub_275CB5B94(node, 1, &__p);
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = objc_msgSend_initWithUTF8String_(v9, v10, &__p, v11);
    }

    else
    {
      v12 = objc_msgSend_initWithUTF8String_(v9, v10, __p.__r_.__value_.__l.__data_, v11);
    }

    v16 = v12;
    v17 = objc_msgSend_environment(parser, v13, v14, v15);
    v19 = objc_msgSend_initWithString_environment_(self, v18, v16, v17);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v19;
  }

  else
  {
    v21 = objc_msgSend_parseChildrenAsTokenContentFromXMLNode_(parser, v7, node, v8);

    return MEMORY[0x2821F9670](self, sel_initWithContent_, v21, v22);
  }
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A389F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A389F8))
  {
    sub_275C8E754(qword_280A389E0, &dword_275D0C144, &dword_275D0C148);
    __cxa_guard_release(&qword_280A389F8);
  }

  return qword_280A389E0;
}

- (void)dealloc
{
  if ((*&self->mFlags & 3u) - 1 <= 1)
  {
  }

  v3.receiver = self;
  v3.super_class = EQKitMathMLMToken;
  [(EQKitMathMLMToken *)&v3 dealloc];
}

- (unsigned)schemataUnicharOrNul
{
  if ((*&self->mFlags & 3) != 0)
  {
    return 0;
  }

  else
  {
    return self->mContent.mChar;
  }
}

- (NSString)description
{
  if ((*&self->mFlags & 3u) > 1)
  {
    if ((*&self->mFlags & 3) == 2)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      return objc_msgSend_stringWithFormat_(v11, v14, @"<%@ %p content=%@>", v15, v13, self, self->mContent.mString);
    }

    else
    {
      return 0;
    }
  }

  else if ((*&self->mFlags & 3) != 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    return objc_msgSend_stringWithFormat_(v16, v19, @"<%@ %p string=%@>", v20, v18, self, self->mContent.mString);
  }

  else
  {
    v3 = sub_275C951CC(self->mContent.mChar);
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = objc_msgSend_stringWithFormat_(v4, v7, @"<%@ %p char='%@'>", v8, v6, self, v3);

    return v9;
  }
}

- (id)schemataTokenString
{
  if ((*&self->mFlags & 3) == 1)
  {
    return self->mContent.mString;
  }

  if ((*&self->mFlags & 3) != 0)
  {
    return 0;
  }

  v3 = sub_275C951CC(self->mContent.mChar);

  return v3;
}

@end