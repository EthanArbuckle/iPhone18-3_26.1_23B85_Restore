uint64_t std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  v8 = a2[1];
  v7 = a2[2];
  if (v6 == a3)
  {
    v12 = a2[1];
    v11 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(v7, v9);
      v9 += 24;
      v7 = v10 + 24;
    }

    while (v9 != v6);
    v11 = a1[1];
    v12 = a2[1];
    v7 = a2[2];
  }

  a2[2] = v7 + v11 - a3;
  a1[1] = a3;
  v13 = *a1;
  v14 = v12 + *a1 - a3;
  if (*a1 != a3)
  {
    v15 = v12 + *a1 - a3;
    do
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(v15, v13);
      v13 += 24;
      v15 = v16 + 24;
    }

    while (v13 != a3);
    v13 = *a1;
  }

  a2[1] = v14;
  *a1 = v14;
  a1[1] = v13;
  a2[1] = v13;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v8;
}

void std::vector<EQKitLayoutRow::Kerning>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = &v4[2 * a2];
      do
      {
        *v4 = 0;
        v4[1] = 0x7FFFFFFFFFFFFFFFLL;
        v4 += 2;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      v14[1] = 0x7FFFFFFFFFFFFFFFLL;
      v14 += 2;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t std::vector<EQKitAlignmentGroup>::__emplace_back_slow_path<EQKitAlignmentGroup>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitAlignmentGroup>>(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  EQKitAlignmentGroup::EQKitAlignmentGroup(24 * v2, a2);
  v11 = 24 * v2 + 24;
  std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_26C716E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 + *result - v6;
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(result, v5);
      v5 += 24;
      result = (v8 + 24);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void EQKitLayoutRow::~EQKitLayoutRow(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(a1 + 72, *(a1 + 80));
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;

    operator delete(v3);
  }
}

uint64_t EQKitLayoutRow::addChild()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"void EQKitLayoutRow::addChild(const EQKitLayoutRow &)"];
  v0 = OUTLINED_FUNCTION_0_0();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"void EQKitLayoutRow::addChild(const EQKitLayoutRow &)"];
  v0 = OUTLINED_FUNCTION_0_0();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

BOOL EQKitLayoutRow::endNestedRow(uint64_t *a1, uint64_t *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutRow::endNestedRow()") description:{@"EQKitLayoutRow.mm", 141, @"invalid state"}];
  v5 = *a1;
  *a2 = *a1;
  return v5 == 0;
}

uint64_t EQKitLayoutRow::resolveLayouts(void *a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutRow::resolveLayouts(EQKit::ILayoutVector &)") description:{@"EQKitLayoutRow.mm", 275, @"invalid state"}];
  *a2 = *a1;
  return result;
}

uint64_t EQKitLayoutRow::addToAlignmentContext()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"void EQKitLayoutRow::addToAlignmentContext(EQKitGroupAlignmentContext &) const"];
  v0 = OUTLINED_FUNCTION_0_0();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t EQKitLayoutRow::overallLayoutWithAlignmentContext()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"EQKit::ILayout EQKitLayoutRow::overallLayoutWithAlignmentContext(const EQKitGroupAlignmentContext &) const"];
  v0 = OUTLINED_FUNCTION_0_0();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

void EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(EQKitLayoutStretchedOperator *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

uint64_t EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

uint64_t EQKitXMLIsTextContentOnly(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = 0;
      while (xmlNodeIsText(v1) || *(v1 + 8) == 8)
      {
        v1 = *(v1 + 48);
        v2 = 1;
        v3 = 1;
        if (!v1)
        {
          return v3 & v2;
        }
      }

      v3 = 0;
      return v3 & v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *EQKitXMLIsNamedElement(_xmlNode *a1, _xmlNs *a2, const char *__s2)
{
  result = 0;
  if (a1 && __s2)
  {
    if (a1->type == XML_ELEMENT_NODE && a1->ns == a2)
    {
      result = a1->name;
      if (result)
      {
        return (strcmp(result, __s2) == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL EQKitXMLIsNsElement(_BOOL8 result, _xmlNs *a2)
{
  if (result)
  {
    return *(result + 8) == 1 && *(result + 72) == a2;
  }

  return result;
}

BOOL EQKitXMLIsElement(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 1;
  }

  return result;
}

void EQKitXMLTextContentAsString(_xmlNode *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v6 = xmlBufferCreate();
  xmlNodeBufGetContent(v6, a1);
  if (a2)
  {
    v7 = xmlBufferContent(v6);
    std::string::basic_string[abi:nn200100]<0>(&__str, v7);
    std::string::basic_string[abi:nn200100]<0>(__p, " \t\n");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = __p[1];
    }

    if (!size)
    {
      goto LABEL_27;
    }

    v12 = p_str;
    if (v11)
    {
      v13 = size;
      v12 = p_str;
      while (memchr(v10, v12->__r_.__value_.__s.__data_[0], v11))
      {
        v12 = (v12 + 1);
        if (!--v13)
        {
          goto LABEL_27;
        }
      }
    }

    v15 = v12 - p_str;
    if (v15 == -1)
    {
LABEL_27:
      std::string::basic_string[abi:nn200100]<0>(a3, "");
    }

    else
    {
      v16 = size - 1;
      do
      {
        v17 = v16;
        if (v16 == -1)
        {
          break;
        }

        if (!v11)
        {
          break;
        }

        v18 = memchr(v10, p_str->__r_.__value_.__s.__data_[v16], v11);
        v16 = v17 - 1;
      }

      while (v18);
      std::string::basic_string(a3, &__str, v15, v17 - v15 + 1, &v22);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = xmlBufferContent(v6);
    std::string::basic_string[abi:nn200100]<0>(a3, v14);
  }

  xmlBufferFree(v6);
}

void EQKitXMLAttributeValueAsString(_xmlNode *a1@<X0>, _xmlAttr *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1)
  {
    if (a2)
    {
      String = xmlNodeListGetString(a1->doc, a2->children, 1);
      if (String)
      {
        v5 = String;
        MEMORY[0x26D6A9880](a3, String);

        free(v5);
      }
    }
  }
}

void EQKitXMLAttributeValueAsString(_xmlNode *a1@<X0>, _xmlNs *a2@<X1>, xmlChar *name@<X2>, BOOL *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = xmlHasProp(a1, name);
  v11 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  if (a2 && !v10)
  {
    v11 = xmlHasNsProp(a1, name, a2->href);
  }

  if (v11)
  {
    EQKitXMLAttributeValueAsString(a1, v11, &v25);
    *a5 = v25;
  }

  if (a4)
  {
    *a4 = v11 != 0;
  }

  v12 = __p;
  std::string::basic_string[abi:nn200100]<0>(__p, " \t\n");
  v13 = *(a5 + 23);
  if (v13 >= 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = *a5;
  }

  if (v13 >= 0)
  {
    v15 = *(a5 + 23);
  }

  else
  {
    v15 = *(a5 + 8);
  }

  if ((v24 & 0x80u) == 0)
  {
    v16 = v24;
  }

  else
  {
    v12 = __p[0];
    v16 = __p[1];
  }

  if (!v15)
  {
    goto LABEL_33;
  }

  v17 = v14;
  if (v16)
  {
    v18 = v15;
    v17 = v14;
    while (memchr(v12, *v17, v16))
    {
      ++v17;
      if (!--v18)
      {
        goto LABEL_33;
      }
    }
  }

  if (v17 - v14 == -1)
  {
LABEL_33:
    MEMORY[0x26D6A9880](a5, "");
  }

  else
  {
    v19 = v15 - 1;
    v20 = v19;
    do
    {
      v21 = v20;
      if (v20 == -1)
      {
        break;
      }

      if (!v16)
      {
        break;
      }

      v22 = memchr(v12, v14[v20], v16);
      v20 = v21 - 1;
    }

    while (v22);
    if (v17 != v14 || v21 != v19)
    {
      std::string::basic_string(&v25, a5, v17 - v14, v21 - (v17 - v14) + 1, &v26);
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      *a5 = v25;
    }
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t EQKitXMLAttributeValueAsInt32(_xmlNode *a1, _xmlNs *a2, xmlChar *a3, BOOL *a4)
{
  v13 = 0;
  EQKitXMLAttributeValueAsString(a1, a2, a3, a4, &v12);
  std::istringstream::basic_istringstream[abi:nn200100](v7, &v12, 8);
  MEMORY[0x26D6A9900](v7, &v13);
  if (a4)
  {
    *a4 = *(&v9[1].__locale_ + *(v7[0] - 24)) == 0;
  }

  v5 = v13;
  v7[0] = *MEMORY[0x277D82820];
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::istream::~istream();
  MEMORY[0x26D6A99E0](&v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v5;
}

uint64_t *std::istringstream::basic_istringstream[abi:nn200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 24;
  v7 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v8 = *(MEMORY[0x277D82820] + 16);
  v9 = *(MEMORY[0x277D82820] + 8);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  a1[1] = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, a1 + 2);
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[15] = v7;
  std::stringbuf::basic_stringbuf[abi:nn200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:nn200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D6A99A0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_26C718F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v25 - 145) < 0)
  {
    operator delete(*(v24 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x26D6A99E0](a1 + 120);
  return a1;
}

std::string *EQKit::AttributeCollection::setValueForKey(uint64_t a1, const std::string *a2, int a3, unint64_t a4)
{
  v7 = a4;
  v8 = a3;
  v9 = &v7;
  v5 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a1 + 80, &v7);
  return std::string::operator=(v5 + 2, a2);
}

CGColorRef EQKitMathMLParserCreateCGColorFromString(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *components = xmmword_26CA638D0;
  v17 = unk_26CA638E0;
  v1 = *(a1 + 23);
  if ((v1 & 0x80) != 0)
  {
    v2 = *(a1 + 8);
    if (v2 <= 1)
    {
      return 0;
    }

    if (**a1 != 35)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, v2);
      goto LABEL_10;
    }

LABEL_7:
    if ((EQKitMathMLParserConvertHexColorStringToRGBFloatValues(a1, components, &components[1], &v17) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v1 < 2)
  {
    return 0;
  }

  if (*a1 == 35)
  {
    goto LABEL_7;
  }

  __p = *a1;
LABEL_10:
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  if (!v7)
  {
LABEL_28:
    v13 = EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(&__p, components, &components[1], &v17);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v8 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v10 = p_p->__r_.__value_.__s.__data_[0];
    if (p_p->__r_.__value_.__s.__data_[0] > 90)
    {
      break;
    }

    if (v10 < 65)
    {
      goto LABEL_33;
    }

    p_p->__r_.__value_.__s.__data_[0] = v10 + 32;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v8 = __p.__r_.__value_.__r.__words[0];
LABEL_21:
    p_p = (p_p + 1);
    if ((v5 & 0x80u) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = v8;
    }

    if ((v5 & 0x80u) == 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = size;
    }

    if (p_p == (v11 + v12))
    {
      goto LABEL_28;
    }
  }

  if ((v10 - 97) <= 0x19)
  {
    goto LABEL_21;
  }

LABEL_33:
  v13 = 0;
  if ((v5 & 0x80) != 0)
  {
LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (!v13)
  {
    return 0;
  }

LABEL_8:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v4;
}

void sub_26C719374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C719540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id *_contentAppendStringIfNeeded(id *result, std::string *__str, _BYTE *a3, _BYTE *a4, int a5)
{
  if (*a3 != 1)
  {
    return result;
  }

  v34 = v5;
  v35 = v6;
  v10 = result;
  if (*a4 == 1)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v12 = __str;
    }

    else
    {
      v12 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_42;
    }

    v13 = 0;
    while (1)
    {
      v14 = v12->__r_.__value_.__s.__data_[v13];
      v15 = v14 > 0x20;
      v16 = (1 << v14) & 0x100000600;
      if (v15 || v16 == 0)
      {
        break;
      }

      if (size == ++v13)
      {
        goto LABEL_42;
      }
    }

    if (v13 == -1)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (!a5)
  {
    v19 = __str->__r_.__value_.__l.__size_;
    if ((v18 & 0x80u) == 0)
    {
      v26 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = __str->__r_.__value_.__l.__size_;
    }

    v22 = v26 - 1;
    goto LABEL_33;
  }

  v20 = __str->__r_.__value_.__r.__words[0];
  v19 = __str->__r_.__value_.__l.__size_;
  if ((v18 & 0x80u) != 0)
  {
    v21 = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v20 = __str;
    v21 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if (v21)
  {
    v22 = v21 - 1;
    do
    {
      v23 = v20->__r_.__value_.__s.__data_[v22];
      v15 = v23 > 0x20;
      v24 = (1 << v23) & 0x100000600;
      if (v15 || v24 == 0)
      {
        break;
      }

      --v22;
    }

    while (v22 != -1);
LABEL_33:
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v22 = -1;
  if (!v13)
  {
LABEL_34:
    if ((v18 & 0x80u) != 0)
    {
      v18 = v19;
    }

    if (v22 == v18 - 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  std::string::basic_string(&v32, __str, v13, v22 - v13 + 1, &v33);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v32;
LABEL_42:
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = __str;
  }

  else
  {
    v28 = __str->__r_.__value_.__r.__words[0];
  }

  v29 = [v27 initWithUTF8String:v28];
  if (v29)
  {
    v30 = v29;
    v31 = *v10;
    if (!*v10)
    {
      v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
      *v10 = v31;
    }

    [v31 addObject:v30];
  }

  result = MEMORY[0x26D6A9880](__str, "");
  *a3 = 0;
  *a4 = 0;
  return result;
}

void sub_26C719A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(uint64_t a1, double *a2, double *a3, double *a4)
{
  if (EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::onceToken != -1)
  {
    EQKitMathMLParserConvertNamedColorStringToRGBFloatValues();
  }

  if (!EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap)
  {
    return 1;
  }

  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap, a1);
  if (EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap + 8 == v8)
  {
    return 0;
  }

  v9 = (v8 + 56);

  return EQKitMathMLParserConvertHexColorStringToRGBFloatValues(v9, a2, a3, a4);
}

void *___Z56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8_EUb_E11_HTMLColors, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZ56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8_EUb_E11_HTMLColors))
  {
    std::string::basic_string[abi:nn200100]<0>(&_ZZZ56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8_EUb_E11_HTMLColors, "aliceblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B63B8, "#f0f8ff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B63D0, "antiquewhite");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B63E8, "#faebd7");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6400, "aqua");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6418, "#00ffff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6430, "aquamarine");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6448, "#7fffd4");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6460, "azure");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6478, "#f0ffff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6490, "beige");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B64A8, "#f5f5dc");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B64C0, "bisque");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B64D8, "#ffe4c4");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B64F0, "black");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6508, "#000000");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6520, "blanchedalmond");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6538, "#ffebcd");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6550, "blue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6568, "#0000ff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6580, "blueviolet");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6598, "#8a2be2");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B65B0, "brown");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B65C8, "#a52a2a");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B65E0, "burlywood");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B65F8, "#deb887");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6610, "cadetblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6628, "#5f9ea0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6640, "chartreuse");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6658, "#7fff00");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6670, "chocolate");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6688, "#d2691e");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B66A0, "coral");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B66B8, "#ff7f50");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B66D0, "cornflowerblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B66E8, "#6495ed");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6700, "cornsilk");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6718, "#fff8dc");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6730, "crimson");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6748, "#dc143c");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6760, "cyan");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6778, "#00ffff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6790, "darkblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B67A8, "#00008b");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B67C0, "darkcyan");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B67D8, "#008b8b");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B67F0, "darkgoldenrod");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6808, "#b8860b");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6820, "darkgray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6838, "#a9a9a9");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6850, "darkgrey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6868, "#a9a9a9");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6880, "darkgreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6898, "#006400");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B68B0, "darkkhaki");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B68C8, "#bdb76b");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B68E0, "darkmagenta");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B68F8, "#8b008b");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6910, "darkolivegreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6928, "#556b2f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6940, "darkorange");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6958, "#ff8c00");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6970, "darkorchid");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6988, "#9932cc");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B69A0, "darkred");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B69B8, "#8b0000");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B69D0, "darksalmon");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B69E8, "#e9967a");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6A00, "darkseagreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6A18, "#8fbc8f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6A30, "darkslateblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6A48, "#483d8b");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6A60, "darkslategray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6A78, "#2f4f4f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6A90, "darkslategrey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6AA8, "#2f4f4f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6AC0, "darkturquoise");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6AD8, "#00ced1");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6AF0, "darkviolet");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6B08, "#9400d3");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6B20, "deeppink");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6B38, "#ff1493");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6B50, "deepskyblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6B68, "#00bfff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6B80, "dimgray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6B98, "#696969");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6BB0, "dimgrey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6BC8, "#696969");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6BE0, "dodgerblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6BF8, "#1e90ff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6C10, "firebrick");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6C28, "#b22222");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6C40, "floralwhite");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6C58, "#fffaf0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6C70, "forestgreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6C88, "#228b22");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6CA0, "fuchsia");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6CB8, "#ff00ff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6CD0, "gainsboro");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6CE8, "#dcdcdc");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6D00, "ghostwhite");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6D18, "#f8f8ff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6D30, "gold");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6D48, "#ffd700");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6D60, "goldenrod");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6D78, "#daa520");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6D90, "gray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6DA8, "#808080");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6DC0, "grey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6DD8, "#808080");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6DF0, "green");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6E08, "#008000");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6E20, "greenyellow");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6E38, "#adff2f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6E50, "honeydew");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6E68, "#f0fff0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6E80, "hotpink");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6E98, "#ff69b4");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6EB0, "indianred ");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6EC8, "#cd5c5c");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6EE0, "indigo ");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6EF8, "#4b0082");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6F10, "ivory");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6F28, "#fffff0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6F40, "khaki");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6F58, "#f0e68c");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6F70, "lavender");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6F88, "#e6e6fa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6FA0, "lavenderblush");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6FB8, "#fff0f5");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B6FD0, "lawngreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B6FE8, "#7cfc00");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7000, "lemonchiffon");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7018, "#fffacd");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7030, "lightblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7048, "#add8e6");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7060, "lightcoral");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7078, "#f08080");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7090, "lightcyan");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B70A8, "#e0ffff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B70C0, "lightgoldenrodyellow");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B70D8, "#fafad2");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B70F0, "lightgray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7108, "#d3d3d3");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7120, "lightgrey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7138, "#d3d3d3");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7150, "lightgreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7168, "#90ee90");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7180, "lightpink");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7198, "#ffb6c1");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B71B0, "lightsalmon");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B71C8, "#ffa07a");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B71E0, "lightseagreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B71F8, "#20b2aa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7210, "lightskyblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7228, "#87cefa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7240, "lightslategray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7258, "#778899");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7270, "lightslategrey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7288, "#778899");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B72A0, "lightsteelblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B72B8, "#b0c4de");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B72D0, "lightyellow");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B72E8, "#ffffe0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7300, "lime");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7318, "#00ff00");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7330, "limegreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7348, "#32cd32");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7360, "linen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7378, "#faf0e6");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7390, "magenta");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B73A8, "#ff00ff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B73C0, "maroon");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B73D8, "#800000");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B73F0, "mediumaquamarine");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7408, "#66cdaa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7420, "mediumblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7438, "#0000cd");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7450, "mediumorchid");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7468, "#ba55d3");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7480, "mediumpurple");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7498, "#9370d8");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B74B0, "mediumseagreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B74C8, "#3cb371");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B74E0, "mediumslateblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B74F8, "#7b68ee");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7510, "mediumspringgreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7528, "#00fa9a");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7540, "mediumturquoise");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7558, "#48d1cc");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7570, "mediumvioletred");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7588, "#c71585");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B75A0, "midnightblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B75B8, "#191970");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B75D0, "mintcream");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B75E8, "#f5fffa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7600, "mistyrose");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7618, "#ffe4e1");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7630, "moccasin");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7648, "#ffe4b5");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7660, "navajowhite");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7678, "#ffdead");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7690, "navy");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B76A8, "#000080");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B76C0, "oldlace");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B76D8, "#fdf5e6");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B76F0, "olive");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7708, "#808000");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7720, "olivedrab");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7738, "#6b8e23");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7750, "orange");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7768, "#ffa500");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7780, "orangered");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7798, "#ff4500");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B77B0, "orchid");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B77C8, "#da70d6");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B77E0, "palegoldenrod");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B77F8, "#eee8aa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7810, "palegreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7828, "#98fb98");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7840, "paleturquoise");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7858, "#afeeee");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7870, "palevioletred");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7888, "#d87093");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B78A0, "papayawhip");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B78B8, "#ffefd5");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B78D0, "peachpuff");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B78E8, "#ffdab9");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7900, "peru");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7918, "#cd853f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7930, "pink");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7948, "#ffc0cb");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7960, "plum");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7978, "#dda0dd");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7990, "powderblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B79A8, "#b0e0e6");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B79C0, "purple");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B79D8, "#800080");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B79F0, "red");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7A08, "#ff0000");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7A20, "rosybrown");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7A38, "#bc8f8f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7A50, "royalblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7A68, "#4169e1");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7A80, "saddlebrown");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7A98, "#8b4513");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7AB0, "salmon");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7AC8, "#fa8072");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7AE0, "sandybrown");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7AF8, "#f4a460");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7B10, "seagreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7B28, "#2e8b57");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7B40, "seashell");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7B58, "#fff5ee");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7B70, "sienna");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7B88, "#a0522d");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7BA0, "silver");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7BB8, "#c0c0c0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7BD0, "skyblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7BE8, "#87ceeb");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7C00, "slateblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7C18, "#6a5acd");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7C30, "slategray");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7C48, "#708090");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7C60, "slategrey");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7C78, "#708090");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7C90, "snow");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7CA8, "#fffafa");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7CC0, "springgreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7CD8, "#00ff7f");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7CF0, "steelblue");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7D08, "#4682b4");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7D20, "tan");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7D38, "#d2b48c");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7D50, "teal");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7D68, "#008080");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7D80, "thistle");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7D98, "#d8bfd8");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7DB0, "tomato");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7DC8, "#ff6347");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7DE0, "turquoise");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7DF8, "#40e0d0");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7E10, "violet");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7E28, "#ee82ee");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7E40, "wheat");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7E58, "#f5deb3");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7E70, "white");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7E88, "#ffffff");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7EA0, "whitesmoke");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7EB8, "#f5f5f5");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7ED0, "yellow");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7EE8, "#ffff00");
    std::string::basic_string[abi:nn200100]<0>(qword_2804B7F00, "yellowgreen");
    std::string::basic_string[abi:nn200100]<0>(byte_2804B7F18, "#9acd32");
    __cxa_guard_release(&_ZGVZZ56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8_EUb_E11_HTMLColors);
  }

  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v1 = result;
    result[2] = 0;
    result[1] = 0;
    *result = result + 1;
    v2 = &_ZZZ56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8_EUb_E11_HTMLColors;
    v3 = 147;
    do
    {
      v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v1, &v2->__r_.__value_.__l.__data_);
      result = std::string::operator=((v4 + 56), v2 + 1);
      v2 += 2;
      --v3;
    }

    while (v3);
    EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap = v1;
  }

  return result;
}

void sub_26C71B65C(_Unwind_Exception *a1)
{
  if (*(v2 + 23) < 0)
  {
    ___Z56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8__block_invoke_cold_147();
    v2 = qword_2804B7F00;
  }

  do
  {
    v2 -= 6;
    HTMLColor::~HTMLColor(v2);
  }

  while (v2 != v1);
  __cxa_guard_abort(&_ZGVZZ56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8_EUb_E11_HTMLColors);
  _Unwind_Resume(a1);
}

uint64_t EQKitMathMLParserConvertHexColorStringToRGBFloatValues(std::string *__str, double *a2, double *a3, double *a4)
{
  {
    std::string::basic_string[abi:nn200100]<0>(&EQKitMathMLParserIsValidHexColorString(std::string const&)::allowedChars, "#0123456789abcdefABCDEF");
  }

  v8 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v8 >= 0)
  {
    v10 = __str;
  }

  else
  {
    v10 = __str->__r_.__value_.__r.__words[0];
  }

  v11 = v10->__r_.__value_.__s.__data_[0];
  v12 = size - (v11 == 35);
  if (v12 != 3 && v12 != 6)
  {
    return 0;
  }

  v24 = a3;
  v14 = a4;
  v15 = byte_2804B7F4F >= 0 ? &EQKitMathMLParserIsValidHexColorString(std::string const&)::allowedChars : EQKitMathMLParserIsValidHexColorString(std::string const&)::allowedChars;
  v16 = byte_2804B7F4F >= 0 ? byte_2804B7F4F : unk_2804B7F40;
  if (size)
  {
    if (v16)
    {
      v17 = size;
      v18 = v10;
      while (memchr(v15, v18->__r_.__value_.__s.__data_[0], v16))
      {
        v18 = (v18 + 1);
        if (!--v17)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v18 = v10;
    }

    if (v18 - v10 != -1)
    {
      return 0;
    }
  }

LABEL_28:
  v20 = 3;
  if (v11 == 35)
  {
    v20 = 4;
  }

  v21 = size > v20;
  if (v21)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v21)
  {
    v23 = 255.0;
  }

  else
  {
    v23 = 15.0;
  }

  std::string::basic_string(&v27, __str, (-3 << v21) + size, v22, &v26);
  std::string::basic_string(&v26, __str, size - 2 * v22, v22, &v25);
  std::string::basic_string(&v25, __str, size - v22, v22, &v28);
  *a2 = EQKitMathMLParserHexToDec(&v27) / v23;
  *v24 = EQKitMathMLParserHexToDec(&v26) / v23;
  *v14 = EQKitMathMLParserHexToDec(&v25) / v23;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t EQKitMathMLParserHexToDec(const std::string *a1)
{
  std::istringstream::basic_istringstream[abi:nn200100](v4, a1, 8);
  v3 = 0;
  *(&v4[1] + *(v4[0] - 24)) = *(&v4[1] + *(v4[0] - 24)) & 0xFFFFFFB5 | 8;
  MEMORY[0x26D6A9920](v4, &v3);
  v1 = v3;
  v4[0] = *MEMORY[0x277D82820];
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::istream::~istream();
  MEMORY[0x26D6A99E0](&v8);
  return v1;
}

void sub_26C71CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 10);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKit::ScriptLevel,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKit::ScriptLevel>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char **EQKit::AttributeCollection::setValueForKey<std::vector<EQKitLength>>(uint64_t a1, uint64_t a2, char **a3, unint64_t *a4)
{
  result = (std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,true>,EQKitLength<std::vector<EQKitLength>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a2, a4) + 48);
  if (result != a3)
  {
    return std::vector<EQKitLength>::__assign_with_size[abi:nn200100]<EQKitLength*,EQKitLength*>(result, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,true>,EQKitLength<std::vector<EQKitLength>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::vector<EQKitLength>::__assign_with_size[abi:nn200100]<EQKitLength*,EQKitLength*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<EQKitLength>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<EQKitLength>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLength>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char **EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(uint64_t a1, uint64_t a2, char **a3, unint64_t *a4)
{
  result = (std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a2, a4) + 48);
  if (result != a3)
  {
    return std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(result, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void EQKit::AttributeCollection::setValueForKey<std::vector<std::string>>(uint64_t a1, uint64_t a2, std::string **a3, unint64_t *a4)
{
  v5 = (std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,true>,EQKitLength<std::vector<EQKitLength>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a2, a4) + 48);
  if (v5 != a3)
  {
    std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::deque<EQKitMathMLParserState>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

void HTMLColor::~HTMLColor(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::deque<EQKitMathMLParserState>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<EQKitMathMLParserState>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<EQKitMathMLParserState>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_26C71D718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitMathMLParserState>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

double EQKit::AttributeCollection::AttributeCollection(EQKit::AttributeCollection *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *this = &unk_287D338A8;
  *(this + 1) = this + 16;
  *(this + 40) = 0u;
  *(this + 4) = this + 40;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 7) = this + 64;
  *(this + 10) = this + 88;
  *(this + 7) = 0u;
  *(this + 13) = this + 112;
  *(this + 136) = 0u;
  *(this + 10) = 0u;
  *(this + 16) = this + 136;
  *(this + 19) = this + 160;
  *(this + 184) = 0u;
  *(this + 22) = this + 184;
  *(this + 13) = 0u;
  *(this + 232) = 0u;
  *(this + 25) = this + 208;
  *(this + 28) = this + 232;
  *(this + 16) = 0u;
  *(this + 31) = this + 256;
  *(this + 280) = 0u;
  *(this + 34) = this + 280;
  *(this + 19) = 0u;
  *(this + 37) = this + 304;
  *(this + 328) = 0u;
  *(this + 40) = this + 328;
  *(this + 22) = 0u;
  *(this + 43) = this + 352;
  *(this + 376) = 0u;
  *(this + 46) = this + 376;
  *(this + 25) = 0u;
  *(this + 49) = this + 400;
  *(this + 424) = 0u;
  *(this + 52) = this + 424;
  *(this + 28) = 0u;
  *(this + 55) = this + 448;
  *(this + 472) = 0u;
  *(this + 58) = this + 472;
  *(this + 31) = 0u;
  *(this + 61) = this + 496;
  *(this + 520) = 0u;
  *(this + 64) = this + 520;
  *(this + 34) = 0u;
  *(this + 67) = this + 544;
  return result;
}

void EQKit::AttributeCollection::~AttributeCollection(EQKit::AttributeCollection *this)
{
  EQKit::AttributeCollection::~AttributeCollection(this);

  JUMPOUT(0x26D6A9A30);
}

{
  *this = &unk_287D338A8;
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(this + 536, *(this + 68));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 512, *(this + 65));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 488, *(this + 62));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 464, *(this + 59));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 440, *(this + 56));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 416, *(this + 53));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 392, *(this + 50));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 368, *(this + 47));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 344, *(this + 44));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 320, *(this + 41));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 296, *(this + 38));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 272, *(this + 35));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 176, *(this + 23));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 128, *(this + 17));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 8, *(this + 2));
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      CFRelease(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void *std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<EQKitTypes::Attributes::Enum>::__emplace_hint_unique_key_args<EQKitTypes::Attributes::Enum,EQKitTypes::Attributes::Enum const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<EQKitTypes::Attributes::Enum>::__emplace_hint_unique_key_args<EQKitTypes::Attributes::Enum,EQKitTypes::Attributes::Enum const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<EQKitTypes::Attributes::Enum>::__find_equal<EQKitTypes::Attributes::Enum>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<EQKitTypes::Attributes::Enum>::__find_equal<EQKitTypes::Attributes::Enum>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_26C71F764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C720088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitMathMLElement::fromString(const void **a1)
{
  if (EQKitMathMLElement::map(void)::onceToken != -1)
  {
    EQKitMathMLElement::fromString();
  }

  v2 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitMathMLElement::map(void)::map, a1);
  if (EQKitMathMLElement::map(void)::onceToken != -1)
  {
    EQKitMathMLElement::fromString();
  }

  if (EQKitMathMLElement::map(void)::map + 8 == v2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 56);
  }
}

