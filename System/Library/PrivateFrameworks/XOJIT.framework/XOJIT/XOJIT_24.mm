uint64_t llvm::StringMap<anonymous namespace::AsmParser::DirectiveKind,llvm::MallocAllocator>::operator[](llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  v7 = *a1;
  v8 = v6;
  v9 = *(*a1 + 8 * v6);
  if (v9 == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    return v9 + 8;
  }

  v10 = operator new(a3 + 17, 8uLL);
  v11 = v10;
  v12 = v10 + 16;
  if (a3)
  {
    memcpy(v10 + 16, a2, a3);
  }

  v12[a3] = 0;
  *v11 = a3;
  *(v11 + 2) = 0;
  *(v7 + 8 * v8) = v11;
  ++*(a1 + 3);
  for (i = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v8)); ; ++i)
  {
    v9 = *i;
    if (*i && v9 != -8)
    {
      break;
    }
  }

  return v9 + 8;
}

void llvm::MCAsmMacro::~MCAsmMacro(llvm::MCAsmMacro *this)
{
  v2 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 32);
  std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 48;
        v7 = (v4 - 32);
        std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::AsmToken>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<llvm::AsmToken>::__base_destruct_at_end[abi:nn200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 40)
  {
    if (*(i - 8) >= 0x41u)
    {
      result = *(i - 16);
      if (result)
      {
        result = MEMORY[0x277C69E10](result, 0x1000C8000313F17);
      }
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t anonymous namespace::AsmParser::parseCppHashLineFilenameComment(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 184))(a1);
  v6 = *((*(*a1 + 40))(a1) + 8);
  v9 = *(v6 + 24);
  v7 = (v6 + 24);
  v8 = v9;
  if (*(v7 + 2) >= 0x41u)
  {
    v7 = v8;
  }

  v10 = *v7;
  (*(*a1 + 184))(a1);
  v11 = *((*(*a1 + 40))(a1) + 8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  result = (*(*a1 + 184))(a1);
  if (a3)
  {
    v15 = v13 - 2;
    if (v13)
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = v12;
    }

    if (v13 - (v13 != 0) < v15)
    {
      v15 = v13 - (v13 != 0);
    }

    *(a1 + 424) = v16;
    *(a1 + 432) = v15;
    *(a1 + 440) = v10;
    *(a1 + 448) = a2;
    *(a1 + 456) = *(a1 + 280);
    if (!*(a1 + 472))
    {
      *(a1 + 464) = v16;
      *(a1 + 472) = v15;
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIfb(uint64_t *a1, char a2)
{
  std::vector<llvm::AsmCond>::push_back[abi:nn200100]((a1 + 37), (a1 + 284));
  *(a1 + 71) = 1;
  v4 = *a1;
  if (*(a1 + 289) == 1)
  {
    (*(v4 + 224))(a1);
    return 0;
  }

  else
  {
    (*(v4 + 200))(a1);
    v7 = v6;
    if (llvm::MCAsmParser::parseEOL(a1))
    {
      return 1;
    }

    else
    {
      result = 0;
      v8 = (v7 == 0) ^ a2;
      *(a1 + 288) = v8 ^ 1;
      *(a1 + 289) = v8;
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIfc(_BYTE *a1, char a2)
{
  std::vector<llvm::AsmCond>::push_back[abi:nn200100]((a1 + 296), a1 + 284);
  *(a1 + 71) = 1;
  if (a1[289] == 1)
  {
    (*(*a1 + 224))(a1);
    return 0;
  }

  else
  {
    v5 = *(*((*(*a1 + 40))(a1) + 8) + 8);
    while (1)
    {
      v6 = **(a1 + 6);
      v7 = v6 > 0x19;
      v8 = (1 << v6) & 0x2000201;
      if (!v7 && v8 != 0)
      {
        break;
      }

      llvm::MCAsmLexer::Lex((a1 + 40));
    }

    v10 = *(*((*(*a1 + 40))(a1) + 8) + 8) - v5;
    v20[0] = v5;
    v20[1] = v10;
    v21[0] = "expected comma";
    v22 = 259;
    if (llvm::MCAsmParser::parseToken(a1, 25, v21))
    {
      return 1;
    }

    v21[0] = (*(*a1 + 200))(a1);
    v21[1] = v12;
    if (llvm::MCAsmParser::parseEOL(a1))
    {
      return 1;
    }

    else
    {
      v13 = llvm::StringRef::trim(v20, " \t\n\v\f\r", 6);
      v15 = v14;
      v16 = llvm::StringRef::trim(v21, " \t\n\v\f\r", 6);
      if (v15 == v17)
      {
        if (v15)
        {
          v18 = memcmp(v13, v16, v15) == 0;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
      }

      result = 0;
      v19 = v18 ^ a2;
      a1[288] = v19 ^ 1;
      a1[289] = v19;
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIfeqs(uint64_t a1, int a2)
{
  if (**(a1 + 48) != 3)
  {
    goto LABEL_24;
  }

  v4 = (*(*a1 + 40))(a1);
  v5 = *(*(v4 + 8) + 16);
  v6 = v5 != 0;
  if (v5)
  {
    v7 = (*(*(v4 + 8) + 8) + 1);
  }

  else
  {
    v7 = *(*(v4 + 8) + 8);
  }

  if (v5 - 1 < v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 - 1;
  }

  if (v8 >= v5)
  {
    v9 = *(*(v4 + 8) + 16);
  }

  else
  {
    v9 = v8;
  }

  (*(*a1 + 184))(a1);
  if (**(a1 + 48) != 25)
  {
    if (a2)
    {
      v17 = "expected comma after first string for '.ifeqs' directive";
    }

    else
    {
      v17 = "expected comma after first string for '.ifnes' directive";
    }

    goto LABEL_30;
  }

  (*(*a1 + 184))(a1);
  if (**(a1 + 48) != 3)
  {
LABEL_24:
    if (a2)
    {
      v17 = "expected string parameter for '.ifeqs' directive";
    }

    else
    {
      v17 = "expected string parameter for '.ifnes' directive";
    }

LABEL_30:
    v21 = v17;
    v22 = 259;
    v18 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v18 + 96), &v21, 0, 0);
    return 1;
  }

  v10 = (*(*a1 + 40))(a1);
  v11 = *(*(v10 + 8) + 16);
  v12 = v11 != 0;
  if (v11)
  {
    v13 = (*(*(v10 + 8) + 8) + 1);
  }

  else
  {
    v13 = *(*(v10 + 8) + 8);
  }

  if (v11 - 1 < v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11 - 1;
  }

  if (v14 >= v11)
  {
    v14 = *(*(v10 + 8) + 16);
  }

  v15 = v14 - v12;
  (*(*a1 + 184))(a1);
  std::vector<llvm::AsmCond>::push_back[abi:nn200100](a1 + 296, (a1 + 284));
  v16 = 1;
  *(a1 + 284) = 1;
  if (v9 - v6 == v15)
  {
    if (v9 != v6)
    {
      v16 = memcmp(v7, v13, v9 - v6) == 0;
    }
  }

  else
  {
    v16 = 0;
  }

  result = 0;
  v20 = v16 ^ a2;
  *(a1 + 288) = v20 ^ 1;
  *(a1 + 289) = v20;
  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIfdef(uint64_t *a1, int a2)
{
  v13 = 0;
  v14 = 0;
  std::vector<llvm::AsmCond>::push_back[abi:nn200100]((a1 + 37), (a1 + 284));
  *(a1 + 71) = 1;
  v4 = *a1;
  if (*(a1 + 289) == 1)
  {
    (*(v4 + 224))(a1);
    return 0;
  }

  else
  {
    v6 = (*(v4 + 192))(a1, &v13);
    v7 = v6;
    v11[0] = "expected identifier after '.ifdef'";
    v12 = 259;
    llvm::MCAsmParser::check(a1, v6, v11);
    if ((v7 & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
    {
      return 1;
    }

    else
    {
      v8 = (*(*a1 + 48))(a1);
      v12 = 261;
      v11[0] = v13;
      v11[1] = v14;
      v9 = llvm::MCContext::lookupSymbol(v8, v11);
      if (a2)
      {
        if (v9)
        {
          v10 = llvm::MCSymbol::getFragment(v9, 0) != 0;
        }

        else
        {
          v10 = 0;
        }
      }

      else if (v9)
      {
        v10 = llvm::MCSymbol::getFragment(v9, 0) == 0;
      }

      else
      {
        v10 = 1;
      }

      result = 0;
      *(a1 + 288) = v10;
      *(a1 + 289) = !v10;
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveElseIf(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 284) - 1) >= 2)
  {
    v6[0] = "Encountered a .elseif that doesn't follow an .if or  an .elseif";
    v7 = 259;
    return llvm::MCAsmParser::Error(a1, a2, v6, 0, 0);
  }

  else
  {
    *(a1 + 284) = 2;
    v3 = *(a1 + 304);
    if (*(a1 + 296) != v3 && (*(v3 - 3) & 1) != 0 || *(a1 + 288) == 1)
    {
      *(a1 + 289) = 1;
      (*(*a1 + 224))(a1);
      return 0;
    }

    else
    {
      v6[0] = 0;
      if (((*(*a1 + 256))(a1, v6) & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
      {
        return 1;
      }

      else
      {
        result = 0;
        v5 = v6[0] == 0;
        *(a1 + 288) = v6[0] != 0;
        *(a1 + 289) = v5;
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveElse(uint64_t a1, uint64_t a2)
{
  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  if ((*(a1 + 284) - 1) >= 2)
  {
    v6 = "Encountered a .else that doesn't follow  an .if or an .elseif";
    v7 = 259;
    return llvm::MCAsmParser::Error(a1, a2, &v6, 0, 0);
  }

  else
  {
    *(a1 + 284) = 3;
    v5 = *(a1 + 304);
    if (*(a1 + 296) != v5 && (*(v5 - 3) & 1) != 0 || *(a1 + 288) == 1)
    {
      result = 0;
      *(a1 + 289) = 1;
    }

    else
    {
      result = 0;
      *(a1 + 289) = 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveEndIf(uint64_t a1, uint64_t a2)
{
  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  if (!*(a1 + 284) || (v5 = *(a1 + 304), *(a1 + 296) == v5))
  {
    v8 = "Encountered a .endif that doesn't follow an .if or .else";
    v9 = 259;
    return llvm::MCAsmParser::Error(a1, a2, &v8, 0, 0);
  }

  else
  {
    result = 0;
    v7 = *(v5 - 8);
    v6 = v5 - 8;
    *(a1 + 288) = *(v6 + 4);
    *(a1 + 284) = v7;
    *(a1 + 304) = v6;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,llvm::StringRef &>(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,llvm::StringRef &>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + (v6 << 7);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 20) = 0;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v7 + 112) = 1;
  *(v7 + 120) = 0;
  *(v7 + 32) = a5;
  *(v7 + 40) = 0;
  *(v7 + 40) = a6;
  ++*(a1 + 8);
  return a1;
}

uint64_t llvm::MCAsmLexer::Lex(llvm::MCAsmLexer *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  *(this + 107) = *v2 == 9;
  llvm::SmallVectorImpl<llvm::AsmToken>::erase(this + 8, v2);
  if (!v3[2])
  {
    (**this)(v5, this);
    llvm::SmallVectorImpl<llvm::AsmToken>::insert_one_impl<llvm::AsmToken const&>(v3, *(this + 1), v5);
    if (v7 >= 0x41)
    {
      if (v6)
      {
        MEMORY[0x277C69E10](v6, 0x1000C8000313F17);
      }
    }
  }

  return *v3;
}

uint64_t anonymous namespace::AsmParser::enabledGenDwarfForAssembly(_anonymous_namespace_::AsmParser *this)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = *((*(*this + 48))(this) + 1601);
  if (v2 == 1 && !*((*(*this + 48))(this) + 1604))
  {
    if (*(this + 59))
    {
      v3 = (*(*this + 48))(this);
      v4 = (*(*this + 48))(this);
      v5 = *(v4 + 1360);
      v6 = *(v4 + 1368);
      v7 = *(this + 58);
      v8 = *(this + 59);
      LOBYTE(v24) = 0;
      v25 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      llvm::MCContext::setMCLineTableRootFile(v3, 0, v5, v6, v7, v8, &v24, &v22);
    }

    v9 = (*(*this + 48))(this);
    LODWORD(v24) = 0;
    *&v22 = &v24;
    v10 = std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v9 + 1560, &v24);
    v11 = (*(*this + 48))(this);
    v12 = (*(*this + 56))(this);
    v13 = (*(*this + 48))(this);
    v14 = *(v10 + 439);
    if (v14 >= 0)
    {
      v15 = v10 + 52;
    }

    else
    {
      v15 = v10[52];
    }

    if (v14 >= 0)
    {
      v16 = *(v10 + 439);
    }

    else
    {
      v16 = v10[53];
    }

    v17 = *(v10 + 444);
    v25 = *(v10 + 460);
    v18 = *(v13 + 1360);
    v19 = *(v13 + 1368);
    v24 = v17;
    v22 = *(v10 + 29);
    v23 = v10[60];
    (*(*v12 + 680))(v26, v12, 0, v18, v19, v15, v16, &v24, &v22, 0);
    *(v11 + 1604) = v26[0];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t anonymous namespace::AsmParser::parseAssignment(llvm::MCAsmParser *a1, char *a2, uint64_t a3, unsigned int a4)
{
  v27 = 0;
  v8 = *(*((*(*a1 + 40))(a1) + 8) + 8);
  v9 = *(*((*(*a1 + 40))(a1) + 8) + 8);
  v34 = 0;
  if ((*(*a1 + 232))(a1, &v27, &v34))
  {
    v34 = "missing expression";
    v37 = 259;
    v10 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v10 + 96), &v34, 0, 0);
    return 1;
  }

  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v12 = a4 & 0xFFFFFFFD;
  v13 = (*(*a1 + 48))(a1);
  v37 = 261;
  v34 = a2;
  v35 = a3;
  v14 = llvm::MCContext::lookupSymbol(v13, &v34);
  if (!v14)
  {
    if (a3 == 1 && *a2 == 46)
    {
      v17 = (*(*a1 + 56))(a1);
      (*(*v17 + 648))(v17, v27, 0, v9);
      return 0;
    }

    v26 = (*(*a1 + 48))(a1);
    v37 = 261;
    v34 = a2;
    v35 = a3;
    Symbol = llvm::MCContext::getOrCreateSymbol(v26, &v34);
    v19 = *(Symbol + 8);
    goto LABEL_24;
  }

  Symbol = v14;
  if (llvm::MCParserUtils::isSymbolUsedInExpression(v14, v27, v15))
  {
    v33 = 1283;
    v30[0] = "Recursive use of '";
    v31 = a2;
    v32 = a3;
    v34 = v30;
    v36 = "'";
    v37 = 770;
    goto LABEL_33;
  }

  Fragment = llvm::MCSymbol::getFragment(Symbol, 0);
  v19 = *(Symbol + 8);
  v20 = v19 & 0x3800;
  if (!Fragment && (v19 & 4) == 0 && v20 != 4096 || (v20 == 4096 ? (v21 = v12 == 0) : (v21 = 0), v21 ? (v22 = (v19 & 4) == 0) : (v22 = 0), v22))
  {
LABEL_24:
    *(Symbol + 8) = v19 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v12 == 0));
    goto LABEL_34;
  }

  v23 = llvm::MCSymbol::getFragment(Symbol, 1u);
  v24 = *(Symbol + 8) & 0x3800;
  if (!v23)
  {
    if (v24 != 4096)
    {
      v33 = 1283;
      v25 = "invalid assignment to '";
      goto LABEL_32;
    }

LABEL_29:
    v19 = *(Symbol + 8) | 4;
    *(Symbol + 8) = v19;
    if (**(Symbol + 24) != 1)
    {
      v33 = 1283;
      v25 = "invalid reassignment of non-absolute variable '";
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (!v12 && v24 == 4096)
  {
    goto LABEL_29;
  }

  v33 = 1283;
  v25 = "redefinition of '";
LABEL_32:
  v30[0] = v25;
  v31 = a2;
  v32 = a3;
  v28 = "'";
  v29 = 259;
  llvm::operator+(v30, &v28, &v34);
LABEL_33:
  if (llvm::MCAsmParser::Error(a1, v9, &v34, 0, 0))
  {
    return 1;
  }

LABEL_34:
  if ((*(*a1 + 104))(a1, a2, a3))
  {
    return 0;
  }

  if (a4 < 2)
  {
    (*(**(a1 + 28) + 272))(*(a1 + 28), Symbol, v27);
    (*(**(a1 + 28) + 296))();
    return 0;
  }

  if (a4 != 3)
  {
    (*(**(a1 + 28) + 272))(*(a1 + 28), Symbol, v27);
    return 0;
  }

  if (*v27 == 2)
  {
    (*(**(a1 + 28) + 280))(*(a1 + 28), Symbol);
    return 0;
  }

  v34 = "expected identifier";
  v37 = 259;
  return llvm::MCAsmParser::Error(a1, v8, &v34, 0, 0);
}

uint64_t anonymous namespace::AsmParser::handleMacroEntry(void *a1, uint64_t *a2)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v3 = dword_2815AC070;
  if (dword_2815AC070 == (a1[44] - a1[43]) >> 3)
  {
    std::ostringstream::basic_ostringstream[abi:nn200100](&v37);
    v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v37, "macros cannot be nested more than ", 34);
    v5 = MEMORY[0x277C69BA0](v4, v3);
    v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, " levels deep.", 13);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " Use -asm-macro-max-nesting-depth to increase this limit.", 57);
    std::stringbuf::str();
    LOWORD(v29) = 260;
    p_p = &__p;
    v7 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v7 + 96), &p_p, 0, 0);
    if (v23 < 0)
    {
      operator delete(__p);
    }

    v37 = *MEMORY[0x277D82828];
    *(&v37 + *(v37 - 3)) = *(MEMORY[0x277D82828] + 24);
    *&v38 = MEMORY[0x277D82878] + 16;
    if (v41 < 0)
    {
      operator delete(v40);
    }

    *&v38 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v38 + 1);
    std::ostream::~ostream();
    MEMORY[0x277C69DA0](&v42);
    v8 = 1;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v8 = 1;
    {
      v37 = v39;
      v38 = xmmword_2750C12F0;
      v10 = a2[2];
      v11 = a2[3];
      v26 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 1;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      p_p = &unk_2883EB968;
      v33 = &v37;
      llvm::raw_ostream::SetUnbuffered(&p_p);
      v12 = a2[4];
      v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[5] - v12) >> 4);
      v14 = v34;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3);
      v16 = (*(*a1 + 40))(a1);
      if ((v8 & 1) == 0)
      {
        v17 = v29;
        if ((v28 - v29) > 9)
        {
          *(v29 + 8) = 2671;
          *v17 = *".endmacro\n";
          v29 += 10;
        }

        else
        {
          llvm::raw_ostream::write(&p_p, ".endmacro\n", 0xAuLL);
        }

        v18 = *v33;
        v19 = v33[1];
        __p = "<instantiation>";
        v24 = 259;
        getMemBufferCopyImpl(v18, v19, &__p, v43);
        operator new();
      }

      llvm::raw_ostream::~raw_ostream(&p_p);
      if (v37 != v39)
      {
        free(v37);
      }
    }

    v37 = &v34;
    std::vector<std::vector<llvm::AsmToken>>::__destroy_vector::operator()[abi:nn200100](&v37);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t llvm::StringMap<std::pair<llvm::MCAsmParserExtension *,BOOL (*)(llvm::MCAsmParserExtension *,llvm::StringRef,llvm::SMLoc)>,llvm::MallocAllocator>::lookup(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3);
  if (Key == -1 || Key == *(a1 + 8))
  {
    return 0;
  }

  v6 = *(*a1 + 8 * Key);
  result = *(v6 + 8);
  v7 = *(v6 + 16);
  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveSet(llvm::MCAsmParser *a1, unsigned int a2)
{
  v9 = 0;
  v10 = 0;
  v4 = (*(*a1 + 192))(a1, &v9);
  v5 = v4;
  v7 = "expected identifier";
  v8 = 259;
  llvm::MCAsmParser::check(a1, v4, &v7);
  if (v5)
  {
    return 1;
  }

  v11 = "expected comma";
  v12 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, &v11))
  {
    return 1;
  }

  else
  {
  }
}

BOOL anonymous namespace::AsmParser::parseDirectiveAlign(_anonymous_namespace_::AsmParser *this, int a2, uint64_t a3)
{
  v6 = *((*(*this + 40))(this) + 96);
  v25 = 0;
  v26 = 0;
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v27 = 0;
  if (a3 != 1 || !a2 || **((*(*this + 40))(this) + 8) != 9)
  {
    if ((*(*this + 256))(this, &v27))
    {
      return 1;
    }

    if (llvm::MCAsmParser::parseOptionalToken(this, 25))
    {
      v8 = **((*(*this + 40))(this) + 8);
      v9 = v8 != 25;
      if (v8 != 25 && ((*(*this + 256))(this, &v26) & 1) != 0)
      {
        return 1;
      }

      if (llvm::MCAsmParser::parseOptionalToken(this, 25))
      {
        v10 = *(*((*(*this + 40))(this) + 8) + 8);
        if ((*(*this + 256))(this, &v25))
        {
          return 1;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    if (llvm::MCAsmParser::parseEOL(this))
    {
      return 1;
    }

    v12 = v27;
    if (a2)
    {
      if (v27 < 32)
      {
        v7 = 0;
      }

      else
      {
        v23[0] = "invalid alignment value";
        v24 = 259;
        v7 = llvm::MCAsmParser::Error(this, v6, v23, 0, 0);
        LOBYTE(v12) = 31;
      }

      v12 = 1 << v12;
    }

    else if (v27)
    {
      if ((v27 & (v27 - 1)) != 0)
      {
        v23[0] = "alignment must be a power of 2";
        v24 = 259;
        v7 = llvm::MCAsmParser::Error(this, v6, v23, 0, 0);
        v13 = 1 << ~__clz(v27);
        if (v27)
        {
          v12 = v13;
        }

        else
        {
          v12 = 0;
        }

        v27 = v12;
      }

      else
      {
        v7 = 0;
      }

      if (!HIDWORD(v12))
      {
LABEL_34:
        if (v10)
        {
          v14 = v25;
          if (v25 <= 0)
          {
            v23[0] = "alignment directive can never be satisfied in this many bytes, ignoring maximum bytes expression";
            v24 = 259;
            v15 = llvm::MCAsmParser::Error(this, v10, v23, 0, 0);
            v14 = 0;
            v7 = v7 | v15;
            v25 = 0;
            v12 = v27;
          }

          if (v14 >= v12)
          {
            v23[0] = "maximum bytes expression exceeds alignment and has no effect";
            v24 = 259;
            (*(*this + 168))(this, v10, v23, 0, 0);
            v25 = 0;
          }
        }

        v16 = (*(*this + 56))(this);
        v17 = *(*(v16 + 144) + 32 * *(v16 + 152) - 32);
        v18 = (*(*v17 + 8))(v17);
        if (v9)
        {
          v20 = a3 == 1 && v26 == *(*(this + 22) + 340);
          if ((v20 & v18 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (((a3 == 1) & v18) != 1)
        {
LABEL_47:
          v21 = (*(*this + 56))(this);
          (*(*v21 + 632))(v21, (63 - __clz(v27)), v26, a3, v25);
          return v7;
        }

        v22 = (*(*this + 56))(this);
        (*(*v22 + 640))(v22, (63 - __clz(v27)), *(*(this + 1) + 288), v25);
        return v7;
      }

      v23[0] = "alignment must be smaller than 2**32";
      v24 = 259;
      v7 = v7 | llvm::MCAsmParser::Error(this, v6, v23, 0, 0);
      v12 = 0x80000000;
    }

    else
    {
      v7 = 0;
      v12 = 1;
    }

    v27 = v12;
    goto LABEL_34;
  }

  v23[0] = "p2align directive with no operand(s) is ignored";
  v24 = 259;
  (*(*this + 168))(this, v6, v23, 0, 0);
  return llvm::MCAsmParser::parseEOL(this);
}

uint64_t anonymous namespace::AsmParser::parseDirectiveOrg(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(this + 17);
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  if ((*(*this + 232))(this, &v5, &v6))
  {
    return 1;
  }

  v6 = 0;
  if (llvm::MCAsmParser::parseOptionalToken(this, 25) && ((*(*this + 256))(this, &v6) & 1) != 0)
  {
    return 1;
  }

  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v4 = (*(*this + 56))(this);
  (*(*v4 + 648))(v4, v5, v6, v2);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveFill(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(this + 17);
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v12 = 0;
  v8[0] = 0;
  if ((*(*this + 232))(this, &v12, v8))
  {
    return 1;
  }

  v10 = 0;
  v11 = 1;
  if (llvm::MCAsmParser::parseOptionalToken(this, 25))
  {
    v3 = *(*((*(*this + 40))(this) + 8) + 8);
    if ((*(*this + 256))(this, &v11))
    {
      return 1;
    }

    if (llvm::MCAsmParser::parseOptionalToken(this, 25))
    {
      v4 = *(*((*(*this + 40))(this) + 8) + 8);
      if ((*(*this + 256))(this, &v10))
      {
        return 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v6 = v11;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v8[0] = "'.fill' directive with negative size has no effect";
    v9 = 259;
    (*(*this + 168))(this, v3, v8, 0, 0);
  }

  else
  {
    if (v11 >= 9)
    {
      v8[0] = "'.fill' directive with size greater than 8 has been truncated to 8";
      v9 = 259;
      (*(*this + 168))(this, v3, v8, 0, 0);
      v6 = 8;
      v11 = 8;
    }

    if (v6 >= 5)
    {
      if (HIDWORD(v10))
      {
        v8[0] = "'.fill' directive pattern has been truncated to 32-bits";
        v9 = 259;
        (*(*this + 168))(this, v4, v8, 0, 0);
      }
    }

    v7 = (*(*this + 56))(this);
    (*(*v7 + 616))(v7, v12, v11, v10, v2);
  }

  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveZero(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(this + 17);
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  if ((*(*this + 232))(this, &v5, &v6))
  {
    return 1;
  }

  v6 = 0;
  if (**((*(*this + 40))(this) + 8) == 25)
  {
    (*(*this + 184))(this);
    if ((*(*this + 256))(this, &v6))
    {
      return 1;
    }
  }

  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v4 = (*(*this + 56))(this);
  (*(*v4 + 608))(v4, v5, v6, v2);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveComm(_anonymous_namespace_::AsmParser *this, int a2)
{
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v4 = *((*(*this + 40))(this) + 96);
  v20 = 0;
  v21 = 0;
  if ((*(*this + 192))(this, &v20))
  {
    v22[0] = "expected identifier in directive";
    v23 = 259;
    v5 = (*(*this + 40))(this);
    llvm::MCAsmParser::Error(this, *(v5 + 96), v22, 0, 0);
    return 1;
  }

  v6 = (*(*this + 48))(this);
  v23 = 261;
  v22[0] = v20;
  v22[1] = v21;
  Symbol = llvm::MCContext::getOrCreateSymbol(v6, v22);
  v22[0] = "expected comma";
  v23 = 259;
  if (llvm::MCAsmParser::parseToken(this, 25, v22))
  {
    return 1;
  }

  v19 = 0;
  v8 = *((*(*this + 40))(this) + 96);
  if ((*(*this + 256))(this, &v19))
  {
    return 1;
  }

  v18 = 0;
  if (**((*(*this + 40))(this) + 8) == 25)
  {
    (*(*this + 184))(this);
    v9 = *((*(*this + 40))(this) + 96);
    if ((*(*this + 256))(this, &v18))
    {
      return 1;
    }

    v10 = *(this + 22);
    v11 = *(v10 + 356);
    if (a2 && !v11)
    {
      v12 = "alignment not supported on this target";
LABEL_11:
      v22[0] = v12;
      v23 = 259;
      v13 = this;
      v14 = v9;
      return llvm::MCAsmParser::Error(v13, v14, v22, 0, 0);
    }

    if (a2)
    {
      if (v11 != 1)
      {
        goto LABEL_18;
      }
    }

    else if ((*(v10 + 354) & 1) == 0)
    {
      goto LABEL_18;
    }

    if ((v18 ^ (v18 - 1)) <= v18 - 1)
    {
      v12 = "alignment must be a power of 2";
      goto LABEL_11;
    }

    v18 = 63 - __clz(v18);
  }

LABEL_18:
  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  if (v19 < 0)
  {
    v22[0] = "size must be non-negative";
    v23 = 259;
    v13 = this;
    v14 = v8;
    return llvm::MCAsmParser::Error(v13, v14, v22, 0, 0);
  }

  v16 = *(Symbol + 1);
  if ((v16 & 2) != 0)
  {
    if ((*(Symbol + 1) & 0x3800) == 0x1000)
    {
      *(Symbol + 3) = 0;
      v16 &= 0xFFFFFFFFFFFFC7FFLL;
    }

    *Symbol &= 7uLL;
    *(Symbol + 1) = v16 & 0xFFFFFFFFFFFFFFFDLL;
  }

  if (llvm::MCSymbol::getFragment(Symbol, 1u))
  {
    v22[0] = "invalid symbol redefinition";
    v23 = 259;
    v13 = this;
    v14 = v4;
    return llvm::MCAsmParser::Error(v13, v14, v22, 0, 0);
  }

  v17 = *(*(*this + 56))(this);
  if (a2)
  {
    (*(v17 + 464))();
  }

  else
  {
    (*(v17 + 456))();
  }

  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveAbort(_anonymous_namespace_::AsmParser *this)
{
  v2 = *((*(*this + 40))(this) + 96);
  v3 = (*(*this + 200))(this);
  v5 = v4;
  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  if (v5)
  {
    v9 = 1283;
    v8[0] = ".abort '";
    v8[2] = v3;
    v8[3] = v5;
    v10[0] = v8;
    v10[2] = "' detected. Assembly stopping.";
    v7 = 770;
  }

  else
  {
    v10[0] = ".abort detected. Assembly stopping.";
    v7 = 259;
  }

  v11 = v7;
  return llvm::MCAsmParser::Error(this, v2, v10, 0, 0);
}

BOOL anonymous namespace::AsmParser::parseDirectiveInclude(_anonymous_namespace_::AsmParser *this)
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v3 = **((*(*this + 40))(this) + 8);
  v22 = "expected string in '.include' directive";
  v23 = 259;
  llvm::MCAsmParser::check(this, v3 != 3, &v22);
  if (v3 == 3 && ((*(*this + 208))(this, v24) & 1) == 0 && (v4 = **((*(*this + 40))(this) + 8), v20 = "unexpected token in '.include' directive", v21 = 259, llvm::MCAsmParser::check(this, v4 != 9, &v20), v4 == 9))
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    v7 = llvm::SourceMgr::AddIncludeFile(*(this + 30), v24, *(this + 17), __p);
    v8 = v7;
    v5 = v7 == 0;
    if (v7)
    {
      *(this + 70) = v7;
      v9 = *(**(this + 30) + 24 * (v7 - 1));
      v10 = *(v9 + 8);
      v11 = *(v9 + 16) - v10;
      *(this + 24) = v10;
      *(this + 25) = v11;
      *(this + 23) = v10;
      *(this + 17) = 0;
      *(this + 211) = 1;
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    v12 = std::string::append(&v14, "'");
    v13 = v12->__r_.__value_.__r.__words[2];
    *v15 = *&v12->__r_.__value_.__l.__data_;
    v16 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v19 = 260;
    __p[0] = v15;
    if (!v8)
    {
      llvm::MCAsmParser::Error(this, v2, __p, 0, 0);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 1;
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return v5;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIncbin(_anonymous_namespace_::AsmParser *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v3 = **((*(*this + 40))(this) + 8);
  v27[0] = "expected string in '.incbin' directive";
  v28 = 259;
  llvm::MCAsmParser::check(this, v3 != 3, v27);
  if (v3 != 3 || ((*(*this + 208))(this, __p) & 1) != 0)
  {
    goto LABEL_24;
  }

  v23 = 0;
  v24 = 0;
  if (!llvm::MCAsmParser::parseOptionalToken(this, 25))
  {
    v4 = 0;
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  if (**((*(*this + 40))(this) + 8) == 25)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*((*(*this + 40))(this) + 8) + 8);
    if ((*(*this + 256))(this, &v24))
    {
LABEL_24:
      v17 = 1;
      goto LABEL_25;
    }
  }

  if (!llvm::MCAsmParser::parseOptionalToken(this, 25))
  {
    goto LABEL_11;
  }

  v5 = *(*((*(*this + 40))(this) + 8) + 8);
  v27[0] = 0;
  if ((*(*this + 232))(this, &v23, v27))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (llvm::MCAsmParser::parseEOL(this))
  {
    goto LABEL_24;
  }

  v6 = v24;
  v27[0] = "skip is negative";
  v28 = 259;
  if ((v24 & 0x8000000000000000) != 0)
  {
    llvm::MCAsmParser::Error(this, v4, v27, 0, 0);
    goto LABEL_24;
  }

  v7 = v23;
  v29 = 0uLL;
  v30 = 0;
  v8 = llvm::SourceMgr::AddIncludeFile(*(this + 30), __p, *(this + 17), &v29);
  if (!v8)
  {
    v16 = 1;
    goto LABEL_32;
  }

  v9 = *(**(this + 30) + 24 * (v8 - 1));
  v10 = *(v9 + 8);
  v11 = *(v9 + 16) - v10;
  if (v11 < v6)
  {
    v6 = v11;
  }

  v12 = v11 - v6;
  if (v7)
  {
    v22.__r_.__value_.__r.__words[0] = 0;
    v13 = (*(*this + 56))(this);
    v14 = (*(*v13 + 72))(v13);
    if (llvm::MCExpr::evaluateAsAbsolute(v7, &v22, v14, 0, 0, 0))
    {
      if ((v22.__r_.__value_.__r.__words[0] & 0x8000000000000000) == 0)
      {
        if (v12 >= v22.__r_.__value_.__r.__words[0])
        {
          v12 = v22.__r_.__value_.__r.__words[0];
        }

        goto LABEL_22;
      }

      v27[0] = "negative count has no effect";
      v28 = 259;
      v19 = (*(*this + 168))(this, v5, v27, 0, 0);
    }

    else
    {
      v27[0] = "expected absolute expression";
      v28 = 259;
      v19 = llvm::MCAsmParser::Error(this, v5, v27, 0, 0);
    }

    v16 = v19;
    goto LABEL_32;
  }

LABEL_22:
  v15 = (*(*this + 56))(this);
  (*(*v15 + 488))(v15, v10 + v6, v12);
  v16 = 0;
LABEL_32:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (v16)
  {
    std::operator+<char>();
    v20 = std::string::append(&v22, "'");
    v21 = v20->__r_.__value_.__r.__words[2];
    v29 = *&v20->__r_.__value_.__l.__data_;
    v30 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v28 = 260;
    v27[0] = &v29;
    v17 = llvm::MCAsmParser::Error(this, v2, v27, 0, 0);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_25:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  return v17;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveRept(llvm::MCAsmParser *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v8 = *(*((*(*a1 + 40))(a1) + 8) + 8);
  v33 = 0;
  if ((*(*a1 + 232))(a1, &v32, &v33))
  {
    goto LABEL_2;
  }

  v31 = 0;
  v10 = v32;
  v11 = (*(*a1 + 56))(a1);
  v12 = (*(*v11 + 72))(v11);
  if (!llvm::MCExpr::evaluateAsAbsolute(v10, &v31, v12, 0, 0, 0))
  {
    LOWORD(v26) = 1283;
    v22 = "unexpected token in '";
    v24 = a3;
    v25 = a4;
    v33 = &v22;
    *(&v34 + 1) = "' directive";
    v36 = 770;
    v9 = llvm::MCAsmParser::Error(a1, v8, &v33, 0, 0);
    goto LABEL_12;
  }

  v13 = v31;
  v33 = "Count is negative";
  v36 = 259;
  if (v31 < 0)
  {
    llvm::MCAsmParser::Error(a1, v8, &v33, 0, 0);
    goto LABEL_2;
  }

  if (llvm::MCAsmParser::parseEOL(a1))
  {
LABEL_2:
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 1;
  if (v14)
  {
    v15 = v14;
    v33 = &v35;
    v34 = xmmword_2750C12F0;
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v22 = &unk_2883EB968;
    v30 = &v33;
    llvm::raw_ostream::SetUnbuffered(&v22);
    v16 = v13 + 1;
    do
    {
      v9 = --v16 != 0;
      if (!v16)
      {
      }

      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      v19 = (*(*a1 + 40))(a1);
    }

    llvm::raw_ostream::~raw_ostream(&v22);
    if (v33 != &v35)
    {
      free(v33);
    }
  }

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIrp(llvm::MCAsmParser *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  memset(v29, 0, 26);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = (*(*a1 + 192))(a1, &v28);
  v5 = v4;
  v16 = "expected identifier in '.irp' directive";
  LOWORD(v20) = 259;
  llvm::MCAsmParser::check(a1, v4, &v16);
  if ((v5 & 1) == 0)
  {
    v30 = "expected comma";
    v32[4] = 259;
    {
      if (v8)
      {
        v9 = v8;
        v30 = v32;
        v31 = xmmword_2750C12F0;
        v17 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 1;
        v19 = 0;
        v20 = 0;
        v18 = 0;
        v16 = &unk_2883EB968;
        v24 = &v30;
        llvm::raw_ostream::SetUnbuffered(&v16);
        v10 = v25;
        v11 = v26;
        if (v25 == v26)
        {
LABEL_11:
        }

        v12 = v25;
        while (1)
        {
          v13 = *(v9 + 16);
          v14 = *(v9 + 24);
          v15 = (*(*a1 + 40))(a1);
          {
            break;
          }

          v12 += 24;
          v10 += 24;
          if (v12 == v11)
          {
            goto LABEL_11;
          }
        }

        llvm::raw_ostream::~raw_ostream(&v16);
        if (v30 != v32)
        {
          free(v30);
        }
      }
    }
  }

  v30 = &v25;
  std::vector<std::vector<llvm::AsmToken>>::__destroy_vector::operator()[abi:nn200100](&v30);
  v30 = v29;
  std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v30);
  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveIrpc(llvm::MCAsmParser *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v25, 0, 26);
  v24 = 0u;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = (*(*a1 + 192))(a1, &v24);
  v5 = v4;
  v12 = "expected identifier in '.irpc' directive";
  LOWORD(v16) = 259;
  llvm::MCAsmParser::check(a1, v4, &v12);
  if ((v5 & 1) == 0)
  {
    v27 = "expected comma";
    v30 = 259;
    {
      v6 = v21;
      if (v22 - v21 == 24 && v21[1] - *v21 == 40)
      {
        {
          v27 = &v29;
          v28 = xmmword_2750C12F0;
          v13 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v15 = 0;
          v16 = 0;
          v14 = 0;
          v12 = &unk_2883EB968;
          v20 = &v27;
          llvm::raw_ostream::SetUnbuffered(&v12);
          v10 = *(*v6 + 8);
          if (*(*v6 + 16))
          {
            memset(v11, 0, sizeof(v11));
            v26 = v11;
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::AsmToken>>(1uLL);
          }
        }
      }

      else
      {
        v27 = "unexpected token in '.irpc' directive";
        v30 = 259;
        v7 = (*(*a1 + 40))(a1);
        llvm::MCAsmParser::Error(a1, *(v7 + 96), &v27, 0, 0);
      }
    }
  }

  v27 = &v21;
  std::vector<std::vector<llvm::AsmToken>>::__destroy_vector::operator()[abi:nn200100](&v27);
  v27 = v25;
  std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v27);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL anonymous namespace::AsmParser::parseDirectiveEndr(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(this + 43);
  v3 = *(this + 44);
  if (v2 == v3)
  {
    v6 = "unmatched '.endr' directive";
    v7 = 259;
    v4 = (*(*this + 40))(this);
    llvm::MCAsmParser::Error(this, *(v4 + 96), &v6, 0, 0);
  }

  else
  {
  }

  return v2 == v3;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveBundleAlignMode(_anonymous_namespace_::AsmParser *this)
{
  v2 = *((*(*this + 40))(this) + 96);
  if (((*(*this + 264))(this) & 1) == 0)
  {
    v7 = 0;
    if (((*(*this + 256))(this, &v7) & 1) == 0 && !llvm::MCAsmParser::parseEOL(this))
    {
      v5 = "invalid bundle alignment size (expected between 0 and 30)";
      v6 = 259;
      if (v7 < 0x1F)
      {
        v4 = (*(*this + 56))(this);
        (*(*v4 + 1208))(v4);
        return 0;
      }

      llvm::MCAsmParser::Error(this, v2, &v5, 0, 0);
    }
  }

  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveBundleLock(_anonymous_namespace_::AsmParser *this)
{
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v3 = llvm::MCAsmParser::parseOptionalToken(this, 9);
  if (v3)
  {
LABEL_3:
    v4 = (*(*this + 56))(this);
    (*(*v4 + 1216))(v4, !v3);
    return 0;
  }

  v6 = (*(*this + 192))(this, &v13);
  v11 = "invalid option for '.bundle_lock' directive";
  v12 = 259;
  if (v6)
  {
    v7 = &v11;
LABEL_16:
    llvm::MCAsmParser::Error(this, v2, v7, 0, 0);
    return 1;
  }

  if (v14 != 12)
  {
    v9 = "invalid option for '.bundle_lock' directive";
    v10 = 259;
LABEL_15:
    v7 = &v9;
    goto LABEL_16;
  }

  v8 = *v13 == 0x6F745F6E67696C61 && *(v13 + 8) == 1684956511;
  v9 = "invalid option for '.bundle_lock' directive";
  v10 = 259;
  if (!v8)
  {
    goto LABEL_15;
  }

  if (!llvm::MCAsmParser::parseEOL(this))
  {
    goto LABEL_3;
  }

  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveBundleUnlock(_anonymous_namespace_::AsmParser *this)
{
  if (((*(*this + 264))(this) & 1) != 0 || llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v3 = (*(*this + 56))(this);
  (*(*v3 + 1224))(v3);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveLEB128(_anonymous_namespace_::AsmParser *this, char a2)
{
  v5 = a2;
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v4[0] = this;
  v4[1] = &v5;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveSpace(llvm::MCAsmParser *a1)
{
  v2 = *(a1 + 17);
  if ((*(*a1 + 264))(a1))
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  if ((*(*a1 + 232))(a1, &v5, &v6))
  {
    return 1;
  }

  v6 = 0;
  if (llvm::MCAsmParser::parseOptionalToken(a1, 25) && ((*(*a1 + 256))(a1, &v6) & 1) != 0)
  {
    return 1;
  }

  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 608))(v4, v5, v6, v2);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveFile(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  if (**((*(*a1 + 40))(a1) + 8) == 4)
  {
    v5 = *((*(*a1 + 40))(a1) + 8);
    v8 = *(v5 + 24);
    v6 = v5 + 24;
    v7 = v8;
    if (*(v6 + 8) >= 0x41u)
    {
      v6 = v7;
    }

    v9 = *v6;
    (*(*a1 + 184))(a1);
    if (v9 < 0)
    {
      v75 = "negative file number";
      v79 = 259;
      v10 = (*(*a1 + 40))(a1);
      llvm::MCAsmParser::Error(a1, *(v10 + 96), &v75, 0, 0);
      v11 = 1;
      goto LABEL_116;
    }
  }

  else
  {
    v9 = -1;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  if (((*(*a1 + 208))(a1, &v67) & 1) == 0)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    if (**((*(*a1 + 40))(a1) + 8) == 3)
    {
      v75 = "explicit path specified, but no file number";
      v79 = 259;
      llvm::MCAsmParser::check(a1, v9 == -1, &v75);
      if (v9 == -1 || (v12 = &v64, ((*(*a1 + 208))(a1, &v64) & 1) != 0))
      {
        v11 = 1;
LABEL_112:
        if (SHIBYTE(v66) < 0)
        {
          operator delete(v64);
        }

        goto LABEL_114;
      }

      if (v66 < 0)
      {
        v12 = v64;
      }

      if (v66 >= 0)
      {
        v14 = SHIBYTE(v66);
      }

      else
      {
        v14 = v65;
      }

      if (v69 >= 0)
      {
        v13 = &v67;
      }

      else
      {
        v13 = v67;
      }
    }

    else
    {
      v13 = 0;
      if (v69 >= 0)
      {
        v12 = &v67;
      }

      else
      {
        v12 = v67;
      }

      if (v69 >= 0)
      {
        v14 = SHIBYTE(v69);
      }

      else
      {
        v14 = v68;
      }
    }

    v62 = 0;
    v63 = 0;
    __p = 0;
    v59 = 0;
    v60 = 0;
    if (!llvm::MCAsmParser::parseOptionalToken(a1, 9))
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v73 = 0;
        v74 = 0;
        v13 = **((*(*a1 + 40))(a1) + 8);
        v75 = "unexpected token in '.file' directive";
        v79 = 259;
        llvm::MCAsmParser::check(a1, v13 != 2, &v75);
        if (v13 != 2 || ((*(*a1 + 192))(a1, &v73) & 1) != 0)
        {
          break;
        }

        if (v74 == 6)
        {
          if (*v73 != 1920298867 || *(v73 + 4) != 25955)
          {
LABEL_72:
            v75 = "unexpected token in '.file' directive";
            v79 = 259;
            v34 = (*(*a1 + 40))(a1);
            llvm::MCAsmParser::Error(a1, *(v34 + 96), &v75, 0, 0);
            break;
          }

          v75 = "source specified, but no file number";
          v79 = 259;
          llvm::MCAsmParser::check(a1, v9 == -1, &v75);
          if (v9 == -1)
          {
            break;
          }

          v13 = **((*(*a1 + 40))(a1) + 8);
          v71.__r_.__value_.__r.__words[0] = "unexpected token in '.file' directive";
          v72 = 259;
          llvm::MCAsmParser::check(a1, v13 != 3, &v71);
          if (v13 != 3 || ((*(*a1 + 208))(a1, &__p) & 1) != 0)
          {
            break;
          }

          v17 = 1;
        }

        else
        {
          if (v74 != 3)
          {
            goto LABEL_72;
          }

          if (*v73 != 25709 || *(v73 + 2) != 53)
          {
            goto LABEL_72;
          }

          v75 = "MD5 checksum specified, but no file number";
          v79 = 259;
          llvm::MCAsmParser::check(a1, v9 == -1, &v75);
          if (v9 == -1 || (parseHexOcta(a1, &v63, &v62) & 1) != 0)
          {
            break;
          }

          v16 = 1;
        }

        if (llvm::MCAsmParser::parseOptionalToken(a1, 9))
        {
          goto LABEL_30;
        }
      }

      v11 = 1;
      goto LABEL_110;
    }

    if (v9 == -1)
    {
      if (*(*((*(*a1 + 48))(a1) + 144) + 364) == 1)
      {
        v33 = (*(*a1 + 56))(a1);
        (*(*v33 + 656))(v33, v12, v14);
      }

      goto LABEL_109;
    }

    v16 = 0;
    v17 = 0;
LABEL_30:
    v18 = *(a1 + 216);
    if (*(v18 + 1601) == 1)
    {
      LODWORD(v71.__r_.__value_.__l.__data_) = 0;
      v75 = &v71;
      v19 = std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v18 + 1560, &v71);
      llvm::MCDwarfLineTableHeader::resetFileTable((v19 + 5));
      v18 = *(a1 + 216);
      *(v18 + 1601) = 0;
    }

    if (v16)
    {
      v20 = vdupq_lane_s64(v63, 0);
      v21 = vdupq_lane_s64(v62, 0);
      *v20.i8 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v20, xmmword_2750C8170), vshlq_u64(v20, xmmword_2750C8160)), vuzp1q_s32(vshlq_u64(v20, xmmword_2750C8190), vshlq_u64(v20, xmmword_2750C8180))));
      v22 = vuzp1q_s16(vuzp1q_s32(vshlq_u64(v21, xmmword_2750C8170), vshlq_u64(v21, xmmword_2750C8160)), vuzp1q_s32(vshlq_u64(v21, xmmword_2750C8190), vshlq_u64(v21, xmmword_2750C8180)));
      v2 = vmovn_s16(v22);
      v23 = v20.i8[0];
      v57 = vext_s8(*v20.i8, *v22.i8, 1uLL);
      v24 = 1;
      if ((v17 & 1) == 0)
      {
LABEL_34:
        v25 = 0;
        v26 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
      v57 = v15;
      if ((v17 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v29 = HIBYTE(v60);
    if (v60 < 0)
    {
      v29 = v59;
    }

    v30 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v18 + 184, v29, 3);
    v26 = v30;
    if (v60 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v60 >= 0)
    {
      v32 = HIBYTE(v60);
    }

    else
    {
      v32 = v59;
    }

    memcpy(v30, p_p, v32);
    v13 = SHIBYTE(v60);
    v25 = 1;
    if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
    {
      v13 = v59;
    }

LABEL_75:
    if (v9)
    {
      v35 = (*(*a1 + 56))(a1);
      v71.__r_.__value_.__s.__data_[0] = v23;
      v71.__r_.__value_.__s.__data_[7] = v57.i8[6];
      *(v71.__r_.__value_.__r.__words + 5) = v57.i16[2];
      *(&v71.__r_.__value_.__l.__data_ + 1) = v57.i32[0];
      v71.__r_.__value_.__l.__size_ = v2;
      v71.__r_.__value_.__s.__data_[16] = v24;
      v75 = v26;
      v76 = v13;
      v77 = v25;
      *v78 = *v61;
      *&v78[3] = *&v61[3];
      (*(*v35 + 680))(&v73);
      if (v74)
      {
        v36 = v73;
        v73 = 0;
        v75 = &v77;
        v76 = 0x200000000;
        v70 = v36;
        v71.__r_.__value_.__r.__words[0] = &v75;
        llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v70, &v71);
        if (v70)
        {
          (*(*v70 + 8))(v70);
        }

        v37 = v75;
        v38 = v76;
        memset(&v71, 0, sizeof(v71));
        if (v76)
        {
          v39 = 24 * v76;
          v40 = v76 - 1;
          v41 = &v75->__r_.__value_.__r.__words[2] + 7;
          v42 = v39;
          do
          {
            v43 = *v41;
            if (v43 < 0)
            {
              v43 = *(v41 - 15);
            }

            v40 += v43;
            v41 += 24;
            v42 -= 24;
          }

          while (v42);
          std::string::reserve(&v71, v40);
          v44 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          if (v44 >= 0)
          {
            v45 = v37;
          }

          else
          {
            v45 = v37->__r_.__value_.__r.__words[0];
          }

          if (v44 >= 0)
          {
            size = HIBYTE(v37->__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v37->__r_.__value_.__l.__size_;
          }

          std::string::append(&v71, v45, size);
          if (v38 != 1)
          {
            v47 = v37 + 1;
            v48 = v39 - 24;
            do
            {
              std::string::append(&v71, "\n", 1uLL);
              v49 = SHIBYTE(v47->__r_.__value_.__r.__words[2]);
              if (v49 >= 0)
              {
                v50 = v47;
              }

              else
              {
                v50 = v47->__r_.__value_.__r.__words[0];
              }

              if (v49 >= 0)
              {
                v51 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
              }

              else
              {
                v51 = v47->__r_.__value_.__l.__size_;
              }

              std::string::append(&v71, v50, v51);
              ++v47;
              v48 -= 24;
            }

            while (v48);
          }
        }

        llvm::SmallVector<std::string,2u>::~SmallVector(&v75);
        v79 = 260;
        v75 = &v71;
        v11 = llvm::MCAsmParser::Error(a1, a2, &v75, 0, 0);
        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        if (v74)
        {
          v52 = v73;
          v73 = 0;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      v53 = *(a1 + 216);
      if (*(v53 + 1712) <= 4u)
      {
        *(v53 + 1712) = 5;
      }

      v54 = (*(*a1 + 56))(a1);
      v71.__r_.__value_.__s.__data_[0] = v23;
      v71.__r_.__value_.__s.__data_[7] = v57.i8[6];
      *(v71.__r_.__value_.__r.__words + 5) = v57.i16[2];
      *(&v71.__r_.__value_.__l.__data_ + 1) = v57.i32[0];
      v71.__r_.__value_.__l.__size_ = v2;
      v71.__r_.__value_.__s.__data_[16] = v24;
      v75 = v26;
      v76 = v13;
      v77 = v25;
      *v78 = *v61;
      *&v78[3] = *&v61[3];
      (*(*v54 + 688))();
    }

    if ((*(a1 + 798) & 1) == 0 && !llvm::MCContext::isDwarfMD5UsageConsistent(*(a1 + 216)))
    {
      *(a1 + 798) = 1;
      v75 = "inconsistent use of MD5 checksums";
      v79 = 259;
      v11 = (*(*a1 + 168))(a1, a2, &v75, 0, 0);
LABEL_110:
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_112;
    }

LABEL_109:
    v11 = 0;
    goto LABEL_110;
  }

  v11 = 1;
LABEL_114:
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v67);
  }

LABEL_116:
  v55 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL anonymous namespace::AsmParser::parseDirectiveLine(_anonymous_namespace_::AsmParser *this)
{
  if (**((*(*this + 40))(this) + 8) == 4 && (v3 = "unexpected token in '.line' directive", v4 = 259, llvm::MCAsmParser::parseIntToken(this, &v5, &v3)))
  {
    return 1;
  }

  else
  {
    return llvm::MCAsmParser::parseEOL(this);
  }
}

uint64_t anonymous namespace::AsmParser::parseDirectiveLoc(_anonymous_namespace_::AsmParser *this)
{
  v31 = 0;
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v29[0] = "unexpected token in '.loc' directive";
  v30 = 259;
  if (llvm::MCAsmParser::parseIntToken(this, &v31, v29))
  {
    return 1;
  }

  v3 = v31;
  if (v31 <= 0)
  {
    v4 = *(*(this + 27) + 1712);
    *v27 = "file number less than one in '.loc' directive";
    v28 = 259;
    if (v4 <= 4)
    {
      v5 = v27;
LABEL_12:
      v12 = this;
      v13 = v2;
LABEL_13:
      llvm::MCAsmParser::Error(v12, v13, v5, 0, 0);
      return 1;
    }
  }

  v6 = (*(*this + 48))(this);
  *v25 = "unassigned file number in '.loc' directive";
  v26 = 259;
  if (!llvm::MCContext::isValidDwarfFileNumber(v6, v3, 0))
  {
    v5 = v25;
    goto LABEL_12;
  }

  if (**((*(*this + 40))(this) + 8) == 4)
  {
    v7 = *((*(*this + 40))(this) + 8);
    v10 = *(v7 + 24);
    v8 = (v7 + 24);
    v9 = v10;
    if (*(v8 + 2) >= 0x41u)
    {
      v8 = v9;
    }

    v11 = *v8;
    if (*v8 < 0)
    {
      v23 = "line number less than zero in '.loc' directive";
      goto LABEL_27;
    }

    (*(*this + 184))(this);
  }

  else
  {
    v11 = 0;
  }

  if (**((*(*this + 40))(this) + 8) == 4)
  {
    v16 = *((*(*this + 40))(this) + 8);
    v19 = *(v16 + 24);
    v17 = (v16 + 24);
    v18 = v19;
    if (*(v17 + 2) >= 0x41u)
    {
      v17 = v18;
    }

    v20 = *v17;
    if ((*v17 & 0x8000000000000000) == 0)
    {
      (*(*this + 184))(this);
      goto LABEL_23;
    }

    v23 = "column position less than zero in '.loc' directive";
LABEL_27:
    v29[0] = v23;
    v30 = 259;
    v13 = *((*(*this + 40))(this) + 96);
    v5 = v29;
    v12 = this;
    goto LABEL_13;
  }

  v20 = 0;
LABEL_23:
  v21 = *((*(*this + 48))(this) + 1594) & 1;
  v24 = 0;
  v25[0] = v21;
  *v27 = 0;
  v29[0] = this;
  v29[1] = v25;
  v29[2] = &v24;
  v29[3] = v27;
  if ((v14 & 1) == 0)
  {
    v22 = (*(*this + 56))(this);
    (*(*v22 + 712))(v22, v3, v11, v20, v25[0], v24, v27[0]);
  }

  return v14;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVFile(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v36 = 0;
  v37 = 0;
  v35[0] = 0;
  v35[1] = 0;
  memset(&__p, 0, sizeof(__p));
  v33 = 0;
  v31.__r_.__value_.__r.__words[0] = "expected file number in '.cv_file' directive";
  v32 = 259;
  if (llvm::MCAsmParser::parseIntToken(this, &v37, &v31))
  {
    goto LABEL_44;
  }

  v29[0] = "file number less than one";
  v30 = 259;
  if (v37 <= 0)
  {
    llvm::MCAsmParser::Error(this, v2, v29, 0, 0);
    goto LABEL_44;
  }

  v3 = **((*(*this + 40))(this) + 8);
  v27 = "unexpected token in '.cv_file' directive";
  v28 = 259;
  llvm::MCAsmParser::check(this, v3 != 3, &v27);
  if (v3 != 3 || ((*(*this + 208))(this, v35) & 1) != 0)
  {
    goto LABEL_44;
  }

  if (llvm::MCAsmParser::parseOptionalToken(this, 9))
  {
    size = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v26 = **((*(*this + 40))(this) + 8);
  v31.__r_.__value_.__r.__words[0] = "unexpected token in '.cv_file' directive";
  v32 = 259;
  llvm::MCAsmParser::check(this, v26 != 3, &v31);
  if (v26 != 3 || ((*(*this + 208))(this, &__p) & 1) != 0 || (v29[0] = "expected checksum kind in '.cv_file' directive", v30 = 259, llvm::MCAsmParser::parseIntToken(this, &v33, v29)) || llvm::MCAsmParser::parseEOL(this))
  {
LABEL_44:
    v24 = 1;
    goto LABEL_45;
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  v5 = __p.__r_.__value_.__r.__words[0];
LABEL_7:
  v7 = v6;
  if ((v6 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v5;
  }

  if ((v6 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = size;
  }

  memset(&v31, 0, sizeof(v31));
  if (v9)
  {
    std::string::resize(&v31, (v9 + 1) >> 1, 0);
    v10 = v31.__r_.__value_.__r.__words[0];
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v31;
    }

    else
    {
      v11 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v9 & 1) == 0)
    {
LABEL_24:
      if (v9 >= 2)
      {
        v14 = v9 >> 1;
        v15 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v16 = llvm::hexDigitValue(char)::LUT[*(v15 - 1)];
          v17 = llvm::hexDigitValue(char)::LUT[*v15];
          if (v16 == 0xFFFF || v17 == 0xFFFF)
          {
            break;
          }

          v15 += 2;
          v11->__r_.__value_.__s.__data_[0] = v17 | (16 * v16);
          v11 = (v11 + 1);
          --v14;
        }

        while (v14);
      }

      goto LABEL_31;
    }

    v12 = llvm::hexDigitValue(char)::LUT[p_p->__r_.__value_.__s.__data_[0]];
    if (v12 != 0xFFFF)
    {
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v31;
      }

      v11->__r_.__value_.__s.__data_[0] = v12;
      v11 = (&v10->__r_.__value_.__l.__data_ + 1);
      v13 = &__p;
      if (v7 < 0)
      {
        v13 = v5;
      }

      p_p = (&v13->__r_.__value_.__l.__data_ + 1);
      --v9;
      goto LABEL_24;
    }
  }

LABEL_31:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v31;
  v19 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v31.__r_.__value_.__r.__words[1];
  }

  v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(this + 27) + 184, v19, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  memcpy(v20, v21, v22);
  v23 = (*(*this + 56))(this);
  if ((*(*v23 + 720))())
  {
    v24 = 0;
  }

  else
  {
    v31.__r_.__value_.__r.__words[0] = "file number already allocated";
    v32 = 259;
    v24 = llvm::MCAsmParser::Error(this, v2, &v31, 0, 0);
  }

LABEL_45:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  return v24;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVFuncId(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v7 = 0;
  {
    return 1;
  }

  v4 = (*(*this + 56))(this);
  if ((*(*v4 + 728))(v4, v7))
  {
    return 0;
  }

  v5 = "function id already allocated";
  v6 = 259;
  return llvm::MCAsmParser::Error(this, v2, &v5, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVInlineSiteId(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v31 = 0;
  {
    return 1;
  }

  if (**((*(*this + 40))(this) + 8) != 2)
  {
    goto LABEL_18;
  }

  v3 = *((*(*this + 40))(this) + 8);
  if (*v3 == 2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
  }

  else
  {
    v4 = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = v6 - 1;
    v8 = v6 != 0;
    if (v6)
    {
      ++v4;
    }

    if (v7 < v8)
    {
      v7 = 1;
    }

    if (v7 >= v6)
    {
      v7 = v6;
    }

    v5 = v7 - v8;
  }

  if (v5 != 6)
  {
LABEL_18:
    v26[0] = "expected 'within' identifier in '.cv_inline_site_id' directive";
    v27 = 259;
    v13 = (*(*this + 40))(this);
    llvm::MCAsmParser::Error(this, *(*(v13 + 8) + 8), v26, 0, 0);
    return 1;
  }

  v9 = *v4 ^ 0x68746977 | *(v4 + 4) ^ 0x6E69;
  v26[0] = "expected 'within' identifier in '.cv_inline_site_id' directive";
  v27 = 259;
  llvm::MCAsmParser::check(this, v9 != 0, v26);
  if (v9)
  {
    return 1;
  }

  v30 = 0;
  (*(*this + 184))(this);
  {
    return 1;
  }

  if (**((*(*this + 40))(this) + 8) != 2)
  {
    goto LABEL_36;
  }

  v10 = *((*(*this + 40))(this) + 8);
  if (*v10 == 2)
  {
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
  }

  else
  {
    v11 = *(v10 + 8);
    v16 = *(v10 + 16);
    v17 = v16 - 1;
    v18 = v16 != 0;
    if (v16)
    {
      ++v11;
    }

    if (v17 < v18)
    {
      v17 = 1;
    }

    if (v17 >= v16)
    {
      v17 = v16;
    }

    v12 = v17 - v18;
  }

  if (v12 != 10)
  {
LABEL_36:
    v26[0] = "expected 'inlined_at' identifier in '.cv_inline_site_id' directive";
    v27 = 259;
    v14 = 1;
    llvm::MCAsmParser::check(this, 1, v26);
    return v14;
  }

  v19 = *v11 ^ 0x5F64656E696C6E69 | *(v11 + 8) ^ 0x7461;
  v26[0] = "expected 'inlined_at' identifier in '.cv_inline_site_id' directive";
  v27 = 259;
  llvm::MCAsmParser::check(this, v19 != 0, v26);
  if (v19)
  {
    return 1;
  }

  v29 = 0;
  (*(*this + 184))(this);
  {
    return 1;
  }

  v28 = 0;
  v26[0] = "expected line number after 'inlined_at'";
  v27 = 259;
  if (llvm::MCAsmParser::parseIntToken(this, &v28, v26))
  {
    return 1;
  }

  if (**((*(*this + 40))(this) + 8) == 4)
  {
    v20 = *((*(*this + 40))(this) + 8);
    v23 = *(v20 + 24);
    v21 = (v20 + 24);
    v22 = v23;
    if (v21[2] >= 0x41)
    {
      v21 = v22;
    }

    v24 = *v21;
    (*(*this + 184))(this);
  }

  else
  {
    v24 = 0;
  }

  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v25 = (*(*this + 56))(this);
  if ((*(*v25 + 736))(v25, v31, v30, v29, v28, v24, v2))
  {
    return 0;
  }

  v26[0] = "function id already allocated";
  v27 = 259;
  return llvm::MCAsmParser::Error(this, v2, v26, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVLoc(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v23 = 0;
  {
    return 1;
  }

  v22 = 0;
  {
    return 1;
  }

  if (**((*(*this + 40))(this) + 8) == 4)
  {
    v3 = *((*(*this + 40))(this) + 8);
    v6 = *(v3 + 24);
    v4 = (v3 + 24);
    v5 = v6;
    if (*(v4 + 2) >= 0x41u)
    {
      v4 = v5;
    }

    v7 = *v4;
    if (*v4 < 0)
    {
      v15 = "line number less than zero in '.cv_loc' directive";
LABEL_19:
      v20[0] = v15;
      v21 = 259;
      v16 = (*(*this + 40))(this);
      llvm::MCAsmParser::Error(this, *(v16 + 96), v20, 0, 0);
      return 1;
    }

    (*(*this + 184))(this);
  }

  else
  {
    v7 = 0;
  }

  if (**((*(*this + 40))(this) + 8) == 4)
  {
    v8 = *((*(*this + 40))(this) + 8);
    v11 = *(v8 + 24);
    v9 = (v8 + 24);
    v10 = v11;
    if (*(v9 + 2) >= 0x41u)
    {
      v9 = v10;
    }

    v12 = *v9;
    if ((*v9 & 0x8000000000000000) == 0)
    {
      (*(*this + 184))(this);
      goto LABEL_15;
    }

    v15 = "column position less than zero in '.cv_loc' directive";
    goto LABEL_19;
  }

  v12 = 0;
LABEL_15:
  v19 = 0;
  v18 = 0;
  v20[0] = this;
  v20[1] = &v19;
  v20[2] = &v18;
  if ((v13 & 1) == 0)
  {
    v14 = (*(*this + 56))(this);
    (*(*v14 + 744))(v14, v23, v22, v7, v12, v19, v18 != 0);
  }

  return v13;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVLinetable(_anonymous_namespace_::AsmParser *this)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 40))(this);
  {
    return 1;
  }

  v19 = "expected comma";
  v21 = 259;
  if (llvm::MCAsmParser::parseToken(this, 25, &v19))
  {
    return 1;
  }

  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v3 = (*(*this + 192))(this, &v16);
  v12 = "expected identifier in directive";
  v13 = 259;
  if (v3)
  {
    v4 = &v12;
  }

  else
  {
    v19 = "expected comma";
    v21 = 259;
    if (llvm::MCAsmParser::parseToken(this, 25, &v19))
    {
      return 1;
    }

    v2 = *(*((*(*this + 40))(this) + 8) + 8);
    v6 = (*(*this + 192))(this, &v14);
    v10 = "expected identifier in directive";
    v11 = 259;
    if (!v6)
    {
      v7 = (*(*this + 48))(this);
      v21 = 261;
      v19 = v16;
      v20 = v17;
      llvm::MCContext::getOrCreateSymbol(v7, &v19);
      v8 = (*(*this + 48))(this);
      v21 = 261;
      v19 = v14;
      v20 = v15;
      llvm::MCContext::getOrCreateSymbol(v8, &v19);
      v9 = (*(*this + 56))(this);
      (*(*v9 + 752))(v9);
      return 0;
    }

    v4 = &v10;
  }

  llvm::MCAsmParser::Error(this, v2, v4, 0, 0);
  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVInlineLinetable(_anonymous_namespace_::AsmParser *this)
{
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  (*(*this + 40))(this);
  {
    return 1;
  }

  v28 = 0;
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v20 = "expected SourceField in '.cv_inline_linetable' directive";
  v22 = 259;
  if (llvm::MCAsmParser::parseIntToken(this, &v28, &v20))
  {
    return 1;
  }

  v18 = "File id less than zero in '.cv_inline_linetable' directive";
  v19 = 259;
  if (v28 < 1)
  {
    v4 = &v18;
    goto LABEL_12;
  }

  v27 = 0;
  v2 = *(*((*(*this + 40))(this) + 8) + 8);
  v16 = "expected SourceLineNum in '.cv_inline_linetable' directive";
  v17 = 259;
  if (!llvm::MCAsmParser::parseIntToken(this, &v27, &v16))
  {
    v14 = "Line number less than zero in '.cv_inline_linetable' directive";
    v15 = 259;
    if (v27 < 0)
    {
      v4 = &v14;
      goto LABEL_12;
    }

    v2 = *(*((*(*this + 40))(this) + 8) + 8);
    v3 = (*(*this + 192))(this, &v25);
    v12 = "expected identifier in directive";
    v13 = 259;
    if (v3)
    {
      v4 = &v12;
LABEL_12:
      llvm::MCAsmParser::Error(this, v2, v4, 0, 0);
      return 1;
    }

    v2 = *(*((*(*this + 40))(this) + 8) + 8);
    v5 = (*(*this + 192))(this, &v23);
    v10 = "expected identifier in directive";
    v11 = 259;
    if (v5)
    {
      v4 = &v10;
      goto LABEL_12;
    }

    if (!llvm::MCAsmParser::parseEOL(this))
    {
      v7 = (*(*this + 48))(this);
      v22 = 261;
      v20 = v25;
      v21 = v26;
      llvm::MCContext::getOrCreateSymbol(v7, &v20);
      v8 = (*(*this + 48))(this);
      v22 = 261;
      v20 = v23;
      v21 = v24;
      llvm::MCContext::getOrCreateSymbol(v8, &v20);
      v9 = *(*(*this + 56))(this);
      (*(v9 + 760))();
      return 0;
    }
  }

  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVDefRange(_anonymous_namespace_::AsmParser *this)
{
  if (**((*(*this + 40))(this) + 8) == 2)
  {
    v2 = *((*(*this + 40))(this) + 96);
    v21 = 0;
    v22 = 0;
    if (!(*(*this + 192))(this, &v21))
    {
      v3 = (*(*this + 48))(this);
      v20 = 261;
      v18 = v21;
      v19 = v22;
      llvm::MCContext::getOrCreateSymbol(v3, &v18);
      v2 = *((*(*this + 40))(this) + 96);
      v16 = 0;
      v17 = 0;
      if (!(*(*this + 192))(this, &v16))
      {
        v4 = (*(*this + 48))(this);
        v20 = 261;
        v18 = v16;
        v19 = v17;
        llvm::MCContext::getOrCreateSymbol(v4, &v18);
        operator new();
      }
    }

    v5 = "expected identifier in directive";
    goto LABEL_12;
  }

  v2 = 0;
  v21 = 0;
  v22 = 0;
  v18 = "expected comma before def_range type in .cv_def_range directive";
  v20 = 259;
  if (!llvm::MCAsmParser::parseToken(this, 25, &v18) && ((*(*this + 192))(this, &v21) & 1) == 0)
  {
    Key = llvm::StringMapImpl::FindKey(this + 103, v21, v22);
    if (Key == -1 || Key == *(this + 208))
    {
      goto LABEL_11;
    }

    v9 = *(*(*(this + 103) + 8 * Key) + 8);
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v15 = 0;
          v16 = 0;
          v14 = 0;
          v18 = "expected comma before register number in .cv_def_range directive";
          v20 = 259;
          if (llvm::MCAsmParser::parseToken(this, 25, &v18) || ((*(*this + 256))(this, &v16) & 1) != 0)
          {
            v5 = "expected register value";
            goto LABEL_12;
          }

          v18 = "expected comma before flag value in .cv_def_range directive";
          v20 = 259;
          if (llvm::MCAsmParser::parseToken(this, 25, &v18) || ((*(*this + 256))(this, &v15) & 1) != 0)
          {
            v5 = "expected flag value";
            goto LABEL_12;
          }

          v18 = "expected comma before base pointer offset in .cv_def_range directive";
          v20 = 259;
          if (llvm::MCAsmParser::parseToken(this, 25, &v18) || ((*(*this + 256))(this, &v14) & 1) != 0)
          {
            v5 = "expected base pointer offset value";
            goto LABEL_12;
          }

          v13 = *(*(*this + 56))(this);
          (*(v13 + 776))();
          return 1;
        }

        goto LABEL_11;
      }

      v15 = 0;
      v16 = 0;
      v18 = "expected comma before register number in .cv_def_range directive";
      v20 = 259;
      if (!llvm::MCAsmParser::parseToken(this, 25, &v18) && ((*(*this + 256))(this, &v16) & 1) == 0)
      {
        v18 = "expected comma before offset in .cv_def_range directive";
        v20 = 259;
        if (!llvm::MCAsmParser::parseToken(this, 25, &v18) && ((*(*this + 256))(this, &v15) & 1) == 0)
        {
          v12 = *(*(*this + 56))(this);
          (*(v12 + 784))();
          return 1;
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v16 = 0;
          v18 = "expected comma before offset in .cv_def_range directive";
          v20 = 259;
          if (!llvm::MCAsmParser::parseToken(this, 25, &v18) && ((*(*this + 256))(this, &v16) & 1) == 0)
          {
            v10 = *(*(*this + 56))(this);
            (*(v10 + 800))();
            return 1;
          }

LABEL_37:
          v5 = "expected offset value";
          goto LABEL_12;
        }

LABEL_11:
        v5 = "unexpected def_range type in .cv_def_range directive";
        goto LABEL_12;
      }

      v16 = 0;
      v18 = "expected comma before register number in .cv_def_range directive";
      v20 = 259;
      if (!llvm::MCAsmParser::parseToken(this, 25, &v18) && ((*(*this + 256))(this, &v16) & 1) == 0)
      {
        v11 = *(*(*this + 56))(this);
        (*(v11 + 792))();
        return 1;
      }
    }

    v5 = "expected register number";
    goto LABEL_12;
  }

  v5 = "expected def_range type in directive";
LABEL_12:
  v18 = v5;
  v20 = 259;
  return llvm::MCAsmParser::Error(this, v2, &v18, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVString(llvm::MCContext **this)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  if ((*(*this + 33))(this) & 1) != 0 || ((*(*this + 26))(this, &__p))
  {
    v2 = 1;
  }

  else
  {
    CVContext = llvm::MCContext::getCVContext(this[27]);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v5 = SHIBYTE(v11);
    }

    else
    {
      v5 = v10;
    }

    llvm::CodeViewContext::addToStringTable(CVContext, p_p, v5, &v8);
    v6 = *(*(*this + 7))(this);
    (*(v6 + 512))();
    v2 = 0;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVFileChecksumOffset(_anonymous_namespace_::AsmParser *this)
{
  v6 = 0;
  v4 = "expected identifier in directive";
  v5 = 259;
  if (llvm::MCAsmParser::parseIntToken(this, &v6, &v4) || llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v3 = (*(*this + 56))(this);
  (*(*v3 + 824))(v3, v6);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCVFPOData(_anonymous_namespace_::AsmParser *this)
{
  v2 = *((*(*this + 40))(this) + 96);
  v9 = 0;
  v10 = 0;
  if ((*(*this + 192))(this, &v9))
  {
    v7[0] = "expected symbol name";
    v8 = 259;
    v3 = (*(*this + 40))(this);
    llvm::MCAsmParser::Error(this, *(v3 + 96), v7, 0, 0);
    return 1;
  }

  if (llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v5 = (*(*this + 48))(this);
  v8 = 261;
  v7[0] = v9;
  v7[1] = v10;
  llvm::MCContext::getOrCreateSymbol(v5, v7);
  v6 = *(*(*this + 56))(this);
  (*(v6 + 832))();
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFISections(_anonymous_namespace_::AsmParser *this)
{
  v11 = 0;
  v12 = 0;
  v2 = 0;
  v3 = 0;
  if (llvm::MCAsmParser::parseOptionalToken(this, 9))
  {
LABEL_2:
    v4 = (*(*this + 56))(this);
    (*(*v4 + 864))(v4, v3 & 1, v2 & 1);
    return 0;
  }

  else
  {
    while (!(*(*this + 192))(this, &v11))
    {
      if (v12 == 12)
      {
        v9 = *v11 == 0x665F67756265642ELL && *(v11 + 8) == 1701667186;
        v2 |= v9;
      }

      else if (v12 == 9)
      {
        v7 = *v11 == 0x6D6172665F68652ELL && *(v11 + 8) == 101;
        v3 |= v7;
      }

      if (llvm::MCAsmParser::parseOptionalToken(this, 9))
      {
        goto LABEL_2;
      }

      v13[0] = "expected comma";
      v14 = 259;
      if (llvm::MCAsmParser::parseToken(this, 25, v13))
      {
        return 1;
      }
    }

    v13[0] = "expected .eh_frame or .debug_frame";
    v14 = 259;
    v10 = (*(*this + 40))(this);
    llvm::MCAsmParser::Error(this, *(v10 + 96), v13, 0, 0);
    return 1;
  }
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIStartProc(_anonymous_namespace_::AsmParser *this)
{
  v8 = 0;
  v9 = 0;
  if (llvm::MCAsmParser::parseOptionalToken(this, 9))
  {
    goto LABEL_2;
  }

  if (((*(*this + 192))(this, &v8) & 1) != 0 || v9 != 6)
  {
    v6[0] = "unexpected token";
    v7 = 259;
    v5 = (*(*this + 40))(this);
    llvm::MCAsmParser::Error(this, *(*(v5 + 8) + 8), v6, 0, 0);
  }

  else
  {
    v4 = *v8 ^ 0x706D6973 | *(v8 + 4) ^ 0x656C;
    v6[0] = "unexpected token";
    v7 = 259;
    llvm::MCAsmParser::check(this, v4 != 0, v6);
    if (!v4 && !llvm::MCAsmParser::parseEOL(this))
    {
LABEL_2:
      v2 = (*(*this + 56))(this);
      llvm::MCStreamer::emitCFIStartProc(v2, v9 != 0, *(this + 17));
      return 0;
    }
  }

  return 1;
}

BOOL anonymous namespace::AsmParser::parseDirectiveCFIEndProc(_anonymous_namespace_::AsmParser *this)
{
  v2 = llvm::MCAsmParser::parseEOL(this);
  if (!v2)
  {
    v3 = (*(*this + 56))(this);
    llvm::MCStreamer::emitCFIEndProc(v3);
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIDefCfa(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  {
    return 1;
  }

  v7 = "expected comma";
  v8 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, &v7) || ((*(*a1 + 256))(a1, &v5) & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 872))(v4, v6, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIDefCfaOffset(_anonymous_namespace_::AsmParser *this)
{
  v4 = 0;
  if (((*(*this + 256))(this, &v4) & 1) != 0 || llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v3 = (*(*this + 56))(this);
  (*(*v3 + 880))(v3, v4);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIAdjustCfaOffset(_anonymous_namespace_::AsmParser *this)
{
  v4 = 0;
  if (((*(*this + 256))(this, &v4) & 1) != 0 || llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v3 = (*(*this + 56))(this);
  (*(*v3 + 968))(v3, v4);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIDefCfaRegister(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 888))(v4, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFILLVMDefAspaceCfa(llvm::MCAsmParser *a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  {
    return 1;
  }

  v8[0] = "expected comma";
  v9 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, v8))
  {
    return 1;
  }

  if ((*(*a1 + 256))(a1, &v6))
  {
    return 1;
  }

  v8[0] = "expected comma";
  v9 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, v8) || ((*(*a1 + 256))(a1, &v5) & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 896))(v4, v7, v6, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIOffset(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  {
    return 1;
  }

  v7 = "expected comma";
  v8 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, &v7) || ((*(*a1 + 256))(a1, &v5) & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 904))(v4, v6, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIRelOffset(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  {
    return 1;
  }

  v7 = "expected comma";
  v8 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, &v7) || ((*(*a1 + 256))(a1, &v5) & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 960))(v4, v6, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIPersonalityOrLsda(_anonymous_namespace_::AsmParser *this, int a2)
{
  v18 = 0;
  if (((*(*this + 256))(this, &v18) & 1) == 0)
  {
    if (v18 == 255)
    {
      return 0;
    }

    v16 = 0;
    v17 = 0;
    if (v18 > 0xFF || (v18 & 0xD) != 0 && ((v18 & 0xF) <= 0xC ? (v5 = ((1 << (v18 & 0xF)) & 0x1D18) == 0) : (v5 = 1), v5))
    {
      v14[0] = "unsupported encoding.";
      v15 = 259;
      v11 = (*(*this + 40))(this);
      llvm::MCAsmParser::Error(this, *(*(v11 + 8) + 8), v14, 0, 0);
    }

    else
    {
      v6 = v18 & 0x60;
      v14[0] = "unsupported encoding.";
      v15 = 259;
      llvm::MCAsmParser::check(this, v6 != 0, v14);
      if (!v6)
      {
        v19[0] = "expected comma";
        v20 = 259;
        if (!llvm::MCAsmParser::parseToken(this, 25, v19))
        {
          v7 = (*(*this + 192))(this, &v16);
          v8 = v7;
          v12 = "expected identifier in directive";
          v13 = 259;
          llvm::MCAsmParser::check(this, v7, &v12);
          if ((v8 & 1) == 0 && !llvm::MCAsmParser::parseEOL(this))
          {
            v9 = (*(*this + 48))(this);
            v20 = 261;
            v19[0] = v16;
            v19[1] = v17;
            llvm::MCContext::getOrCreateSymbol(v9, v19);
            v10 = *(*(*this + 56))(this);
            if (a2)
            {
              (*(v10 + 912))();
            }

            else
            {
              (*(v10 + 920))();
            }

            return 0;
          }
        }
      }
    }
  }

  return 1;
}

BOOL anonymous namespace::AsmParser::parseDirectiveCFIRememberState(_anonymous_namespace_::AsmParser *this)
{
  v2 = llvm::MCAsmParser::parseEOL(this);
  if (!v2)
  {
    v3 = (*(*this + 56))(this);
    (*(*v3 + 928))(v3);
  }

  return v2;
}

BOOL anonymous namespace::AsmParser::parseDirectiveCFIRestoreState(_anonymous_namespace_::AsmParser *this)
{
  v2 = llvm::MCAsmParser::parseEOL(this);
  if (!v2)
  {
    v3 = (*(*this + 56))(this);
    (*(*v3 + 936))(v3);
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFISameValue(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 944))(v4, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIRestore(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 952))(v4, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIEscape(_anonymous_namespace_::AsmParser *this)
{
  memset(&v9, 0, sizeof(v9));
  *__c = 0;
  if ((*(*this + 256))(this, __c))
  {
LABEL_2:
    v2 = 1;
  }

  else
  {
    for (i = __c[0]; ; i = __c[0])
    {
      std::string::push_back(&v9, i);
      if (**((*(*this + 40))(this) + 8) != 25)
      {
        break;
      }

      (*(*this + 184))(this);
      if ((*(*this + 256))(this, __c))
      {
        goto LABEL_2;
      }
    }

    v4 = (*(*this + 56))(this);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v9;
    }

    else
    {
      v5 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    (*(*v4 + 976))(v4, v5, size);
    v2 = 0;
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIReturnColumn(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 984))(v4, v5);
  return 0;
}

BOOL anonymous namespace::AsmParser::parseDirectiveCFISignalFrame(_anonymous_namespace_::AsmParser *this)
{
  v2 = llvm::MCAsmParser::parseEOL(this);
  if (!v2)
  {
    v3 = (*(*this + 56))(this);
    (*(*v3 + 1000))(v3);
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIUndefined(llvm::MCAsmParser *a1, uint64_t a2)
{
  v5 = 0;
  {
    return 1;
  }

  v4 = (*(*a1 + 56))(a1);
  (*(*v4 + 1008))(v4, v5);
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveCFIRegister(llvm::MCAsmParser *a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  {
    return 1;
  }

  v8 = "expected comma";
  v9 = 259;
  {
    return 1;
  }

  v5 = (*(*a1 + 56))(a1);
  (*(*v5 + 1016))(v5, v7, v6);
  return 0;
}

BOOL anonymous namespace::AsmParser::parseDirectiveCFIWindowSave(_anonymous_namespace_::AsmParser *this)
{
  v2 = llvm::MCAsmParser::parseEOL(this);
  if (!v2)
  {
    v3 = (*(*this + 56))(this);
    (*(*v3 + 1024))(v3);
  }

  return v2;
}

BOOL anonymous namespace::AsmParser::parseDirectiveMacrosOnOff(llvm::MCAsmParser *a1, uint64_t a2, uint64_t a3)
{
  result = llvm::MCAsmParser::parseEOL(a1);
  if (!result)
  {
    v8 = a3 == 10 && *a2 == 0x5F736F7263616D2ELL && *(a2 + 8) == 28271;
    *(a1 + 416) = *(a1 + 416) & 0xFE | v8;
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveMacro(uint64_t a1, uint64_t a2)
{
  v109 = 0uLL;
  if ((*(*a1 + 192))(a1, &v109))
  {
    *&v82 = "expected identifier in '.macro' directive";
    *&v83[16] = 259;
    v4 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v4 + 96), &v82, 0, 0);
    return 1;
  }

  if (**((*(*a1 + 40))(a1) + 8) == 25)
  {
    (*(*a1 + 184))(a1);
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  v6 = 0;
  if (**((*(*a1 + 40))(a1) + 8) != 9)
  {
    v8 = 0;
    v6 = 0;
    v9 = "'";
    while (1)
    {
      if (v8 != v6 && *(v6 - 7) == 1)
      {
        v67 = *(a1 + 136);
        LOWORD(v105) = 1283;
        *&v102 = "vararg parameter '";
        v103 = *(v6 - 6);
        v104 = *(v6 - 5);
        *&v82 = &v102;
        *v83 = "' should be the last parameter";
        *&v83[16] = 770;
        v5 = llvm::MCAsmParser::Error(a1, v67, &v82, 0, 0);
        goto LABEL_122;
      }

      v82 = 0u;
      memset(v83, 0, 26);
      if ((*(*a1 + 192))(a1, &v82))
      {
        *&v102 = "expected identifier in '.macro' directive";
        LOWORD(v105) = 259;
        v64 = llvm::MCAsmParser::TokError(a1, &v102, 0, 0);
        goto LABEL_143;
      }

      if (v8 != v6)
      {
        break;
      }

LABEL_18:
      if (**(a1 + 48) == 10)
      {
        (*(*a1 + 184))(a1);
        v91 = 0;
        v92 = 0;
        v12 = *(a1 + 136);
        if ((*(*a1 + 192))(a1, &v91))
        {
          v95 = 1283;
          v93[0] = "missing parameter qualifier for '";
          v94 = v82;
          v96[0] = v93;
          v97 = "' in macro '";
          v98 = 770;
          v99[0] = v96;
          v100 = v109;
          v101 = 1282;
          *&v102 = v99;
          v103 = v9;
          LOWORD(v105) = 770;
LABEL_142:
          v64 = llvm::MCAsmParser::Error(a1, v12, &v102, 0, 0);
LABEL_143:
          v5 = v64;
LABEL_63:
          *&v102 = v83;
          std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v102);
          goto LABEL_122;
        }

        if (v92 == 6)
        {
          if (*v91 != 1634886006 || *(v91 + 4) != 26482)
          {
LABEL_140:
            v90 = 773;
            v89[0] = v91;
            v89[1] = v92;
            v89[2] = " is not a valid parameter qualifier for '";
            v93[0] = v89;
            v94 = v82;
            v95 = 1282;
            v96[0] = v93;
            v97 = "' in macro '";
            v98 = 770;
            v99[0] = v96;
            v100 = v109;
            v101 = 1282;
            *&v102 = v99;
            v103 = v9;
            LOWORD(v105) = 770;
            goto LABEL_142;
          }

          v83[25] = 1;
        }

        else
        {
          if (v92 != 3)
          {
            goto LABEL_140;
          }

          if (*v91 != 25970 || *(v91 + 2) != 113)
          {
            goto LABEL_140;
          }

          v83[24] = 1;
        }
      }

      if (**((*(*a1 + 40))(a1) + 8) == 27)
      {
        (*(*a1 + 184))(a1);
        v15 = *(a1 + 136);
        {
          goto LABEL_62;
        }

        if (v83[24] == 1)
        {
          v95 = 1283;
          v93[0] = "pointless default value for required parameter '";
          v94 = v82;
          v96[0] = v93;
          v97 = "' in macro '";
          v98 = 770;
          v99[0] = v96;
          v100 = v109;
          v101 = 1282;
          *&v102 = v99;
          v103 = v9;
          LOWORD(v105) = 770;
          (*(*a1 + 168))(a1, v15, &v102, 0, 0);
        }
      }

      if (v6 >= v108)
      {
        v16 = v9;
        v17 = 0xAAAAAAAAAAAAAAABLL * (v6 - v8) + 1;
        if (v17 > 0x555555555555555)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v108 - v8) >> 4) > v17)
        {
          v17 = 0x5555555555555556 * ((v108 - v8) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v108 - v8) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v18 = 0x555555555555555;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          if (v18 <= 0x555555555555555)
          {
            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v19 = 16 * (v6 - v8);
        v20 = *v83;
        *v19 = v82;
        *(v19 + 16) = v20;
        *(v19 + 32) = *&v83[16];
        memset(v83, 0, 24);
        *(v19 + 40) = *&v83[24];
        v21 = v19 - (v6 - v8);
        if (v8 != v6)
        {
          v22 = v8;
          v23 = v19 - (v6 - v8);
          do
          {
            *v23 = *v22;
            *(v23 + 24) = 0;
            *(v23 + 32) = 0;
            *(v23 + 16) = 0;
            *(v23 + 16) = v22[1];
            *(v23 + 32) = *(v22 + 4);
            *(v22 + 2) = 0;
            *(v22 + 3) = 0;
            *(v22 + 4) = 0;
            *(v23 + 40) = *(v22 + 20);
            v22 += 3;
            v23 += 48;
          }

          while (v22 != v6);
          do
          {
            *&v102 = v8 + 1;
            std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v102);
            v8 += 3;
          }

          while (v8 != v6);
          v8 = v106;
        }

        v6 = (v19 + 48);
        v106 = v21;
        v107 = v19 + 48;
        v108 = 0;
        if (v8)
        {
          operator delete(v8);
        }

        v8 = v21;
        v9 = v16;
      }

      else
      {
        *v6 = v82;
        *(v6 + 3) = 0;
        *(v6 + 4) = 0;
        *(v6 + 2) = 0;
        v6[1] = *v83;
        *(v6 + 4) = *&v83[16];
        memset(v83, 0, 24);
        *(v6 + 20) = *&v83[24];
        v6 += 3;
      }

      v107 = v6;
      if (**((*(*a1 + 40))(a1) + 8) == 25)
      {
        (*(*a1 + 184))(a1);
      }

      *&v102 = v83;
      std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v102);
      if (**((*(*a1 + 40))(a1) + 8) == 9)
      {
        goto LABEL_6;
      }
    }

    v10 = v82;
    v11 = v8;
    while (*(v11 + 1) != *(&v10 + 1) || *(&v10 + 1) && memcmp(*v11, v10, *(&v10 + 1)))
    {
      v11 += 3;
      if (v11 == v6)
      {
        goto LABEL_18;
      }
    }

    v95 = 1283;
    v93[0] = "macro '";
    v94 = v109;
    v96[0] = v93;
    v97 = "' has multiple parameters named '";
    v98 = 770;
    v99[0] = v96;
    v100 = v10;
    v101 = 1282;
    *&v102 = v99;
    v103 = v9;
    LOWORD(v105) = 770;
    v24 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v24 + 96), &v102, 0, 0);
LABEL_62:
    v5 = 1;
    goto LABEL_63;
  }

LABEL_6:
  llvm::MCAsmLexer::Lex((a1 + 40));
  *(&v102 + 1) = 0;
  v103 = 0;
  v105 = 1;
  v104 = 0;
  v7 = *((*(*a1 + 40))(a1) + 8);
  v71 = *(v7 + 8);
  if (*(v7 + 32) > 0x40u)
  {
    operator new[]();
  }

  v72 = *(v7 + 24);
  v25 = 0;
  while (1)
  {
    while (**(a1 + 48) == 1)
    {
      llvm::MCAsmLexer::Lex((a1 + 40));
    }

    if (!**((*(*a1 + 40))(a1) + 8))
    {
      *&v82 = "no matching '.endmacro' in definition";
      *&v83[16] = 259;
      goto LABEL_118;
    }

    if (**((*(*a1 + 40))(a1) + 8) == 2)
    {
      break;
    }

    if (**(a1 + 48) == 8)
    {
      v29 = (*(*a1 + 40))(a1);
    }

LABEL_116:
    (*(*a1 + 224))(a1);
  }

  v26 = *((*(*a1 + 40))(a1) + 8);
  if (*v26 == 2)
  {
    v27 = *(v26 + 8);
    v28 = *(v26 + 16);
  }

  else
  {
    v27 = *(v26 + 8);
    v30 = *(v26 + 16);
    v31 = v30 - 1;
    v32 = v30 != 0;
    if (v30)
    {
      v27 = (v27 + 1);
    }

    if (v31 < v32)
    {
      v31 = 1;
    }

    if (v31 >= v30)
    {
      v31 = v30;
    }

    v28 = v31 - v32;
  }

  if (v28 != 5 || ((v33 = *v27, v34 = *(v27 + 4), v33 == 1684956462) ? (v35 = v34 == 109) : (v35 = 0), !v35))
  {
    v36 = *((*(*a1 + 40))(a1) + 8);
    if (*v36 == 2)
    {
      v37 = *(v36 + 8);
      v38 = *(v36 + 16);
    }

    else
    {
      v37 = *(v36 + 8);
      v39 = *(v36 + 16);
      v40 = v39 - 1;
      v41 = v39 != 0;
      if (v39)
      {
        v37 = (v37 + 1);
      }

      if (v40 < v41)
      {
        v40 = 1;
      }

      if (v40 >= v39)
      {
        v40 = v39;
      }

      v38 = v40 - v41;
    }

    if (v38 != 9 || ((v42 = *v37, v43 = *(v37 + 8), v42 == 0x7263616D646E652ELL) ? (v44 = v43 == 111) : (v44 = 0), !v44))
    {
      v45 = *((*(*a1 + 40))(a1) + 8);
      if (*v45 == 2)
      {
        v46 = *(v45 + 8);
        v47 = *(v45 + 16);
      }

      else
      {
        v46 = *(v45 + 8);
        v48 = *(v45 + 16);
        v49 = v48 - 1;
        v50 = v48 != 0;
        if (v48)
        {
          v46 = (v46 + 1);
        }

        if (v49 < v50)
        {
          v49 = 1;
        }

        if (v49 >= v48)
        {
          v49 = v48;
        }

        v47 = v49 - v50;
      }

      if (v47 == 6)
      {
        v51 = bswap64(*v46 | (*(v46 + 2) << 32));
        v52 = v51 >= 0x2E6D6163726F0000;
        v53 = v51 > 0x2E6D6163726F0000;
        v54 = !v52;
        if (v53 == v54)
        {
          ++v25;
        }
      }

      goto LABEL_116;
    }
  }

  if (v25)
  {
    --v25;
    goto LABEL_116;
  }

  v56 = *((*(*a1 + 40))(a1) + 8);
  v57 = *(v56 + 2);
  v102 = *v56;
  v103 = v57;
  llvm::APInt::operator=(&v104, (v56 + 24));
  llvm::MCAsmLexer::Lex((a1 + 40));
  if (**((*(*a1 + 40))(a1) + 8) == 9)
  {
    v58 = (*(*a1 + 48))(a1);
    Key = llvm::StringMapImpl::FindKey((v58 + 2064), v109, *(&v109 + 1));
    if (Key == -1 || Key == *(v58 + 2072))
    {
      v60 = *(&v102 + 1) - v71;
      v61 = v106;
      v62 = v108;
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v82 = v109;
      *v83 = v71;
      *&v83[8] = v60;
      memset(v81, 0, sizeof(v81));
      v88 = 0;
      v99[0] = v81;
      std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](v99);
      v63 = (*(*a1 + 48))(a1);
      v73[0] = v82;
      v73[1] = *v83;
      v74 = v61;
      v75 = v6;
      *&v83[16] = 0;
      *&v83[24] = 0;
      v76 = v62;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v80 = 0;
      llvm::MCContext::defineMacro(v63, v109, *(&v109 + 1), v73);
      llvm::MCAsmMacro::~MCAsmMacro(v73);
      llvm::MCAsmMacro::~MCAsmMacro(&v82);
      v5 = 0;
      goto LABEL_119;
    }

    v101 = 1283;
    v99[0] = "macro '";
    v100 = v109;
    v96[0] = "' is already defined";
    v98 = 259;
    llvm::operator+(v99, v96, &v82);
LABEL_118:
    v5 = llvm::MCAsmParser::Error(a1, a2, &v82, 0, 0);
    goto LABEL_119;
  }

  if (v102 == 2)
  {
    v65 = *(&v102 + 1);
    v66 = v103;
  }

  else
  {
    v65 = *(&v102 + 1);
    v68 = v103;
    v69 = (v103 - 1);
    v70 = v103 != 0;
    if (v103)
    {
      v65 = *(&v102 + 1) + 1;
    }

    if (v69 < v70)
    {
      v69 = 1;
    }

    if (v69 < v103)
    {
      v68 = v69;
    }

    v66 = (v68 - v70);
  }

  v101 = 1283;
  v99[0] = "unexpected token in '";
  *&v100 = v65;
  *(&v100 + 1) = v66;
  *&v82 = v99;
  *v83 = "' directive";
  *&v83[16] = 770;
  v5 = llvm::MCAsmParser::TokError(a1, &v82, 0, 0);
LABEL_119:
  if (v105 >= 0x41 && v104)
  {
    MEMORY[0x277C69E10](v104, 0x1000C8000313F17);
  }

LABEL_122:
  *&v82 = &v106;
  std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](&v82);
  return v5;
}

BOOL anonymous namespace::AsmParser::parseDirectiveAltmacro(llvm::MCAsmParser *a1, uint64_t a2, uint64_t a3)
{
  result = llvm::MCAsmParser::parseEOL(a1);
  if (!result)
  {
    v8 = a3 == 9 && *a2 == 0x7263616D746C612ELL && *(a2 + 8) == 111;
    *(a1 + 799) = v8;
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveExitMacro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v6 = *(a1 + 352);
  if (*(a1 + 344) == v6)
  {
    v16 = 1283;
    v15[0] = "unexpected '";
    v15[2] = a2;
    v15[3] = a3;
    v17[0] = v15;
    v17[2] = "' in file, no current macro definition";
    v18 = 770;
    v14 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v14 + 96), v17, 0, 0);
    return 1;
  }

  v8 = *(a1 + 296);
  v7 = *(a1 + 304);
  if (*(*(v6 - 8) + 24) != (v7 - v8) >> 3)
  {
    v9 = (v7 - 8);
    v10 = v9 - v8;
    do
    {
      v11 = *v9;
      *(a1 + 288) = *(v9 + 2);
      *(a1 + 284) = v11;
      *(a1 + 304) = v9;
      v12 = *(*(v6 - 8) + 24) == v10 >> 3;
      v10 -= 8;
      v9 -= 2;
    }

    while (!v12);
  }

  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveEndMacro(_anonymous_namespace_::AsmParser *a1, uint64_t a2, uint64_t a3)
{
  if (**((*(*a1 + 40))(a1) + 8) == 9)
  {
    if (*(a1 + 43) != *(a1 + 44))
    {
      return 0;
    }

    v12 = 1283;
    v9 = "unexpected '";
    v10 = a2;
    v11 = a3;
    v7 = "' in file, no current macro definition";
  }

  else
  {
    v12 = 1283;
    v9 = "unexpected token in '";
    v10 = a2;
    v11 = a3;
    v7 = "' directive";
  }

  v13[0] = &v9;
  v13[2] = v7;
  v14 = 770;
  v8 = (*(*a1 + 40))(a1);
  llvm::MCAsmParser::Error(a1, *(v8 + 96), v13, 0, 0);
  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectivePurgeMacro(llvm::MCAsmParser *a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v4 = *(*((*(*a1 + 40))(a1) + 8) + 8);
  v5 = (*(*a1 + 192))(a1, &v16);
  v14[0] = "expected identifier in '.purgem' directive";
  v15 = 259;
  if (v5)
  {
    llvm::MCAsmParser::Error(a1, v4, v14, 0, 0);
    return 1;
  }

  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v7 = (*(*a1 + 48))(a1);
  Key = llvm::StringMapImpl::FindKey((v7 + 2064), v16, v17);
  if (Key == -1 || Key == *(v7 + 2072))
  {
    v13 = 1283;
    v12[0] = "macro '";
    v12[2] = v16;
    v12[3] = v17;
    v14[0] = v12;
    v14[2] = "' is not defined";
    v15 = 770;
    return llvm::MCAsmParser::Error(a1, a2, v14, 0, 0);
  }

  else
  {
    v9 = (*(*a1 + 48))(a1);
    v10 = llvm::StringMapImpl::FindKey((v9 + 2064), v16, v17);
    if (v10 != -1 && v10 != *(v9 + 2072))
    {
      v11 = *(*(v9 + 2064) + 8 * v10);
      llvm::StringMapImpl::RemoveKey(v9 + 2064, (v11 + *(v9 + 2084)), *v11);
      llvm::StringMapEntry<llvm::MCAsmMacro>::Destroy<llvm::MallocAllocator>(v11);
    }

    return 0;
  }
}

BOOL anonymous namespace::AsmParser::parseDirectiveEnd(_DWORD **a1)
{
  v2 = llvm::MCAsmParser::parseEOL(a1);
  if (!v2)
  {
    while (*a1[6])
    {
      llvm::MCAsmLexer::Lex((a1 + 5));
    }
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveError(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 304);
  if (*(a1 + 296) != v5 && *(v5 - 3) == 1)
  {
    (*(*a1 + 224))(a1);
    return 0;
  }

  if (a3)
  {
    v7 = **(a1 + 48);
    if (v7 == 3)
    {
      v10 = (*(*a1 + 40))(a1);
      v11 = *(*(v10 + 8) + 16);
      v12 = v11 != 0;
      if (v11)
      {
        v8 = (*(*(v10 + 8) + 8) + 1);
      }

      else
      {
        v8 = *(*(v10 + 8) + 8);
      }

      if (v11 - 1 < v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11 - 1;
      }

      if (v13 >= v11)
      {
        v13 = *(*(v10 + 8) + 16);
      }

      v9 = v13 - v12;
      (*(*a1 + 184))(a1);
    }

    else
    {
      if (v7 != 9)
      {
        v15[0] = ".error argument must be a string";
        v16 = 259;
        v14 = (*(*a1 + 40))(a1);
        llvm::MCAsmParser::Error(a1, *(v14 + 96), v15, 0, 0);
        return 1;
      }

      v8 = ".error directive invoked in source file";
      v9 = 39;
    }

    v16 = 261;
    v15[0] = v8;
    v15[1] = v9;
  }

  else
  {
    v15[0] = ".err encountered";
    v16 = 259;
  }

  return llvm::MCAsmParser::Error(a1, a2, v15, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseDirectiveWarning(llvm::MCAsmParser *a1, uint64_t a2)
{
  v4 = *(a1 + 38);
  if (*(a1 + 37) != v4 && *(v4 - 3) == 1)
  {
    (*(*a1 + 224))(a1);
    return 0;
  }

  if (llvm::MCAsmParser::parseOptionalToken(a1, 9))
  {
    v6 = ".warning directive invoked in source file";
    v7 = 41;
LABEL_6:
    v15 = 261;
    v14[0] = v6;
    v14[1] = v7;
    return (*(*a1 + 168))(a1, a2, v14, 0, 0);
  }

  if (**(a1 + 6) == 3)
  {
    v8 = (*(*a1 + 40))(a1);
    v9 = *(*(v8 + 8) + 16);
    v10 = v9 != 0;
    if (v9)
    {
      v6 = (*(*(v8 + 8) + 8) + 1);
    }

    else
    {
      v6 = *(*(v8 + 8) + 8);
    }

    if (v9 - 1 < v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 - 1;
    }

    if (v11 >= v9)
    {
      v12 = *(*(v8 + 8) + 16);
    }

    else
    {
      v12 = v11;
    }

    (*(*a1 + 184))(a1);
    if (!llvm::MCAsmParser::parseEOL(a1))
    {
      v7 = v12 - v10;
      goto LABEL_6;
    }
  }

  else
  {
    v14[0] = ".warning argument must be a string";
    v15 = 259;
    v13 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v13 + 96), v14, 0, 0);
  }

  return 1;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveReloc(llvm::MCAsmParser *a1)
{
  v16 = 0;
  v17 = 0;
  v2 = *(*(a1 + 6) + 8);
  v18 = 0;
  if ((*(*a1 + 232))(a1, &v17, &v18))
  {
    return 1;
  }

  v18 = "expected comma";
  v21 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, &v18))
  {
    return 1;
  }

  v3 = **((*(*a1 + 40))(a1) + 8);
  v18 = "expected relocation name";
  v21 = 259;
  llvm::MCAsmParser::check(a1, v3 != 2, &v18);
  if (v3 != 2)
  {
    return 1;
  }

  v4 = *(a1 + 6);
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v4 + 2);
  (*(*a1 + 184))(a1);
  if (**(a1 + 6) == 25)
  {
    (*(*a1 + 184))(a1);
    v7 = *(a1 + 17);
    v18 = 0;
    if ((*(*a1 + 232))(a1, &v16, &v18))
    {
      return 1;
    }

    memset(v13, 0, sizeof(v13));
    v14 = 0;
    if (!llvm::MCExpr::evaluateAsRelocatableImpl(v16, v13, 0, 0, 0, 0, 0))
    {
      v18 = "expression must be relocatable";
      v21 = 259;
      return llvm::MCAsmParser::Error(a1, v7, &v18, 0, 0);
    }
  }

  if (llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v10 = *(*(a1 + 1) + 288);
  v11 = *(*(*a1 + 56))(a1);
  (*(v11 + 1168))(&v18);
  if (v21 != 1)
  {
    return 0;
  }

  if (v18)
  {
    v12 = v6;
  }

  else
  {
    v12 = v2;
  }

  v15 = 260;
  v13[0] = &__p;
  v8 = llvm::MCAsmParser::Error(a1, v12, v13, 0, 0);
  if ((v21 & 1) != 0 && v20 < 0)
  {
    operator delete(__p);
  }

  return v8;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveDCB(llvm::MCAsmParser *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 17);
  if ((*(*a1 + 264))(a1))
  {
    return 1;
  }

  v19 = 0;
  if ((*(*a1 + 256))(a1, &v19))
  {
    return 1;
  }

  if (v19 < 0)
  {
    v17[0] = "'";
    v17[2] = a2;
    v17[3] = a3;
    v18 = 1283;
    v20[0] = v17;
    v20[2] = "' directive with negative repeat count has no effect";
    v21 = 770;
    (*(*a1 + 168))(a1, v8, v20, 0, 0);
    return 0;
  }

  v20[0] = "expected comma";
  v21 = 259;
  if (llvm::MCAsmParser::parseToken(a1, 25, v20))
  {
    return 1;
  }

  v17[0] = 0;
  v9 = *((*(*a1 + 40))(a1) + 96);
  v20[0] = 0;
  if ((*(*a1 + 232))(a1, v17, v20))
  {
    return 1;
  }

  if (*v17[0] != 1)
  {
    for (i = v19; i; --i)
    {
      v16 = (*(*a1 + 56))(a1);
      (*(*v16 + 504))(v16, v17[0], a4, v9);
    }

    return llvm::MCAsmParser::parseEOL(a1);
  }

  v11 = *(v17[0] + 16);
  if (0xFFFFFFFFFFFFFFFFLL >> (-8 * a4) >= v11 || (v12 = -1 << (8 * a4 - 1), v12 <= v11) && v11 <= ~v12)
  {
    for (j = v19; j; --j)
    {
      v14 = (*(*a1 + 56))(a1);
      (*(*v14 + 512))(v14, v11, a4);
    }

    return llvm::MCAsmParser::parseEOL(a1);
  }

  v20[0] = "literal value out of range for directive";
  v21 = 259;
  return llvm::MCAsmParser::Error(a1, v9, v20, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseDirectiveRealDCB(llvm::MCAsmParser *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 17);
  if ((*(*a1 + 264))(a1))
  {
    return 1;
  }

  v15 = 0;
  if ((*(*a1 + 256))(a1, &v15))
  {
    return 1;
  }

  if (v15 < 0)
  {
    v13[0] = "'";
    v13[2] = a2;
    v13[3] = a3;
    v14 = 1283;
    v16 = v13;
    v18 = "' directive with negative repeat count has no effect";
    v19 = 770;
    (*(*a1 + 168))(a1, v8, &v16, 0, 0);
    return 0;
  }

  else
  {
    v16 = "expected comma";
    v19 = 259;
    i = 1;
    if (!llvm::MCAsmParser::parseToken(a1, 25, &v16))
    {
      v17 = 1;
      v16 = 0;
      {
        for (i = v15; i; --i)
        {
          v11 = (*(*a1 + 56))(a1);
          LimitedValue = llvm::APInt::getLimitedValue(&v16, 0xFFFFFFFFFFFFFFFFLL);
          (*(*v11 + 512))(v11, LimitedValue, v17 >> 3);
        }
      }

      if (v17 >= 0x41 && v16)
      {
        MEMORY[0x277C69E10](v16, 0x1000C8000313F17);
      }
    }
  }

  return i;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveDS(llvm::MCAsmParser *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *(a1 + 17);
  if ((*(*a1 + 264))(a1))
  {
    return 1;
  }

  v16 = 0;
  if (((*(*a1 + 256))(a1, &v16) & 1) != 0 || llvm::MCAsmParser::parseEOL(a1))
  {
    return 1;
  }

  v10 = v16;
  if (v16 < 0)
  {
    v12[0] = "'";
    v12[2] = a2;
    v12[3] = a3;
    v13 = 1283;
    v14[0] = v12;
    v14[2] = "' directive with negative repeat count has no effect";
    v15 = 770;
    (*(*a1 + 168))(a1, v8, v14, 0, 0);
  }

  else if (v16)
  {
    do
    {
      v11 = (*(*a1 + 56))(a1);
      llvm::MCStreamer::emitFill(v11, a4, 0);
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectivePrint(llvm::MCAsmParser *a1, uint64_t a2)
{
  v4 = *((*(*a1 + 40))(a1) + 8);
  v5 = *v4;
  v7 = *(v4 + 1);
  v6 = *(v4 + 2);
  if (v4[8] > 0x40)
  {
    operator new[]();
  }

  v8 = *(v4 + 3);
  (*(*a1 + 184))(a1);
  if (v5 == 3 && *v7 == 34)
  {
    v9 = llvm::MCAsmParser::parseEOL(a1);
    if (v9)
    {
      return 1;
    }

    else
    {
      v12 = llvm::outs(v9);
      v13 = v6 - 1;
      v14 = v6 != 0;
      if (v6)
      {
        v15 = v7 + 1;
      }

      else
      {
        v15 = v7;
      }

      if (v13 < v14)
      {
        v13 = 1;
      }

      if (v13 >= v6)
      {
        v13 = v6;
      }

      v16 = llvm::raw_ostream::operator<<(v12, v15, v13 - v14);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
        llvm::raw_ostream::write(v16, 10);
        return 0;
      }

      else
      {
        v10 = 0;
        *(v16 + 4) = v17 + 1;
        *v17 = 10;
      }
    }
  }

  else
  {
    v18 = "expected double quoted string after .print";
    v19 = 259;
    return llvm::MCAsmParser::Error(a1, a2, &v18, 0, 0);
  }

  return v10;
}

BOOL anonymous namespace::AsmParser::parseDirectiveAddrsig(_anonymous_namespace_::AsmParser *this)
{
  v2 = llvm::MCAsmParser::parseEOL(this);
  if (!v2)
  {
    v3 = (*(*this + 56))(this);
    (*(*v3 + 1176))(v3);
  }

  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveAddrsigSym(_anonymous_namespace_::AsmParser *this)
{
  v9 = 0;
  v10 = 0;
  v2 = (*(*this + 192))(this, &v9);
  v3 = v2;
  v7[0] = "expected identifier";
  v8 = 259;
  llvm::MCAsmParser::check(this, v2, v7);
  if ((v3 & 1) != 0 || llvm::MCAsmParser::parseEOL(this))
  {
    return 1;
  }

  v5 = (*(*this + 48))(this);
  v8 = 261;
  v7[0] = v9;
  v7[1] = v10;
  llvm::MCContext::getOrCreateSymbol(v5, v7);
  v6 = *(*(*this + 56))(this);
  (*(v6 + 1184))();
  return 0;
}

uint64_t anonymous namespace::AsmParser::parseDirectivePseudoProbe(_anonymous_namespace_::AsmParser *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  if (**((*(*this + 40))(this) + 8) == 4)
  {
    v24 = "unexpected token in '.pseudoprobe' directive";
    v27 = 259;
    if (llvm::MCAsmParser::parseIntToken(this, &v23, &v24))
    {
      goto LABEL_9;
    }
  }

  if (**((*(*this + 40))(this) + 8) == 4 && (v24 = "unexpected token in '.pseudoprobe' directive", v27 = 259, llvm::MCAsmParser::parseIntToken(this, &v22, &v24)) || **((*(*this + 40))(this) + 8) == 4 && (v24 = "unexpected token in '.pseudoprobe' directive", v27 = 259, llvm::MCAsmParser::parseIntToken(this, &v21, &v24)) || **((*(*this + 40))(this) + 8) == 4 && (v24 = "unexpected token in '.pseudoprobe' directive", v27 = 259, llvm::MCAsmParser::parseIntToken(this, &v20, &v24)))
  {
LABEL_9:
    v2 = 1;
    goto LABEL_28;
  }

  v24 = v26;
  v25 = 0x800000000;
  if (**((*(*this + 40))(this) + 8) == 45)
  {
    while (1)
    {
      (*(*this + 184))(this);
      v15 = 0;
      if (**((*(*this + 40))(this) + 8) == 4)
      {
        v18[0] = "unexpected token in '.pseudoprobe' directive";
        v19 = 259;
        if (llvm::MCAsmParser::parseIntToken(this, &v15, v18))
        {
          break;
        }
      }

      if (**((*(*this + 40))(this) + 8) == 10)
      {
        (*(*this + 184))(this);
      }

      v17 = 0;
      v3 = 0;
      if (**((*(*this + 40))(this) + 8) == 4)
      {
        v18[0] = "unexpected token in '.pseudoprobe' directive";
        v19 = 259;
        if (llvm::MCAsmParser::parseIntToken(this, &v17, v18))
        {
          break;
        }

        v3 = v17;
      }

      v4 = v15;
      v5 = v25;
      if (v25 >= HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 16);
        v5 = v25;
      }

      v6 = (v24 + 16 * v5);
      *v6 = v4;
      v6[1] = v3;
      LODWORD(v25) = v25 + 1;
      if (**((*(*this + 40))(this) + 8) != 45)
      {
        goto LABEL_21;
      }
    }

LABEL_24:
    v2 = 1;
    goto LABEL_26;
  }

LABEL_21:
  v15 = 0;
  v16 = 0;
  v7 = (*(*this + 192))(this, &v15);
  v8 = *this;
  if (v7)
  {
    v9 = *((*(v8 + 40))(this) + 96);
    v18[0] = "unexpected token in '.pseudoprobe' directive";
    v19 = 259;
    v2 = llvm::MCAsmParser::Error(this, v9, v18, 0, 0);
    goto LABEL_26;
  }

  v10 = (*(v8 + 48))(this);
  v19 = 261;
  v18[0] = v15;
  v18[1] = v16;
  v11 = llvm::MCContext::lookupSymbol(v10, v18);
  if (llvm::MCAsmParser::parseEOL(this))
  {
    goto LABEL_24;
  }

  v12 = (*(*this + 56))(this);
  (*(*v12 + 1200))(v12, v23, v22, v21, v20, &v24, v11);
  v2 = 0;
LABEL_26:
  if (v24 != v26)
  {
    free(v24);
  }

LABEL_28:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveLTODiscard(_anonymous_namespace_::AsmParser *this)
{
  v4 = this;
  *(this + 182) = 0;
  v2 = (this + 776);
  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(this + 768, *(this + 97));
  *(this + 96) = v2;
  *v2 = 0u;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveMSEmit(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = 0;
  v8 = *((*(*a1 + 40))(a1) + 96);
  v14[0] = 0;
  if ((*(*a1 + 232))(a1, &v16, v14))
  {
    return 1;
  }

  if (*v16 != 1)
  {
    v13 = "unexpected expression in _emit";
LABEL_9:
    v14[0] = v13;
    v15 = 259;
    return llvm::MCAsmParser::Error(a1, v8, v14, 0, 0);
  }

  if ((*(v16 + 16) + 128) >= 0x180)
  {
    v13 = "literal value out of range for directive";
    goto LABEL_9;
  }

  v10 = *(a3 + 88);
  v11 = *(v10 + 8);
  if (v11 >= *(v10 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long &>(*(a3 + 88), 2, a2, a4);
    return 0;
  }

  else
  {
    result = 0;
    v12 = *v10 + (v11 << 7);
    *v12 = 2;
    *(v12 + 8) = a2;
    *(v12 + 16) = a4;
    *(v12 + 20) = 0;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 24) = 0;
    *(v12 + 48) = 0;
    *(v12 + 112) = 1;
    *(v12 + 120) = 0;
    ++*(v10 + 8);
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseDirectiveMSAlign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v6 = *((*(*a1 + 40))(a1) + 96);
  v14[0] = 0;
  if ((*(*a1 + 232))(a1, &v16, v14))
  {
    return 1;
  }

  if (*v16 != 1)
  {
    v13 = "unexpected expression in align";
LABEL_9:
    v14[0] = v13;
    v15 = 259;
    return llvm::MCAsmParser::Error(a1, v6, v14, 0, 0);
  }

  v8 = *(v16 + 16);
  if ((v8 ^ (v8 - 1)) <= v8 - 1)
  {
    v13 = "literal value not a power of two greater then zero";
    goto LABEL_9;
  }

  v9 = *(a3 + 88);
  v10 = 63 - __clz(v8);
  v11 = *(v9 + 8);
  if (v11 >= *(v9 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,int,unsigned int>(*(a3 + 88), 0, a2, 5, v10);
    return 0;
  }

  else
  {
    result = 0;
    v12 = *v9 + (v11 << 7);
    *v12 = 0;
    *(v12 + 8) = a2;
    *(v12 + 16) = 5;
    *(v12 + 20) = 0;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 24) = v10;
    *(v12 + 48) = 0;
    *(v12 + 112) = 1;
    *(v12 + 120) = 0;
    ++*(v9 + 8);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,int>(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,int>(a1, a2, a3, a4);
  }

  v5 = *a1 + (v4 << 7);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  *(v5 + 20) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  *(v5 + 112) = 1;
  *(v5 + 120) = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t anonymous namespace::AsmParser::parseAndMatchAndEmitTargetInstruction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, char *a6)
{
  v63[32] = *MEMORY[0x277D85DE8];
  v48[0] = a3;
  v48[1] = a4;
  v10 = __p;
  llvm::StringRef::lower(v48, __p);
  v45 = *(a2 + 88);
  if (v47 < 0)
  {
    v10 = __p[0];
  }

  v11 = *(a1 + 8);
  if (v47 >= 0)
  {
    v12 = v47;
  }

  else
  {
    v12 = __p[1];
  }

  v41 = *a5;
  v42 = *(a5 + 2);
  v44 = *(a5 + 8);
  if (v44 > 0x40)
  {
    operator new[]();
  }

  v43 = *(a5 + 3);
  v13 = (*(*v11 + 56))(v11, &v45, v10, v12, &v41, a2);
  if (v44 >= 0x41 && v43)
  {
    MEMORY[0x277C69E10](v43, 0x1000C8000313F17);
  }

  *(a2 + 84) = v13;
  if (*(a1 + 33) == 1)
  {
    v60 = &v61;
    v61 = v63;
    v62 = xmmword_2750C12F0;
    v53 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &unk_2883EB968;
    v14 = llvm::raw_ostream::SetUnbuffered(&v52);
    v15 = v56;
    if ((v55 - v56) > 0x14)
    {
      *v56 = *"parsed instruction: [";
      *(v15 + 13) = *"ction: [";
      v56 += 21;
    }

    else
    {
      v14 = llvm::raw_ostream::write(&v52, "parsed instruction: [", 0x15uLL);
    }

    if (*(a2 + 8))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v17)
        {
          if ((v55 - v56) > 1)
          {
            *v56 = 8236;
            v56 += 2;
          }

          else
          {
            llvm::raw_ostream::write(&v52, ", ", 2uLL);
          }
        }

        v14 = (*(**(*a2 + 8 * v16) + 120))(*(*a2 + 8 * v16), &v52);
        v16 = (v17 + 1);
        v17 = v16;
      }

      while (v16 != *(a2 + 8));
    }

    if (v55 == v56)
    {
      v14 = llvm::raw_ostream::write(&v52, "]", 1uLL);
    }

    else
    {
      *v56++ = 93;
    }

    v19 = *v60;
    v18 = v60[1];
    v51 = 261;
    v50[0] = v19;
    v50[1] = v18;
    v49[0] = 0;
    v49[1] = 0;
    v20 = *(a1 + 240);
    v21 = llvm::errs(v14);
    llvm::SourceMgr::PrintMessage(v20, v21, a6, 3, v50, v49, 1, v22, 0, 0, 1u);
    llvm::raw_ostream::~raw_ostream(&v52);
    if (v61 != v63)
    {
      free(v61);
    }
  }

  if ((*(a1 + 24) != 0) | v13 & 1)
  {
    v23 = 1;
  }

  else
  {
    {
      v24 = (*(*a1 + 48))(a1);
      v25 = (*(*a1 + 56))(a1);
      v26 = *(v25 + 152);
      v27 = v26 ? *(*(v25 + 144) + 32 * v26 - 32) : 0;
      v61 = v27;
      v52 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v24 + 1608), &v61, &v52))
      {
        v28 = *(a1 + 344);
        if (v28 == *(a1 + 352))
        {
          v31 = *(a1 + 280);
          v30 = a6;
        }

        else
        {
          v29 = *v28;
          v30 = *v29;
          v31 = *(v29 + 8);
        }

        LineAndColumn = llvm::SourceMgr::getLineAndColumn(*(a1 + 240), v30, v31);
        if (*(a1 + 432))
        {
          v33 = (*(*a1 + 56))(a1);
          v34 = *(a1 + 424);
          v35 = *(a1 + 432);
          LOBYTE(v52) = 0;
          LOBYTE(v54) = 0;
          LOBYTE(v61) = 0;
          BYTE8(v62) = 0;
          (*(*v33 + 680))(v50);
          v36 = v50[0];
          *((*(*a1 + 48))(a1) + 1604) = v36;
          LineAndColumn = ~llvm::SourceMgr::getLineAndColumn(*(a1 + 240), *(a1 + 448), *(a1 + 456)) + *(a1 + 440) + LineAndColumn;
        }

        v37 = (*(*a1 + 56))(a1);
        v38 = *((*(*a1 + 48))(a1) + 1604);
        (*(*v37 + 712))(v37, v38, LineAndColumn, 0, 1, 0, 0);
      }
    }

    v61 = 0;
    v23 = (*(**(a1 + 8) + 72))(*(a1 + 8), a6, a2 + 80, a2, *(a1 + 224), &v61, *(*(a1 + 8) + 112));
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v23;
}

void std::vector<llvm::AsmCond>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,llvm::StringRef &>(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v24 = 0;
  v29 = 1;
  v30 = 0;
  v21 = 0;
  v22 = a5;
  v23 = a6;
  v7 = llvm::SmallVectorTemplateCommon<llvm::AsmRewrite,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>>(a1, &v17);
  v8 = (*a1 + (*(a1 + 8) << 7));
  v10 = v7[2];
  v9 = v7[3];
  v11 = v7[1];
  *v8 = *v7;
  v8[1] = v11;
  v8[2] = v10;
  v8[3] = v9;
  v12 = v7[7];
  v13 = v7[4];
  v14 = v7[5];
  v8[6] = v7[6];
  v8[7] = v12;
  v8[4] = v13;
  v8[5] = v14;
  v15 = (*(a1 + 8) + 1);
  *(a1 + 8) = v15;
  return *a1 + (v15 << 7) - 128;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::AsmRewrite,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + (v3 << 7) > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 128);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 128);
    }
  }

  return v2;
}

uint64_t llvm::SmallVectorImpl<llvm::AsmToken>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 40 * *(a1 + 8);
  if (a2 + 40 != v4)
  {
    v5 = a2;
    do
    {
      *v5 = *(v5 + 40);
      *(v5 + 16) = *(v5 + 56);
      llvm::APInt::operator=((v5 + 24), (v5 + 64));
      v6 = v5 + 80;
      v5 += 40;
    }

    while (v6 != v4);
  }

  llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::pop_back(a1);
  return a2;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::pop_back(uint64_t result)
{
  v1 = *(result + 8) - 1;
  *(result + 8) = v1;
  v2 = *result + 40 * v1;
  if (*(v2 + 32) >= 0x41u)
  {
    result = *(v2 + 24);
    if (result)
    {
      JUMPOUT(0x277C69E10);
    }
  }

  return result;
}

void llvm::MCContext::setMCLineTableRootFile(uint64_t a1, int a2, void *a3, size_t a4, void *a5, size_t a6, uint64_t a7, __int128 *a8)
{
  v20 = *MEMORY[0x277D85DE8];
  LODWORD(v18) = a2;
  *&v16 = &v18;
  v14 = std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 1560, &v18);
  v18 = *a7;
  v19 = *(a7 + 16);
  v16 = *a8;
  v17 = *(a8 + 2);
  llvm::MCDwarfLineTable::setRootFile((v14 + 5), a3, a4, a5, a6, &v18, &v16);
  v15 = *MEMORY[0x277D85DE8];
}

void llvm::MCDwarfLineTable::setRootFile(uint64_t a1, void *__src, size_t __len, void *a4, size_t a5, __int128 *a6, uint64_t a7)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_20;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  *(a1 + 352) = __dst;
  *(a1 + 368) = v19;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_20:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = a5;
  if (a5)
  {
    memmove(&__dst, a4, a5);
  }

  *(&__dst + a5) = 0;
  v13 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    operator delete(*v13);
  }

  *v13 = __dst;
  *(a1 + 392) = v19;
  *(a1 + 400) = 0;
  v14 = *a6;
  *(a1 + 420) = *(a6 + 16);
  *(a1 + 404) = v14;
  v15 = *(a7 + 16);
  *(a1 + 424) = *a7;
  *(a1 + 440) = v15;
  v16 = *(a6 + 16);
  v17 = *(a1 + 449);
  if (!v16)
  {
    v17 = 0;
  }

  *(a1 + 449) = v17;
  *(a1 + 450) |= v16;
  *(a1 + 448) = *(a7 + 16);
}

uint64_t *std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t anonymous namespace::AsmParser::parseMacroArguments(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3;
  v83[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = -1431655765 * ((a2[5] - a2[4]) >> 4);
  }

  else
  {
    v6 = 0;
  }

  v81 = v83;
  v82 = 0x400000000;
  v7 = v6;
  std::vector<std::vector<llvm::AsmToken>>::resize(a3, v6);
  llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v81, v6);
  v62 = a2;
  if (v6)
  {
    v8 = *(a2[5] - 7);
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = v6 - 1;
  v12 = 0uLL;
  while (1)
  {
    v61 = *(a1 + 136);
    *&v80[10] = v12;
    v79 = v12;
    *v80 = v12;
    if (**(a1 + 48) != 2)
    {
      goto LABEL_16;
    }

    *(&v75 + 1) = 0;
    v76 = 0;
    v78 = 1;
    v77 = 0;
    (*(*(a1 + 40) + 32))(a1 + 40, &v75, 1, 1);
    v13 = v75;
    if (v78 >= 0x41 && v77)
    {
      MEMORY[0x277C69E10](v77, 0x1000C8000313F17);
    }

    if (v13 == 27)
    {
      if ((*(*a1 + 192))(a1, &v79))
      {
        v37 = "invalid argument identifier for formal argument";
        goto LABEL_86;
      }

      if (**(a1 + 48) != 27)
      {
        *&v75 = "expected '=' after formal parameter identifier";
        LOWORD(v78) = 259;
        v60 = llvm::MCAsmParser::TokError(a1, &v75, 0, 0);
        goto LABEL_88;
      }

      (*(*a1 + 184))(a1);
      v14 = v8 & (v10 == v11);
    }

    else
    {
LABEL_16:
      v14 = v8 & (v10 == v11);
      if ((v9 & 1) == 0)
      {
        v9 = 0;
        goto LABEL_20;
      }
    }

    if (!*(&v79 + 1))
    {
      v37 = "cannot mix positional and keyword arguments";
LABEL_86:
      *&v75 = v37;
      LOWORD(v78) = 259;
      v58 = a1;
      v59 = v61;
      goto LABEL_87;
    }

    v9 = 1;
LABEL_20:
    v15 = *(a1 + 136);
    v74 = 0;
    if (*(a1 + 799) != 1)
    {
      goto LABEL_37;
    }

    v16 = **(a1 + 48);
    if (v16 == 36)
    {
      v70[0] = 0;
      v67[0] = 0;
      (*(*a1 + 184))(a1);
      if ((*(*a1 + 232))(a1, v70, &v74))
      {
        v43 = 0;
      }

      else
      {
        v30 = v3;
        v31 = v70[0];
        v32 = (*(*a1 + 56))(a1);
        v33 = (*(*v32 + 72))(v32);
        if (llvm::MCExpr::evaluateAsAbsolute(v31, v67, v33, 0, 0, 0))
        {
          LODWORD(v75) = 4;
          *(&v75 + 1) = v15;
          v76 = (v74 - v15);
          v78 = 64;
          v77 = v67[0];
          std::vector<llvm::AsmToken>::push_back[abi:nn200100](v80, &v75);
          v3 = v30;
          goto LABEL_38;
        }

        *&v75 = "expected absolute expression";
        LOWORD(v78) = 259;
        v58 = a1;
        v59 = v15;
LABEL_87:
        v60 = llvm::MCAsmParser::Error(v58, v59, &v75, 0, 0);
LABEL_88:
        v43 = v60;
      }

      *&v75 = v80;
      goto LABEL_69;
    }

    v17 = v15;
    if (v16 != 38)
    {
LABEL_37:
      {
        goto LABEL_38;
      }

      v43 = 1;
      goto LABEL_68;
    }

    while (1)
    {
      v18 = *v17;
      if (v18 <= 0x20)
      {
        if (*v17)
        {
          v19 = v18 == 10;
        }

        else
        {
          v19 = 1;
        }

        if (v19 || v18 == 13)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (v18 == 33)
      {
        ++v17;
        goto LABEL_36;
      }

      if (v18 == 62)
      {
        break;
      }

LABEL_36:
      ++v17;
    }

    v34 = v3;
    v35 = v17 + 1;
    v74 = v17 + 1;
    (*(*a1 + 184))(a1);
    v36 = (v35 - v15);
    v3 = v34;
    LODWORD(v75) = 3;
    *(&v75 + 1) = v15;
    v76 = v36;
    v78 = 64;
    v77 = 0;
    std::vector<llvm::AsmToken>::push_back[abi:nn200100](v80, &v75);
LABEL_38:
    v21 = *(&v79 + 1);
    LODWORD(v22) = v10;
    if (*(&v79 + 1))
    {
      break;
    }

LABEL_46:
    if (*v80 != *&v80[8])
    {
      v27 = *v3;
      if (0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3) <= v22)
      {
        std::vector<std::vector<llvm::AsmToken>>::resize(v3, (v22 + 1));
        v27 = *v3;
      }

      v28 = (v27 + 24 * v22);
      if (v28 != v80)
      {
        std::vector<llvm::AsmToken>::__assign_with_size[abi:nn200100]<llvm::AsmToken*,llvm::AsmToken*>(v28, *v80, *&v80[8], 0xCCCCCCCCCCCCCCCDLL * ((*&v80[8] - *v80) >> 3));
      }

      if (v82 <= v22)
      {
        llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v81, (v22 + 1));
      }

      v81[v22] = *(a1 + 136);
    }

    v29 = **(a1 + 48);
    v11 = v7 - 1;
    if (v29 == 25)
    {
      (*(*a1 + 184))(a1);
    }

    else if (v29 == 9)
    {
      if (v7)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
        v47 = 48 * v7;
        do
        {
          if (*(*v3 + v45) == *(*v3 + v45 + 8))
          {
            v48 = v62[4];
            if (*(v48 + v46 + 40) == 1)
            {
              v49 = v81[v44];
              if (!v49)
              {
                v49 = *(a1 + 136);
              }

              v50 = (v48 + v46);
              v66 = 1283;
              v63[0] = "missing value for required parameter '";
              v64 = *v50;
              v65 = v50[1];
              v67[0] = v63;
              v68 = "' in macro '";
              v69 = 770;
              v52 = *v62;
              v51 = v62[1];
              v70[0] = v67;
              v71 = v52;
              v72 = v51;
              v73 = 1282;
              *&v75 = v70;
              v76 = "'";
              LOWORD(v78) = 770;
              llvm::MCAsmParser::Error(a1, v49, &v75, 0, 0);
              v48 = v62[4];
              v43 = 1;
            }

            v53 = v48 + v46;
            v54 = *(v53 + 16);
            v55 = *(v53 + 24);
            v56 = (v53 + 16);
            if (v54 != v55)
            {
              v57 = (*v3 + v45);
              if (v56 != v57)
              {
                std::vector<llvm::AsmToken>::__assign_with_size[abi:nn200100]<llvm::AsmToken*,llvm::AsmToken*>(v57, v54, v55, 0xCCCCCCCCCCCCCCCDLL * ((v55 - v54) >> 3));
              }
            }
          }

          v46 += 48;
          v45 += 24;
          ++v44;
        }

        while (v47 != v46);
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_68;
    }

    *&v75 = v80;
    std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v75);
    ++v10;
    v12 = 0uLL;
    if (v7 - 1 < v10)
    {
      *&v79 = "too many positional arguments";
      *&v80[16] = 259;
      v42 = (*(*a1 + 40))(a1, 0);
      llvm::MCAsmParser::Error(a1, *(v42 + 96), &v79, 0, 0);
      v43 = 1;
      goto LABEL_70;
    }
  }

  if (v7)
  {
    v23 = v8;
    v24 = v3;
    v22 = 0;
    v25 = v79;
    v26 = (v62[4] + 8);
    while (*v26 != v21 || memcmp(*(v26 - 1), v25, v21))
    {
      ++v22;
      v26 += 6;
      if (v7 == v22)
      {
        goto LABEL_67;
      }
    }

    v3 = v24;
    v8 = v23;
    goto LABEL_46;
  }

  v25 = v79;
LABEL_67:
  v66 = 1283;
  v63[0] = "parameter named '";
  v64 = v25;
  v65 = v21;
  v67[0] = v63;
  v68 = "' does not exist for macro '";
  v69 = 770;
  v39 = *v62;
  v38 = v62[1];
  v70[0] = v67;
  v71 = v39;
  v72 = v38;
  v73 = 1282;
  *&v75 = v70;
  v76 = "'";
  LOWORD(v78) = 770;
  v43 = llvm::MCAsmParser::Error(a1, v61, &v75, 0, 0);
LABEL_68:
  *&v75 = v80;
LABEL_69:
  std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v75);
LABEL_70:
  if (v81 != v83)
  {
    free(v81);
  }

  v40 = *MEMORY[0x277D85DE8];
  return v43 & 1;
}

uint64_t anonymous namespace::AsmParser::expandMacro(uint64_t a1, llvm::raw_ostream *this, unsigned __int8 *a3, size_t __n, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, char a9, uint64_t a10)
{
  v10 = a8;
  v12 = a6;
  v13 = __n;
  v16 = a1;
  if (a6)
  {
    v17 = *(a5 + 48 * a6 - 7);
    v18 = (a1 + 796);
    goto LABEL_4;
  }

  v17 = 0;
  v18 = (a1 + 796);
  if ((*(a1 + 796) & 1) == 0)
  {
LABEL_4:
    if (a8 != a6)
    {
      __p.__r_.__value_.__r.__words[0] = "Wrong number of arguments";
      v70 = 259;
      return llvm::MCAsmParser::Error(a1, a10, &__p, 0, 0);
    }
  }

  if (!__n)
  {
    return 0;
  }

  v63 = v17;
  v64 = a6 - 1;
  v67 = v18;
  v68 = a6;
  v66 = (a5 + 8);
  do
  {
    v19 = 0;
    v20 = (v12 != 0) | *v18 ^ 1;
    v21 = v13 - 1;
    for (i = 2; ; ++i)
    {
      v23 = a3[v19];
      if (v20)
      {
        if (v21 != v19 && v23 == 92)
        {
          break;
        }

        goto LABEL_19;
      }

      v24 = v23 != 36 || v21 == v19;
      if (!v24)
      {
        v25 = a3[v19 + 1];
        if (v25 == 36 || v25 == 110 || (*(MEMORY[0x277D85DE0] + 4 * v25 + 60) & 0x400) != 0)
        {
          break;
        }
      }

LABEL_19:
      if (v13 == ++v19)
      {
        llvm::raw_ostream::operator<<(this, a3, v13);
        return 0;
      }
    }

    llvm::raw_ostream::operator<<(this, a3, v19);
    if (v12 || (*v67 & 1) == 0)
    {
      v65 = this;
      if (!a9 || (v28 = (v19 + 2), v13 == v28) || a3[(v19 + 1)] != 64)
      {
        do
        {
          v28 = (i - 1);
          v29 = a3[v28];
          if (v29 < 0)
          {
            if (__maskrune(a3[v28], 0x500uLL))
            {
              goto LABEL_38;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v29 + 60) & 0x500) != 0)
          {
            goto LABEL_38;
          }

          if (v29 - 36 > 0x3B || ((1 << (v29 - 36)) & 0x800000000000401) == 0)
          {
            break;
          }

LABEL_38:
          v24 = v13 == i++;
        }

        while (!v24);
      }

      v31 = &a3[v19];
      if (v28 - 2 == v19 && v31[1] == 64)
      {
        this = v65;
        write_unsigned<unsigned long>(v65, *(v16 + 420), 0, 0, 0);
        v28 = v19 + 2;
        goto LABEL_108;
      }

      v61 = v16;
      v62 = a7;
      v60 = v10;
      v32 = ~v19;
      if (v12)
      {
        v33 = 0;
        v34 = v66;
        while (~*v34 + v28 != v19 || v28 - 1 != v19 && memcmp(*(v34 - 1), v31 + 1, v32 + v28))
        {
          v34 += 6;
          if (v68 == ++v33)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        LODWORD(v33) = 0;
      }

      if (v33 == v12)
      {
LABEL_57:
        v16 = v61;
        if (a3[v19 + 1] != 40 || a3[v19 + 2] != 41)
        {
          this = v65;
          v40 = *(v65 + 4);
          v10 = v60;
          if (v40 >= *(v65 + 3))
          {
            llvm::raw_ostream::write(v65, 92);
          }

          else
          {
            *(v65 + 4) = v40 + 1;
            *v40 = 92;
          }

          llvm::raw_ostream::operator<<(v65, v31 + 1, v32 + v28);
LABEL_104:
          a7 = v62;
          goto LABEL_108;
        }

        v28 = v19 + 3;
LABEL_114:
        v10 = v60;
        a7 = v62;
        this = v65;
        goto LABEL_108;
      }

      v41 = (v62 + 24 * v33);
      v42 = *v41;
      v43 = v41[1];
      if (*v41 == v43)
      {
        v16 = v61;
        goto LABEL_114;
      }

      v44 = v63 & (v33 == v64);
      v10 = v60;
      v16 = v61;
      this = v65;
      while (1)
      {
        if (*(v61 + 799))
        {
          v45 = *(v42 + 1);
          v46 = *v45;
          v47 = *v42;
          if (v46 == 37)
          {
            if (v47 == 4)
            {
              v48 = (v42 + 6);
              if (v42[8] >= 0x41)
              {
                v48 = *v48;
              }

              llvm::write_integer(v65, *v48, 0, 0);
              goto LABEL_84;
            }
          }

          else if (v46 == 60)
          {
            if (v47 == 3)
            {
              v53 = *(v42 + 2);
              v54 = v53 - 1;
              v55 = v53 != 0;
              if (v53)
              {
                ++v45;
              }

              if (v54 < v55)
              {
                v54 = 1;
              }

              if (v54 < v53)
              {
                v53 = v54;
              }

              angleBracketString(&__p, v45, v53 - v55);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              llvm::raw_ostream::write(v65, p_p, size);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_84;
            }

            goto LABEL_73;
          }
        }

        else
        {
          v47 = *v42;
        }

        if (!((v47 != 3) | v44 & 1))
        {
          v50 = *(v42 + 2);
          v51 = v50 != 0;
          if (v50)
          {
            v45 = (*(v42 + 1) + 1);
          }

          else
          {
            v45 = *(v42 + 1);
          }

          if (v50 - 1 < v51)
          {
            v52 = 1;
          }

          else
          {
            v52 = v50 - 1;
          }

          if (v52 < v50)
          {
            v50 = v52;
          }

          v49 = v50 - v51;
          goto LABEL_83;
        }

        v45 = *(v42 + 1);
LABEL_73:
        v49 = *(v42 + 2);
LABEL_83:
        llvm::raw_ostream::operator<<(v65, v45, v49);
LABEL_84:
        v42 += 10;
        if (v42 == v43)
        {
          goto LABEL_104;
        }
      }
    }

    v26 = a3[v19 + 1];
    if (v26 == 110)
    {
      write_unsigned<unsigned long>(this, v10, 0, 0, 0);
      goto LABEL_106;
    }

    if (v26 == 36)
    {
      v27 = *(this + 4);
      if (v27 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 36);
      }

      else
      {
        *(this + 4) = v27 + 1;
        *v27 = 36;
      }

LABEL_106:
      v36 = this;
    }

    else
    {
      v35 = (v26 - 48);
      v36 = this;
      if (v35 < v10)
      {
        v37 = (a7 + 24 * v35);
        v38 = *v37;
        v39 = v37[1];
        while (v38 != v39)
        {
          llvm::raw_ostream::operator<<(v36, *(v38 + 8), *(v38 + 16));
          v38 += 40;
        }
      }
    }

    v28 = v19 + 2;
    this = v36;
LABEL_108:
    result = 0;
    if (v13 >= v28)
    {
      v59 = v28;
    }

    else
    {
      v59 = v13;
    }

    a3 += v59;
    v13 -= v59;
    v18 = v67;
  }

  while (v13);
  return result;
}

void std::vector<std::vector<llvm::AsmToken>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      while (v4 != v11)
      {
        v4 -= 3;
        v12 = v4;
        std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v12);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = &v4[3 * ((24 * v6 - 24) / 0x18) + 3];
  }
}

uint64_t *std::vector<llvm::AsmToken>::push_back[abi:nn200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    if (v7 + 1 > 0x666666666666666)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::AsmToken>>(v10);
    }

    v12 = 40 * v7;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v14 = *(a2 + 8);
    *(v12 + 32) = v14;
    if (v14 > 0x40)
    {
      operator new[]();
    }

    *(v12 + 24) = *(a2 + 3);
    v11 = v12 + 40;
    v15 = v2[1];
    v16 = v12 + *v2 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::AsmToken>,llvm::AsmToken*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v2[1] = v12 + 40;
    v18 = v2[2];
    v2[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<llvm::AsmToken>::~__split_buffer(v19);
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = *(a2 + 8);
    *(v4 + 32) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    *(v4 + 24) = *(a2 + 3);
    v11 = v4 + 40;
  }

  v2[1] = v11;
  return result;
}

uint64_t anonymous namespace::AsmParser::jumpToLoc(uint64_t result, unint64_t a2, int a3)
{
  v4 = result;
  v5 = *(result + 240);
  if (!a3)
  {
    result = llvm::SourceMgr::FindBufferContainingLoc(*(result + 240), a2);
    a3 = result;
  }

  v6 = *(*v5 + 24 * (a3 - 1));
  *(v4 + 280) = a3;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16) - v7;
  *(v4 + 192) = v7;
  *(v4 + 200) = v8;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v7;
  }

  *(v4 + 184) = v9;
  *(v4 + 136) = 0;
  *(v4 + 211) = 1;
  return result;
}

uint64_t anonymous namespace::AsmParser::parseMacroArgument(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3)
  {
    if (**(a1 + 48) == 9)
    {
      return 0;
    }

    v21 = (*(*a1 + 200))(a1);
    v23 = v21;
    v25 = a2[1];
    v24 = a2[2];
    if (v25 >= v24)
    {
      v27 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - *a2) >> 3);
      if (v27 + 1 > 0x666666666666666)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - *a2) >> 3);
      v29 = 2 * v28;
      if (2 * v28 <= v27 + 1)
      {
        v29 = v27 + 1;
      }

      if (v28 >= 0x333333333333333)
      {
        v30 = 0x666666666666666;
      }

      else
      {
        v30 = v29;
      }

      v39 = a2;
      if (v30)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::AsmToken>>(v30);
      }

      v33 = 40 * v27;
      *v33 = 3;
      *(v33 + 8) = v23;
      *(v33 + 16) = v22;
      *(v33 + 32) = 64;
      *(v33 + 24) = 0;
      llvm::APInt::clearUnusedBits(v33 + 24);
      v26 = v33 + 40;
      v34 = a2[1];
      v35 = v33 + *a2 - v34;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::AsmToken>,llvm::AsmToken*>(*a2, v34, v35);
      v36 = *a2;
      *a2 = v35;
      a2[1] = v33 + 40;
      v37 = a2[2];
      a2[2] = 0;
      v38[2] = v36;
      v38[3] = v37;
      v38[0] = v36;
      v38[1] = v36;
      std::__split_buffer<llvm::AsmToken>::~__split_buffer(v38);
    }

    else
    {
      *v25 = 3;
      *(v25 + 8) = v21;
      *(v25 + 16) = v22;
      *(v25 + 32) = 64;
      *(v25 + 24) = 0;
      llvm::APInt::clearUnusedBits(v25 + 24);
      v26 = v25 + 40;
    }

    result = 0;
    a2[1] = v26;
    return result;
  }

  v6 = 0;
  *(a1 + 144) = *(a1 + 796);
  while (1)
  {
    while (1)
    {
      v7 = **(a1 + 48);
      if (v7 == 27 || v7 == 0)
      {
        v31 = "unexpected token in macro instantiation";
        goto LABEL_47;
      }

      if (v6)
      {
        if (v7 == 9)
        {
          v31 = "unbalanced parentheses in macro argument";
LABEL_47:
          v38[0] = v31;
          LOWORD(v39) = 259;
          v32 = (*(*a1 + 40))(a1);
          llvm::MCAsmParser::Error(a1, *(v32 + 96), v38, 0, 0);
          result = 1;
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      if (v7 == 11)
      {
        llvm::MCAsmLexer::Lex((a1 + 40));
        v9 = 1;
      }

      else
      {
        v9 = 0;
        result = 0;
        if (v7 == 25)
        {
          goto LABEL_48;
        }
      }

      if (*(a1 + 796))
      {
        break;
      }

      v16 = **(a1 + 48);
      v17 = v16 > 0x2C;
      v18 = (1 << v16) & 0x1FCFF980F000;
      if (v17 || v18 == 0)
      {
        break;
      }

      v20 = (*(*a1 + 40))(a1);
      std::vector<llvm::AsmToken>::push_back[abi:nn200100](a2, *(v20 + 8));
      llvm::MCAsmLexer::Lex((a1 + 40));
      v6 = 0;
      v14 = 0;
      if (**(a1 + 48) == 11)
      {
        goto LABEL_29;
      }
    }

    if (v9)
    {
      break;
    }

    v7 = **(a1 + 48);
    if (v7 == 9)
    {
      break;
    }

LABEL_19:
    v11 = v7 == 18 && v6 != 0;
    v12 = v11 << 31 >> 31;
    if (v7 == 17)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 + v6;
    v15 = (*(*a1 + 40))(a1);
    std::vector<llvm::AsmToken>::push_back[abi:nn200100](a2, *(v15 + 8));
LABEL_29:
    llvm::MCAsmLexer::Lex((a1 + 40));
    v6 = v14;
  }

  result = 0;
LABEL_48:
  *(a1 + 144) = 1;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::AsmToken>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::AsmToken>,llvm::AsmToken*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 24) = *(v5 + 24);
      *(v5 + 32) = 0;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 32) >= 0x41u)
      {
        result = *(v4 + 24);
        if (result)
        {
          result = MEMORY[0x277C69E10](result, 0x1000C8000313F17, a3);
        }
      }

      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<llvm::AsmToken>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 8) >= 0x41u)
      {
        v5 = *(v2 - 16);
        if (v5)
        {
          MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
          v4 = *(a1 + 16);
        }
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<llvm::AsmToken>::__assign_with_size[abi:nn200100]<llvm::AsmToken*,llvm::AsmToken*>(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<llvm::AsmToken>::__base_destruct_at_end[abi:nn200100](a1, *a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x666666666666666)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::AsmToken>>(v12);
      }
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v13 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 3) >= a4)
  {
    while (v6 != a3)
    {
      v17 = *v6;
      *(v9 + 16) = *(v6 + 2);
      *v9 = v17;
      llvm::APInt::operator=((v9 + 24), (v6 + 24));
      v9 += 40;
      v6 = (v6 + 40);
    }

    return std::vector<llvm::AsmToken>::__base_destruct_at_end[abi:nn200100](a1, v9);
  }

  else
  {
    v14 = a2 + v13 - v9;
    if (v13 != v9)
    {
      do
      {
        v15 = *v6;
        *(v9 + 16) = *(v6 + 2);
        *v9 = v15;
        llvm::APInt::operator=((v9 + 24), (v6 + 24));
        v6 = (v6 + 40);
        v9 += 40;
      }

      while (v6 != v14);
      v13 = a1[1];
    }

    result = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<llvm::AsmToken>,llvm::AsmToken*,llvm::AsmToken*,llvm::AsmToken*>(v14, a3, v13);
    a1[1] = result;
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<llvm::AsmToken>,llvm::AsmToken*,llvm::AsmToken*,llvm::AsmToken*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1 + 24;
    do
    {
      v5 = *(v4 - 24);
      *(a3 + 16) = *(v4 - 8);
      *a3 = v5;
      v6 = *(v4 + 8);
      *(a3 + 32) = v6;
      if (v6 > 0x40)
      {
        operator new[]();
      }

      *(a3 + 24) = *v4;
      v7 = v4 - 24;
      a3 += 40;
      v4 += 40;
    }

    while (v7 + 40 != a2);
  }

  return a3;
}

void angleBracketString(std::string *this, uint64_t a2, unint64_t a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3)
  {
    v6 = 0;
    do
    {
      if (*(a2 + v6) == 33)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = v6;
      }

      std::string::push_back(this, *(a2 + v7));
      v6 = v7 + 1;
    }

    while (v7 + 1 < a3);
  }
}

void std::vector<std::vector<llvm::AsmToken>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<llvm::AsmToken>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveAscii(llvm::StringRef,BOOL)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (((*(*v2 + 264))(v2) & 1) == 0)
  {
    while (((*(*v2 + 208))(v2, &__p) & 1) == 0)
    {
      v4 = (*(*v2 + 56))(v2);
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v11 >= 0)
      {
        v6 = SHIBYTE(v11);
      }

      else
      {
        v6 = v10;
      }

      (*(*v4 + 488))(v4, p_p, v6);
      if (*a1[1])
      {
        goto LABEL_13;
      }

      if (**((*(*v2 + 40))(v2) + 8) != 3)
      {
        if (*a1[1])
        {
LABEL_13:
          v7 = (*(*v2 + 56))(v2);
          (*(*v7 + 488))(v7, &unk_2750C81A0, 1);
        }

        v3 = 0;
        goto LABEL_15;
      }
    }
  }

  v3 = 1;
LABEL_15:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return v3;
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveValue(llvm::StringRef,unsigned int)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v14 = 0;
  v3 = *((*(*v2 + 40))(v2) + 96);
  if ((*(*v2 + 264))(v2))
  {
    return 1;
  }

  v12[0] = 0;
  if ((*(*v2 + 232))(v2, &v14, v12))
  {
    return 1;
  }

  if (*v14 == 1)
  {
    v5 = *(v14 + 16);
    v6 = 8 * **(a1 + 8);
    if (v6 <= 0x3F && 0xFFFFFFFFFFFFFFFFLL >> (-8 * **(a1 + 8)) < v5)
    {
      v8 = -1 << (v6 - 1);
      if (v8 > v5 || v5 > ~v8)
      {
        v12[0] = "out of range literal value";
        v13 = 259;
        return llvm::MCAsmParser::Error(v2, v3, v12, 0, 0);
      }
    }

    v11 = (*(*v2 + 56))(v2);
    (*(*v11 + 512))(v11, v5, **(a1 + 8));
  }

  else
  {
    v10 = (*(*v2 + 56))(v2);
    (*(*v10 + 504))(v10, v14, **(a1 + 8), v3);
  }

  return 0;
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveOctaValue(llvm::StringRef)::$_0>(_anonymous_namespace_::AsmParser **a1)
{
  v1 = *a1;
  if ((*(**a1 + 264))(*a1))
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v2 = parseHexOcta(v1, &v8, &v7);
  if ((v2 & 1) == 0)
  {
    v3 = *(*(v1 + 29) + 16);
    v4 = *(*(*(*v1 + 56))(v1) + 512);
    v4();
    v5 = (*(*v1 + 56))(v1);
    (*(*v5 + 512))();
  }

  return v2;
}

uint64_t parseHexOcta(_anonymous_namespace_::AsmParser *a1, unint64_t *a2, unint64_t *a3)
{
  if (**((*(*a1 + 40))(a1) + 8) == 4 || **((*(*a1 + 40))(a1) + 8) == 5)
  {
    v6 = *(*((*(*a1 + 40))(a1) + 8) + 8);
    v7 = *((*(*a1 + 40))(a1) + 8);
    v13 = *(v7 + 32);
    if (v13 > 0x40)
    {
      operator new[]();
    }

    v12 = *(v7 + 24);
    v8 = v12;
    (*(*a1 + 184))(a1);
    *a2 = 0;
    *a3 = v8;
    return 0;
  }

  else
  {
    v14 = "unknown token in expression";
    v15 = 259;
    v10 = (*(*a1 + 40))(a1);
    llvm::MCAsmParser::Error(a1, *(v10 + 96), &v14, 0, 0);
    return 1;
  }
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveRealValue(llvm::StringRef,llvm::fltSemantics const&)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v3 = 1;
  v8 = 1;
  v7 = 0;
  {
    v4 = (*(*v2 + 7))(v2);
    LimitedValue = llvm::APInt::getLimitedValue(&v7, 0xFFFFFFFFFFFFFFFFLL);
    (*(*v4 + 512))(v4, LimitedValue, v8 >> 3);
    v3 = 0;
  }

  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t anonymous namespace::AsmParser::parseRealValue(_DWORD **a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = **((*(*a1 + 5))(a1) + 8);
  if (v6 == 13 || **((*(*a1 + 5))(a1) + 8) == 12)
  {
    llvm::MCAsmLexer::Lex((a1 + 5));
  }

  v7 = *a1[6];
  if (v7 > 3)
  {
    if (v7 != 4 && v7 != 6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 == 1)
    {
      v29 = 260;
      v8 = *a1;
      v27 = (a1 + 14);
      goto LABEL_49;
    }

    if (v7 != 2)
    {
LABEL_7:
      v27 = "unexpected token in directive";
      v29 = 259;
      v8 = *a1;
LABEL_49:
      v21 = v8[5](a1);
      llvm::MCAsmParser::Error(a1, *(v21 + 96), &v27, 0, 0);
      v20 = 1;
      goto LABEL_50;
    }
  }

  llvm::APFloat::Storage::Storage<>(v26, a2);
  v10 = *((*(*a1 + 5))(a1) + 8);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  if (**((*(*a1 + 5))(a1) + 8) != 2)
  {
    llvm::APFloat::convertFromString(v25, v12, v11, 1, &v27);
    if ((v28[0] & 1) != 0 && v27)
    {
      v24 = v27;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v24);
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      v18 = *a1;
      v27 = "invalid floating point literal";
      v29 = 259;
      goto LABEL_38;
    }

LABEL_41:
    if (v6 == 13)
    {
      llvm::APFloat::changeSign(v25);
    }

    (*(*a1 + 23))(a1);
    llvm::APFloat::bitcastToAPInt(&v27, v25);
    if (*(a3 + 8) >= 0x41u && *a3)
    {
      MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
    }

    v20 = 0;
    *a3 = v27;
    *(a3 + 8) = v28[0];
    goto LABEL_47;
  }

  if (v11 >= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v11;
  }

  if (ascii_strncasecmp(v12, "infinity", v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 8;
  }

  if (v14 || (v11 >= 3 ? (v15 = 3) : (v15 = v11), !ascii_strncasecmp(v12, "inf", v15) ? (v16 = v11 == 3) : (v16 = 0), v16))
  {
    LODWORD(v24) = 0;
    llvm::APFloat::Storage::Storage<>(v28, a2);
    llvm::APFloat::makeInf(&v27, 0);
LABEL_40:
    llvm::APFloat::Storage::operator=(v26, v28);
    llvm::APFloat::Storage::~Storage(v28);
    goto LABEL_41;
  }

  if (ascii_strncasecmp(v12, "nan", v15))
  {
    v17 = 0;
  }

  else
  {
    v17 = v11 == 3;
  }

  if (v17)
  {
    llvm::APFloat::getNaN(a2, 0, -1, &v27);
    goto LABEL_40;
  }

  v27 = "invalid floating point literal";
  v29 = 259;
  v18 = *a1;
LABEL_38:
  v19 = v18[5](a1);
  llvm::MCAsmParser::Error(a1, *(v19 + 96), &v27, 0, 0);
  v20 = 1;
LABEL_47:
  llvm::APFloat::Storage::~Storage(v26);
LABEL_50:
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void llvm::APFloat::getNaN(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v7 = 64;
    v6 = a3;
    v8 = 0;
    llvm::APFloat::Storage::Storage<>((a4 + 8), a1);
    llvm::APFloat::makeNaN(a4, 0, a2, &v6);
    if (v7 >= 0x41)
    {
      if (v6)
      {
        MEMORY[0x277C69E10](v6, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    llvm::APFloat::Storage::Storage<>((a4 + 8), a1);
    llvm::APFloat::makeNaN(a4, 0, a2, 0);
  }
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveSymbolAttribute(llvm::MCSymbolAttr)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v11 = 0;
  v12 = 0;
  v3 = *(*((*(*v2 + 40))(v2) + 8) + 8);
  if ((*(*v2 + 192))(v2, &v11))
  {
    v4 = "expected identifier";
LABEL_3:
    v9[0] = v4;
    v10 = 259;
    return llvm::MCAsmParser::Error(v2, v3, v9, 0, 0);
  }

  if (((*(*v2 + 104))(v2, v11, v12) & 1) == 0)
  {
    v6 = (*(*v2 + 48))(v2);
    v10 = 261;
    v9[0] = v11;
    v9[1] = v12;
    Symbol = llvm::MCContext::getOrCreateSymbol(v6, v9);
    if ((*(Symbol + 8) & 1) != 0 && **(a1 + 8) != 28)
    {
      v4 = "non-local symbol required";
      goto LABEL_3;
    }

    v8 = (*(*v2 + 56))(v2);
    if (((*(*v8 + 296))(v8, Symbol, **(a1 + 8)) & 1) == 0)
    {
      v4 = "unable to emit symbol attribute";
      goto LABEL_3;
    }
  }

  return 0;
}

unint64_t anonymous namespace::AsmParser::parseMacroLikeBody(uint64_t a1, uint64_t a2)
{
  *(&v72 + 1) = 0;
  v73 = 0;
  v75 = 1;
  v74 = 0;
  v4 = *((*(*a1 + 40))(a1) + 8);
  v66 = *(v4 + 8);
  if (*(v4 + 32) > 0x40u)
  {
    operator new[]();
  }

  v67 = *(v4 + 24);
  if (!**((*(*a1 + 40))(a1) + 8))
  {
LABEL_78:
    v70[0] = "no matching '.endr' in definition";
    v71 = 259;
    (*(*a1 + 176))(a1, a2, v70, 0, 0);
LABEL_79:
    v45 = 0;
    goto LABEL_80;
  }

  v5 = 0;
  while (1)
  {
    if (**(a1 + 48) == 2)
    {
      v6 = *((*(*a1 + 40))(a1) + 8);
      if (*v6 == 2)
      {
        v7 = *(v6 + 8);
        v8 = *(v6 + 16);
      }

      else
      {
        v7 = *(v6 + 8);
        v9 = *(v6 + 16);
        v10 = v9 - 1;
        v11 = v9 != 0;
        if (v9)
        {
          v7 = (v7 + 1);
        }

        if (v10 < v11)
        {
          v10 = 1;
        }

        if (v10 >= v9)
        {
          v10 = v9;
        }

        v8 = v10 - v11;
      }

      if (v8 == 4 && *v7 == 1885696558)
      {
        goto LABEL_58;
      }

      v12 = *((*(*a1 + 40))(a1) + 8);
      if (*v12 == 2)
      {
        v13 = *(v12 + 8);
        v14 = *(v12 + 16);
      }

      else
      {
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = v15 - 1;
        v17 = v15 != 0;
        if (v15)
        {
          v13 = (v13 + 1);
        }

        if (v16 < v17)
        {
          v16 = 1;
        }

        if (v16 >= v15)
        {
          v16 = v15;
        }

        v14 = v16 - v17;
      }

      if (v14 == 5)
      {
        v18 = *v13;
        v19 = *(v13 + 4);
        if (v18 == 1885696558 && v19 == 116)
        {
          goto LABEL_58;
        }
      }

      v21 = *((*(*a1 + 40))(a1) + 8);
      if (*v21 == 2)
      {
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
      }

      else
      {
        v22 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v24 - 1;
        v26 = v24 != 0;
        if (v24)
        {
          v22 = (v22 + 1);
        }

        if (v25 < v26)
        {
          v25 = 1;
        }

        if (v25 >= v24)
        {
          v25 = v24;
        }

        v23 = v25 - v26;
      }

      if (v23 == 4 && *v22 == 1886546222)
      {
        goto LABEL_58;
      }

      v27 = *((*(*a1 + 40))(a1) + 8);
      if (*v27 == 2)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 16);
      }

      else
      {
        v28 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = v30 - 1;
        v32 = v30 != 0;
        if (v30)
        {
          v28 = (v28 + 1);
        }

        if (v31 < v32)
        {
          v31 = 1;
        }

        if (v31 >= v30)
        {
          v31 = v30;
        }

        v29 = v31 - v32;
      }

      if (v29 == 5)
      {
        v33 = *v28;
        v34 = *(v28 + 4);
        if (v33 == 1886546222 && v34 == 99)
        {
LABEL_58:
          ++v5;
        }
      }
    }

    if (**(a1 + 48) != 2)
    {
      goto LABEL_77;
    }

    v36 = *((*(*a1 + 40))(a1) + 8);
    if (*v36 == 2)
    {
      v37 = *(v36 + 8);
      v38 = *(v36 + 16);
    }

    else
    {
      v37 = *(v36 + 8);
      v39 = *(v36 + 16);
      v40 = v39 - 1;
      v41 = v39 != 0;
      if (v39)
      {
        v37 = (v37 + 1);
      }

      if (v40 < v41)
      {
        v40 = 1;
      }

      if (v40 >= v39)
      {
        v40 = v39;
      }

      v38 = v40 - v41;
    }

    if (v38 != 5)
    {
      goto LABEL_77;
    }

    v42 = *v37;
    v43 = *(v37 + 4);
    if (v42 != 1684956462 || v43 != 114)
    {
      goto LABEL_77;
    }

    if (!v5)
    {
      break;
    }

    --v5;
LABEL_77:
    (*(*a1 + 224))(a1);
    if (!**((*(*a1 + 40))(a1) + 8))
    {
      goto LABEL_78;
    }
  }

  v47 = *((*(*a1 + 40))(a1) + 8);
  v48 = *(v47 + 2);
  v72 = *v47;
  v73 = v48;
  llvm::APInt::operator=(&v74, (v47 + 24));
  (*(*a1 + 184))(a1);
  if (**(a1 + 48) != 9)
  {
    v57 = *(*((*(*a1 + 40))(a1) + 8) + 8);
    v70[0] = "unexpected token in '.endr' directive";
    v71 = 259;
    (*(*a1 + 176))(a1, v57, v70, 0, 0);
    goto LABEL_79;
  }

  v49 = *(a1 + 376);
  v50 = *(a1 + 384);
  v51 = *(a1 + 376);
  if (v50 == v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = 46 * (v50 - v51) - 1;
  }

  v53 = (*(&v72 + 1) - v66);
  v54 = 0uLL;
  v68 = 0u;
  v69 = 0;
  v55 = *(a1 + 400);
  v56 = *(a1 + 408) + v55;
  if (v52 == v56)
  {
    v65 = (*(&v72 + 1) - v66);
    if (v55 < 0x2E)
    {
      v58 = *(a1 + 392);
      v59 = *(a1 + 368);
      if (v50 - v51 < (v58 - v59))
      {
        operator new();
      }

      if (v58 == v59)
      {
        v60 = 1;
      }

      else
      {
        v60 = (v58 - v59) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v60);
    }

    *(a1 + 400) = v55 - 46;
    v70[0] = *v51;
    *(a1 + 376) = v51 + 1;
    std::__split_buffer<llvm::orc::LookupState *>::emplace_back<llvm::orc::LookupState *&>((a1 + 368), v70);
    v51 = *(a1 + 376);
    v56 = *(a1 + 408) + *(a1 + 400);
    v54 = v68;
    v61 = v69;
    v53 = v65;
  }

  else
  {
    v61 = 0;
  }

  v62 = v51[v56 / 0x2E];
  v69 = 0;
  v68 = 0uLL;
  v63 = &v62[11 * (v56 % 0x2E)];
  *v63 = 0;
  v63[1] = 0;
  v63[2] = v66;
  v63[3] = v53;
  *(v63 + 2) = v54;
  v63[6] = v61;
  memset(v70, 0, 24);
  *(v63 + 80) = 0;
  v63[7] = 0;
  v63[8] = 0;
  v63[9] = 0;
  v76 = v70;
  std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](&v76);
  ++*(a1 + 408);
  v70[0] = &v68;
  std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](v70);
  v64 = *(a1 + 408) + *(a1 + 400) - 1;
  v45 = *(*(a1 + 376) + 8 * (v64 / 0x2E)) + 88 * (v64 % 0x2E);
LABEL_80:
  if (v75 >= 0x41 && v74)
  {
    MEMORY[0x277C69E10](v74, 0x1000C8000313F17);
  }

  return v45;
}

void anonymous namespace::AsmParser::instantiateMacroLikeBody(int a1, int a2, llvm::raw_ostream *this)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 5)
  {
    *(v4 + 4) = 2674;
    *v4 = 1684956462;
    *(this + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(this, ".endr\n", 6uLL);
  }

  v5 = *(this + 8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = "<instantiation>";
  v9 = 259;
  getMemBufferCopyImpl(v6, v7, &v8, v10);
  operator new();
}

uint64_t anonymous namespace::AsmParser::handleMacroExit(_anonymous_namespace_::AsmParser *this)
{
  (*(*this + 184))(this);
  v2 = *(this + 44);
  result = *(v2 - 8);
  if (result)
  {
    result = MEMORY[0x277C69E40](result, 0x1050C4073F788CFLL);
    v2 = *(this + 44);
  }

  *(this + 44) = v2 - 8;
  return result;
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveLEB128(BOOL)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  v8 = 0;
  v3 = (*(*v2 + 232))(v2, &v7, &v8);
  if ((v3 & 1) == 0)
  {
    v4 = *a1[1];
    v5 = *(*(*v2 + 56))(v2);
    if (v4 == 1)
    {
      (*(v5 + 552))();
    }

    else
    {
      (*(v5 + 544))();
    }
  }

  return v3;
}

BOOL llvm::MCContext::isDwarfMD5UsageConsistent(llvm::MCContext *this)
{
  v1 = *(this + 196);
  if (!v1)
  {
    goto LABEL_5;
  }

  do
  {
    v2 = v1;
    v1 = *v1;
  }

  while (v1);
  if (v2 == this + 1568 || *(v2 + 8))
  {
LABEL_5:
    v2 = this + 1568;
  }

  return !*(v2 + 36) || v2[489] == v2[490];
}

void llvm::MCDwarfLineTableHeader::resetFileTable(llvm::MCDwarfLineTableHeader *this)
{
  llvm::SmallVectorImpl<std::string>::clear(this + 8);
  v2 = *(this + 26);
  if (v2)
  {
    v3 = *(this + 12) + 72 * v2 - 72;
    v4 = -72 * v2;
    do
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      v3 -= 72;
      v4 += 72;
    }

    while (v4);
  }

  *(this + 26) = 0;
  if (*(this + 399) < 0)
  {
    **(this + 47) = 0;
    *(this + 48) = 0;
  }

  else
  {
    *(this + 376) = 0;
    *(this + 399) = 0;
  }

  *(this + 450) = 0;
  *(this + 224) = 256;
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveLoc(void)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v20 = 0;
  v21 = 0;
  v3 = *(*((*(*v2 + 40))(v2) + 8) + 8);
  if ((*(*v2 + 192))(v2, &v20))
  {
    v18[0] = "unexpected token in '.loc' directive";
    v19 = 259;
    v4 = (*(*v2 + 40))(v2);
    llvm::MCAsmParser::Error(v2, *(v4 + 96), v18, 0, 0);
    return 1;
  }

  if (v21 > 11)
  {
    if (v21 == 12)
    {
      if (*v20 != 0x6575676F6C6F7270 || *(v20 + 8) != 1684956511)
      {
        goto LABEL_54;
      }

      v7 = *(a1 + 8);
      v8 = *v7 | 4;
      goto LABEL_38;
    }

    if (v21 != 13)
    {
      if (v21 != 14)
      {
        goto LABEL_54;
      }

      if (*v20 != 0x6575676F6C697065 || *(v20 + 6) != 0x6E696765625F6575)
      {
        goto LABEL_54;
      }

      v7 = *(a1 + 8);
      v8 = *v7 | 8;
      goto LABEL_38;
    }

    if (*v20 != 0x696D697263736964 || *(v20 + 5) != 0x726F74616E696D69)
    {
      goto LABEL_54;
    }

    return ((*(*v2 + 256))(v2, *(a1 + 24)) & 1) != 0;
  }

  if (v21 == 3)
  {
    if (*v20 != 29545 || *(v20 + 2) != 97)
    {
      goto LABEL_54;
    }

    v3 = *(*((*(*v2 + 40))(v2) + 8) + 8);
    v17 = 0;
    v18[0] = 0;
    if ((*(*v2 + 232))(v2, &v17, v18))
    {
      return 1;
    }

    if (*v17 != 1)
    {
      v16 = "isa number not a constant value";
      goto LABEL_55;
    }

    v11 = *(v17 + 16);
    if (v11 < 0)
    {
      v16 = "isa number less than zero";
      goto LABEL_55;
    }

    **(a1 + 16) = v11;
    return 0;
  }

  if (v21 == 7)
  {
    if (*v20 != 1935635305 || *(v20 + 3) != 1953330291)
    {
      goto LABEL_54;
    }

    v3 = *(*((*(*v2 + 40))(v2) + 8) + 8);
    v17 = 0;
    v18[0] = 0;
    if ((*(*v2 + 232))(v2, &v17, v18))
    {
      return 1;
    }

    if (*v17 != 1)
    {
      v16 = "is_stmt value not the constant value of 0 or 1";
      goto LABEL_55;
    }

    v14 = *(v17 + 16);
    if (v14 == 1)
    {
      v7 = *(a1 + 8);
      v8 = *v7 | 1;
    }

    else
    {
      if (v14)
      {
        v16 = "is_stmt value not 0 or 1";
        goto LABEL_55;
      }

      v7 = *(a1 + 8);
      v8 = *v7 & 0xFFFFFFFE;
    }

    goto LABEL_38;
  }

  if (v21 == 11 && *v20 == 0x6C625F6369736162 && *(v20 + 3) == 0x6B636F6C625F6369)
  {
    v7 = *(a1 + 8);
    v8 = *v7 | 2;
LABEL_38:
    *v7 = v8;
    return 0;
  }

LABEL_54:
  v16 = "unknown sub-directive in '.loc' directive";
LABEL_55:
  v18[0] = v16;
  v19 = 259;
  return llvm::MCAsmParser::Error(v2, v3, v18, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseCVFunctionId(llvm::MCAsmParser *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*((*(*a1 + 40))(a1) + 8) + 8);
  v14 = 1283;
  v13[0] = "expected function id in '";
  v13[2] = a3;
  v13[3] = a4;
  v15[0] = v13;
  v15[2] = "' directive";
  v16 = 770;
  if (llvm::MCAsmParser::parseIntToken(a1, a2, v15))
  {
    return 1;
  }

  v9 = *a2;
  v11 = "expected function id within range [0, UINT_MAX)";
  v12 = 259;
  if (v9 >= 0xFFFFFFFF)
  {
    llvm::MCAsmParser::Error(a1, v8, &v11, 0, 0);
    return 1;
  }

  return 0;
}

uint64_t anonymous namespace::AsmParser::parseCVFileId(llvm::MCContext **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*((*(*a1 + 5))(a1) + 8) + 8);
  v24 = 1283;
  v23[0] = "expected integer in '";
  v23[2] = a3;
  v23[3] = a4;
  v25[0] = v23;
  v25[2] = "' directive";
  v26 = 770;
  if (!llvm::MCAsmParser::parseIntToken(a1, a2, v25))
  {
    v9 = *a2;
    v20 = 1283;
    v19[0] = "file number less than one in '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "' directive";
    v22 = 770;
    if (v9 < 1)
    {
      v13 = v21;
    }

    else
    {
      CVContext = llvm::MCContext::getCVContext(a1[27]);
      v11 = (*a2 - 1);
      if (*(CVContext + 48) <= v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = *(*(CVContext + 40) + 32 * v11 + 4) ^ 1;
      }

      v16 = 1283;
      v15[0] = "unassigned file number in '";
      v15[2] = a3;
      v15[3] = a4;
      v17[0] = v15;
      v17[2] = "' directive";
      v18 = 770;
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      v13 = v17;
    }

    llvm::MCAsmParser::Error(a1, v8, v13, 0, 0);
  }

  return 1;
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveCVLoc(void)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v14 = 0;
  v15 = 0;
  v3 = *(*((*(*v2 + 40))(v2) + 8) + 8);
  if ((*(*v2 + 192))(v2, &v14))
  {
    v12[0] = "unexpected token in '.cv_loc' directive";
    v13 = 259;
    v4 = (*(*v2 + 40))(v2);
    llvm::MCAsmParser::Error(v2, *(v4 + 96), v12, 0, 0);
    return 1;
  }

  if (v15 != 7)
  {
    if (v15 == 12 && *v14 == 0x6575676F6C6F7270 && *(v14 + 8) == 1684956511)
    {
      result = 0;
      **(a1 + 8) = 1;
      return result;
    }

    goto LABEL_16;
  }

  if (*v14 != 1935635305 || *(v14 + 3) != 1953330291)
  {
LABEL_16:
    v8 = "unknown sub-directive in '.cv_loc' directive";
    goto LABEL_17;
  }

  v3 = *(*((*(*v2 + 40))(v2) + 8) + 8);
  v11 = 0;
  v12[0] = 0;
  if ((*(*v2 + 232))(v2, &v11, v12))
  {
    return 1;
  }

  v9 = *(a1 + 16);
  *v9 = -1;
  if (*v11 == 1)
  {
    v10 = *(v11 + 16);
    *v9 = v10;
    if (v10 < 2)
    {
      return 0;
    }
  }

  v8 = "is_stmt value not 0 or 1";
LABEL_17:
  v12[0] = v8;
  v13 = 259;
  return llvm::MCAsmParser::Error(v2, v3, v12, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parseRegisterOrRegisterNumber(void **a1, void *a2, uint64_t a3)
{
  v10 = a3;
  v9 = 0;
  if (**(((*a1)[5])(a1) + 8) == 4)
  {
    v5 = (*a1)[32];

    return v5(a1, a2);
  }

  else if ((*(*a1[1] + 32))(a1[1], &v9, &v10, &v10))
  {
    return 1;
  }

  else
  {
    v7 = ((*a1)[6])(a1);
    DwarfRegNum = llvm::MCRegisterInfo::getDwarfRegNum(*(v7 + 152), v9, 1);
    result = 0;
    *a2 = DwarfRegNum;
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::checkForBadMacro(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6)
  {
    v6 = a4;
    if (a4)
    {
      v8 = 0;
      v9 = 0;
      v24 = a6;
      v10 = (a5 + 8);
      v11 = MEMORY[0x277D85DE0];
      do
      {
        v12 = 1;
        while (1)
        {
          v13 = *(a3 + v12 - 1);
          if (v6 != v12 && v13 == 92)
          {
            break;
          }

          if (v6 != v12 && v13 == 36)
          {
            v14 = *(a3 + v12);
            if (v14 == 36)
            {
              goto LABEL_32;
            }

            if (v14 == 110)
            {
              v9 = 1;
LABEL_32:
              v18 = v12 + 1;
              goto LABEL_40;
            }

            if ((*(v11 + 4 * v14 + 60) & 0x400) != 0)
            {
              v9 |= v14 != 36;
              goto LABEL_32;
            }
          }

          if (++v12 - v6 == 1)
          {
            goto LABEL_44;
          }
        }

        v22 = v8;
        v25 = v9;
        v26 = result;
        v27 = a2;
        LODWORD(v15) = v12;
        do
        {
          v16 = *(a3 + v15);
          if (v16 < 0)
          {
            v17 = __maskrune(*(a3 + v15), 0x500uLL);
          }

          else
          {
            v17 = *(v11 + 4 * v16 + 60) & 0x500;
          }

          v18 = v15;
          if (!v17 && (v16 - 36 > 0x3B || ((1 << (v16 - 36)) & 0x800000000000401) == 0))
          {
            break;
          }

          v15 = (v15 + 1);
        }

        while (v6 != v15);
        v23 = v10;
        v20 = v24;
        while (v12 - v18 + *v10 || v12 != v18 && memcmp(*(v10 - 1), (a3 + v12), v18 - v12))
        {
          v10 += 6;
          if (!--v20)
          {
            goto LABEL_35;
          }
        }

        if (v20)
        {
          v8 = 1;
          result = v26;
          a2 = v27;
          v9 = v25;
          goto LABEL_39;
        }

LABEL_35:
        if (*(a3 + v12) == 40 && *(a3 + v12 + 1) == 41)
        {
          v18 = v12 + 2;
        }

        result = v26;
        a2 = v27;
        v9 = v25;
        v8 = v22;
LABEL_39:
        v10 = v23;
LABEL_40:
        if (v6 >= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v6;
        }

        a3 += v21;
        v6 -= v21;
      }

      while (v6);
LABEL_44:
      if (v8 & 1) == 0 && (v9)
      {
        v28 = "macro defined with named parameters which are not used in macro body, possible positional parameter found in body which will have no effect";
        v29 = 259;
        return (*(*result + 168))(result, a2, &v28, 0, 0);
      }
    }
  }

  return result;
}

void llvm::MCContext::defineMacro(_DWORD *a1, uint64_t *a2, unint64_t a3, __int128 *a4)
{
  v23 = *a4;
  v24 = a4[1];
  v7 = a4[2];
  *(a4 + 4) = 0;
  *(a4 + 5) = 0;
  v9 = *(a4 + 6);
  v8 = *(a4 + 7);
  *&v10 = v9;
  *(&v10 + 1) = v8;
  v21 = a4[4];
  v22 = v7;
  v27 = v21;
  v25 = v7;
  v26 = v10;
  *(a4 + 6) = 0;
  *(a4 + 7) = 0;
  *(a4 + 8) = 0;
  *(a4 + 9) = 0;
  v11 = *(a4 + 80);
  v28 = v11;
  v12 = llvm::StringMapImpl::LookupBucketFor((a1 + 516), a2, a3);
  v13 = *(a1 + 258);
  v14 = *(v13 + 8 * v12);
  if (v14)
  {
    if (v14 != -8)
    {
      goto LABEL_7;
    }

    --a1[520];
  }

  v19 = v12;
  v20 = v8;
  v15 = operator new(a3 + 97, 8uLL);
  v16 = v15;
  v17 = v15 + 96;
  if (a3)
  {
    memcpy(v15 + 96, a2, a3);
  }

  v17[a3] = 0;
  *(v16 + 8) = v23;
  *v16 = a3;
  *(v16 + 24) = v24;
  *&v26 = 0;
  v25 = 0uLL;
  *&v18 = v9;
  *(&v18 + 1) = v20;
  *(v16 + 40) = v22;
  *(v16 + 56) = v18;
  *(v16 + 72) = v21;
  v27 = 0uLL;
  *(&v26 + 1) = 0;
  v16[88] = v11;
  *(v13 + 8 * v19) = v16;
  ++a1[519];
  llvm::StringMapImpl::RehashTable((a1 + 516), v19);
LABEL_7:
  v29[0] = &v26 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v29);
  v29[0] = &v25;
  std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](v29);
}

uint64_t llvm::StringMapEntry<llvm::MCAsmMacro>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 40);
  std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](&v3);
  return MEMORY[0x277C69E30](a1, 8);
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::AsmParser::parseDirectiveLTODiscard(void)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v10 = 0uLL;
  v2 = *(*((*(*v1 + 40))(v1) + 8) + 8);
  if ((*(*v1 + 192))(v1, &v10))
  {
    v8 = "expected identifier";
    v9 = 259;
    return llvm::MCAsmParser::Error(v1, v2, &v8, 0, 0);
  }

  if (!*(v1 + 784))
  {
    v4 = *(v1 + 720);
    v5 = *(v1 + 728);
    v6 = v10;
    if (llvm::SmallSet<llvm::StringRef,2u,std::less<llvm::StringRef>>::vfind(v4, *(v1 + 728), v10, *(&v10 + 1)) != v4 + 16 * v5)
    {
      return 0;
    }

    if (v5 <= 1)
    {
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back((v1 + 720), v6, *(&v6 + 1));
      return 0;
    }

    do
    {
      std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(v1 + 768, (*(v1 + 720) + 16 * v5 - 16));
      v7 = *(v1 + 728);
      LODWORD(v5) = v7 - 1;
      *(v1 + 728) = v7 - 1;
    }

    while (v7 != 1);
  }

  std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(v1 + 768, &v10);
  return 0;
}

uint64_t llvm::SmallSet<llvm::StringRef,2u,std::less<llvm::StringRef>>::vfind(uint64_t a1, unsigned int a2, void *__s2, size_t __n)
{
  v4 = a1 + 16 * a2;
  if (a2)
  {
    v7 = a1;
    v8 = 16 * a2;
    while (*(v7 + 8) != __n || __n && memcmp(*v7, __s2, __n))
    {
      v7 += 16;
      v8 -= 16;
      if (!v8)
      {
        return v4;
      }
    }

    return v7;
  }

  return v4;
}

__n128 llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long &>(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  v25 = 1;
  v26 = 0;
  v5 = llvm::SmallVectorTemplateCommon<llvm::AsmRewrite,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>>(a1, &v13);
  v6 = *a1 + (*(a1 + 8) << 7);
  v8 = *(v5 + 32);
  v7 = *(v5 + 48);
  v9 = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  result = *(v5 + 112);
  v11 = *(v5 + 64);
  v12 = *(v5 + 80);
  *(v6 + 96) = *(v5 + 96);
  *(v6 + 112) = result;
  *(v6 + 64) = v11;
  *(v6 + 80) = v12;
  ++*(a1 + 8);
  return result;
}

__n128 llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,int,unsigned int>(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v19 = 0;
  v20 = 0;
  v18 = a5;
  v21 = 0;
  v26 = 1;
  v27 = 0;
  v6 = llvm::SmallVectorTemplateCommon<llvm::AsmRewrite,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>>(a1, &v14);
  v7 = *a1 + (*(a1 + 8) << 7);
  v9 = *(v6 + 32);
  v8 = *(v6 + 48);
  v10 = *(v6 + 16);
  *v7 = *v6;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *(v7 + 48) = v8;
  result = *(v6 + 112);
  v12 = *(v6 + 64);
  v13 = *(v6 + 80);
  *(v7 + 96) = *(v6 + 96);
  *(v7 + 112) = result;
  *(v7 + 64) = v12;
  *(v7 + 80) = v13;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,int>(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v27 = 1;
  v28 = 0;
  v5 = llvm::SmallVectorTemplateCommon<llvm::AsmRewrite,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>>(a1, &v15);
  v6 = (*a1 + (*(a1 + 8) << 7));
  v8 = v5[2];
  v7 = v5[3];
  v9 = v5[1];
  *v6 = *v5;
  v6[1] = v9;
  v6[2] = v8;
  v6[3] = v7;
  v10 = v5[7];
  v11 = v5[4];
  v12 = v5[5];
  v6[6] = v5[6];
  v6[7] = v10;
  v6[4] = v11;
  v6[5] = v12;
  v13 = (*(a1 + 8) + 1);
  *(a1 + 8) = v13;
  return *a1 + (v13 << 7) - 128;
}

void llvm::MCAsmParser::printPendingErrors(llvm::MCAsmParser *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = v3 + 112 * v2;
    v5 = v3 + 8;
    do
    {
      v7 = v5 - 8;
      v6 = *(v5 - 8);
      v16 = v6;
      v17 = v19;
      v18 = xmmword_2750C1860;
      v8 = *(v5 + 8);
      if (v8)
      {
        llvm::SmallVectorImpl<char>::operator=(&v17, v5);
        v6 = v16;
        v9 = v17;
        v8 = v18;
      }

      else
      {
        v9 = v19;
      }

      v20 = *(v5 + 88);
      v15 = 261;
      v14[0] = v9;
      v14[1] = v8;
      (*(*this + 176))(this, v6, v14, v20, *(&v20 + 1));
      if (v17 != v19)
      {
        free(v17);
      }

      v5 += 112;
    }

    while (v7 + 112 != v4);
    v10 = *(this + 6);
    if (v10)
    {
      v11 = (*(this + 2) + 112 * v10 - 104);
      v12 = -112 * v10;
      do
      {
        if (v11 + 3 != *v11)
        {
          free(*v11);
        }

        v11 -= 14;
        v12 += 112;
      }

      while (v12);
    }
  }

  *(this + 6) = 0;
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SetVector<llvm::MCSection *,std::vector<llvm::MCSection *>,llvm::DenseSet<llvm::MCSection *,llvm::DenseMapInfo<llvm::MCSection *,void>>>::insert(void *a1, void *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v19);
  v4 = v20;
  if (v20 == 1)
  {
    v6 = a1[4];
    v5 = a1[5];
    if (v6 >= v5)
    {
      v8 = a1[3];
      v9 = (v6 - v8) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v10 = v5 - v8;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>((a1 + 3), v12);
      }

      v13 = (8 * v9);
      *v13 = *a2;
      v7 = 8 * v9 + 8;
      v14 = a1[3];
      v15 = a1[4] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[3];
      a1[3] = v16;
      a1[4] = v7;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v6 = *a2;
      v7 = (v6 + 1);
    }

    a1[4] = v7;
  }

  return v4;
}

char **llvm::SmallVector<std::unique_ptr<llvm::MCParsedAsmOperand>,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,int,BOOL &>(uint64_t a1, int a2, uint64_t a3, int a4, int a5, char a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,int,BOOL &>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + (v6 << 7);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 20) = 0;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = a5;
  *(v7 + 48) = 0;
  *(v7 + 112) = 1;
  *(v7 + 120) = a6;
  ++*(a1 + 8);
  return a1;
}

uint64_t rewritesSort(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 < v2)
  {
    return 1;
  }

  if (llvm::AsmRewritePrecedence[*a1] > llvm::AsmRewritePrecedence[*a2])
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,int,BOOL &>(uint64_t a1, int a2, uint64_t a3, int a4, int a5, char a6)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v22 = 0;
  v23 = 0;
  v21 = a5;
  v24 = 0;
  v29 = 1;
  v30 = a6;
  v7 = llvm::SmallVectorTemplateCommon<llvm::AsmRewrite,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>>(a1, &v17);
  v8 = (*a1 + (*(a1 + 8) << 7));
  v10 = v7[2];
  v9 = v7[3];
  v11 = v7[1];
  *v8 = *v7;
  v8[1] = v11;
  v8[2] = v10;
  v8[3] = v9;
  v12 = v7[7];
  v13 = v7[4];
  v14 = v7[5];
  v8[6] = v7[6];
  v8[7] = v12;
  v8[4] = v13;
  v8[5] = v14;
  v15 = (*(a1 + 8) + 1);
  *(a1 + 8) = v15;
  return *a1 + (v15 << 7) - 128;
}

uint64_t llvm::array_pod_sort_comparator<unsigned int>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

void anonymous namespace::AsmParser::printMacroInstantiations(_anonymous_namespace_::AsmParser *this)
{
  v2 = *(this + 43);
  v1 = *(this + 44);
  while (v1 != v2)
  {
    v4 = *(v1 - 8);
    v1 -= 8;
    v5 = *v4;
    v9 = "while in macro instantiation";
    v10 = 259;
    v11[0] = 0;
    v11[1] = 0;
    v6 = *(this + 30);
    v7 = llvm::errs(this);
    llvm::SourceMgr::PrintMessage(v6, v7, v5, 3, &v9, v11, 1, v8, 0, 0, 1u);
  }
}

uint64_t anonymous namespace::AsmParser::parseBinOpRHS(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 136);
  v19 = 0;
  if (BinOpPrecedence < a2)
  {
    return 0;
  }

  v10 = BinOpPrecedence;
  while (1)
  {
    (*(*a1 + 184))(a1);
    v18 = 0;
    {
      break;
    }

    v11 = v19;
    v12 = *a3;
    v13 = v18;
    v14 = (*(*a1 + 48))(a1);
    v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v14 + 184, 32, 3);
    *v15 = 0;
    *(v15 + 1) = v11 & 0xFFFFFF | (*(v15 + 4) << 24);
    *(v15 + 8) = v8;
    *(v15 + 16) = v12;
    *(v15 + 24) = v13;
    *a3 = v15;
    v19 = 0;
    if (v10 < a2)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t anonymous namespace::AsmParser::applyModifierToExpr(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  result = (*(**(a1 + 8) + 152))(*(a1 + 8), a2, a3, *(a1 + 216));
  if (!result)
  {
    v7 = *a2;
    if (v7 <= 1)
    {
      if (!*a2)
      {
        if (v11 | v12)
        {
          v13 = v12;
          if (!v11)
          {
            v11 = *(a2 + 2);
          }

          if (!v12)
          {
            v13 = *(a2 + 3);
          }

          v14 = *(a2 + 1);
          v15 = (*(*a1 + 48))(a1);
          result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v15 + 184, 32, 3);
          *result = 0;
          *(result + 1) = v14 & 0xFFFFFF | (*(result + 4) << 24);
          *(result + 8) = 0;
          *(result + 16) = v11;
          *(result + 24) = v13;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v7 != 4)
    {
      if (v7 == 3)
      {
        if (result)
        {
          v8 = result;
          v9 = *(a2 + 1);
          v10 = (*(*a1 + 48))(a1);
          result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v10 + 184, 24, 3);
          *result = 3;
          *(result + 1) = v9 & 0xFFFFFF | (*(result + 4) << 24);
          *(result + 8) = 0;
          *(result + 16) = v8;
        }
      }

      else if (*(a2 + 1))
      {
        v16 = *((*(*a1 + 40))(a1) + 8);
        if (*v16 == 2)
        {
          v17 = *(v16 + 8);
          v18 = *(v16 + 16);
        }

        else
        {
          v17 = *(v16 + 8);
          v22 = *(v16 + 16);
          v23 = v22 - 1;
          v24 = v22 != 0;
          if (v22)
          {
            ++v17;
          }

          if (v23 < v24)
          {
            v23 = 1;
          }

          if (v23 >= v22)
          {
            v23 = v22;
          }

          v18 = v23 - v24;
        }

        v27 = 1283;
        v26[0] = "invalid variant on expression '";
        v26[2] = v17;
        v26[3] = v18;
        v28[0] = v26;
        v28[2] = "' (already modified)";
        v29 = 770;
        v25 = (*(*a1 + 40))(a1);
        llvm::MCAsmParser::Error(a1, *(v25 + 96), v28, 0, 0);
        return a2;
      }

      else
      {
        v19 = *(a2 + 2);
        v20 = (*(*a1 + 48))(a1);
        result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v20 + 184, 24, 3);
        if (*(*(v20 + 144) + 18))
        {
          v21 = 0x10000;
        }

        else
        {
          v21 = 0;
        }

        *result = 2;
        *(result + 1) = v21 | a3 | (*(result + 4) << 24);
        *(result + 8) = 0;
        *(result + 16) = v19;
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::getBinOpPrecedence(uint64_t a1, char a2, int a3, int *a4)
{
  v4 = *(a1 + 488);
  if (a2)
  {
    result = 0;
    v6 = 1;
    v7 = 6;
    switch(a3)
    {
      case 12:
        v7 = 0;
        v6 = 5;
        goto LABEL_44;
      case 13:
        v6 = 5;
        goto LABEL_27;
      case 15:
        goto LABEL_9;
      case 23:
        goto LABEL_7;
      case 28:
        goto LABEL_11;
      case 29:
        v6 = 2;
        goto LABEL_25;
      case 30:
        goto LABEL_35;
      case 31:
        v6 = 2;
        goto LABEL_37;
      case 32:
        v6 = 2;
        goto LABEL_42;
      case 33:
        goto LABEL_44;
      case 35:
      case 41:
        goto LABEL_5;
      case 36:
        goto LABEL_8;
      case 38:
        goto LABEL_6;
      case 39:
        goto LABEL_12;
      case 40:
        v6 = 4;
        goto LABEL_23;
      case 42:
        goto LABEL_13;
      case 43:
        goto LABEL_10;
      case 44:
        if (v4)
        {
          v7 = 17;
        }

        else
        {
          v7 = 16;
        }

        goto LABEL_33;
      default:
        return result;
    }
  }

  else
  {
    result = 0;
    v6 = 2;
    v7 = 6;
    switch(a3)
    {
      case 12:
        v7 = 0;
LABEL_33:
        v6 = 4;
        goto LABEL_44;
      case 13:
        v6 = 4;
LABEL_27:
        v7 = 18;
        goto LABEL_44;
      case 15:
LABEL_9:
        v6 = 6;
        v7 = 2;
        goto LABEL_44;
      case 23:
LABEL_7:
        v6 = 6;
        v7 = 11;
        goto LABEL_44;
      case 28:
LABEL_11:
        v7 = 3;
        v6 = 3;
        goto LABEL_44;
      case 29:
        v6 = 5;
LABEL_25:
        v7 = 13;
        goto LABEL_44;
      case 30:
        v6 = 1;
LABEL_35:
        v7 = 7;
        goto LABEL_44;
      case 31:
        v6 = 5;
LABEL_37:
        v7 = 19;
        goto LABEL_44;
      case 32:
        v6 = 5;
LABEL_42:
        v7 = 1;
        goto LABEL_44;
      case 33:
        goto LABEL_44;
      case 34:
        if (*(a1 + 56) == 1 && **(a1 + 48) == 64)
        {
          result = 0;
        }

        else
        {
          v6 = 5;
          v7 = 14;
LABEL_44:
          *a4 = v7;
          result = v6;
        }

        break;
      case 35:
      case 41:
LABEL_5:
        v6 = 3;
        v7 = 12;
        goto LABEL_44;
      case 36:
LABEL_8:
        v6 = 6;
        v7 = 10;
        goto LABEL_44;
      case 38:
LABEL_6:
        v6 = 3;
        v7 = 8;
        goto LABEL_44;
      case 39:
LABEL_12:
        v6 = 3;
        v7 = 9;
        goto LABEL_44;
      case 40:
        v6 = 6;
LABEL_23:
        v7 = 15;
        goto LABEL_44;
      case 42:
LABEL_13:
        v6 = 3;
        v7 = 4;
        goto LABEL_44;
      case 43:
LABEL_10:
        v6 = 3;
        v7 = 5;
        goto LABEL_44;
      case 44:
        if (v4)
        {
          v7 = 17;
        }

        else
        {
          v7 = 16;
        }

        v6 = 6;
        goto LABEL_44;
      default:
        return result;
    }
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<std::tuple<llvm::SMLoc,anonymous namespace::AsmParser::CppHashInfoTy,llvm::MCSymbol *>,true>::push_back(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= a2 && v5 + 56 * v4 > a2)
    {
      v11 = a2 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 56);
      v5 = *a1;
      v2 = *a1 + v11;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 56);
      v5 = *a1;
    }
  }

  v6 = v5 + 56 * *(a1 + 8);
  result = *v2;
  v8 = *(v2 + 16);
  v9 = *(v2 + 32);
  *(v6 + 48) = *(v2 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = result;
  ++*(a1 + 8);
  return result;
}

BOOL anonymous namespace::AsmParser::parseParenExpr(llvm::MCAsmParser *a1, uint64_t a2, void *a3)
{
  v6[0] = 0;
  if ((*(*a1 + 232))(a1, a2, v6))
  {
    return 1;
  }

  *a3 = *(*(a1 + 6) + 8) + *(*(a1 + 6) + 16);
  v6[0] = "expected ')'";
  v7 = 259;
  return llvm::MCAsmParser::parseToken(a1, 18, v6);
}

BOOL anonymous namespace::AsmParser::parseBracketExpr(llvm::MCAsmParser *a1, uint64_t a2, void *a3)
{
  v7[0] = 0;
  if ((*(*a1 + 232))(a1, a2, v7))
  {
    return 1;
  }

  v6 = (*(*a1 + 40))(a1);
  *a3 = *(*(v6 + 8) + 8) + *(*(v6 + 8) + 16);
  v7[0] = "expected ']' in brackets expression";
  v8 = 259;
  return llvm::MCAsmParser::parseToken(a1, 20, v7);
}

llvm::MCAsmLexer *anonymous namespace::HLASMAsmParser::lexLeadingSpaces(_anonymous_namespace_::HLASMAsmParser *this)
{
  for (result = *(this + 106); **(result + 1) == 11; result = *(this + 106))
  {
    llvm::MCAsmLexer::Lex(result);
  }

  return result;
}

uint64_t anonymous namespace::COFFAsmParser::Initialize(_anonymous_namespace_::COFFAsmParser *this, llvm::MCAsmParser *a2)
{
  *(this + 1) = a2;
  v3 = *(**(this + 1) + 16);

  return v3();
}

BOOL anonymous namespace::COFFAsmParser::ParseSectionSwitch(uint64_t a1, const void *a2, size_t a3, int a4, int a5, std::string::size_type a6, std::string::size_type a7, unsigned int a8)
{
  v16 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v16 == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v19 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v20 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    COFFSection = llvm::MCContext::getCOFFSection(v20, a2, a3, a4, a5, a6, a7, a8, 0xFFFFFFFF, 0);
    (*(*v19 + 168))(v19, COFFSection, 0);
  }

  else
  {
    v23 = "unexpected token in section switching directive";
    v24 = 259;
    v17 = *(a1 + 8);
    v18 = (*(*v17 + 40))(v17);
    llvm::MCAsmParser::Error(v17, *(v18 + 96), &v23, 0, 0);
  }

  return v16 != 9;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveSection>(uint64_t a1)
{
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 2 && **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3)
  {
    v34 = "expected identifier in directive";
    goto LABEL_106;
  }

  v2 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (*v2 == 2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
  }

  else
  {
    v7 = v2 + 8;
    v5 = *(v2 + 8);
    v6 = *(v7 + 8);
    v8 = v6 != 0;
    if (v6)
    {
      v3 = (v5 + 1);
    }

    else
    {
      v3 = v5;
    }

    if (v6 - 1 < v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 - 1;
    }

    if (v9 >= v6)
    {
      v9 = v6;
    }

    v4 = v9 - v8;
  }

  v10 = -1073741760;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
LABEL_79:
    v44 = 0;
    v42 = 0;
    v43 = 0;
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8), v11, v12, v13) + 8) == 25)
    {
      v44 = 2;
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 2)
      {
        v34 = "expected comdat type such as 'discard' or 'largest' after protection bits";
        goto LABEL_106;
      }

      {
        return 1;
      }

      if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
      {
        v34 = "expected comma in directive";
        goto LABEL_106;
      }

      (*(**(a1 + 8) + 184))(*(a1 + 8));
      if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v42))
      {
        v45[0] = "expected identifier in directive";
        v46 = 259;
        return llvm::MCAsmParser::TokError(*(a1 + 8), v45, 0, 0);
      }

      v10 |= 0x1000u;
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      if (v10 >> 30 == 1)
      {
        v35 = 4;
      }

      else
      {
        v35 = 19;
      }

      if ((v10 & 0x20000000) != 0)
      {
        v36 = 2;
      }

      else
      {
        v36 = v35;
      }

      if ((v36 & 0xFFFFFFFE) == 2)
      {
        v37 = *((*(**(a1 + 8) + 48))(*(a1 + 8)) + 48);
        if (v37 == 35 || v37 == 1)
        {
          v10 |= 0x20000u;
        }
      }

      return 0;
    }

    v34 = "unexpected token in directive";
LABEL_106:
    v45[0] = v34;
    v46 = 259;
    v39 = *(a1 + 8);
    v40 = (*(*v39 + 40))(v39);
    llvm::MCAsmParser::Error(v39, *(v40 + 96), v45, 0, 0);
    return 1;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3)
  {
    v34 = "expected string in directive";
    goto LABEL_106;
  }

  v14 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  v17 = v15 - 1;
  v18 = v15 != 0;
  if (v15 - 1 < v18)
  {
    v17 = 1;
  }

  if (v17 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v20 = v19 - v18;
  if (v19 == v18)
  {
LABEL_64:
    v22 = 8;
LABEL_65:
    if ((v22 & 5) == 1)
    {
      v29 = ((v22 << 30) >> 31) & 0x20000020 | (((v22 >> 3) & 1) << 6) | 0x80;
    }

    else
    {
      v29 = ((v22 << 30) >> 31) & 0x20000020 | (((v22 >> 3) & 1) << 6);
    }

    v30 = v29 & 0xFFFFF7FF | (((v22 >> 5) & 1) << 11);
    if ((v22 & 0x100) != 0 || v4 >= 6 && (*v3 == 1650811950 ? (v31 = v3[2] == 26485) : (v31 = 0), v31))
    {
      v30 |= 0x2000000u;
    }

    v31 = (v22 & 0x2D0) == 192;
    v32 = v30 | ((v22 << 24) & 0xD0000000 | v22 & 0x200) ^ 0xC0000000;
    if (v31)
    {
      v10 = v30;
    }

    else
    {
      v10 = v32;
    }

    goto LABEL_79;
  }

  v21 = 0;
  v22 = 0;
  v23 = (v16 + v18);
  v11 = 28;
  v12 = 2;
  v13 = 6;
  while (1)
  {
    v24 = *v23;
    if (v24 > 0x6D)
    {
      if (*v23 <= 0x76u)
      {
        if (v24 == 110)
        {
          v22 = v22 & 0xFFFFFFDB | 0x20;
          goto LABEL_62;
        }

        if (v24 == 114)
        {
          v21 = 0;
          if ((v22 & 2) != 0)
          {
            v27 = 128;
          }

          else
          {
            v27 = 136;
          }

          v22 |= (v27 | (v22 >> 3) & 4) ^ 4;
          goto LABEL_62;
        }

        if (v24 != 115)
        {
          goto LABEL_109;
        }

        v25 = v22 & 0xFFFFFF67;
        if ((v22 & 0x20) != 0)
        {
          v26 = 24;
        }

        else
        {
          v26 = 28;
        }

        goto LABEL_47;
      }

      switch(v24)
      {
        case 'w':
          v22 &= ~0x80u;
          v21 = 1;
          break;
        case 'x':
          if ((v22 & 0x20) != 0)
          {
            v28 = 2;
          }

          else
          {
            v28 = 6;
          }

          v22 |= v28;
          if ((v21 & 1) == 0)
          {
            v22 |= 0x80u;
          }

          break;
        case 'y':
          v22 |= 0xC0u;
          break;
        default:
          goto LABEL_109;
      }

      goto LABEL_62;
    }

    if (*v23 <= 0x61u)
    {
      break;
    }

    switch(v24)
    {
      case 'b':
        if ((v22 & 8) != 0)
        {
LABEL_108:
          v41 = "conflicting section flags 'b' and 'd'.";
          goto LABEL_110;
        }

        v22 = v22 & 0xFFFFFFF2 | 1;
        break;
      case 'd':
        if (v22)
        {
          goto LABEL_108;
        }

        v25 = v22 & 0xFFFFFF76;
        if ((v22 & 0x20) != 0)
        {
          v26 = 8;
        }

        else
        {
          v26 = 12;
        }

LABEL_47:
        v22 = v26 | v25;
        break;
      case 'i':
        v22 |= 0x200u;
        break;
      default:
        goto LABEL_109;
    }

LABEL_62:
    ++v23;
    if (!--v20)
    {
      if (v22)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  if (v24 == 68)
  {
    v22 |= 0x100u;
    goto LABEL_62;
  }

  if (v24 == 97)
  {
    goto LABEL_62;
  }

LABEL_109:
  v41 = "unknown flag";
LABEL_110:
  v45[0] = v41;
  v46 = 259;
  if ((llvm::MCAsmParser::TokError(*(a1 + 8), v45, 0, 0) & 1) == 0)
  {
    goto LABEL_79;
  }

  return 1;
}