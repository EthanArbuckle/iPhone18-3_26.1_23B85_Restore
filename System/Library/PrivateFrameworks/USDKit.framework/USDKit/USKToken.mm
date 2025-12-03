@interface USKToken
+ (USKToken)tokenWithDataType:(id)type;
+ (USKToken)tokenWithNodeType:(id)type;
+ (USKToken)tokenWithRoleType:(id)type;
+ (USKToken)tokenWithSchemaType:(id)type;
+ (id)dataTypeWithTfToken:(TfToken)token;
+ (id)nodeTypeWithTfToken:(TfToken)token;
+ (id)roleTypeWithTfToken:(TfToken)token;
+ (id)schemaTypeWithTfToken:(TfToken)token;
- (BOOL)isEqual:(id)equal;
- (TfToken)token;
- (USKToken)init;
- (USKToken)initWithString:(id)string;
- (USKToken)initWithTfToken:(TfToken)token;
- (id)stringValue;
@end

@implementation USKToken

- (TfToken)token
{
  ptrAndBits = self->_token._rep._ptrAndBits;
  *v2 = ptrAndBits;
  if ((ptrAndBits & 7) != 0)
  {
    v4 = (ptrAndBits & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *v2 = v4;
    }
  }

  return self;
}

- (USKToken)init
{
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKToken;
  v3 = [(USKToken *)&v8 init];
  v4 = v3;
  if (v3)
  {
    ptrAndBits = v3->_token._rep._ptrAndBits;
    if ((ptrAndBits & 7) != 0)
    {
      atomic_fetch_add_explicit((ptrAndBits & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3->_token._rep._ptrAndBits = 0;
    v6 = v3;
  }

  return v4;
}

- (USKToken)initWithTfToken:(TfToken)token
{
  sub_27035CAC4();
  v9.receiver = self;
  v9.super_class = USKToken;
  v5 = [(USKToken *)&v9 init];
  v6 = v5;
  if (v5)
  {
    sub_270325CAC(&v5->_token._rep._ptrAndBits, token._rep._ptrAndBits);
    v7 = v6;
  }

  return v6;
}

- (USKToken)initWithString:(id)string
{
  stringCopy = string;
  sub_27035CAC4();
  v18.receiver = self;
  v18.super_class = USKToken;
  v5 = [(USKToken *)&v18 init];
  if (v5)
  {
    v6 = stringCopy;
    v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_270312990();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    v16 = v11;
    if (v11)
    {
      memmove(&__p, v10, v11);
    }

    *(&__p + v12) = 0;
    MEMORY[0x27439E620](&v17, &__p);
    p_token = &v5->_token;
    if (&v17 == &v5->_token)
    {
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((p_token->_rep._ptrAndBits & 7) != 0)
      {
        atomic_fetch_add_explicit((p_token->_rep._ptrAndBits & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      p_token->_rep._ptrAndBits = v17;
      v17 = 0;
    }

    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  return v5;
}

+ (id)nodeTypeWithTfToken:(TfToken)token
{
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE4E0))
  {
    operator new();
  }

  if (qword_2807CE4D8 + 8 == sub_270339134(qword_2807CE4D8, token._rep._ptrAndBits))
  {
    v4 = USKNodeTypeUnknown;
  }

  else
  {
    v4 = (sub_2703391C4(qword_2807CE4D8, token._rep._ptrAndBits) + 40);
  }

  v5 = *v4;
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)schemaTypeWithTfToken:(TfToken)token
{
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE4F0))
  {
    operator new();
  }

  if (qword_2807CE4E8 + 8 == sub_270339134(qword_2807CE4E8, token._rep._ptrAndBits))
  {
    v4 = USKSchemaTypeUnknown;
  }

  else
  {
    v4 = (sub_2703391C4(qword_2807CE4E8, token._rep._ptrAndBits) + 40);
  }

  v5 = *v4;
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)roleTypeWithTfToken:(TfToken)token
{
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE500))
  {
    operator new();
  }

  if (qword_2807CE4F8 + 8 == sub_270339134(qword_2807CE4F8, token._rep._ptrAndBits))
  {
    v4 = USKRoleTypeNone;
  }

  else
  {
    v4 = (sub_2703391C4(qword_2807CE4F8, token._rep._ptrAndBits) + 40);
  }

  v5 = *v4;
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)dataTypeWithTfToken:(TfToken)token
{
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE510))
  {
    operator new();
  }

  if (qword_2807CE508 + 8 == sub_270339134(qword_2807CE508, token._rep._ptrAndBits))
  {
    v4 = USKDataTypeUnknown;
  }

  else
  {
    v4 = (sub_2703391C4(qword_2807CE508, token._rep._ptrAndBits) + 40);
  }

  v5 = *v4;
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (USKToken)tokenWithNodeType:(id)type
{
  typeCopy = type;
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE528))
  {
    qword_2807CE520 = objc_alloc_init(MEMORY[0x277CBEB38]);
    __cxa_guard_release(&qword_2807CE528);
  }

  if (qword_2807CE518 != -1)
  {
    sub_27036CA6C();
  }

  if (typeCopy)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE520, v4, typeCopy, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [USKToken alloc];
      v10 = typeCopy;
      v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
      MEMORY[0x27439E610](&v19, v14);
      v8 = objc_msgSend_initWithTfToken_(v9, v15, &v19, v16);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v17, v8, typeCopy);
    }
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE520, v4, @"Unknown", v5);
  }

  return v8;
}

