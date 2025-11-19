@interface EQKitMathMLParser
- (BOOL)isElement:(int)a3 allowedInState:(int)a4;
- (EQKitMathMLParser)initWithDocument:(_xmlDoc *)a3 node:(_xmlNode *)a4 source:(id)a5 environment:(id)a6;
- (id).cxx_construct;
- (id)parse;
- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)a3;
- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)a3;
- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)a3;
- (id)parseNode:(_xmlNode *)a3;
- (int)state;
- (void)dealloc;
- (void)parseAttributesForNode:(id)a3 withXMLNode:(_xmlNode *)a4;
- (void)popState;
- (void)reportError:(int64_t)a3 withNode:(_xmlNode *)a4;
@end

@implementation EQKitMathMLParser

- (EQKitMathMLParser)initWithDocument:(_xmlDoc *)a3 node:(_xmlNode *)a4 source:(id)a5 environment:(id)a6
{
  RootElement = a4;
  if (a3 && !a4)
  {
    RootElement = xmlDocGetRootElement(a3);
  }

  v14.receiver = self;
  v14.super_class = EQKitMathMLParser;
  v11 = [(EQKitMathMLParser *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->mRootNode = RootElement;
    v11->mNS = xmlSearchNsByHref(a3, RootElement, "http://www.w3.org/1998/Math/MathML");
    v12->mEnvironment = a6;
    v12->mSource = a5;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLParser;
  [(EQKitMathMLParser *)&v3 dealloc];
}

- (void)reportError:(int64_t)a3 withNode:(_xmlNode *)a4
{
  if (!self->mError)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    name = "";
    if (a4 && a4->name)
    {
      name = a4->name;
    }

    v11 = objc_msgSend_initWithUTF8String_(v7, v8, name, v9);
    v15 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v12, v13, v14);
    if (a3 <= 6 && (v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v16, off_27A680ED8[a3], &stru_2884CC9F8, 0)) != 0)
    {
      v20 = MEMORY[0x277CBEAC0];
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v17, v19, v11);
      v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v20, v22, v21, v23, *MEMORY[0x277CCA450], 0);
    }

    else
    {
      v24 = 0;
    }

    v25 = objc_alloc(MEMORY[0x277CCA9B8]);
    self->mError = objc_msgSend_initWithDomain_code_userInfo_(v25, v26, @"EQKitErrorDomain", a3, v24);
  }
}

- (id)parse
{
  if (sub_275CB5AF8(self->mRootNode, self->mNS, "math"))
  {
    v4 = [EQKitMathMLMath alloc];
    v6 = objc_msgSend_initFromXMLNode_parser_(v4, v5, self->mRootNode, self);
    objc_msgSend_parseAttributesForNode_withXMLNode_(self, v7, v6, self->mRootNode);
    if (v6 && !self->mError)
    {
      v9 = [EQKitEquation alloc];
      v8 = objc_msgSend_initWithRoot_source_(v9, v10, v6, self->mSource);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    objc_msgSend_reportError_withNode_(self, v3, 1, self->mRootNode);
    return 0;
  }

  return v8;
}

- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)a3
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, v3);
  if (a3)
  {
    for (i = a3->children; i; i = i->next)
    {
      if (sub_275CB5B80(i))
      {
        v10 = objc_msgSend_parseNode_(self, v8, i, v9);
        if (!v10)
        {
          return 0;
        }

        objc_msgSend_addObject_(v6, v11, v10, v12);
      }
    }
  }

  return v6;
}

- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)a3
{
  result = objc_msgSend_parseChildrenAsArrayFromXMLNode_(self, a2, a3, v3);
  if (result)
  {
    v8 = result;
    if (objc_msgSend_count(result, v5, v6, v7) == 1)
    {
      v11 = objc_msgSend_objectAtIndex_(v8, v9, 0, v10);
    }

    else
    {
      v12 = [EQKitMathMLMRow alloc];
      v11 = objc_msgSend_initWithChildren_(v12, v13, v8, v14);
    }

    return v11;
  }

  return result;
}

