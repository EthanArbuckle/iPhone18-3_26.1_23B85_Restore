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
  if (!a3)
  {
    [EQKitMathMLParser initWithDocument:a2 node:self source:? environment:?];
    if (RootElement)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (!a4)
  {
    RootElement = xmlDocGetRootElement(a3);
    if (!RootElement)
    {
LABEL_8:
      [EQKitMathMLParser initWithDocument:a2 node:self source:? environment:?];
    }
  }

LABEL_4:
  v15.receiver = self;
  v15.super_class = EQKitMathMLParser;
  v12 = [(EQKitMathMLParser *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->mRootNode = RootElement;
    v12->mNS = xmlSearchNsByHref(a3, RootElement, "http://www.w3.org/1998/Math/MathML");
    v13->mEnvironment = a6;
    v13->mSource = a5;
  }

  return v13;
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

    v9 = [v7 initWithUTF8String:name];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (a3 <= 6 && (v11 = [v10 localizedStringForKey:off_279D46660[a3] value:&stru_287D36338 table:0]) != 0)
    {
      v12 = MEMORY[0x277CBEAC0];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v9];
      v14 = [v12 dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x277CCA450], 0}];
    }

    else
    {
      v14 = 0;
    }

    self->mError = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"EQKitErrorDomain" code:a3 userInfo:v14];
  }
}

- (id)parse
{
  if (EQKitXMLIsNamedElement(self->mRootNode, self->mNS, "math"))
  {
    v3 = [[EQKitMathMLMath alloc] initFromXMLNode:self->mRootNode parser:self];
    [(EQKitMathMLParser *)self parseAttributesForNode:v3 withXMLNode:self->mRootNode];
    if (v3 && !self->mError)
    {
      v4 = [[EQKitEquation alloc] initWithRoot:v3 source:self->mSource];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    [(EQKitMathMLParser *)self reportError:1 withNode:self->mRootNode];
    return 0;
  }

  return v4;
}

- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    for (i = a3->children; i; i = i->next)
    {
      if (EQKitXMLIsElement(i))
      {
        v7 = [(EQKitMathMLParser *)self parseNode:i];
        if (!v7)
        {
          return 0;
        }

        [v5 addObject:v7];
      }
    }
  }

  return v5;
}

- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)a3
{
  result = [(EQKitMathMLParser *)self parseChildrenAsArrayFromXMLNode:a3];
  if (result)
  {
    v4 = result;
    if ([result count] == 1)
    {
      v5 = [v4 objectAtIndex:0];
    }

    else
    {
      v5 = [[EQKitMathMLMRow alloc] initWithChildren:v4];
    }

    return v5;
  }

  return result;
}

- (void)parseAttributesForNode:(id)a3 withXMLNode:(_xmlNode *)a4
{
  v7 = [a3 mathMLAttributes];
  properties = a4->properties;
  if (properties)
  {
    v9 = v7;
    v10 = (v7 + 8);
    v85 = *(MEMORY[0x277D82820] + 24);
    v86 = *MEMORY[0x277D82820];
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
        goto LABEL_80;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, properties->name);
      v13 = EQKitTypes::Attributes::attributeFromMathMLString(__p, 0);
      if (SHIBYTE(v89) < 0)
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
        goto LABEL_80;
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
          goto LABEL_80;
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
            goto LABEL_80;
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
              goto LABEL_80;
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
                  goto LABEL_80;
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
          EQKitXMLAttributeValueAsString(a4, properties, &__str);
          switch(v13)
          {
            case 1:
            case 24:
            case 25:
              v33 = EQKitTypes::Align::alignFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v33)
              {
                goto LABEL_78;
              }

              mAttributeCollection = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = v13;
              *&v95 = __p;
              v35 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(mAttributeCollection + 128, __p);
              goto LABEL_91;
            case 2:
              v44 = EQKitTypes::VAlign::vAlignFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v44)
              {
                goto LABEL_78;
              }

              v52 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 2;
              *&v95 = __p;
              v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v52 + 152, __p);
              goto LABEL_160;
            case 3:
              EQKitTypes::VAlign::vAlignVectorFromMathMLString(&__str, __p);
              v42 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_156;
              }

              v53 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 3;
              EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v53, v53 + 248, __p, &v95);
              goto LABEL_155;
            case 4:
              EQKitTypes::Align::alignVectorFromMathMLString(&__str, __p);
              v42 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_156;
              }

              v55 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 4;
              EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v55, v55 + 272, __p, &v95);
              goto LABEL_155;
            case 5:
            case 6:
            case 8:
            case 14:
            case 16:
            case 39:
            case 45:
              v33 = EQKitTypes::Boolean::BOOLeanFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v33)
              {
                goto LABEL_78;
              }

              v34 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = v13;
              *&v95 = __p;
              v35 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v34 + 8, __p);