+ (USKToken)tokenWithRoleType:(id)type
{
  typeCopy = type;
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE540))
  {
    qword_2807CE538 = objc_alloc_init(MEMORY[0x277CBEB38]);
    __cxa_guard_release(&qword_2807CE540);
  }

  if (qword_2807CE530 != -1)
  {
    sub_27036CA80();
  }

  if (typeCopy)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE538, v4, typeCopy, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [USKToken alloc];
      v10 = typeCopy;
      v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
      MEMORY[0x27439E610](&v19, v14);
      v8 = objc_msgSend_initWithTfToken_(v9, v15, &v19, v16);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v17, v8, typeCopy);
    }
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE538, v4, @"None", v5);
  }

  return v8;
}

+ (USKToken)tokenWithDataType:(id)type
{
  typeCopy = type;
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE558))
  {
    qword_2807CE550 = objc_alloc_init(MEMORY[0x277CBEB38]);
    __cxa_guard_release(&qword_2807CE558);
  }

  if (qword_2807CE548 != -1)
  {
    sub_27036CA94();
  }

  if (typeCopy)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE550, v4, typeCopy, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [USKToken alloc];
      v10 = typeCopy;
      v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
      MEMORY[0x27439E610](&v19, v14);
      v8 = objc_msgSend_initWithTfToken_(v9, v15, &v19, v16);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v17, v8, typeCopy);
    }
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE550, v4, @"unknown", v5);
  }

  return v8;
}

+ (USKToken)tokenWithSchemaType:(id)type
{
  typeCopy = type;
  sub_27035CAC4();
  if ((atomic_load_explicit(&qword_2807CE570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2807CE570))
  {
    qword_2807CE568 = objc_alloc_init(MEMORY[0x277CBEB38]);
    __cxa_guard_release(&qword_2807CE570);
  }

  if (qword_2807CE560 != -1)
  {
    sub_27036CAA8();
  }

  if (typeCopy)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE568, v4, typeCopy, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [USKToken alloc];
      v10 = typeCopy;
      v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
      MEMORY[0x27439E610](&v19, v14);
      v8 = objc_msgSend_initWithTfToken_(v9, v15, &v19, v16);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v17, v8, typeCopy);
    }
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(qword_2807CE568, v4, @"Unknown", v5);
  }

  return v8;
}

- (id)stringValue
{
  ptrAndBits = self->_token._rep._ptrAndBits;
  if (ptrAndBits)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = ptrAndBits & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      EmptyString = v6 + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(self);
    }

    if (*(EmptyString + 23) < 0)
    {
      EmptyString = *EmptyString;
    }

    v8 = objc_msgSend_stringWithUTF8String_(v5, a2, EmptyString, v2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_token(v5, v6, v7, v8);
    v9 = (v11 ^ self->_token._rep._ptrAndBits) < 8;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end