uint64_t EQKitTypes::Display::displayFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Display::map(void)::onceToken != -1)
  {
    EQKitTypes::Display::displayFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Display::map(void)::map, a1);
  if (EQKitTypes::Display::map(void)::onceToken != -1)
  {
    EQKitTypes::Display::displayFromMathMLString();
  }

  if (EQKitTypes::Display::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKit::Script::variantFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKit::Script::map(void)::onceToken != -1)
  {
    EQKit::Script::variantFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKit::Script::map(void)::map, a1);
  if (EQKit::Script::map(void)::onceToken != -1)
  {
    EQKit::Script::variantFromMathMLString();
  }

  if (EQKit::Script::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKit::Config::Operator::formFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKit::Config::Operator::map(void)::onceToken != -1)
  {
    EQKit::Config::Operator::formFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKit::Config::Operator::map(void)::map, a1);
  if (EQKit::Config::Operator::map(void)::onceToken != -1)
  {
    EQKit::Config::Operator::formFromMathMLString();
  }

  if (EQKit::Config::Operator::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKitTypes::Align::alignFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Align::map(void)::onceToken != -1)
  {
    EQKitTypes::Align::alignFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Align::map(void)::map, a1);
  if (EQKitTypes::Align::map(void)::onceToken != -1)
  {
    EQKitTypes::Align::alignFromMathMLString();
  }

  if (EQKitTypes::Align::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKitTypes::VAlign::vAlignFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::VAlign::map(void)::onceToken != -1)
  {
    EQKitTypes::VAlign::vAlignFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::VAlign::map(void)::map, a1);
  if (EQKitTypes::VAlign::map(void)::onceToken != -1)
  {
    EQKitTypes::VAlign::vAlignFromMathMLString();
  }

  if (EQKitTypes::VAlign::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKitTypes::Boolean::BOOLeanFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Boolean::map(void)::onceToken != -1)
  {
    EQKitTypes::Boolean::BOOLeanFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Boolean::map(void)::map, a1);
  if (EQKitTypes::Boolean::map(void)::onceToken != -1)
  {
    EQKitTypes::Boolean::BOOLeanFromMathMLString();
  }

  if (EQKitTypes::Boolean::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKitTypes::Attributes::attributeFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Attributes::map(void)::onceToken != -1)
  {
    EQKitTypes::Attributes::attributeFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Attributes::map(void)::map, a1);
  if (EQKitTypes::Attributes::map(void)::onceToken != -1)
  {
    EQKitTypes::Attributes::attributeFromMathMLString();
  }

  if (EQKitTypes::Attributes::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

void EQKitTypes::Align::alignVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_26CA74A0F[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::Align::alignFromMathMLString(&__p.__r_.__value_.__l.__data_, 0);
    if (v11)
    {
      v13 = a2[1];
      v12 = a2[2];
      if (v13 >= v12)
      {
        v15 = *a2;
        v16 = v13 - *a2;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(a2, v21);
        }

        *(4 * v17) = v11;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 4);
      }

      a2[1] = v14;
    }

    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_41:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_41;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_26C720DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void EQKitTypes::VAlign::vAlignVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_26CA74A0F[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::VAlign::vAlignFromMathMLString(&__p.__r_.__value_.__l.__data_, 0);
    if (v11)
    {
      v13 = a2[1];
      v12 = a2[2];
      if (v13 >= v12)
      {
        v15 = *a2;
        v16 = v13 - *a2;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(a2, v21);
        }

        *(4 * v17) = v11;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 4);
      }

      a2[1] = v14;
    }

    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_41:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_41;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_26C72103C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void EQKitTypes::Strings::separatorsFromString(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [v4 initWithUTF8String:v5];
  if (v6)
  {
    [v6 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
    v35 = v6;
    if (v7)
    {
      v8 = [v6 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet", v6)}];
    }

    else
    {
      v8 = 0;
      v28 = [v6 length];
      if (v28)
      {
        v29 = 0;
        do
        {
          v30 = [v6 rangeOfComposedCharacterSequenceAtIndex:{v29, v35}];
          v32 = v31;
          if (v31)
          {
            v33 = [v6 substringWithRange:{v30, v31}];
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v8 addObject:v33];
          }

          else
          {
            v34 = [MEMORY[0x277CCA890] currentHandler];
            [v34 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"StringVector EQKitTypes::Strings::separatorsFromString(const std::string &)") description:{@"EQKitMathMLUtil.mm", 656, @"Bad length in separatorArrayFromString"}];
            v32 = 1;
          }

          v29 += v32;
          v6 = v35;
        }

        while (v29 < v28);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:{16, v35}];
    if (v9)
    {
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v39 + 1) + 8 * i) UTF8String];
          if (v12)
          {
            std::string::basic_string[abi:nn200100]<0>(__p, v12);
            v14 = *(a2 + 8);
            v13 = *(a2 + 16);
            if (v14 >= v13)
            {
              v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 3);
              v17 = v16 + 1;
              if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3);
              if (2 * v18 > v17)
              {
                v17 = 2 * v18;
              }

              if (v18 >= 0x555555555555555)
              {
                v19 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v19 = v17;
              }

              v43.__end_cap_.__value_ = a2;
              if (v19)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2, v19);
              }

              v20 = 24 * v16;
              v21 = *__p;
              *(v20 + 16) = v38;
              *v20 = v21;
              __p[1] = 0;
              v38 = 0;
              __p[0] = 0;
              v22 = 24 * v16 + 24;
              v23 = *(a2 + 8) - *a2;
              v24 = 24 * v16 - v23;
              memcpy((v20 - v23), *a2, v23);
              v25 = *a2;
              *a2 = v24;
              *(a2 + 8) = v22;
              v26 = *(a2 + 16);
              *(a2 + 16) = 0;
              v43.__end_ = v25;
              v43.__end_cap_.__value_ = v26;
              v43.__first_ = v25;
              v43.__begin_ = v25;
              std::__split_buffer<std::string>::~__split_buffer(&v43);
              v27 = SHIBYTE(v38);
              *(a2 + 8) = v22;
              if (v27 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v15 = *__p;
              *(v14 + 16) = v38;
              *v14 = v15;
              *(a2 + 8) = v14 + 24;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v9);
    }
  }
}

uint64_t EQKitTypes::Integer::integerFromMathMLString(const std::string *a1, BOOL *a2)
{
  v10 = 0;
  std::istringstream::basic_istringstream[abi:nn200100](v5, a1, 8);
  MEMORY[0x26D6A9910](v5, &v10);
  *a2 = (*(&v7[1].__locale_ + *(v5[0] - 24)) & 7) == 2;
  v3 = v10;
  v5[0] = *MEMORY[0x277D82820];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::istream::~istream();
  MEMORY[0x26D6A99E0](&v9);
  return v3;
}