LABEL_91:
              *(v35 + 48) = v33;
              goto LABEL_78;
            case 7:
              v44 = EQKitTypes::Display::displayFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v44)
              {
                goto LABEL_78;
              }

              v56 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 7;
              *&v95 = __p;
              v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v56 + 320, __p);
              goto LABEL_160;
            case 9:
              *&v95 = 0;
              BYTE8(v95) = 1;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v93, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                v93 = __str;
              }

              v73 = EQKit::ScriptLevel::fromString(&v93, &v95);
              if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v93.__r_.__value_.__l.__data_);
              }

              if (v73)
              {
                v74 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = 9;
                v96 = __p;
                v75 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKit::ScriptLevel,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKit::ScriptLevel>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v74 + 296, __p);
                *(v75 + 48) = v95;
                *(v75 + 56) = BYTE8(v95);
              }

              goto LABEL_78;
            case 10:
            case 11:
            case 26:
            case 27:
            case 28:
            case 40:
            case 41:
            case 43:
              EQKitLength::EQKitLength(&v95, &__str, 0);
              if (v95)
              {
                v31 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = v13;
                v96 = __p;
                v32 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v31 + 32, __p);
                *(v32 + 48) = v95;
                goto LABEL_78;
              }

              if (v13 != 41)
              {
                goto LABEL_78;
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ != 8)
                {
                  goto LABEL_78;
                }

                p_str = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
                {
                  goto LABEL_78;
                }

                p_str = &__str;
              }

              if (p_str->__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
              {
                v71 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = 41;
                v96 = __p;
                v72 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v71 + 32, __p);
                *(v72 + 48) = 1;
                *(v72 + 56) = 0x7FEFFFFFFFFFFFFFLL;
              }

              goto LABEL_78;
            case 12:
            case 13:
            case 18:
            case 19:
              EQKit::AttributeCollection::setValueForKey(self->mAttributeCollection, &__str, v13, a3);
              goto LABEL_78;
            case 15:
              v44 = EQKit::Config::Operator::formFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v44)
              {
                goto LABEL_78;
              }

              v47 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 15;
              *&v95 = __p;
              v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v47 + 344, __p);
              goto LABEL_160;
            case 17:
              v44 = EQKit::Script::variantFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v44)
              {
                goto LABEL_78;
              }

              v45 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 17;
              *&v95 = __p;
              v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v45 + 368, __p);
              goto LABEL_160;
            case 20:
              EQKitTypes::Strings::separatorsFromString(&__str, __p);
              v66 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 20;
              EQKit::AttributeCollection::setValueForKey<std::vector<std::string>>(v66, v66 + 104, __p, &v95);
              *&v95 = __p;
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v95);
              goto LABEL_78;
            case 21:
            case 22:
              LOBYTE(v87) = 0;
              v40 = EQKitTypes::Integer::integerFromMathMLString(&__str, &v87);
              if (LOBYTE(v87) == 1)
              {
                v41 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = v13;
                *&v95 = __p;
                *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v41 + 392, __p) + 48) = v40;
              }

              goto LABEL_78;
            case 23:
              LOBYTE(v87) = 0;
              v57 = EQKitTypes::UInteger::uIntegerFromMathMLString(&__str, &v87);
              if (LOBYTE(v87) == 1)
              {
                v58 = self->mAttributeCollection;
                __p[0] = a3;
                LODWORD(__p[1]) = 23;
                *&v95 = __p;
                *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v58 + 416, __p) + 48) = v57;
              }

              goto LABEL_78;
            case 29:
              EQKitPseudoUnitLength::EQKitPseudoUnitLength(__p, &__str, 1);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_78;
              }

              v54 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 29;
              v96 = &v95;
              v39 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v54 + 464, &v95);
              goto LABEL_121;
            case 30:
              EQKitPseudoUnitLength::EQKitPseudoUnitLength(__p, &__str, 2);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_78;
              }

              v50 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 30;
              v96 = &v95;
              v39 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v50 + 464, &v95);
              goto LABEL_121;
            case 31:
              EQKitPseudoUnitLength::EQKitPseudoUnitLength(__p, &__str, 3);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_78;
              }

              v51 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 31;
              v96 = &v95;
              v39 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v51 + 464, &v95);
              goto LABEL_121;
            case 32:
            case 33:
              EQKitPseudoUnitLength::EQKitPseudoUnitLength(__p, &__str, 0);
              if (!LODWORD(__p[0]))
              {
                goto LABEL_78;
              }

              v38 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = v13;
              v96 = &v95;
              v39 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v38 + 464, &v95);
