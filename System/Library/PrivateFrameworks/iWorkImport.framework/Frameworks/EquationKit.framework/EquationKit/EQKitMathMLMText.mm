@interface EQKitMathMLMText
- (EQKitMathMLMText)initWithContent:(id)a3;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMText

- (EQKitMathMLMText)initWithContent:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = EQKitMathMLMText;
    v4 = [(EQKitMathMLMText *)&v6 init];
    if (v4)
    {
      v4->mContent = a3;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMText;
  [(EQKitMathMLMText *)&v3 dealloc];
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5 = objc_msgSend_parseChildrenAsTokenContentFromXMLNode_(a4, a2, a3, a4);

  return MEMORY[0x2821F9670](self, sel_initWithContent_, v5, v6);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38A58))
  {
    sub_275C8E754(qword_280A38A40, &unk_275D0C150, dword_275D0C158);
    __cxa_guard_release(&qword_280A38A58);
  }

  return qword_280A38A40;
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 22;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end