void sub_26C72159C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitTypes::UInteger::uIntegerFromMathMLString(const std::string *a1, BOOL *a2)
{
  v10 = 0;
  std::istringstream::basic_istringstream[abi:nn200100](v5, a1, 8);
  MEMORY[0x26D6A9920](v5, &v10);
  *a2 = (*(&v7[1].__locale_ + *(v5[0] - 24)) & 7) == 2;
  v3 = v10;
  v5[0] = *MEMORY[0x277D82820];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::istream::~istream();
  MEMORY[0x26D6A99E0](&v9);
  return v3;
}

void sub_26C721730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitTypes::Crossout::crossoutFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Crossout::map(void)::onceToken != -1)
  {
    EQKitTypes::Crossout::crossoutFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Crossout::map(void)::map, a1);
  if (EQKitTypes::Crossout::map(void)::onceToken != -1)
  {
    EQKitTypes::Crossout::crossoutFromMathMLString();
  }

  if (EQKitTypes::Crossout::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

void EQKitTypes::Crossout::crossoutVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_26CA74A0F[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::Crossout::crossoutFromMathMLString(&__p.__r_.__value_.__l.__data_, 0);
    v13 = a2[1];
    v12 = a2[2];
    if (v13 >= v12)
    {
      v15 = *a2;
      v16 = v13 - *a2;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(a2, v21);
      }

      *(4 * v17) = v11;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v14;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 4);
    }

    a2[1] = v14;
    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_39:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_39;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_26C7219DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitTypes::Notation::notationFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Notation::map(void)::onceToken != -1)
  {
    EQKitTypes::Notation::notationFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Notation::map(void)::map, a1);
  if (EQKitTypes::Notation::map(void)::onceToken != -1)
  {
    EQKitTypes::Notation::notationFromMathMLString();
  }

  if (EQKitTypes::Notation::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

void EQKitTypes::Notation::notationVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_26CA74A0F[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::Notation::notationFromMathMLString(&__p.__r_.__value_.__l.__data_, 0);
    v13 = a2[1];
    v12 = a2[2];
    if (v13 >= v12)
    {
      v15 = *a2;
      v16 = v13 - *a2;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(a2, v21);
      }

      *(4 * v17) = v11;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v14;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 4);
    }

    a2[1] = v14;
    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_39:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_39;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_26C721CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitTypes::GroupAlign::groupAlignFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::GroupAlign::map(void)::onceToken != -1)
  {
    EQKitTypes::GroupAlign::groupAlignFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::GroupAlign::map(void)::map, a1);
  if (EQKitTypes::GroupAlign::map(void)::onceToken != -1)
  {
    EQKitTypes::GroupAlign::groupAlignFromMathMLString();
  }

  if (EQKitTypes::GroupAlign::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

uint64_t EQKitTypes::Edge::edgeFromMathMLString(const void **a1, uint64_t a2)
{
  if (EQKitTypes::Edge::map(void)::onceToken != -1)
  {
    EQKitTypes::Edge::edgeFromMathMLString();
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(EQKitTypes::Edge::map(void)::map, a1);
  if (EQKitTypes::Edge::map(void)::onceToken != -1)
  {
    EQKitTypes::Edge::edgeFromMathMLString();
  }

  if (EQKitTypes::Edge::map(void)::map + 8 != v4)
  {
    return *(v4 + 56);
  }

  return a2;
}

void ___ZN18EQKitMathMLElementL3mapEv_block_invoke()
{
  MEMORY[0x28223BE20]();
  v350 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "mi");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "mn");
  v3 = 2;
  std::string::basic_string[abi:nn200100]<0>(v4, "mo");
  v5 = 3;
  std::string::basic_string[abi:nn200100]<0>(v6, "mrow");
  v7 = 4;
  std::string::basic_string[abi:nn200100]<0>(v8, "semantics");
  v9 = 5;
  std::string::basic_string[abi:nn200100]<0>(v10, "annotation");
  v11 = 6;
  std::string::basic_string[abi:nn200100]<0>(v12, "mfrac");
  v13 = 7;
  std::string::basic_string[abi:nn200100]<0>(v14, "mphantom");
  v15 = 8;
  std::string::basic_string[abi:nn200100]<0>(v16, "msub");
  v17 = 9;
  std::string::basic_string[abi:nn200100]<0>(v18, "msup");
  v19 = 10;
  std::string::basic_string[abi:nn200100]<0>(v20, "msubsup");
  v21 = 11;
  std::string::basic_string[abi:nn200100]<0>(v22, "mfenced");
  v23 = 12;
  std::string::basic_string[abi:nn200100]<0>(v24, "mstyle");
  v25 = 13;
  std::string::basic_string[abi:nn200100]<0>(v26, "munder");
  v27 = 14;
  std::string::basic_string[abi:nn200100]<0>(v28, "mover");
  v29 = 15;
  std::string::basic_string[abi:nn200100]<0>(v30, "munderover");
  v31 = 16;
  std::string::basic_string[abi:nn200100]<0>(v32, "mstack");
  v33 = 17;
  std::string::basic_string[abi:nn200100]<0>(v34, "msgroup");
  v35 = 18;
  std::string::basic_string[abi:nn200100]<0>(v36, "msrow");
  v37 = 19;
  std::string::basic_string[abi:nn200100]<0>(v38, "msline");
  v39 = 20;
  std::string::basic_string[abi:nn200100]<0>(v40, "mscarries");
  v41 = 21;
  std::string::basic_string[abi:nn200100]<0>(v42, "mscarry");
  v43 = 22;
  std::string::basic_string[abi:nn200100]<0>(v44, "mlongdiv");
  v45 = 23;
  std::string::basic_string[abi:nn200100]<0>(v46, "mtable");
  v47 = 24;
  std::string::basic_string[abi:nn200100]<0>(v48, "mtr");
  v49 = 25;
  std::string::basic_string[abi:nn200100]<0>(v50, "mlabeledtr");
  v51 = 26;
  std::string::basic_string[abi:nn200100]<0>(v52, "mtd");
  v53 = 27;
  std::string::basic_string[abi:nn200100]<0>(v54, "none");
  v55 = 30;
  std::string::basic_string[abi:nn200100]<0>(v56, "mroot");
  v57 = 28;
  std::string::basic_string[abi:nn200100]<0>(v58, "msqrt");
  v59 = 29;
  std::string::basic_string[abi:nn200100]<0>(v60, "mglyph");
  v61 = 31;
  std::string::basic_string[abi:nn200100]<0>(v62, "ms");
  v63 = 32;
  std::string::basic_string[abi:nn200100]<0>(v64, "mtext");
  v65 = 33;
  std::string::basic_string[abi:nn200100]<0>(v66, "maction");
  v67 = 34;
  std::string::basic_string[abi:nn200100]<0>(v68, "mspace");
  v69 = 35;
  std::string::basic_string[abi:nn200100]<0>(v70, "menclose");
  v71 = 36;
  std::string::basic_string[abi:nn200100]<0>(v72, "mpadded");
  v73 = 37;
  std::string::basic_string[abi:nn200100]<0>(v74, "maligngroup");
  v75 = 38;
  std::string::basic_string[abi:nn200100]<0>(v76, "malignmark");
  v77 = 39;
  std::string::basic_string[abi:nn200100]<0>(v78, "cn");
  v79 = 40;
  std::string::basic_string[abi:nn200100]<0>(v80, "ci");
  v81 = 41;
  std::string::basic_string[abi:nn200100]<0>(v82, "csymbol");
  v83 = 42;
  std::string::basic_string[abi:nn200100]<0>(v84, "apply");
  v85 = 43;
  std::string::basic_string[abi:nn200100]<0>(v86, "bind");
  v87 = 44;
  std::string::basic_string[abi:nn200100]<0>(v88, "share");
  v89 = 45;
  std::string::basic_string[abi:nn200100]<0>(v90, "cerror");
  v91 = 46;
  std::string::basic_string[abi:nn200100]<0>(v92, "cbytes");
  v93 = 47;
  std::string::basic_string[abi:nn200100]<0>(v94, "cs");
  v95 = 48;
  std::string::basic_string[abi:nn200100]<0>(v96, "vector");
  v97 = 49;
  std::string::basic_string[abi:nn200100]<0>(v98, "matrix");
  v99 = 50;
  std::string::basic_string[abi:nn200100]<0>(v100, "matrixrow");
  v101 = 51;
  std::string::basic_string[abi:nn200100]<0>(v102, "reln");
  v103 = 52;
  std::string::basic_string[abi:nn200100]<0>(v104, "fn");
  v105 = 53;
  std::string::basic_string[abi:nn200100]<0>(v106, "declare");
  v107 = 54;
  std::string::basic_string[abi:nn200100]<0>(v108, "interval");
  v109 = 55;
  std::string::basic_string[abi:nn200100]<0>(v110, "inverse");
  v111 = 56;
  std::string::basic_string[abi:nn200100]<0>(v112, "ident");
  v113 = 57;
  std::string::basic_string[abi:nn200100]<0>(v114, "domain");
  v115 = 58;
  std::string::basic_string[abi:nn200100]<0>(v116, "codomain");
  v117 = 59;
  std::string::basic_string[abi:nn200100]<0>(v118, "image");
  v119 = 60;
  std::string::basic_string[abi:nn200100]<0>(v120, "ln");
  v121 = 61;
  std::string::basic_string[abi:nn200100]<0>(v122, "log");
  v123 = 62;
  std::string::basic_string[abi:nn200100]<0>(v124, "moment");
  v125 = 63;
  std::string::basic_string[abi:nn200100]<0>(v126, "lambda");
  v127 = 64;
  std::string::basic_string[abi:nn200100]<0>(v128, "compose");
  v129 = 65;
  std::string::basic_string[abi:nn200100]<0>(v130, "quotient");
  v131 = 66;
  std::string::basic_string[abi:nn200100]<0>(v132, "divide");
  v133 = 67;
  std::string::basic_string[abi:nn200100]<0>(v134, "minus");
  v135 = 68;
  std::string::basic_string[abi:nn200100]<0>(v136, "power");
  v137 = 69;
  std::string::basic_string[abi:nn200100]<0>(v138, "rem");
  v139 = 70;
  std::string::basic_string[abi:nn200100]<0>(v140, "root");
  v141 = 71;
  std::string::basic_string[abi:nn200100]<0>(v142, "factorial");
  v143 = 72;
  std::string::basic_string[abi:nn200100]<0>(v144, "abs");
  v145 = 73;
  std::string::basic_string[abi:nn200100]<0>(v146, "conjugate");
  v147 = 74;
  std::string::basic_string[abi:nn200100]<0>(v148, "arg");
  v149 = 75;
  std::string::basic_string[abi:nn200100]<0>(v150, "real");
  v151 = 76;
  std::string::basic_string[abi:nn200100]<0>(v152, "imaginary");
  v153 = 77;
  std::string::basic_string[abi:nn200100]<0>(v154, "floor");
  v155 = 78;
  std::string::basic_string[abi:nn200100]<0>(v156, "ceiling");
  v157 = 79;
  std::string::basic_string[abi:nn200100]<0>(v158, "exp");
  v159 = 80;
  std::string::basic_string[abi:nn200100]<0>(v160, "max");
  v161 = 81;
  std::string::basic_string[abi:nn200100]<0>(v162, "min");
  v163 = 82;
  std::string::basic_string[abi:nn200100]<0>(v164, "plus");
  v165 = 83;
  std::string::basic_string[abi:nn200100]<0>(v166, "times");
  v167 = 84;
  std::string::basic_string[abi:nn200100]<0>(v168, "gcd");
  v169 = 85;
  std::string::basic_string[abi:nn200100]<0>(v170, "lcm");
  v171 = 86;
  std::string::basic_string[abi:nn200100]<0>(v172, "and");
  v173 = 87;
  std::string::basic_string[abi:nn200100]<0>(v174, "or");
  v175 = 88;
  std::string::basic_string[abi:nn200100]<0>(v176, "xor");
  v177 = 89;
  std::string::basic_string[abi:nn200100]<0>(v178, "not");
  v179 = 90;
  std::string::basic_string[abi:nn200100]<0>(v180, "implies");
  v181 = 91;
  std::string::basic_string[abi:nn200100]<0>(v182, "equivalent");
  v183 = 92;
  std::string::basic_string[abi:nn200100]<0>(v184, "forall");
  v185 = 93;
  std::string::basic_string[abi:nn200100]<0>(v186, "exists");
  v187 = 94;
  std::string::basic_string[abi:nn200100]<0>(v188, "eq");
  v189 = 95;
  std::string::basic_string[abi:nn200100]<0>(v190, "gt");
  v191 = 96;
  std::string::basic_string[abi:nn200100]<0>(v192, "lt");
  v193 = 97;
  std::string::basic_string[abi:nn200100]<0>(v194, "geq");
  v195 = 98;
  std::string::basic_string[abi:nn200100]<0>(v196, "leq");
  v197 = 99;
  std::string::basic_string[abi:nn200100]<0>(v198, "neq");
  v199 = 100;
  std::string::basic_string[abi:nn200100]<0>(v200, "approx");
  v201 = 101;
  std::string::basic_string[abi:nn200100]<0>(v202, "factorof");
  v203 = 102;
  std::string::basic_string[abi:nn200100]<0>(v204, "tendsto");
  v205 = 103;
  std::string::basic_string[abi:nn200100]<0>(v206, "int");
  v207 = 104;
  std::string::basic_string[abi:nn200100]<0>(v208, "partialdiff");
  v209 = 105;
  std::string::basic_string[abi:nn200100]<0>(v210, "divergence");
  v211 = 106;
  std::string::basic_string[abi:nn200100]<0>(v212, "grad");
  v213 = 107;
  std::string::basic_string[abi:nn200100]<0>(v214, "curl");
  v215 = 108;
  std::string::basic_string[abi:nn200100]<0>(v216, "laplacian");
  v217 = 109;
  std::string::basic_string[abi:nn200100]<0>(v218, "set");
  v219 = 110;
  std::string::basic_string[abi:nn200100]<0>(v220, "list");
  v221 = 111;
  std::string::basic_string[abi:nn200100]<0>(v222, "union");
  v223 = 112;
  std::string::basic_string[abi:nn200100]<0>(v224, "intersect");
  v225 = 113;
  std::string::basic_string[abi:nn200100]<0>(v226, "cartesianproduct");
  v227 = 114;
  std::string::basic_string[abi:nn200100]<0>(v228, "in");
  v229 = 115;
  std::string::basic_string[abi:nn200100]<0>(v230, "notin");
  v231 = 116;
  std::string::basic_string[abi:nn200100]<0>(v232, "notsubset");
  v233 = 117;
  std::string::basic_string[abi:nn200100]<0>(v234, "notprsubset");
  v235 = 118;
  std::string::basic_string[abi:nn200100]<0>(v236, "setdiff");
  v237 = 119;
  std::string::basic_string[abi:nn200100]<0>(v238, "subset");
  v239 = 120;
  std::string::basic_string[abi:nn200100]<0>(v240, "prsubset");
  v241 = 121;
  std::string::basic_string[abi:nn200100]<0>(v242, "card");
  v243 = 122;
  std::string::basic_string[abi:nn200100]<0>(v244, "sum");
  v245 = 123;
  std::string::basic_string[abi:nn200100]<0>(v246, "product");
  v247 = 124;
  std::string::basic_string[abi:nn200100]<0>(v248, "limit");
  v249 = 125;
  std::string::basic_string[abi:nn200100]<0>(v250, "sin");
  v251 = 126;
  std::string::basic_string[abi:nn200100]<0>(v252, "cos");
  v253 = 127;
  std::string::basic_string[abi:nn200100]<0>(v254, "tan");
  v255 = 128;
  std::string::basic_string[abi:nn200100]<0>(v256, "sec");
  v257 = 129;
  std::string::basic_string[abi:nn200100]<0>(v258, "csc");
  v259 = 130;
  std::string::basic_string[abi:nn200100]<0>(v260, "cot");
  v261 = 131;
  std::string::basic_string[abi:nn200100]<0>(v262, "sinh");
  v263 = 132;
  std::string::basic_string[abi:nn200100]<0>(v264, "cosh");
  v265 = 133;
  std::string::basic_string[abi:nn200100]<0>(v266, "tanh");
  v267 = 134;
  std::string::basic_string[abi:nn200100]<0>(v268, "sech");
  v269 = 135;
  std::string::basic_string[abi:nn200100]<0>(v270, "csch");
  v271 = 136;
  std::string::basic_string[abi:nn200100]<0>(v272, "coth");
  v273 = 137;
  std::string::basic_string[abi:nn200100]<0>(v274, "arcsin");
  v275 = 138;
  std::string::basic_string[abi:nn200100]<0>(v276, "arccos");
  v277 = 139;
  std::string::basic_string[abi:nn200100]<0>(v278, "arctan");
  v279 = 140;
  std::string::basic_string[abi:nn200100]<0>(v280, "arccosh");
  v281 = 141;
  std::string::basic_string[abi:nn200100]<0>(v282, "arccot");
  v283 = 142;
  std::string::basic_string[abi:nn200100]<0>(v284, "arccoth");
  v285 = 143;
  std::string::basic_string[abi:nn200100]<0>(v286, "arccsc");
  v287 = 144;
  std::string::basic_string[abi:nn200100]<0>(v288, "arccsch");
  v289 = 145;
  std::string::basic_string[abi:nn200100]<0>(v290, "arcsec");
  v291 = 146;
  std::string::basic_string[abi:nn200100]<0>(v292, "arcsech");
  v293 = 147;
  std::string::basic_string[abi:nn200100]<0>(v294, "arcsinh");
  v295 = 148;
  std::string::basic_string[abi:nn200100]<0>(v296, "arctanh");
  v297 = 149;
  std::string::basic_string[abi:nn200100]<0>(v298, "mean");
  v299 = 150;
  std::string::basic_string[abi:nn200100]<0>(v300, "sdev");
  v301 = 151;
  std::string::basic_string[abi:nn200100]<0>(v302, "variance");
  v303 = 152;
  std::string::basic_string[abi:nn200100]<0>(v304, "median");
  v305 = 153;
  std::string::basic_string[abi:nn200100]<0>(v306, "mode");
  v307 = 154;
  std::string::basic_string[abi:nn200100]<0>(v308, "determinant");
  v309 = 155;
  std::string::basic_string[abi:nn200100]<0>(v310, "transpose");
  v311 = 156;
  std::string::basic_string[abi:nn200100]<0>(v312, "selector");
  v313 = 157;
  std::string::basic_string[abi:nn200100]<0>(v314, "vectorproduct");
  v315 = 158;
  std::string::basic_string[abi:nn200100]<0>(v316, "scalarproduct");
  v317 = 159;
  std::string::basic_string[abi:nn200100]<0>(v318, "outerproduct");
  v319 = 160;
  std::string::basic_string[abi:nn200100]<0>(v320, "integers");
  v321 = 161;
  std::string::basic_string[abi:nn200100]<0>(v322, "reals");
  v323 = 162;
  std::string::basic_string[abi:nn200100]<0>(v324, "rationals");
  v325 = 163;
  std::string::basic_string[abi:nn200100]<0>(v326, "naturalnumbers");
  v327 = 164;
  std::string::basic_string[abi:nn200100]<0>(v328, "complexes");
  v329 = 165;
  std::string::basic_string[abi:nn200100]<0>(v330, "primes");
  v331 = 166;
  std::string::basic_string[abi:nn200100]<0>(v332, "emptyset");
  v333 = 167;
  std::string::basic_string[abi:nn200100]<0>(v334, "exponentiale");
  v335 = 168;
  std::string::basic_string[abi:nn200100]<0>(v336, "imaginaryi");
  v337 = 169;
  std::string::basic_string[abi:nn200100]<0>(v338, "notanumber");
  v339 = 170;
  std::string::basic_string[abi:nn200100]<0>(v340, "true");
  v341 = 171;
  std::string::basic_string[abi:nn200100]<0>(v342, "false");
  v343 = 172;
  std::string::basic_string[abi:nn200100]<0>(v344, "pi");
  v345 = 173;
  std::string::basic_string[abi:nn200100]<0>(v346, "eulergamma");
  v347 = 174;
  std::string::basic_string[abi:nn200100]<0>(v348, "infinity");
  v349 = 175;
  operator new();
}

