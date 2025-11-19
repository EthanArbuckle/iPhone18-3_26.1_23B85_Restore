uint64_t anonymous namespace::COFFAsmParser::parseCOMDATType(uint64_t a1, char *a2)
{
  v4 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (*v4 == 2)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
  }

  else
  {
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = v7 - 1;
    v9 = v7 != 0;
    if (v7)
    {
      ++v5;
    }

    if (v8 < v9)
    {
      v8 = 1;
    }

    if (v8 >= v7)
    {
      v8 = v7;
    }

    v6 = v8 - v9;
  }

  if (v6 > 8)
  {
    if (v6 == 9)
    {
      if (*v5 == 0x7A69735F656D6173 && *(v5 + 8) == 101)
      {
        v10 = 3;
        goto LABEL_54;
      }
    }

    else if (v6 == 11)
    {
      if (*v5 == 0x746169636F737361 && *(v5 + 3) == 0x657669746169636FLL)
      {
        v10 = 5;
        goto LABEL_54;
      }
    }

    else if (v6 == 13 && *v5 == 0x6E6F635F656D6173 && *(v5 + 5) == 0x73746E65746E6F63)
    {
      v10 = 4;
      goto LABEL_54;
    }

LABEL_51:
    *a2 = 0;
    v21 = 1283;
    v20[0] = "unrecognized COMDAT type '";
    v20[2] = v5;
    v20[3] = v6;
    v22[0] = v20;
    v22[2] = "'";
    v23 = 770;
    v17 = *(a1 + 8);
    v18 = (*(*v17 + 40))(v17);
    llvm::MCAsmParser::Error(v17, *(v18 + 96), v22, 0, 0);
    return 1;
  }

  if (v6 == 6)
  {
    if (*v5 == 1702323566 && *(v5 + 4) == 29811)
    {
      v10 = 7;
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v6 == 7)
  {
    if (*v5 == 1668508004 && *(v5 + 3) == 1685217635)
    {
      v10 = 2;
      goto LABEL_54;
    }

    if (*v5 == 1735549292 && *(v5 + 3) == 1953719655)
    {
      v10 = 6;
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v6 != 8 || *v5 != 0x796C6E6F5F656E6FLL)
  {
    goto LABEL_51;
  }

  v10 = 1;
LABEL_54:
  *a2 = v10;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveDef>(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v2 = (*(**(a1 + 8) + 192))(*(a1 + 8), &v10);
  if (v2)
  {
    v8[0] = "expected identifier in directive";
    v9 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), v8, 0, 0);
  }

  else
  {
    v5 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v9 = 261;
    v8[0] = v10;
    v8[1] = v11;
    llvm::MCContext::getOrCreateSymbol(v5, v8);
    v6 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v6 + 312))();
    (*(**(a1 + 8) + 184))(*(a1 + 8));
  }

  return v2;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveScl>(uint64_t a1)
{
  v8 = 0;
  if (((*(**(a1 + 8) + 256))(*(a1 + 8), &v8) & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v2 + 320))();
      return 0;
    }

    v6 = "unexpected token in directive";
    v7 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), &v6, 0, 0);
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveType>(uint64_t a1)
{
  v8 = 0;
  if (((*(**(a1 + 8) + 256))(*(a1 + 8), &v8) & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v2 + 328))();
      return 0;
    }

    v6 = "unexpected token in directive";
    v7 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), &v6, 0, 0);
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveEndef>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 336))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveSecRel32>(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v11))
  {
    v2 = "expected identifier in directive";
  }

  else
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 12)
    {
      v3 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
      if ((*(**(a1 + 8) + 256))())
      {
        return 1;
      }
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      v6 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      v10 = 261;
      v9[0] = v11;
      v9[1] = v12;
      llvm::MCContext::getOrCreateSymbol(v6, v9);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v7 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v7 + 368))();
      return 0;
    }

    v2 = "unexpected token in directive";
  }

  v9[0] = v2;
  v10 = 259;
  v4 = *(a1 + 8);
  v5 = (*(*v4 + 40))(v4);
  llvm::MCAsmParser::Error(v4, *(v5 + 96), v9, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveSymIdx>(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v10))
  {
    v2 = "expected identifier in directive";
  }

  else
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      v9 = 261;
      v8[0] = v10;
      v8[1] = v11;
      llvm::MCContext::getOrCreateSymbol(v3, v8);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v4 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v4 + 352))();
      return 0;
    }

    v2 = "unexpected token in directive";
  }

  v8[0] = v2;
  v9 = 259;
  v6 = *(a1 + 8);
  v7 = (*(*v6 + 40))(v6);
  llvm::MCAsmParser::Error(v6, *(v7 + 96), v8, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveSafeSEH>(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v10))
  {
    v2 = "expected identifier in directive";
  }

  else
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      v9 = 261;
      v8[0] = v10;
      v8[1] = v11;
      llvm::MCContext::getOrCreateSymbol(v3, v8);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v4 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v4 + 344))();
      return 0;
    }

    v2 = "unexpected token in directive";
  }

  v8[0] = v2;
  v9 = 259;
  v6 = *(a1 + 8);
  v7 = (*(*v6 + 40))(v6);
  llvm::MCAsmParser::Error(v6, *(v7 + 96), v8, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveSecIdx>(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v10))
  {
    v2 = "expected identifier in directive";
  }

  else
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      v9 = 261;
      v8[0] = v10;
      v8[1] = v11;
      llvm::MCContext::getOrCreateSymbol(v3, v8);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v4 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v4 + 360))();
      return 0;
    }

    v2 = "unexpected token in directive";
  }

  v8[0] = v2;
  v9 = 259;
  v6 = *(a1 + 8);
  v7 = (*(*v6 + 40))(v6);
  llvm::MCAsmParser::Error(v6, *(v7 + 96), v8, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveLinkOnce>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 2;
  {
    v6 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v7 = *(v6 + 152);
    if (v7)
    {
      v8 = *(*(v6 + 144) + 32 * v7 - 32);
    }

    else
    {
      v8 = 0;
    }

    if (v19 == 5)
    {
      v17[0] = "cannot make section associative with .linkonce";
      v9 = 259;
LABEL_12:
      v18 = v9;
      return llvm::MCAsmParser::Error(*(a1 + 8), a4, v17, 0, 0);
    }

    v10 = *(v8 + 224);
    if ((v10 & 0x1000) != 0)
    {
      v14 = "section '";
      v15 = *(v8 + 200);
      v16 = 1283;
      v17[0] = &v14;
      v17[2] = "' is already linkonce";
      v9 = 770;
      goto LABEL_12;
    }

    *(v8 + 240) = v19;
    *(v8 + 224) = v10 | 0x1000;
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      return 0;
    }

    v17[0] = "unexpected token in directive";
    v18 = 259;
    v12 = *(a1 + 8);
    v13 = (*(*v12 + 40))(v12);
    llvm::MCAsmParser::Error(v12, *(v13 + 96), v17, 0, 0);
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveRVA>(uint64_t a1)
{
  v5 = a1;
  if (result)
  {
    v3 = " in directive";
    v4 = 259;
    return llvm::MCAsmParser::addErrorSuffix(*(a1 + 8), &v3);
  }

  return result;
}

uint64_t llvm::function_ref<BOOL ()(void)>::callback_fn<anonymous namespace::COFFAsmParser::ParseDirectiveRVA(llvm::StringRef,llvm::SMLoc)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v10 = 0;
  v11 = 0;
  if ((*(**(v1 + 8) + 192))(*(v1 + 8), &v10))
  {
    v8[0] = "expected identifier in directive";
    v9 = 259;
    v2 = *(v1 + 8);
    v3 = (*(*v2 + 40))(v2);
    llvm::MCAsmParser::Error(v2, *(v3 + 96), v8, 0, 0);
    return 1;
  }

  if (**((*(**(v1 + 8) + 40))(*(v1 + 8)) + 8) == 12 || **((*(**(v1 + 8) + 40))(*(v1 + 8)) + 8) == 13)
  {
    v4 = *((*(**(v1 + 8) + 40))(*(v1 + 8)) + 96);
    if ((*(**(v1 + 8) + 256))())
    {
      return 1;
    }
  }

  v6 = (*(**(v1 + 8) + 48))(*(v1 + 8));
  v9 = 261;
  v8[0] = v10;
  v8[1] = v11;
  llvm::MCContext::getOrCreateSymbol(v6, v8);
  v7 = *(*(**(v1 + 8) + 56))(*(v1 + 8));
  (*(v7 + 376))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseDirectiveSymbolAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 14)
  {
    if (*a2 == 0x6E615F6B6165772ELL)
    {
      v4 = *(a2 + 6) == 0x7065645F69746E61;
    }
  }

  else if (a3 == 5 && *a2 == 1634039598)
  {
    v4 = *(a2 + 4) == 107;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
LABEL_8:
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    return 0;
  }

  v13 = 0;
  for (i = 0; ((*(**(a1 + 8) + 192))(*(a1 + 8), &v13) & 1) == 0; i = 0)
  {
    v6 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v12 = 261;
    v11[0] = v13;
    v11[1] = i;
    llvm::MCContext::getOrCreateSymbol(v6, v11);
    v7 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v7 + 296))();
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      goto LABEL_8;
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
    {
      v8 = "unexpected token in directive";
      goto LABEL_15;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v13 = 0;
  }

  v8 = "expected identifier in directive";
LABEL_15:
  v11[0] = v8;
  v12 = 259;
  v9 = *(a1 + 8);
  v10 = (*(*v9 + 40))(v9);
  llvm::MCAsmParser::Error(v9, *(v10 + 96), v11, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveStartProc>(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  if (((*(**(a1 + 8) + 192))(*(a1 + 8), &v9) & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      v2 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      v8 = 261;
      v7[0] = v9;
      v7[1] = v10;
      llvm::MCContext::getOrCreateSymbol(v2, v7);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v3 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v3 + 1040))();
      return 0;
    }

    v7[0] = "unexpected token in directive";
    v8 = 259;
    v5 = *(a1 + 8);
    v6 = (*(*v5 + 40))(v5);
    llvm::MCAsmParser::Error(v5, *(v6 + 96), v7, 0, 0);
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveEndProc>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 1048))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveEndFuncletOrFunc>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 1056))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveStartChained>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 1064))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveEndChained>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 1072))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveHandler>(_anonymous_namespace_::COFFAsmParser *a1)
{
  v11 = 0;
  v12 = 0;
  if ((*(**(a1 + 1) + 192))(*(a1 + 1), &v11))
  {
    return 1;
  }

  if (**((*(**(a1 + 1) + 40))(*(a1 + 1)) + 8) == 25)
  {
    (*(**(a1 + 1) + 184))(*(a1 + 1));
    *v8 = 0;
    {
      return 1;
    }

    if (**((*(**(a1 + 1) + 40))(*(a1 + 1)) + 8) == 25)
    {
      (*(**(a1 + 1) + 184))(*(a1 + 1));
      {
        return 1;
      }
    }

    if (**((*(**(a1 + 1) + 40))(*(a1 + 1)) + 8) == 9)
    {
      v2 = (*(**(a1 + 1) + 48))(*(a1 + 1));
      v10 = 261;
      v9[0] = v11;
      v9[1] = v12;
      llvm::MCContext::getOrCreateSymbol(v2, v9);
      (*(**(a1 + 1) + 184))(*(a1 + 1));
      v3 = *(*(**(a1 + 1) + 56))(*(a1 + 1));
      (*(v3 + 1136))();
      return 0;
    }

    v5 = "unexpected token in directive";
  }

  else
  {
    v5 = "you must specify one or both of @unwind or @except";
  }

  v9[0] = v5;
  v10 = 259;
  v6 = *(a1 + 1);
  v7 = (*(*v6 + 40))(v6);
  llvm::MCAsmParser::Error(v6, *(v7 + 96), v9, 0, 0);
  return 1;
}

uint64_t anonymous namespace::COFFAsmParser::ParseAtUnwindOrAtExcept(_anonymous_namespace_::COFFAsmParser *this, BOOL *a2, BOOL *a3)
{
  v14 = 0;
  v15 = 0;
  if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) == 45 || **((*(**(this + 1) + 40))(*(this + 1)) + 8) == 36)
  {
    v6 = *((*(**(this + 1) + 40))(*(this + 1)) + 96);
    (*(**(this + 1) + 184))(*(this + 1));
    if ((*(**(this + 1) + 192))(*(this + 1), &v14) || v15 != 6)
    {
LABEL_13:
      v12[0] = "expected @unwind or @except";
      v13 = 259;
      return llvm::MCAsmParser::Error(*(this + 1), v6, v12, 0, 0);
    }

    if (*v14 == 1769434741 && *(v14 + 4) == 25710)
    {
      result = 0;
      *a2 = 1;
    }

    else
    {
      if (*v14 != 1701017701 || *(v14 + 4) != 29808)
      {
        goto LABEL_13;
      }

      result = 0;
      *a3 = 1;
    }
  }

  else
  {
    v12[0] = "a handler attribute must begin with '@' or '%'";
    v13 = 259;
    v10 = *(this + 1);
    v11 = (*(*v10 + 40))(v10);
    llvm::MCAsmParser::Error(v10, *(v11 + 96), v12, 0, 0);
    return 1;
  }

  return result;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveHandlerData>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 1144))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveAllocStack>(uint64_t a1)
{
  v8 = 0;
  if (((*(**(a1 + 8) + 256))(*(a1 + 8), &v8) & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v2 + 1096))();
      return 0;
    }

    v6 = "unexpected token in directive";
    v7 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), &v6, 0, 0);
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::COFFAsmParser,&anonymous namespace::COFFAsmParser::ParseSEHDirectiveEndProlog>(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v2 + 1128))();
  return 0;
}

uint64_t anonymous namespace::DarwinAsmParser::Initialize(_anonymous_namespace_::DarwinAsmParser *this, llvm::MCAsmParser *a2)
{
  *(this + 1) = a2;
  *(this + 3) = 0;
  return result;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveAltEntry>(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v11))
  {
    v2 = "expected identifier in directive";
  }

  else
  {
    v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v10 = 261;
    v9[0] = v11;
    v9[1] = v12;
    Symbol = llvm::MCContext::getOrCreateSymbol(v3, v9);
    if (llvm::MCSymbol::getFragment(Symbol, 1u))
    {
      v2 = ".alt_entry must preceed symbol definition";
    }

    else
    {
      v5 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      if ((*(v5 + 296))())
      {
        (*(**(a1 + 8) + 184))(*(a1 + 8));
        return 0;
      }

      v2 = "unable to emit symbol attribute";
    }
  }

  v9[0] = v2;
  v10 = 259;
  v7 = *(a1 + 8);
  v8 = (*(*v7 + 40))(v7);
  llvm::MCAsmParser::Error(v7, *(v8 + 96), v9, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveDesc>(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v10))
  {
    v2 = "expected identifier in directive";
LABEL_8:
    v8[0] = v2;
    v9 = 259;
    v6 = *(a1 + 8);
    v7 = (*(*v6 + 40))(v6);
    llvm::MCAsmParser::Error(v6, *(v7 + 96), v8, 0, 0);
    return 1;
  }

  v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v9 = 261;
  v8[0] = v10;
  v8[1] = v11;
  llvm::MCContext::getOrCreateSymbol(v3, v8);
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
LABEL_7:
    v2 = "unexpected token in '.desc' directive";
    goto LABEL_8;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (((*(**(a1 + 8) + 256))() & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v4 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v4 + 304))();
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveIndirectSymbol>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v7 = *(*(*(v6 + 144) + 32 * *(v6 + 152) - 32) + 240);
  v8 = v7 > 0x14;
  v9 = (1 << v7) & 0x1001C0;
  if (!v8 && v9 != 0)
  {
    v17 = 0;
    v18 = 0;
    if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v17))
    {
      v11 = "expected identifier in .indirect_symbol directive";
    }

    else
    {
      v12 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      v20 = 261;
      v19[0] = v17;
      v19[1] = v18;
      if (*(llvm::MCContext::getOrCreateSymbol(v12, v19) + 8))
      {
        v11 = "non-local symbol required in directive";
      }

      else
      {
        v13 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
        if (((*(v13 + 296))() & 1) == 0)
        {
          v20 = 1283;
          v19[0] = "unable to emit indirect symbol attribute for: ";
          v19[2] = v17;
          v19[3] = v18;
          goto LABEL_13;
        }

        if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
        {
          (*(**(a1 + 8) + 184))(*(a1 + 8));
          return 0;
        }

        v11 = "unexpected token in '.indirect_symbol' directive";
      }
    }

    v19[0] = v11;
    v20 = 259;
LABEL_13:
    v15 = *(a1 + 8);
    v16 = (*(*v15 + 40))(v15);
    llvm::MCAsmParser::Error(v15, *(v16 + 96), v19, 0, 0);
    return 1;
  }

  v19[0] = "indirect symbol not in a symbol pointer or stub section";
  v20 = 259;
  return llvm::MCAsmParser::Error(*(a1 + 8), a4, v19, 0, 0);
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveLsym>(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v10))
  {
    v2 = "expected identifier in directive";
LABEL_8:
    v8[0] = v2;
    v9 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), v8, 0, 0);
    return 1;
  }

  v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v9 = 261;
  v8[0] = v10;
  v8[1] = v11;
  llvm::MCContext::getOrCreateSymbol(v3, v8);
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
LABEL_7:
    v2 = "unexpected token in '.lsym' directive";
    goto LABEL_8;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v7 = 0;
  v8[0] = 0;
  if (((*(**(a1 + 8) + 232))(*(a1 + 8), &v7, v8) & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v2 = "directive '.lsym' is unsupported";
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return 1;
}

BOOL llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveSubsectionsViaSymbols>(uint64_t a1)
{
  v2 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v2 == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v5 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(*v5 + 208))(v5, 1);
  }

  else
  {
    v7 = "unexpected token in '.subsections_via_symbols' directive";
    v8 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), &v7, 0, 0);
  }

  return v2 != 9;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveDumpOrLoad>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 == 5 && *a2 == 1836409902 && *(a2 + 4) == 112;
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3)
  {
    v9 = "expected string in '.dump' or '.load' directive";
LABEL_15:
    v13[0] = v9;
    v14 = 259;
    v10 = *(a1 + 8);
    v11 = (*(*v10 + 40))(v10);
    llvm::MCAsmParser::Error(v10, *(v11 + 96), v13, 0, 0);
    return 1;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v9 = "unexpected token in '.dump' or '.load' directive";
    goto LABEL_15;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (v7)
  {
    v8 = "ignoring directive .dump for now";
  }

  else
  {
    v8 = "ignoring directive .load for now";
  }

  v13[0] = v8;
  v14 = 259;
  return (*(**(a1 + 8) + 168))(*(a1 + 8), a4, v13, 0, 0);
}

uint64_t anonymous namespace::DarwinAsmParser::parseDirectiveSection(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  __n_copy_1 = 0;
  v82 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &__n_copy_1))
  {
    v83.__r_.__value_.__r.__words[0] = "expected identifier after '.section' directive";
    WORD4(v84) = 259;
    v3 = llvm::MCAsmParser::Error(*(a1 + 8), v2, &v83, 0, 0);
    goto LABEL_117;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    v83.__r_.__value_.__r.__words[0] = "unexpected token in '.section' directive";
    WORD4(v84) = 259;
    v5 = *(a1 + 8);
    v6 = (*(*v5 + 40))(v5);
    llvm::MCAsmParser::Error(v5, *(v6 + 96), &v83, 0, 0);
    v3 = 1;
    goto LABEL_117;
  }

  v4 = v82;
  if (v82 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (v82 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v82;
  if (v82)
  {
    memmove(&__dst, __n_copy_1, v82);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  std::string::append(&__dst, ",");
  v7 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v8 = (*(*v7 + 24))(v7);
  v10 = v8;
  v11 = v9;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!v9)
    {
      goto LABEL_35;
    }

    size = __dst.__r_.__value_.__l.__size_;
    v14 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    p_dst = __dst.__r_.__value_.__r.__words[0];
    v15 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_35;
    }

    p_dst = &__dst;
    v14 = 22;
    LOBYTE(v15) = *(&__dst.__r_.__value_.__s + 23);
  }

  if (p_dst <= v8 && (&p_dst->__r_.__value_.__l.__data_ + size + 1) > v8)
  {
    std::string::__init_with_size[abi:nn200100]<char *,char *>(&v83, v8, v8 + v11, v11);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v83;
    }

    else
    {
      v21 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v83.__r_.__value_.__l.__size_;
    }

    std::string::append(&__dst, v21, v22);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = size + v11;
    if (v14 - size < v11)
    {
      std::string::__grow_by(&__dst, v14, v17 - v14, size, size, 0, 0);
      __dst.__r_.__value_.__l.__size_ = size;
      LOBYTE(v15) = *(&__dst.__r_.__value_.__s + 23);
    }

    v18 = (v15 & 0x80u) != 0;
    v19 = &__dst;
    if (v18)
    {
      v19 = __dst.__r_.__value_.__r.__words[0];
    }

    v20 = v19 + size;
    memmove(v20, v10, v11);
    v20[v11] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

LABEL_35:
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__dst;
    }

    else
    {
      v23 = __dst.__r_.__value_.__r.__words[0];
    }

    v78 = 0;
    v79 = 0;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    v74 = 0;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __dst.__r_.__value_.__l.__size_;
    }

    llvm::MCSectionMachO::ParseSectionSpecifier(v23, v24, &v78, &v76, &v75, &v74, &v75 + 1, v67);
    v25 = v67[0];
    if (v67[0])
    {
      v67[0] = 0;
      v83.__r_.__value_.__r.__words[0] = &v83.__r_.__value_.__r.__words[2];
      v83.__r_.__value_.__l.__size_ = 0x200000000;
      v69[0] = v25;
      v73.__r_.__value_.__r.__words[0] = &v83;
      llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v69, &v73);
      if (v69[0])
      {
        (*(*v69[0] + 8))(v69[0]);
      }

      v26 = v83.__r_.__value_.__r.__words[0];
      v27 = v83.__r_.__value_.__r.__words[1];
      memset(&v73, 0, sizeof(v73));
      if (LODWORD(v83.__r_.__value_.__r.__words[1]))
      {
        v28 = 24 * LODWORD(v83.__r_.__value_.__r.__words[1]);
        v29 = LODWORD(v83.__r_.__value_.__r.__words[1]) - 1;
        v30 = (v83.__r_.__value_.__r.__words[0] + 23);
        v31 = v28;
        do
        {
          v32 = *v30;
          if (v32 < 0)
          {
            v32 = *(v30 - 15);
          }

          v29 += v32;
          v30 += 24;
          v31 -= 24;
        }

        while (v31);
        std::string::reserve(&v73, v29);
        v33 = *(v26 + 23);
        if (v33 >= 0)
        {
          v34 = v26;
        }

        else
        {
          v34 = *v26;
        }

        if (v33 >= 0)
        {
          v35 = *(v26 + 23);
        }

        else
        {
          v35 = *(v26 + 8);
        }

        std::string::append(&v73, v34, v35);
        if (v27 != 1)
        {
          v36 = v26 + 24;
          v37 = v28 - 24;
          do
          {
            std::string::append(&v73, "\n", 1uLL);
            v38 = *(v36 + 23);
            if (v38 >= 0)
            {
              v39 = v36;
            }

            else
            {
              v39 = *v36;
            }

            if (v38 >= 0)
            {
              v40 = *(v36 + 23);
            }

            else
            {
              v40 = *(v36 + 8);
            }

            std::string::append(&v73, v39, v40);
            v36 += 24;
            v37 -= 24;
          }

          while (v37);
        }
      }

      llvm::SmallVector<std::string,2u>::~SmallVector(&v83);
      WORD4(v84) = 260;
      v83.__r_.__value_.__r.__words[0] = &v73;
      v3 = llvm::MCAsmParser::Error(*(a1 + 8), v2, &v83, 0, 0);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (v67[0])
      {
        (*(*v67[0] + 8))(v67[0]);
      }

      goto LABEL_115;
    }

    v43 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v44 = v43;
    if (*(v43 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, *(v43 + 24), *(v43 + 32));
    }

    else
    {
      v83 = *(v43 + 24);
    }

    v84 = *(v44 + 48);
    v85 = *(v44 + 64);
    if ((v84 & 0xFFFFFFFD) != 0x15)
    {
      v45 = v76;
      v46 = v77;
      if (v77 == 12)
      {
        if (*v76 != 0x5F74736E6F635F5FLL || *(v76 + 2) != 1818324835)
        {
          goto LABEL_107;
        }

        v49 = "__const";
        v51 = 7;
        goto LABEL_94;
      }

      if (v77 == 13)
      {
        if (*v76 == 0x6F63747865745F5FLL && *(v76 + 5) == 0x746E5F6C616F6374)
        {
          v49 = "__text";
        }

        else
        {
          if (*v76 != 0x6F63617461645F5FLL || *(v76 + 5) != 0x746E5F6C616F6361)
          {
            goto LABEL_107;
          }

          v49 = "__data";
        }

        v51 = 6;
LABEL_94:
        if (v2 && (v52 = strlen(v2)) != 0)
        {
          v53 = v52;
          v54 = memchr(v2, 44, v52);
          v55 = v54 - v2;
          if (v54)
          {
            v56 = v55 + 1;
          }

          else
          {
            v56 = 0;
          }

          if (v53 > v56)
          {
            v57 = memchr(&v2[v56], 44, v53 - v56);
            if (v57)
            {
              v58 = v57 - v2;
            }

            else
            {
              v58 = -1;
            }

            goto LABEL_106;
          }

          v56 = v55 + 1;
        }

        else
        {
          v56 = 0;
        }

        v58 = -1;
LABEL_106:
        v59 = *(a1 + 8);
        v72 = 1283;
        v69[0] = "section ";
        v70 = v45;
        v71 = v46;
        v67[0] = " is deprecated";
        v68 = 259;
        llvm::operator+(v69, v67, &v73);
        (*(*v59 + 168))(v59, v2, &v73, &v2[v56], &v2[v58]);
        v60 = *(a1 + 8);
        v72 = 1283;
        v69[0] = "change section name to ";
        v70 = v49;
        v71 = v51;
        v67[0] = "";
        v68 = 259;
        llvm::operator+(v69, v67, &v73);
        (*(*v60 + 160))(v60, v2, &v73, &v2[v56], &v2[v58]);
      }
    }