LABEL_121:
              *(v39 + 48) = *__p;
              *(v39 + 64) = v89;
              goto LABEL_78;
            case 34:
              EQKitTypes::Crossout::crossoutVectorFromMathMLString(&__str, __p);
              v42 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_156;
              }

              v69 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 34;
              EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v69, v69 + 200, __p, &v95);
              goto LABEL_155;
            case 35:
              v61 = objc_alloc(MEMORY[0x277CCACA8]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v62 = &__str;
              }

              else
              {
                v62 = __str.__r_.__value_.__r.__words[0];
              }

              v63 = [v61 initWithUTF8String:v62];
              if ([v63 length] == 1)
              {
                v64 = [v63 characterAtIndex:0];
                if (([objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")] & 1) == 0)
                {
                  v65 = self->mAttributeCollection;
                  __p[0] = a3;
                  LODWORD(__p[1]) = 35;
                  *&v95 = __p;
                  *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v65 + 488, __p) + 48) = v64;
                }
              }

              goto LABEL_78;
            case 36:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ == 4 && *__str.__r_.__value_.__l.__data_ == 1852401780)
                {
LABEL_187:
                  v84 = 0x500000005;
                  v81 = 0.5;
                  goto LABEL_191;
                }

                if (__str.__r_.__value_.__l.__size_ == 6 && *__str.__r_.__value_.__l.__data_ == 1768187245 && *(__str.__r_.__value_.__r.__words[0] + 4) == 28021)
                {
                  goto LABEL_190;
                }

                if (__str.__r_.__value_.__l.__size_ != 5)
                {
LABEL_188:
                  EQKitLength::EQKitLength(__p, &__str, 5);
                  if (!LODWORD(__p[0]))
                  {
                    goto LABEL_78;
                  }

                  v84 = __p[0];
                  v81 = *&__p[1];
                  goto LABEL_191;
                }

                v77 = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 4)
                {
                  if (LODWORD(__str.__r_.__value_.__l.__data_) == 1852401780)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_188;
                }

                if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
                {
                  if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 6)
                  {
                    goto LABEL_188;
                  }

                  if (LODWORD(__str.__r_.__value_.__l.__data_) != 1768187245 || WORD2(__str.__r_.__value_.__r.__words[0]) != 28021)
                  {
                    goto LABEL_188;
                  }

LABEL_190:
                  v84 = 0x500000005;
                  v81 = 1.0;
LABEL_191:
                  v82 = self->mAttributeCollection;
                  __p[0] = a3;
                  LODWORD(__p[1]) = 36;
                  *&v95 = __p;
                  v83 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v82 + 32, __p);
                  *(v83 + 48) = v84;
                  *(v83 + 56) = v81;
LABEL_78:
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_80;
                }

                v77 = &__str;
              }

              data = v77->__r_.__value_.__l.__data_;
              v79 = v77->__r_.__value_.__s.__data_[4];
              if (data == 1667852404 && v79 == 107)
              {
                v84 = 0x500000005;
                v81 = 2.0;
                goto LABEL_191;
              }

              goto LABEL_188;
            case 37:
              v44 = EQKitTypes::GroupAlign::groupAlignFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v44)
              {
                goto LABEL_78;
              }

              v70 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 37;
              *&v95 = __p;
              v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v70 + 176, __p);
              goto LABEL_160;
            case 38:
              v44 = EQKitTypes::Edge::edgeFromMathMLString(&__str.__r_.__value_.__l.__data_, 0);
              if (!v44)
              {
                goto LABEL_78;
              }

              v48 = self->mAttributeCollection;
              __p[0] = a3;
              LODWORD(__p[1]) = 38;
              *&v95 = __p;
              v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v48 + 512, __p);