void sub_26C7233FC(_Unwind_Exception *a1)
{
  MEMORY[0x26D6A9A30](v1, 0x1020C4062D53EE8);
  v3 = &STACK[0x15DF];
  v4 = -5600;
  v5 = &STACK[0x15DF];
  while (1)
  {
    v6 = *v5;
    v5 -= 4;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitMathMLElement::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitMathMLElement::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__construct_node<std::pair<std::string const,EQKitMathMLElement::Enum> const&>();
  }

  return result;
}

void sub_26C7238E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void ___ZN10EQKitTypes7DisplayL3mapEv_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "inline");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "block");
  v3 = 2;
  operator new();
}

void sub_26C7239E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  MEMORY[0x26D6A9A30](v23, 0x1020C4062D53EE8);
  v25 = &a22;
  v26 = -64;
  v27 = &a22;
  while (1)
  {
    v28 = *v27;
    v27 -= 32;
    if (v28 < 0)
    {
      operator delete(*(v25 - 23));
    }

    v25 = v27;
    v26 += 32;
    if (!v26)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Display::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Display::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN5EQKit6ScriptL3mapEv_block_invoke()
{
  v36 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "normal");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "bold");
  v3 = 2;
  std::string::basic_string[abi:nn200100]<0>(v4, "italic");
  v5 = 3;
  std::string::basic_string[abi:nn200100]<0>(v6, "bold-italic");
  v7 = 4;
  std::string::basic_string[abi:nn200100]<0>(v8, "double-struck");
  v9 = 5;
  std::string::basic_string[abi:nn200100]<0>(v10, "bold-fraktur");
  v11 = 6;
  std::string::basic_string[abi:nn200100]<0>(v12, "script");
  v13 = 7;
  std::string::basic_string[abi:nn200100]<0>(v14, "bold-script");
  v15 = 8;
  std::string::basic_string[abi:nn200100]<0>(v16, "fraktur");
  v17 = 9;
  std::string::basic_string[abi:nn200100]<0>(v18, "sans-serif");
  v19 = 10;
  std::string::basic_string[abi:nn200100]<0>(v20, "bold-sans-serif");
  v21 = 11;
  std::string::basic_string[abi:nn200100]<0>(v22, "italic-sans-serif");
  v23 = 12;
  std::string::basic_string[abi:nn200100]<0>(v24, "sans-serif-bold-italic");
  v25 = 13;
  std::string::basic_string[abi:nn200100]<0>(v26, "monospace");
  v27 = 14;
  std::string::basic_string[abi:nn200100]<0>(v28, "initial");
  v29 = 15;
  std::string::basic_string[abi:nn200100]<0>(v30, "tailed");
  v31 = 16;
  std::string::basic_string[abi:nn200100]<0>(v32, "looped");
  v33 = 17;
  std::string::basic_string[abi:nn200100]<0>(v34, "stretched");
  v35 = 18;
  operator new();
}

void sub_26C723DB0(_Unwind_Exception *a1)
{
  MEMORY[0x26D6A9A30](v1, 0x1020C4062D53EE8);
  v3 = &STACK[0x23F];
  v4 = -576;
  v5 = &STACK[0x23F];
  while (1)
  {
    v6 = *v5;
    v5 -= 4;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKit::Script::Variant>::map[abi:nn200100]<std::pair<std::string const,EQKit::Script::Variant> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN5EQKit6Config8OperatorL3mapEv_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "infix");
  v1 = 2;
  std::string::basic_string[abi:nn200100]<0>(v2, "prefix");
  v3 = 1;
  std::string::basic_string[abi:nn200100]<0>(v4, "postfix");
  v5 = 3;
  operator new();
}

void sub_26C724008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26D6A9A30](v23, 0x1020C4062D53EE8);
  v25 = &a23;
  v26 = -96;
  v27 = &a23;
  while (1)
  {
    v28 = *v27;
    v27 -= 32;
    if (v28 < 0)
    {
      operator delete(*(v25 - 23));
    }

    v25 = v27;
    v26 += 32;
    if (!v26)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKit::Config::Operator::Form>::map[abi:nn200100]<std::pair<std::string const,EQKit::Config::Operator::Form> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes5AlignL3mapEv_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "left");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "center");
  v3 = 2;
  std::string::basic_string[abi:nn200100]<0>(v4, "right");
  v5 = 3;
  operator new();
}

void sub_26C724224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26D6A9A30](v23, 0x1020C4062D53EE8);
  v25 = &a23;
  v26 = -96;
  v27 = &a23;
  while (1)
  {
    v28 = *v27;
    v27 -= 32;
    if (v28 < 0)
    {
      operator delete(*(v25 - 23));
    }

    v25 = v27;
    v26 += 32;
    if (!v26)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Align::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Align::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes6VAlignL3mapEv_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "top");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "bottom");
  v3 = 5;
  std::string::basic_string[abi:nn200100]<0>(v4, "center");
  v5 = 3;
  std::string::basic_string[abi:nn200100]<0>(v6, "baseline");
  v7 = 4;
  std::string::basic_string[abi:nn200100]<0>(v8, "axis");
  v9 = 2;
  operator new();
}

void sub_26C724480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MEMORY[0x26D6A9A30](v31, 0x1020C4062D53EE8);
  v33 = &a31;
  v34 = -160;
  v35 = &a31;
  while (1)
  {
    v36 = *v35;
    v35 -= 32;
    if (v36 < 0)
    {
      operator delete(*(v33 - 23));
    }

    v33 = v35;
    v34 += 32;
    if (!v34)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::VAlign::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::VAlign::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes7BooleanL3mapEv_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "true");
  v1 = 2;
  std::string::basic_string[abi:nn200100]<0>(v2, "false");
  v3 = 1;
  operator new();
}

void sub_26C724680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  MEMORY[0x26D6A9A30](v23, 0x1020C4062D53EE8);
  v25 = &a22;
  v26 = -64;
  v27 = &a22;
  while (1)
  {
    v28 = *v27;
    v27 -= 32;
    if (v28 < 0)
    {
      operator delete(*(v25 - 23));
    }

    v25 = v27;
    v26 += 32;
    if (!v26)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Boolean::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Boolean::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes10AttributesL3mapEv_block_invoke()
{
  v84 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "align");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "rowalign");
  v3 = 3;
  std::string::basic_string[abi:nn200100]<0>(v4, "columnalign");
  v5 = 4;
  std::string::basic_string[abi:nn200100]<0>(v6, "accent");
  v7 = 5;
  std::string::basic_string[abi:nn200100]<0>(v8, "underaccent");
  v9 = 6;
  std::string::basic_string[abi:nn200100]<0>(v10, "display");
  v11 = 7;
  std::string::basic_string[abi:nn200100]<0>(v12, "displaystyle");
  v13 = 8;
  std::string::basic_string[abi:nn200100]<0>(v14, "scriptlevel");
  v15 = 9;
  std::string::basic_string[abi:nn200100]<0>(v16, "lspace");
  v17 = 10;
  std::string::basic_string[abi:nn200100]<0>(v18, "rspace");
  v19 = 11;
  std::string::basic_string[abi:nn200100]<0>(v20, "lquote");
  v21 = 12;
  std::string::basic_string[abi:nn200100]<0>(v22, "rquote");
  v23 = 13;
  std::string::basic_string[abi:nn200100]<0>(v24, "symmetric");
  v25 = 14;
  std::string::basic_string[abi:nn200100]<0>(v26, "form");
  v27 = 15;
  std::string::basic_string[abi:nn200100]<0>(v28, "stretchy");
  v29 = 16;
  std::string::basic_string[abi:nn200100]<0>(v30, "mathvariant");
  v31 = 17;
  std::string::basic_string[abi:nn200100]<0>(v32, "open");
  v33 = 18;
  std::string::basic_string[abi:nn200100]<0>(v34, "close");
  v35 = 19;
  std::string::basic_string[abi:nn200100]<0>(v36, "separators");
  v37 = 20;
  std::string::basic_string[abi:nn200100]<0>(v38, "position");
  v39 = 21;
  std::string::basic_string[abi:nn200100]<0>(v40, "crossout");
  v41 = 34;
  std::string::basic_string[abi:nn200100]<0>(v42, "shift");
  v43 = 22;
  std::string::basic_string[abi:nn200100]<0>(v44, "length");
  v45 = 23;
  std::string::basic_string[abi:nn200100]<0>(v46, "numalign");
  v47 = 24;
  std::string::basic_string[abi:nn200100]<0>(v48, "denomalign");
  v49 = 25;
  std::string::basic_string[abi:nn200100]<0>(v50, "height");
  v51 = 26;
  std::string::basic_string[abi:nn200100]<0>(v52, "depth");
  v53 = 27;
  std::string::basic_string[abi:nn200100]<0>(v54, "width");
  v55 = 28;
  std::string::basic_string[abi:nn200100]<0>(v56, "voffset");
  v57 = 33;
  std::string::basic_string[abi:nn200100]<0>(v58, "decimalpoint");
  v59 = 35;
  std::string::basic_string[abi:nn200100]<0>(v60, "linethickness");
  v61 = 36;
  std::string::basic_string[abi:nn200100]<0>(v62, "groupalign");
  v63 = 37;
  std::string::basic_string[abi:nn200100]<0>(v64, "edge");
  v65 = 38;
  std::string::basic_string[abi:nn200100]<0>(v66, "largeop");
  v67 = 39;
  std::string::basic_string[abi:nn200100]<0>(v68, "minsize");
  v69 = 40;
  std::string::basic_string[abi:nn200100]<0>(v70, "maxsize");
  v71 = 41;
  std::string::basic_string[abi:nn200100]<0>(v72, "scriptsizemultiplier");
  v73 = 42;
  std::string::basic_string[abi:nn200100]<0>(v74, "scriptminsize");
  v75 = 43;
  std::string::basic_string[abi:nn200100]<0>(v76, "movablelimits");
  v77 = 45;
  std::string::basic_string[abi:nn200100]<0>(v78, "mathcolor");
  v79 = 44;
  std::string::basic_string[abi:nn200100]<0>(v80, "columnspacing");
  v81 = 46;
  std::string::basic_string[abi:nn200100]<0>(v82, "notation");
  v83 = 47;
  operator new();
}

void sub_26C724D1C(_Unwind_Exception *a1)
{
  MEMORY[0x26D6A9A30](v1, 0x1020C4062D53EE8);
  v3 = &STACK[0x53F];
  v4 = -1344;
  v5 = &STACK[0x53F];
  while (1)
  {
    v6 = *v5;
    v5 -= 4;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Attributes::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Attributes::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes8CrossoutL3mapEv_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "none");
  v1 = 0;
  std::string::basic_string[abi:nn200100]<0>(v2, "updiagonalstrike");
  v3 = 1;
  std::string::basic_string[abi:nn200100]<0>(v4, "downdiagonalstrike");
  v5 = 2;
  std::string::basic_string[abi:nn200100]<0>(v6, "verticalstrike");
  v7 = 3;
  std::string::basic_string[abi:nn200100]<0>(v8, "horizontalstrike");
  v9 = 4;
  operator new();
}

void sub_26C725010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MEMORY[0x26D6A9A30](v31, 0x1020C4062D53EE8);
  v33 = &a31;
  v34 = -160;
  v35 = &a31;
  while (1)
  {
    v36 = *v35;
    v35 -= 32;
    if (v36 < 0)
    {
      operator delete(*(v33 - 23));
    }

    v33 = v35;
    v34 += 32;
    if (!v34)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Crossout::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Crossout::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes8NotationL3mapEv_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "longdiv");
  v1 = 0;
  std::string::basic_string[abi:nn200100]<0>(v2, "updiagonalstrike");
  v3 = 1;
  std::string::basic_string[abi:nn200100]<0>(v4, "downdiagonalstrike");
  v5 = 2;
  std::string::basic_string[abi:nn200100]<0>(v6, "verticalstrike");
  v7 = 3;
  std::string::basic_string[abi:nn200100]<0>(v8, "horizontalstrike");
  v9 = 4;
  operator new();
}

void sub_26C725270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MEMORY[0x26D6A9A30](v31, 0x1020C4062D53EE8);
  v33 = &a31;
  v34 = -160;
  v35 = &a31;
  while (1)
  {
    v36 = *v35;
    v35 -= 32;
    if (v36 < 0)
    {
      operator delete(*(v33 - 23));
    }

    v33 = v35;
    v34 += 32;
    if (!v34)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Notation::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Notation::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes10GroupAlignL3mapEv_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "left");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "center");
  v3 = 2;
  std::string::basic_string[abi:nn200100]<0>(v4, "right");
  v5 = 3;
  std::string::basic_string[abi:nn200100]<0>(v6, "decimalpoint");
  v7 = 4;
  operator new();
}

void sub_26C7254B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  MEMORY[0x26D6A9A30](v27, 0x1020C4062D53EE8);
  v29 = &a27;
  v30 = -128;
  v31 = &a27;
  while (1)
  {
    v32 = *v31;
    v31 -= 32;
    if (v32 < 0)
    {
      operator delete(*(v29 - 23));
    }

    v29 = v31;
    v30 += 32;
    if (!v30)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::GroupAlign::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::GroupAlign::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

void ___ZN10EQKitTypes4EdgeL3mapEv_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "left");
  v1 = 1;
  std::string::basic_string[abi:nn200100]<0>(v2, "right");
  v3 = 2;
  operator new();
}

void sub_26C7256AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  MEMORY[0x26D6A9A30](v23, 0x1020C4062D53EE8);
  v25 = &a22;
  v26 = -64;
  v27 = &a22;
  while (1)
  {
    v28 = *v27;
    v27 -= 32;
    if (v28 < 0)
    {
      operator delete(*(v25 - 23));
    }

    v25 = v27;
    v26 += 32;
    if (!v26)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,EQKitTypes::Edge::Enum>::map[abi:nn200100]<std::pair<std::string const,EQKitTypes::Edge::Enum> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::__map_value_compare<std::string const,std::__value_type<std::string const,EQKitMathMLElement::Enum>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,EQKitMathMLElement::Enum>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,EQKitMathMLElement::Enum> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

NSArray *EQKitLayoutFilterOutSpaceLike(NSArray *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSArray *)a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v2)
  {
    return a1;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *v12;
  v7 = a1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(a1);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      if ([v9 isSpaceLike])
      {
        if (!v5)
        {
          v5 = [MEMORY[0x277CBEB18] arrayWithArray:{-[NSArray subarrayWithRange:](a1, "subarrayWithRange:", 0, v4)}];
          v7 = v5;
        }
      }

      else if (v5)
      {
        [(NSArray *)v5 addObject:v9];
      }

      ++v4;
    }

    v3 = [(NSArray *)a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v3);
  return v7;
}

void EQKitStretchedGlyph::EQKitStretchedGlyph(EQKitStretchedGlyph *this, CTFontRef font, UniChar a3)
{
  characters = a3;
  *this = &unk_287D33A48;
  *(this + 1) = 0;
  *(this + 8) = -1;
  *(this + 3) = 0;
  if (font)
  {
    glyphs = 0;
    if (CTFontGetGlyphsForCharacters(font, &characters, &glyphs, 1))
    {
      v5 = CFRetain(font);
      *(this + 1) = v5;
      if (!v5)
      {
        return;
      }

LABEL_12:
      *(this + 8) = glyphs;
      return;
    }

    v6 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], &characters, 1);
    if (v6)
    {
      v7 = v6;
      v12.length = CFStringGetLength(v6);
      v12.location = 0;
      v8 = CTFontCreateForString(font, v7, v12);
      if (v8)
      {
        v9 = v8;
        if (CTFontGetGlyphsForCharacters(v8, &characters, &glyphs, 1))
        {
          *(this + 1) = v9;
        }

        else
        {
          CFRelease(v9);
        }
      }

      CFRelease(v7);
    }

    if (*(this + 1))
    {
      goto LABEL_12;
    }
  }
}

void EQKitStretchedGlyph::~EQKitStretchedGlyph(EQKitStretchedGlyph *this)
{
  *this = &unk_287D33A48;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    EQKitPath::~EQKitPath(v3);
    MEMORY[0x26D6A9A30]();
  }
}

{
  EQKitStretchedGlyph::~EQKitStretchedGlyph(this);

  JUMPOUT(0x26D6A9A30);
}

uint64_t EQKitStretchedGlyph::path(EQKitStretchedGlyph *this)
{
  result = *(this + 3);
  v3 = *(this + 8);
  if (result)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0xFFFF;
  }

  if (!v4)
  {
    v5 = *(this + 1);
    memset(&v6, 0, sizeof(v6));
    CGAffineTransformMakeScale(&v6, 1.0, -1.0);
    CTFontCreatePathForGlyph(v5, v3, &v6);
    operator new();
  }

  return result;
}