LABEL_107:
    if (v79 == 6)
    {
      if (*v78 ^ 0x45545F5F | *(v78 + 4) ^ 0x5458)
      {
        v61 = 19;
      }

      else
      {
        v61 = 2;
      }
    }

    else
    {
      v61 = 19;
    }

    v62 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v63 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    MachOSection = llvm::MCContext::getMachOSection(v63, v78, v79, v76, v77, v75, SHIDWORD(v75), v61, 0);
    (*(*v62 + 168))(v62, MachOSection, 0);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    v3 = 0;
    goto LABEL_115;
  }

  v83.__r_.__value_.__r.__words[0] = "unexpected token in '.section' directive";
  WORD4(v84) = 259;
  v41 = *(a1 + 8);
  v42 = (*(*v41 + 40))(v41);
  llvm::MCAsmParser::Error(v41, *(v42 + 96), &v83, 0, 0);
  v3 = 1;
LABEL_115:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_117:
  v65 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectivePushSection>(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  llvm::MCStreamer::pushSection(v2);
  if (v3)
  {
    v4 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    llvm::MCStreamer::popSection(v4);
  }

  return v3;
}

__n128 llvm::MCStreamer::pushSection(llvm::MCStreamer *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    v3 = *(this + 18) + 32 * v2;
    v4 = *(v3 - 32);
    v5 = *(v3 - 16);
  }

  else
  {
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v10[0] = v4;
  v10[1] = v5;
  v6 = llvm::SmallVectorTemplateCommon<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,true>>(this + 144, v10, 1);
  v7 = (*(this + 18) + 32 * *(this + 38));
  result = *v6;
  v9 = *(v6 + 16);
  *v7 = *v6;
  v7[1] = v9;
  ++*(this + 38);
  return result;
}

BOOL llvm::MCStreamer::popSection(llvm::MCStreamer *this)
{
  v1 = *(this + 38);
  if (v1 >= 2)
  {
    v3 = *(this + 18) + 32 * v1;
    v4 = *(v3 - 64);
    if (v4)
    {
      v5 = *(v3 - 32) == v4 && *(v3 - 24) == *(v3 - 56);
      v6 = *(this + 38);
      if (!v5)
      {
        (*(*this + 160))(this);
        v6 = *(this + 38);
      }
    }

    else
    {
      v6 = *(this + 38);
    }

    *(this + 38) = v6 - 1;
  }

  return v1 > 1;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 32);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 32);
    }
  }

  return v3;
}

BOOL llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectivePopSection>(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v3 = llvm::MCStreamer::popSection(v2);
  if (!v3)
  {
    v7 = ".popsection without corresponding .pushsection";
    v8 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), &v7, 0, 0);
  }

  return !v3;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectivePrevious>(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v3 = *(v2 + 152);
  if (v3 && (v4 = *(v2 + 144) + 32 * v3, (v5 = *(v4 - 16)) != 0))
  {
    v6 = *(v4 - 8);
    v7 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(*v7 + 168))(v7, v5, v6);
    return 0;
  }

  else
  {
    v11 = ".previous without corresponding .section";
    v12 = 259;
    v9 = *(a1 + 8);
    v10 = (*(*v9 + 40))(v9);
    llvm::MCAsmParser::Error(v9, *(v10 + 96), &v11, 0, 0);
    return 1;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveSecureLogUnique>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = (*(**(a1 + 8) + 200))(*(a1 + 8));
  v8 = v7;
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
    if (*((*(**(a1 + 8) + 48))(*(a1 + 8)) + 1352) == 1)
    {
      v9 = ".secure_log_unique specified multiple times";
LABEL_15:
      v32[0] = v9;
      v33 = 259;
      return llvm::MCAsmParser::Error(*(a1 + 8), a4, v32, 0, 0);
    }

    v13 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v14 = *(v13 + 1343);
    if (v14 < 0)
    {
      v15 = *(v13 + 1320);
    }

    if (v14 >= 0)
    {
      v16 = *(v13 + 1343);
    }

    else
    {
      v16 = *(v13 + 1328);
    }

    if (!v16)
    {
      v9 = ".secure_log_unique used but AS_SECURE_LOG_FILE environment variable unset.";
      goto LABEL_15;
    }

    v17 = *((*(**(a1 + 8) + 48))(*(a1 + 8)) + 1344);
    if (!v17)
    {
      v31.__val_ = 0;
      v31.__cat_ = std::system_category();
      operator new();
    }

    v18 = (*(**(a1 + 8) + 32))(*(a1 + 8));
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(v18, a4);
    v20 = *(*(*(**(a1 + 8) + 32))(*(a1 + 8)) + 24 * (BufferContainingLoc - 1));
    v21 = (*(*v20 + 16))(v20);
    v23 = llvm::raw_ostream::operator<<(v17, v21, v22);
    v24 = v23;
    v25 = *(v23 + 4);
    if (*(v23 + 3) == v25)
    {
      llvm::raw_ostream::write(v23, ":", 1uLL);
    }

    else
    {
      *v25 = 58;
      ++*(v23 + 4);
    }

    v26 = (*(**(a1 + 8) + 32))(*(a1 + 8));
    LineAndColumn = llvm::SourceMgr::getLineAndColumn(v26, a4, BufferContainingLoc);
    write_unsigned<unsigned long>(v24, LineAndColumn, 0, 0, 0);
    v28 = *(v24 + 4);
    if (*(v24 + 3) == v28)
    {
      llvm::raw_ostream::write(v24, ":", 1uLL);
    }

    else
    {
      *v28 = 58;
      ++*(v24 + 4);
    }

    v33 = 773;
    v32[0] = v6;
    v32[1] = v8;
    v32[2] = "\n";
    llvm::Twine::print(v32, v24);
    v29 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v12 = 0;
    *(v29 + 1352) = 1;
  }

  else
  {
    v32[0] = "unexpected token in '.secure_log_unique' directive";
    v33 = 259;
    v10 = *(a1 + 8);
    v11 = (*(*v10 + 40))(v10);
    llvm::MCAsmParser::Error(v10, *(v11 + 96), v32, 0, 0);
    return 1;
  }

  return v12;
}

BOOL llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveSecureLogReset>(uint64_t a1)
{
  v2 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v2 == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    *((*(**(a1 + 8) + 48))(*(a1 + 8)) + 1352) = 0;
  }

  else
  {
    v6 = "unexpected token in '.secure_log_reset' directive";
    v7 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), &v6, 0, 0);
  }

  return v2 != 9;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveTBSS>(uint64_t a1)
{
  v2 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  v16 = 0;
  v17 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v16))
  {
    v3 = "expected identifier in directive";
LABEL_11:
    v14[0] = v3;
    v15 = 259;
    v8 = *(a1 + 8);
    v9 = (*(*v8 + 40))(v8);
    llvm::MCAsmParser::Error(v8, *(v9 + 96), v14, 0, 0);
    return 1;
  }

  v4 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v15 = 261;
  v14[0] = v16;
  v14[1] = v17;
  Symbol = llvm::MCContext::getOrCreateSymbol(v4, v14);
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    v3 = "unexpected token in directive";
    goto LABEL_11;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v6 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  if ((*(**(a1 + 8) + 256))())
  {
    return 1;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 25)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v7 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
    if ((*(**(a1 + 8) + 256))())
    {
      return 1;
    }
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v3 = "unexpected token in '.tbss' directive";
    goto LABEL_11;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (llvm::MCSymbol::getFragment(Symbol, 1u))
  {
    v14[0] = "invalid symbol redefinition";
    v15 = 259;
    return llvm::MCAsmParser::Error(*(a1 + 8), v2, v14, 0, 0);
  }

  else
  {
    v11 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v12 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    MachOSection = llvm::MCContext::getMachOSection(v12, "__DATA", 6uLL, "__thread_bss", 0xC, 18, 0, 12, 0);
    (*(*v11 + 480))(v11, MachOSection, Symbol, 0, 0);
    return 0;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveZerofill>(uint64_t a1)
{
  v27 = 0;
  v28 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v27))
  {
    v2 = "expected segment name after '.zerofill' directive";
LABEL_13:
    v25[0] = v2;
    v26 = 259;
    v12 = *(a1 + 8);
    v13 = (*(*v12 + 40))(v12);
    llvm::MCAsmParser::Error(v12, *(v13 + 96), v25, 0, 0);
    return 1;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    goto LABEL_12;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v23 = 0;
  v24 = 0;
  v3 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v23))
  {
    v2 = "expected section name after comma in '.zerofill' directive";
    goto LABEL_13;
  }

  v4 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  v5 = **(a1 + 8);
  if (v4 == 9)
  {
    v6 = (*(v5 + 56))();
    v7 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    MachOSection = llvm::MCContext::getMachOSection(v7, v27, v28, v23, v24, 1, 0, 15, 0);
    (*(*v6 + 472))(v6, MachOSection, 0, 0, 0, v3);
    return 0;
  }

  if (**((*(v5 + 40))() + 8) != 25)
  {
LABEL_12:
    v2 = "unexpected token in directive";
    goto LABEL_13;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v10 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  v21 = 0;
  v22 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v21))
  {
    v11 = "expected identifier in directive";
LABEL_23:
    v25[0] = v11;
    v26 = 259;
    return llvm::MCAsmParser::TokError(*(a1 + 8), v25, 0, 0);
  }

  v14 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v26 = 261;
  v25[0] = v21;
  v25[1] = v22;
  Symbol = llvm::MCContext::getOrCreateSymbol(v14, v25);
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    v11 = "unexpected token in directive";
    goto LABEL_23;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v16 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  if ((*(**(a1 + 8) + 256))())
  {
    return 1;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 25)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v17 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
    if ((*(**(a1 + 8) + 256))())
    {
      return 1;
    }
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v11 = "unexpected token in '.zerofill' directive";
    goto LABEL_23;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (!llvm::MCSymbol::getFragment(Symbol, 1u))
  {
    v18 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v19 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v20 = llvm::MCContext::getMachOSection(v19, v27, v28, v23, v24, 1, 0, 15, 0);
    (*(*v18 + 472))(v18, v20, Symbol, 0, 0, v3);
    return 0;
  }

  v25[0] = "invalid symbol redefinition";
  v26 = 259;
  return llvm::MCAsmParser::Error(*(a1 + 8), v10, v25, 0, 0);
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveDataRegion>(uint64_t a1)
{
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v2 = *(*(*(**(a1 + 8) + 56))(*(a1 + 8)) + 224);
LABEL_3:
    v2();
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v4 = *(*((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) + 8);
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v10))
  {
    v8[0] = "expected region type after '.data_region' directive";
    v9 = 259;
    v5 = *(a1 + 8);
    v6 = (*(*v5 + 40))(v5);
    llvm::MCAsmParser::Error(v5, *(v6 + 96), v8, 0, 0);
    return 1;
  }

  if (v11 != 4)
  {
    if (v11 != 3)
    {
      goto LABEL_16;
    }

    if (*v10 != 29802 || *(v10 + 2) != 56)
    {
      goto LABEL_16;
    }

LABEL_17:
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v2 = *(*(*(**(a1 + 8) + 56))(*(a1 + 8)) + 224);
    goto LABEL_3;
  }

  if (*v10 == 909210730 || *v10 == 842232938)
  {
    goto LABEL_17;
  }

LABEL_16:
  v8[0] = "unknown region type in '.data_region' directive";
  v9 = 259;
  return llvm::MCAsmParser::Error(*(a1 + 8), v4, v8, 0, 0);
}

BOOL llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveDataRegionEnd>(uint64_t a1)
{
  v2 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v2 == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v5 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(*v5 + 224))(v5, 4);
  }

  else
  {
    v7 = "unexpected token in '.end_data_region' directive";
    v8 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), &v7, 0, 0);
  }

  return v2 != 9;
}

BOOL anonymous namespace::DarwinAsmParser::parseSectionSwitch(uint64_t a1, uint64_t a2, unint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5, int a6, int a7, int a8)
{
  v16 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v16 == 9)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v19 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v20 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    if (a6 < 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = 19;
    }

    MachOSection = llvm::MCContext::getMachOSection(v20, a2, a3, a4, a5, a6, a8, v21, 0);
    (*(*v19 + 168))(v19, MachOSection, 0);
    if (a7)
    {
      v23 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v23 + 632))();
    }
  }

  else
  {
    v25 = "unexpected token in section switching directive";
    v26 = 259;
    v17 = *(a1 + 8);
    v18 = (*(*v17 + 40))(v17);
    llvm::MCAsmParser::Error(v17, *(v18 + 96), &v25, 0, 0);
  }

  return v16 != 9;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseDirectiveLinkerOption>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[12] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  do
  {
    while (1)
    {
      if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3)
      {
        v17[0] = "expected string in '";
        v18 = a2;
        v19 = a3;
        v20 = 1283;
        v21[0] = v17;
        v22 = "' directive";
        v23 = 770;
        v11 = *(a1 + 8);
        v12 = (*(*v11 + 40))(v11);
        llvm::MCAsmParser::Error(v11, *(v12 + 96), v21, 0, 0);
        goto LABEL_18;
      }

      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      if ((*(**(a1 + 8) + 208))(*(a1 + 8), __p))
      {
        goto LABEL_4;
      }

      llvm::SmallVectorTemplateBase<std::string,false>::push_back(&v24, __p);
      if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
      {
        v6 = 3;
      }

      else
      {
        if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
        {
          v17[0] = "unexpected token in '";
          v18 = a2;
          v19 = a3;
          v20 = 1283;
          v21[0] = v17;
          v22 = "' directive";
          v23 = 770;
          v7 = *(a1 + 8);
          v8 = (*(*v7 + 40))(v7);
          llvm::MCAsmParser::Error(v7, *(v8 + 96), v21, 0, 0);
LABEL_4:
          v6 = 1;
          goto LABEL_9;
        }

        (*(**(a1 + 8) + 184))(*(a1 + 8));
        v6 = 0;
      }

LABEL_9:
      if (SHIBYTE(v16) < 0)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    operator delete(__p[0]);
  }

  while (!v6);
LABEL_15:
  if (v6 == 3)
  {
    v9 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(*v9 + 216))(v9, v24, v25);
    v10 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v10 = 1;
LABEL_19:
  llvm::SmallVector<std::string,2u>::~SmallVector(&v24);
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseBridgeOSVersionMin>(_anonymous_namespace_::DarwinAsmParser *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *v16 = 0;
  v15 = 0;
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v9 = (*(**(a1 + 1) + 40))(*(a1 + 1));
  v10 = 0;
  v11 = 0;
  if (isSDKVersionToken(*(v9 + 8)))
  {
    {
      return 1;
    }

    v11 = v13;
    v10 = v14;
  }

  v12 = (*(**(a1 + 1) + 56))(*(a1 + 1));
  (*(*v12 + 240))(v12, 5, v16[1], v16[0], v15, v11, v10);
  return 0;
}

uint64_t anonymous namespace::DarwinAsmParser::parseVersion(_anonymous_namespace_::DarwinAsmParser *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  {
    return 1;
  }

  *a4 = 0;
  if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) == 9)
  {
    return 0;
  }

  v7 = (*(**(this + 1) + 40))(*(this + 1));
  if (isSDKVersionToken(*(v7 + 8)))
  {
    return 0;
  }

  if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) != 25)
  {
    v10 = "invalid OS update specifier, comma expected";
    v11 = 259;
    v8 = *(this + 1);
    v9 = (*(*v8 + 40))(v8);
    llvm::MCAsmParser::Error(v8, *(v9 + 96), &v10, 0, 0);
    return 1;
  }
}

BOOL isSDKVersionToken(uint64_t a1)
{
  if (*a1 != 2 || *(a1 + 16) != 11)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = *(v3 + 3);
  return v4 == 0x737265765F6B6473 && v5 == 0x6E6F69737265765FLL;
}

uint64_t anonymous namespace::DarwinAsmParser::parseSDKVersion(_anonymous_namespace_::DarwinAsmParser *this, llvm::VersionTuple *a2)
{
  (*(**(this + 1) + 184))(*(this + 1));
  *v8 = 0;
  {
    return 1;
  }

  v5 = v8[1] | (v8[0] << 32) | 0x8000000000000000;
  *a2 = v5;
  *(a2 + 1) = 0;
  if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) != 25)
  {
    return 0;
  }

  v7 = 0;
  {
    return 1;
  }

  result = 0;
  v6 = v7 | 0x80000000;
  *a2 = v5;
  *(a2 + 1) = v6;
  return result;
}

uint64_t anonymous namespace::DarwinAsmParser::checkVersion(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (*(result + 60) != a7)
  {
    if (a5)
    {
      v23[0] = 32;
      v23[2] = a4;
      v23[3] = a5;
      v15 = 2;
      v26[2] = v23;
      v16 = 5;
      v17 = 7;
      v18 = v26;
      v19 = 2;
    }

    else
    {
      v17 = 1;
      v16 = 1;
      v15 = 1;
      v18 = a2;
      v19 = 5;
    }

    v24 = v17;
    v25 = v16;
    v26[0] = a2;
    v26[1] = a3;
    v27 = 5;
    v28 = v15;
    v29[0] = v18;
    v29[1] = a3;
    v29[2] = " used while targeting ";
    v30 = v19;
    v31 = 3;
    OSName = llvm::Triple::getOSName((result + 24));
    v32[0] = v29;
    v32[2] = OSName;
    v32[3] = v21;
    v33 = 1282;
    result = (*(**(a1 + 8) + 168))(*(a1 + 8), a6, v32, 0, 0);
  }

  if (*(a1 + 24))
  {
    v32[0] = "overriding previous version directive";
    v33 = 259;
    (*(**(a1 + 8) + 168))(*(a1 + 8), a6, v32, 0, 0);
    v22 = *(a1 + 24);
    v32[0] = "previous definition is here";
    v33 = 259;
    result = (*(**(a1 + 8) + 160))(*(a1 + 8), v22, v32, 0, 0);
  }

  *(a1 + 24) = a6;
  return result;
}

uint64_t anonymous namespace::DarwinAsmParser::parseMajorMinorVersionComponent(_anonymous_namespace_::DarwinAsmParser *this, unsigned int *a2, unsigned int *a3, const char *a4)
{
  if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) == 4)
  {
    v8 = *((*(**(this + 1) + 40))(*(this + 1)) + 8);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v10 = *v9;
    if ((v10 - 0x2000) > 0xFFFFFFFFFFFF0000)
    {
      *a2 = v10;
      (*(**(this + 1) + 184))(*(this + 1));
      if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) != 25)
      {
        v24 = " minor version number required, comma expected";
        if (*a4)
        {
          v36 = " minor version number required, comma expected";
          v25 = 3;
          v24 = a4;
        }

        else
        {
          v25 = 1;
        }

        v35 = v24;
        v37 = 3;
        v38 = v25;
        goto LABEL_27;
      }

      (*(**(this + 1) + 184))(*(this + 1));
      if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) == 4)
      {
        v16 = *((*(**(this + 1) + 40))(*(this + 1)) + 8);
        v17 = (v16 + 24);
        if (*(v16 + 32) >= 0x41u)
        {
          v17 = *v17;
        }

        v18 = *v17;
        if (v18 < 0x100)
        {
          *a3 = v18;
          (*(**(this + 1) + 184))(*(this + 1));
          return 0;
        }

        v19 = *a4;
        if (*a4)
        {
          v32 = a4;
          v20 = 3;
          v13 = 2;
        }

        else
        {
          v20 = 1;
          v13 = 3;
        }

        v31[0] = "invalid ";
        v33 = 3;
        v34 = v20;
        v21 = v19 == 0;
        v22 = v31;
        if (v21)
        {
          v22 = "invalid ";
        }

        v23 = " minor version number";
      }

      else
      {
        v29 = *a4;
        if (*a4)
        {
          v32 = a4;
          v30 = 3;
          v13 = 2;
        }

        else
        {
          v30 = 1;
          v13 = 3;
        }

        v31[0] = "invalid ";
        v33 = 3;
        v34 = v30;
        v21 = v29 == 0;
        v22 = v31;
        if (v21)
        {
          v22 = "invalid ";
        }

        v23 = " minor version number, integer expected";
      }
    }

    else
    {
      v11 = *a4;
      if (*a4)
      {
        v32 = a4;
        v12 = 3;
        v13 = 2;
      }

      else
      {
        v12 = 1;
        v13 = 3;
      }

      v31[0] = "invalid ";
      v33 = 3;
      v34 = v12;
      v21 = v11 == 0;
      v22 = v31;
      if (v21)
      {
        v22 = "invalid ";
      }

      v23 = " major version number";
    }
  }

  else
  {
    v14 = *a4;
    if (*a4)
    {
      v32 = a4;
      v15 = 3;
      v13 = 2;
    }

    else
    {
      v15 = 1;
      v13 = 3;
    }

    v31[0] = "invalid ";
    v33 = 3;
    v34 = v15;
    v21 = v14 == 0;
    v22 = v31;
    if (v21)
    {
      v22 = "invalid ";
    }

    v23 = " major version number, integer expected";
  }

  v35 = v22;
  v36 = v23;
  v37 = v13;
  v38 = 3;
LABEL_27:
  v26 = *(this + 1);
  v27 = (*(*v26 + 40))(v26);
  llvm::MCAsmParser::Error(v26, *(v27 + 96), &v35, 0, 0);
  return 1;
}