- (void)parseAttributesForNode:(id)a3 withXMLNode:(_xmlNode *)a4
{
  v7 = objc_msgSend_mathMLAttributes(a3, a2, a3, a4);
  properties = a4->properties;
  if (properties)
  {
    v9 = v7;
    v10 = (v7 + 8);
    v100 = *(MEMORY[0x277D82820] + 24);
    v101 = *MEMORY[0x277D82820];
    do
    {
      ns = properties->ns;
      if (ns)
      {
        v12 = ns == a4->ns;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 || !self->mAttributeCollection)
      {
        goto LABEL_79;
      }

      sub_275CA6274(__p, properties->name);
      v13 = sub_275C95E94(__p, 0);
      if (SHIBYTE(v104) < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 != 1 || !v9)
      {
        goto LABEL_29;
      }

      v14 = *v10;
      if (!*v10)
      {
        goto LABEL_79;
      }

      v15 = v10;
      do
      {
        if (v14[7] >= 2)
        {
          v15 = v14;
        }

        v14 = *&v14[2 * (v14[7] < 2)];
      }

      while (v14);
      if (v15 != v10 && v15[7] < 3)
      {
        v13 = 2;
      }

      else
      {
        if (v13 != 10 || !v9)
        {
          goto LABEL_39;
        }

LABEL_29:
        v16 = *v10;
        if (!*v10)
        {
          goto LABEL_79;
        }

        v17 = v10;
        do
        {
          if (v16[7] >= 32)
          {
            v17 = v16;
          }

          v16 = *&v16[2 * (v16[7] < 32)];
        }

        while (v16);
        if (v17 != v10 && v17[7] < 33)
        {
          v13 = 32;
        }

        else
        {
          if (v13 != 26 || !v9)
          {
            goto LABEL_49;
          }

LABEL_39:
          v18 = *v10;
          if (!*v10)
          {
            goto LABEL_79;
          }

          v19 = v10;
          do
          {
            if (v18[7] >= 29)
            {
              v19 = v18;
            }

            v18 = *&v18[2 * (v18[7] < 29)];
          }

          while (v18);
          if (v19 != v10 && v19[7] < 30)
          {
            v13 = 29;
          }

          else
          {
            if (v13 != 27 || !v9)
            {
              goto LABEL_52;
            }

LABEL_49:
            v20 = *v10;
            if (!*v10)
            {
              goto LABEL_79;
            }

            v21 = v10;
            do
            {
              if (v20[7] >= 30)
              {
                v21 = v20;
              }

              v20 = *&v20[2 * (v20[7] < 30)];
            }

            while (v20);
            if (v21 != v10 && v21[7] < 31)
            {
              v13 = 30;
            }

            else
            {
LABEL_52:
              if (v13 == 28 && v9)
              {
                v22 = *v10;
                if (!*v10)
                {
                  goto LABEL_79;
                }

                v23 = v10;
                do
                {
                  if (v22[7] >= 31)
                  {
                    v23 = v22;
                  }

                  v22 = *&v22[2 * (v22[7] < 31)];
                }

                while (v22);
                if (v23 == v10)
                {
                  v13 = 28;
                  goto LABEL_63;
                }

                if (v23[7] <= 31)
                {
                  v13 = 31;
                }

                else
                {
                  v13 = 28;
                }
              }

              if (!v9)
              {
                goto LABEL_70;
              }
            }
          }
        }
      }

LABEL_63:
      v24 = *v10;
      if (*v10)
      {
        v25 = v10;
        do
        {
          if (v24[7] >= v13)
          {
            v25 = v24;
          }

          v24 = *&v24[2 * (v24[7] < v13)];
        }

        while (v24);
        if (v25 != v10 && v13 >= v25[7])
        {
          sub_275CB5D70(a4, properties, &__str);
          switch(v13)
          {
            case 1:
            case 24:
            case 25:
              v35 = sub_275C95C18(&__str, 0);
              if (!v35)
              {
                goto LABEL_77;
              }

              mAttributeCollection = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = v13;
              *&v110 = __p;
              v37 = sub_275CD6E20(mAttributeCollection + 128, __p);
              goto LABEL_90;
            case 2:
              v66 = sub_275C95CEC(&__str, 0);
              if (!v66)
              {
                goto LABEL_77;
              }

              v75 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 2;
              *&v110 = __p;
              v68 = sub_275CD6E20(v75 + 152, __p);
              goto LABEL_158;
            case 3:
              sub_275C961BC(&__str, __p);
              v71 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v76 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 3;
              sub_275CD72B0(v76, v76 + 248, __p, &v110);
              goto LABEL_148;
            case 4:
              sub_275C95F68(&__str, __p);
              v71 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v77 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 4;
              sub_275CD72B0(v77, v77 + 272, __p, &v110);
              goto LABEL_148;
            case 5:
            case 6:
            case 8:
            case 14:
            case 16:
            case 39:
            case 45:
              v35 = sub_275C95DC0(&__str, 0);
              if (!v35)
              {
                goto LABEL_77;
              }

              v36 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = v13;
              *&v110 = __p;
              v37 = sub_275CD6E20(v36 + 8, __p);
LABEL_90:
              *(v37 + 48) = v35;
              goto LABEL_77;
            case 7:
              v66 = sub_275C9599C(&__str, 0);
              if (!v66)
              {
                goto LABEL_77;
              }

              v74 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 7;
              *&v110 = __p;
              v68 = sub_275CD6E20(v74 + 320, __p);
              goto LABEL_158;
            case 9:
              *&v110 = 0;
              BYTE8(v110) = 1;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_275CAF534(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = __str;
              }

              v89 = sub_275C9523C(&__dst, &v110);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (v89)
              {
                v90 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = 9;
                v111[0] = __p;
                v91 = sub_275CD6F24(v90 + 296, __p);
                *(v91 + 48) = v110;
                *(v91 + 56) = BYTE8(v110);
              }

              goto LABEL_77;
            case 10:
            case 11:
            case 26:
            case 27:
            case 28:
            case 40:
            case 41:
            case 43:
              sub_275CBB09C(&v110, &__str, 0);
              if (v110)
              {
                v33 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = v13;
                v111[0] = __p;
                v34 = sub_275CD6FC8(v33 + 32, __p);
                *(v34 + 48) = v110;
                goto LABEL_77;
              }

              if (v13 != 41)
              {
                goto LABEL_77;
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ != 8)
                {
                  goto LABEL_77;
                }

                p_str = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
                {
                  goto LABEL_77;
                }

                p_str = &__str;
              }

              if (p_str->__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
              {
                v85 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = 41;
                v111[0] = __p;
                v86 = sub_275CD6FC8(v85 + 32, __p);
                *(v86 + 48) = 1;
                *(v86 + 56) = 0x7FEFFFFFFFFFFFFFLL;
              }

              goto LABEL_77;
            case 12:
            case 13:
            case 18:
            case 19:
              sub_275CD5CEC(self->mAttributeCollection, &__str, v13, a3);
              goto LABEL_77;
            case 15:
              v66 = sub_275C95B44(&__str, 0);
              if (!v66)
              {
                goto LABEL_77;
              }

              v67 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 15;
              *&v110 = __p;
              v68 = sub_275CD6E20(v67 + 344, __p);
              goto LABEL_158;
            case 17:
              v66 = sub_275C95A70(&__str, 0);
              if (!v66)
              {
                goto LABEL_77;
              }

              v69 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 17;
              *&v110 = __p;
              v68 = sub_275CD6E20(v69 + 368, __p);
              goto LABEL_158;
            case 20:
              sub_275C96410(&__str, __p);
              v64 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 20;
              sub_275CD73B8(v64, v64 + 104, __p, &v110);
              *&v110 = __p;
              sub_275C97BF0(&v110);
              goto LABEL_77;
            case 21:
            case 22:
              LOBYTE(v102) = 0;
              v40 = sub_275C967DC(&__str, &v102);
              if (LOBYTE(v102) == 1)
              {
                v41 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = v13;
                *&v110 = __p;
                *(sub_275CD7174(v41 + 392, __p) + 48) = v40;
              }

              goto LABEL_77;
            case 23:
              LOBYTE(v102) = 0;
              v82 = sub_275C96A90(&__str, &v102);
              if (LOBYTE(v102) == 1)
              {
                v83 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = 23;
                *&v110 = __p;
                *(sub_275CD7174(v83 + 416, __p) + 48) = v82;
              }

              goto LABEL_77;
            case 29:
              sub_275CB705C(__p, &__str, 1, v31);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v79 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 29;
              v111[0] = &v110;
              v43 = sub_275CD742C(v79 + 464, &v110);
              goto LABEL_153;
            case 30:
              sub_275CB705C(__p, &__str, 2, v31);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v78 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 30;
              v111[0] = &v110;
              v43 = sub_275CD742C(v78 + 464, &v110);
              goto LABEL_153;
            case 31:
              sub_275CB705C(__p, &__str, 3, v31);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v81 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 31;
              v111[0] = &v110;
              v43 = sub_275CD742C(v81 + 464, &v110);
              goto LABEL_153;
            case 32:
            case 33:
              sub_275CB705C(__p, &__str, 0, v31);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_77;
              }

              v42 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = v13;
              v111[0] = &v110;
              v43 = sub_275CD742C(v42 + 464, &v110);
LABEL_153:
              *(v43 + 48) = *__p;
              *(v43 + 64) = v104;
              goto LABEL_77;
            case 34:
              sub_275C96CF8(&__str, __p);
              v71 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v72 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 34;
              sub_275CD72B0(v72, v72 + 200, __p, &v110);
              goto LABEL_148;
            case 35:
              v46 = objc_alloc(MEMORY[0x277CCACA8]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v49 = objc_msgSend_initWithUTF8String_(v46, v47, &__str, v48, v99);
              }

              else
              {
                v49 = objc_msgSend_initWithUTF8String_(v46, v47, __str.__r_.__value_.__l.__data_, v48, v99);
              }

              v53 = v49;
              if (objc_msgSend_length(v49, v50, v51, v52) == 1)
              {
                v56 = objc_msgSend_characterAtIndex_(v53, v54, 0, v55);
                v60 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v57, v58, v59);
                if ((objc_msgSend_characterIsMember_(v60, v61, v56, v62) & 1) == 0)
                {
                  v63 = self->mAttributeCollection;
                  __p[0] = a3;
                  LODWORD(__p[1]) = 35;
                  *&v110 = __p;
                  *(sub_275CD74D0(v63 + 488, __p) + 48) = v56;
                }
              }

              goto LABEL_77;
            case 36:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ == 4 && *__str.__r_.__value_.__l.__data_ == 1852401780)
                {
LABEL_185:
                  *&v32 = 0x500000005;
                  v99 = v32;
                  v95 = 0.5;
                  goto LABEL_189;
                }

                if (__str.__r_.__value_.__l.__size_ == 6 && *__str.__r_.__value_.__l.__data_ == 1768187245 && *(__str.__r_.__value_.__r.__words[0] + 4) == 28021)
                {
                  goto LABEL_188;
                }

                if (__str.__r_.__value_.__l.__size_ != 5)
                {
LABEL_186:
                  sub_275CBB09C(__p, &__str, 5);
                  *&v96 = __p[0];
                  if (!LODWORD(__p[0]))
                  {
                    goto LABEL_77;
                  }

                  v99 = v96;
                  v95 = *&__p[1];
                  goto LABEL_189;
                }

                v88 = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 4)
                {
                  if (LODWORD(__str.__r_.__value_.__l.__data_) == 1852401780)
                  {
                    goto LABEL_185;
                  }

                  goto LABEL_186;
                }

                if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
                {
                  if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 6)
                  {
                    goto LABEL_186;
                  }

                  if (LODWORD(__str.__r_.__value_.__l.__data_) != 1768187245 || WORD2(__str.__r_.__value_.__r.__words[0]) != 28021)
                  {
                    goto LABEL_186;
                  }

LABEL_188:
                  *&v32 = 0x500000005;
                  v99 = v32;
                  v95 = 1.0;
LABEL_189:
                  v97 = self->mAttributeCollection;
                  __p[0] = a3;
                  LODWORD(__p[1]) = 36;
                  *&v110 = __p;
                  v98 = sub_275CD6FC8(v97 + 32, __p);
                  *(v98 + 48) = v99;
                  *(v98 + 56) = v95;
LABEL_77:
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_79;
                }

                v88 = &__str;
              }

              data = v88->__r_.__value_.__l.__data_;
              v93 = v88->__r_.__value_.__s.__data_[4];
              if (data == 1667852404 && v93 == 107)
              {
                *&v32 = 0x500000005;
                v99 = v32;
                v95 = 2.0;
                goto LABEL_189;
              }

              goto LABEL_186;
            case 37:
              v66 = sub_275C9726C(&__str, 0);
              if (!v66)
              {
                goto LABEL_77;
              }

              v73 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 37;
              *&v110 = __p;
              v68 = sub_275CD6E20(v73 + 176, __p);
              goto LABEL_158;
            case 38:
              v66 = sub_275C97340(&__str, 0);
              if (!v66)
              {
                goto LABEL_77;
              }

              v84 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 38;
              *&v110 = __p;
              v68 = sub_275CD6E20(v84 + 512, __p);