CGPath *EQKitStretchedGlyph::createScaledPathWithWidth(EQKitStretchedGlyph *this, double a2, double *a3)
{
  v5 = EQKitStretchedGlyph::path(this);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v5 + 120) == 1 ? (v5 + 88) : EQKitPath::computePathBounds(v5);
  if (CGRectGetWidth(*v7) == 0.0)
  {
    return 0;
  }

  if (*(v6 + 120) == 1)
  {
    v8 = (v6 + 88);
  }

  else
  {
    v8 = EQKitPath::computePathBounds(v6);
  }

  v10 = a2 / CGRectGetWidth(*v8);
  Mutable = CGPathCreateMutable();
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, v10, 1.0);
  EQKitPath::appendToCGPath(v6, Mutable, &v19, 0);
  if (*(v6 + 120) == 1)
  {
    v11 = (v6 + 88);
  }

  else
  {
    v11 = EQKitPath::computePathBounds(v6);
  }

  *a3 = CGRectGetMaxY(*v11);
  EQKitPath::EQKitPath(v17, Mutable);
  if (v18[32] == 1)
  {
    v12 = v18;
  }

  else
  {
    v12 = EQKitPath::computePathBounds(v17);
  }

  v13 = *v12;
  v14 = v12[1];
  v20.size.width = v12[2];
  v20.size.height = v12[3];
  v20.origin.x = *v12;
  v20.origin.y = v14;
  *a3 = -CGRectGetMinY(v20);
  if (v13 != 0.0 || v14 != 0.0)
  {
    CGPathRelease(Mutable);
    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeTranslation(&v16, -v13, -v14);
    Mutable = CGPathCreateMutable();
    EQKitPath::appendToCGPath(v17, Mutable, &v16, 0);
  }

  EQKitPath::~EQKitPath(v17);
  return Mutable;
}

void sub_26C7261AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

CGPath *EQKitStretchedGlyph::createScaledPathWithHeight(EQKitStretchedGlyph *this, double *a2, double a3)
{
  v5 = EQKitStretchedGlyph::path(this);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v5 + 120) == 1 ? (v5 + 88) : EQKitPath::computePathBounds(v5);
  if (CGRectGetHeight(*v7) == 0.0)
  {
    return 0;
  }

  if (*(v6 + 120) == 1)
  {
    v8 = (v6 + 88);
  }

  else
  {
    v8 = EQKitPath::computePathBounds(v6);
  }

  v10 = a3 / CGRectGetHeight(*v8);
  Mutable = CGPathCreateMutable();
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, 1.0, v10);
  EQKitPath::appendToCGPath(v6, Mutable, &v18, 0);
  EQKitPath::EQKitPath(v16, Mutable);
  if (v17[32] == 1)
  {
    v11 = v17;
  }

  else
  {
    v11 = EQKitPath::computePathBounds(v16);
  }

  v12 = *v11;
  v13 = v11[1];
  v19.size.width = v11[2];
  v19.size.height = v11[3];
  v19.origin.x = *v11;
  v19.origin.y = v13;
  *a2 = -CGRectGetMinX(v19);
  if (v12 != 0.0 || v13 != 0.0)
  {
    CGPathRelease(Mutable);
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeTranslation(&v15, -v12, -v13);
    Mutable = CGPathCreateMutable();
    EQKitPath::appendToCGPath(v16, Mutable, &v15, 0);
  }

  EQKitPath::~EQKitPath(v16);
  return Mutable;
}

void sub_26C72634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

double EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = [*(a2 + 40) mutableCopy];
  *(a1 + 48) = [*(a2 + 48) mutableCopy];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_26C728300(_Unwind_Exception *a1)
{
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100]((v1 + 120));
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100]((v1 + 72));
  _Unwind_Resume(a1);
}

EQKit::ILayout *EQKitLayoutElementaryStack::layout@<X0>(id *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  EQKitLayoutElementaryStack::collectRows(this);
  if ([this[5] count])
  {
    if (!this[6])
    {
      this[6] = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v4 = this[7];
    v5 = this[8];
    v50 = 0;
    v51 = 0;
    __p = 0;
    if (&v4[v5])
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, &v4[v5]);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = this[5];
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v7)
    {
      v8 = *v46;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v45 + 1) + 8 * i);
          [v10 setFirstColumnIndex:{this[7] + objc_msgSend(v10, "alignmentShift")}];
          [v10 populateMaxColumnWidths:{__p + 8 * objc_msgSend(v10, "firstColumnIndex")}];
        }

        v7 = [v6 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v7);
    }

    v11 = __p;
    if (__p == v50)
    {
      v14 = 0.0;
    }

    else
    {
      v12 = 0.0;
      do
      {
        v13 = *v11++;
        v12 = v13 + v12;
      }

      while (v11 != v50);
      v14 = v12;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = this[5];
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
    v36 = a2;
    v18 = 0;
    if (v17)
    {
      v19 = 0;
      v20 = 0;
      v21 = *v42;
      do
      {
        v22 = 0;
        v37 = &v19[v17];
        v23 = v20;
        do
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v41 + 1) + 8 * v22);
          if (v19 == this[2])
          {
            v18 = [this[6] count];
          }

          EQKitLayoutElementaryStack::layoutForRow(this, v20, v23, &__p, &v39, v14);
          if (v19 == this[3])
          {
            v24 = [EQKitHVSpace alloc];
            [v39 width];
            v26 = v25;
            [v39 height];
            v28 = v27;
            [v39 depth];
            v30 = [(EQKitHVSpace *)v24 initWithWidth:v26 height:v28 depth:v29];
            EQKit::ILayout::ILayout(v38, v30);
            EQKit::ILayout::operator=(&v39, v38);
            EQKit::ILayout::~ILayout(v38);
          }

          [this[6] addObject:{v39, v36}];
          if (++v19 < [this[5] count])
          {
            v31 = [EQKitVSpace alloc];
            [v20 followingSpace];
            v32 = [EQKitVSpace initWithHeight:v31 depth:"initWithHeight:depth:"];
            [this[6] addObject:v32];
          }

          EQKit::ILayout::~ILayout(&v39);
          ++v22;
          v23 = v20;
        }

        while (v17 != v22);
        v17 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
        v19 = v37;
      }

      while (v17);
    }

    a2 = v36;
    if (this[2] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = [[EQKitVBox alloc] initWithChildBoxes:this[6]];
      v38[0] = 0;
      v34 = *(*this + 75);
      v39 = EQKitLayoutManager::currentNode(*this);
      v40 = 2;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v34, v34 + 152, &v39, v38);
      v15 = EQKitLayoutManager::baselineAlignBox(*this, v33, v38[0]);
    }

    else
    {
      v15 = [[EQKitVBox alloc] initWithChildBoxes:this[6] pivotIndex:v18];
    }

    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v15 = 0;
  }

  return EQKit::ILayout::ILayout(a2, &v15->super.super);
}

void sub_26C728758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitLayoutElementaryStack::collectRows(id *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [this[1] schemataChildren];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        EQKitLayoutManager::layoutBox(*this, *(*(&v8 + 1) + 8 * v6), 0, v7);
        EQKit::ILayout::~ILayout(v7);
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void EQKitLayoutElementaryStack::layoutForRow(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, EQKit::ILayout *a5@<X8>, double a6@<D0>)
{
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([a2 spansStack] & 1) == 0)
  {
    v13 = *a4;
    v14 = [a2 firstColumnIndex];
    if (v14)
    {
      v15 = &v13[v14];
      v16 = 0.0;
      do
      {
        v17 = *v13++;
        v16 = v17 + v16;
      }

      while (v13 != v15);
      v18 = v16;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = [[EQKitHSpace alloc] initWithWidth:v18];
    [v12 addObject:v19];
  }

  v20 = [a2 newBoxWithStackWidth:*a4 + 8 * objc_msgSend(a2 columnWidthIter:"firstColumnIndex") iterMax:*(a4 + 8) previousRow:a3 layoutManager:{*a1, a6}];
  [v12 addObject:v20];

  v21 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v12];
  EQKit::ILayout::ILayout(a5, &v21->super.super);
}

EQKit::ILayout *EQKitLayoutElementaryStack::layoutStackGroup@<X0>(void *a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v7 = a1 + 9;
  v6 = *a1;
  v8 = *(v6 + 75);
  v24 = EQKitLayoutManager::currentNode(v6);
  v25 = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v8, v8 + 392, &v24, &v23);
  v9 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v24 = v23 + v9;
  std::deque<long>::push_back(v7, &v24);
  v22 = 0;
  v10 = *(*a1 + 600);
  v24 = EQKitLayoutManager::currentNode(*a1);
  v25 = 22;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v10, v10 + 392, &v24, &v22);
  std::deque<long>::push_back(a1 + 15, &v22);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [a2 schemataChildren];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        EQKitLayoutManager::layoutBox(*a1, *(*(&v18 + 1) + 8 * v15), 0, v17);
        EQKit::ILayout::~ILayout(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  --a1[14];
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](v7, 1);
  --a1[20];
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](a1 + 15, 1);
  return EQKit::ILayout::ILayout(a3, 0);
}

uint64_t EQKitLayoutElementaryStack::shiftPosition(EQKitLayoutElementaryStack *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v3 = *(this + 20);
  if (!v3)
  {
    return 0;
  }

  v4 = v1 - 1;
  v5 = *(*(*(this + 10) + (((*(this + 13) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 13) + v4) & 0x1FF));
  v7 = *(*(*(this + 16) + (((v3 + *(this + 19) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + *(this + 19) - 1) & 0x1FF)) + v5;
  *(this + 14) = v4;
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](this + 9, 1);
  std::deque<long>::push_back(this + 9, &v7);
  return v5;
}

EQKit::ILayout *EQKitLayoutElementaryStack::layoutStackRow@<X0>(EQKitLayoutManager **a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [a2 schemataChildren];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *v29;
  v9 = 0x7FFFFFFFLL;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v28 + 1) + 8 * i);
      if ([v11 isNumber])
      {
        v27 = 0;
        v12 = *a1;
        if (v11)
        {
          [v11 layoutSchemata];
        }

        else
        {
          memset(v26, 0, 32);
        }

        v13 = EQKitLayoutManager::layoutNumberDigits(v12, v26, &v27);
        EQKit::Layout::Schemata::~Schemata(v26);
        if (v9 == 0x7FFFFFFF)
        {
          v14 = [v5 count];
          v9 = v27 + v14;
        }

        [v5 addObjectsFromArray:v13];
      }

      else
      {
        EQKitLayoutManager::layoutBox(*a1, v11, 0, v26);
        [v5 addObject:*&v26[0]];
        EQKit::ILayout::~ILayout(v26);
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_17:
    v9 = [v5 count];
  }

  v27 = 0;
  v15 = *(*a1 + 75);
  *&v26[0] = EQKitLayoutManager::currentNode(*a1);
  DWORD2(v26[0]) = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v15, v15 + 392, v26, &v27);
  v16 = [EQKitLayoutElementaryStackDigitRow alloc];
  v17 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v18 = v27;
  v19 = EQKitLayoutManager::layoutContext(*a1);
  v21 = v19;
  v22 = *(v19 + 80);
  if (*(v19 + 104))
  {
    v20.n128_u64[0] = *(v19 + 112);
  }

  else
  {
    v20.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v19);
  }

  (*(*v22 + 40))(v22, 16, v21 + 8, v20);
  v23 = [(EQKitLayoutElementaryStackDigitRow *)v16 initWithChildren:v5 decimalPoint:v9 position:v18 + v17 followingSpace:?];
  EQKitLayoutElementaryStack::addRow(a1, v23);

  return EQKit::ILayout::ILayout(a3, 0);
}

void sub_26C728F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  EQKit::ILayout::~ILayout(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutElementaryStack::addRow(void *a1, void *a2)
{
  v4 = a1[5];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    a1[5] = v4;
  }

  [v4 addObject:a2];
  v5 = [a2 alignmentShift];
  if (a1[7] <= -v5)
  {
    v6 = -v5;
  }

  else
  {
    v6 = a1[7];
  }

  a1[7] = v6;
  v7 = [a2 alignmentShift];
  result = [a2 columnCount];
  v9 = result + v7;
  if (a1[8] > result + v7)
  {
    v9 = a1[8];
  }

  a1[8] = v9;
  return result;
}

EQKit::ILayout *EQKitLayoutElementaryStack::layoutStackLine@<X0>(uint64_t a1@<X0>, EQKit::ILayout *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4 <= 0.0)
  {
    v5 = EQKitLayoutManager::layoutContext(*a1);
    if (*(v5 + 104))
    {
      v4 = *(v5 + 112);
    }

    else
    {
      v4 = EQKitLayoutContext::pComputeRuleThickness(v5);
    }
  }

  v19 = 0;
  v6 = *(*a1 + 600);
  v20 = EQKitLayoutManager::currentNode(*a1);
  v21 = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v6, v6 + 392, &v20, &v19);
  v18 = 0;
  v7 = *(*a1 + 600);
  v20 = EQKitLayoutManager::currentNode(*a1);
  v21 = 23;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v7, v7 + 416, &v20, &v18);
  v8 = [EQKitLayoutElementaryStackLineRow alloc];
  v9 = v18;
  v10 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v11 = v19;
  v12 = EQKitLayoutManager::layoutContext(*a1);
  v14 = v12;
  v15 = *(v12 + 80);
  if (*(v12 + 104))
  {
    v13.n128_u64[0] = *(v12 + 112);
  }

  else
  {
    v13.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
  }

  v16 = [(EQKitLayoutElementaryStackLineRow *)v8 initWithLength:v9 thickness:v11 + v10 position:v4 followingSpace:(*(*v15 + 40))(v15, 16, v14 + 8, v13)];
  EQKitLayoutElementaryStack::addRow(a1, v16);

  return EQKit::ILayout::ILayout(a2, 0);
}

void EQKitLayoutElementaryStack::layoutStackCarries(EQKitLayoutManager **a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0;
  v40 = &v39;
  v41 = 0x4812000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = &unk_26CAC6BB9;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v20 = a1;
  v5 = *(*a1 + 75);
  v26 = EQKitLayoutManager::currentNode(*a1);
  v27 = 34;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v5, v5 + 200, &v26, &v32);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [a2 schemataChildren];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v48 count:16];
  if (v7)
  {
    v8 = *v29;
    obj = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = *v20;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3321888768;
        v22[2] = ___ZN26EQKitLayoutElementaryStack18layoutStackCarriesEPU42objcproto31EQKitLayoutSchemataStackCarries11objc_object_block_invoke;
        v22[3] = &unk_287D33A60;
        v22[7] = v20;
        v22[4] = v10;
        v22[5] = &v39;
        __dst = 0;
        v25 = 0;
        __p = 0;
        if (v33 != v32)
        {
          std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:nn200100](&__p, (v33 - v32) >> 2);
        }

        v22[6] = &v35;
        EQKitLayoutManager::layoutBox(v11, v10, 1, 0, 0, 0, v22, &v26);
        [v19 addObject:v26];
        EQKit::ILayout::~ILayout(&v26);
        if (__p)
        {
          __dst = __p;
          operator delete(__p);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v48 count:16];
    }

    while (v7);
  }

  v21 = 0;
  v12 = *(*v20 + 75);
  v26 = EQKitLayoutManager::currentNode(*v20);
  v27 = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v12, v12 + 392, &v26, &v21);
  v13 = [EQKitLayoutElementaryStackCarryRow alloc];
  v14 = [v19 count];
  v15 = EQKitLayoutElementaryStack::shiftPosition(v20);
  v16 = [(EQKitLayoutElementaryStackCarryRow *)v13 initWithChildren:v19 decimalPoint:v14 position:v21 + v15 followingSpace:v40 + 6 crossouts:v36[3]];
  EQKitLayoutElementaryStack::addRow(v20, v16);

  EQKit::ILayout::ILayout(a3, 0);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_26C72952C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN26EQKitLayoutElementaryStack18layoutStackCarriesEPU42objcproto31EQKitLayoutSchemataStackCarries11objc_object_block_invoke(void *a1, uint64_t a2)
{
  if (a1[4] != a2)
  {
    return;
  }

  v3 = a1[7];
  __p = 0;
  v26 = 0;
  v27 = 0;
  v4 = *(*v3 + 75);
  v28 = a2;
  v29 = 34;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v4, v4 + 200, &v28, &__p);
  v5 = __p;
  if (__p == v26)
  {
    v5 = a1[8];
    v7 = *(a1[5] + 8);
    v6 = (v7 + 6);
    if (v5 == a1[9])
    {
      v15 = v7[7];
      v14 = v7[8];
      if (v15 >= v14)
      {
        v17 = *v6;
        v18 = v15 - *v6;
        v19 = v18 >> 2;
        v20 = (v18 >> 2) + 1;
        if (v20 >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = v14 - v17;
        if (v21 >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
        v23 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(v6, v23);
        }

        *(4 * v19) = 0;
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v24 = v7[6];
        v7[6] = 0;
        v7[7] = v16;
        v7[8] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v15 = 0;
        v16 = (v15 + 4);
      }

      v7[7] = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = (*(a1[5] + 8) + 48);
  }

  std::vector<EQKitTypes::Crossout::Enum>::push_back[abi:nn200100](v6, v5);
LABEL_6:
  v8 = *(a1[6] + 8);
  v9 = EQKitLayoutManager::layoutContext(*v3);
  v11 = v9;
  v12 = *(v9 + 80);
  if (*(v9 + 104))
  {
    v10.n128_u64[0] = *(v9 + 112);
  }

  else
  {
    v10.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v9);
  }

  v13 = (*(*v12 + 40))(v12, 16, v11 + 8, v10);
  if (*(v8 + 24) >= v13)
  {
    v13 = *(v8 + 24);
  }

  *(*(a1[6] + 8) + 24) = v13;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_26C7297CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<EQKitTypes::Crossout::Enum>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void __destroy_helper_block_e8_64c68_ZTSNSt3__16vectorIN10EQKitTypes8Crossout4EnumENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void EQKitLayoutElementaryStack::layoutStackCarry(EQKitLayoutManager **a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  EQKitLayoutManager::beginRow(*a1, 0, 1);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a2 schemataChildren];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        EQKitLayoutManager::layout(*a1, *(*(&v11 + 1) + 8 * v10++), 0);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  EQKitLayoutManager::endRow(*a1, a3);
}

double EQKitLayoutElementaryStack::baselineForRowAtIndex(id *this, unint64_t a2)
{
  if (![this[6] count])
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  do
  {
    v7 = [this[6] objectAtIndex:v4];
    if (v5 >= a2)
    {
      [v7 height];
    }

    else
    {
      [v7 vsize];
    }

    v6 = v6 + v8;
    if ((v4 & 1) == 0 && v5 == a2)
    {
      break;
    }

    if ((v4 & 1) == 0 && v5 != a2)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 < [this[6] count]);
  return v6;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = v7[6];
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = v13[6];
      goto LABEL_3;
    }
  }

  return result;
}

void *std::deque<long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_26C72A550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