uint64_t anonymous namespace::DarwinAsmParser::parseOptionalTrailingVersionComponent(_anonymous_namespace_::DarwinAsmParser *this, unsigned int *a2, const char *a3)
{
  (*(**(this + 1) + 184))(*(this + 1));
  if (**((*(**(this + 1) + 40))(*(this + 1)) + 8) == 4)
  {
    v6 = *((*(**(this + 1) + 40))(*(this + 1)) + 8);
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7;
    if (v8 < 0x100)
    {
      *a2 = v8;
      (*(**(this + 1) + 184))(*(this + 1));
      return 0;
    }

    v9 = *a3;
    if (*a3)
    {
      v21 = a3;
      v10 = 3;
      v11 = 2;
    }

    else
    {
      v10 = 1;
      v11 = 3;
    }

    v20[0] = "invalid ";
    v22 = 3;
    v23 = v10;
    v15 = v9 == 0;
    v16 = v20;
    if (v15)
    {
      v16 = "invalid ";
    }

    v17 = " version number";
  }

  else
  {
    v12 = *a3;
    if (*a3)
    {
      v21 = a3;
      v13 = 3;
      v11 = 2;
    }

    else
    {
      v13 = 1;
      v11 = 3;
    }

    v20[0] = "invalid ";
    v22 = 3;
    v23 = v13;
    v15 = v12 == 0;
    v16 = v20;
    if (v15)
    {
      v16 = "invalid ";
    }

    v17 = " version number, integer expected";
  }

  v24[0] = v16;
  v24[2] = v17;
  v25 = v11;
  v26 = 3;
  v18 = *(this + 1);
  v19 = (*(*v18 + 40))(v18);
  llvm::MCAsmParser::Error(v18, *(v19 + 96), v24, 0, 0);
  return 1;
}

uint64_t anonymous namespace::DarwinAsmParser::parseVersionMin(llvm::MCAsmParser **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v20 = 0;
  v19 = 0;
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  v11 = (*(*a1[1] + 40))(a1[1]);
  {
    return 1;
  }

  v15[0] = "unexpected token";
  v16 = 259;
  if (llvm::MCAsmParser::parseEOL(a1[1], v15))
  {
    v13[0] = " in '";
    v13[2] = a2;
    v13[3] = a3;
    v14 = 1283;
    v15[0] = v13;
    v15[2] = "' directive";
    v16 = 770;
    return llvm::MCAsmParser::addErrorSuffix(a1[1], v15);
  }

  else
  {
    v12 = (*(*a1[1] + 56))(a1[1]);
    (*(*v12 + 232))(v12, a5, v20[1], v20[0], v19, v17, v18);
    return 0;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parseBuildVersion>(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  v34 = 0;
  v8 = *(*((*(*a1[1] + 40))(a1[1]) + 8) + 8);
  if ((*(*a1[1] + 192))(a1[1], &v33))
  {
    v9 = "platform name expected";
LABEL_3:
    v31[0] = v9;
    v32 = 259;
    v10 = a1[1];
    v11 = (*(*v10 + 40))(v10);
    llvm::MCAsmParser::Error(v10, *(v11 + 96), v31, 0, 0);
    return 1;
  }

  if (v34 > 8)
  {
    if (v34 <= 11)
    {
      if (v34 == 9)
      {
        if (*v33 == 0x696B726576697264 && *(v33 + 8) == 116)
        {
          v13 = 10;
          goto LABEL_83;
        }
      }

      else if (v34 == 11)
      {
        if (*v33 == 0x6C6174614363616DLL && *(v33 + 3) == 0x7473796C61746143)
        {
          v13 = 6;
          goto LABEL_83;
        }

        if (*v33 == 0x616C756D69737278 && *(v33 + 3) == 0x726F74616C756D69)
        {
          v13 = 12;
          goto LABEL_83;
        }
      }
    }

    else if (v34 == 12)
    {
      if (*v33 == 0x6C756D6973736F69 && *(v33 + 8) == 1919906913)
      {
        v13 = 7;
        goto LABEL_83;
      }
    }

    else if (v34 == 13)
    {
      if (*v33 == 0x756D6973736F7674 && *(v33 + 5) == 0x726F74616C756D69)
      {
        v13 = 8;
        goto LABEL_83;
      }
    }

    else if (v34 == 16 && *v33 == 0x73736F6863746177 && *(v33 + 8) == 0x726F74616C756D69)
    {
      v13 = 9;
      goto LABEL_83;
    }

LABEL_77:
    v31[0] = "unknown platform name";
    v32 = 259;
    return llvm::MCAsmParser::Error(a1[1], v8, v31, 0, 0);
  }

  if (v34 <= 4)
  {
    if (v34 == 3)
    {
      if (*v33 == 28521 && *(v33 + 2) == 115)
      {
        v13 = 2;
        goto LABEL_83;
      }
    }

    else if (v34 == 4)
    {
      if (*v33 == 1936684660)
      {
        v13 = 3;
        goto LABEL_83;
      }

      if (*v33 == 1936683640)
      {
        v13 = 11;
        goto LABEL_83;
      }
    }

    goto LABEL_77;
  }

  if (v34 == 5)
  {
    if (*v33 == 1868783981 && *(v33 + 4) == 115)
    {
      v13 = 1;
      goto LABEL_83;
    }

    if (*v33 == 1869636979 && *(v33 + 4) == 115)
    {
      v13 = 14;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  if (v34 == 7)
  {
    if (*v33 == 1668571511 && *(v33 + 3) == 1936681059)
    {
      v13 = 4;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  if (v34 != 8 || *v33 != 0x736F656764697262)
  {
    goto LABEL_77;
  }

  v13 = 5;
LABEL_83:
  if (**((*(*a1[1] + 40))(a1[1]) + 8) != 25)
  {
    v9 = "version number required, comma expected";
    goto LABEL_3;
  }

  (*(*a1[1] + 184))(a1[1]);
  *v30 = 0;
  v29 = 0;
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  v24 = (*(*a1[1] + 40))(a1[1]);
  {
    return 1;
  }

  v31[0] = "unexpected token";
  v32 = 259;
  if (llvm::MCAsmParser::parseEOL(a1[1], v31))
  {
    v31[0] = " in '.build_version' directive";
    v32 = 259;
    return llvm::MCAsmParser::addErrorSuffix(a1[1], v31);
  }

  else
  {
    OSTypeFromPlatform = getOSTypeFromPlatform(v13);
    v26 = (*(*a1[1] + 56))(a1[1]);
    (*(*v26 + 240))(v26, v13, v30[1], v30[0], v29, v27, v28);
    return 0;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parsePtrAuthABIVersion>(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 8);
  v7[0] = "expected integer version in '.ptrauth_abi_version' directive";
  v8 = 259;
  if (llvm::MCAsmParser::parseIntToken(v2, &v9, v7))
  {
    return 1;
  }

  if (v9 >= 0x40)
  {
    v7[0] = "invalid ptrauth ABI version number";
    v8 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), v7, 0, 0);
    return 1;
  }

  v7[0] = "unexpected token";
  v8 = 259;
  if (llvm::MCAsmParser::parseEOL(*(a1 + 8), v7))
  {
    v7[0] = " in '.ptrauth_abi_version' directive";
    v8 = 259;
    return llvm::MCAsmParser::addErrorSuffix(*(a1 + 8), v7);
  }

  else
  {
    v6 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v6 + 256))();
    return 0;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::DarwinAsmParser,&anonymous namespace::DarwinAsmParser::parsePtrAuthKernelABIVersion>(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 8);
  v7[0] = "expected integer version in '.ptrauth_kernel_abi_version' directive";
  v8 = 259;
  if (llvm::MCAsmParser::parseIntToken(v2, &v9, v7))
  {
    return 1;
  }

  if (v9 >= 0x40)
  {
    v7[0] = "invalid ptrauth kernel ABI version number";
    v8 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), v7, 0, 0);
    return 1;
  }

  v7[0] = "unexpected token";
  v8 = 259;
  if (llvm::MCAsmParser::parseEOL(*(a1 + 8), v7))
  {
    v7[0] = " in '.ptrauth_kernel_abi_version' directive";
    v8 = 259;
    return llvm::MCAsmParser::addErrorSuffix(*(a1 + 8), v7);
  }

  else
  {
    v6 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v6 + 256))();
    return 0;
  }
}

uint64_t anonymous namespace::ELFAsmParser::Initialize(_anonymous_namespace_::ELFAsmParser *this, llvm::MCAsmParser *a2)
{
  *(this + 1) = a2;
  v3 = *(**(this + 1) + 16);

  return v3();
}

uint64_t anonymous namespace::ELFAsmParser::ParseSectionSwitch(uint64_t a1, llvm::formatv_object_base *a2, llvm::formatv_object_base *a3, int a4, int a5)
{
  v17 = 0;
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v10 = *(a1 + 8);
    v18[0] = 0;
    if ((*(*v10 + 232))(v10, &v17, v18))
    {
      return 1;
    }
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v12 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v13 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v16 = 261;
  v15[0] = a2;
  v15[1] = a3;
  v19 = 257;
  ELFSection = llvm::MCContext::getELFSection(v13, v15, a4, a5, 0, v18, 0, -1, 0);
  (*(*v12 + 168))(v12, ELFSection, v17);
  return 0;
}

uint64_t anonymous namespace::ELFAsmParser::ParseSectionArguments(uint64_t a1, int a2, uint64_t a3)
{
  v182 = *MEMORY[0x277D85DE8];
  v6 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  v7 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v8 = *(a1 + 8);
  if (**(v7 + 8) == 3)
  {
    v9 = *((*(*v8 + 40))(*(a1 + 8)) + 8);
    if (*v9 == 2)
    {
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
    }

    else
    {
      v16 = v9 + 8;
      v14 = *(v9 + 8);
      v15 = *(v16 + 8);
      v17 = v15 != 0;
      if (v15)
      {
        v11 = v14 + 1;
      }

      else
      {
        v11 = v14;
      }

      if (v15 - 1 < v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = v15 - 1;
      }

      if (v18 >= v15)
      {
        v18 = v15;
      }

      v10 = v18 - v17;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    goto LABEL_16;
  }

  if (v8[6])
  {
LABEL_5:
    *&v177 = "expected identifier";
    v179 = 259;
    v12 = *((*(*v8 + 40))(v8) + 96);
    v13 = v8;
LABEL_505:
    llvm::MCAsmParser::Error(v13, v12, &v177, 0, 0);
    goto LABEL_506;
  }

  v22 = 0;
  v11 = 0;
  v10 = 0;
  while (1)
  {
    v23 = *((*(*v8 + 40))(v8) + 96);
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 25 || **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      break;
    }

    v24 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
    v25 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
    v26 = *v25;
    if (v24 == 3)
    {
      v27 = *(v25 + 2);
      if (v26 != 2)
      {
        v28 = v27 - 1;
        v29 = v27 != 0;
        if (v27 - 1 < v29)
        {
          v28 = 1;
        }

        if (v28 < v27)
        {
          LODWORD(v27) = v28;
        }

        LODWORD(v27) = v27 - v29;
      }

      LODWORD(v30) = v27 + 2;
    }

    else
    {
      v31 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
      if (v26 == 2)
      {
        v30 = *(v31 + 16);
        if (*v31 != 2)
        {
          v32 = v30 - 1;
          v33 = v30 != 0;
          if (v30 - 1 < v33)
          {
            v32 = 1;
          }

          if (v32 >= v30)
          {
            LODWORD(v32) = v30;
          }

          LODWORD(v30) = v32 - v33;
        }
      }

      else
      {
        LODWORD(v30) = *(v31 + 16);
      }
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v10 = (v30 + v22);
    v22 += v30;
    if (v23 + v30 == *(*((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) + 8))
    {
      v8 = *(a1 + 8);
      v11 = v6;
      if (!v8[6])
      {
        continue;
      }
    }

    v11 = v6;
    break;
  }

  if (!v22)
  {
    v8 = *(a1 + 8);
    goto LABEL_5;
  }

LABEL_16:
  v176 = 0uLL;
  v175 = 0;
  v174 = 0uLL;
  *v172 = -1;
  v173 = 0;
  if (v10 >= 7)
  {
    v19 = *v11 == 1685025326 && *(v11 + 3) == 1635017060;
    if (v19 && (v10 == 7 || *(v11 + 7) == 46))
    {
      goto LABEL_82;
    }
  }

  if (v10 == 5)
  {
    if ((*v11 != 1852401198 || *(v11 + 4) != 105) && (*v11 != 1768843566 || *(v11 + 4) != 116) && (*v11 != 2019914798 || *(v11 + 4) != 116))
    {
      if (*v11 == 1952539694 && *(v11 + 4) == 97)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    }

LABEL_89:
    v38 = 6;
    goto LABEL_119;
  }

  if (v10 == 8)
  {
    if (*v11 == 0x31617461646F722ELL)
    {
LABEL_82:
      v38 = 2;
      goto LABEL_119;
    }

    if (*v11 != 2019914798 || *(v11 + 4) != 116)
    {
      if (*v11 != 1952539694 || *(v11 + 4) != 97)
      {
        goto LABEL_103;
      }

LABEL_95:
      if (*(v11 + 5) == 46)
      {
        goto LABEL_118;
      }

LABEL_96:
      if (v10 == 6)
      {
        if (*v11 == 1952539694 && *(v11 + 4) == 12641)
        {
          goto LABEL_118;
        }

        if (*v11 != 1936941614)
        {
          goto LABEL_109;
        }

LABEL_114:
        if (*(v11 + 4) != 46)
        {
          goto LABEL_104;
        }

LABEL_118:
        v38 = 3;
        goto LABEL_119;
      }

LABEL_103:
      if (*v11 != 1936941614)
      {
LABEL_104:
        if (v10 >= 0xB)
        {
          v42 = *v11 == 0x72615F74696E692ELL && *(v11 + 3) == 0x79617272615F7469;
          if (v42 && (v10 == 11 || *(v11 + 11) == 46))
          {
            goto LABEL_118;
          }
        }

        goto LABEL_109;
      }

      goto LABEL_114;
    }

LABEL_88:
    if (*(v11 + 5) == 46)
    {
      goto LABEL_89;
    }

LABEL_90:
    if (*v11 != 1952539694 || *(v11 + 4) != 97)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if (v10 >= 5)
  {
    if (*v11 != 2019914798 || *(v11 + 4) != 116)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if (v10 == 4 && *v11 == 1936941614)
  {
    goto LABEL_118;
  }

LABEL_109:
  if (hasPrefix(v11, v10, ".fini_array", 0xBuLL) || hasPrefix(v11, v10, ".preinit_array", 0xEuLL))
  {
    goto LABEL_118;
  }

  if (hasPrefix(v11, v10, ".tdata", 6uLL) || hasPrefix(v11, v10, ".tbss", 5uLL))
  {
    v38 = 1027;
  }

  else
  {
    v38 = 0;
  }

LABEL_119:
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    goto LABEL_183;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (a2 && **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3)
  {
    v76 = *(a1 + 8);
    *&v177 = 0;
    if ((*(*v76 + 232))(v76, &v173, &v177))
    {
      goto LABEL_506;
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 25)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      goto LABEL_122;
    }

LABEL_183:
    LODWORD(v77) = 0;
    v78 = 0;
    v55 = 0;
    v54 = 0;
    goto LABEL_184;
  }

LABEL_122:
  v43 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  v44 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v43 != 3)
  {
    if (*v44 != 37)
    {
      v81 = "expected string";
      goto LABEL_504;
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 37)
    {
      v54 = 0;
      while (1)
      {
        (*(**(a1 + 8) + 184))(*(a1 + 8));
        if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 2)
        {
          goto LABEL_250;
        }

        v56 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
        if (*v56 == 2)
        {
          v57 = *(v56 + 8);
          v58 = *(v56 + 16);
        }

        else
        {
          v57 = *(v56 + 8);
          v59 = *(v56 + 16);
          v60 = v59 - 1;
          v61 = v59 != 0;
          if (v59)
          {
            v57 = (v57 + 1);
          }

          if (v60 < v61)
          {
            v60 = 1;
          }

          if (v60 >= v59)
          {
            v60 = v59;
          }

          v58 = v60 - v61;
        }

        switch(v58)
        {
          case 3uLL:
            v70 = *v57;
            v71 = *(v57 + 2);
            if (v70 != 27764 || v71 != 115)
            {
              goto LABEL_250;
            }

            v66 = 1024;
            break;
          case 9uLL:
            v67 = *v57;
            v68 = *(v57 + 8);
            if (v67 != 0x74736E6963657865 || v68 != 114)
            {
              goto LABEL_250;
            }

            v66 = 4;
            break;
          case 5uLL:
            if (*v57 == 1869376609 && *(v57 + 4) == 99)
            {
              v66 = 2;
            }

            else
            {
              v63 = *v57;
              v64 = *(v57 + 4);
              if (v63 != 1953067639 || v64 != 101)
              {
                goto LABEL_250;
              }

              v66 = 1;
            }

            break;
          default:
            goto LABEL_250;
        }

        v54 |= v66;
        (*(**(a1 + 8) + 184))(*(a1 + 8));
        if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 25)
        {
          (*(**(a1 + 8) + 184))(*(a1 + 8));
          if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 37)
          {
            continue;
          }
        }

        goto LABEL_135;
      }
    }

LABEL_179:
    v55 = 0;
    v54 = 0;
    v74 = 1;
    v75 = 1;
    goto LABEL_289;
  }

  v47 = v44 + 8;
  v45 = *(v44 + 8);
  v46 = *(v47 + 8);
  v48 = v46 != 0;
  if (v46)
  {
    v49 = v45 + 1;
  }

  else
  {
    v49 = v45;
  }

  if (v46 - 1 < v48)
  {
    v50 = 1;
  }

  else
  {
    v50 = v46 - 1;
  }

  if (v50 >= v46)
  {
    v51 = v46;
  }

  else
  {
    v51 = v50;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v52 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  *&v169 = 0;
  *&v177 = v49;
  *(&v177 + 1) = v51 - v48;
  if ((llvm::consumeUnsignedInteger(&v177, 0, &v169, v53) & 1) != 0 || *(&v177 + 1) || (v54 = v169, DWORD1(v169)))
  {
    v73 = v51 - v48;
    if (v51 == v48)
    {
      goto LABEL_179;
    }

    v55 = 0;
    v54 = 0;
    while (1)
    {
      v84 = *v49;
      if (v84 <= 0x62)
      {
        if (*v49 <= 0x51u)
        {
          switch(v84)
          {
            case '?':
              v55 = 1;
              break;
            case 'G':
              v54 |= 0x200u;
              break;
            case 'M':
              v54 |= 0x10u;
              break;
            default:
              goto LABEL_250;
          }
        }

        else if (*v49 > 0x53u)
        {
          if (v84 == 84)
          {
            v54 |= 0x400u;
          }

          else
          {
            if (v84 != 97)
            {
              goto LABEL_250;
            }

            v54 |= 2u;
          }
        }

        else if (v84 == 82)
        {
          if (*(v52 + 60) == 14)
          {
            v54 |= 0x100000u;
          }

          else
          {
            v54 |= 0x200000u;
          }
        }

        else
        {
          v54 |= 0x20u;
        }

        goto LABEL_246;
      }

      if (*v49 > 0x72u)
      {
        if (*v49 <= 0x77u)
        {
          if (v84 != 115)
          {
            if (v84 != 119)
            {
              goto LABEL_250;
            }

            v54 |= 1u;
            goto LABEL_246;
          }

          goto LABEL_237;
        }

        if (v84 == 120)
        {
          v54 |= 4u;
          goto LABEL_246;
        }

        if (v84 != 121)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (*v49 > 0x64u)
        {
          if (v84 == 101)
          {
            v54 |= 0x80000000;
          }

          else
          {
            if (v84 != 111)
            {
              goto LABEL_250;
            }

            v54 |= 0x80u;
          }

          goto LABEL_246;
        }

        if (v84 != 99)
        {
          if (v84 != 100)
          {
            goto LABEL_250;
          }

LABEL_237:
          v54 |= 0x10000000u;
          goto LABEL_246;
        }
      }

      v54 |= 0x20000000u;
LABEL_246:
      ++v49;
      if (!--v73)
      {
        goto LABEL_247;
      }
    }
  }

LABEL_135:
  v55 = 0;
LABEL_247:
  if (v54 == -1)
  {
LABEL_250:
    v81 = "unknown flag";
    goto LABEL_504;
  }

  v38 |= v54;
  v75 = (v54 & 0x10) == 0;
  if ((v54 & 0x200) != 0)
  {
    if (v55)
    {
      v87 = "Section cannot specifiy a group name while also acting as a member of the last group";
      goto LABEL_382;
    }

    v74 = 0;
    v55 = 0;
  }

  else
  {
    v74 = 1;
  }

LABEL_289:
  v91 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (**(v91 + 8) != 25)
  {
    goto LABEL_365;
  }

  v92 = v91;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v93 = **(v92 + 8);
  if (v93 != 3)
  {
    if (v93 != 36 && v93 != 45)
    {
      if (*(v92 + 105) == 1)
      {
        v94 = "expected '@<type>', '%<type>' or <type>";
      }

      else
      {
        v94 = "expected '%<type>' or <type>";
      }

      goto LABEL_364;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    if (**(v92 + 8) == 4)
    {
      v176 = *(*((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) + 8);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      goto LABEL_365;
    }
  }

  if (!(*(**(a1 + 8) + 192))(*(a1 + 8), &v176))
  {
    goto LABEL_365;
  }

  v94 = "expected identifier";
LABEL_364:
  *&v177 = v94;
  v179 = 259;
  if (llvm::MCAsmParser::TokError(*(a1 + 8), &v177, 0, 0))
  {
    goto LABEL_506;
  }

LABEL_365:
  v106 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (!*(&v176 + 1))
  {
    if (v75)
    {
      if (v74)
      {
        if (**(v106 + 8) == 9)
        {
          goto LABEL_389;
        }

        v87 = "expected end of directive";
      }

      else
      {
        v87 = "Group section must specify the type";
      }
    }

    else
    {
      v87 = "Mergeable section must specify the type";
    }

LABEL_382:
    *&v177 = v87;
    v179 = 259;
    result = llvm::MCAsmParser::TokError(*(a1 + 8), &v177, 0, 0);
    goto LABEL_507;
  }

  if (!v75)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
    {
      v81 = "expected the entry size";
      goto LABEL_504;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    if ((*(**(a1 + 8) + 256))())
    {
      goto LABEL_506;
    }

    if (v175 <= 0)
    {
      v81 = "entry size must be positive";
      goto LABEL_504;
    }
  }

  if ((v74 & 1) == 0)
  {
    v107 = (*(**(a1 + 8) + 40))(*(a1 + 8));
    if (**(v107 + 8) != 25)
    {
      v81 = "expected group name";
      goto LABEL_504;
    }

    v108 = v107;
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v109 = **(a1 + 8);
    if (**(v108 + 8) == 4)
    {
      v174 = *(*((*(v109 + 40))() + 8) + 8);
      (*(**(a1 + 8) + 184))(*(a1 + 8));
    }

    else if ((*(v109 + 192))())
    {
      v81 = "invalid group name";
      goto LABEL_504;
    }

    if (**(v108 + 8) == 25)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v169 = 0uLL;
      if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v169))
      {
        v81 = "invalid linkage";
        goto LABEL_504;
      }

      if (*(&v169 + 1) != 6 || (*v169 == 1684893539 ? (v148 = *(v169 + 4) == 29793) : (v148 = 0), !v148))
      {
        v81 = "Linkage must be 'comdat'";
        goto LABEL_504;
      }

      LODWORD(v77) = 1;
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_390;
      }

      goto LABEL_493;
    }
  }