LABEL_158:
              *(v68 + 48) = v66;
              goto LABEL_77;
            case 42:
              sub_275C95420(__p, &__str, 8);
              v102 = 0.0;
              MEMORY[0x277C8CE40](__p, &v102);
              if ((*(&v105[1].__locale_ + *(__p[0] - 3)) & 7) == 2)
              {
                v44 = self->mAttributeCollection;
                v45 = v102;
                *&v110 = a3;
                DWORD2(v110) = 42;
                v111[0] = &v110;
                *(sub_275CD7174(v44 + 440, &v110) + 48) = v45;
              }

              __p[0] = v101;
              *(__p + *(v101 - 3)) = v100;
              v104 = MEMORY[0x277D82878] + 16;
              if (v106 < 0)
              {
                operator delete(v105[7].__locale_);
              }

              v104 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v105);
              std::istream::~istream();
              MEMORY[0x277C8CF70](&v107);
              goto LABEL_77;
            case 44:
              goto LABEL_72;
            case 46:
              __p[0] = 0;
              __p[1] = 0;
              v104 = 0;
              if (sub_275CBB1A8(&__str, __p))
              {
                v70 = self->mAttributeCollection;
                *&v110 = a3;
                DWORD2(v110) = 46;
                sub_275CD706C(v70, v70 + 56, __p, &v110);
              }

              goto LABEL_148;
            case 47:
              sub_275C9701C(&__str, __p);
              v71 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_149;
              }

              v80 = self->mAttributeCollection;
              *&v110 = a3;
              DWORD2(v110) = 47;
              sub_275CD72B0(v80, v80 + 224, __p, &v110);