uint64_t EQKitLayoutTable::resolveColumnAlignment(uint64_t a1, uint64_t *a2, uint64_t *a3, char **a4, unint64_t a5)
{
  if (a4[1] - *a4 != 4 || (result = **a4, !result))
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 == v7)
    {
      goto LABEL_8;
    }

    v8 = ((v7 - v6) >> 2) - 1;
    if (v8 >= a5)
    {
      v8 = a5;
    }

    result = *(v6 + 4 * v8);
    if (!result)
    {
LABEL_8:
      v9 = *a2;
      v10 = a2[1];
      if (*a2 == v10)
      {
        return 2;
      }

      v11 = ((v10 - v9) >> 2) - 1;
      if (v11 >= a5)
      {
        v11 = a5;
      }

      result = *(v9 + 4 * v11);
      if (!result)
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t EQKitLayoutTable::resolveRowAlignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a4 + 24);
  if (*(a4 + 32) - v5 != 4 || (result = *v5, !result))
  {
    v7 = *(a3 + 24);
    if (*(a3 + 32) - v7 != 4 || (result = *v7, !result))
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (v8 == v9)
      {
        return 4;
      }

      v10 = ((v9 - v8) >> 2) - 1;
      if (v10 >= a5)
      {
        v10 = a5;
      }

      result = *(v8 + 4 * v10);
      if (!result)
      {
        return 4;
      }
    }
  }

  return result;
}

void EQKitLayoutTable::resolveAlignmentGroups(EQKitLayoutTable *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      memset(v15, 0, sizeof(v15));
      if (a2)
      {
        v7 = 0;
        v8 = a2;
        do
        {
          v9 = *(*(this + 8) + v7 + 56);
          if (i < 0xAF8AF8AF8AF8AF8BLL * ((*(*(this + 8) + v7 + 64) - v9) >> 3))
          {
            EQKitLayoutRow::addToAlignmentContext((v9 + 280 * i + 64), v15);
          }

          v7 += 80;
          --v8;
        }

        while (v8);
        v10 = 0;
        v11 = a2;
        do
        {
          v12 = *(*(this + 8) + v10 + 56);
          if (i < 0xAF8AF8AF8AF8AF8BLL * ((*(*(this + 8) + v10 + 64) - v12) >> 3))
          {
            v13 = v12 + 280 * i;
            EQKitLayoutRow::overallLayoutWithAlignmentContext((v13 + 64), v15, v14);
            EQKit::ILayout::operator=(v13 + 224, v14);
            EQKit::ILayout::~ILayout(v14);
          }

          v10 += 80;
          --v11;
        }

        while (v11);
      }

      EQKitLayoutTable::Properties::~Properties(v15);
    }
  }
}

void sub_26C72A80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  EQKitLayoutTable::Properties::~Properties(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::relationalOperatorOffset(EQKitLayoutTable *this@<X0>, EQKitBox **a2@<X1>, EQKit::ILayoutOffset *a3@<X8>)
{
  v5 = *(this + 8);
  v4 = *(this + 9);
  if (v4 == v5)
  {

    EQKit::ILayoutOffset::ILayoutOffset(a3, 0, 0.0);
  }

  else
  {
    v8 = 0;
    v9 = 1.79769313e308;
    do
    {
      v10 = 0;
      v11 = 0;
      for (i = 224; ; i += 280)
      {
        v13 = v4 == v5 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v5 + 64) - *(v5 + 56)) >> 3);
        if (((v10 < v13) & (v11 ^ 1)) == 0)
        {
          break;
        }

        v14 = *(v5 + 80 * v8 + 56);
        EQKit::ILayoutOffset::ILayoutOffset(v16, 0, 0.0);
        if (EQKit::ILayout::getOffsetOfKind(v14 + i, 1, v16))
        {
          v15 = EQKit::ILayoutOffset::offsetInBox(v16, *a2);
          if (v9 == 1.79769313e308 || vabdd_f64(v15, v9) < 0.00100000005)
          {
            v11 = 0;
            v9 = v15;
          }

          else
          {
            v11 = 1;
            v9 = 1.79769313e308;
          }
        }

        else
        {
          v11 = 0;
        }

        EQKit::ILayoutOffset::~ILayoutOffset(v16);
        ++v10;
        v5 = *(this + 8);
        v4 = *(this + 9);
      }

      ++v8;
    }

    while (!((v8 >= 0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4)) | v11 & 1));
    EQKit::ILayoutOffset::ILayoutOffset(a3, 0, 0.0);
    if (v9 != 1.79769313e308)
    {
      EQKit::ILayoutOffset::ILayoutOffset(v16, *a2, v9);
      EQKit::ILayoutOffset::operator=(a3, v16);
      EQKit::ILayoutOffset::~ILayoutOffset(v16);
    }
  }
}

void sub_26C72AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::ILayoutOffset::~ILayoutOffset(&a9);
  EQKit::ILayoutOffset::~ILayoutOffset(v9);
  _Unwind_Resume(a1);
}

EQKit::ILayout *EQKitLayoutTable::layoutTr@<X0>(uint64_t a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  result = EQKit::ILayout::ILayout(a3, 0);
  if (a2)
  {
    v6 = [a2 schemataChildren];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    result = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    v7 = result;
    if (result)
    {
      v8 = *v31;
      obj = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          v11 = *(a1 + 72);
          EQKitLayoutTable::LayoutCell::LayoutCell(v25);
          v12 = *(v11 - 16);
          if (v12 >= *(v11 - 8))
          {
            v13 = std::vector<EQKitLayoutTable::LayoutCell>::__emplace_back_slow_path<EQKitLayoutTable::LayoutCell>(v11 - 24, v25);
          }

          else
          {
            EQKitLayoutTable::LayoutCell::LayoutCell(*(v11 - 16), v25);
            v13 = v12 + 280;
            *(v11 - 16) = v12 + 280;
          }

          *(v11 - 16) = v13;
          EQKit::ILayout::~ILayout(&v29);
          EQKitLayoutRow::~EQKitLayoutRow(&v28);
          if (*(&v26 + 1))
          {
            *&v27 = *(&v26 + 1);
            operator delete(*(&v26 + 1));
          }

          if (v25[0])
          {
            v25[1] = v25[0];
            operator delete(v25[0]);
          }

          v14 = *(*(a1 + 72) - 16);
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 0;
          v15 = *(a1 + 8);
          v16 = *(a1 + 88);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = ___ZN16EQKitLayoutTable8layoutTrEPU32objcproto21EQKitLayoutSchemataTr11objc_object_block_invoke;
          v20[3] = &unk_279D466A0;
          v20[5] = &v21;
          v20[6] = a1;
          v20[4] = v10;
          EQKitLayoutManager::layoutIntoRow(v15, (v14 - 216), v10, 0, v16, v20);
          v26 = 0u;
          v27 = 0u;
          *v25 = 0u;
          v17 = *(*(a1 + 8) + 600);
          v34 = v10;
          v35 = 3;
          EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v17, v17 + 248, &v34, &v26 + 1);
          v18 = *(*(a1 + 8) + 600);
          v34 = v10;
          v35 = 4;
          EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v18, v18 + 272, &v34, v25);
          if ((v14 - 280) != v25)
          {
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v14 - 280), v25[0], v25[1], (v25[1] - v25[0]) >> 2);
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v14 - 256), *(&v26 + 1), v27, (v27 - *(&v26 + 1)) >> 2);
          }

          *(v14 - 224) = v22[3];
          if (*(&v26 + 1))
          {
            *&v27 = *(&v26 + 1);
            operator delete(*(&v26 + 1));
          }

          if (v25[0])
          {
            v25[1] = v25[0];
            operator delete(v25[0]);
          }

          _Block_object_dispose(&v21, 8);
          v9 = (v9 + 1);
        }

        while (v7 != v9);
        result = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

void ___ZN16EQKitLayoutTable8layoutTrEPU32objcproto21EQKitLayoutSchemataTr11objc_object_block_invoke(void *a1, uint64_t a2)
{
  if (a1[4] == a2)
  {
    v3 = EQKitLayoutManager::layoutContext(*(a1[6] + 8));
    if ((*(v3 + 104) & 2) != 0)
    {
      v4 = *(v3 + 120);
    }

    else
    {
      v4 = EQKitLayoutContext::pComputeMathAxis(v3);
    }

    *(*(a1[5] + 8) + 24) = v4;
  }
}

void EQKitLayoutTable::Properties::~Properties(EQKitLayoutTable::Properties *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void EQKitLayoutTable::generateTableLayout(EQKitLayoutTable *this, NSArray *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v3 = [(NSArray *)a2 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v3)
  {
    v4 = *v52;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v52 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v51 + 1) + 8 * i);
        memset(v50, 0, sizeof(v50));
        *v48 = 0u;
        v49 = 0u;
        *v47 = 0u;
        std::vector<EQKitLayoutTable::LayoutRow>::push_back[abi:nn200100](this + 8, v47);
        EQKitLayoutManager::layoutBox(*(this + 1), v6, 0, v46);
        EQKit::ILayout::~ILayout(v46);
        *__p = 0u;
        v45 = 0u;
        *v43 = 0u;
        v7 = *(*(this + 1) + 600);
        v55 = v6;
        v56 = 3;
        EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v7, v7 + 248, &v55, &__p[1]);
        v8 = *(*(this + 1) + 600);
        v55 = v6;
        v56 = 4;
        EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v8, v8 + 272, &v55, v43);
        if ((this + 16) != v43)
        {
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(this + 2, v43[0], v43[1], (v43[1] - v43[0]) >> 2);
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(this + 5, __p[1], v45, (v45 - __p[1]) >> 2);
        }

        v9 = *(this + 9);
        if ((v9 - 80) != v43)
        {
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v9 - 80), v43[0], v43[1], (v43[1] - v43[0]) >> 2);
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v9 - 56), __p[1], v45, (v45 - __p[1]) >> 2);
        }

        if (__p[1])
        {
          *&v45 = __p[1];
          operator delete(__p[1]);
        }

        if (v43[0])
        {
          v43[1] = v43[0];
          operator delete(v43[0]);
        }

        v43[0] = v50 + 8;
        std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:nn200100](v43);
        if (v48[1])
        {
          *&v49 = v48[1];
          operator delete(v48[1]);
        }

        if (v47[0])
        {
          v47[1] = v47[0];
          operator delete(v47[0]);
        }
      }

      v3 = [(NSArray *)a2 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v3);
  }

  v11 = *(this + 8);
  v10 = *(this + 9);
  v12 = (v10 - v11) >> 4;
  v13 = 0xCCCCCCCCCCCCCCCDLL * v12;
  v14 = 0;
  if (v10 != v11)
  {
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * v12;
    }

    v16 = (v11 + 64);
    do
    {
      if (v14 <= 0xAF8AF8AF8AF8AF8BLL * ((*v16 - *(v16 - 1)) >> 3))
      {
        v14 = 0xAF8AF8AF8AF8AF8BLL * ((*v16 - *(v16 - 1)) >> 3);
      }

      v16 += 10;
      --v15;
    }

    while (v15);
  }

  EQKitLayoutTable::resolveAlignmentGroups(this, v13, v14);
  v47[0] = 0;
  v47[1] = 0;
  v48[0] = 0;
  v43[0] = 0;
  std::vector<double>::resize(v47, v14, v43);
  if (v10 == v11)
  {
    v37 = v47[0];
    if (!v47[0])
    {
      return;
    }

    goto LABEL_50;
  }

  v17 = 0;
  if (v13 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v13;
  }

  v19 = *(this + 8);
  do
  {
    v20 = v19 + 80 * v17;
    v21 = *(v20 + 56);
    v22 = *(v20 + 64);
    std::vector<EQKitLayoutTable::LayoutCell>::resize(v20 + 56, v14);
    v19 = *(this + 8);
    v23 = v19 + 80 * v17;
    *(v23 + 48) = 0;
    if (v14)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0xAF8AF8AF8AF8AF8BLL * ((v22 - v21) >> 3);
      do
      {
        if (v25 >= v26)
        {
          v27 = *(v19 + 80 * v17 + 56);
          if (v27 + v24 != v23)
          {
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v27 + v24), *v23, *(v23 + 8), (*(v23 + 8) - *v23) >> 2);
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v27 + v24 + 24), *(v23 + 24), *(v23 + 32), (*(v23 + 32) - *(v23 + 24)) >> 2);
            v19 = *(this + 8);
          }
        }

        v28 = *(*(v19 + 80 * v17 + 56) + v24 + 224);
        [v28 width];
        v30 = v29;
        v31 = v47[0];
        v32 = *(v47[0] + v25);
        if (v30 > v32)
        {
          [v28 width];
          v31 = v47[0];
        }

        v31[v25] = v32;
        [v28 layoutVSize];
        v34 = v33;
        v19 = *(this + 8);
        v35 = *(v19 + 80 * v17 + 48);
        if (v34 > v35)
        {
          [v28 layoutVSize];
          v19 = *(this + 8);
        }

        *(v19 + 80 * v17 + 48) = v35;
        ++v25;
        v24 += 280;
      }

      while (v14 != v25);
    }

    ++v17;
  }

  while (v17 != v18);
  v36 = 0;
  v37 = v47[0];
  do
  {
    if (v14)
    {
      v38 = (*(*(this + 8) + 80 * v36 + 56) + 48);
      v39 = v37;
      v40 = v14;
      do
      {
        v41 = *v39++;
        *v38 = v41;
        v38 += 35;
        --v40;
      }

      while (v40);
    }

    ++v36;
  }

  while (v36 != v18);
  if (v37)
  {
LABEL_50:
    v47[1] = v37;
    operator delete(v37);
  }
}

void sub_26C72B2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EQKitLayoutTable::LayoutRow>::push_back[abi:nn200100](uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EQKitLayoutTable::LayoutRow>::__emplace_back_slow_path<EQKitLayoutTable::LayoutRow const&>(a1, a2);
  }

  else
  {
    std::vector<EQKitLayoutTable::LayoutRow>::__construct_one_at_end[abi:nn200100]<EQKitLayoutTable::LayoutRow const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<EQKitLayoutTable::LayoutCell>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<EQKitLayoutTable::LayoutCell>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 280 * a2;
    while (v3 != v7)
    {
      v3 -= 280;
      std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:nn200100]<EQKitLayoutTable::LayoutCell,0>(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void EQKitLayoutTable::generateRowBox(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  EQKit::ILayout::ILayout(a5, 0);
  if (![a2 count])
  {
    v58 = [MEMORY[0x277CCA890] currentHandler];
    [v58 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutTable::generateRowBox(NSArray * description:{NSUInteger, const EQKitLength::Vector &)"), @"EQKitLayoutTable.mm", 236, @"No cell boxes."}];
  }

  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = 56;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  while (1)
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 72) == v16 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v16 + 64) - *(v16 + 56)) >> 3);
    if (v8 >= v17)
    {
      break;
    }

    v18 = [a2 objectAtIndex:v8];
    v19 = EQKitLayoutTable::resolveRowAlignment(v18, a1 + 16, *(a1 + 64) + 80 * a3, *(*(a1 + 64) + 80 * a3 + 56) + v11 - 56, a3);
    if (v19 <= 5)
    {
      if (((1 << v19) & 0x2A) != 0)
      {
        [v18 layoutVSize];
        if (v15 <= v20)
        {
          [v18 layoutVSize];
          v15 = v21;
        }
      }

      else if (((1 << v19) & 0x14) != 0)
      {
        [v18 layoutHeight];
        if (v14 <= v22)
        {
          [v18 layoutHeight];
          v14 = v23;
        }

        [v18 layoutDepth];
        if (v13 <= v24)
        {
          [v18 layoutDepth];
          v13 = v25;
        }

        v26 = *(*(a1 + 64) + 80 * a3 + 56);
        v27 = *(v26 + v11);
        v28 = v27;
        if (v9)
        {
          v28 = v10;
          if (v10 >= v27)
          {
            v28 = *(v26 + v11);
          }
        }

        v9 = 1;
        v10 = v28;
        if (v12 <= v27)
        {
          v12 = *(v26 + v11);
        }
      }
    }

    ++v8;
    v11 += 280;
  }

  if (v15 > 0.0 || v14 > 0.0 || v13 > 0.0)
  {
    if (v15 == 0.0)
    {
      v15 = v13 + v14;
    }

    else if (v14 == 0.0 && v13 == 0.0)
    {
      v13 = v15 * 0.5;
      v14 = v15 * 0.5;
    }

    else if (v13 + v14 <= v15)
    {
      if (v13 + v14 < v15)
      {
        v29 = (v15 - (v13 + v14)) * 0.5;
        v14 = v14 + v29;
        v13 = v13 + v29;
      }
    }

    else
    {
      v15 = v13 + v14;
    }

    v30 = v13 + v14;
    if (v15 != v30)
    {
      v59 = [MEMORY[0x277CCA890] currentHandler];
      [v59 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutTable::generateRowBox(NSArray * description:{NSUInteger, const EQKitLength::Vector &)"), @"EQKitLayoutTable.mm", 299, @"vSize should be sum of vHeight and vDepth."}];
      v15 = v30;
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0;
    v33 = 0;
    v34 = v10 + (v12 - v10) * 0.5;
    for (i = 56; ; i += 280)
    {
      v36 = *(a1 + 64);
      if (*(a1 + 72) == v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = 0xAF8AF8AF8AF8AF8BLL * ((*(v36 + 64) - *(v36 + 56)) >> 3);
      }

      if (v33 >= v37)
      {
        if ([v31 count])
        {
          v57 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v31];
          EQKit::ILayout::ILayout(v62, &v57->super.super);
          EQKit::ILayout::operator=(a5, v62);
          EQKit::ILayout::~ILayout(v62);
        }

        return;
      }

      v38 = [a2 objectAtIndex:v33];
      v39 = EQKitLayoutTable::resolveRowAlignment(v38, a1 + 16, *(a1 + 64) + 80 * a3, *(*(a1 + 64) + 80 * a3 + 56) + i - 56, a3);
      [v38 layoutDepth];
      v41 = v40;
      [v38 layoutVSize];
      v43 = v14 + v41 + 0.0;
      if (v39 <= 2)
      {
        if (v39 != 1)
        {
          if (v39 != 2)
          {
            goto LABEL_54;
          }

          v44 = *(*(*(a1 + 64) + 80 * a3 + 56) + i);
          v45 = v34 + v43 - v14 - v41;
          goto LABEL_51;
        }

        v43 = v43 - v42;
      }

      else
      {
        switch(v39)
        {
          case 3:
            v45 = v43 - v15 * 0.5;
            v44 = v42 * -0.5;
LABEL_51:
            v43 = v45 + v44;
            break;
          case 4:
            v43 = v43 - v14 - v41;
            break;
          case 5:
            v43 = v43 - v15;
            break;
        }
      }

LABEL_54:
      if (v43 == 0.0)
      {
        v46 = v38;
      }

      else
      {
        v46 = [[EQKitVShift alloc] initWithBox:v38 offset:v43];
      }

      v47 = v46;
      [v31 addObject:v46];

      v48 = v33 + 1;
      v49 = *(a1 + 64);
      if (*(a1 + 72) != v49 && v48 < 0xAF8AF8AF8AF8AF8BLL * ((*(v49 + 64) - *(v49 + 56)) >> 3))
      {
        EQKitLayoutManager::lengthForMetric(*(a1 + 8), 15);
        v51 = v50;
        v53 = *a4;
        v52 = a4[1];
        if (v33 < (v52 - *a4) >> 4)
        {
          v54 = EQKitLayoutManager::layoutContext(*(a1 + 8));
          v55 = (v53 + v32);
          goto LABEL_63;
        }

        if (v52 != v53)
        {
          v54 = EQKitLayoutManager::layoutContext(*(a1 + 8));
          v55 = (v52 - 16);
LABEL_63:
          v51 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v55, v54, v51);
        }

        v56 = [[EQKitHSpace alloc] initWithWidth:v51];
        [v31 addObject:v56];
      }

      v32 += 16;
      v33 = v48;
    }
  }
}