LABEL_389:
  LODWORD(v77) = 0;
  if ((v54 & 0x80) == 0)
  {
LABEL_390:
    v78 = 0;
    goto LABEL_391;
  }

LABEL_493:
  v150 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (**(v150 + 8) != 25)
  {
    v81 = "expected linked-to symbol";
    goto LABEL_504;
  }

  v151 = v150;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v169 = 0uLL;
  v152 = *(v151 + 96);
  v153 = (*(**(a1 + 8) + 192))(*(a1 + 8), &v169);
  v154 = **(a1 + 8);
  if (v153)
  {
    v155 = *((*(v154 + 40))() + 8);
    if (*(v155 + 16) != 1 || **(v155 + 8) != 48)
    {
      v81 = "invalid linked-to symbol";
      goto LABEL_504;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    goto LABEL_390;
  }

  v156 = (*(v154 + 48))();
  v179 = 261;
  v177 = v169;
  v157 = llvm::MCContext::lookupSymbol(v156, &v177);
  if (v157 && (v78 = v157, (*(v157 + 1) & 0x380) == 0x100))
  {
    if (llvm::MCSymbol::isInSection(v157))
    {
      goto LABEL_391;
    }
  }

  else
  {
    v78 = 0;
  }

  v179 = 1283;
  *&v177 = "linked-to symbol is not in a section: ";
  v178 = v169;
  if (llvm::MCAsmParser::Error(*(a1 + 8), v152, &v177, 0, 0))
  {
    goto LABEL_506;
  }

LABEL_391:
  v111 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (**(v111 + 8) != 25)
  {
    goto LABEL_184;
  }

  v112 = v111;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v169 = 0uLL;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v169))
  {
    v81 = "expected identifier";
    goto LABEL_504;
  }

  if (*(&v169 + 1) != 6 || (*v169 == 1902734965 ? (v113 = *(v169 + 4) == 25973) : (v113 = 0), !v113))
  {
    v81 = "expected 'unique'";
    goto LABEL_504;
  }

  if (**(v112 + 8) != 25)
  {
    v81 = "expected commma";
    goto LABEL_504;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if ((*(**(a1 + 8) + 256))())
  {
LABEL_506:
    result = 1;
    goto LABEL_507;
  }

  if ((*v172 & 0x8000000000000000) != 0)
  {
    v149 = "unique id must be positive";
  }

  else
  {
    if (*v172 <= 0xFFFFFFFEuLL)
    {
      goto LABEL_184;
    }

    v149 = "unique id is too large";
  }

  *&v177 = v149;
  v179 = 259;
  if (llvm::MCAsmParser::TokError(*(a1 + 8), &v177, 0, 0))
  {
    goto LABEL_506;
  }

LABEL_184:
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v81 = "expected end of directive";
LABEL_504:
    *&v177 = v81;
    v179 = 259;
    v158 = *(a1 + 8);
    v12 = *((*(*v158 + 40))(v158) + 96);
    v13 = v158;
    goto LABEL_505;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  if (!*(&v176 + 1))
  {
    if (v10 >= 5)
    {
      if (*v11 == 1953459758 && *(v11 + 4) == 101)
      {
        goto LABEL_304;
      }

      if (v10 >= 0xB)
      {
        v86 = *v11 == 0x72615F74696E692ELL && *(v11 + 3) == 0x79617272615F7469;
        if (v86 && (v10 == 11 || *(v11 + 11) == 46))
        {
          goto LABEL_402;
        }
      }

      if (*v11 == 1936941614 && *(v11 + 4) == 46)
      {
        goto LABEL_263;
      }
    }

    else if (v10 == 4 && *v11 == 1936941614)
    {
      goto LABEL_263;
    }

    if (hasPrefix(v11, v10, ".tbss", 5uLL))
    {
      goto LABEL_263;
    }

    if (!hasPrefix(v11, v10, ".fini_array", 0xBuLL))
    {
      if (hasPrefix(v11, v10, ".preinit_array", 0xEuLL))
      {
        v80 = 16;
      }

      else
      {
        v80 = 1;
      }

      goto LABEL_405;
    }

LABEL_287:
    v80 = 15;
    goto LABEL_405;
  }

  if (*(&v176 + 1) > 12)
  {
    if (*(&v176 + 1) > 18)
    {
      if (*(&v176 + 1) == 19)
      {
        if (*v176 == 0x6E696C5F6D766C6CLL && *(v176 + 8) == 0x6974706F5F72656BLL && *(v176 + 11) == 0x736E6F6974706F5FLL)
        {
          v80 = 1879002113;
          goto LABEL_405;
        }

        goto LABEL_359;
      }

      if (*(&v176 + 1) != 23)
      {
        if (*(&v176 + 1) == 24)
        {
          v89 = *v176 == 0x7065645F6D766C6CLL && *(v176 + 8) == 0x6C5F746E65646E65;
          if (v89 && *(v176 + 16) == 0x7365697261726269)
          {
            v80 = 1879002116;
            goto LABEL_405;
          }
        }

        goto LABEL_359;
      }

      if (*v176 != 0x6C61635F6D766C6CLL || *(v176 + 8) != 0x5F68706172675F6CLL || *(v176 + 15) != 0x656C69666F72705FLL)
      {
        goto LABEL_359;
      }

      v83 = 9;
    }

    else
    {
      switch(*(&v176 + 1))
      {
        case 0xDLL:
          if (*v176 == 0x5F74696E69657270 && *(v176 + 5) == 0x79617272615F7469)
          {
            v80 = 16;
            goto LABEL_405;
          }

          goto LABEL_359;
        case 0xFLL:
          if (*v176 != 0x66666F5F6D766C6CLL || *(v176 + 7) != 0x676E6964616F6C66)
          {
            goto LABEL_359;
          }

          v83 = 11;
          break;
        case 0x10:
          if (*v176 != 0x5F62625F6D766C6CLL || *(v176 + 8) != 0x70616D5F72646461)
          {
            goto LABEL_359;
          }

          v83 = 10;
          break;
        default:
          goto LABEL_359;
      }
    }

LABEL_404:
    v80 = v83 | 0x6FFF4C00;
    goto LABEL_405;
  }

  if (*(&v176 + 1) > 9)
  {
    if (*(&v176 + 1) != 10)
    {
      if (*(&v176 + 1) == 11)
      {
        if (*v176 == 0x72646F5F6D766C6CLL && *(v176 + 3) == 0x62617472646F5F6DLL)
        {
          v80 = 1879002112;
          goto LABEL_405;
        }

        goto LABEL_359;
      }

      if (*v176 != 0x6D79735F6D766C6CLL || *(v176 + 8) != 1953653104)
      {
        goto LABEL_359;
      }

      v83 = 5;
      goto LABEL_404;
    }

    if (*v176 != 0x7272615F74696E69 || *(v176 + 8) != 31073)
    {
      if (*v176 != 0x7272615F696E6966 || *(v176 + 8) != 31073)
      {
        goto LABEL_359;
      }

      goto LABEL_287;
    }

LABEL_402:
    v80 = 14;
    goto LABEL_405;
  }

  if (*(&v176 + 1) == 4)
  {
    if (*v176 != 1702129518)
    {
      goto LABEL_359;
    }

LABEL_304:
    v80 = 7;
    goto LABEL_405;
  }

  if (*(&v176 + 1) == 6)
  {
    if (*v176 != 1768058734 || *(v176 + 4) != 29556)
    {
      if (*v176 == 1769434741 && *(v176 + 4) == 25710)
      {
        v80 = 1879048193;
        goto LABEL_405;
      }

      goto LABEL_359;
    }

LABEL_263:
    v80 = 8;
    goto LABEL_405;
  }

  if (*(&v176 + 1) == 8 && *v176 == 0x73746962676F7270)
  {
    v80 = 1;
    goto LABEL_405;
  }

LABEL_359:
  *&v169 = 0;
  v177 = v176;
  if ((llvm::consumeUnsignedInteger(&v177, 0, &v169, v79) & 1) != 0 || *(&v177 + 1) || (v80 = v169, DWORD1(v169)))
  {
    v81 = "unknown section type";
    goto LABEL_504;
  }

LABEL_405:
  if (v55)
  {
    v114 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v115 = *(v114 + 152);
    if (v115)
    {
      v116 = *(*(v114 + 144) + 32 * v115 - 32);
      if (v116)
      {
        v117 = *(v116 + 240);
        v118 = (v117 & 0xFFFFFFFFFFFFFFF8);
        if ((v117 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          if ((*v118 & 4) != 0)
          {
            v121 = *(v118 - 1);
            v122 = *v121;
            v119 = v121 + 2;
            v120 = v122;
          }

          else
          {
            v119 = 0;
            v120 = 0;
          }

          *&v174 = v119;
          *(&v174 + 1) = v120;
          v38 |= 0x200u;
          v77 = (v117 >> 2) & 1;
        }
      }
    }
  }

  v123 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v179 = 261;
  *&v177 = v11;
  *(&v177 + 1) = v10;
  v171 = 261;
  v169 = v174;
  ELFSection = llvm::MCContext::getELFSection(v123, &v177, v80, v38, v175, &v169, v77, v172[0], v78);
  v125 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(*v125 + 168))(v125, ELFSection, v173);
  if (!*(&v176 + 1) || *(ELFSection + 224) == v80)
  {
    goto LABEL_445;
  }

  v126 = *((*(**(a1 + 8) + 48))(*(a1 + 8)) + 48);
  if (v126 == 38)
  {
    if (v10 == 9)
    {
      v127 = *(v11 + 8);
      v128 = *v11 == 0x6D6172665F68652ELL;
      v129 = 101;
      goto LABEL_421;
    }

LABEL_429:
    v168 = 1283;
    v165[0] = "changed section type for ";
    v166 = v11;
    v167 = v10;
    *&v169 = v165;
    v170 = ", expected: 0x";
    v171 = 770;
    v132 = *(ELFSection + 224);
    if (v132)
    {
      v133 = (&v178 + 1);
      do
      {
        *(v133 - 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v132 & 0xF];
        v133 = (v133 - 1);
        v134 = v132 > 0xF;
        v132 >>= 4;
      }

      while (v134);
    }

    else
    {
      v133 = &v178;
      LOBYTE(v178) = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, v133, &v178 + 1, &v178 + 1 - v133);
    v135 = v171;
    if (v171 == 1)
    {
      *&v177 = __p;
      v178 = v164;
      v179 = 260;
      v180 = v162;
      v181 = v163;
    }

    else if (v171)
    {
      if (HIBYTE(v171) != 1)
      {
        v135 = 2;
      }

      v136 = &v169;
      if (HIBYTE(v171) == 1)
      {
        v136 = v169;
      }

      *&v177 = v136;
      *(&v177 + 1) = *(&v169 + 1);
      *&v178 = __p;
      LOBYTE(v179) = v135;
      HIBYTE(v179) = 4;
    }

    else
    {
      v179 = 256;
    }

    llvm::MCAsmParser::Error(*(a1 + 8), a3, &v177, 0, 0);
    if (v161 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_445;
  }

  if (v10 < 7 || (v126 & 0xFFFFFFFC) != 0x10)
  {
    goto LABEL_429;
  }

  v127 = *(v11 + 3);
  v128 = *v11 == 1650811950;
  v129 = 1600615778;
LABEL_421:
  v131 = !v128 || v127 != v129;
  if (v80 != 1 || v131)
  {
    goto LABEL_429;
  }

LABEL_445:
  v137 = v175;
  v138 = *(&v176 + 1);
  if (v54 || v175 || *(&v176 + 1))
  {
    v139 = *(ELFSection + 228);
    if (v139 != v38)
    {
      v168 = 1283;
      v165[0] = "changed section flags for ";
      v166 = v11;
      v167 = v10;
      *&v169 = v165;
      v170 = ", expected: 0x";
      v171 = 770;
      if (v139)
      {
        v140 = (&v178 + 1);
        do
        {
          *(v140 - 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v139 & 0xF];
          v140 = (v140 - 1);
          v134 = v139 > 0xF;
          v139 >>= 4;
        }

        while (v134);
      }

      else
      {
        v140 = &v178;
        LOBYTE(v178) = 48;
      }

      std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, v140, &v178 + 1, &v178 + 1 - v140);
      v141 = v171;
      if (v171 == 1)
      {
        *&v177 = __p;
        v178 = v164;
        v179 = 260;
        v180 = v162;
        v181 = v163;
      }

      else if (v171)
      {
        if (HIBYTE(v171) != 1)
        {
          v141 = 2;
        }

        v142 = &v169;
        if (HIBYTE(v171) == 1)
        {
          v142 = v169;
        }

        *&v177 = v142;
        *(&v177 + 1) = *(&v169 + 1);
        *&v178 = __p;
        LOBYTE(v179) = v141;
        HIBYTE(v179) = 4;
      }

      else
      {
        v179 = 256;
      }

      llvm::MCAsmParser::Error(*(a1 + 8), a3, &v177, 0, 0);
      if (v161 < 0)
      {
        operator delete(__p[0]);
      }

      v137 = v175;
      v138 = *(&v176 + 1);
    }
  }

  else
  {
    v137 = 0;
  }

  if (v54 || v137 || v138)
  {
    v143 = *(ELFSection + 236);
    if (v137 != v143)
    {
      v168 = 1283;
      v165[0] = "changed section entsize for ";
      v166 = v11;
      v167 = v10;
      *&v169 = v165;
      v170 = ", expected: ";
      v171 = 770;
      *&v177 = &v169;
      *&v178 = v143;
      v179 = 2050;
      llvm::MCAsmParser::Error(*(a1 + 8), a3, &v177, 0, 0);
    }
  }

  if (*((*(**(a1 + 8) + 48))(*(a1 + 8)) + 1601) != 1 || (~*(ELFSection + 228) & 6) != 0)
  {
LABEL_478:
    result = 0;
    goto LABEL_507;
  }

  v144 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  *&v177 = ELFSection;
  result = llvm::SetVector<llvm::MCSection *,std::vector<llvm::MCSection *>,llvm::DenseSet<llvm::MCSection *,llvm::DenseMapInfo<llvm::MCSection *,void>>>::insert((v144 + 1608), &v177);
  if (result)
  {
    if (*((*(**(a1 + 8) + 48))(*(a1 + 8)) + 1712) <= 2u)
    {
      *&v177 = "DWARF2 only supports one section per compilation unit";
      v179 = 259;
      (*(**(a1 + 8) + 168))(*(a1 + 8), a3, &v177, 0, 0);
    }

    if (!*(ELFSection + 8))
    {
      v145 = (*(**(a1 + 8) + 48))(*(a1 + 8));
      *&v177 = "tmp";
      v179 = 259;
      TempSymbol = llvm::MCContext::createTempSymbol(v145, &v177, 1);
      v147 = (*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(*v147 + 192))(v147, TempSymbol, 0);
      result = 0;
      *(ELFSection + 8) = TempSymbol;
      goto LABEL_507;
    }

    goto LABEL_478;
  }

LABEL_507:
  v159 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL hasPrefix(unsigned __int8 *__s1, size_t a2, void *__s2, size_t __n)
{
  if (a2 < __n)
  {
    return 0;
  }

  if (__n && memcmp(__s1, __s2, __n))
  {
    return 0;
  }

  if (a2 == __n)
  {
    return 1;
  }

  return __s1[__n] == 46;
}

unint64_t llvm::MCSymbol::isInSection(llvm::MCSymbol *this)
{
  result = llvm::MCSymbol::getFragment(this, 1u);
  if (result)
  {
    return llvm::MCSymbol::getFragment(this, 1u) != llvm::MCSymbol::AbsolutePseudoFragment;
  }

  return result;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectivePushSection>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  llvm::MCStreamer::pushSection(v6);
  if (v7)
  {
    v8 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    llvm::MCStreamer::popSection(v8);
  }

  return v7;
}

BOOL llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectivePopSection>(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v3 = llvm::MCStreamer::popSection(v2);
  if (!v3)
  {
    v7 = ".popsection without corresponding .pushsection";
    v8 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), &v7, 0, 0);
  }

  return !v3;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveSize>(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v11))
  {
    v2 = "expected identifier";
LABEL_8:
    v9[0] = v2;
    v10 = 259;
    v6 = *(a1 + 8);
    v7 = (*(*v6 + 40))(v6);
    llvm::MCAsmParser::Error(v6, *(v7 + 96), v9, 0, 0);
    return 1;
  }

  v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v10 = 261;
  v9[0] = v11;
  v9[1] = v12;
  llvm::MCContext::getOrCreateSymbol(v3, v9);
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    v2 = "expected comma";
    goto LABEL_8;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v8 = 0;
  v9[0] = 0;
  if (((*(**(a1 + 8) + 232))(*(a1 + 8), &v8, v9) & 1) == 0)
  {
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v4 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v4 + 424))();
      return 0;
    }

    v2 = "unexpected token";
    goto LABEL_8;
  }

  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectivePrevious>(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v3 = *(v2 + 152);
  if (v3 && (v4 = *(v2 + 144) + 32 * v3, (v5 = *(v4 - 16)) != 0))
  {
    v6 = *(v4 - 8);
    v7 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(*v7 + 168))(v7, v5, v6);
    return 0;
  }

  else
  {
    v11 = ".previous without corresponding .section";
    v12 = 259;
    v9 = *(a1 + 8);
    v10 = (*(*v9 + 40))(v9);
    llvm::MCAsmParser::Error(v9, *(v10 + 96), &v11, 0, 0);
    return 1;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveType>(uint64_t a1)
{
  v30 = 0;
  v31 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v30))
  {
    v2 = "expected identifier";
LABEL_14:
    v28[0] = v2;
    v29 = 259;
    v5 = *(a1 + 8);
    v6 = (*(*v5 + 40))(v5);
    llvm::MCAsmParser::Error(v5, *(v6 + 96), v28, 0, 0);
    return 1;
  }

  v3 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v29 = 261;
  v28[0] = v30;
  v28[1] = v31;
  llvm::MCContext::getOrCreateSymbol(v3, v28);
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 25)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 2 && **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 37 && **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 36 && **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3)
  {
    if (*((*(**(a1 + 8) + 40))(*(a1 + 8)) + 105))
    {
      if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 45)
      {
        goto LABEL_9;
      }

      v12 = "expected STT_<TYPE_IN_UPPER_CASE>, '#<type>', '@<type>', '%<type>' or <type>";
    }

    else
    {
      v12 = "expected STT_<TYPE_IN_UPPER_CASE>, '#<type>', '%<type>' or <type>";
    }

    v28[0] = v12;
    v29 = 259;
    return llvm::MCAsmParser::TokError(*(a1 + 8), v28, 0, 0);
  }

LABEL_9:
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 3 && **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 2)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
  }

  v4 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  v26 = 0;
  v27 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v26))
  {
    v2 = "expected symbol type";
    goto LABEL_14;
  }

  if (v27 <= 9)
  {
    if (v27 == 6)
    {
      if ((*v26 != 1701470831 || *(v26 + 4) != 29795) && (*v26 != 1835888483 || *(v26 + 4) != 28271))
      {
        v15 = *(v26 + 4);
        v16 = *v26 == 2037673838;
        v17 = 25968;
        goto LABEL_63;
      }
    }

    else if (v27 == 7)
    {
      if (*v26 != 1599362131 || *(v26 + 3) != 1397511263)
      {
        goto LABEL_82;
      }
    }

    else if (v27 != 8 || *v26 != 0x434E55465F545453 && *v26 != 0x6E6F6974636E7566)
    {
      goto LABEL_82;
    }
  }

  else if (v27 > 16)
  {
    if (v27 != 17)
    {
      if (v27 == 21)
      {
        v8 = *(v26 + 13);
        v9 = *v26 == 0x69646E695F756E67 && *(v26 + 8) == 0x6E75665F74636572;
        v10 = 0x6E6F6974636E7566;
LABEL_32:
        if (!v9 || v8 != v10)
        {
          goto LABEL_82;
        }

        goto LABEL_87;
      }

LABEL_82:
      v28[0] = "unsupported attribute";
      v29 = 259;
      return llvm::MCAsmParser::Error(*(a1 + 8), v4, v28, 0, 0);
    }

    if (*v26 != 0x71696E755F756E67 || *(v26 + 8) != 0x63656A626F5F6575 || *(v26 + 16) != 116)
    {
      goto LABEL_82;
    }
  }

  else
  {
    if (v27 != 10)
    {
      if (v27 == 13)
      {
        v8 = *(v26 + 5);
        v9 = *v26 == 0x5F554E475F545453;
        v10 = 0x434E5546495F554ELL;
        goto LABEL_32;
      }

      goto LABEL_82;
    }

    if ((*v26 != 0x454A424F5F545453 || *(v26 + 8) != 21571) && (*v26 != 0x656A626F5F736C74 || *(v26 + 8) != 29795) && (*v26 != 0x4D4D4F435F545453 || *(v26 + 8) != 20047))
    {
      v15 = *(v26 + 8);
      v16 = *v26 == 0x59544F4E5F545453;
      v17 = 17744;
LABEL_63:
      if (!v16 || v15 != v17)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_87:
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v2 = "expected end of directive";
    goto LABEL_14;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v25 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(v25 + 296))();
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveIdent>(uint64_t a1)
{
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 3)
  {
    v2 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = *(v2 + 16);
    }

    else
    {
      v8 = v2 + 8;
      v6 = *(v2 + 8);
      v7 = *(v8 + 8);
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v9 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
      (*(v9 + 672))();
      return 0;
    }

    v5 = "expected end of directive";
  }

  else
  {
    v5 = "expected string";
  }

  v13 = v5;
  v14 = 259;
  v11 = *(a1 + 8);
  v12 = (*(*v11 + 40))(v11);
  llvm::MCAsmParser::Error(v11, *(v12 + 96), &v13, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveSymver>(uint64_t a1)
{
  v20 = 0;
  v21 = 0;
  __s = 0;
  __n = 0;
  v16 = 0;
  v17 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v20))
  {
    goto LABEL_2;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    v2 = "expected a comma";
    goto LABEL_18;
  }

  v3 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 105);
  *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 105) = 1;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 105) = v3;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &__s))
  {
LABEL_2:
    v2 = "expected identifier";
LABEL_18:
    v14[0] = v2;
    v15 = 259;
    v9 = *(a1 + 8);
    v10 = (*(*v9 + 40))(v9);
    llvm::MCAsmParser::Error(v9, *(v10 + 96), v14, 0, 0);
    return 1;
  }

  if (!__n || (v4 = __s, (v5 = memchr(__s, 64, __n)) == 0) || v5 - v4 == -1)
  {
    v2 = "expected a '@' in the name";
    goto LABEL_18;
  }

  v6 = llvm::StringRef::find(&__s, "@@@", 3uLL, 0) == -1;
  if (llvm::MCAsmParser::parseOptionalToken(*(a1 + 8), 25))
  {
    if (((*(**(a1 + 8) + 192))(*(a1 + 8), &v16) & 1) != 0 || v17 != 6 || (*v16 == 1869440370 ? (v7 = *(v16 + 4) == 25974) : (v7 = 0), !v7))
    {
      v14[0] = "expected 'remove'";
      v15 = 259;
      return llvm::MCAsmParser::TokError(*(a1 + 8), v14, 0, 0);
    }

    v6 = 0;
  }

  llvm::MCAsmParser::parseOptionalToken(*(a1 + 8), 9);
  v11 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v12 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v15 = 261;
  v14[0] = v20;
  v14[1] = v21;
  Symbol = llvm::MCContext::getOrCreateSymbol(v12, v14);
  (*(*v11 + 432))(v11, Symbol, __s, __n, v6);
  return 0;
}