LABEL_148:
              v71 = __p[0];
LABEL_149:
              if (v71)
              {
                __p[1] = v71;
                operator delete(v71);
              }

              goto LABEL_77;
            default:
              goto LABEL_77;
          }
        }
      }

LABEL_70:
      if (v13 == 44)
      {
        sub_275CB5D70(a4, properties, &__str);
LABEL_72:
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v27 = sub_275CD5D4C(&__str);
          v28 = v27;
          if (v27)
          {
            v111[0] = CFRetain(v27);
            v29 = self->mAttributeCollection;
            __p[0] = a3;
            LODWORD(__p[1]) = 44;
            *&v110 = __p;
            v30 = sub_275CD756C(v29 + 536, __p);
            sub_275CB85F0((v30 + 48), v111);
            CGColorRelease(v28);
            sub_275CB42BC(v111);
          }
        }

        goto LABEL_77;
      }

LABEL_79:
      properties = properties->next;
    }

    while (properties);
  }
}

- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)a3
{
  v3 = a3;
  v29 = 0;
  memset(&__str, 0, sizeof(__str));
  v27 = 0;
  v26 = 1;
  if (!a3)
  {
    goto LABEL_20;
  }

  children = a3->children;
  if (!children)
  {
LABEL_18:
    LODWORD(v3) = 0;
    goto LABEL_20;
  }

  while (1)
  {
    if (!sub_275CB5B80(children))
    {
      if (xmlNodeIsText(children))
      {
        v27 = 1;
        sub_275CB5B94(children, 0, &__p);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(&__str, v17, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_17;
    }

    sub_275CD610C(&v29, &__str, &v27, &v26, 0);
    objc_msgSend_pushState_(self, v6, 1, v7);
    v10 = objc_msgSend_parseNode_(self, v8, v3, v9);
    objc_msgSend_popState(self, v11, v12, v13);
    if (!v10)
    {
      break;
    }

    v16 = v29;
    if (!v29)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v29 = v16;
    }

    objc_msgSend_addObject_(v16, v14, v10, v15);

LABEL_17:
    children = children->next;
    if (!children)
    {
      goto LABEL_18;
    }
  }

  LODWORD(v3) = 1;
LABEL_20:
  sub_275CD610C(&v29, &__str, &v27, &v26, 1);
  if (v3)
  {
    v19 = 0;
    v20 = v29;
  }

  else
  {
    v21 = [EQKitMathMLTokenContent alloc];
    v20 = v29;
    v19 = objc_msgSend_initWithChildren_(v21, v22, v29, v23);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v19;
}

- (id)parseNode:(_xmlNode *)a3
{
  if (sub_275CB5B58(a3, self->mNS))
  {
    name = a3->name;
    if (name)
    {
      sub_275CA6274(__p, name);
      v9 = sub_275C958B4(__p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = objc_msgSend_state(self, v6, v7, v8);
      if (objc_msgSend_isElement_allowedInState_(self, v11, v9, v10))
      {
        if ((v9 - 40) >= 0x88)
        {
          v15 = off_27A675780;
          switch(v9)
          {
            case 1:
              break;
            case 2:
              v15 = off_27A675798;
              break;
            case 3:
              v15 = off_27A6757A0;
              break;
            case 4:
              v15 = off_27A6757C8;
              break;
            case 5:
              v15 = &off_27A675870;
              break;
            case 6:
              v15 = off_27A675748;
              break;
            case 7:
              v15 = off_27A675778;
              break;
            case 8:
              v15 = off_27A6757B8;
              break;
            case 9:
              v15 = off_27A675820;
              break;
            case 10:
              v15 = off_27A675830;
              break;
            case 11:
              v15 = off_27A675828;
              break;
            case 12:
              v15 = off_27A675770;
              break;
            case 13:
              v15 = off_27A675818;
              break;
            case 14:
              v15 = off_27A675858;
              break;
            case 15:
              v15 = off_27A6757A8;
              break;
            case 16:
              v15 = off_27A675860;
              break;
            case 17:
              v15 = off_27A6757E0;
              break;
            case 18:
              v15 = off_27A6757F8;
              break;
            case 19:
              v15 = off_27A675808;
              break;
            case 20:
              v15 = off_27A675800;
              break;
            case 21:
              v15 = off_27A6757E8;
              break;
            case 22:
              v15 = off_27A6757F0;
              break;
            case 23:
              v15 = off_27A675790;
              break;
            case 24:
              v15 = off_27A675838;
              break;
            case 25:
              v15 = off_27A675850;
              break;
            case 26:
              v15 = off_27A675788;
              break;
            case 27:
              v15 = off_27A675840;
              break;
            case 28:
              v15 = off_27A6757C0;
              break;
            case 29:
              v15 = off_27A6757D8;
              break;
            case 30:
              v15 = off_27A675868;
              break;
            case 32:
              v15 = off_27A675810;
              break;
            case 33:
              v15 = off_27A675848;
              break;
            case 34:
              v15 = off_27A675750;
              break;
            case 35:
              v15 = off_27A6757D0;
              break;
            case 36:
              v15 = off_27A675768;
              break;
            case 37:
              v15 = off_27A6757B0;
              break;
            case 38:
              v15 = off_27A675758;
              break;
            case 39:
              v15 = off_27A675760;
              break;
            default:
              objc_msgSend_reportError_withNode_(self, v12, 2, a3);
              goto LABEL_9;
          }

          v16 = objc_alloc(*v15);
          v18 = objc_msgSend_initFromXMLNode_parser_(v16, v17, a3, self);
          if (v18)
          {
            v13 = v18;
            objc_msgSend_parseAttributesForNode_withXMLNode_(self, name, v18, a3);
            return v13;
          }
        }

        else
        {
          objc_msgSend_reportError_withNode_(self, v12, 6, a3);
        }
      }

      else
      {
        objc_msgSend_reportError_withNode_(self, v12, 3, a3);
      }
    }
  }

LABEL_9:
  objc_msgSend_reportError_withNode_(self, name, 4, a3);
  return 0;
}

- (void)popState
{
  size = self->mState.c.__size_;
  if (size)
  {
    self->mState.c.__size_ = size - 1;
    sub_275CD7C38(&self->mState.c.__map_.__first_, 1);
  }
}

- (int)state
{
  size = self->mState.c.__size_;
  if (size)
  {
    return (*(self->mState.c.__map_.__begin_ + (((size + self->mState.c.__start_ - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(size + self->mState.c.__start_ - 1) & 0x3FF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isElement:(int)a3 allowedInState:(int)a4
{
  v4 = (a3 - 25) < 2;
  v5 = a3 == 27;
  if (a4 != 3)
  {
    v5 = 1;
  }

  if (a4 != 2)
  {
    v4 = v5;
  }

  v7 = a3 == 31 || a3 == 39;
  v8 = a4 != 1 || v7;
  if (!a4)
  {
    v8 = (a3 - 28) < 0xFFFFFFFD;
  }

  if (a4 <= 1)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 3) = 0u;
  return self;
}

@end