void EQKitLayoutTable::generateTableBox(EQKitLayoutManager **this)
{
  objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = EQKitLayoutManager::layoutContext(this[1]);
  if ((*(v2 + 104) & 2) == 0)
  {
    EQKitLayoutContext::pComputeMathAxis(v2);
  }

  v3 = EQKitLayoutManager::layoutContext(this[1]);
  v5 = v3;
  v6 = *(v3 + 80);
  if (*(v3 + 104))
  {
    v4.n128_u64[0] = *(v3 + 112);
  }

  else
  {
    v4.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v3);
  }

  (*(*v6 + 40))(v6, 15, v5 + 8, v4);
  memset(__p, 0, 24);
  std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLength>>(__p, 1uLL);
}

void sub_26C72BEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

EQKit::ILayout *EQKitLayoutTable::layoutTable@<X0>(uint64_t a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  result = EQKit::ILayout::ILayout(a3, 0);
  if (a2)
  {
    v6 = [a2 schemataChildren];
    *(a1 + 88) = 0;
    LODWORD(v15[0]) = 0;
    v7 = *(a1 + 8);
    v8 = *(v7 + 75);
    v13 = EQKitLayoutManager::currentNode(v7);
    v14 = 8;
    if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v8, v8 + 8, &v13, v15))
    {
      *(a1 + 88) = LODWORD(v15[0]) == 2;
    }

    EQKitLayoutTable::generateTableLayout(a1, v6);
    *__p = 0u;
    v17 = 0u;
    *v15 = 0u;
    v9 = *(a1 + 8);
    v10 = *(v9 + 75);
    v13 = EQKitLayoutManager::currentNode(v9);
    v14 = 3;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v10, v10 + 248, &v13, &__p[1]);
    v11 = *(a1 + 8);
    v12 = *(v11 + 75);
    v13 = EQKitLayoutManager::currentNode(v11);
    v14 = 4;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v12, v12 + 272, &v13, v15);
    if ((a1 + 16) != v15)
    {
      std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((a1 + 16), v15[0], v15[1], (v15[1] - v15[0]) >> 2);
      std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((a1 + 40), __p[1], v17, (v17 - __p[1]) >> 2);
    }

    EQKitLayoutTable::generateTableBox(a1);
  }

  return result;
}

void sub_26C72C0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  EQKit::ILayout::~ILayout(va);
  EQKitLayoutTable::Properties::~Properties(va1);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

void *EQKitLayoutTable::layoutPropertiesDescription(EQKitLayoutTable *this, unsigned int **a2)
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"Properties col align"];
  for (i = *a2; i != a2[1]; ++i)
  {
    v5 = *i;
    [v3 appendFormat:@" %d", v5];
  }

  [v3 appendString:{@", row align"}];
  for (j = a2[3]; j != a2[4]; ++j)
  {
    v7 = *j;
    [v3 appendFormat:@" %d", v7];
  }

  return v3;
}

EQKitLayoutTable *EQKitLayoutTable::description(EQKitLayoutTable *this)
{
  v2 = *(this + 8);
  v3 = *(this + 9) - v2;
  if (v3)
  {
    v4 = 0xAF8AF8AF8AF8AF8BLL * ((*(v2 + 64) - *(v2 + 56)) >> 3);
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"Table rows %lu, columns %lu %@\n", 0xCCCCCCCCCCCCCCCDLL * (v3 >> 4), v4, EQKitLayoutTable::layoutPropertiesDescription(this, this + 2)];
  v19 = v5;
  v6 = *(this + 8);
  if (*(this + 9) != v6)
  {
    v7 = 0;
    do
    {
      v8 = v6 + 80 * v7;
      v9 = *(v8 + 48);
      v10 = [MEMORY[0x277CCAB68] stringWithFormat:@"  Row %lu height %f %@\n", v7, v9, EQKitLayoutTable::layoutPropertiesDescription(v5, v8)];
      v11 = v10;
      v12 = 0;
      for (i = 0; ; ++i)
      {
        v14 = *(this + 8);
        v15 = *(this + 9) == v14 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v14 + 64) - *(v14 + 56)) >> 3);
        if (i >= v15)
        {
          break;
        }

        v16 = *(v14 + 80 * v7 + 56) + v12;
        v17 = *(v16 + 48);
        v10 = -[EQKitLayoutTable appendString:](v11, "appendString:", [MEMORY[0x277CCAB68] stringWithFormat:@"    Cell %lu width %f %@\n", i, v17, EQKitLayoutTable::layoutPropertiesDescription(v10, v16)]);
        v12 += 280;
      }

      v5 = [(EQKitLayoutTable *)v19 appendString:v11];
      ++v7;
      v6 = *(this + 8);
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v6) >> 4));
  }

  return v19;
}

EQKitLayoutTable::LayoutCell *EQKitLayoutTable::LayoutCell::LayoutCell(EQKitLayoutTable::LayoutCell *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  EQKitLayoutRow::EQKitLayoutRow((this + 64), 0);
  EQKit::ILayout::ILayout((this + 224), 0);
  return this;
}

void sub_26C72C3E0(_Unwind_Exception *a1)
{
  EQKitLayoutRow::~EQKitLayoutRow((v1 + 64));
  EQKitLayoutTable::Properties::~Properties(v1);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::LayoutCell::~LayoutCell(EQKitLayoutTable::LayoutCell *this)
{
  EQKit::ILayout::~ILayout((this + 224));
  EQKitLayoutRow::~EQKitLayoutRow((this + 64));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void EQKitLayoutTable::LayoutRow::~LayoutRow(EQKitLayoutTable::LayoutRow *this)
{
  v4 = (this + 56);
  std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:nn200100]<EQKitLayoutTable::LayoutCell,0>(uint64_t a1, uint64_t a2)
{
  EQKit::ILayout::~ILayout((a2 + 224));
  EQKitLayoutRow::~EQKitLayoutRow((a2 + 64));
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,EQKitLength<std::pair<EQKitTypes::Attributes::Enum const>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    if (v7 + 6 == a4)
    {
      return 1;
    }

    v9 = v7[6];
    v10 = v7[7];
LABEL_4:
    std::vector<EQKitLength>::__assign_with_size[abi:nn200100]<EQKitLength*,EQKitLength*>(a4, v9, v10, (v10 - v9) >> 4);
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      if (v14 + 6 == a4)
      {
        return 1;
      }

      v9 = v14[6];
      v10 = v14[7];
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t std::vector<EQKitLayoutTable::LayoutCell>::__emplace_back_slow_path<EQKitLayoutTable::LayoutCell>(uint64_t a1, const EQKitLayoutTable::LayoutCell *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  EQKitLayoutTable::LayoutCell::LayoutCell((280 * v2), a2);
  v15 = 280 * v2 + 280;
  v7 = *(a1 + 8);
  v8 = (280 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(&v13);
  return v12;
}

void sub_26C72C744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

EQKitLayoutTable::LayoutCell *EQKitLayoutTable::LayoutCell::LayoutCell(EQKitLayoutTable::LayoutCell *this, const EQKitLayoutTable::LayoutCell *a2)
{
  v4 = std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100](this, a2);
  std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100](v4 + 3, a2 + 3);
  *(this + 3) = *(a2 + 3);
  EQKitLayoutRow::EQKitLayoutRow((this + 64), (a2 + 64));
  EQKit::ILayout::ILayout((this + 224), (a2 + 224));
  return this;
}

void sub_26C72C7B0(_Unwind_Exception *a1)
{
  EQKitLayoutRow::~EQKitLayoutRow((v1 + 64));
  EQKitLayoutTable::Properties::~Properties(v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>(uint64_t a1, EQKitLayoutTable::LayoutCell *a2, EQKitLayoutTable::LayoutCell *a3, EQKitLayoutTable::LayoutCell *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      EQKitLayoutTable::LayoutCell::LayoutCell(this, v8);
      v8 = (v8 + 280);
      this = (this + 280);
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:nn200100]<EQKitLayoutTable::LayoutCell,0>(a1, v6);
      v6 = (v6 + 280);
    }
  }
}

void **std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(void **a1)
{
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EQKitLayoutTable::LayoutCell>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 280;
    std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:nn200100]<EQKitLayoutTable::LayoutCell,0>(v4, i - 280);
  }
}

uint64_t std::vector<EQKitLayoutTable::LayoutRow>::__construct_one_at_end[abi:nn200100]<EQKitLayoutTable::LayoutRow const&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100](v4, a2);
  std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100](v4 + 3, a2 + 3);
  v5 = a2[6];
  v4[7] = 0;
  v4[6] = v5;
  v4[8] = 0;
  v4[9] = 0;
  result = std::vector<EQKitLayoutTable::LayoutCell>::__init_with_size[abi:nn200100]<EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>((v4 + 7), a2[7], a2[8], 0xAF8AF8AF8AF8AF8BLL * ((a2[8] - a2[7]) >> 3));
  *(a1 + 8) = v4 + 10;
  return result;
}

void sub_26C72C9CC(_Unwind_Exception *a1)
{
  EQKitLayoutTable::Properties::~Properties(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLayoutTable::LayoutRow>::__emplace_back_slow_path<EQKitLayoutTable::LayoutRow const&>(uint64_t *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutRow>>(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100](v7, a2);
  std::vector<EQKitTypes::Crossout::Enum>::vector[abi:nn200100]((v7 + 24), a2 + 3);
  v8 = a2[6];
  *(v7 + 56) = 0;
  *(v7 + 48) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<EQKitLayoutTable::LayoutCell>::__init_with_size[abi:nn200100]<EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>(v7 + 56, a2[7], a2[8], 0xAF8AF8AF8AF8AF8BLL * ((a2[8] - a2[7]) >> 3));
  *&v17 = v17 + 80;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<EQKitLayoutTable::LayoutRow>::~__split_buffer(&v15);
  return v14;
}

void sub_26C72CB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  EQKitLayoutTable::Properties::~Properties(v12);
  std::__split_buffer<EQKitLayoutTable::LayoutRow>::~__split_buffer(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLayoutTable::LayoutCell>::__init_with_size[abi:nn200100]<EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitLayoutTable::LayoutCell>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<EQKitLayoutTable::LayoutCell>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutRow>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v11[3] = v4;
    v11[4] = v5;
    v7 = a2;
    v8 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v8;
      a4[2] = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v8 + 24);
      a4[5] = *(v8 + 40);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      a4[6] = *(v8 + 48);
      a4[8] = 0;
      a4[9] = 0;
      a4[7] = 0;
      *(a4 + 7) = *(v8 + 56);
      a4[9] = *(v8 + 72);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      v8 += 80;
      a4 += 10;
    }

    while (v8 != a3);
    while (v7 != a3)
    {
      v11[0] = (v7 + 56);
      std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:nn200100](v11);
      v9 = *(v7 + 24);
      if (v9)
      {
        *(v7 + 32) = v9;
        operator delete(v9);
      }

      v10 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v10;
        operator delete(v10);
      }

      v7 += 80;
    }
  }
}

uint64_t std::__split_buffer<EQKitLayoutTable::LayoutRow>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 80);
    *(a1 + 16) = i - 80;
    v8 = (i - 24);
    std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:nn200100](&v8);
    v5 = *(i - 56);
    if (v5)
    {
      *(i - 48) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 72) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26CA639B0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26CA639B0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void **std::vector<EQKitLayoutTable::LayoutCell>::__append(void **result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAF8AF8AF8AF8AF8BLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 280 * a2);
      v11 = 280 * a2;
      do
      {
        result = EQKitLayoutTable::LayoutCell::LayoutCell(v5);
        v5 = (v5 + 280);
        v11 -= 280;
      }

      while (v11);
      v5 = v10;
    }

    *(v3 + 8) = v5;
  }

  else
  {
    v6 = 0xAF8AF8AF8AF8AF8BLL * ((v5 - *result) >> 3);
    if (v6 + a2 > 0xEA0EA0EA0EA0EALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xAF8AF8AF8AF8AF8BLL * ((v4 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x75075075075075)
    {
      v9 = 0xEA0EA0EA0EA0EALL;
    }

    else
    {
      v9 = v8;
    }

    v22 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(result, v9);
    }

    v12 = 280 * v6;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v13 = 280 * a2;
    v14 = (v12 + 280 * a2);
    do
    {
      EQKitLayoutTable::LayoutCell::LayoutCell(v12);
      v12 += 280;
      v13 -= 280;
    }

    while (v13);
    *&v21 = v14;
    v15 = *(v3 + 8);
    v16 = (v20 + *v3 - v15);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>(v3, *v3, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    *(v3 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(&v19);
  }

  return result;
}

void sub_26C72D18C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t EQKit::Font::Collection::newAttributedStringWithFont(EQKit::Font::Collection *this, NSString *a2, const __CTFont *a3)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [v5 initWithObjectsAndKeys:{a3, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], 0}];
  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a2 attributes:v6];

  return v7;
}

uint64_t EQKit::Font::Collection::newAttributedStringWithFont(EQKit::Font::Collection *this, int a2, const __CTFont *a3)
{
  if ((a2 - 0x10000) >> 20)
  {
    v6 = 1;
    LOWORD(v5) = a2;
  }

  else
  {
    v5 = ((a2 - 0x10000) >> 10) | 0xFFFFD800;
    v10[1] = a2 & 0x3FF | 0xDC00;
    v6 = 2;
  }

  v10[0] = v5;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v10 length:v6];
  v8 = (*(*this + 144))(this, v7, a3);

  return v8;
}

EQKit::Font::CompositeStretch *EQKit::Font::CompositeStretch::CompositeStretch(EQKit::Font::CompositeStretch *this, CFTypeRef cf, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *this = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return this;
}

{
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *this = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return this;
}

void *EQKit::Font::CompositeStretch::CompositeStretch(void *this)
{
  *this = 0;
  this[1] = -1;
  return this;
}

{
  *this = 0;
  this[1] = -1;
  return this;
}

EQKit::Font::CompositeStretch *EQKit::Font::CompositeStretch::CompositeStretch(EQKit::Font::CompositeStretch *this, const EQKit::Font::CompositeStretch *a2)
{
  v4 = *a2;
  *this = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(this + 1) = *(a2 + 1);
  return this;
}

uint64_t EQKit::Font::CompositeStretch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
  }

  return a1;
}