BOOL llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveVersion>(uint64_t a1)
{
  v2 = **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  if (v2 == 3)
  {
    v5 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
    if (*v5 == 2)
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
    }

    else
    {
      v10 = v5 + 8;
      v8 = *(v5 + 8);
      v9 = *(v10 + 8);
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v11 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v24 = ".note";
    v25 = 259;
    v27 = 257;
    ELFSection = llvm::MCContext::getELFSection(v11, &v24, 7, 0, 0, v26, 0, -1, 0);
    v13 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v14 = llvm::MCStreamer::pushSection(v13);
    v15 = (*(**(a1 + 8) + 56))(*(a1 + 8), v14);
    (*(*v15 + 168))(v15, ELFSection, 0);
    v16 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v16 + 512))();
    v17 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v17 + 512))();
    v18 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v18 + 512))();
    v19 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v19 + 488))();
    v20 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v20 + 512))();
    v21 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v21 + 632))();
    v22 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    llvm::MCStreamer::popSection(v22);
  }

  else
  {
    v26[0] = "expected string";
    v27 = 259;
    v3 = *(a1 + 8);
    v4 = (*(*v3 + 40))(v3);
    llvm::MCAsmParser::Error(v3, *(v4 + 96), v26, 0, 0);
  }

  return v2 != 3;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveWeakref>(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v17))
  {
    v2 = "expected identifier";
LABEL_7:
    v14 = v2;
    v16 = 259;
    v6 = *(a1 + 8);
    v7 = (*(*v6 + 40))(v6);
    llvm::MCAsmParser::Error(v6, *(v7 + 96), &v14, 0, 0);
    return 1;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    v2 = "expected a comma";
    goto LABEL_7;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v12 = 0;
  v13 = 0;
  v3 = (*(**(a1 + 8) + 192))(*(a1 + 8), &v12);
  if (v3)
  {
    v14 = "expected identifier";
    v16 = 259;
    v4 = *(a1 + 8);
    v5 = (*(*v4 + 40))(v4);
    llvm::MCAsmParser::Error(v4, *(v5 + 96), &v14, 0, 0);
  }

  else
  {
    v9 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v16 = 261;
    v14 = v17;
    v15 = v18;
    llvm::MCContext::getOrCreateSymbol(v9, &v14);
    v10 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v16 = 261;
    v14 = v12;
    v15 = v13;
    llvm::MCContext::getOrCreateSymbol(v10, &v14);
    v11 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v11 + 288))();
  }

  return v3;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveSymbolAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (*a2 == 1634039598)
      {
        v4 = *(a2 + 4) == 107;
      }
    }

    else if (a3 == 6 && *a2 == 1668246574)
    {
      v4 = *(a2 + 4) == 27745;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        if (*a2 == 1684629550)
        {
          v4 = *(a2 + 3) == 1852138596;
        }

        break;
      case 9:
        if (*a2 == 0x616E7265746E692ELL)
        {
          v4 = *(a2 + 8) == 108;
        }

        break;
      case 10:
        *a2;
        *(a2 + 8);
        break;
    }
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
LABEL_17:
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    return 0;
  }

  v15 = 0;
  v16 = 0;
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v15))
  {
LABEL_26:
    v10 = "expected identifier";
    goto LABEL_27;
  }

  while (1)
  {
    v6 = (*(**(a1 + 8) + 104))(*(a1 + 8), v15, v16);
    v7 = **(a1 + 8);
    if (v6)
    {
      if (**((*(v7 + 40))() + 8) == 9)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

    v8 = (*(v7 + 48))();
    v14 = 261;
    v13[0] = v15;
    v13[1] = v16;
    llvm::MCContext::getOrCreateSymbol(v8, v13);
    v9 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v9 + 296))();
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      goto LABEL_17;
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
    {
      break;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
LABEL_25:
    v15 = 0;
    v16 = 0;
    if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v15))
    {
      goto LABEL_26;
    }
  }

  v10 = "expected comma";
LABEL_27:
  v13[0] = v10;
  v14 = 259;
  v11 = *(a1 + 8);
  v12 = (*(*v11 + 40))(v11);
  llvm::MCAsmParser::Error(v11, *(v12 + 96), v13, 0, 0);
  return 1;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::ELFAsmParser,&anonymous namespace::ELFAsmParser::ParseDirectiveSubsection>(uint64_t a1)
{
  v10 = 0;
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v2 = *(a1 + 8);
    v8[0] = 0;
    if ((*(*v2 + 232))(v2, &v10, v8))
    {
      return 1;
    }
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 9)
  {
    v8[0] = "expected end of directive";
    v9 = 259;
    v6 = *(a1 + 8);
    v7 = (*(*v6 + 40))(v6);
    llvm::MCAsmParser::Error(v6, *(v7 + 96), v8, 0, 0);
    return 1;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v3 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  v4 = *(v3 + 152);
  if (v4)
  {
    (*(*v3 + 168))(v3, *(*(v3 + 144) + 32 * v4 - 32), v10);
  }

  return 0;
}

llvm::MCAsmLexer *llvm::MCAsmLexer::MCAsmLexer(llvm::MCAsmLexer *this)
{
  *this = &unk_2883F00D8;
  *(this + 1) = this + 24;
  *(this + 2) = 0x100000000;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 104) = 1;
  *(this + 53) = 256;
  *(this + 27) = 0;
  *(this + 112) = 0;
  *(this + 29) = 10;
  *(this + 60) = 0;
  *(this + 16) = 0;
  v4 = 11;
  v3 = 0uLL;
  llvm::SmallVectorImpl<llvm::AsmToken>::emplace_back<llvm::AsmToken::TokenKind,llvm::StringRef>(this + 8, &v4, &v3);
  return this;
}

uint64_t llvm::SmallVectorImpl<llvm::AsmToken>::emplace_back<llvm::AsmToken::TokenKind,llvm::StringRef>(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::growAndEmplaceBack<llvm::AsmToken::TokenKind,llvm::StringRef>(a1, a2, a3);
  }

  else
  {
    v5 = *a1 + 40 * v4;
    *v5 = *a2;
    v6 = *a3;
    *(v5 + 24) = 0;
    v5 += 24;
    *(v5 - 16) = v6;
    *(v5 + 8) = 64;
    llvm::APInt::clearUnusedBits(v5);
    v7 = *(a1 + 8) + 1;
    *(a1 + 8) = v7;
    return *a1 + 40 * v7 - 40;
  }
}

void llvm::MCAsmLexer::~MCAsmLexer(void **this)
{
  *this = &unk_2883F00D8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  llvm::SmallVector<llvm::AsmToken,1u>::~SmallVector((this + 1));
}

uint64_t llvm::SmallVector<llvm::AsmToken,1u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::destroy_range(*a1, *a1 + 40 * *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::growAndEmplaceBack<llvm::AsmToken::TokenKind,llvm::StringRef>(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  v13 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v13);
  v8 = v7 + 40 * *(a1 + 8);
  *v8 = *a2;
  v9 = *a3;
  *(v8 + 24) = 0;
  v8 += 24;
  *(v8 - 16) = v9;
  *(v8 + 8) = 64;
  llvm::APInt::clearUnusedBits(v8);
  llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::moveElementsForGrow(a1, v7);
  v10 = v13;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  v11 = *(a1 + 8) + 1;
  *(a1 + 8) = v11;
  *(a1 + 12) = v10;
  return v7 + 40 * v11 - 40;
}

BOOL llvm::MCAsmParser::parseEOL(llvm::MCAsmParser *this)
{
  v2 = **((*(*this + 40))(this) + 8);
  v3 = *this;
  if (v2 == 9)
  {
    (*(v3 + 184))(this);
  }

  else
  {
    v4 = *(*((*(v3 + 40))(this) + 8) + 8);
    v6 = "expected newline";
    v7 = 259;
    llvm::MCAsmParser::Error(this, v4, &v6, 0, 0);
  }

  return v2 != 9;
}

uint64_t llvm::MCAsmParser::Error(uint64_t a1, uint64_t a2, llvm::Twine *a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = xmmword_2750C1860;
  v16 = 0;
  v17 = 0;
  v12 = a2;
  v13 = v15;
  llvm::Twine::toVector(a3, &v13);
  v16 = a4;
  v17 = a5;
  v8 = llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::push_back(a1 + 16, &v12);
  if (**((*(*a1 + 40))(a1, v8) + 8) == 1)
  {
    v9 = (*(*a1 + 40))(a1);
    llvm::MCAsmLexer::Lex(v9);
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL llvm::MCAsmParser::parseEOL(llvm::MCAsmParser *this, const llvm::Twine *a2)
{
  v4 = **((*(*this + 40))(this) + 8);
  v5 = *this;
  if (v4 == 9)
  {
    (*(v5 + 184))(this);
  }

  else
  {
    v6 = (*(v5 + 40))(this);
    llvm::MCAsmParser::Error(this, *(*(v6 + 8) + 8), a2, 0, 0);
  }

  return v4 != 9;
}

BOOL llvm::MCAsmParser::parseToken(llvm::MCAsmParser *this, int a2, llvm::Twine *a3)
{
  if (a2 == 9)
  {

    return llvm::MCAsmParser::parseEOL(this, a3);
  }

  else
  {
    v7 = **((*(*this + 40))(this) + 8);
    v8 = *this;
    if (v7 == a2)
    {
      (*(v8 + 184))(this);
      return 0;
    }

    else
    {
      v9 = (*(v8 + 40))(this);
      llvm::MCAsmParser::Error(this, *(*(v9 + 8) + 8), a3, 0, 0);
      return 1;
    }
  }
}

BOOL llvm::MCAsmParser::parseIntToken(llvm::MCAsmParser *this, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = **((*(*this + 40))(this) + 8);
  v7 = (*(*this + 40))(this);
  if (v6 == 4)
  {
    v8 = *(v7 + 8);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    *a2 = *v9;
    (*(*this + 184))(this);
  }

  else
  {
    llvm::MCAsmParser::Error(this, *(v7 + 96), a3, 0, 0);
  }

  return v6 != 4;
}

uint64_t llvm::MCAsmParser::TokError(uint64_t a1, llvm::Twine *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 40))(a1);
  llvm::MCAsmParser::Error(a1, *(v8 + 96), a2, a3, a4);
  return 1;
}

BOOL llvm::MCAsmParser::parseOptionalToken(llvm::MCAsmParser *a1, int a2)
{
  v4 = **((*(*a1 + 40))(a1) + 8);
  if (v4 == a2)
  {
    v6 = "unexpected token";
    v7 = 259;
    llvm::MCAsmParser::parseToken(a1, a2, &v6);
  }

  return v4 == a2;
}

uint64_t llvm::MCAsmParser::check(llvm::MCAsmParser *this, uint64_t a2, const llvm::Twine *a3)
{
  v6 = (*(*this + 40))(this);
  if (a2)
  {
    llvm::MCAsmParser::Error(this, *(*(v6 + 8) + 8), a3, 0, 0);
  }

  return a2;
}

__n128 llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<llvm::MCAsmParser::MCPendingError,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>>(a1, a2, 1);
  v4 = *a1 + 112 * *(a1 + 8);
  *v4 = v3->n128_u64[0];
  *(v4 + 8) = v4 + 32;
  *(v4 + 16) = xmmword_2750C1860;
  if (v3[1].n128_u64[0])
  {
    llvm::SmallVectorImpl<char>::operator=(v4 + 8, &v3->n128_i64[1]);
  }

  result = v3[6];
  *(v4 + 96) = result;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::MCAsmParser::addErrorSuffix(llvm::MCAsmParser *this, const llvm::Twine *a2)
{
  if (**((*(*this + 40))(this) + 8) == 1)
  {
    (*(*this + 184))(this);
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = 112 * v4;
    v6 = *(this + 2) + 8;
    do
    {
      llvm::Twine::toVector(a2, v6);
      v6 += 112;
      v5 -= 112;
    }

    while (v5);
  }

  return 1;
}

uint64_t llvm::MCAsmParser::parseMany(llvm::MCAsmParser *a1, uint64_t (*a2)(uint64_t), uint64_t a3, int a4)
{
  if (llvm::MCAsmParser::parseOptionalToken(a1, 9))
  {
    return 0;
  }

  if (a2(a3))
  {
    return 1;
  }

  do
  {
    v9 = llvm::MCAsmParser::parseOptionalToken(a1, 9);
    if (v9)
    {
      break;
    }

    if (a4)
    {
      v10 = "unexpected token";
      v11 = 259;
      if (llvm::MCAsmParser::parseToken(a1, 25, &v10))
      {
        break;
      }
    }
  }

  while (!a2(a3));
  return !v9;
}

char **llvm::SmallVector<llvm::MCAsmParser::MCPendingError,0u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[112 * v3 - 104];
    v5 = -112 * v3;
    do
    {
      if (v4 + 3 != *v4)
      {
        free(*v4);
      }

      v4 -= 14;
      v5 += 112;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::MCAsmParser::MCPendingError,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 112 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 112, &v6);
  llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::MCAsmParser::MCPendingError,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1 + 112 * v2;
    v6 = *a1 + 8;
    do
    {
      v7 = v6 - 8;
      *a2 = *(v6 - 8);
      *(a2 + 8) = a2 + 32;
      *(a2 + 16) = xmmword_2750C1860;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<char>::operator=(a2 + 8, v6);
      }

      *(a2 + 96) = *(v6 + 88);
      a2 += 112;
      v6 += 112;
    }

    while (v7 + 112 != v5);
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = (*a1 + 112 * v8 - 104);
      v10 = -112 * v8;
      do
      {
        if (v9 + 3 != *v9)
        {
          free(*v9);
        }

        v9 -= 14;
        v10 += 112;
      }

      while (v10);
    }
  }
}

uint64_t _GLOBAL__sub_I_MCAsmParser_cpp()
{
  v4 = &v3;
  v2 = 1;
  v3 = 20;
  v1.n128_u64[0] = "The maximum nesting depth allowed for assembly macros.";
  v1.n128_u64[1] = 54;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [28],llvm::cl::initializer<int>,llvm::cl::OptionHidden,llvm::cl::desc>(&llvm::AsmMacroMaxNestingDepth, "asm-macro-max-nesting-depth", &v4, &v2, &v1);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &llvm::AsmMacroMaxNestingDepth, &dword_274E5C000);
}

uint64_t llvm::MCAsmParserExtension::ParseDirectiveCGProfile(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v2 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v24))
  {
    goto LABEL_2;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
    goto LABEL_9;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v19 = 0;
  v20 = 0;
  v4 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 96);
  if ((*(**(a1 + 8) + 192))(*(a1 + 8), &v19))
  {
LABEL_2:
    v3 = "expected identifier in directive";
LABEL_10:
    v21 = v3;
    v23 = 259;
    v16 = *(a1 + 8);
    v17 = (*(*v16 + 40))(v16);
    llvm::MCAsmParser::Error(v16, *(v17 + 96), &v21, 0, 0);
    return 1;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
  {
LABEL_9:
    v3 = "expected a comma";
    goto LABEL_10;
  }

  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v18 = 0;
  v5 = *(a1 + 8);
  v21 = "expected integer count in '.cg_profile' directive";
  v23 = 259;
  if (llvm::MCAsmParser::parseIntToken(v5, &v18, &v21))
  {
    return 1;
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
    v6 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v23 = 261;
    v21 = v24;
    v22 = v25;
    Symbol = llvm::MCContext::getOrCreateSymbol(v6, &v21);
    v8 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v23 = 261;
    v21 = v19;
    v22 = v20;
    v9 = llvm::MCContext::getOrCreateSymbol(v8, &v21);
    v10 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v11 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v12 = llvm::MCSymbolRefExpr::create(Symbol, 0, v11, v2);
    v13 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v14 = llvm::MCSymbolRefExpr::create(v9, 0, v13, v4);
    (*(*v10 + 1152))(v10, v12, v14, v18);
    return 0;
  }

  else
  {
    v21 = "unexpected token in directive";
    v23 = 259;
    return llvm::MCAsmParser::TokError(*(a1 + 8), &v21, 0, 0);
  }
}

uint64_t anonymous namespace::WasmAsmParser::Initialize(_anonymous_namespace_::WasmAsmParser *this, llvm::MCAsmParser *a2)
{
  *(this + 3) = a2;
  *(this + 4) = (*(*a2 + 40))(a2);
  v3 = *(this + 3);
  *(this + 1) = v3;
  v4 = *(**(this + 1) + 16);

  return v4();
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::WasmAsmParser,&anonymous namespace::WasmAsmParser::parseSectionDirectiveData>(uint64_t a1)
{
  v2 = *(*((*(**(a1 + 8) + 48))(*(a1 + 8)) + 160) + 32);
  v3 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  (*(*v3 + 168))(v3, v2, 0);
  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::WasmAsmParser,&anonymous namespace::WasmAsmParser::parseSectionDirective>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = 0;
  v54 = 0;
  if ((*(**(a1 + 24) + 192))(*(a1 + 24), &v53))
  {
    v55 = "expected identifier in directive";
    v59 = 259;
    v6 = *(a1 + 8);
    v7 = (*(*v6 + 40))(v6);
    llvm::MCAsmParser::Error(v6, *(v7 + 96), &v55, 0, 0);
    return 1;
  }

  {
    return 1;
  }

  v9 = *(*(a1 + 32) + 8);
  if (*v9 != 3)
  {
    v11 = *(a1 + 24);
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    v55 = "expected string in directive, instead got: ";
    v56 = 43;
    v57 = v12;
    v58 = v13;
    v59 = 1285;
    return llvm::MCAsmParser::Error(v11, v12, &v55, 0, 0);
  }

  if (v54 >= 5)
  {
    if (*v53 == 1952539694 && *(v53 + 4) == 97)
    {
      goto LABEL_63;
    }

    if (v54 == 5)
    {
      if (*v53 != 1935832110 || *(v53 + 4) != 115)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (*v53 == 1633973294 && *(v53 + 4) == 24948)
      {
        v10 = 13;
        goto LABEL_64;
      }

      if (*v53 != 1935832110 || *(v53 + 4) != 115)
      {
        if (v54 >= 7)
        {
          if (*v53 == 1685025326 && *(v53 + 3) == 1635017060)
          {
            v10 = 4;
            goto LABEL_64;
          }

          if (*v53 != 2019914798 || *(v53 + 4) != 116)
          {
            if (v54 >= 0xF && *v53 == 0x5F6D6F747375632ELL && *(v53 + 7) == 0x6E6F69746365735FLL)
            {
              v10 = 0;
              goto LABEL_64;
            }

            if (*v53 == 1936941614)
            {
              goto LABEL_9;
            }

            if (v54 < 0xB || (*v53 == 0x72615F74696E692ELL ? (v22 = *(v53 + 3) == 0x79617272615F7469) : (v22 = 0), !v22))
            {
              if (*v53 ^ 0x6265642E | *(v53 + 3) ^ 0x5F677562)
              {
                v10 = 19;
              }

              else
              {
                v10 = 0;
              }

              goto LABEL_64;
            }

LABEL_63:
            v10 = 19;
            goto LABEL_64;
          }

LABEL_101:
          v10 = 2;
          goto LABEL_64;
        }

LABEL_32:
        if (*v53 != 2019914798 || *(v53 + 4) != 116)
        {
          if (*v53 == 1936941614)
          {
            v10 = 15;
          }

          else
          {
            v10 = 19;
          }

          goto LABEL_64;
        }

        goto LABEL_101;
      }
    }

    v10 = 12;
    goto LABEL_64;
  }

  if (v54 != 4 || *v53 != 1936941614)
  {
    goto LABEL_63;
  }

LABEL_9:
  v10 = 15;
LABEL_64:
  v23 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8);
  v24 = *(v23 + 16);
  v25 = v24 - 1;
  v26 = v24 != 0;
  if (v24 - 1 < v26)
  {
    v25 = 1;
  }

  if (v25 < v24)
  {
    v24 = v25;
  }

  v27 = v24 - v26;
  if (!v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_81:
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    {
      return 1;
    }

    {
      return 1;
    }

    v51 = 0;
    v52 = 0;
    {
      return 1;
    }

    {
      return 1;
    }

    v33 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v59 = 261;
    v55 = v53;
    v56 = v54;
    v50 = 261;
    v49[0] = v51;
    v49[1] = v52;
    WasmSection = llvm::MCContext::getWasmSection(v33, &v55, v10, v28, v49, -1);
    if (*(WasmSection + 256) != v28)
    {
      v35 = *(a1 + 24);
      v48 = 1283;
      v47[0] = "changed section flags for ";
      v47[2] = v53;
      v47[3] = v54;
      v45 = ", expected: 0x";
      v46 = 259;
      llvm::operator+(v47, &v45, v49);
      llvm::utohexstr(*(WasmSection + 256), 0, 0, __p);
      v44 = 260;
      v43 = __p;
      llvm::operator+(v49, &v43, &v55);
      llvm::MCAsmParser::Error(v35, a4, &v55, 0, 0);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v29)
    {
      v36 = *(WasmSection + 220);
      v37 = v36 & 0xFC;
      v39 = (v36 - 15) < 6 || v37 == 4 || v37 == 8;
      if (!v39 && (v36 - 12) >= 3)
      {
        v11 = *(a1 + 24);
        v55 = "Only data sections can be passive";
        v59 = 259;
        v12 = a4;
        return llvm::MCAsmParser::Error(v11, v12, &v55, 0, 0);
      }

      *(WasmSection + 252) = 1;
    }

    v40 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(*v40 + 168))(v40, WasmSection, 0);
    return 0;
  }

  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = (*(v23 + 8) + v26);
  while (1)
  {
    v32 = *v31;
    if (v32 > 0x53)
    {
      break;
    }

    if (v32 == 71)
    {
      v30 = 1;
    }

    else
    {
      if (v32 != 83)
      {
        goto LABEL_100;
      }

      v28 = v28 | 1;
    }

LABEL_80:
    ++v31;
    if (!--v27)
    {
      goto LABEL_81;
    }
  }

  if (v32 == 84)
  {
    v28 = v28 | 2;
    goto LABEL_80;
  }

  if (v32 == 112)
  {
    v29 = 1;
    goto LABEL_80;
  }

LABEL_100:
  v55 = "unknown flag";
  v59 = 259;
  return llvm::MCAsmParser::TokError(*(a1 + 8), &v55, 0, 0);
}

uint64_t anonymous namespace::WasmAsmParser::expect(uint64_t a1, int a2, std::string::value_type *__s)
{
  if (**(*(a1 + 32) + 8) == a2)
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    return 0;
  }

  else
  {
    *(&v16.__r_.__value_.__s + 23) = 9;
    strcpy(&v16, "Expected ");
    v5 = std::string::append(&v16, __s);
    v6 = v5->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v17, ", instead got: ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *__p = *&v7->__r_.__value_.__l.__data_;
    v19 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = SHIBYTE(v19);
    v10 = __p;
    if (v19 < 0)
    {
      v10 = __p[0];
    }

    if (v19 < 0)
    {
      v9 = __p[1];
    }

    v11 = *(a1 + 24);
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v20[0] = v10;
    v20[1] = v9;
    v20[2] = v13;
    v20[3] = v14;
    v21 = 1285;
    v4 = llvm::MCAsmParser::Error(v11, v13, v20, 0, 0);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  return v4;
}