LABEL_160:
              *(v46 + 48) = v44;
              goto LABEL_78;
            case 42:
              std::istringstream::basic_istringstream[abi:nn200100](__p, &__str, 8);
              v87 = 0.0;
              MEMORY[0x26D6A98F0](__p, &v87);
              if ((*(&v90[1].__locale_ + *(__p[0] - 3)) & 7) == 2)
              {
                v59 = self->mAttributeCollection;
                v60 = v87;
                *&v95 = a3;
                DWORD2(v95) = 42;
                v96 = &v95;
                *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v59 + 440, &v95) + 48) = v60;
              }

              __p[0] = v86;
              *(__p + *(v86 - 3)) = v85;
              v89 = MEMORY[0x277D82878] + 16;
              if (v91 < 0)
              {
                operator delete(v90[7].__locale_);
              }

              v89 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v90);
              std::istream::~istream();
              MEMORY[0x26D6A99E0](&v92);
              goto LABEL_78;
            case 44:
              goto LABEL_72;
            case 46:
              __p[0] = 0;
              __p[1] = 0;
              v89 = 0;
              if (EQKitLength::lengthVectorFromString(&__str, __p))
              {
                v68 = self->mAttributeCollection;
                *&v95 = a3;
                DWORD2(v95) = 46;
                EQKit::AttributeCollection::setValueForKey<std::vector<EQKitLength>>(v68, v68 + 56, __p, &v95);
              }

              goto LABEL_155;
            case 47:
              EQKitTypes::Notation::notationVectorFromMathMLString(&__str, __p);
              v42 = __p[0];
              if (__p[1] == __p[0])
              {
                goto LABEL_156;
              }

              v43 = self->mAttributeCollection;
              *&v95 = a3;
              DWORD2(v95) = 47;
              EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v43, v43 + 224, __p, &v95);
LABEL_155:
              v42 = __p[0];
LABEL_156:
              if (v42)
              {
                __p[1] = v42;
                operator delete(v42);
              }

              goto LABEL_78;
            case 48:
              v49 = [MEMORY[0x277CCA890] currentHandler];
              [v49 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"-[EQKitMathMLParser parseAttributesForNode:withXMLNode:]") description:{@"EQKitMathMLParser.mm", 648, @"attribute parsing for %s (%d) is not implemented", properties->name, 48}];
              goto LABEL_78;
            default:
              goto LABEL_78;
          }
        }
      }

LABEL_70:
      if (v13 == 44)
      {
        EQKitXMLAttributeValueAsString(a4, properties, &__str);
LABEL_72:
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          CGColorFromString = EQKitMathMLParserCreateCGColorFromString(&__str);
          v28 = CGColorFromString;
          if (CGColorFromString)
          {
            v96 = CFRetain(CGColorFromString);
            v29 = self->mAttributeCollection;
            __p[0] = a3;
            LODWORD(__p[1]) = 44;
            *&v95 = __p;
            v30 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v29 + 536, __p);
            EQKitTypes::CFRetainRelease::operator=((v30 + 48), &v96);
            CGColorRelease(v28);
            if (v96)
            {
              CFRelease(v96);
            }
          }
        }

        goto LABEL_78;
      }

LABEL_80:
      properties = properties->next;
    }

    while (properties);
  }
}

- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)a3
{
  v3 = a3;
  v18 = 0;
  memset(&__str, 0, sizeof(__str));
  v16 = 0;
  v15 = 1;
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
    if (!EQKitXMLIsElement(children))
    {
      if (xmlNodeIsText(children))
      {
        v16 = 1;
        EQKitXMLTextContentAsString(children, 0, &__p);
        v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(&__str, v8, v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_17;
    }

    _contentAppendStringIfNeeded(&v18, &__str, &v16, &v15, 0);
    [(EQKitMathMLParser *)self pushState:1];
    v6 = [(EQKitMathMLParser *)self parseNode:v3];
    [(EQKitMathMLParser *)self popState];
    if (!v6)
    {
      break;
    }

    v7 = v18;
    if (!v18)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = v7;
    }

    [v7 addObject:v6];

LABEL_17:
    children = children->next;
    if (!children)
    {
      goto LABEL_18;
    }
  }

  LODWORD(v3) = 1;
LABEL_20:
  _contentAppendStringIfNeeded(&v18, &__str, &v16, &v15, 1);
  if (v3)
  {
    v10 = 0;
    v11 = v18;
  }

  else
  {
    v12 = [EQKitMathMLTokenContent alloc];
    v11 = v18;
    v10 = [(EQKitMathMLTokenContent *)v12 initWithChildren:v18];
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10;
}

- (id)parseNode:(_xmlNode *)a3
{
  if (!EQKitXMLIsNsElement(a3, self->mNS))
  {
    goto LABEL_10;
  }

  name = a3->name;
  if (!name)
  {
    goto LABEL_10;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, name);
  v6 = EQKitMathMLElement::fromString(__p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (![(EQKitMathMLParser *)self isElement:v6 allowedInState:[(EQKitMathMLParser *)self state]])
  {
    v7 = 3;
    goto LABEL_9;
  }

  if ((v6 - 40) < 0x88)
  {
    v7 = 6;
LABEL_9:
    [(EQKitMathMLParser *)self reportError:v7 withNode:a3];
    goto LABEL_10;
  }

  v10 = off_279D44738;
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v10 = off_279D44750;
      break;
    case 3:
      v10 = off_279D44758;
      break;
    case 4:
      v10 = off_279D44780;
      break;
    case 5:
      v10 = off_279D44838;
      break;
    case 6:
      v10 = off_279D44700;
      break;
    case 7:
      v10 = off_279D44730;
      break;
    case 8:
      v10 = off_279D44770;
      break;
    case 9:
      v10 = off_279D447D8;
      break;
    case 10:
      v10 = off_279D447E8;
      break;
    case 11:
      v10 = off_279D447E0;
      break;
    case 12:
      v10 = off_279D44728;
      break;
    case 13:
      v10 = off_279D447D0;
      break;
    case 14:
      v10 = off_279D44810;
      break;
    case 15:
      v10 = off_279D44760;
      break;
    case 16:
      v10 = off_279D44818;
      break;
    case 17:
      v10 = off_279D44798;
      break;
    case 18:
      v10 = off_279D447B0;
      break;
    case 19:
      v10 = off_279D447C0;
      break;
    case 20:
      v10 = off_279D447B8;
      break;
    case 21:
      v10 = off_279D447A0;
      break;
    case 22:
      v10 = off_279D447A8;
      break;
    case 23:
      v10 = off_279D44748;
      break;
    case 24:
      v10 = off_279D447F0;
      break;
    case 25:
      v10 = off_279D44808;
      break;
    case 26:
      v10 = off_279D44740;
      break;
    case 27:
      v10 = off_279D447F8;
      break;
    case 28:
      v10 = off_279D44778;
      break;
    case 29:
      v10 = off_279D44790;
      break;
    case 30:
      v10 = off_279D44828;
      break;
    case 32:
      v10 = off_279D447C8;
      break;
    case 33:
      v10 = off_279D44800;
      break;
    case 34:
      v10 = off_279D44708;
      break;
    case 35:
      v10 = off_279D44788;
      break;
    case 36:
      v10 = off_279D44720;
      break;
    case 37:
      v10 = off_279D44768;
      break;
    case 38:
      v10 = off_279D44710;
      break;
    case 39:
      v10 = off_279D44718;
      break;
    default:
      v7 = 2;
      goto LABEL_9;
  }

  v11 = [objc_alloc(*v10) initFromXMLNode:a3 parser:self];
  if (v11)
  {
    v8 = v11;
    [(EQKitMathMLParser *)self parseAttributesForNode:v11 withXMLNode:a3];
    return v8;
  }

LABEL_10:
  [(EQKitMathMLParser *)self reportError:4 withNode:a3];
  return 0;
}

- (void)popState
{
  size = self->mState.c.__size_;
  if (size)
  {
    self->mState.c.__size_ = size - 1;
    std::deque<EQKitMathMLParserState>::__maybe_remove_back_spare[abi:nn200100](&self->mState.c.__map_.__first_, 1);
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

- (uint64_t)initWithDocument:(uint64_t)a1 node:(uint64_t)a2 source:environment:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLParser.mm" lineNumber:84 description:@"document should not be NULL"];
}

- (uint64_t)initWithDocument:(uint64_t)a1 node:(uint64_t)a2 source:environment:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLParser.mm" lineNumber:90 description:@"node should not be NULL"];
}

@end