void EQKit::Font::CompositeStretch::~CompositeStretch(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void EQKit::Font::CompositeStretch::defineCompositeStretch(CFStringRef name@<X0>, const __CFString *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v9 = a2;
  v30 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = -1;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (a2)
  {
    LOWORD(v22) = a2;
    std::vector<unsigned short>::push_back[abi:nn200100](&v27, &v22);
  }

  if (a3)
  {
    LOWORD(v22) = a3;
    std::vector<unsigned short>::push_back[abi:nn200100](&v27, &v22);
  }

  if (a4)
  {
    LOWORD(v22) = a4;
    std::vector<unsigned short>::push_back[abi:nn200100](&v27, &v22);
  }

  if (a5)
  {
    LOWORD(v22) = a5;
    std::vector<unsigned short>::push_back[abi:nn200100](&v27, &v22);
  }

  if (name)
  {
    if (v28 != v27)
    {
      v12 = CTFontDescriptorCreateWithNameAndSize(name, 12.0);
      v13 = CTFontCreateWithFontDescriptor(v12, 12.0, 0);
      CFRelease(v12);
      if (v13)
      {
        MEMORY[0x28223BE20]();
        v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (!CTFontGetGlyphsForCharacters(v13, v27, v15, v16))
        {
LABEL_23:
          CFRelease(v13);
          goto LABEL_24;
        }

        if (v9)
        {
          v17 = *v15;
          v18 = 1;
          if (a3)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v18 = 0;
          v17 = -1;
          if (a3)
          {
LABEL_15:
            v19 = v15[v18++];
            if (a4)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          }
        }

        v19 = -1;
        if (a4)
        {
LABEL_16:
          v20 = v15[v18++];
          if (a5)
          {
LABEL_17:
            v21 = v15[v18];
LABEL_22:
            v23 = v17;
            v24 = v19;
            v25 = v20;
            v26 = v21;
            v22 = name;
            CFRetain(name);
            EQKit::Font::CompositeStretch::operator=(a6, &v22);
            CFRelease(name);
            goto LABEL_23;
          }

LABEL_21:
          v21 = -1;
          goto LABEL_22;
        }

LABEL_20:
        v20 = -1;
        if (a5)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_24:
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_26C72DD58(_Unwind_Exception *a1)
{
  CFRelease(v2);
  v5 = *(v3 - 112);
  if (v5)
  {
    *(v3 - 104) = v5;
    operator delete(v5);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::push_back[abi:nn200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void EQKit::Font::Manager::Manager(EQKit::Font::Manager *this, NSDictionary *a2, const EQKit::Environment::Version *a3)
{
  *this = &unk_287D33B78;
  *(this + 2) = 0;
  v4 = objc_opt_class();
  EQKitUtilDynamicCast(v4, [(NSDictionary *)a2 objectForKey:@"STIX"]);
  operator new();
}

void EQKit::Font::Manager::~Manager(EQKit::Font::Manager *this)
{
  *this = &unk_287D33B78;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_287D33B78;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_287D33B78;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x26D6A9A30);
}

void EQKit::Font::STIXCollection::STIXCollection(NSDictionary *this, NSDictionary *a2, const EQKit::Environment::Version *a3, const EQKitCacheLRUCounter *a4, const EQKitCacheLRUCounter *a5)
{
  isa = a2->super.isa;
  this->super.isa = a2->super.isa;
  *(this + *(isa - 27)) = a2[1];
  EQKit::Font::STIXCollection::SizeVariant::SizeVariant(&this[21], a5);
}

void sub_26C72E7E0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(v1 + 304, *v3);
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(v1 + 280, *v2);
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((v1 + 224));
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((v1 + 168));
  _Unwind_Resume(a1);
}

void *EQKit::Font::STIXCollection::setupRequiredFontInfos(EQKit::Font::STIXCollection *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = dispatch_group_create();
  v2 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = &unk_287DDCAB0;
    _os_log_impl(&dword_26C6F3000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "#STIX downloading fonts: %{public}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [&unk_287DDCAB0 countByEnumeratingWithState:&v17 objects:buf count:16];
  if (v3)
  {
    v4 = *v18;
    v5 = *MEMORY[0x277CC4908];
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(&unk_287DDCAB0);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v22 = v5;
        v23 = v7;
        v21 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1]);
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        dispatch_group_enter(v1);
        *v13 = 0;
        v14 = v13;
        v15 = 0x2020000000;
        v16 = 0;
        progressBlock[0] = MEMORY[0x277D85DD0];
        progressBlock[1] = 3221225472;
        progressBlock[2] = ___ZL22_ensureFontsDownloadedP7NSArrayIP8NSStringE_block_invoke;
        progressBlock[3] = &unk_279D46748;
        progressBlock[4] = v7;
        progressBlock[5] = v2;
        progressBlock[6] = v1;
        progressBlock[7] = v13;
        CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v8, 0, progressBlock);
        _Block_object_dispose(v13, 8);
        ++v6;
      }

      while (v3 != v6);
      v3 = [&unk_287DDCAB0 countByEnumeratingWithState:&v17 objects:buf count:16];
    }

    while (v3);
  }

  v9 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(v1, v9))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      EQKit::Font::STIXCollection::setupRequiredFontInfos();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_26C6F3000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "#STIX font Download completed.", v13, 2u);
    }

    if ([v2 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      EQKit::Font::STIXCollection::setupRequiredFontInfos(v2);
    }
  }

  *(this + 376) = 1;
  _fontInfoWithName(this + 2, @"STIXGeneral-Italic");
  _fontInfoWithName(this + 3, @"STIXGeneral-Bold");
  _fontInfoWithName(this + 4, @"STIXGeneral-BoldItalic");
  _fontInfoWithName(this + 1, @"STIXGeneral-Regular");
  _fontInfoWithName(this + 6, @"STIXVariants-Bold");
  _fontInfoWithName(this + 5, @"STIXVariants-Regular");
  _fontInfoWithName(this + 17, @"STIXIntegralsUp-Regular");
  _fontInfoWithName(this + 18, @"STIXIntegralsUp-Bold");
  _fontInfoWithName(this + 15, @"STIXIntegralsUpD-Regular");
  _fontInfoWithName(this + 16, @"STIXIntegralsUpD-Bold");
  _fontInfoWithName(this + 19, @"STIXIntegralsUpSm-Regular");
  _fontInfoWithName(this + 20, @"STIXIntegralsUpSm-Bold");
  _fontInfoWithName(this + 11, @"STIXIntegralsD-Regular");
  _fontInfoWithName(this + 12, @"STIXIntegralsD-Bold");
  _fontInfoWithName(this + 13, @"STIXIntegralsSm-Regular");
  _fontInfoWithName(this + 14, @"STIXIntegralsSm-Bold");
  _fontInfoWithName(this + 8, @"STIXNonUnicode-Italic");
  _fontInfoWithName(this + 9, @"STIXNonUnicode-Bold");
  _fontInfoWithName(this + 10, @"STIXNonUnicode-BoldItalic");
  _fontInfoWithName(this + 7, @"STIXNonUnicode-Regular");
  _fontInfoWithName(this + 21, @"STIXGeneral-Regular");
  _fontInfoWithName(this + 22, @"STIXSizeOneSym-Regular");
  _fontInfoWithName(this + 23, @"STIXSizeTwoSym-Regular");
  _fontInfoWithName(this + 24, @"STIXSizeThreeSym-Regular");
  _fontInfoWithName(this + 25, @"STIXSizeFourSym-Regular");
  _fontInfoWithName(this + 26, @"STIXSizeFiveSym-Regular");
  _fontInfoWithName(this + 28, @"STIXGeneral-Bold");
  _fontInfoWithName(this + 29, @"STIXSizeOneSym-Bold");
  _fontInfoWithName(this + 30, @"STIXSizeTwoSym-Bold");
  _fontInfoWithName(this + 31, @"STIXSizeThreeSym-Bold");
  return _fontInfoWithName(this + 32, @"STIXSizeFourSym-Bold");
}

void sub_26C72EE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN5EQKit4Font14STIXCollectionC2EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    v3 = *(a2 + 20);
    if (*a2)
    {
      v4 = [*a2 UTF8String];
    }

    else
    {
      v4 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&v5, v4);
    v6[0] = v3;
    v6[1] = 13;
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v5;
    }

    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v2 + 48, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void sub_26C72EF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN5EQKit4Font14STIXCollectionC2EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(*(*(a1 + 32) + 392), a2, &v6);
  v4 = v6;
  if (v6)
  {
    v4 = *v6;
  }

  *a3 = v4;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return 1;
}

void EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
  v7 = v6;
  if (v6)
  {
    v6[8] = **a1;
    v8 = v6[6];
    v9 = v6[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock((a1 + 9));
  if (!v7 && (a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v10 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
    if (v10)
    {
      v10[8] = **a1;
      v11 = v10[6];
      v12 = v10[7];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = **a1;
      v13 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(a1 + 1, a2);
      v14 = v13[7];
      v13[6] = 0;
      v13[7] = 0;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      v13[8] = v15;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v11 = 0;
      v12 = 0;
    }

    *a3 = v11;
    a3[1] = v12;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    pthread_rwlock_unlock((a1 + 9));
  }
}

void sub_26C72F1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN5EQKit4Font14STIXCollectionC2EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke_3(int a1, EQKit::Font::SlantKey *this, double *a3)
{
  v5 = EQKit::Font::SlantKey::newFont(this);
  v14 = v5;
  if (v5)
  {
    v6 = v5;
    v12 = 0.0;
    v13 = 0.0;
    v11 = *(this + 8);
    v7 = EQKit::Font::STIXCollection::analyzeGlyphForSlantCorrection(v5, &v11, &v14, &v13, &v12);
    v9 = v12;
    v8 = v13;
    if (!v7)
    {
      v9 = 0.0;
      v8 = 0.0;
    }

    *a3 = v8;
    a3[1] = v9;
    CFRelease(v6);
  }

  return 1;
}

const __CFString *EQKit::Font::SlantKey::newFont(CGFloat *this)
{
  result = *this;
  if (result)
  {
    v3 = CTFontDescriptorCreateWithNameAndSize(result, this[1]);
    v4 = CTFontCreateWithFontDescriptor(v3, this[1], 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

BOOL EQKit::Font::STIXCollection::analyzeGlyphForSlantCorrection(EQKit::Font::STIXCollection *this, const unsigned __int16 *a2, const __CTFont **a3, double *a4, double *a5)
{
  if (!*a3)
  {
    return 0;
  }

  v8 = EQKitPath::newPathFromGlyphWithFont(*a2, *a3, a3);
  if (!*a3)
  {
    v10 = 0.0;
    if (v8)
    {
      goto LABEL_4;
    }

    return 0;
  }

  SlantAngle = CTFontGetSlantAngle(*a3);
  v10 = fabs(tan(SlantAngle * 3.14159265 / 180.0));
  if (!v8)
  {
    return 0;
  }

LABEL_4:
  v11 = *v8 != 0;
  if (*v8)
  {
    if (v10 == 0.0)
    {
      *a4 = 0.0;
      *a5 = 0.0;
    }

    else
    {
      EQKitPath::extractPath(v8);
      v12 = *(v8 + 1);
      v13 = *(v8 + 2);
      if (v12 == v13)
      {
        v18 = 0.0;
        v15 = 2.22507386e-308;
        v16 = 1.79769313e308;
        v17 = 2.22507386e-308;
        v19 = 1.79769313e308;
        v25 = 1.79769313e308;
      }

      else
      {
        v14 = 0.0;
        v15 = 2.22507386e-308;
        v16 = 1.79769313e308;
        v17 = 2.22507386e-308;
        v18 = 0.0;
        v19 = 1.79769313e308;
        v20 = *(v8 + 1);
        do
        {
          v22 = *v20;
          v21 = v20[1];
          if (v21 > v15)
          {
            v15 = v20[1];
          }

          if (v21 < v16)
          {
            v16 = v20[1];
          }

          if (v22 < v19 || (v22 == v19 ? (v23 = v21 < v14) : (v23 = 0), v23))
          {
            v19 = *v20;
            v14 = v20[1];
          }

          if (v22 > v17 || (v22 == v17 ? (v24 = v21 < v18) : (v24 = 0), v24))
          {
            v18 = v20[1];
            v17 = *v20;
          }

          v20 += 2;
        }

        while (v20 != v13);
        if (v12 == v13)
        {
          v25 = 1.79769313e308;
        }

        else
        {
          v25 = 1.79769313e308;
          do
          {
            v26 = v12[1];
            if (v26 <= v14)
            {
              v27 = *v12 + (v26 - v16) * v10;
              if (v27 < v25)
              {
                v25 = v27;
              }
            }

            v12 += 2;
          }

          while (v12 != v13);
        }
      }

      v28 = v17 + (v18 - v16) * v10;
      v29 = (v19 + v17) * 0.5;
      *a5 = (v28 + v25) * 0.5 - v29;
      *a4 = (v28 - (v15 - v16) * v10 + v25 - (v15 - v16) * v10) * 0.5 - v29;
    }
  }

  EQKitPath::~EQKitPath(v8);
  MEMORY[0x26D6A9A30]();
  return v11;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::setThreshold(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::prune(a1);
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::setThreshold(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::prune(a1);
}

void sub_26C72FBD4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(v1 + 304, *v4);
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(v1 + 280, *v3);
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant(v2);
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((v1 + 168));
  _Unwind_Resume(a1);
}

void ___ZN5EQKit4Font14STIXCollectionC1EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    v3 = *(a2 + 20);
    if (*a2)
    {
      v4 = [*a2 UTF8String];
    }

    else
    {
      v4 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&v5, v4);
    v6[0] = v3;
    v6[1] = 13;
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v5;
    }

    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v2 + 48, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void sub_26C72FDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN5EQKit4Font14STIXCollectionC1EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(*(*(a1 + 32) + 392), a2, &v6);
  v4 = v6;
  if (v6)
  {
    v4 = *v6;
  }

  *a3 = v4;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return 1;
}

uint64_t ___ZN5EQKit4Font14STIXCollectionC1EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke_3(int a1, EQKit::Font::SlantKey *this, double *a3)
{
  v5 = EQKit::Font::SlantKey::newFont(this);
  v14 = v5;
  if (v5)
  {
    v6 = v5;
    v12 = 0.0;
    v13 = 0.0;
    v11 = *(this + 8);
    v7 = EQKit::Font::STIXCollection::analyzeGlyphForSlantCorrection(v5, &v11, &v14, &v13, &v12);
    v9 = v12;
    v8 = v13;
    if (!v7)
    {
      v9 = 0.0;
      v8 = 0.0;
    }

    *a3 = v8;
    a3[1] = v9;
    CFRelease(v6);
  }

  return 1;
}

void EQKit::Font::STIXCollection::~STIXCollection(EQKit::Font::STIXCollection *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 216)) = a2[1];
  v4 = *(this + 1);
  if (v4)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v4);
    MEMORY[0x26D6A9A30]();
    *(this + 1) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v5);
    MEMORY[0x26D6A9A30]();
    *(this + 3) = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v6);
    MEMORY[0x26D6A9A30]();
    *(this + 2) = 0;
  }

  v7 = *(this + 4);
  if (v7)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v7);
    MEMORY[0x26D6A9A30]();
    *(this + 4) = 0;
  }

  v8 = *(this + 7);
  if (v8)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v8);
    MEMORY[0x26D6A9A30]();
    *(this + 7) = 0;
  }

  v9 = *(this + 9);
  if (v9)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v9);
    MEMORY[0x26D6A9A30]();
    *(this + 9) = 0;
  }

  v10 = *(this + 8);
  if (v10)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v10);
    MEMORY[0x26D6A9A30]();
    *(this + 8) = 0;
  }

  v11 = *(this + 10);
  if (v11)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v11);
    MEMORY[0x26D6A9A30]();
    *(this + 10) = 0;
  }

  v12 = *(this + 11);
  if (v12)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v12);
    MEMORY[0x26D6A9A30]();
    *(this + 11) = 0;
  }

  v13 = *(this + 12);
  if (v13)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v13);
    MEMORY[0x26D6A9A30]();
    *(this + 12) = 0;
  }

  v14 = *(this + 13);
  if (v14)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v14);
    MEMORY[0x26D6A9A30]();
    *(this + 13) = 0;
  }

  v15 = *(this + 14);
  if (v15)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v15);
    MEMORY[0x26D6A9A30]();
    *(this + 14) = 0;
  }

  v16 = *(this + 15);
  if (v16)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v16);
    MEMORY[0x26D6A9A30]();
    *(this + 15) = 0;
  }

  v17 = *(this + 16);
  if (v17)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v17);
    MEMORY[0x26D6A9A30]();
    *(this + 16) = 0;
  }

  v18 = *(this + 17);
  if (v18)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v18);
    MEMORY[0x26D6A9A30]();
    *(this + 17) = 0;
  }

  v19 = *(this + 18);
  if (v19)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v19);
    MEMORY[0x26D6A9A30]();
    *(this + 18) = 0;
  }

  v20 = *(this + 19);
  if (v20)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v20);
    MEMORY[0x26D6A9A30]();
    *(this + 19) = 0;
  }

  v21 = *(this + 20);
  if (v21)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v21);
    MEMORY[0x26D6A9A30]();
    *(this + 20) = 0;
  }

  v22 = *(this + 5);
  if (v22)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v22);
    MEMORY[0x26D6A9A30]();
    *(this + 5) = 0;
  }

  v23 = *(this + 6);
  if (v23)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v23);
    MEMORY[0x26D6A9A30]();
    *(this + 6) = 0;
  }

  v24 = *(this + 41);
  if (v24)
  {
    EQKit::Font::CharacterProperty::Map::~Map(v24);
    MEMORY[0x26D6A9A30]();
  }

  v25 = *(this + 42);
  if (v25)
  {
    MEMORY[0x26D6A9A30](v25, 0x1000C404B66DB26);
  }

  v26 = *(this + 43);
  if (v26)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(*(this + 43), *(v26 + 8));
    MEMORY[0x26D6A9A30](v26, 0x1020C4062D53EE8);
  }

  v27 = *(this + 44);
  if (v27)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(*(this + 44), *(v27 + 8));
    MEMORY[0x26D6A9A30](v27, 0x1020C4062D53EE8);
  }

  v28 = *(this + 45);
  if (v28)
  {
    v29 = *v28;
    if (*v28)
    {
      *(v28 + 8) = v29;
      operator delete(v29);
    }

    MEMORY[0x26D6A9A30](v28, 0x10C402FEFCB83);
  }

  v30 = *(this + 46);
  if (v30)
  {
    v31 = *v30;
    if (*v30)
    {
      *(v30 + 8) = v31;
      operator delete(v31);
    }

    MEMORY[0x26D6A9A30](v30, 0x10C402FEFCB83);
  }

  v32 = *(this + 49);
  if (v32)
  {
    v33 = EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::~EQKitCache(v32);
    MEMORY[0x26D6A9A30](v33, 0x10E0C40B27302BALL);
  }

  v34 = *(this + 48);
  if (v34)
  {
    v35 = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::~EQKitCache(v34);
    MEMORY[0x26D6A9A30](v35, 0x10E0C40B27302BALL);
  }

  v36 = *(this + 50);
  if (v36)
  {
    v37 = EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::~EQKitCache(v36);
    MEMORY[0x26D6A9A30](v37, 0x10E0C40B27302BALL);
  }

  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(this + 304, *(this + 39));
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(this + 280, *(this + 36));
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((this + 224));
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((this + 168));
}

void EQKit::Font::STIXCollection::~STIXCollection(EQKit::Font::STIXCollection *this)
{
}

{

  JUMPOUT(0x26D6A9A30);
}

void virtual thunk toEQKit::Font::STIXCollection::~STIXCollection(EQKit::Font::STIXCollection *this)
{
}

{

  JUMPOUT(0x26D6A9A30);
}

uint64_t EQKit::Font::STIXCollection::pruneCaches(uint64_t ***this)
{
  EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::prune(this[49]);
  EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::prune(this[48]);
  EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(this[27]);
  v2 = this[34];

  return EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(v2);
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v16 = 0;
      v5 = 0uLL;
      v15 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[8];
          EQKit::StemStretch::Key::Key(v14, (v6 + 2));
          v14[4] = (v4 - v7);
          std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::push_back[abi:nn200100](&v15, v14);
          EQKit::StemStretch::Key::~Key(v14);
          v6 = *v6;
        }

        while (v6);
        v5 = v15;
      }

      v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v17 = EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::compareKeyLRU;
      if (*(&v5 + 1) == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(v5, *(&v5 + 1), &v17, v9, 1);
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v15 + 1) - v15) >> 3);
      v11 = a1[8];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        v13 = 40 * v11;
        do
        {
          if (std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, v15 + v13))
          {
            std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(a1 + 1, v15 + v13);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      *(a1 + 48) = 0;
      v14[0] = &v15;
      std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:nn200100](v14);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_26C7305A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v16 = 0;
      v5 = 0uLL;
      v15 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[7];
          EQKit::StemStretch::Key::Key(v14, (v6 + 2));
          v14[4] = (v4 - v7);
          std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::push_back[abi:nn200100](&v15, v14);
          EQKit::StemStretch::Key::~Key(v14);
          v6 = *v6;
        }

        while (v6);
        v5 = v15;
      }

      v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v17 = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::compareKeyLRU;
      if (*(&v5 + 1) == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(v5, *(&v5 + 1), &v17, v9, 1);
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v15 + 1) - v15) >> 3);
      v11 = a1[8];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        v13 = 40 * v11;
        do
        {
          if (std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, v15 + v13))
          {
            std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(a1 + 1, v15 + v13);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      *(a1 + 48) = 0;
      v14[0] = &v15;
      std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:nn200100](v14);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_26C730748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void *_fontInfoWithName(void *result, const __CFString *a2)
{
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t EQKit::Font::STIXCollection::characterPropertyLengthForFont(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 328);
  if (v4)
  {
    v7[0] = a4;
    v7[1] = a2;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v5 = std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v4 + 24, v7);
    if (v4 + 32 == v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5 + 64;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v4;
}

void sub_26C7308A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Font::STIXCollection::characterPropertyBoolForFont(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v6 = *(a1 + 328);
  if (v6)
  {
    v10[0] = a4;
    v10[1] = a2;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v7 = std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v6, v10);
    v8 = v6 + 8;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v8 != v7)
    {
      a5 = *(v7 + 64);
    }
  }

  return a5 & 1;
}