uint64_t anonymous namespace::WasmAsmParser::parseGroup(_anonymous_namespace_::WasmAsmParser *this, llvm::StringRef *a2)
{
  if (**(*(this + 4) + 8) != 25)
  {
    v4 = "expected group name";
LABEL_5:
    v11 = v4;
    v12 = 259;
    v5 = *(this + 1);
    v6 = (*(*v5 + 40))(v5, a2);
    llvm::MCAsmParser::Error(v5, *(v6 + 96), &v11, 0, 0);
    return 1;
  }

  (*(**(this + 1) + 184))(*(this + 1));
  if (**(*(this + 4) + 8) == 4)
  {
    *a2 = *(*((*(**(this + 1) + 40))(*(this + 1)) + 8) + 8);
    (*(**(this + 1) + 184))(*(this + 1));
    goto LABEL_8;
  }

  if ((*(**(this + 3) + 192))(*(this + 3), a2))
  {
    v4 = "invalid group name";
    goto LABEL_5;
  }

LABEL_8:
  if (**(*(this + 4) + 8) == 25)
  {
    (*(**(this + 1) + 184))(*(this + 1));
    v9 = 0;
    v10 = 0;
    if ((*(**(this + 3) + 192))(*(this + 3), &v9))
    {
      v4 = "invalid linkage";
      goto LABEL_5;
    }

    if (v10 != 6 || (*v9 == 1684893539 ? (v8 = *(v9 + 4) == 29793) : (v8 = 0), !v8))
    {
      v4 = "Linkage must be 'comdat'";
      goto LABEL_5;
    }
  }

  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::WasmAsmParser,&anonymous namespace::WasmAsmParser::parseDirectiveSize>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  if ((*(**(a1 + 24) + 192))(*(a1 + 24), &v16))
  {
    v14[0] = "expected identifier in directive";
    v15 = 259;
    v6 = *(a1 + 8);
    v7 = (*(*v6 + 40))(v6);
    llvm::MCAsmParser::Error(v6, *(v7 + 96), v14, 0, 0);
    return 1;
  }

  v8 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v15 = 261;
  v14[0] = v16;
  v14[1] = v17;
  Symbol = llvm::MCContext::getOrCreateSymbol(v8, v14);
  {
    return 1;
  }

  v13 = 0;
  v14[0] = 0;
  {
    return 1;
  }

  if (*(Symbol + 36) == 1 && *(Symbol + 32) == 0)
  {
    v14[0] = ".size directive ignored for function symbols";
    v15 = 259;
    (*(**(a1 + 8) + 168))(*(a1 + 8), a4, v14, 0, 0);
  }

  else
  {
    v12 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v12 + 424))();
  }

  return 0;
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::WasmAsmParser,&anonymous namespace::WasmAsmParser::parseDirectiveType>(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*v2 == 2)
  {
    v3 = *((*(**(a1 + 8) + 56))(*(a1 + 8)) + 8);
    v4 = *(*(a1 + 32) + 8);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    v22 = 261;
    v18 = v6;
    v19 = v5;
    Symbol = llvm::MCContext::getOrCreateSymbol(v3, &v18);
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v8 = *(*(a1 + 32) + 8);
    if (*v8 == 25)
    {
      (*(**(a1 + 8) + 184))(*(a1 + 8));
      v8 = *(*(a1 + 32) + 8);
      if (*v8 == 45)
      {
        (*(**(a1 + 8) + 184))(*(a1 + 8));
        v8 = *(*(a1 + 32) + 8);
        if (*v8 == 2)
        {
          v9 = *(v8 + 8);
          v10 = *(v8 + 16);
          if (v10 != 6)
          {
            if (v10 == 8 && *v9 == 0x6E6F6974636E7566)
            {
              *(Symbol + 32) = 0;
              *(Symbol + 36) = 1;
              v11 = (*(**(a1 + 8) + 56))(*(a1 + 8));
              if (*(*(*(v11 + 144) + 32 * *(v11 + 152) - 32) + 232))
              {
                *(Symbol + 42) = 1;
              }

              goto LABEL_26;
            }

            goto LABEL_22;
          }

          if (*v9 == 1651469415 && *(v9 + 4) == 27745)
          {
            *(Symbol + 32) = 2;
          }

          else
          {
            if (*v9 != 1701470831 || *(v9 + 4) != 29795)
            {
LABEL_22:
              v12 = *(a1 + 24);
              v13 = "Unknown WASM symbol type: ";
              v14 = 26;
              goto LABEL_12;
            }

            *(Symbol + 32) = 1;
          }

          *(Symbol + 36) = 1;
LABEL_26:
          (*(**(a1 + 8) + 184))(*(a1 + 8));
        }
      }
    }

    v12 = *(a1 + 24);
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v13 = "Expected label,@type declaration, got: ";
    v14 = 39;
  }

  else
  {
    v12 = *(a1 + 24);
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    v13 = "Expected label after .type directive, got: ";
    v14 = 43;
  }

LABEL_12:
  v18 = v13;
  v19 = v14;
  v20 = v9;
  v21 = v10;
  v22 = 1285;
  return llvm::MCAsmParser::Error(v12, v9, &v18, 0, 0);
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::WasmAsmParser,&anonymous namespace::WasmAsmParser::ParseDirectiveIdent>(uint64_t a1)
{
  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 3 && ((v2 = *((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8), *v2 != 2) ? (v7 = v2 + 8, v5 = *(v2 + 8), v6 = *(v7 + 8)) : (v3 = *(v2 + 8), v4 = *(v2 + 16)), (*(**(a1 + 8) + 184))(*(a1 + 8)), **((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9))
  {
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v8 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v8 + 672))();
    return 0;
  }

  else
  {
    v12 = "unexpected token in '.ident' directive";
    v13 = 259;
    v10 = *(a1 + 8);
    v11 = (*(*v10 + 40))(v10);
    llvm::MCAsmParser::Error(v10, *(v11 + 96), &v12, 0, 0);
    return 1;
  }
}

uint64_t llvm::MCAsmParserExtension::HandleDirective<anonymous namespace::WasmAsmParser,&anonymous namespace::WasmAsmParser::ParseDirectiveSymbolAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (*a2 == 1634039598)
      {
        v4 = *(a2 + 4) == 107;
      }
    }

    else if (a3 == 6 && *a2 == 1668246574)
    {
      v4 = *(a2 + 4) == 27745;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        if (*a2 == 1684629550)
        {
          v4 = *(a2 + 3) == 1852138596;
        }

        break;
      case 9:
        if (*a2 == 0x616E7265746E692ELL)
        {
          v4 = *(a2 + 8) == 108;
        }

        break;
      case 10:
        *a2;
        *(a2 + 8);
        break;
    }
  }

  if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
  {
LABEL_17:
    (*(**(a1 + 8) + 184))(*(a1 + 8));
    return 0;
  }

  v13 = 0;
  for (i = 0; ((*(**(a1 + 8) + 192))(*(a1 + 8), &v13) & 1) == 0; i = 0)
  {
    v6 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v12 = 261;
    v11[0] = v13;
    v11[1] = i;
    llvm::MCContext::getOrCreateSymbol(v6, v11);
    v7 = *(*(**(a1 + 8) + 56))(*(a1 + 8));
    (*(v7 + 296))();
    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) == 9)
    {
      goto LABEL_17;
    }

    if (**((*(**(a1 + 8) + 40))(*(a1 + 8)) + 8) != 25)
    {
      v8 = "unexpected token in directive";
      goto LABEL_24;
    }

    (*(**(a1 + 8) + 184))(*(a1 + 8));
    v13 = 0;
  }

  v8 = "expected identifier in directive";
LABEL_24:
  v11[0] = v8;
  v12 = 259;
  v9 = *(a1 + 8);
  v10 = (*(*v9 + 40))(v9);
  llvm::MCAsmParser::Error(v9, *(v10 + 96), v11, 0, 0);
  return 1;
}

uint64_t anonymous namespace::XCOFFAsmParser::Initialize(_anonymous_namespace_::XCOFFAsmParser *this, llvm::MCAsmParser *a2)
{
  *(this + 3) = a2;
  *(this + 4) = (*(*a2 + 40))(a2);
  v3 = *(this + 3);
  *(this + 1) = v3;
  v4 = *(*v3 + 16);

  return v4();
}

uint64_t llvm::MCAssembler::isThumbFunc(const void ***this, const llvm::MCSymbol *a2)
{
  v4 = (this + 23);
  imp = llvm::SmallPtrSetImplBase::find_imp(this + 23, a2);
  v6 = this[24];
  v7 = 16;
  if (v6 == this[23])
  {
    v7 = 20;
  }

  if (imp != &v6[*(v4 + v7)])
  {
    return 1;
  }

  if ((*(a2 + 1) & 0x3800) != 0x1000)
  {
    return 0;
  }

  *(a2 + 1) |= 4uLL;
  v9 = *(a2 + 3);
  v12 = 0;
  v13 = 0;
  v15 = 0;
  v14 = 0;
  v10 = llvm::MCExpr::evaluateAsRelocatableImpl(v9, &v12, 0, 0, 0, 0, 0);
  result = 0;
  if (v10 && !v13 && !v15)
  {
    if (!v12 || *(v12 + 1))
    {
      return 0;
    }

    result = llvm::MCAssembler::isThumbFunc(this, *(v12 + 16));
    if (result)
    {
      llvm::SmallPtrSetImpl<llvm::Value *>::insert(v4, a2, v11);
      return 1;
    }
  }

  return result;
}

unint64_t llvm::MCAssembler::computeFragmentSize(llvm::MCAssembler *this, const llvm::MCAsmLayout *a2, const llvm::MCFragment *a3)
{
  result = 4;
  switch(*(a3 + 48))
  {
    case 1:
    case 2:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      return *(a3 + 9);
    case 3:
      v29[0] = 0;
      if ((llvm::MCExpr::evaluateAsAbsolute(*(a3 + 8), v29, *a2, a2, 0, 0) & 1) == 0)
      {
        v11 = *this;
        v12 = *(a3 + 9);
        goto LABEL_29;
      }

      result = v29[0] * *(a3 + 51);
      if ((result & 0x8000000000000000) != 0)
      {
        v11 = *this;
        v12 = *(a3 + 9);
        v13 = "invalid number of bytes";
        goto LABEL_30;
      }

      return result;
    case 4:
      return *(a3 + 7);
    case 6:
      v32[0] = 0;
      v32[1] = 0;
      v34 = 0;
      v33 = 0;
      if ((llvm::MCExpr::evaluateAsRelocatableImpl(*(a3 + 7), v32, *a2, a2, 0, 0, 1) & 1) == 0)
      {
        v11 = *this;
        v12 = *(a3 + 8);
LABEL_29:
        v13 = "expected assembly-time absolute expression";
        goto LABEL_30;
      }

      llvm::MCAsmLayout::ensureValid(a2, a3);
      v7 = *(a3 + 4);
      v8 = v33;
      v30 = v33;
      v31 = v7;
      if (!v32[0])
      {
        goto LABEL_8;
      }

      v29[0] = 0;
      if (!getSymbolOffsetImpl(a2, *(v32[0] + 16), 0, v29))
      {
        v11 = *this;
        v12 = *(a3 + 8);
        v13 = "expected absolute expression";
LABEL_30:
        *v35 = v13;
        v36 = 259;
        goto LABEL_31;
      }

      v8 += v29[0];
      v30 = v8;
LABEL_8:
      result = v8 - v7;
      if ((v8 - v7) >> 30)
      {
        v9 = *this;
        v10 = *(a3 + 8);
        v25 = "invalid .org offset '";
        v26 = 259;
        v24 = 269;
        v23[0] = &v30;
        llvm::operator+(&v25, v23, v27);
        v21 = "' (at offset '";
        v22 = 259;
        llvm::operator+(v27, &v21, v28);
        v20 = 268;
        v19[0] = &v31;
        llvm::operator+(v28, v19, v29);
        v17 = "')";
        v18 = 259;
        llvm::operator+(v29, &v17, v35);
        v11 = v9;
        v12 = v10;
LABEL_31:
        llvm::MCContext::reportError(v11, v12, v35);
        return 0;
      }

      return result;
    case 0xA:
      return *(a3 + 8);
    case 0xB:
      return result;
    case 0xC:
      return *(a3 + 11);
    default:
      llvm::MCAsmLayout::ensureValid(a2, a3);
      v14 = ((*(a3 + 8) + (1 << *(a3 + 51)) - 1) & -(1 << *(a3 + 51))) - *(a3 + 8);
      v35[0] = v14;
      if (!(*(**(a3 + 2) + 8))(*(a3 + 2)) || (*(a3 + 52) & 1) == 0 || (v15 = (*(**(this + 1) + 96))(*(this + 1), a3, v35), v14 = v35[0], (v15 & 1) == 0))
      {
        if (v14 && (*(a3 + 52) & 1) != 0 && v14 % (*(**(this + 1) + 176))(*(this + 1)))
        {
          do
          {
            v35[0] += 1 << *(a3 + 51);
            v16 = v35[0];
          }

          while (v16 % (*(**(this + 1) + 176))(*(this + 1)));
        }

        if (v35[0] <= *(a3 + 17))
        {
          return v35[0];
        }

        else
        {
          return 0;
        }
      }

      return v14;
  }
}

llvm::MCAssembler *llvm::MCAsmLayout::layoutFragment(llvm::MCAsmLayout *this, llvm::MCFragment *a2)
{
  v4 = *(a2 + 2);
  v5 = *(v4 + 112);
  v6 = *a2;
  *(a2 + 49) = 1;
  if (v5 == a2 || v6 == 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(v6 + 4);
    v9 = llvm::MCAssembler::computeFragmentSize(*this, this, v6) + v8;
    v4 = *(a2 + 2);
  }

  *(a2 + 4) = v9;
  *(a2 + 49) = 0;
  v18 = v4;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 19, &v18)[1] = a2;
  result = *this;
  if (*(*this + 472) && *(a2 + 50) == 1)
  {
    result = llvm::MCAssembler::computeFragmentSize(result, this, a2);
    v11 = *(*this + 472);
    if ((*(*this + 476) & 1) == 0 && result > v11)
    {
      v17 = "Fragment can't be larger than a bundle size";
      goto LABEL_27;
    }

    v12 = *(a2 + 4);
    v13 = (v11 - 1) & v12;
    v14 = result + v13;
    if (*(a2 + 51) == 1)
    {
      if (v11 != v14)
      {
        if (v11 > v14)
        {
          v15 = v11 - v14;
        }

        else
        {
          v15 = 2 * v11 - v14;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v13)
      {
        v16 = v11 >= v14;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v15 = v11 - v13;
LABEL_22:
        if (v15 < 0x100)
        {
          goto LABEL_23;
        }

        v17 = "Padding cannot exceed 255 bytes";
LABEL_27:
        llvm::report_fatal_error(v17, 1);
      }
    }

    v15 = 0;
LABEL_23:
    *(a2 + 52) = v15;
    *(a2 + 4) = v15 + v12;
  }

  return result;
}

void llvm::CodeViewContext::~CodeViewContext(llvm::CodeViewContext *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = v2[15];
      if (v3 != v2 + 17)
      {
        free(v3);
      }

      v4 = v2[8];
      if (v4 != v2 + 11)
      {
        free(v4);
      }

      MEMORY[0x277C69E40](v2, 0x10E0C400AE5E4C8);
    }
  }

  v7 = (this + 232);
  std::vector<llvm::MCCVFunctionInfo>::__destroy_vector::operator()[abi:nn200100](&v7);
  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(this + 184, *(this + 24));
  v6 = *(this + 5);
  if (v6 != this + 56)
  {
    free(v6);
  }

  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this);
}

uint64_t llvm::CodeViewContext::addFile(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  llvm::CodeViewContext::addToStringTable(a1, a4, a5, v28);
  v14 = v28[0];
  v15 = v28[1];
  v16 = a3 - 1;
  if (*(a1 + 48) <= v16)
  {
    llvm::SmallVectorImpl<llvm::CodeViewContext::FileInfo>::resizeImpl<false>(a1 + 40, a3);
  }

  v17 = *(*(a1 + 40) + 32 * v16 + 4);
  if ((v17 & 1) == 0)
  {
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = 7;
    }

    if (v15)
    {
      v19 = v14;
    }

    else
    {
      v19 = "<stdin>";
    }

    llvm::CodeViewContext::addToStringTable(a1, v19, v18, v25);
    v20 = v26;
    v21 = *(a2 + 8);
    v25[0] = "checksum_offset";
    v27 = 259;
    TempSymbol = llvm::MCContext::createTempSymbol(v21, v25, 0);
    v23 = *(a1 + 40) + 32 * v16;
    *v23 = v20;
    *(v23 + 16) = a7;
    *(v23 + 24) = TempSymbol;
    *(v23 + 4) = 1;
    *(v23 + 8) = a6;
    *(*(a1 + 40) + 32 * v16 + 5) = a8;
  }

  return v17 ^ 1u;
}

uint64_t *llvm::CodeViewContext::addToStringTable@<X0>(llvm::CodeViewContext *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  StringTableFragment = llvm::CodeViewContext::getStringTableFragment(a1);
  v15 = *(StringTableFragment + 72);
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>(a1, a2, a3, &v15);
  v11 = v10;
  v12 = *result;
  v13 = (*result + 16);
  v14 = **result;
  *a4 = v13;
  *(a4 + 8) = v14;
  *(a4 + 16) = *(v12 + 2);
  if (v11)
  {
    return llvm::SmallVectorImpl<char>::append<char const*,void>((StringTableFragment + 64), v13, &v13[v14 + 1]);
  }

  return result;
}

BOOL llvm::CodeViewContext::recordFunctionId(llvm::CodeViewContext *this, unsigned int a2)
{
  v3 = *(this + 29);
  v4 = (this + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 30) - v3) >> 4) <= a2)
  {
    std::vector<llvm::MCCVFunctionInfo>::resize(this + 29, a2 + 1);
    v3 = *v4;
  }

  v5 = (v3 + 48 * a2);
  v6 = *v5;
  if (!*v5)
  {
    *v5 = -1;
  }

  return v6 == 0;
}

void std::vector<llvm::MCCVFunctionInfo>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<llvm::MCCVFunctionInfo>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 48;
        MEMORY[0x277C69E30](*(v3 - 24), 4);
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

BOOL llvm::CodeViewContext::recordInlinedCallSiteId(llvm::CodeViewContext *this, unsigned int a2, unsigned int a3, int a4, int a5, int a6)
{
  v21 = a2;
  v11 = *(this + 29);
  v12 = (this + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 30) - v11) >> 4) <= a2)
  {
    std::vector<llvm::MCCVFunctionInfo>::resize(this + 29, a2 + 1);
    v11 = *v12;
  }

  v13 = (v11 + 48 * a2);
  v14 = *v13;
  if (!*v13)
  {
    *v13 = a3 + 1;
    v13[1] = a4;
    v13[2] = a5;
    v13[3] = a6;
    if (a3 <= 0xFFFFFFFD)
    {
      do
      {
        v15 = v13[3];
        v16 = (*v12 + 48 * a3);
        if (*v16)
        {
          v17 = *v12 + 48 * a3;
        }

        else
        {
          v17 = 0;
        }

        v18 = *(v13 + 1);
        v19 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>,unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>::FindAndConstruct((v17 + 24), &v21);
        *(v19 + 1) = v18;
        v19[3] = v15;
        a3 = *v17 - 1;
        v13 = v16;
      }

      while (a3 < 0xFFFFFFFE);
    }
  }

  return v14 == 0;
}

uint64_t llvm::CodeViewContext::getStringTableFragment(llvm::CodeViewContext *this)
{
  result = *(this + 3);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<llvm::MCCVFunctionInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        MEMORY[0x277C69E30](*(v4 - 3), 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void llvm::SmallVectorImpl<llvm::CodeViewContext::FileInfo>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 32);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 32 * v2), 32 * a2 - 32 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

void std::vector<llvm::MCCVFunctionInfo>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + a2;
    if (v7 > 0x555555555555555)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        v17 = *v15;
        *(v16 + 2) = v15[2];
        *v16 = v17;
        *(v16 + 4) = 0;
        *(v16 + 10) = 0;
        *(v16 + 3) = v15[3];
        v15[3] = 0;
        *(v16 + 8) = *(v15 + 8);
        *(v15 + 8) = 0;
        v18 = *(v16 + 9);
        *(v16 + 9) = *(v15 + 9);
        *(v15 + 9) = v18;
        v19 = *(v16 + 10);
        *(v16 + 10) = *(v15 + 10);
        *(v15 + 10) = v19;
        v15 += 6;
        v16 += 48;
      }

      while (v15 != v4);
      do
      {
        MEMORY[0x277C69E30](v5[3], 4);
        v5 += 6;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>,unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>,unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    inserted[3] = 0;
    *(inserted + 1) = 0;
  }

  return inserted;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>,unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,llvm::MCCVFunctionInfo::LineInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCCVFunctionInfo::LineInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          v16[4] = -1;
        }

        v11 += 4;
        v16 += 16;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        if (*v20 <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, v20, &v32);
          v21 = v32;
          *v32 = *v20;
          v22 = *(v20 + 4);
          v21[3] = *(v20 + 12);
          *(v21 + 1) = v22;
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1210)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1830)))).i32[1])
      {
        *v29 = -1;
        v29[4] = -1;
      }

      v24 += 4;
      v29 += 16;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, _DWORD *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = v12 + 16;
  if (a3)
  {
    memcpy(v12 + 16, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  *(v13 + 2) = *a4;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::MCContext::MCContext(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = a9;
  *(a1 + 16) = a10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v18;
  }

  v19 = *(a2 + 24);
  v20 = *(a2 + 5);
  *(a1 + 184) = 0u;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = a6;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = &unk_2883F02E8;
  *(a1 + 120) = defaultDiagHandler;
  *(a1 + 136) = a1 + 112;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  *(a1 + 168) = a5;
  *(a1 + 176) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x400000000;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1;
  *(a1 + 280) = 0u;
  *(a1 + 296) = a1 + 312;
  *(a1 + 304) = 0x400000000;
  *(a1 + 344) = a1 + 360;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 408;
  *(a1 + 400) = 0x400000000;
  *(a1 + 440) = a1 + 456;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = a1 + 504;
  *(a1 + 496) = 0x400000000;
  *(a1 + 536) = a1 + 552;
  *(a1 + 560) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = a1 + 600;
  *(a1 + 592) = 0x400000000;
  *(a1 + 632) = a1 + 648;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 680) = a1 + 696;
  *(a1 + 688) = 0x400000000;
  *(a1 + 728) = a1 + 744;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = a1 + 792;
  *(a1 + 784) = 0x400000000;
  *(a1 + 824) = a1 + 840;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 872) = a1 + 888;
  *(a1 + 880) = 0x400000000;
  *(a1 + 920) = a1 + 936;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 968) = a1 + 984;
  *(a1 + 976) = 0x400000000;
  *(a1 + 1016) = a1 + 1032;
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1064) = a1 + 1080;
  *(a1 + 1072) = 0x400000000;
  *(a1 + 1112) = a1 + 1128;
  *(a1 + 1148) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1164) = 16;
  *(a1 + 1168) = a1 + 184;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1220) = 16;
  *(a1 + 1224) = a1 + 184;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1252) = 16;
  *(a1 + 1256) = a1 + 184;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1284) = 16;
  *(a1 + 1304) = 0;
  *(a1 + 1288) = 0u;
  *(a1 + 1312) = 2;
  *(a1 + 1352) = 0;
  *(a1 + 1336) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1360) = a1 + 1384;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 128;
  *(a1 + 1520) = 0u;
  *(a1 + 1512) = a1 + 1520;
  v21 = (a1 + 1536);
  *(a1 + 1552) = 0;
  *(a1 + 1536) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1560) = a1 + 1568;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1594) = 1;
  *(a1 + 1598) = 0;
  *(a1 + 1595) = 0;
  *(a1 + 1620) = 0;
  *(a1 + 1604) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1712) = 16777220;
  *(a1 + 1716) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1736) = 0u;
  *(a1 + 1728) = a1 + 1736;
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0u;
  *(a1 + 1772) = 16;
  *(a1 + 1784) = 0u;
  *(a1 + 1776) = a1 + 1784;
  *(a1 + 1808) = 0u;
  *(a1 + 1800) = a1 + 1808;
  *(a1 + 1832) = 0u;
  *(a1 + 1824) = a1 + 1832;
  *(a1 + 1856) = 0u;
  *(a1 + 1848) = a1 + 1856;
  *(a1 + 1880) = 0u;
  *(a1 + 1872) = a1 + 1880;
  *(a1 + 1912) = 0;
  *(a1 + 1896) = 0u;
  *(a1 + 1916) = 16;
  *(a1 + 1936) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1940) = 16;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = a1 + 1976;
  *(a1 + 1968) = 0x400000000;
  *(a1 + 2008) = a1 + 2024;
  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  *(a1 + 2040) = a8;
  *(a1 + 2048) = a7;
  *(a1 + 2056) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2064) = 0u;
  *(a1 + 2084) = 96;
  *(a1 + 2096) = 0u;
  *(a1 + 2088) = a1 + 2096;
  *(a1 + 2128) = 0;
  *(a1 + 2112) = 0u;
  if (a7)
  {
    if (*(a7 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a7 + 88), *(a7 + 96));
    }

    else
    {
      __p = *(a7 + 88);
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
  }

  std::string::operator=((a1 + 1320), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = *v22;
    if (-1431655765 * ((*(*(a1 + 72) + 8) - v23) >> 3))
    {
      v24 = (*(**v23 + 16))();
      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v26 = v25;
      if (v25 >= 0x17)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = v25;
      if (v25)
      {
        memmove(&__p, v24, v25);
      }

      __p.__r_.__value_.__s.__data_[v26] = 0;
      if (*(a1 + 1559) < 0)
      {
        operator delete(*v21);
      }

      *v21 = *&__p.__r_.__value_.__l.__data_;
      *(a1 + 1552) = *(&__p.__r_.__value_.__l + 2);
    }
  }

  v27 = *(a2 + 11);
  if (v27 <= 4)
  {
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      goto LABEL_40;
    }

    if (v27 == 1)
    {
      if (*(a2 + 9) == 15)
      {
        v28 = 3;
        goto LABEL_40;
      }

      v30 = "Cannot initialize MC for non-Windows COFF object files.";
    }

    else
    {
      if (v27 == 2)
      {
        v28 = 7;
LABEL_40:
        *a1 = v28;
        return a1;
      }

      if (v27)
      {
        return a1;
      }

      v30 = "Cannot initialize MC for unknown object file format.";
    }

    llvm::report_fatal_error(v30, 1);
  }

  if (v27 <= 6)
  {
    if (v27 == 5)
    {
      v28 = 0;
    }

    else
    {
      v28 = 4;
    }

    goto LABEL_40;
  }

  if (v27 == 7)
  {
    v28 = 5;
    goto LABEL_40;
  }

  if (v27 == 8)
  {
    v28 = 6;
    goto LABEL_40;
  }

  return a1;
}

void defaultDiagHandler(llvm *a1)
{
  v2 = llvm::errs(a1);

  llvm::SMDiagnostic::print(a1, 0, v2, 1, 1);
}

void llvm::MCContext::~MCContext(llvm::MCContext *this)
{
  v117[3] = *MEMORY[0x277D85DE8];
  if (*(this + 2040) != 1)
  {
    goto LABEL_110;
  }

  *(this + 9) = 0;
  std::unique_ptr<llvm::SourceMgr>::reset[abi:nn200100](this + 10);
  *(this + 12) = *(this + 11);
  v2 = this + 112;
  v115[0] = &unk_2883F02E8;
  v115[1] = defaultDiagHandler;
  v116 = v115;
  if ((this + 112) != v115)
  {
    v3 = *(this + 17);
    if (v3 == v2)
    {
      v116 = 0;
      v117[0] = &unk_2883F02E8;
      v117[1] = defaultDiagHandler;
      (*(*v3 + 24))(v3, v115);
      (*(**(this + 17) + 32))(*(this + 17));
      *(this + 17) = 0;
      v116 = v115;
      (*(v117[0] + 24))(v117, this + 112);
      (*(v117[0] + 32))(v117);
    }

    else
    {
      *(this + 14) = &unk_2883F02E8;
      *(this + 15) = defaultDiagHandler;
      v116 = v3;
    }

    *(this + 17) = v2;
  }

  std::__function::__value_func<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::~__value_func[abi:nn200100](v115);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionCOFF>::DestroyAll(this + 280);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionDXContainer>::DestroyAll(this + 376);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionELF>::DestroyAll(this + 472);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionGOFF>::DestroyAll(this + 664);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionCOFF>::DestroyAll(this + 568);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionWasm>::DestroyAll(this + 856);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionXCOFF>::DestroyAll(this + 952);
  llvm::SpecificBumpPtrAllocator<llvm::MCInst>::DestroyAll(this + 1048);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionDXContainer>::DestroyAll(this + 760);
  llvm::SpecificBumpPtrAllocator<llvm::MCSubtargetInfo>::DestroyAll(this + 1944);
  if (*(this + 311))
  {
    v4 = *(this + 310);
    if (v4)
    {
      v5 = 0;
      v6 = 8 * v4;
      do
      {
        *(*(this + 154) + v5) = 0;
        v5 += 8;
      }

      while (v6 != v5);
    }

    *(this + 1244) = 0;
  }

  if (*(this + 303))
  {
    v7 = *(this + 302);
    if (v7)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        *(*(this + 150) + v8) = 0;
        v8 += 8;
      }

      while (v9 != v8);
    }

    *(this + 1212) = 0;
  }

  if (*(this + 289))
  {
    v10 = *(this + 288);
    if (v10)
    {
      v11 = 0;
      v12 = 8 * v10;
      do
      {
        *(*(this + 143) + v11) = 0;
        v11 += 8;
      }

      while (v12 != v11);
    }

    *(this + 1156) = 0;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(this + 184);
  v13 = (this + 1288);
  v14 = *(this + 324);
  if (v14)
  {
    v15 = *(this + 326);
    if (v15 > 4 * v14 && v15 >= 0x41)
    {
      v16 = 1 << (33 - __clz(v14 - 1));
      if (v16 <= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = v16;
      }

LABEL_31:
      if (v17 == v15)
      {
        v18 = 0;
        *(this + 162) = 0;
        v19 = v15 + 0xFFFFFFFFFFFFFFFLL;
        v20 = v19 & 0xFFFFFFFFFFFFFFFLL;
        v21 = (v19 & 0xFFFFFFFFFFFFFFFLL) - (v19 & 3) + 4;
        v22 = vdupq_n_s64(v20);
        v23 = (*(this + 161) + 32);
        do
        {
          v24 = vdupq_n_s64(v18);
          v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_2750C1210)));
          if (vuzp1_s16(v25, *v22.i8).u8[0])
          {
            *(v23 - 8) = -1;
          }

          if (vuzp1_s16(v25, *&v22).i8[2])
          {
            *(v23 - 4) = -1;
          }

          if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_2750C1830)))).i32[1])
          {
            *v23 = -1;
            v23[4] = -1;
          }

          v18 += 4;
          v23 += 16;
        }

        while (v21 != v18);
      }

      else
      {
        MEMORY[0x277C69E30](*v13, 8);
        if (v17)
        {
          v92 = (4 * v17 / 3u + 1) | ((4 * v17 / 3u + 1) >> 1);
          v93 = v92 | (v92 >> 2) | ((v92 | (v92 >> 2)) >> 4);
          LODWORD(v93) = (((v93 | (v93 >> 8)) >> 16) | v93 | (v93 >> 8)) + 1;
          *(this + 326) = v93;
          v94 = operator new(16 * v93, 8uLL);
          *(this + 161) = v94;
          *(this + 162) = 0;
          v95 = *(this + 326);
          if (v95)
          {
            v96 = 0;
            v97 = v95 + 0xFFFFFFFFFFFFFFFLL;
            v98 = v97 & 0xFFFFFFFFFFFFFFFLL;
            v99 = (v97 & 0xFFFFFFFFFFFFFFFLL) - (v97 & 3) + 4;
            v100 = vdupq_n_s64(v98);
            v101 = v94 + 32;
            do
            {
              v102 = vdupq_n_s64(v96);
              v103 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v102, xmmword_2750C1210)));
              if (vuzp1_s16(v103, *v100.i8).u8[0])
              {
                *(v101 - 8) = -1;
              }

              if (vuzp1_s16(v103, *&v100).i8[2])
              {
                *(v101 - 4) = -1;
              }

              if (vuzp1_s16(*&v100, vmovn_s64(vcgeq_u64(v100, vorrq_s8(v102, xmmword_2750C1830)))).i32[1])
              {
                *v101 = -1;
                v101[4] = -1;
              }

              v96 += 4;
              v101 += 16;
            }

            while (v99 != v96);
          }
        }

        else
        {
          *v13 = 0;
          *(this + 162) = 0;
          *(this + 326) = 0;
        }
      }

      goto LABEL_51;
    }
  }

  else
  {
    if (!*(this + 325))
    {
      goto LABEL_51;
    }

    v15 = *(this + 326);
    if (v15 > 0x40)
    {
      v17 = 0;
      goto LABEL_31;
    }
  }

  if (v15)
  {
    v26 = 0;
    v27 = v15 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 3) + 4;
    v30 = vdupq_n_s64(v28);
    v31 = (*v13 + 32);
    do
    {
      v32 = vdupq_n_s64(v26);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_2750C1210)));
      if (vuzp1_s16(v33, *v30.i8).u8[0])
      {
        *(v31 - 8) = -1;
      }

      if (vuzp1_s16(v33, *&v30).i8[2])
      {
        *(v31 - 4) = -1;
      }

      if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_2750C1830)))).i32[1])
      {
        *v31 = -1;
        v31[4] = -1;
      }

      v26 += 4;
      v31 += 16;
    }

    while (v29 != v26);
  }

  *(this + 162) = 0;
LABEL_51:
  *(this + 171) = 0;
  if (*(this + 1559) < 0)
  {
    **(this + 192) = 0;
    *(this + 193) = 0;
  }

  else
  {
    *(this + 1536) = 0;
    *(this + 1559) = 0;
  }

  std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::destroy(*(this + 196));
  *(this + 195) = this + 1568;
  *(this + 98) = 0u;
  v34 = (this + 1608);
  v35 = *(this + 404);
  if (v35)
  {
    v36 = *(this + 406);
    if (v36 > 4 * v35 && v36 >= 0x41)
    {
      v37 = 1 << (33 - __clz(v35 - 1));
      if (v37 <= 64)
      {
        v38 = 64;
      }

      else
      {
        v38 = v37;
      }

LABEL_63:
      if (v38 == v36)
      {
        v39 = 0;
        *(this + 202) = 0;
        v40 = v36 + 0x1FFFFFFFFFFFFFFFLL;
        v41 = v40 & 0x1FFFFFFFFFFFFFFFLL;
        v42 = (v40 & 0x1FFFFFFFFFFFFFFFLL) - (v40 & 1) + 2;
        v43 = vdupq_n_s64(v41);
        v44 = (*(this + 201) + 8);
        do
        {
          v45 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(vdupq_n_s64(v39), xmmword_2750C1210)));
          if (v45.i8[0])
          {
            *(v44 - 1) = -4096;
          }

          if (v45.i8[4])
          {
            *v44 = -4096;
          }

          v39 += 2;
          v44 += 2;
        }

        while (v42 != v39);
      }

      else
      {
        MEMORY[0x277C69E30](*v34, 8);
        if (v38)
        {
          v104 = (4 * v38 / 3u + 1) | ((4 * v38 / 3u + 1) >> 1);
          v105 = v104 | (v104 >> 2) | ((v104 | (v104 >> 2)) >> 4);
          LODWORD(v105) = (((v105 | (v105 >> 8)) >> 16) | v105 | (v105 >> 8)) + 1;
          *(this + 406) = v105;
          v106 = operator new(8 * v105, 8uLL);
          *(this + 201) = v106;
          *(this + 202) = 0;
          v107 = *(this + 406);
          if (v107)
          {
            v108 = 0;
            v109 = v107 + 0x1FFFFFFFFFFFFFFFLL;
            v110 = v109 & 0x1FFFFFFFFFFFFFFFLL;
            v111 = (v109 & 0x1FFFFFFFFFFFFFFFLL) - (v109 & 1) + 2;
            v112 = vdupq_n_s64(v110);
            v113 = v106 + 8;
            do
            {
              v114 = vmovn_s64(vcgeq_u64(v112, vorrq_s8(vdupq_n_s64(v108), xmmword_2750C1210)));
              if (v114.i8[0])
              {
                *(v113 - 1) = -4096;
              }

              if (v114.i8[4])
              {
                *v113 = -4096;
              }

              v108 += 2;
              v113 += 2;
            }

            while (v111 != v108);
          }
        }

        else
        {
          *v34 = 0;
          *(this + 202) = 0;
          *(this + 406) = 0;
        }
      }

      goto LABEL_79;
    }

    goto LABEL_71;
  }

  if (*(this + 405))
  {
    v36 = *(this + 406);
    if (v36 > 0x40)
    {
      v38 = 0;
      goto LABEL_63;
    }

LABEL_71:
    if (v36)
    {
      v46 = 0;
      v47 = v36 + 0x1FFFFFFFFFFFFFFFLL;
      v48 = v47 & 0x1FFFFFFFFFFFFFFFLL;
      v49 = (v47 & 0x1FFFFFFFFFFFFFFFLL) - (v47 & 1) + 2;
      v50 = vdupq_n_s64(v48);
      v51 = (*v34 + 8);
      do
      {
        v52 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v46), xmmword_2750C1210)));
        if (v52.i8[0])
        {
          *(v51 - 1) = -4096;
        }

        if (v52.i8[4])
        {
          *v51 = -4096;
        }

        v46 += 2;
        v51 += 2;
      }

      while (v49 != v46);
    }

    *(this + 202) = 0;
  }

LABEL_79:
  *(this + 205) = *(this + 204);
  *(this + 208) = *(this + 207);
  *(this + 105) = 0u;
  *(this + 430) = 0;
  *(this + 198) = 0;
  *(this + 199) = 0x10000;
  std::unique_ptr<llvm::CodeViewContext>::reset[abi:nn200100](this + 22, 0);
  if (*(this + 441))
  {
    v53 = *(this + 440);
    if (v53)
    {
      v54 = 0;
      v55 = 8 * v53;
      do
      {
        v56 = *(this + 219);
        v57 = *(v56 + v54);
        if (v57 != -8 && v57 != 0)
        {
          MEMORY[0x277C69E30](v57, 8);
        }

        *(v56 + v54) = 0;
        v54 += 8;
      }

      while (v55 != v54);
    }

    *(this + 1764) = 0;
  }

  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 223));
  *(this + 222) = this + 1784;
  *(this + 1784) = 0u;
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 229));
  *(this + 228) = this + 1832;
  *(this + 1832) = 0u;
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 226));
  *(this + 225) = this + 1808;
  *(this + 113) = 0u;
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 232));
  *(this + 231) = this + 1856;
  *(this + 116) = 0u;
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 235));
  *(this + 234) = this + 1880;
  *(this + 1880) = 0u;
  if (*(this + 477))
  {
    v59 = *(this + 476);
    if (v59)
    {
      v60 = 0;
      v61 = 8 * v59;
      do
      {
        v62 = *(this + 237);
        v63 = *(v62 + v60);
        if (v63 != -8 && v63 != 0)
        {
          MEMORY[0x277C69E30](v63, 8);
        }

        *(v62 + v60) = 0;
        v60 += 8;
      }

      while (v61 != v60);
    }

    *(this + 1908) = 0;
  }

  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 262));
  *(this + 261) = this + 2096;
  *(this + 131) = 0u;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::clear(this + 528);
  if (*(this + 319))
  {
    v65 = *(this + 318);
    if (v65)
    {
      v66 = 0;
      v67 = 8 * v65;
      do
      {
        v68 = *(this + 158);
        v69 = *(v68 + v66);
        if (v69 != -8 && v69 != 0)
        {
          MEMORY[0x277C69E30](v69, 8);
        }

        *(v68 + v66) = 0;
        v66 += 8;
      }

      while (v67 != v66);
    }

    *(this + 1276) = 0;
  }

  *(this + 1715) = 1;
  *(this + 800) = 0;
  *(this + 401) = 0;
  *(this + 2056) = 0;
LABEL_110:
  MEMORY[0x277C69E30](*(this + 264), 8);
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 262));
  if (*(this + 519))
  {
    v71 = *(this + 518);
    if (v71)
    {
      v72 = 0;
      v73 = 8 * v71;
      do
      {
        v74 = *(*(this + 258) + v72);
        if (v74 != -8 && v74 != 0)
        {
          llvm::StringMapEntry<llvm::MCAsmMacro>::Destroy<llvm::MallocAllocator>(v74);
        }

        v72 += 8;
      }

      while (v73 != v72);
    }
  }

  free(*(this + 258));
  llvm::SpecificBumpPtrAllocator<llvm::MCSubtargetInfo>::DestroyAll(this + 1944);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 1944);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 1920);
  if (*(this + 477))
  {
    v76 = *(this + 476);
    if (v76)
    {
      v77 = 0;
      v78 = 8 * v76;
      do
      {
        v79 = *(*(this + 237) + v77);
        if (v79 != -8 && v79 != 0)
        {
          MEMORY[0x277C69E30](v79, 8);
        }

        v77 += 8;
      }

      while (v78 != v77);
    }
  }

  free(*(this + 237));
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 235));
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 232));
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 229));
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 226));
  std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(this + 223));
  if (*(this + 441))
  {
    v81 = *(this + 440);
    if (v81)
    {
      v82 = 0;
      v83 = 8 * v81;
      do
      {
        v84 = *(*(this + 219) + v82);
        if (v84 != -8 && v84 != 0)
        {
          MEMORY[0x277C69E30](v84, 8);
        }

        v82 += 8;
      }

      while (v83 != v82);
    }
  }

  free(*(this + 219));
  std::__tree<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::__map_value_compare<llvm::MCSymbol *,std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::less<llvm::MCSymbol *>,true>,std::allocator<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>>>::destroy(*(this + 217));
  v86 = *(this + 207);
  if (v86)
  {
    *(this + 208) = v86;
    operator delete(v86);
  }

  v87 = *(this + 204);
  if (v87)
  {
    *(this + 205) = v87;
    operator delete(v87);
  }

  MEMORY[0x277C69E30](*(this + 201), 8);
  std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::destroy(*(this + 196));
  if (*(this + 1559) < 0)
  {
    operator delete(*(this + 192));
  }

  std::__tree<std::__value_type<std::string,std::string const>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string const>,std::greater<void>,true>,std::allocator<std::__value_type<std::string,std::string const>>>::destroy(*(this + 190));
  v88 = *(this + 170);
  if (v88 != this + 1384)
  {
    free(v88);
  }

  v89 = *(this + 168);
  *(this + 168) = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  if (*(this + 1343) < 0)
  {
    operator delete(*(this + 165));
  }

  MEMORY[0x277C69E30](*(this + 161), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 1264);
  free(*(this + 154));
  free(*(this + 150));
  MEMORY[0x277C69E30](*(this + 147), 8);
  free(*(this + 143));
  llvm::SpecificBumpPtrAllocator<llvm::MCInst>::DestroyAll(this + 1048);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 1048);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionXCOFF>::DestroyAll(this + 952);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 952);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionWasm>::DestroyAll(this + 856);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 856);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionDXContainer>::DestroyAll(this + 760);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 760);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionGOFF>::DestroyAll(this + 664);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 664);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionCOFF>::DestroyAll(this + 568);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 568);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionELF>::DestroyAll(this + 472);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 472);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionDXContainer>::DestroyAll(this + 376);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 376);
  llvm::SpecificBumpPtrAllocator<llvm::MCSectionCOFF>::DestroyAll(this + 280);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 280);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 184);
  std::unique_ptr<llvm::CodeViewContext>::reset[abi:nn200100](this + 22, 0);
  std::__function::__value_func<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::~__value_func[abi:nn200100](this + 112);
  v90 = *(this + 11);
  if (v90)
  {
    *(this + 12) = v90;
    operator delete(v90);
  }

  std::unique_ptr<llvm::SourceMgr>::reset[abi:nn200100](this + 10);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v91 = *MEMORY[0x277D85DE8];
}

llvm::SourceMgr *std::unique_ptr<llvm::SourceMgr>::reset[abi:nn200100](llvm::SourceMgr **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    llvm::SourceMgr::~SourceMgr(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSectionCOFF>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 248;
      while (v10 <= v8)
      {
        llvm::MCSection::~MCSection(v9);
        v10 = (v11 + 496);
        v9 = (v11 + 248);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = *v13 + v13[1];
      v17 = v15 + 248;
      while (v17 <= v16)
      {
        llvm::MCSection::~MCSection(v15);
        v17 = (v18 + 496);
        v15 = (v18 + 248);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSectionDXContainer>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 224;
      while (v10 <= v8)
      {
        llvm::MCSection::~MCSection(v9);
        v10 = (v11 + 448);
        v9 = (v11 + 224);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = *v13 + v13[1];
      v17 = v15 + 224;
      while (v17 <= v16)
      {
        llvm::MCSection::~MCSection(v15);
        v17 = (v18 + 448);
        v15 = (v18 + 224);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSectionELF>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 256;
      while (v10 <= v8)
      {
        llvm::MCSection::~MCSection(v9);
        v10 = (v11 + 512);
        v9 = (v11 + 256);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = *v13 + v13[1];
      v17 = v15 + 256;
      while (v17 <= v16)
      {
        llvm::MCSection::~MCSection(v15);
        v17 = (v18 + 512);
        v15 = (v18 + 256);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSectionGOFF>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 240;
      while (v10 <= v8)
      {
        llvm::MCSection::~MCSection(v9);
        v10 = (v11 + 480);
        v9 = (v11 + 240);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = *v13 + v13[1];
      v17 = v15 + 240;
      while (v17 <= v16)
      {
        llvm::MCSection::~MCSection(v15);
        v17 = (v18 + 480);
        v15 = (v18 + 240);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSectionWasm>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 264;
      while (v10 <= v8)
      {
        llvm::MCSection::~MCSection(v9);
        v10 = (v11 + 528);
        v9 = (v11 + 264);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = *v13 + v13[1];
      v17 = v15 + 264;
      while (v17 <= v16)
      {
        llvm::MCSection::~MCSection(v15);
        v17 = (v18 + 528);
        v15 = (v18 + 264);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSectionXCOFF>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 272;
      while (v10 <= v8)
      {
        llvm::MCSection::~MCSection(v9);
        v10 = (v11 + 544);
        v9 = (v11 + 272);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = *v13 + v13[1];
      v17 = v15 + 272;
      while (v17 <= v16)
      {
        llvm::MCSection::~MCSection(v15);
        v17 = (v18 + 544);
        v15 = (v18 + 272);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCInst>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 192; i <= v8; i += 192)
      {
        v10 = *(i - 176);
        if ((i - 160) != v10)
        {
          free(v10);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(a1 + 64);
    v13 = &v12[2 * v11];
    do
    {
      v14 = *v12 + v12[1];
      for (j = ((*v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 192; j <= v14; j += 192)
      {
        v16 = *(j - 176);
        if ((j - 160) != v16)
        {
          free(v16);
        }
      }

      v12 += 2;
    }

    while (v12 != v13);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

uint64_t llvm::SpecificBumpPtrAllocator<llvm::MCSubtargetInfo>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v9 + 328 <= v8)
      {
        v10 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
        do
        {
          (**v10)(v10);
          v11 = v10 + 82;
          v10 += 41;
          v9 += 328;
        }

        while (v11 <= v8);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 64);
    v14 = &v13[2 * v12];
    do
    {
      v15 = (*v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = *v13 + v13[1];
      if (v15 + 328 <= v16)
      {
        v17 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        do
        {
          (**v17)(v17);
          v18 = v17 + 82;
          v17 += 41;
          v15 += 328;
        }

        while (v18 <= v16);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

llvm::CodeViewContext *std::unique_ptr<llvm::CodeViewContext>::reset[abi:nn200100](llvm::CodeViewContext **a1, llvm::CodeViewContext *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::CodeViewContext::~CodeViewContext(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

unint64_t llvm::MCContext::getOrCreateSymbol(llvm::MCContext *this, const llvm::Twine *a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_2750C1290;
  v3 = llvm::Twine::toStringRef(a2, &v11);
  v5 = v4;
  v6 = llvm::StringMap<llvm::MCSymbol *,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace<>(this + 1144, v3, v4);
  v7 = *v6;
  Symbol = *(*v6 + 8);
  if (!Symbol)
  {
    Symbol = llvm::MCContext::createSymbol(this, v3, v5, 0, 0);
    *(v7 + 8) = Symbol;
  }

  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return Symbol;
}

unint64_t llvm::MCContext::createSymbol(uint64_t a1, _BYTE *a2, unint64_t a3, int a4, int a5)
{
  v31[16] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if ((*(a1 + 1716) & 1) == 0)
    {
      v13 = *MEMORY[0x277D85DE8];

      return llvm::MCContext::createSymbolImpl(a1, 0, 1u);
    }
  }

  else
  {
    if (*(a1 + 1715) != 1 || (v10 = *(a1 + 144), v11 = *(v10 + 96), a3 < v11))
    {
      v9 = 0;
      goto LABEL_7;
    }

    if (v11)
    {
      v9 = memcmp(a2, *(v10 + 88), v11) == 0;
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_7:
  v29 = v31;
  v30 = xmmword_2750C1290;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v29, a2, &a2[a3]);
  v12 = *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((a1 + 1264), a2, a3);
  if (a4)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v22 = v29;
    v23 = v30;
    LOBYTE(v24[0]) = 1;
    v16 = llvm::StringMap<BOOL,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace<BOOL>(a1 + 1200, v29, v30, v24);
    v18 = v17;
    v19 = *v16;
    if ((v18 & 1) != 0 || (*(v19 + 8) & 1) == 0)
    {
      break;
    }

LABEL_14:
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v29, a3);
    LODWORD(v23) = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    memset(v24, 0, sizeof(v24));
    v22 = &unk_2883EB968;
    v28 = &v29;
    llvm::raw_ostream::SetUnbuffered(&v22);
    v15 = *(v12 + 8);
    *(v12 + 8) = v15 + 1;
    write_unsigned<unsigned long>(&v22, v15, 0, 0, 0);
    llvm::raw_ostream::~raw_ostream(&v22);
  }

  *(v19 + 8) = 1;
  SymbolImpl = llvm::MCContext::createSymbolImpl(a1, v19, v9);
  if (v29 != v31)
  {
    free(v29);
  }

  v21 = *MEMORY[0x277D85DE8];
  return SymbolImpl;
}

unint64_t llvm::MCContext::createSymbolImpl(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1 <= 2)
  {
    switch(v6)
    {
      case 0:
        v7 = a2 != 0;
        if (a2)
        {
          v14 = 40;
        }

        else
        {
          v14 = 32;
        }

        v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v14, 3) + 8 * v7;
        v10 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3 | 0x200;
        goto LABEL_26;
      case 1:
        v21 = a2 != 0;
        if (a2)
        {
          v22 = 48;
        }

        else
        {
          v22 = 40;
        }

        v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v22, 3) + 8 * v21;
        v23 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3 | 0x100;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *v9 = 4 * v21;
        *(v9 + 8) = v23;
        if (a2)
        {
          *(v9 - 8) = a2;
        }

        *(v9 + 32) = 0;
        goto LABEL_87;
      case 2:
        v7 = a2 != 0;
        if (a2)
        {
          v8 = 40;
        }

        else
        {
          v8 = 32;
        }

        v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v8, 3) + 8 * v7;
        v10 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3 | 0x180;
        goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v18 = a2 != 0;
      if (a2)
      {
        v19 = 192;
      }

      else
      {
        v19 = 184;
      }

      v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v19, 3) + 8 * v18;
      v20 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3 | 0x280;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *v9 = 4 * v18;
      *(v9 + 8) = v20;
      if (a2)
      {
        *(v9 - 8) = a2;
      }

      *(v9 + 32) = 0;
      *(v9 + 36) = 0;
      *(v9 + 48) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v9 + 128) = 0;
      *(v9 + 130) = 0;
      *(v9 + 136) = 0;
      *(v9 + 168) = 0;
      *(v9 + 176) = 0;
      *(v9 + 40) = 0;
      *(v9 + 44) = 0;
      goto LABEL_87;
    }

    if (v6 == 6)
    {
      if (!a2)
      {
        v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, 72, 3);
        v24 = *(v9 + 8) & 0xFFFF0000FFF80000;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *v9 = 0;
        *(v9 + 8) = v24 | a3 | 0x300;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        goto LABEL_87;
      }

      v12 = (a2 + 16);
      v11 = *a2;
      if (*a2 >= 0xBuLL)
      {
        if (*v12 == 0x656D616E65525F2ELL && *(a2 + 19) == 0x2E2E64656D616E65)
        {
          goto LABEL_56;
        }
      }

      else if (v11 != 10)
      {
        goto LABEL_57;
      }

      if (*v12 != 0x64656D616E65525FLL || *(a2 + 24) != 11822)
      {
LABEL_57:
        if ((*(**(a1 + 144) + 56))(*(a1 + 144), a2 + 16, v11))
        {
          v27 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, 80, 3);
          *(v27 + 16) = *(v27 + 16) & 0xFFFF0000FFF80000 | a3 | 0x300;
          *(v27 + 24) = 0;
          *(v27 + 32) = 0;
          *v27 = a2;
          *(v27 + 40) = 0;
          *(v27 + 48) = 0;
          *(v27 + 56) = 0;
          *(v27 + 64) = 0;
          *(v27 + 72) = 0;
          *(v27 + 8) = 4;
          v9 = v27 + 8;
        }

        else
        {
          __src = v56;
          v55 = xmmword_2750C1290;
          llvm::SmallVectorImpl<char>::append<char const*,void>(&__src, (a2 + 16), v12 + v11);
          if (v55)
          {
            v28 = *__src == 46;
            if (*__src == 46)
            {
              v29 = "._Renamed..";
            }

            else
            {
              v29 = "_Renamed..";
            }
          }

          else
          {
            v28 = 0;
            v29 = "_Renamed..";
          }

          v30 = strlen(v29);
          v51 = v53;
          v52 = xmmword_2750C1290;
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v51, v29, &v29[v30]);
          v31 = v55;
          if (v55)
          {
            v32 = 0;
            do
            {
              if (!(*(**(a1 + 144) + 48))(*(a1 + 144), *(__src + v32)) || *(__src + v32) == 95)
              {
                LODWORD(v46) = 0;
                v48 = 0;
                v49 = 1;
                memset(v47, 0, 25);
                v45 = &unk_2883EB968;
                v50 = &v51;
                llvm::raw_ostream::SetUnbuffered(&v45);
                llvm::write_hex(&v45, *(__src + v32), 1, 0, 0);
                llvm::raw_ostream::~raw_ostream(&v45);
                *(__src + v32) = 95;
              }

              ++v32;
              v31 = v55;
            }

            while (v32 < v55);
          }

          if (v28)
          {
            v33 = v31 - 1;
            if (v31 - (v31 != 0) < v31 - 1)
            {
              v33 = v31 - (v31 != 0);
            }

            if (v31)
            {
              v34 = __src + 1;
            }

            else
            {
              v34 = __src;
            }

            v35 = __src + (v31 != 0) + v33;
          }

          else
          {
            v34 = __src;
            v35 = __src + v31;
          }

          llvm::SmallVectorImpl<char>::append<char const*,void>(&v51, v34, v35);
          v45 = v51;
          v46 = v52;
          v47[0] = 1;
          v36 = llvm::StringMap<BOOL,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace<BOOL>(a1 + 1200, v51, v52, v47);
          v37 = *v36;
          *(v37 + 8) = 1;
          if (v37)
          {
            v38 = 80;
          }

          else
          {
            v38 = 72;
          }

          v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v38, 3) + 8 * (v37 != 0);
          v39 = *v36;
          v40 = *v36 != 0;
          v41 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3 | 0x300;
          *(v9 + 16) = 0;
          *(v9 + 24) = 0;
          *v9 = 4 * v40;
          *(v9 + 8) = v41;
          if (v39)
          {
            *(v9 - 8) = v39;
          }

          *(v9 + 32) = 0;
          *(v9 + 40) = 0;
          *(v9 + 48) = 0;
          *(v9 + 56) = 0;
          *(v9 + 64) = 0;
          *(v9 + 56) = llvm::MCSymbolXCOFF::getUnqualifiedName(v12, v11);
          *(v9 + 64) = v42;
          if (v51 != v53)
          {
            free(v51);
          }

          if (__src != v56)
          {
            free(__src);
          }
        }

        goto LABEL_87;
      }

LABEL_56:
      __src = "invalid symbol name from source";
      v56[4] = 259;
      llvm::MCContext::reportError(a1, 0, &__src);
      goto LABEL_57;
    }

LABEL_18:
    v7 = a2 != 0;
    if (a2)
    {
      v13 = 40;
    }

    else
    {
      v13 = 32;
    }

    v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v13, 3) + 8 * v7;
    v10 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3;
LABEL_26:
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *v9 = 4 * v7;
    *(v9 + 8) = v10;
    if (a2)
    {
      *(v9 - 8) = a2;
    }

    goto LABEL_87;
  }

  if (v6 != 3)
  {
    goto LABEL_18;
  }

  v15 = a2 != 0;
  if (a2)
  {
    v16 = 48;
  }

  else
  {
    v16 = 40;
  }

  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 184, v16, 3) + 8 * v15;
  v17 = *(v9 + 8) & 0xFFFF0000FFF80000 | a3 | 0x80;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = 4 * v15;
  *(v9 + 8) = v17;
  if (a2)
  {
    *(v9 - 8) = a2;
  }

  *(v9 + 32) = 0;
LABEL_87:
  v43 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t llvm::MCContext::createTempSymbol(llvm::MCContext *this, const llvm::Twine *a2, int a3)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v17 = &v18;
  v18 = v20;
  v19 = xmmword_2750C1290;
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = &unk_2883EB968;
  llvm::raw_ostream::SetUnbuffered(&v9);
  llvm::raw_ostream::operator<<(&v9, *(*(this + 18) + 88), *(*(this + 18) + 96));
  llvm::Twine::print(a2, &v9);
  llvm::raw_ostream::~raw_ostream(&v9);
  Symbol = llvm::MCContext::createSymbol(this, v18, v19, a3, 1);
  if (v18 != v20)
  {
    free(v18);
  }

  v7 = *MEMORY[0x277D85DE8];
  return Symbol;
}

unint64_t llvm::MCContext::createNamedTempSymbol(llvm::MCContext *this, const llvm::Twine *a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v15 = &v16;
  v16 = v18;
  v17 = xmmword_2750C1290;
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = &unk_2883EB968;
  llvm::raw_ostream::SetUnbuffered(&v7);
  llvm::raw_ostream::operator<<(&v7, *(*(this + 18) + 88), *(*(this + 18) + 96));
  llvm::Twine::print(a2, &v7);
  llvm::raw_ostream::~raw_ostream(&v7);
  Symbol = llvm::MCContext::createSymbol(this, v16, v17, 1, 0);
  if (v16 != v18)
  {
    free(v16);
  }

  v5 = *MEMORY[0x277D85DE8];
  return Symbol;
}

uint64_t llvm::MCContext::NextInstance(llvm::MCContext *this, int a2)
{
  v7 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::FindAndConstruct(this + 161, &v7);
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = (*v4 + 1);
  }

  else
  {
    v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(this + 184, 4, 3);
    *v4 = 0;
    *(v3 + 1) = v4;
    v5 = 1;
  }

  *v4 = v5;
  return v5;
}

uint64_t llvm::MCContext::GetInstance(llvm::MCContext *this, int a2)
{
  v8 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::FindAndConstruct(this + 161, &v8);
  v4 = *(v3 + 1);
  if (v4)
  {
    return *v4;
  }

  v6 = v3;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(this + 184, 4, 3);
  result = 0;
  *v7 = 0;
  *(v6 + 1) = v7;
  return result;
}

unint64_t llvm::MCContext::getOrCreateDirectionalLocalSymbol(llvm::MCContext *this, unsigned int a2, uint64_t a3)
{
  v6[0] = a2 | (a3 << 32);
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::FindAndConstruct(this + 147, v6);
  result = *(v4 + 1);
  if (!result)
  {
    v6[0] = "tmp";
    v7 = 259;
    result = llvm::MCContext::createNamedTempSymbol(this, v6);
    *(v4 + 1) = result;
  }

  return result;
}

unint64_t llvm::MCContext::createDirectionalLocalSymbol(llvm::MCContext *this, unsigned int a2)
{
  Instance = llvm::MCContext::NextInstance(this, a2);

  return llvm::MCContext::getOrCreateDirectionalLocalSymbol(this, a2, Instance);
}

unint64_t llvm::MCContext::getDirectionalLocalSymbol(llvm::MCContext *this, unsigned int a2, int a3)
{
  v5 = llvm::MCContext::GetInstance(this, a2) + (a3 ^ 1);

  return llvm::MCContext::getOrCreateDirectionalLocalSymbol(this, a2, v5);
}

uint64_t llvm::MCContext::lookupSymbol(llvm::MCContext *this, const llvm::Twine *a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C1290;
  v3 = llvm::Twine::toStringRef(a2, &v9);
  Key = llvm::StringMapImpl::FindKey(this + 143, v3, v4);
  if (Key == -1 || Key == *(this + 288))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(*(this + 143) + 8 * Key) + 8);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t llvm::MCContext::reportError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *(a1 + 2056) = 1;
  v5 = a2;
  v6[0] = &unk_2883F0330;
  v6[1] = &v5;
  v6[2] = a3;
  v6[3] = v6;
  llvm::MCContext::reportCommon(a1, a2, v6);
  result = std::__function::__value_func<void ()(llvm::SMDiagnostic &,llvm::SourceMgr const*)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MCSymbolXCOFF::getUnqualifiedName(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  if (*(a1 + a2 - 1) == 93)
  {
    v5 = 91;
    llvm::StringRef::rfind(v4, &v5, 1);
  }

  return a1;
}

unint64_t llvm::MCContext::getMachOSection(uint64_t a1, uint64_t a2, unint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5, int a6, int a7, int a8, llvm::formatv_object_base *a9)
{
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = 44;
  v32 = 1797;
  v33[0] = v31;
  v33[2] = a4;
  v33[3] = a5;
  v34 = 1282;
  llvm::Twine::str(v33, __p);
  if (v36 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v36 >= 0)
  {
    v17 = v36;
  }

  else
  {
    v17 = __p[1];
  }

  v19 = llvm::StringMap<llvm::MCSectionMachO *,llvm::MallocAllocator>::try_emplace<>((a1 + 1752), v16, v17);
  v20 = v18;
  if (v36 < 0)
  {
    operator delete(__p[0]);
    if ((v20 & 1) == 0)
    {
      return (*v19)[1];
    }
  }

  else if ((v18 & 1) == 0)
  {
    return (*v19)[1];
  }

  v30 = a6;
  if (a9)
  {
    v21 = 1;
    HIBYTE(v34) = 1;
    if (*a9)
    {
      v33[0] = a9;
      v21 = 3;
    }

    v22 = a7;
    LOBYTE(v34) = v21;
    TempSymbol = llvm::MCContext::createTempSymbol(a1, v33, 0);
  }

  else
  {
    v22 = a7;
    TempSymbol = 0;
  }

  v24 = **v19;
  if (v24 >= v24 - a5)
  {
    v25 = v24 - a5;
  }

  else
  {
    v25 = **v19;
  }

  v26 = *v19 + v25;
  v27 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 568, 248, 3);
  llvm::MCSectionMachO::MCSectionMachO(v27, a2, a3, (v26 + 16), v24 - v25, v30, v22, a8, TempSymbol);
  (*v19)[1] = v28;
  return (*v19)[1];
}

unint64_t **llvm::StringMap<llvm::MCSectionMachO *,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v10 = operator new(a3 + 17, 8uLL);
  v11 = v10;
  v12 = (v10 + 2);
  if (a3)
  {
    memcpy(v10 + 2, a2, a3);
  }

  v12[a3] = 0;
  *v11 = a3;
  v11[1] = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::MCContext::getELFSection(llvm::MCContext *a1, llvm::formatv_object_base **a2, int a3, int a4, int a5, llvm::formatv_object_base **this, int a7, int a8, _BYTE *a9)
{
  if (*(this + 32) < 2u)
  {
    goto LABEL_9;
  }

  llvm::Twine::str(this, __p);
  if (v21 >= 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = __p[1];
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    operator delete(__p[0]);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_9:
    Symbol = 0;
    return llvm::MCContext::getELFSection(a1, a2, a3, a4, a5, Symbol, a7, a8, a9);
  }

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_7:
  Symbol = llvm::MCContext::getOrCreateSymbol(a1, this);
  return llvm::MCContext::getELFSection(a1, a2, a3, a4, a5, Symbol, a7, a8, a9);
}

uint64_t llvm::MCContext::getELFSection(uint64_t a1, llvm::formatv_object_base **this, int a3, int a4, int a5, _BYTE *a6, int a7, int a8, _BYTE *a9)
{
  if (a6)
  {
    if ((*a6 & 4) != 0)
    {
      v13 = *(a6 - 1);
      v14 = *v13;
      v11 = v13 + 2;
      v12 = v14;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = &str_25;
  }

  llvm::Twine::str(this, v26);
  if (v27 >= 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v26[0];
  }

  if (v27 >= 0)
  {
    v16 = v27;
  }

  else
  {
    v16 = v26[1];
  }

  if (a9)
  {
    if ((*a9 & 4) != 0)
    {
      v19 = *(a9 - 1);
      v20 = *v19;
      v17 = v19 + 2;
      v18 = v20;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v17 = &str_25;
  }

  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29) = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  *(&__dst + v16) = 0;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  *&v31 = v17;
  *(&v31 + 1) = v18;
  v32 = a8;
  *__p = __dst;
  v34 = v29;
  v37 = a8;
  v35 = v30;
  v36 = v31;
  v38 = 0;
  v21 = (a1 + 1784);
  v22 = *(a1 + 1784);
  if (!v22)
  {
    goto LABEL_29;
  }

  while (1)
  {
    while (1)
    {
      v23 = v22;
      if (!llvm::MCContext::ELFSectionKey::operator<(__p, v22 + 4))
      {
        break;
      }

      v22 = *v23;
      v21 = v23;
      if (!*v23)
      {
        goto LABEL_29;
      }
    }

    if (!llvm::MCContext::ELFSectionKey::operator<(v23 + 4, __p))
    {
      break;
    }

    v21 = (v23 + 1);
    v22 = v23[1];
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  v24 = *v21;
  if (!*v21)
  {
LABEL_29:
    operator new();
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  return *(v24 + 96);
}

void llvm::MCContext::getGOFFSection(uint64_t a1, void *__src, size_t __len, int a4, uint64_t a5, uint64_t a6)
{
  if (__src)
  {
    std::string::basic_string[abi:nn200100](__p, __src, __len);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
  }

  v17 = __p;
  v12 = std::__tree<std::__value_type<std::string,llvm::MCSectionGOFF *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::MCSectionGOFF *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::MCSectionGOFF *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1824, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (!*(v12 + 56))
  {
    v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 664, 240, 3);
    llvm::MCSection::MCSection(v13, 2, __src, __len, a4, 0);
    *v14 = &unk_2883F0288;
    v14[28] = a5;
    v14[29] = a6;
    *(v12 + 56) = v14;
  }
}

uint64_t llvm::MCContext::getCOFFSection(llvm::MCContext *this, const void *a2, size_t a3, int a4, int a5, std::string::size_type a6, std::string::size_type a7, unsigned int a8, unsigned int a9, uint64_t a10)
{
  v11 = a6;
  if (a7)
  {
    WORD4(v27) = 261;
    v26.__r_.__value_.__r.__words[0] = a6;
    v26.__r_.__value_.__l.__size_ = a7;
    Symbol = llvm::MCContext::getOrCreateSymbol(this, &v26);
    if ((*Symbol & 4) != 0)
    {
      v17 = *(Symbol - 1);
      v18 = *v17;
      v11 = v17 + 2;
      v16 = v18;
    }

    else
    {
      v11 = 0;
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  __dst.__r_.__value_.__s.__data_[a3] = 0;
  *&v31 = v11;
  *(&v31 + 1) = v16;
  v32 = __PAIR64__(a9, a8);
  v19 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = __dst;
  }

  v27 = v31;
  v28 = v32;
  v29 = 0;
  v20 = (this + 1808);
  v21 = *(this + 226);
  if (!v21)
  {
    goto LABEL_21;
  }

  while (1)
  {
    while (1)
    {
      v22 = v21;
      if (!llvm::MCContext::COFFSectionKey::operator<(&v26.__r_.__value_.__l.__data_, v21 + 4))
      {
        break;
      }

      v21 = *v22;
      v20 = v22;
      if (!*v22)
      {
        goto LABEL_21;
      }
    }

    if (!llvm::MCContext::COFFSectionKey::operator<(v22 + 4, &v26.__r_.__value_.__l.__data_))
    {
      break;
    }

    v20 = (v22 + 1);
    v21 = v22[1];
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  v24 = *v20;
  if (!*v20)
  {
LABEL_21:
    operator new();
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v23 = *(v24 + 80);
  if (v19 < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v23;
}

uint64_t llvm::MCContext::getWasmSection(llvm::MCContext *a1, llvm::formatv_object_base **a2, unsigned int a3, uint64_t a4, llvm::formatv_object_base **this, int a6)
{
  if (*(this + 32) < 2u)
  {
    goto LABEL_9;
  }

  llvm::Twine::str(this, __p);
  if (v16 >= 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = __p[1];
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    operator delete(__p[0]);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_9:
    Symbol = 0;
    return llvm::MCContext::getWasmSection(a1, a2, a3, a4, Symbol, a6);
  }

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  Symbol = llvm::MCContext::getOrCreateSymbol(a1, this);
  Symbol[42] = 1;
  return llvm::MCContext::getWasmSection(a1, a2, a3, a4, Symbol, a6);
}

uint64_t llvm::MCContext::getWasmSection(uint64_t a1, llvm::formatv_object_base **this, uint64_t a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (a5)
  {
    if ((*a5 & 4) != 0)
    {
      v10 = *(a5 - 1);
      v11 = *v10;
      v8 = v10 + 2;
      v9 = v11;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = &str_25;
  }

  llvm::Twine::str(this, v19);
  if (v20 >= 0)
  {
    v12 = v19;
  }

  else
  {
    v12 = v19[0];
  }

  if (v20 >= 0)
  {
    v13 = v20;
  }

  else
  {
    v13 = v19[1];
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v22) = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v13) = 0;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  v24 = a6;
  *__p = __dst;
  v26 = v22;
  v28 = a6;
  v27 = v23;
  v29 = 0;
  v14 = (a1 + 1856);
  v15 = *(a1 + 1856);
  if (!v15)
  {
    goto LABEL_24;
  }

  while (1)
  {
    while (1)
    {
      v16 = v15;
      if (!llvm::MCContext::WasmSectionKey::operator<(__p, v15 + 4))
      {
        break;
      }

      v15 = *v16;
      v14 = v16;
      if (!*v16)
      {
        goto LABEL_24;
      }
    }

    if (!llvm::MCContext::WasmSectionKey::operator<(v16 + 4, __p))
    {
      break;
    }

    v14 = (v16 + 1);
    v15 = v16[1];
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  v18 = *v14;
  if (!*v14)
  {
LABEL_24:
    operator new();
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return *(v18 + 80);
}