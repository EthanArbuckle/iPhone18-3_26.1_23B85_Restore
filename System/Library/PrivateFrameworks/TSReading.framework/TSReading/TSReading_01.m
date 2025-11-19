void sub_26C70751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  EQKit::ILayout::~ILayout(v41);
  EQKit::ILayout::~ILayout(&a41);
  EQKit::ILayout::~ILayout((v42 - 200));
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutSubsuperscript(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = EQKit::Layout::Schemata::subsuperscriptSchemata(a2);
  v6 = [v5 schemataKernel];
  v7 = [v5 schemataSubscript];
  v8 = [v5 schemataSuperscript];

  EQKitLayoutManager::layoutSubsuperscript(this, v6, v7, v8, a3);
}

uint64_t EQKitLayoutManager::layoutOperator@<X0>(id *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v6 = EQKitLayoutManager::layoutContext(this);
  v7 = EQKit::Layout::Schemata::tokenSchemata(a2);
  v8 = (*(**(v6 + 80) + 72))(*(v6 + 80), [v7 schemataTokenString], v6 + 8);
  v9 = [[EQKitStringBox alloc] initWithAttributedString:v8 cgColor:*(v6 + 96)];
  v10 = [v7 schemataUnicharOrNul];
  v11 = 0.0;
  if (v10)
  {
    v12 = [EQKitLayoutManager::currentNode(this) operatorCore];
    if (EQKitLayoutManager::isOperatorSymmetric(this, v12))
    {
      if (((*(**(v6 + 80) + 128))(*(v6 + 80), v10, v6 + 8) & 1) == 0)
      {
        [(EQKitStringBox *)v9 depth];
        v14 = v13;
        [(EQKitStringBox *)v9 height];
        v16 = v15;
        [(EQKitStringBox *)v9 depth];
        v18 = v14 + (v16 + v17) * -0.5;
        if ((*(v6 + 104) & 2) != 0)
        {
          v19 = *(v6 + 120);
        }

        else
        {
          v19 = EQKitLayoutContext::pComputeMathAxis(v6);
        }

        v11 = v18 + v19;
      }
    }
  }

  v20 = v11 + EQKitLayoutManager::lengthForCharacterProperty(this, 3, v10, 0.0);
  if (v20 == 0.0)
  {
    v21 = v9;
  }

  else
  {
    v21 = [[EQKitVShift alloc] initWithBox:v9 offset:v20];
  }

  EQKit::ILayout::ILayout(a3, &v21->super);
  v22 = [EQKitLayoutManager::currentNode(this) operatorCore];
  v23 = [this[74] operatorDictionary];
  v24 = [v22 operatorId];
  v25 = EQKitLayoutManager::operatorForm(this, v22);
  v26 = EQKit::Config::Operator::Dictionary::lookup(v23, v24, v25);
  if (v26 && (v26[6] & 0x40) != 0)
  {
    [(EQKitVShift *)v21 width];
    EQKit::ILayoutOffset::ILayoutOffset(v30, &v21->super, v27 * 0.5);
    EQKit::ILayout::setOffsetOfKind(a3, 1, v30);
    EQKit::ILayoutOffset::~ILayoutOffset(v30);
  }

  if ((*(**(v6 + 80) + 112))(*(v6 + 80), v10, v6 + 8))
  {
    v28 = 5;
  }

  else
  {
    v28 = 2;
  }

  return EQKit::ILayout::setVerticalContentClassification(a3, v28);
}

void sub_26C707918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::ILayoutOffset::~ILayoutOffset(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutIdentifier(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = EQKitLayoutManager::layoutContext(this);
  v6 = *(v5 + 80);
  v7 = [EQKit::Layout::Schemata::tokenSchemata(a2) schemataTokenString];
  v8 = (*(*v6 + 72))(v6, v7, v5 + 8);
  v9 = [[EQKitStringBox alloc] initWithAttributedString:v8 cgColor:*(v5 + 96)];
  v10 = EQKit::ILayout::ILayout(a3, &v9->super);
  EQKit::ILayout::setVerticalContentClassification(v10, 5);
  v11 = *(v5 + 20);
  if (v11 <= 0xD && ((1 << v11) & 0x3018) != 0)
  {
    *(a3 + 16) = *(a3 + 16) & 0xFF3F | 0x80;
  }
}

void EQKitLayoutManager::layoutNumber(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v6 = EQKitLayoutManager::layoutContext(this);
  v7 = *(v6 + 80);
  v8 = [EQKit::Layout::Schemata::tokenSchemata(a2) schemataTokenString];
  v9 = (*(*v7 + 72))(v7, v8, v6 + 8);
  v10 = [[EQKitStringBox alloc] initWithAttributedString:v9 cgColor:*(v6 + 96)];
  v11 = EQKit::ILayout::ILayout(a3, &v10->super);
  EQKit::ILayout::setVerticalContentClassification(v11, 5);
  EQKitLayoutManager::decimalPointOffsetInStringBox(this, v10);
  EQKit::ILayoutOffset::ILayoutOffset(v13, &v10->super, v12);
  EQKit::ILayout::setOffsetOfKind(a3, 2, v13);
  EQKit::ILayoutOffset::~ILayoutOffset(v13);
}

void sub_26C707B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::ILayoutOffset::~ILayoutOffset(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutUnderover(EQKit::Layout::Schemata *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, void *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  v7 = EQKit::Layout::Schemata::underoverSchemata(this);
  v8 = [v7 schemataBase];
  v9 = [v7 schemataUnder];
  v10 = [v7 schemataOver];
  v11 = EQKitLayoutManager::layoutContext(a2);
  EQKit::ILayout::ILayout(a5, 0);
  if ((*(v11 + 16) & 1) == 0 && EQKitLayoutManager::isEmbellishedOperatorWithMovableLimts(a2, v8))
  {
    EQKitLayoutManager::layoutSubsuperscript(a2, v8, v9, v10, &v143);
    EQKit::ILayout::operator=(a5, &v143);
    EQKit::ILayout::~ILayout(&v143);
    v12 = 0.0;
    goto LABEL_168;
  }

  LODWORD(v141[0]) = 0;
  LODWORD(v140[0]) = 0;
  if (v9)
  {
    v13 = *(a2 + 600);
    v143 = v9;
    LODWORD(v144) = 5;
    if ((EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v13, v13 + 8, &v143, v141) & 1) == 0)
    {
      v14 = *(a2 + 600);
      v143 = EQKitLayoutManager::currentNode(a2);
      LODWORD(v144) = 6;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v14, v14 + 8, &v143, v141);
    }
  }

  if (v10)
  {
    v15 = *(a2 + 600);
    v143 = v10;
    LODWORD(v144) = 5;
    if ((EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v15, v15 + 8, &v143, v140) & 1) == 0)
    {
      v16 = *(a2 + 600);
      v143 = EQKitLayoutManager::currentNode(a2);
      LODWORD(v144) = 5;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v16, v16 + 8, &v143, v140);
    }
  }

  if (LODWORD(v141[0]))
  {
    v111 = LODWORD(v141[0]) == 2;
  }

  else
  {
    v111 = EQKitLayoutManager::isEmbellishedOperatorWithAccent(a2, v9);
  }

  if (LODWORD(v140[0]))
  {
    v17 = LODWORD(v140[0]) == 2;
  }

  else
  {
    v17 = EQKitLayoutManager::isEmbellishedOperatorWithAccent(a2, v10);
  }

  v164[0] = 2;
  v18 = *(a2 + 600);
  v143 = EQKitLayoutManager::currentNode(a2);
  LODWORD(v144) = 1;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v18, v18 + 128, &v143, v164);
  if ([v8 isEmbellishedOperator])
  {
    isOperatorStretchy = EQKitLayoutManager::isOperatorStretchy(a2, [v8 operatorCore]);
  }

  else
  {
    isOperatorStretchy = 0;
  }

  if ([v9 isEmbellishedOperator])
  {
    v20 = EQKitLayoutManager::isOperatorStretchy(a2, [v9 operatorCore]);
  }

  else
  {
    v20 = 0;
  }

  if ([v10 isEmbellishedOperator])
  {
    v21 = EQKitLayoutManager::isOperatorStretchy(a2, [v10 operatorCore]);
    if (!isOperatorStretchy)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v21 = 0;
    if (!isOperatorStretchy)
    {
      goto LABEL_30;
    }
  }

  v22 = *(a2 + 488);
  isOperatorStretchy = !v22 || (v23 = *(*(a2 + 456) + 8 * ((v22 + *(a2 + 480) - 1) / 0x66uLL)) + 40 * ((v22 + *(a2 + 480) - 1) % 0x66uLL), *v23 != v8) || *(v23 + 8) != 2;
LABEL_30:
  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x5812000000;
  v146 = __Block_byref_object_copy_;
  v147 = __Block_byref_object_dispose_;
  v148 = &unk_26CAC6BB9;
  v149 = 0;
  v150 = 1;
  v151 = 0;
  v152 = 1;
  v153 = 0x4028000000000000;
  v154 = 0;
  cf = 0;
  EQKit::ILayout::ILayout(v141, 0);
  v24 = 0.0;
  if (!((v8 == 0) | isOperatorStretchy & 1))
  {
    v139[0] = MEMORY[0x277D85DD0];
    v139[1] = 3221225472;
    v139[2] = ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke;
    v139[3] = &unk_279D465D0;
    v139[8] = a2;
    v139[4] = v8;
    v139[5] = &v160;
    v139[6] = &v143;
    v139[7] = &v156;
    v25 = EQKitLayoutManager::layoutContext(a2);
    EQKitLayoutManager::layoutBox(a2, v8, 0, *(v25 + 16), 0, 0, v139, v140);
    EQKit::ILayout::operator=(v141, v140);
    EQKit::ILayout::~ILayout(v140);
    [v141[0] width];
    if (v26 >= 0.0)
    {
      [v141[0] width];
      v24 = v27;
    }
  }

  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  EQKit::ILayout::ILayout(v140, 0);
  if (!((v9 == 0) | v20 & 1))
  {
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_2;
    v132[3] = &unk_279D465F8;
    v133 = v111;
    v132[4] = v9;
    v132[5] = &v135;
    EQKitLayoutManager::layoutBox(a2, v9, v111 ^ 1, 0, 2, 0, v132, v134);
    EQKit::ILayout::operator=(v140, v134);
    EQKit::ILayout::~ILayout(v134);
    [v140[0] width];
    if (v24 <= v28)
    {
      [v140[0] width];
      v24 = v29;
    }
  }

  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  EQKit::ILayout::ILayout(v134, 0);
  if (!((v10 == 0) | v21 & 1))
  {
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_3;
    v121[3] = &unk_279D46620;
    v122 = v17;
    v121[4] = v10;
    v121[5] = &v128;
    v121[6] = &v124;
    v121[7] = a2;
    EQKitLayoutManager::layoutBox(a2, v10, v17 ^ 1, 0, 2, 0, v121, v123);
    EQKit::ILayout::operator=(v134, v123);
    EQKit::ILayout::~ILayout(v123);
    [v134[0] width];
    if (v24 <= v30)
    {
      [v134[0] width];
      v24 = v31;
    }
  }

  if (isOperatorStretchy)
  {
    v32 = [v8 operatorCore];
    v33 = EQKitLayoutManager::adjustStretchyWidth(a2, [v8 operatorCore], v24);
    EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(v123, v32, 1, 0.0, 0.0, v33);
    std::deque<EQKitLayoutStretchedOperator>::push_back((a2 + 448), v123);
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_4;
    v120[3] = &unk_279D465D0;
    v120[4] = v8;
    v120[5] = &v160;
    v120[6] = &v143;
    v120[7] = &v156;
    v120[8] = a2;
    v34 = EQKitLayoutManager::layoutContext(a2);
    EQKitLayoutManager::layoutBox(a2, v8, 0, *(v34 + 16), 0, 0, v120, v123);
    EQKit::ILayout::operator=(v141, v123);
    EQKit::ILayout::~ILayout(v123);
    --*(a2 + 488);
    std::deque<EQKitLayoutStretchedOperator>::__maybe_remove_back_spare[abi:nn200100]((a2 + 448), 1);
  }

  if (v20)
  {
    v35 = [v9 operatorCore];
    v36 = EQKitLayoutManager::adjustStretchyWidth(a2, [v9 operatorCore], v24);
    EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(v123, v35, 1, 0.0, 0.0, v36);
    std::deque<EQKitLayoutStretchedOperator>::push_back((a2 + 448), v123);
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_5;
    v118[3] = &unk_279D465F8;
    v119 = v111;
    v118[4] = v9;
    v118[5] = &v135;
    EQKitLayoutManager::layoutBox(a2, v9, v111 ^ 1, 0, 2, 0, v118, v123);
    EQKit::ILayout::operator=(v140, v123);
    EQKit::ILayout::~ILayout(v123);
    --*(a2 + 488);
    std::deque<EQKitLayoutStretchedOperator>::__maybe_remove_back_spare[abi:nn200100]((a2 + 448), 1);
  }

  if (v21)
  {
    v37 = [v10 operatorCore];
    v38 = EQKitLayoutManager::adjustStretchyWidth(a2, [v10 operatorCore], v24);
    EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(v123, v37, 1, 0.0, 0.0, v38);
    std::deque<EQKitLayoutStretchedOperator>::push_back((a2 + 448), v123);
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_6;
    v116[3] = &unk_279D46620;
    v117 = v17;
    v116[4] = v10;
    v116[5] = &v128;
    v116[6] = &v124;
    v116[7] = a2;
    EQKitLayoutManager::layoutBox(a2, v10, v17 ^ 1, 0, 2, 0, v116, v123);
    EQKit::ILayout::operator=(v134, v123);
    EQKit::ILayout::~ILayout(v123);
    --*(a2 + 488);
    std::deque<EQKitLayoutStretchedOperator>::__maybe_remove_back_spare[abi:nn200100]((a2 + 448), 1);
  }

  [v141[0] width];
  v40 = v39;
  if (v134[0])
  {
    [v134[0] width];
    if (v41 <= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    if (v17)
    {
      v43 = v40;
    }

    else
    {
      v43 = v42;
    }
  }

  else
  {
    v43 = v39;
    v42 = v39;
  }

  if (v140[0])
  {
    [v140[0] width];
    if (v44 > v42)
    {
      v42 = v44;
    }

    if (v44 <= v43)
    {
      v44 = v43;
    }

    if (!v111)
    {
      v43 = v44;
    }
  }

  v12 = 0.0;
  if (v40 < v43)
  {
    v45 = EQKit::Font::Manager::defaultCollection([*(a2 + 592) fontManager]);
    v46 = EQKitLayoutManager::layoutContext(a2);
    v47 = EQKitLayoutManager::layoutContext(a2);
    if (*(v47 + 104))
    {
      v48.n128_u64[0] = *(v47 + 112);
    }

    else
    {
      v48.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v47);
    }

    v12 = (*(*v45 + 40))(v45, 27, v46 + 8, v48);
  }

  v49 = v134[0];
  v50 = v140[0];
  [v141[0] erasableBounds];
  MidX = CGRectGetMidX(v165);
  EQKit::ILayout::ILayout(v115, v141);
  EQKitLayoutManager::alignBoxHorizontally(v115, v164[0], 0, v123, v42, 0.0);
  EQKit::ILayout::operator=(v141, v123);
  v52 = (v42 - v40) * 0.5 + MidX;
  EQKit::ILayout::~ILayout(v123);
  EQKit::ILayout::~ILayout(v115);
  v54 = 0.0;
  v55 = 0.0;
  if (v49)
  {
    if (v17)
    {
      if (*(v129 + 24) == 1)
      {
        [v49 depth];
        if (v56.n128_f64[0] >= 0.0)
        {
          v69 = *(v11 + 80);
          if (*(v11 + 104))
          {
            v56.n128_u64[0] = *(v11 + 112);
          }

          else
          {
            v56.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
          }

          v73 = -(*(*v69 + 40))(v69, 11, v11 + 8, v56);
        }

        else
        {
          v57 = v125[3];
          [v49 depth];
          v59 = v58.n128_f64[0];
          v60 = *(v11 + 80);
          if (*(v11 + 104))
          {
            v58.n128_u64[0] = *(v11 + 112);
          }

          else
          {
            v58.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
          }

          if (v57 >= -v59 - (*(*v60 + 40))(v60, 11, v11 + 8, v58))
          {
            [v49 depth];
            v75 = v74.n128_f64[0];
            v76 = *(v11 + 80);
            if (*(v11 + 104))
            {
              v74.n128_u64[0] = *(v11 + 112);
            }

            else
            {
              v74.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
            }

            v73 = -v75 - (*(*v76 + 40))(v76, 11, v11 + 8, v74);
          }

          else
          {
            v73 = v125[3];
          }
        }

        [v141[0] height];
        if (v73 >= v77)
        {
          [v141[0] height];
          v73 = v78;
        }

        v55 = -v73;
      }

      else
      {
        v62 = *(v11 + 80);
        if (*(v11 + 104))
        {
          v53.n128_u64[0] = *(v11 + 112);
        }

        else
        {
          v53.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
        }

        v55 = (*(*v62 + 40))(v62, 11, v11 + 8, v53);
      }

      if (*(v157 + 24) == 1)
      {
        v79 = EQKit::Font::Manager::defaultCollection([*(a2 + 592) fontManager]);
        v80 = v52 + (*(*v79 + 176))(v79, *(v161 + 6), v144 + 6);
        v71 = 1;
LABEL_108:
        EQKit::ILayout::ILayout(v114, v134);
        EQKitLayoutManager::alignBoxHorizontally(v114, v164[0], v71, v123, v42, v80);
        EQKit::ILayout::operator=(v134, v123);
        EQKit::ILayout::~ILayout(v123);
        EQKit::ILayout::~ILayout(v114);
        goto LABEL_109;
      }
    }

    else
    {
      v61 = *(v11 + 80);
      if (*(v11 + 104))
      {
        v53.n128_u64[0] = *(v11 + 112);
      }

      else
      {
        v53.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
      }

      v64 = (*(*v61 + 40))(v61, 11, v11 + 8, v53);
      v65 = *(v11 + 80);
      if (*(v11 + 104))
      {
        v63.n128_u64[0] = *(v11 + 112);
      }

      else
      {
        v63.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
      }

      v66 = (*(*v65 + 40))(v65, 12, v11 + 8, v63);
      [v49 layoutDepth];
      v68 = *(v11 + 80);
      if (v64 <= v66 - v67.n128_f64[0])
      {
        if (*(v11 + 104))
        {
          v67.n128_u64[0] = *(v11 + 112);
        }

        else
        {
          v67.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
        }

        v70 = (*(*v68 + 40))(v68, 12, v11 + 8, v67);
        [v49 layoutDepth];
        v71 = 0;
        v55 = v70 - v72;
        goto LABEL_107;
      }

      if (*(v11 + 104))
      {
        v67.n128_u64[0] = *(v11 + 112);
      }

      else
      {
        v67.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
      }

      v55 = (*(*v68 + 40))(v68, 11, v11 + 8, v67);
    }

    v71 = 0;
LABEL_107:
    v80 = v52;
    goto LABEL_108;
  }

LABEL_109:
  if (v50)
  {
    if (!v111)
    {
      v82 = *(v11 + 80);
      if (*(v11 + 104))
      {
        v53.n128_u64[0] = *(v11 + 112);
      }

      else
      {
        v53.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
      }

      v84 = (*(*v82 + 40))(v82, 13, v11 + 8, v53);
      v85 = *(v11 + 80);
      if (*(v11 + 104))
      {
        v83.n128_u64[0] = *(v11 + 112);
      }

      else
      {
        v83.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
      }

      v86 = (*(*v85 + 40))(v85, 14, v11 + 8, v83);
      [v50 layoutHeight];
      v88 = *(v11 + 80);
      if (v84 <= v86 - v87.n128_f64[0])
      {
        if (*(v11 + 104))
        {
          v87.n128_u64[0] = *(v11 + 112);
        }

        else
        {
          v87.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
        }

        v92 = (*(*v88 + 40))(v88, 14, v11 + 8, v87);
        [v50 layoutHeight];
        v93 = 0;
        v54 = v92 - v94;
        goto LABEL_141;
      }

      if (*(v11 + 104))
      {
        v87.n128_u64[0] = *(v11 + 112);
      }

      else
      {
        v87.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
      }

      v54 = (*(*v88 + 40))(v88, 13, v11 + 8, v87);
      goto LABEL_140;
    }

    if (*(v136 + 24) == 1)
    {
      [v50 height];
      if (v53.n128_f64[0] <= 0.0)
      {
        [v50 height];
        v90 = v89.n128_f64[0];
        v91 = *(v11 + 80);
        if (*(v11 + 104))
        {
          v89.n128_u64[0] = *(v11 + 112);
        }

        else
        {
          v89.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
        }

        v54 = v90 + (*(*v91 + 40))(v91, 13, v11 + 8, v89);
LABEL_138:
        if (*(v157 + 24) == 1)
        {
          v95 = EQKit::Font::Manager::defaultCollection([*(a2 + 592) fontManager]);
          v52 = v52 + (*(*v95 + 184))(v95, *(v161 + 6), v144 + 6);
          v93 = 1;
LABEL_141:
          EQKit::ILayout::ILayout(v113, v140);
          EQKitLayoutManager::alignBoxHorizontally(v113, v164[0], v93, v123, v42, v52);
          EQKit::ILayout::operator=(v140, v123);
          EQKit::ILayout::~ILayout(v123);
          EQKit::ILayout::~ILayout(v113);
          goto LABEL_142;
        }

LABEL_140:
        v93 = 0;
        goto LABEL_141;
      }

      v81 = *(v11 + 80);
      if ((*(v11 + 104) & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v81 = *(v11 + 80);
      if ((*(v11 + 104) & 1) == 0)
      {
LABEL_128:
        v53.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
        goto LABEL_129;
      }
    }

    v53.n128_u64[0] = *(v11 + 112);
LABEL_129:
    v54 = (*(*v81 + 40))(v81, 13, v11 + 8, v53);
    goto LABEL_138;
  }

LABEL_142:
  v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = v96;
  if (v134[0])
  {
    [v96 addObject:?];
    if (v55 != 0.0)
    {
      v98 = [[EQKitVSpace alloc] initWithHeight:v55 depth:0.0];
      [v97 addObject:v98];
    }
  }

  v99 = [v97 count];
  if (v141[0])
  {
    [v97 addObject:?];
  }

  v100 = v140[0];
  if (v140[0])
  {
    if (v54 != 0.0)
    {
      v101 = [[EQKitVSpace alloc] initWithHeight:v54 depth:0.0];
      [v97 addObject:v101];

      v100 = v140[0];
    }

    [v97 addObject:v100];
  }

  v102 = [[EQKitVBox alloc] initWithChildBoxes:v97 pivotIndex:v99];
  EQKit::ILayout::operator=(a5, v141);
  if (v8)
  {
    v103 = 1;
    if ((v142 & 0x1C00u) <= 0x1000 || !((v9 == 0) | v111 & 1))
    {
      goto LABEL_161;
    }

    goto LABEL_158;
  }

  if (!v9 || v111)
  {
LABEL_158:
    if ((v10 == 0) | v17 & 1)
    {
      v103 = 4;
    }

    else
    {
      v103 = 1;
    }

    goto LABEL_161;
  }

  v103 = 1;
LABEL_161:
  EQKit::ILayout::setVerticalContentClassification(a5, v103);
  EQKit::ILayout::setBox(a5, &v102->super.super);

  if (v10 && (v157[3] & 1) != 0 && v17)
  {
    EQKit::ILayout::setIsOverAccentTokenWithBaseToken(a5, 1);
  }

  EQKit::ILayout::~ILayout(v134);
  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v128, 8);
  EQKit::ILayout::~ILayout(v140);
  _Block_object_dispose(&v135, 8);
  EQKit::ILayout::~ILayout(v141);
  _Block_object_dispose(&v143, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v160, 8);
LABEL_168:
  if (a3)
  {
    v104 = [a4 operatorCore];
    if (v104)
    {
      v105 = EQKitLayoutManager::leftSpaceForOperator(a2, v104);
      v106 = EQKitLayoutManager::rightSpaceForOperator(a2, v104);
      if (v12 <= v105)
      {
        v107 = v105;
      }

      else
      {
        v107 = v12;
      }

      if (v12 <= v106)
      {
        v12 = v106;
      }
    }

    else
    {
      v107 = v12;
    }

    EQKitLayoutManager::addOperatorLeftSpace(a2, v107);
    EQKit::ILayout::ILayout(v112, a5);
    v108 = EQKitLayoutManager::currentNode(a2);
    EQKitLayoutManager::addRowChild(a2, v112, v108);
    EQKit::ILayout::~ILayout(v112);
    EQKitLayoutManager::addOperatorRightSpace(a2, v12);
    EQKit::ILayout::ILayout(&v143, 0);
    EQKit::ILayout::operator=(a5, &v143);
    EQKit::ILayout::~ILayout(&v143);
  }
}

void sub_26C708F5C(_Unwind_Exception *a1)
{
  EQKit::ILayout::~ILayout(&STACK[0x3C8]);
  EQKit::ILayout::~ILayout(v1);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::layoutTable@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v11[0] = &unk_287D33820;
  v11[1] = this;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  std::deque<EQKitLayoutTable>::push_back(this + 68, v11);
  EQKitLayoutTable::~EQKitLayoutTable(v11);
  v6 = EQKit::Layout::Schemata::tableSchemata(a2);
  if (!v6)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutManager::layoutTable(const EQKit::Layout::Schemata &)") description:{@"EQKitLayoutManager.mm", 2600, @"can't layout a table without a table schemata"}];
  }

  if (!*(this + 73))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutManager::layoutTable(const EQKit::Layout::Schemata &)") description:{@"EQKitLayoutManager.mm", 2601, @"can't layout a table without a table stack"}];
  }

  if (v6)
  {
    v7 = *(this + 73);
    if (v7)
    {
      EQKitLayoutTable::layoutTable(*(*(this + 69) + 8 * ((v7 + *(this + 72) - 1) / 0x2AuLL)) + 96 * ((v7 + *(this + 72) - 1) % 0x2AuLL), v6, v11);
      EQKit::ILayout::operator=(a3, v11);
      EQKit::ILayout::~ILayout(v11);
    }
  }

  return std::deque<EQKitLayoutTable>::pop_back(this + 68);
}

void sub_26C7092F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutTableRow(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = EQKit::Layout::Schemata::tableRowSchemata(a2);
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutManager::layoutTableRow(const EQKit::Layout::Schemata &)") description:{@"EQKitLayoutManager.mm", 2614, @"can't layout a table without a tr schemata"}];
  }

  if (!*(this + 73))
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutManager::layoutTableRow(const EQKit::Layout::Schemata &)") description:{@"EQKitLayoutManager.mm", 2615, @"can't layout a table without a table stack"}];
  }

  if (v6)
  {
    v7 = *(this + 73);
    if (v7)
    {
      EQKitLayoutTable::layoutTr(*(*(this + 69) + 8 * ((v7 + *(this + 72) - 1) / 0x2AuLL)) + 96 * ((v7 + *(this + 72) - 1) % 0x2AuLL), v6, v10);
      EQKit::ILayout::operator=(a3, v10);
      EQKit::ILayout::~ILayout(v10);
    }
  }
}

void sub_26C709480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::layoutStack@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = EQKit::Layout::Schemata::stackSchemata(a2);
  EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(v8, this, v5, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0.0);
  std::deque<EQKitLayoutElementaryStack>::push_back(this + 62, v8);
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(v8);
  v6 = *(this + 67) + *(this + 66) - 1;
  EQKitLayoutElementaryStack::layout((*(*(this + 63) + 8 * (v6 / 0x18)) + 168 * (v6 % 0x18)), a3);
  return std::deque<EQKitLayoutElementaryStack>::pop_back(this + 62);
}

void EQKitLayoutManager::layoutStackGroup(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 67);
  if (v6 || (v10 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v10, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKit::ILayout EQKitLayoutManager::layoutStackGroup(const EQKit::Layout::Schemata &)"), @"EQKitLayoutManager.mm", 2482, @"can't layout a stack group without an elementary stack"), (v6 = *(this + 67)) != 0))
  {
    v7 = v6 + *(this + 66) - 1;
    v8 = *(*(this + 63) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackGroupSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackGroup((v8 + 168 * (v7 % 0x18)), v9, v11);
    EQKit::ILayout::operator=(a3, v11);
    EQKit::ILayout::~ILayout(v11);
  }
}

void EQKitLayoutManager::layoutStackRow(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 67);
  if (v6 || (v10 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v10, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKit::ILayout EQKitLayoutManager::layoutStackRow(const EQKit::Layout::Schemata &)"), @"EQKitLayoutManager.mm", 2495, @"can't layout a stack row without an elementary stack"), (v6 = *(this + 67)) != 0))
  {
    v7 = v6 + *(this + 66) - 1;
    v8 = *(*(this + 63) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackRowSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackRow((v8 + 168 * (v7 % 0x18)), v9, v11);
    EQKit::ILayout::operator=(a3, v11);
    EQKit::ILayout::~ILayout(v11);
  }
}

void EQKitLayoutManager::layoutStackLine(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 67);
  if (v6 || (v9 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v9, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKit::ILayout EQKitLayoutManager::layoutStackLine(const EQKit::Layout::Schemata &)"), @"EQKitLayoutManager.mm", 2508, @"can't layout a stack group without an elementary stack"), (v6 = *(this + 67)) != 0))
  {
    v7 = v6 + *(this + 66) - 1;
    v8 = *(*(this + 63) + 8 * (v7 / 0x18));
    EQKit::Layout::Schemata::stackLineSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackLine(v8 + 168 * (v7 % 0x18), v10);
    EQKit::ILayout::operator=(a3, v10);
    EQKit::ILayout::~ILayout(v10);
  }
}

void EQKitLayoutManager::layoutStackCarries(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 67);
  if (v6 || (v10 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v10, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKit::ILayout EQKitLayoutManager::layoutStackCarries(const EQKit::Layout::Schemata &)"), @"EQKitLayoutManager.mm", 2521, @"can't layout a stack group without an elementary stack"), (v6 = *(this + 67)) != 0))
  {
    v7 = v6 + *(this + 66) - 1;
    v8 = *(*(this + 63) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackCarriesSchemata(a2);
    EQKitLayoutElementaryStack::layoutStackCarries((v8 + 168 * (v7 % 0x18)), v9, v11);
    EQKit::ILayout::operator=(a3, v11);
    EQKit::ILayout::~ILayout(v11);
  }
}

void EQKitLayoutManager::layoutStackCarry(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  v6 = *(this + 67);
  if (v6 || (v10 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v10, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKit::ILayout EQKitLayoutManager::layoutStackCarry(const EQKit::Layout::Schemata &)"), @"EQKitLayoutManager.mm", 2534, @"can't layout a stack group without an elementary stack"), (v6 = *(this + 67)) != 0))
  {
    v7 = v6 + *(this + 66) - 1;
    v8 = *(*(this + 63) + 8 * (v7 / 0x18));
    v9 = EQKit::Layout::Schemata::stackCarrySchemata(a2);
    EQKitLayoutElementaryStack::layoutStackCarry((v8 + 168 * (v7 % 0x18)), v9, v11);
    EQKit::ILayout::operator=(a3, v11);
    EQKit::ILayout::~ILayout(v11);
  }
}

EQKit::ILayout *EQKitLayoutManager::layoutLongDivision@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = EQKit::Layout::Schemata::longDivisionSchemata(a2);
  v6 = EQKitLayoutManager::layoutContext(this);
  v7 = CTFontDescriptorCreateWithNameAndSize(@"STIXGeneral-Regular", *(v6 + 24));
  v8 = CTFontCreateWithFontDescriptor(v7, *(v6 + 24), 0);
  CFRelease(v7);
  if (v8)
  {
    EQKitLayoutManager::layoutBox(this, [v5 schemataDivisor], 0, 0, 0, 0, 0, v38);
    EQKitPath::EQKitPath(&v35, v8, 0x27CCu);
    EQKitPath::findStemForEdge(&v35, 2u, v34);
    v9 = v34[6];
    v33 = 0.0;
    v10 = [v5 schemataStack];
    if (v10)
    {
      [v10 layoutSchemata];
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    EQKitLayoutManager::layoutStack(this, v32, *&v9, &v33, 2, 1, v34);
    EQKit::Layout::Schemata::~Schemata(v32);
    *&v32[0] = 0;
    v12 = *(EQKitLayoutManager::layoutContext(this) + 80);
    v13 = EQKitLayoutManager::layoutContext(this);
    v14 = v33;
    [v34[0] width];
    v16 = (*(*v12 + 168))(v12, v13 + 8, v32, v14, v15);
    if (v16)
    {
      v17 = [[EQKitPathBox alloc] initWithCGPath:v16 height:*(EQKitLayoutManager::layoutContext(this) + 96) cgColor:*&v9];
      CGPathRelease(v16);
    }

    else
    {
      v17 = 0;
    }

    [(EQKitPathBox *)v17 height];
    v19 = v18;
    v20 = [EQKitPaddedBox alloc];
    [(EQKitPathBox *)v17 height];
    v22 = v21;
    if (v37[32] == 1)
    {
      v23 = v37;
    }

    else
    {
      v23 = EQKitPath::computePathBounds(&v35);
    }

    Width = CGRectGetWidth(*v23);
    [(EQKitPathBox *)v17 depth];
    v26 = [(EQKitPaddedBox *)v20 initWithBox:v17 height:v22 width:Width depth:v25 lspace:0.0 voffset:v14 - v19];
    v27 = objc_alloc(MEMORY[0x277CBEB18]);
    v28 = [v27 initWithObjects:{v38[0], v26, v34[0], 0}];
    v11 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v28];

    CFRelease(v8);
    EQKit::ILayout::~ILayout(v34);
    EQKitPath::~EQKitPath(&v35);
    EQKit::ILayout::~ILayout(v38);
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v34[0]) = 0;
  v29 = *(this + 75);
  v35 = EQKitLayoutManager::currentNode(this);
  v36 = 2;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v29, v29 + 152, &v35, v34);
  v30 = EQKitLayoutManager::baselineAlignBox(this, v11, v34[0]);
  return EQKit::ILayout::ILayout(a3, &v30->super);
}

void sub_26C709E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  EQKit::ILayout::~ILayout(&a18);
  EQKitPath::~EQKitPath(&a26);
  EQKit::ILayout::~ILayout((v26 - 152));
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutRadical(id *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v6 = EQKitLayoutManager::layoutContext(this);
  v7 = EQKit::Layout::Schemata::radicalSchemata(a2);
  if (*(v6 + 104))
  {
    v8 = *(v6 + 112);
  }

  else
  {
    v8 = EQKitLayoutContext::pComputeRuleThickness(v6);
  }

  EQKit::ILayout::ILayout(v102, 0);
  if ([v7 schemataIndex])
  {
    EQKitLayoutManager::layoutBox(this, [v7 schemataIndex], 2, 0, 0, 0, 0, v100);
    EQKit::ILayout::operator=(v102, v100);
    EQKit::ILayout::~ILayout(v100);
  }

  v9 = v102[0];
  EQKitLayoutManager::layoutBox(this, [v7 schemataRadicand], 0, *(v6 + 16), 0, 0, 0, v100);
  v11 = v100[0];
  v12 = *(v6 + 80);
  if (*(v6 + 104))
  {
    v10.n128_u64[0] = *(v6 + 112);
  }

  else
  {
    v10.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
  }

  v14 = (*(*v12 + 40))(v12, 17, v6 + 8, v10);
  v15 = *(v6 + 80);
  if (*(v6 + 104))
  {
    v13.n128_u64[0] = *(v6 + 112);
  }

  else
  {
    v13.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
  }

  v16 = (*(*v15 + 40))(v15, 18, v6 + 8, v13);
  [v11 layoutVSize];
  v18 = v17;
  [v11 width];
  v20 = v19;
  v21 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
  v22 = EQKitLayoutManager::layoutContext(this);
  v23 = (*(*v21 + 40))(v21, 22, v22 + 8, v8);
  if (v20 < v23)
  {
    v20 = v23;
  }

  v99 = 0.0;
  v97 = 0u;
  v98 = 0u;
  v94 = *MEMORY[0x277CBF3A8];
  v95 = 0;
  v96 = 0;
  v24 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
  v25 = EQKitLayoutManager::layoutContext(this);
  v26 = (*(*v24 + 160))(v24, v25 + 8, &v97, &v94, v16 + v8 + v18 + v8 * 2.0, v20, v8);
  if (v26)
  {
    v28 = [EQKitPathBox alloc];
    v29 = [(EQKitPathBox *)v28 initWithCGPath:v26 height:*(EQKitLayoutManager::layoutContext(this) + 96) cgColor:*(&v94 + 1)];
    v30 = [EQKitPaddedBox alloc];
    [(EQKitPathBox *)v29 height];
    v32 = v31;
    [(EQKitPathBox *)v29 width];
    v34 = v33;
    v35 = v99;
    [(EQKitPathBox *)v29 depth];
    v37 = [(EQKitPaddedBox *)v30 initWithBox:v29 height:v32 width:v34 - v20 - v35 depth:v36 lspace:0.0 voffset:0.0];

    CFRelease(v26);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v6 + 80);
  if (*(v6 + 104))
  {
    v27.n128_u64[0] = *(v6 + 112);
  }

  else
  {
    v27.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
  }

  v39 = (*(*v38 + 40))(v38, 19, v6 + 8, v27);
  [(EQKitBox *)v37 layoutHeight];
  v41 = v40;
  [v11 layoutVSize];
  v43 = v41 - v8 - v16;
  if (v43 >= v39)
  {
    v43 = v39;
  }

  if (v42 >= v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = v43;
  }

  [(EQKitBox *)v37 layoutHeight];
  v46 = v45;
  [v11 layoutVSize];
  v48 = v47;
  v49 = v46 - v8 - (v16 + v44);
  if (v49 > 0.0)
  {
    v16 = v16 + v49 * 0.5;
  }

  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = [[EQKitVSpace alloc] initWithHeight:v8 depth:0.0];
  [v50 addObject:v51];

  v52 = [[EQKitVSpace alloc] initWithHeight:v16 + v44 - v48 depth:0.0];
  [v50 addObject:v52];

  [v11 width];
  [v50 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", -[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v14 + (v20 - v53) * 0.5), v11, -[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v14 + (v20 - v53) * 0.5), 0))}];
  v54 = -[EQKitVBox initWithChildBoxes:pivotIndex:]([EQKitVBox alloc], "initWithChildBoxes:pivotIndex:", v50, [v50 count] - 1);
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(EQKitPaddedBox *)v37 width];
  v57 = v56;
  if (v9)
  {
    if (*this[5] == 3 || (v58 = *(&v97 + 1), [v9 width], v60 = v59, v61 = *&v98, objc_msgSend(v9, "width"), v62 = v58 + v60 * -0.5, v62 >= v61 - v63))
    {
      v64 = *&v98;
      [v9 width];
      v62 = v64 - v65;
    }

    v66 = *&v97;
    v67 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
    v68 = EQKitLayoutManager::layoutContext(this);
    v69 = (*(*v67 + 40))(v67, 20, v68 + 8, v8);
    v70 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
    v71 = EQKitLayoutManager::layoutContext(this);
    v72 = (*(*v70 + 40))(v70, 21, v71 + 8, v8);
    [v9 layoutDepth];
    if (v69 <= v72 + v73)
    {
      [v9 layoutDepth];
      v69 = v72 + v74;
    }

    v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v9 width];
    if (v57 <= v62 + v76)
    {
      [v9 width];
      v57 = v62 + v77;
    }

    if (v62 < 0.0)
    {
      v57 = v57 - v62;
    }

    if (v62 > 0.0)
    {
      [v75 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v62)}];
    }

    [v75 addObject:v9];
    [v55 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", v75)}];
    v78 = [EQKitVSpace alloc];
    [v9 layoutDepth];
    v80 = v79;
    [(EQKitBox *)v37 layoutHeight];
    [v55 addObject:{-[EQKitVSpace initWithHeight:depth:](v78, "initWithHeight:depth:", v66 + v69 - v80 - v81, 0.0)}];
  }

  [(EQKitPaddedBox *)v37 width];
  if (v82 >= v57)
  {
    if (v37)
    {
      [v55 addObject:v37];
    }
  }

  else
  {
    v83 = MEMORY[0x277CBEA60];
    v84 = [EQKitHSpace alloc];
    [(EQKitPaddedBox *)v37 width];
    [v55 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", objc_msgSend(v83, "arrayWithObjects:", -[EQKitHSpace initWithWidth:](v84, "initWithWidth:", v57 - v85), v37, 0))}];
  }

  [(EQKitCompoundBox *)v54 height];
  v87 = v86;
  [(EQKitPaddedBox *)v37 height];
  v89 = -[EQKitOffsetVBox initWithChildBoxes:pivotIndex:offset:]([EQKitOffsetVBox alloc], "initWithChildBoxes:pivotIndex:offset:", v55, [v55 count] - 1, v87 - v8 - v88);
  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v90 addObject:v89];
  [v90 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", -v14)}];
  [v90 addObject:v54];
  if (v99 != 0.0)
  {
    v91 = [EQKitHSpace alloc];
    [v90 addObject:{-[EQKitHSpace initWithWidth:](v91, "initWithWidth:", v99)}];
  }

  EQKit::ILayout::ILayout(a3, v100);
  v92 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v90];
  EQKit::ILayout::setBox(a3, &v92->super.super);

  EQKit::ILayout::removeOffsetOfKind(a3, 1);
  if (![v7 schemataIndex] || (v103 & 0x1000) != 0)
  {
    if ((v101 & 0x1C00u) <= 0x1000)
    {
      v93 = 0;
    }

    else
    {
      v93 = 3;
    }
  }

  else
  {
    v93 = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a3, v93);
  EQKit::ILayout::~ILayout(v100);
  EQKit::ILayout::~ILayout(v102);
}

void sub_26C70A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  EQKit::ILayout::~ILayout(&a24);
  EQKit::ILayout::~ILayout(&a31);
  _Unwind_Resume(a1);
}

EQKit::ILayout *EQKitLayoutManager::layoutNone@<X0>(EQKit::ILayout *a1@<X8>)
{
  v4 = [[EQKitHVSpace alloc] initWithWidth:0.0 height:0.0 depth:0.0];

  return EQKit::ILayout::ILayout(a1, &v4->super);
}

void EQKitLayoutManager::layoutPadded(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = [EQKit::Layout::Schemata::paddedSchemata(a2) schemataNode];
  v6 = EQKitLayoutManager::layoutContext(this);
  EQKitLayoutManager::layoutBox(this, v5, 0, *(v6 + 16), 0, 0, 0, v44);
  [v44[0] layoutHeight];
  v8 = v7;
  [v44[0] layoutDepth];
  v10 = v9;
  [v44[0] width];
  v12 = v11;
  v13 = EQKitLayoutManager::layoutContext(this);
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v14 = *(this + 75);
  v38 = EQKitLayoutManager::currentNode(this);
  LODWORD(v39) = 29;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v14, v14 + 464, &v38, &v41);
  v15 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v41, v13, v8, v8, v10, v12);
  LODWORD(v38) = 1;
  v39 = 0;
  v40 = 0;
  v16 = *(this + 75);
  v35 = EQKitLayoutManager::currentNode(this);
  LODWORD(v36) = 30;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v16, v16 + 464, &v35, &v38);
  v17 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v38, v13, v10, v8, v10, v12);
  LODWORD(v35) = 1;
  v36 = 0;
  v37 = 0;
  v18 = *(this + 75);
  v32 = EQKitLayoutManager::currentNode(this);
  LODWORD(v33) = 31;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v18, v18 + 464, &v32, &v35);
  v19 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v35, v13, v12, v8, v10, v12);
  LODWORD(v32) = 1;
  v33 = 0;
  v34 = 0;
  v20 = *(this + 75);
  v29 = EQKitLayoutManager::currentNode(this);
  LODWORD(v30) = 32;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v20, v20 + 464, &v29, &v32);
  v21 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v32, v13, 0.0, v8, v10, v12);
  LODWORD(v29) = 1;
  v30 = 0;
  v31 = 0;
  v22 = *(this + 75);
  v46 = EQKitLayoutManager::currentNode(this);
  v47 = 33;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(v22, v22 + 464, &v46, &v29);
  v23 = EQKitPseudoUnitLength::resolveToAbsoluteLength(&v29, v13, 0.0, v8, v10, v12);
  v24 = [EQKitPaddedBox alloc];
  v25 = fmax(v15, 0.0);
  v26 = fmax(v17, 0.0);
  v27 = [(EQKitPaddedBox *)v24 initWithBox:v44[0] height:v25 width:fmax(v19 depth:0.0) lspace:v26 voffset:v21, v23];
  EQKit::ILayout::ILayout(a3, v44);
  EQKit::ILayout::setBox(a3, v27);
  if (v25 == v8 && v26 == v10 && v23 == 0.0)
  {
    v28 = (v45 >> 10) & 7;
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a3, v28);

  EQKit::ILayout::~ILayout(v44);
}

void sub_26C70AC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  EQKit::ILayout::~ILayout(v24);
  EQKit::ILayout::~ILayout(&a24);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutSpace(EQKitLayoutManager *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  v5 = EQKitLayoutManager::currentNode(this);
  v6 = EQKitLayoutManager::lengthForAttribute(this, 26, v5, 0.0);
  v7 = EQKitLayoutManager::currentNode(this);
  v8 = EQKitLayoutManager::lengthForAttribute(this, 27, v7, 0.0);
  v9 = EQKitLayoutManager::currentNode(this);
  v10 = [[EQKitHVSpace alloc] initWithWidth:EQKitLayoutManager::lengthForAttribute(this height:28 depth:v9, 0.0), v6, v8];
  v11 = EQKit::ILayout::ILayout(a2, &v10->super);
  EQKit::ILayout::setIsUserSpace(v11, 1);
  if (v8 == 0.0 && v6 == 0.0)
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a2, v13);
}

void EQKitLayoutManager::layoutFenced(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  obj = [EQKit::Layout::Schemata::fencedSchemata(a2) schemataChildren];
  v4 = [obj count];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  std::string::basic_string[abi:nn200100]<0>(&v55, "(");
  std::string::basic_string[abi:nn200100]<0>(&v54, ")");
  memset(&v53, 0, sizeof(v53));
  std::string::basic_string[abi:nn200100]<0>(__p, ",");
  end = v53.__end_;
  if (v53.__end_ >= v53.__end_cap_.__value_)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v53.__end_ - v53.__begin_) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (0x5555555555555556 * ((v53.__end_cap_.__value_ - v53.__begin_) >> 3) > v9)
    {
      v9 = 0x5555555555555556 * ((v53.__end_cap_.__value_ - v53.__begin_) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v53.__end_cap_.__value_ - v53.__begin_) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v56.__end_cap_.__value_ = &v53;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(&v53, v10);
    }

    v11 = 8 * ((v53.__end_ - v53.__begin_) >> 3);
    v12 = *__p;
    *(v11 + 16) = v52;
    *v11 = v12;
    __p[1] = 0;
    v52 = 0;
    __p[0] = 0;
    v13 = (24 * v8 - (v53.__end_ - v53.__begin_));
    memcpy(v13, v53.__begin_, v53.__end_ - v53.__begin_);
    begin = v53.__begin_;
    value = v53.__end_cap_.__value_;
    v53.__begin_ = v13;
    v53.__end_ = (24 * v8 + 24);
    v53.__end_cap_.__value_ = 0;
    v56.__end_ = begin;
    v56.__end_cap_.__value_ = value;
    v56.__first_ = begin;
    v56.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v56);
    v53.__end_ = (24 * v8 + 24);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = *__p;
    v53.__end_->__r_.__value_.__r.__words[2] = v52;
    *&end->__r_.__value_.__l.__data_ = v7;
    v53.__end_ = end + 1;
  }

  v16 = *(this + 75);
  v56.__first_ = EQKitLayoutManager::currentNode(this);
  LODWORD(v56.__begin_) = 18;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v16, v16 + 80, &v56, &v55);
  v17 = *(this + 75);
  v56.__first_ = EQKitLayoutManager::currentNode(this);
  LODWORD(v56.__begin_) = 19;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v17, v17 + 80, &v56, &v54);
  v18 = *(this + 75);
  v56.__first_ = EQKitLayoutManager::currentNode(this);
  LODWORD(v56.__begin_) = 20;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const,std::char_traits<char><std::allocator<char>>>>>>(v18, v18 + 104, &v56, &v53);
  v42 = a3;
  v20 = v53.__begin_;
  v19 = v53.__end_;
  size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v55;
    }

    else
    {
      v23 = v55.__r_.__value_.__r.__words[0];
    }

    v24 = [v22 initWithUTF8String:{v23, v42}];
    v25 = [[EQKitMathMLMOperator alloc] initWithString:v24 environment:*(this + 74)];
    [(EQKitMathMLNode *)v25 setParent:EQKitLayoutManager::currentNode(this)];
    [v5 addObject:v25];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v26 = [obj countByEnumeratingWithState:&v47 objects:v57 count:{16, v42}];
  if (v26)
  {
    v27 = 0;
    v44 = v19 - v20;
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3);
    v29 = *v48;
    do
    {
      v30 = 0;
      v31 = v27;
      do
      {
        v32 = v27;
        if (*v48 != v29)
        {
          objc_enumerationMutation(obj);
        }

        [v5 addObject:*(*(&v47 + 1) + 8 * v30)];
        ++v27;
        if (v32 + 1 < v4 && v53.__end_ != v53.__begin_)
        {
          if (v32 >= v28)
          {
            v33 = (v53.__begin_ + v44 - 24);
          }

          else
          {
            v33 = &v53.__begin_[v31];
          }

          if ((SHIBYTE(v33->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (!v33->__r_.__value_.__l.__size_)
            {
              goto LABEL_37;
            }
          }

          else if (!*(&v33->__r_.__value_.__s + 23))
          {
            goto LABEL_37;
          }

          v34 = objc_alloc(MEMORY[0x277CCACA8]);
          if (SHIBYTE(v33->__r_.__value_.__r.__words[2]) < 0)
          {
            v33 = v33->__r_.__value_.__r.__words[0];
          }

          v35 = [v34 initWithUTF8String:v33];
          v36 = [[EQKitMathMLMOperator alloc] initWithString:v35 environment:*(this + 74)];
          [(EQKitMathMLNode *)v36 setParent:EQKitLayoutManager::currentNode(this)];
          [v5 addObject:v36];
        }

LABEL_37:
        ++v30;
        ++v31;
      }

      while (v26 != v30);
      v26 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v26);
  }

  v37 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = v54.__r_.__value_.__l.__size_;
  }

  if (v37)
  {
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v54;
    }

    else
    {
      v39 = v54.__r_.__value_.__r.__words[0];
    }

    v40 = [v38 initWithUTF8String:v39];
    v41 = [[EQKitMathMLMOperator alloc] initWithString:v40 environment:*(this + 74)];
    [(EQKitMathMLNode *)v41 setParent:EQKitLayoutManager::currentNode(this)];
    [v5 addObject:v41];
  }

  EQKit::Layout::Schemata::row(v5, &v56);

  EQKitLayoutManager::layoutRow(this, &v56, v43);
  EQKit::Layout::Schemata::~Schemata(&v56.__first_);
  v56.__first_ = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v56);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }
}

void sub_26C70B2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutEnclose(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v5 = [EQKit::Layout::Schemata::encloseSchemata(a2) schemataRow];
  v6 = EQKitLayoutManager::layoutContext(this);
  EQKitLayoutManager::layoutBox(this, v5, 0, *(v6 + 16), 0, 0, 0, v26);
  __p = 0;
  v24 = 0;
  v25 = 0;
  v7 = *(this + 75);
  v27 = EQKitLayoutManager::currentNode(this);
  v28 = 47;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v7, v7 + 224, &v27, &__p);
  Mutable = CGPathCreateMutable();
  v9 = __p;
  v10 = v24;
  while (v9 != v10)
  {
    PathForNotation = EQKitLayoutManager::createPathForNotation(this, v26[0], *v9);
    CGPathAddPath(Mutable, 0, PathForNotation);
    CGPathRelease(PathForNotation);
    ++v9;
  }

  v12 = [EQKitPathBox alloc];
  [v26[0] height];
  v14 = v13;
  v15 = *(EQKitLayoutManager::layoutContext(this) + 96);
  v16 = EQKitLayoutManager::layoutContext(this);
  v18 = v16;
  v19 = *(v16 + 80);
  if (*(v16 + 104))
  {
    v17.n128_u64[0] = *(v16 + 112);
  }

  else
  {
    v17.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v16);
  }

  v20 = [(EQKitPathBox *)v12 initWithCGPath:Mutable height:v15 cgColor:2 drawingMode:v14 lineWidth:(*(*v19 + 40))(v19, 23, v18 + 8, v17)];
  v21 = [EQKitOverlayBox alloc];
  v22 = [(EQKitOverlayBox *)v21 initWithBox:v26[0] overlayBox:v20];
  EQKit::ILayout::ILayout(a3, v26);
  EQKit::ILayout::setBox(a3, v22);

  CGPathRelease(Mutable);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  EQKit::ILayout::~ILayout(v26);
}

void sub_26C70B53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  EQKit::ILayout::~ILayout(&a12);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutAlignGroup(EQKitLayoutManager *this, const EQKit::Layout::Schemata *a2)
{
  if (*(this + 46))
  {
    v5 = 0;
    v3 = *(this + 75);
    v6 = EQKitLayoutManager::currentNode(this);
    v7 = 37;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v3, v3 + 176, &v6, &v5);
    v4 = *(this + 46) + *(this + 45) - 1;
    EQKitLayoutRow::beginAlignmentGroup(*(*(this + 42) + 8 * (v4 / 0x19)) + 160 * (v4 % 0x19), v5);
  }
}

void EQKitLayoutManager::layoutAlignMark(EQKit::ILayout *a1@<X8>)
{
  v4 = objc_alloc_init(EQKitHSpace);
  EQKit::ILayout::ILayout(a1, &v4->super);
  EQKit::ILayoutOffset::ILayoutOffset(v5, &v4->super, 0.0);
  EQKit::ILayout::setOffsetOfKind(a1, 3, v5);
  EQKit::ILayoutOffset::~ILayoutOffset(v5);
}

uint64_t *EQKitLayoutManager::isOperatorSymmetric(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = *(a1 + 600);
  v10 = a2;
  v11 = 14;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 8, &v10, &v9);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  v6 = [*(a1 + 592) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = EQKitLayoutManager::operatorForm(a1, a2);
  result = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
  if (result)
  {
    return ((*(result + 48) >> 1) & 1);
  }

  return result;
}

double EQKitLayoutManager::lengthForCharacterProperty(id *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = EQKit::Font::Manager::defaultCollection([a1[74] fontManager]);
  v9 = EQKitLayoutManager::layoutContext(a1);
  v10 = (*(*v8 + 64))(v8, a3, v9 + 8);
  if (v10)
  {
    v11 = v10;
    v12 = EQKit::Font::Manager::defaultCollection([a1[74] fontManager]);
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 8));
    }

    else
    {
      v13 = *v11;
      __p.__r_.__value_.__r.__words[2] = *(v11 + 16);
      *&__p.__r_.__value_.__l.__data_ = v13;
    }

    v14 = (*(*v12 + 24))(v12, a2, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v14)
    {
      v15 = EQKitLayoutManager::layoutContext(a1);
      return EQKitLength::resolveToAbsoluteWithSize(v14, *(v15 + 24));
    }
  }

  return a4;
}

void sub_26C70B8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitLayoutManager::decimalPointOffsetInStringBox(EQKitLayoutManager *this, EQKitStringBox *a2)
{
  v6 = EQKitLayoutManager::decimalPointCharacter(this);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v6 length:1];
  v4 = [(NSString *)[(NSAttributedString *)[(EQKitStringBox *)a2 attributedString] string] rangeOfString:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSAttributedString *)[(EQKitStringBox *)a2 attributedString] length];
  }

  return [(EQKitStringBox *)a2 positionOfCharacterAtIndex:v4];
}

void *EQKitLayoutManager::layoutNumberDigits(EQKitLayoutManager *this, const EQKit::Layout::Schemata *a2, unint64_t *a3)
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = EQKitLayoutManager::layoutContext(this);
  v8 = *(v7 + 80);
  v9 = [EQKit::Layout::Schemata::tokenSchemata(a2) schemataTokenString];
  v10 = (*(*v8 + 72))(v8, v9, v7 + 8);
  v22 = EQKitLayoutManager::decimalPointCharacter(this);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v22 length:1];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = [v10 string];
  v13 = [v10 length];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN18EQKitLayoutManager18layoutNumberDigitsERKN5EQKit6Layout8SchemataERm_block_invoke;
  v17[3] = &unk_279D46558;
  v17[4] = v10;
  v17[5] = v11;
  v17[6] = v6;
  v17[7] = &v18;
  v17[8] = v7;
  [v12 enumerateSubstringsInRange:0 options:v13 usingBlock:{2, v17}];

  v14 = [v6 count];
  *a3 = v14;
  v15 = v19[3];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
  }

  *a3 = v15;

  _Block_object_dispose(&v18, 8);
  return v6;
}

void sub_26C70BB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::decimalPointCharacter(EQKitLayoutManager *this)
{
  v3 = 46;
  v1 = *(this + 75);
  v4 = EQKitLayoutManager::currentNode(this);
  v5 = 35;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>>(v1, v1 + 488, &v4, &v3);
  return v3;
}

void ___ZN18EQKitLayoutManager18layoutNumberDigitsERKN5EQKit6Layout8SchemataERm_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) attributedSubstringFromRange:?];
  if (*(*(*(a1 + 56) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && [a2 isEqualToString:*(a1 + 40)])
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) count];
  }

  v5 = [[EQKitStringBox alloc] initWithAttributedString:v4 cgColor:*(*(a1 + 64) + 96)];
  [*(a1 + 48) addObject:v5];
}

uint64_t *EQKitLayoutManager::isEmbellishedOperatorWithMovableLimts(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];
    v10 = 0;
    v6 = *(a1 + 600);
    v11 = v5;
    v12 = 45;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v6, v6 + 8, &v11, &v10);
    if (v10)
    {
      return (v10 == 2);
    }

    else
    {
      v7 = [*(a1 + 592) operatorDictionary];
      v8 = [v5 operatorId];
      v9 = EQKitLayoutManager::operatorForm(a1, v5);
      result = EQKit::Config::Operator::Dictionary::lookup(v7, v8, v9);
      if (result)
      {
        return ((*(result + 48) >> 5) & 1);
      }
    }
  }

  return result;
}

uint64_t *EQKitLayoutManager::isEmbellishedOperatorWithAccent(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];
    v6 = [*(a1 + 592) operatorDictionary];
    v7 = [v5 operatorId];
    v8 = EQKitLayoutManager::operatorForm(a1, v5);
    result = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
    if (result)
    {
      return ((*(result + 48) >> 3) & 1);
    }
  }

  return result;
}

uint64_t EQKitLayoutManager::isEmbellishedOperatorWithStretch(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];

    return EQKitLayoutManager::isOperatorStretchy(a1, v5);
  }

  return result;
}

uint64_t EQKitLayoutManager::isOperatorStretchy(uint64_t a1, void *a2)
{
  v11 = 0;
  v4 = *(a1 + 600);
  v12 = a2;
  v13 = 16;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 8, &v12, &v11);
  if (v11 == 1)
  {
    goto LABEL_6;
  }

  if (v11 != 2)
  {
    v6 = [*(a1 + 592) operatorDictionary];
    v7 = [a2 operatorId];
    v8 = EQKitLayoutManager::operatorForm(a1, a2);
    v9 = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
    if (v9)
    {
      v5 = *(v9 + 48);
      return v5 & 1;
    }

LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t EQKitLayoutManager::doesOperatorRequireVerticalStretch(uint64_t a1, void *a2)
{
  v4 = *(a1 + 488);
  if (v4 && *(*(*(a1 + 456) + 8 * ((v4 + *(a1 + 480) - 1) / 0x66uLL)) + 40 * ((v4 + *(a1 + 480) - 1) % 0x66uLL)) == a2 || !EQKitLayoutManager::isOperatorStretchy(a1, a2))
  {
    return 0;
  }

  EQKit::Layout::Schemata::Schemata(v7);
  v5 = EQKitLayoutManager::schemataForOperatorWhenStretchedVertically(a1, a2, v7);
  EQKit::Layout::Schemata::~Schemata(v7);
  return v5;
}

uint64_t *EQKitLayoutManager::isOperatorLargeOp(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = *(a1 + 600);
  v10 = a2;
  v11 = 39;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 8, &v10, &v9);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  v6 = [*(a1 + 592) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = EQKitLayoutManager::operatorForm(a1, a2);
  result = EQKit::Config::Operator::Dictionary::lookup(v6, v7, v8);
  if (result)
  {
    return ((*(result + 48) >> 2) & 1);
  }

  return result;
}

void *EQKitLayoutManager::pushImplicitFormIfRequired(void *a1, void *a2, void *a3)
{
  result = EQKitLayoutManager::isEmbellishedOperatorRoot(a1, a2);
  if (result)
  {
    v7 = [a3 count];
    if (v7)
    {
      v8 = v7;
      v9 = [a3 objectAtIndex:0];
      v7 = [a3 objectAtIndex:v8 - 1];
    }

    else
    {
      v9 = 0;
    }

    if (v7 == a2)
    {
      v10 = (2 * (v9 == a2)) | 8;
    }

    else
    {
      v10 = 2 * (v9 == a2);
    }

    if (!v10)
    {
      v10 = 4;
    }

    v11 = v10;
    return std::deque<unsigned long>::push_back(a1 + 23, &v11);
  }

  return result;
}

uint64_t EQKitLayoutManager::popImplicitFormIfRequired(void *a1, void *a2)
{
  result = EQKitLayoutManager::isEmbellishedOperatorRoot(a1, a2);
  if (result)
  {
    v4 = a1[28];
    if (v4)
    {
      a1[28] = v4 - 1;

      return std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](a1 + 23, 1);
    }
  }

  return result;
}

void EQKitLayoutManager::resolveRow(EQKitLayoutManager *this, NSArray *a2)
{
  v4 = *(this + 46);
  if (!v4)
  {
    if (EQKitLayoutManager::resolveRow())
    {
      return;
    }

    v4 = v56;
  }

  v5 = (*(*(this + 42) + 8 * ((v4 + *(this + 45) - 1) / 0x19)) + 160 * ((v4 + *(this + 45) - 1) % 0x19));
  if (!v5[8] || EQKitLayoutManager::resolveRow())
  {
    memset(v68, 0, 24);
    std::vector<EQKit::ILayout>::__init_with_size[abi:nn200100]<EQKit::ILayout*,EQKit::ILayout*>(v68, v5[1], v5[2], 0x6DB6DB6DB6DB6DB7 * ((v5[2] - v5[1]) >> 3));
    v66 = 0.0;
    v67 = 0.0;
    EQKitLayoutRow::determineVSize(v5, &v67, &v66);
    v6 = EQKitLayoutManager::layoutContext(this);
    if ((*(v6 + 104) & 2) != 0)
    {
      v7 = *(v6 + 120);
    }

    else
    {
      v7 = EQKitLayoutContext::pComputeMathAxis(v6);
    }

    v8 = v5[7];
    if (!v8)
    {
      v52 = [MEMORY[0x277CCA890] currentHandler];
      [v52 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::resolveRow(NSArray *)") description:{@"EQKitLayoutManager.mm", 2974, @"invalid state; there should be something to resolve"}];
    }

    v9 = [v8 firstIndex];
    v54 = v59;
    v55 = v63;
    while (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = EQKitLayoutRow::childNodeAtIndex(v5, v9);
      v11 = v10;
      if (v10)
      {
        v12 = [v10 operatorCore];
        v13 = EQKitLayoutManager::isOperatorSymmetric(this, v12);
        v14 = v67;
        if (v13)
        {
          v15 = v67 - v7;
          if (v67 - v7 <= v7 + v66)
          {
            v15 = v7 + v66;
          }

          v14 = v7 + v15;
          v16 = v15 - v7;
        }

        else
        {
          v16 = v66;
        }

        v17 = [v12 operatorUnicharOrNul];
        LODWORD(v65) = 1;
        *(&v65 + 1) = 0;
        v18 = *(this + 75);
        v56 = v12;
        v57 = 41;
        if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v18, v18 + 32, &v56, &v65))
        {
          v19 = EQKitLayoutManager::layoutContext(this);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v63[0] = ___ZN18EQKitLayoutManager10resolveRowEP7NSArray_block_invoke;
          v63[1] = &__block_descriptor_44_e5_d8__0l;
          v63[2] = this;
          v64 = v17;
          v20 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(&v65, v19, v62);
          v21 = v14 + v16;
          if (v20 < v14 + v16)
          {
            if (v13)
            {
              v14 = v7 + v20 * 0.5;
              v16 = v20 * 0.5 - v7;
            }

            else if (v21 == 0.0)
            {
              v53 = a2;
              if (v17)
              {
                v22 = *(EQKitLayoutManager::layoutContext(this) + 80);
                v23 = EQKitLayoutManager::layoutContext(this);
                v24 = (*(*v22 + 136))(v22, v17, v23 + 8);
                v26 = v25;
                v28 = v27;
                v30 = v29;
              }

              else
              {
                v28 = 1.0;
                v24 = 0.0;
                v26 = 0.0;
                v30 = 1.0;
              }

              v69.origin.x = v24;
              v69.origin.y = v26;
              v69.size.width = v28;
              v69.size.height = v30;
              MinY = CGRectGetMinY(v69);
              v70.origin.x = v24;
              v70.origin.y = v26;
              v70.size.width = v28;
              v70.size.height = v30;
              MaxY = CGRectGetMaxY(v70);
              v33 = MaxY - MinY;
              if (MaxY - MinY == 0.0)
              {
                v16 = v20 * 0.5;
                v14 = v20 * 0.5;
              }

              else
              {
                v14 = v20 * -MinY / v33;
                v16 = v20 * MaxY / v33;
              }

              a2 = v53;
            }

            else
            {
              v14 = v14 * v20 / v21;
              v16 = v16 * v20 / v21;
            }
          }
        }

        LODWORD(v61) = 1;
        *(&v61 + 1) = 0;
        v34 = *(this + 75);
        v56 = v12;
        v57 = 40;
        if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v34, v34 + 32, &v56, &v61) && (v35 = EQKitLayoutManager::layoutContext(this), v58[0] = MEMORY[0x277D85DD0], v58[1] = 3221225472, v59[0] = ___ZN18EQKitLayoutManager10resolveRowEP7NSArray_block_invoke_2, v59[1] = &__block_descriptor_44_e5_d8__0l, v59[2] = this, v60 = v17, v36 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(&v61, v35, v58), v37 = v16 + v14, v36 > v16 + v14))
        {
          if (v13)
          {
            v14 = v7 + v36 * 0.5;
            v16 = v36 * 0.5 - v7;
            v38 = 1;
          }

          else if (v37 == 0.0)
          {
            if (v17)
            {
              v40 = *(EQKitLayoutManager::layoutContext(this) + 80);
              v41 = EQKitLayoutManager::layoutContext(this);
              v42 = (*(*v40 + 136))(v40, v17, v41 + 8);
              v44 = v43;
              v46 = v45;
              v48 = v47;
            }

            else
            {
              v46 = 1.0;
              v42 = 0.0;
              v44 = 0.0;
              v48 = 1.0;
            }

            v71.origin.x = v42;
            v71.origin.y = v44;
            v71.size.width = v46;
            v71.size.height = v48;
            v49 = CGRectGetMinY(v71);
            v72.origin.x = v42;
            v72.origin.y = v44;
            v72.size.width = v46;
            v72.size.height = v48;
            v50 = CGRectGetMaxY(v72);
            v51 = v50 - v49;
            if (v50 - v49 == 0.0)
            {
              v16 = v36 * 0.5;
              v38 = 1;
              v14 = v36 * 0.5;
            }

            else
            {
              v14 = v36 * -v49 / v51;
              v38 = 1;
              v16 = v36 * v50 / v51;
            }
          }

          else
          {
            v14 = v14 * v36 / v37;
            v38 = 1;
            v16 = v16 * v36 / v37;
          }
        }

        else
        {
          v38 = 0;
        }

        EQKitLayoutManager::pushImplicitFormIfRequired(this, v11, a2);
        EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(&v56, v12, 2, v14, v16, 0.0);
        std::deque<EQKitLayoutStretchedOperator>::push_back(this + 56, &v56);
        v39 = EQKitLayoutManager::layoutContext(this);
        EQKitLayoutManager::layoutBox(this, v11, 0, *(v39 + 16), 0, 0, 0, &v56);
        if (v38)
        {
          EQKit::ILayout::setVerticalContentClassification(&v56, 0);
        }

        EQKit::ILayout::operator=(v68[0] + 56 * v9, &v56);
        --*(this + 61);
        std::deque<EQKitLayoutStretchedOperator>::__maybe_remove_back_spare[abi:nn200100](this + 56, 1);
        EQKitLayoutManager::popImplicitFormIfRequired(this, v11);
        EQKit::ILayout::~ILayout(&v56);
      }

      v9 = [v8 indexGreaterThanIndex:{v9, v53, v54, v55}];
    }

    EQKitLayoutRow::resolveLayouts(v5, v68);
    v56 = v68;
    std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](&v56);
  }
}

void sub_26C70C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  a33 = (v33 - 176);
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](&a33);
  _Unwind_Resume(a1);
}

void sub_26C70C800(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  EQKit::ILayout::~ILayout(va);
  JUMPOUT(0x26C70C7E8);
}

uint64_t EQKitLayoutManager::lengthForMetric(id *a1, uint64_t a2)
{
  v4 = EQKit::Font::Manager::defaultCollection([a1[74] fontManager]);
  v5 = EQKitLayoutManager::layoutContext(a1);
  v6 = EQKitLayoutManager::layoutContext(a1);
  if (*(v6 + 104))
  {
    v7.n128_u64[0] = *(v6 + 112);
  }

  else
  {
    v7.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v6);
  }

  v8 = *(*v4 + 40);

  return v8(v4, a2, v5 + 8, v7);
}

void EQKitLayoutManager::layoutSubsuperscript(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  v8 = EQKitLayoutManager::layoutContext(a1);
  v178 = 0;
  v179 = &v178;
  v180 = 0x2020000000;
  v181 = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x2020000000;
  v177 = 0;
  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  v173 = 0;
  v166 = 0;
  v167 = &v166;
  v168 = 0x2020000000;
  v169 = 0;
  if (a2)
  {
    v9 = a2;
    while (1)
    {
      v10 = v9;
      [v9 layoutSchemata];
      if (v162 != 2)
      {
        break;
      }

      v11 = EQKit::Layout::Schemata::children(&v161);
      if ([v11 count] != 1)
      {
        break;
      }

      v9 = [v11 objectAtIndex:0];
      EQKit::Layout::Schemata::~Schemata(&v161);
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    EQKit::Layout::Schemata::~Schemata(&v161);
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke;
  v160[3] = &unk_279D46580;
  v160[10] = a1;
  v160[6] = &v178;
  v160[7] = &v174;
  v160[8] = &v170;
  v160[9] = &v166;
  v160[4] = v10;
  v160[5] = a2;
  v12 = EQKitLayoutManager::layoutContext(a1);
  EQKitLayoutManager::layoutBox(a1, a2, 0, *(v12 + 16), 0, 0, v160, &v161);
  if ((v163 & 0x100) != 0)
  {
    *(v175 + 24) = 1;
  }

  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  if (a3)
  {
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_2;
    v151[3] = &unk_279D465A8;
    v151[4] = a3;
    v151[5] = &v174;
    v151[6] = &v156;
    v151[7] = a1;
    EQKitLayoutManager::layoutBox(a1, a3, 1, 0, 2, 1, v151, v152);
  }

  else
  {
    EQKit::ILayout::ILayout(v152, 0);
  }

  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  if (*(v179 + 3) != 0.0)
  {
    v13 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
    v14 = (*(*v13 + 48))(v13, 0);
    *(v179 + 3) = v14 * *(v179 + 3);
  }

  if (a4)
  {
    [a4 layoutSchemata];
    v15 = (*(*(a1 + 40) + 6) != 1 || *(v175 + 24) == 1) && _isLayoutSchemataOnlyPseudoSuperscripts(v143);
    EQKit::Layout::Schemata::~Schemata(v143);
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_3;
    v142[3] = &unk_279D465A8;
    v142[4] = a4;
    v142[5] = &v174;
    v142[6] = &v147;
    v142[7] = a1;
    EQKitLayoutManager::layoutBox(a1, a4, !v15, 0, 2, 0, v142, v143);
  }

  else
  {
    EQKit::ILayout::ILayout(v143, 0);
    v15 = 0;
  }

  v17 = v152[0];
  v18 = v143[0];
  if (*(v175 + 24) == 1)
  {
    v19 = *(v8 + 80);
    if (*(v8 + 104))
    {
      v16.n128_u64[0] = *(v8 + 112);
    }

    else
    {
      v16.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v8);
    }

    v25 = (*(*v19 + 40))(v19, 0, v8 + 8, v16);
    v28 = *(v8 + 80);
    if (*(v8 + 104))
    {
      v27.n128_u64[0] = *(v8 + 112);
    }

    else
    {
      v27.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v8);
    }

    v26 = (*(*v28 + 40))(v28, 1, v8 + 8, v27);
  }

  else
  {
    v20 = v161;
    [v161 depth];
    v22 = v21;
    v23 = v157[3];
    [v20 height];
    v25 = v22 + v23;
    v26 = v24.n128_f64[0] - v148[3];
  }

  v29 = *(v8 + 80);
  if (*(v8 + 104))
  {
    v24.n128_u64[0] = *(v8 + 112);
  }

  else
  {
    v24.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v8);
  }

  v31 = (*(*v29 + 40))(v29, 8, v8 + 8, v24);
  v32 = *(v8 + 80);
  if (*(v8 + 104))
  {
    v30.n128_u64[0] = *(v8 + 112);
  }

  else
  {
    v30.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v8);
  }

  v33 = (*(*v32 + 40))(v32, 7, v8 + 8, v30);
  [v17 height];
  if (v25 <= v34 - v31)
  {
    [v17 height];
    v25 = v35 - v31;
  }

  [v18 depth];
  if (v26 <= v33 + v36.n128_f64[0])
  {
    [v18 depth];
    v26 = v33 + v36.n128_f64[0];
  }

  if (v18)
  {
    v37 = v15;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v26 = 0.0;
    if ((*(*(a1 + 32) + 16) & 1) == 0)
    {
      EQKitLayoutManager::lengthForMetric(a1, 29);
      v167[3] = v36.n128_f64[0] + v167[3];
    }
  }

  if (v17)
  {
    v38 = v18 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  v134 = v39;
  if (!v38)
  {
    v40 = *(v8 + 80);
    if (*(v8 + 104))
    {
      v36.n128_u64[0] = *(v8 + 112);
    }

    else
    {
      v36.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v8);
    }

    v41 = (*(*v40 + 40))(v40, 9, v8 + 8, v36);
    [v18 depth];
    v43 = v42;
    [v17 height];
    v45 = v26 - v43;
    v46 = v45 - (v44.n128_f64[0] - v25);
    if (v46 < v41)
    {
      v47 = *(v8 + 80);
      if (*(v8 + 104))
      {
        v44.n128_u64[0] = *(v8 + 112);
      }

      else
      {
        v44.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v8);
      }

      v48 = (*(*v47 + 40))(v47, 10, v8 + 8, v44);
      v49 = v41 - v46;
      if (v45 < v48)
      {
        v50 = v48 - v45;
        v51 = v49 - v50;
        v52 = v50 <= v49;
        v49 = 0.0;
        if (v52)
        {
          v49 = v51;
        }

        v26 = v26 + v50;
      }

      v25 = v25 + v49;
    }
  }

  v53 = v163;
  v54 = v163 & 0x3F | 0x40;
  v163 = v163 & 0xFF3F | 0x40;
  v153 = v153 & 0xFFCF | 0x10;
  v144 = v144 & 0xFFCF | 0x10;
  v55 = (v53 >> 4) & 3;
  if (v55 <= 1)
  {
    if (v55)
    {
      v56 = 31;
    }

    else
    {
      v56 = 30;
    }

    goto LABEL_74;
  }

  if (v55 == 2)
  {
    v56 = 32;
LABEL_74:
    EQKitLayoutManager::lengthForMetric(a1, v56);
    v58 = v57;
    v54 = v163;
    goto LABEL_76;
  }

  v58 = 0;
LABEL_76:
  v59 = v54 >> 6;
  if (v59 > 1)
  {
    v61 = 0.0;
    if (v59 != 2)
    {
      goto LABEL_83;
    }

    v60 = 32;
  }

  else if (v59)
  {
    v60 = 31;
  }

  else
  {
    v60 = 30;
  }

  EQKitLayoutManager::lengthForMetric(a1, v60);
LABEL_83:
  v164 = v58;
  v165 = v61;
  v62 = v153;
  v63 = (v153 >> 4) & 3;
  if (v63 <= 1)
  {
    if (v63)
    {
      v64 = 31;
    }

    else
    {
      v64 = 30;
    }

    goto LABEL_89;
  }

  if (v63 == 2)
  {
    v64 = 32;
LABEL_89:
    EQKitLayoutManager::lengthForMetric(a1, v64);
    v66 = v65;
    v62 = v153;
    goto LABEL_91;
  }

  v66 = 0.0;
LABEL_91:
  v67 = v62 >> 6;
  if (v67 > 1)
  {
    v69 = 0;
    if (v67 != 2)
    {
      goto LABEL_98;
    }

    v68 = 32;
  }

  else if (v67)
  {
    v68 = 31;
  }

  else
  {
    v68 = 30;
  }

  EQKitLayoutManager::lengthForMetric(a1, v68);
LABEL_98:
  v154 = v66;
  v155 = v69;
  v70 = v144;
  v71 = (v144 >> 4) & 3;
  if (v71 <= 1)
  {
    if (v71)
    {
      v72 = 31;
    }

    else
    {
      v72 = 30;
    }

    goto LABEL_104;
  }

  if (v71 == 2)
  {
    v72 = 32;
LABEL_104:
    EQKitLayoutManager::lengthForMetric(a1, v72);
    v74 = v73;
    v70 = v144;
    goto LABEL_106;
  }

  v74 = 0.0;
LABEL_106:
  v75 = v70 >> 6;
  if (v75 > 1)
  {
    v77 = 0;
    if (v75 != 2)
    {
      goto LABEL_113;
    }

    v76 = 32;
  }

  else if (v75)
  {
    v76 = 31;
  }

  else
  {
    v76 = 30;
  }

  EQKitLayoutManager::lengthForMetric(a1, v76);
LABEL_113:
  v145 = v74;
  v146 = v77;
  v78 = 0.0;
  v79 = 0.0;
  v80 = 0.0;
  v81 = MEMORY[0x277CBF348];
  if (v17)
  {
    if (*(v179 + 3) != 0.0 && v25 != 0.0 || v171[3] != 0.0)
    {
      v82 = _startsWithToken(a3, *(a1 + 40));
      v83 = 0.0;
      if (v82)
      {
        v83 = v25 * tan(*(v179 + 3));
      }

      v80 = v83 - v171[3];
    }

    v84 = v165;
    v85 = v154;
    v86 = *(a1 + 32);
    v87 = v163;
    v88 = *v81;
    v89 = v81[1];
    v90 = v161;
    v91 = v153;
    [v161 opticalAlignWidth];
    if (v84 >= v85)
    {
      v93 = v84;
    }

    else
    {
      v93 = v85;
    }

    v79 = EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(v86, (v87 >> 2) & 3, v90, v91 & 3, v152[0], v88, v89, v80 + v92, v25, v93);
  }

  v94 = 0.0;
  if (v18)
  {
    v133 = v80;
    if ((*(v179 + 3) == 0.0 || v26 == 0.0) && v167[3] == 0.0)
    {
      v97 = v25;
    }

    else
    {
      v95 = _startsWithToken(a4, *(a1 + 40));
      v96 = 0.0;
      if (v95)
      {
        v96 = v26 * tan(*(v179 + 3));
      }

      v97 = v25;
      v94 = v167[3] - v96;
    }

    v98 = v165;
    v99 = v145;
    v100 = *(a1 + 32);
    v101 = v163;
    v102 = *v81;
    v103 = v81[1];
    v104 = v161;
    v105 = v144;
    [v161 opticalAlignWidth];
    if (v98 >= v99)
    {
      v107 = v98;
    }

    else
    {
      v107 = v99;
    }

    v78 = EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(v100, (v101 >> 2) & 3, v104, v105 & 3, v143[0], v102, v103, v94 + v106, -v26, v107);
    v25 = v97;
    v80 = v133;
  }

  v108 = 0;
  if (v79 < v78)
  {
    v79 = v78;
  }

  if (v17 && v80 + v79 != 0.0)
  {
    v109 = [[EQKitHSpace alloc] initWithWidth:v80 + v79];
    v108 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v109, v17, 0}];
  }

  if (v18 && v94 + v79 != 0.0 && (v110 = -[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v94 + v79), v111 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v110, v18, 0}], v110, v111))
  {
    v112 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v111];
    if (!v108)
    {
LABEL_144:
      v113 = v17;
      goto LABEL_147;
    }
  }

  else
  {
    v112 = v18;
    v111 = 0;
    if (!v108)
    {
      goto LABEL_144;
    }
  }

  v113 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v108];
LABEL_147:
  v114 = v113;
  EQKit::ILayout::ILayout(v140, 0);
  if (v134)
  {
    [v18 layoutDepth];
    v116 = v115;
    [v17 layoutHeight];
    v118 = [[EQKitVSpace alloc] initWithHeight:v26 - v116 depth:v25 - v117];
    v119 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v112, v118, v114, 0}];
    v120 = [[EQKitVBox alloc] initWithChildBoxes:v119 pivotIndex:1];
    EQKit::ILayout::ILayout(v139, &v120->super.super);
    EQKit::ILayout::operator=(v140, v139);
    EQKit::ILayout::~ILayout(v139);
  }

  else if (v17)
  {
    v121 = [[EQKitVShift alloc] initWithBox:v114 offset:-v25];
    EQKit::ILayout::ILayout(v139, &v121->super);
    EQKit::ILayout::operator=(v140, v139);
    EQKit::ILayout::~ILayout(v139);
  }

  else if (v18)
  {
    v122 = [[EQKitVShift alloc] initWithBox:v112 offset:v26];
    EQKit::ILayout::ILayout(v139, &v122->super);
    EQKit::ILayout::operator=(v140, v139);
    EQKit::ILayout::~ILayout(v139);
  }

  EQKitLayoutManager::beginRow(a1, 1, 0);
  v163 = v163 & 0xFFF3 | 4;
  v141 = v141 & 0xFFFC | 1;
  EQKit::ILayout::ILayout(v138, &v161);
  EQKitLayoutManager::addRowChild(a1, v138, a2);
  EQKit::ILayout::~ILayout(v138);
  EQKit::ILayout::ILayout(v137, v140);
  v123 = EQKitLayoutManager::currentNode(a1);
  EQKitLayoutManager::addRowChild(a1, v137, v123);
  EQKit::ILayout::~ILayout(v137);
  EQKitLayoutManager::endRow(a1, a5);
  if ((*(EQKitLayoutManager::layoutContext(a1) + 16) & 1) == 0 && (v163 & 0x1000) != 0)
  {
    if (a4)
    {
      v125 = (v144 >> 12) & 1;
    }

    else
    {
      v125 = 0;
    }

    v126 = v153 & 0x1C00;
    if (a3)
    {
      v127 = (v153 >> 12) & 1;
    }

    else
    {
      v127 = 0;
    }

    v128 = v126 > 0x1000 && a3 != 0;
    v129 = (v144 & 0x1C00u) > 0x1000 && a4 != 0;
    v130 = v125 + v127;
    if ((a3 != 0) != (a4 != 0) && v130 == 1 || (a3 ? (v131 = a4 == 0) : (v131 = 1), v131 ? (v132 = 0) : (v132 = 1), !v131 && (v144 & 0x1C00u) > 0x1000 && v126 > 0x1000 || (v124 = 0, (v132 & (v128 ^ v129)) == 1) && v130 == 2))
    {
      v124 = 3;
    }
  }

  else
  {
    v124 = 0;
  }

  EQKit::ILayout::setVerticalContentClassification(a5, v124);
  *(a5 + 16) = *(a5 + 16) & 0xFFF3 | 8;
  EQKit::ILayout::~ILayout(v140);
  EQKit::ILayout::~ILayout(v143);
  _Block_object_dispose(&v147, 8);
  EQKit::ILayout::~ILayout(v152);
  _Block_object_dispose(&v156, 8);
  EQKit::ILayout::~ILayout(&v161);
  _Block_object_dispose(&v166, 8);
  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(&v178, 8);
}

void sub_26C70D6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  EQKit::ILayout::~ILayout(&a30);
  EQKit::ILayout::~ILayout(&a37);
  EQKit::ILayout::~ILayout(&a52);
  _Block_object_dispose(&a59, 8);
  EQKit::ILayout::~ILayout(&a71);
  _Block_object_dispose(&STACK[0x228], 8);
  EQKit::ILayout::~ILayout(&STACK[0x2A0]);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose((v71 - 248), 8);
  _Block_object_dispose((v71 - 216), 8);
  _Block_object_dispose((v71 - 184), 8);
  _Unwind_Resume(a1);
}

void ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke(void *a1, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (a1[4] == a2 && (v6 = a1[10], EQKit::Layout::Schemata::isToken(this)))
  {
    v7 = EQKitLayoutManager::layoutContext(v6);
    if ((*(v7 + 104) & 4) != 0)
    {
      v8 = *(v7 + 128);
    }

    else
    {
      v8 = EQKitLayoutContext::pComputeSlantAngle(v7);
    }

    *(*(a1[6] + 8) + 24) = v8;
    v10 = EQKit::Layout::Schemata::tokenSchemata(this);
    if (v10)
    {
      v11 = [v10 schemataUnicharOrNul];
      v12 = *(EQKitLayoutManager::layoutContext(v6) + 80);
      v13 = EQKitLayoutManager::layoutContext(v6);
      if ((*(*v12 + 120))(v12, v11, v13 + 8))
      {
        *(*(a1[7] + 8) + 24) = 1;
      }

      if (v11)
      {
        *(*(a1[8] + 8) + 24) = EQKitLayoutManager::lengthForCharacterProperty(v6, 10, v11, 0.0);
        *(*(a1[9] + 8) + 24) = EQKitLayoutManager::lengthForCharacterProperty(v6, 9, v11, 0.0);
      }
    }
  }

  else
  {
    v9 = a1[5] == a2 && *(this + 2) == 2;
    if (v9 && ![EQKit::Layout::Schemata::children(this) count])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

void ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = EQKitLayoutManager::layoutContext(*(a1 + 56));
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

    *(*(*(a1 + 48) + 8) + 24) = (*(*v6 + 40))(v6, 6, v5 + 8, v4);
  }
}

BOOL _isLayoutSchemataOnlyPseudoSuperscripts(const EQKit::Layout::Schemata *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!EQKit::Layout::Schemata::isToken(a1))
  {
    if (*(a1 + 2) == 2)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = EQKit::Layout::Schemata::children(a1);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (!v5)
      {
        return 1;
      }

      v6 = *v12;
LABEL_8:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          [v8 layoutSchemata];
        }

        else
        {
          memset(v10, 0, sizeof(v10));
        }

        isLayoutSchemataOnlyPseudoSuperscripts = _isLayoutSchemataOnlyPseudoSuperscripts(v10);
        EQKit::Layout::Schemata::~Schemata(v10);
        if ((isLayoutSchemataOnlyPseudoSuperscripts & 1) == 0)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          result = 1;
          if (v5)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }

    return 0;
  }

  v2 = [EQKit::Layout::Schemata::tokenSchemata(a1) schemataUnicharOrNul];

  return EQKit::Unicode::isPseudoScript(v2);
}

void ___ZN18EQKitLayoutManager20layoutSubsuperscriptEPU26objcproto15EQKitLayoutNode11objc_objectS1_S1__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = EQKitLayoutManager::layoutContext(*(a1 + 56));
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

    *(*(*(a1 + 48) + 8) + 24) = (*(*v6 + 40))(v6, 5, v5 + 8, v4);
  }
}

double EQKitLayoutManager::kerningDistance(id *a1, unsigned int a2)
{
  if (a2 > 2)
  {
    return 0.0;
  }

  EQKitLayoutManager::lengthForMetric(a1, a2 + 30);
  return result;
}

uint64_t _startsWithToken(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      [v3 layoutSchemata];
      if (EQKit::Layout::Schemata::isToken(&v6))
      {
        break;
      }

      if (v7 == 4)
      {
        if (*(a2 + 7) != 1)
        {
          goto LABEL_12;
        }

        v5 = [EQKit::Layout::Schemata::subsuperscriptSchemata(&v6) schemataKernel];
      }

      else
      {
        if (v7 != 2 || (v4 = EQKit::Layout::Schemata::children(&v6), ![v4 count]))
        {
LABEL_12:
          EQKit::Layout::Schemata::~Schemata(&v6);
          return 0;
        }

        v5 = [v4 objectAtIndex:0];
      }

      v3 = v5;
      EQKit::Layout::Schemata::~Schemata(&v6);
      if (!v3)
      {
        return 0;
      }
    }

    EQKit::Layout::Schemata::~Schemata(&v6);
    return 1;
  }

  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke(uint64_t result, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(result + 32) == a2)
  {
    v4 = result;
    v5 = *(result + 64);
    result = EQKit::Layout::Schemata::isToken(this);
    if (result)
    {
      *(*(v4[5] + 8) + 24) = [EQKit::Layout::Schemata::tokenSchemata(this) schemataUnicharOrNul];
      v6 = EQKitLayoutManager::layoutContext(v5);
      result = EQKit::Script::Info::operator=(*(v4[6] + 8) + 48, v6 + 8);
      *(*(v4[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t EQKit::Script::Info::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return a1;
}

uint64_t ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_2(uint64_t result, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    if (*(result + 32) == a2)
    {
      result = EQKit::Layout::Schemata::isToken(this);
      if (result)
      {
        *(*(*(v3 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_3(uint64_t a1, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(a1 + 64) == 1 && *(a1 + 32) == a2)
  {
    v4 = *(a1 + 56);
    if (EQKit::Layout::Schemata::isToken(this))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = EQKitLayoutManager::layoutContext(v4);
      v6 = EQKitLayoutContext::font(v5);
      *(*(*(a1 + 48) + 8) + 24) = CTFontGetXHeight(v6);
    }
  }
}

double EQKitLayoutManager::adjustStretchyWidth(EQKitLayoutManager *a1, void *a2, double a3)
{
  LODWORD(v18) = 1;
  *(&v18 + 1) = 0;
  v6 = EQKitLayoutManager::layoutContext(a1);
  v7 = [a2 operatorUnicharOrNul];
  v8 = *(a1 + 75);
  v19 = a2;
  v20 = 41;
  if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v8, v8 + 32, &v19, &v18))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZNK18EQKitLayoutManager19adjustStretchyWidthEPU41objcproto15EQKitLayoutNode13EQKitOperator11objc_objectd_block_invoke;
    v16[3] = &__block_descriptor_44_e5_d8__0l;
    v16[4] = a1;
    v17 = v7;
    v9 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(&v18, v6, v16);
    if (v9 < a3)
    {
      a3 = v9;
    }
  }

  LODWORD(v15) = 1;
  *(&v15 + 1) = 0;
  v10 = *(a1 + 75);
  v19 = a2;
  v20 = 40;
  if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v10, v10 + 32, &v19, &v15))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZNK18EQKitLayoutManager19adjustStretchyWidthEPU41objcproto15EQKitLayoutNode13EQKitOperator11objc_objectd_block_invoke_2;
    v13[3] = &__block_descriptor_44_e5_d8__0l;
    v13[4] = a1;
    v14 = v7;
    v11 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(&v15, v6, v13);
    if (v11 > a3)
    {
      return v11;
    }
  }

  return a3;
}

uint64_t ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_4(uint64_t result, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(result + 32) == a2)
  {
    v4 = result;
    v5 = *(result + 64);
    result = EQKit::Layout::Schemata::isToken(this);
    if (result)
    {
      *(*(v4[5] + 8) + 24) = [EQKit::Layout::Schemata::tokenSchemata(this) schemataUnicharOrNul];
      v6 = EQKitLayoutManager::layoutContext(v5);
      result = EQKit::Script::Info::operator=(*(v4[6] + 8) + 48, v6 + 8);
      *(*(v4[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_5(uint64_t result, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    if (*(result + 32) == a2)
    {
      result = EQKit::Layout::Schemata::isToken(this);
      if (result)
      {
        *(*(*(v3 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void ___ZN18EQKitLayoutManager15layoutUnderoverERKN5EQKit6Layout8SchemataEbPU26objcproto15EQKitLayoutNode11objc_object_block_invoke_6(uint64_t a1, uint64_t a2, EQKit::Layout::Schemata *this)
{
  if (*(a1 + 64) == 1 && *(a1 + 32) == a2)
  {
    v4 = *(a1 + 56);
    if (EQKit::Layout::Schemata::isToken(this))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = EQKitLayoutManager::layoutContext(v4);
      v6 = EQKitLayoutContext::font(v5);
      *(*(*(a1 + 48) + 8) + 24) = CTFontGetXHeight(v6);
    }
  }
}

EQKitVShift *EQKitLayoutManager::baselineAlignBox(EQKitLayoutManager *a1, void *a2, int a3)
{
  v4 = 0.0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [a2 height];
        v4 = -v16;
      }

      else if (a3 == 2)
      {
        [a2 vsize];
        v7 = v6 * 0.5;
        [a2 height];
        v9 = v7 - v8;
        v10 = EQKitLayoutManager::layoutContext(a1);
        if ((*(v10 + 104) & 2) != 0)
        {
          v11 = *(v10 + 120);
        }

        else
        {
          v11 = EQKitLayoutContext::pComputeMathAxis(v10);
        }

        v4 = v9 + v11;
      }

      goto LABEL_14;
    }

LABEL_8:
    [a2 vsize];
    v13 = v12 * 0.5;
    [a2 height];
    v4 = v13 - v14;
    goto LABEL_14;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_8;
  }

  if (a3 == 5)
  {
    [a2 depth];
    v4 = v15;
  }

LABEL_14:
  v17 = [[EQKitVShift alloc] initWithBox:a2 offset:v4];

  return v17;
}

uint64_t EQKitLayoutManager::layoutStack@<X0>(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, double a3@<D0>, double *a4@<X4>, uint64_t a5@<X2>, uint64_t a6@<X3>, EQKit::ILayout *a7@<X8>)
{
  v13 = EQKit::Layout::Schemata::stackSchemata(a2);
  EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(v18, this, v13, a5, a6, a3);
  std::deque<EQKitLayoutElementaryStack>::push_back(this + 62, v18);
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(v18);
  v14 = *(this + 67) + *(this + 66) - 1;
  v15 = (*(*(this + 63) + 8 * (v14 / 0x18)) + 168 * (v14 % 0x18));
  EQKitLayoutElementaryStack::layout(v15, a7);
  v16 = EQKitLayoutElementaryStack::baselineForRowAtIndex(v15, 2uLL);
  *a4 = v16 - EQKitLayoutElementaryStack::baselineForRowAtIndex(v15, 1uLL);
  return std::deque<EQKitLayoutElementaryStack>::pop_back(this + 62);
}

void sub_26C70E458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::~EQKitLayoutTable(EQKitLayoutTable *this)
{
  *this = &unk_287D33820;
  v4 = (this + 64);
  std::vector<EQKitLayoutTable::LayoutRow>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  EQKitLayoutTable::~EQKitLayoutTable(this);

  JUMPOUT(0x26D6A9A30);
}

double ___ZNK18EQKitLayoutManager19adjustStretchyWidthEPU41objcproto15EQKitLayoutNode13EQKitOperator11objc_objectd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = EQKitLayoutManager::layoutContext(v2);
  if (!v3)
  {
    return *(v4 + 24);
  }

  v5 = *(v4 + 80);
  v6 = *(a1 + 40);
  v7 = EQKitLayoutManager::layoutContext(v2);
  (*(*v5 + 136))(v5, v6, v7 + 8);
  return v8;
}

double ___ZNK18EQKitLayoutManager19adjustStretchyWidthEPU41objcproto15EQKitLayoutNode13EQKitOperator11objc_objectd_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = EQKitLayoutManager::layoutContext(v2);
  if (!v3)
  {
    return *(v4 + 24);
  }

  v5 = *(v4 + 80);
  v6 = *(a1 + 40);
  v7 = EQKitLayoutManager::layoutContext(v2);
  (*(*v5 + 136))(v5, v6, v7 + 8);
  return v8;
}

double ___ZN18EQKitLayoutManager10resolveRowEP7NSArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = EQKitLayoutManager::layoutContext(v2);
  if (!v3)
  {
    return *(v4 + 24);
  }

  v5 = *(v4 + 80);
  v6 = *(a1 + 40);
  v7 = EQKitLayoutManager::layoutContext(v2);
  (*(*v5 + 136))(v5, v6, v7 + 8);
  return v8;
}

double ___ZN18EQKitLayoutManager10resolveRowEP7NSArray_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = EQKitLayoutManager::layoutContext(v2);
  if (!v3)
  {
    return *(v4 + 24);
  }

  v5 = *(v4 + 80);
  v6 = *(a1 + 40);
  v7 = EQKitLayoutManager::layoutContext(v2);
  (*(*v5 + 136))(v5, v6, v7 + 8);
  return v8;
}

uint64_t std::deque<EQKitLayoutTable>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (*v6 + 96 * (v5 % 0x2A) != v7)
    {
      v8 = (*v6 + 96 * (v5 % 0x2A));
      do
      {
        v9 = *v8;
        v8 += 12;
        (*v9)();
        if (v8 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<EQKitLayoutElementaryStack>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x18];
    v7 = (*v6 + 168 * (v5 % 0x18));
    v8 = v2[(a1[5] + v5) / 0x18] + 168 * ((a1[5] + v5) % 0x18);
    if (v7 != v8)
    {
      do
      {
        EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack(v7);
        v7 = (v9 + 168);
        if (v7 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 12;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 24;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::deque<EQKitLayoutStretchedOperator>::~deque[abi:nn200100](void *a1)
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
    v5 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 102;
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

uint64_t std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
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

uint64_t std::deque<EQKitLayoutRow>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x19];
    v7 = (*v6 + 160 * (v5 % 0x19));
    v8 = v2[(a1[5] + v5) / 0x19] + 160 * ((a1[5] + v5) % 0x19);
    if (v7 != v8)
    {
      do
      {
        EQKitLayoutRow::~EQKitLayoutRow(v7);
        v7 = (v9 + 160);
        if (v7 - *v6 == 4000)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 12;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 25;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t std::deque<EQKitLayoutContext>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1E];
    v7 = v2[(a1[5] + v5) / 0x1E] + 136 * ((a1[5] + v5) % 0x1E);
    if (*v6 + 136 * (v5 % 0x1E) != v7)
    {
      v8 = (*v6 + 136 * (v5 % 0x1E));
      do
      {
        v9 = *v8;
        v8 += 17;
        (*v9)();
        if (v8 - *v6 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 15;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 30;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 12);
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

      v9 = *(v13 + 12);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 10) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 10) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = v7[4];
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 10))
  {
    return v2;
  }

  return v7;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = (v7 + 6);
LABEL_3:
    std::string::operator=(a4, v9);
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

      v9 = (v13 + 6);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>>(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 24);
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

      v9 = *(v13 + 24);
      goto LABEL_3;
    }
  }

  return result;
}

EQKit::Script::Info *EQKit::Script::Info::Info(EQKit::Script::Info *this, const Info *a2)
{
  *this = *a2;
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 3) = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  v3 = *(a2 + 4);
  *(this + 4) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 3);
    v10 = v7[8];
LABEL_3:
    *(a4 + 16) = v10;
    *a4 = v9;
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

      v9 = *(v14 + 3);
      v10 = v14[8];
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
    std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(a4, v9, v10, (v10 - v9) >> 2);
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

void *std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:nn200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitTypes::Notation::Enum>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const,std::char_traits<char><std::allocator<char>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, std::vector<std::string> *a4)
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
    std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(a4, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
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

void std::vector<EQKitLayoutTable::LayoutRow>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EQKitLayoutTable::LayoutRow>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EQKitLayoutTable::LayoutRow>::clear[abi:nn200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v8 = v4;
      std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:nn200100](&v8);
      v5 = *(v4 - 4);
      if (v5)
      {
        *(v4 - 3) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 7);
      if (v6)
      {
        *(v4 - 6) = v6;
        operator delete(v6);
      }

      v7 = v4 - 7;
      v4 -= 10;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

void std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EQKitLayoutTable::LayoutCell>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EQKitLayoutTable::LayoutCell>::clear[abi:nn200100](char **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = (v2 - 56);
    do
    {
      EQKit::ILayout::~ILayout(v4);
      EQKitLayoutRow::~EQKitLayoutRow((v4 - 160));
      v5 = *(v4 - 25);
      if (v5)
      {
        *(v4 - 24) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 28);
      if (v6)
      {
        *(v4 - 27) = v6;
        operator delete(v6);
      }

      v7 = v4 - 224;
      v4 = (v4 - 280);
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 3);
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

      v9 = *(v13 + 3);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t std::vector<EQKit::ILayout>::__init_with_size[abi:nn200100]<EQKit::ILayout*,EQKit::ILayout*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKit::ILayout>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<EQKit::ILayout>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKit::ILayout>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKit::ILayout>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

EQKitLayoutContext *std::deque<EQKitLayoutContext>::push_back(void *a1, EQKitLayoutContext *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 30 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutContext>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x1E)) + 136 * (v7 % 0x1E));
  }

  result = EQKitLayoutContext::EQKitLayoutContext(v8, a2);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutContext>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1E;
  v3 = v1 - 30;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_26C70FC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<EQKitLayoutContext *>::emplace_front<EQKitLayoutContext *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<EQKitLayoutContext *>::emplace_front<EQKitLayoutContext *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::deque<EQKitLayoutContext>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x1E)) + 136 * (v2 % 0x1E)))();
  --a1[5];

  return std::deque<EQKitLayoutContext>::__maybe_remove_back_spare[abi:nn200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutContext>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 30 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1E)
  {
    a2 = 1;
  }

  if (v5 < 0x3C)
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

void *std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::push_back(void *result, void *a2)
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
    result = std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_back<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(a1, &v10);
}

void sub_26C710420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_back<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_front<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)> &>::emplace_back<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)> &>::emplace_front<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::push_back(void *result, void *a2)
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
    result = std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_back<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(a1, &v10);
}

void sub_26C710AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

__n128 std::deque<EQKitLayoutStretchedOperator>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<EQKitLayoutStretchedOperator>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutStretchedOperator>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_26C710DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutStretchedOperator>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
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

EQKitLayoutElementaryStack *std::deque<EQKitLayoutElementaryStack>::push_back(void *a1, const EQKitLayoutElementaryStack *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 24 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutElementaryStack>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x18)) + 168 * (v7 % 0x18));
  }

  result = EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(v8, a2);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutElementaryStack>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x18;
  v3 = v1 - 24;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_26C7110E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutElementaryStack>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack((*(a1[1] + 8 * (v2 / 0x18)) + 168 * (v2 % 0x18)));
  --a1[5];

  return std::deque<EQKitLayoutElementaryStack>::__maybe_remove_back_spare[abi:nn200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutElementaryStack>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 24 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x18)
  {
    a2 = 1;
  }

  if (v5 < 0x30)
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

double std::deque<EQKitLayoutTable>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 42 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutTable>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  }

  v9 = *(a2 + 8);
  *v8 = &unk_287D33820;
  *(v8 + 8) = v9;
  *(v8 + 80) = 0;
  result = 0.0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 88) = *(a2 + 88);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutTable>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_26C71149C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutTable>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)))();
  --a1[5];

  return std::deque<EQKitLayoutTable>::__maybe_remove_back_spare[abi:nn200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutTable>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
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

void *std::deque<unsigned long>::push_back(void *result, void *a2)
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
    result = std::deque<unsigned long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<unsigned long>::__add_back_capacity(void *a1)
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

void sub_26C711830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

EQKitLayoutRow *std::deque<EQKitLayoutRow>::push_back(void *a1, EQKitLayoutRow *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 25 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutRow>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19));
  }

  result = EQKitLayoutRow::EQKitLayoutRow(v8, a2);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutRow>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x19;
  v3 = v1 - 25;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_26C711F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutRow>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  EQKitLayoutRow::~EQKitLayoutRow((*(a1[1] + 8 * (v2 / 0x19)) + 160 * (v2 % 0x19)));
  --a1[5];

  return std::deque<EQKitLayoutRow>::__maybe_remove_back_spare[abi:nn200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutRow>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
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

void std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        EQKit::ILayout::~ILayout((v4 - 56));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL OUTLINED_FUNCTION_0()
{
  v2 = *v1;
  *v0 = *v1;
  return v2 == 0;
}

BOOL EQKitLayoutManager::popContext()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::popContext()") description:{@"EQKitLayoutManager.mm", 77, @"contextStack needs to contain an element"}];
  return OUTLINED_FUNCTION_1();
}

uint64_t EQKitLayoutManager::layoutContext(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"const EQKitLayoutContext &EQKitLayoutManager::layoutContext() const") description:{@"EQKitLayoutManager.mm", 86, @"contextStack needs to contain an element"}];
  v9 = *a1;
  *a3 = *a1;
  if (v9)
  {
    return 1;
  }

  result = 0;
  *a4 = a2 + 48;
  return result;
}

BOOL EQKitLayoutManager::layoutIntoRow()
{
  OUTLINED_FUNCTION_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::layoutIntoRow(EQKitLayoutRow & description:{id<EQKitLayoutNode>, NSInteger, BOOL, LayoutCallback)"), @"EQKitLayoutManager.mm", 263, @"invalid state"}];
  return OUTLINED_FUNCTION_0();
}

BOOL EQKitLayoutManager::addRowChild()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::addRowChild(EQKit::ILayout description:{id<EQKitLayoutNode>)"), @"EQKitLayoutManager.mm", 3132, @"invalid state"}];
  return OUTLINED_FUNCTION_1();
}

BOOL EQKitLayoutManager::addOperatorLeftSpace()
{
  OUTLINED_FUNCTION_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::addOperatorLeftSpace(CGFloat)") description:{@"EQKitLayoutManager.mm", 289, @"invalid state"}];
  return OUTLINED_FUNCTION_0();
}

BOOL EQKitLayoutManager::addOperatorRightSpace()
{
  OUTLINED_FUNCTION_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::addOperatorRightSpace(CGFloat)") description:{@"EQKitLayoutManager.mm", 318, @"invalid state"}];
  return OUTLINED_FUNCTION_0();
}

BOOL EQKitLayoutManager::clearOperatorSpace()
{
  OUTLINED_FUNCTION_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::clearOperatorSpace()") description:{@"EQKitLayoutManager.mm", 337, @"invalid state"}];
  return OUTLINED_FUNCTION_0();
}

uint64_t EQKitLayoutManager::currentNode(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  result = [v8 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"id<EQKitLayoutNode> EQKitLayoutManager::currentNode() const") description:{@"EQKitLayoutManager.mm", 3144, @"invalid state"}];
  *a3 = *a1;
  *a4 = *a2;
  return result;
}

BOOL EQKitLayoutManager::resolveRow()
{
  OUTLINED_FUNCTION_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::resolveRow(NSArray *)") description:{@"EQKitLayoutManager.mm", 2957, @"invalid state"}];
  return OUTLINED_FUNCTION_0();
}

{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutManager::resolveRow(NSArray *)") description:{@"EQKitLayoutManager.mm", 2961, @"invalid state"}];
  return OUTLINED_FUNCTION_1();
}

void EQKitLayoutContext::EQKitLayoutContext(EQKitLayoutContext *this, double a2, const Collection *a3, const __CFString *a4, char a5)
{
  *this = &unk_287D33840;
  *(this + 1) = 0;
  *(this + 16) = a5;
  *(this + 17) = 0;
  *(this + 5) = 1;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 5) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  *(this + 6) = a2;
  *(this + 9) = 0;
  *(this + 10) = a3;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0x3FE6B851EB851EB8;
  *(this + 8) = fmin(a2, 8.0);
  bzero(this + 104, 1uLL);
  bzero(this + 112, 0x18uLL);
}

void EQKitLayoutContext::EQKitLayoutContext(EQKitLayoutContext *this, const EQKitLayoutContext *a2)
{
  *this = &unk_287D33840;
  EQKit::Script::Info::Info((this + 8), (a2 + 8));
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 72) = *(a2 + 72);
  v5 = *(a2 + 11);
  v4 = *(a2 + 12);
  *(this + 11) = v5;
  *(this + 12) = v4;
  *(this + 104) = *(a2 + 104);
  v6 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 7) = v6;
  if (v5)
  {
    CFRetain(v5);
    v4 = *(this + 12);
  }

  if (v4)
  {
    CFRetain(v4);
  }
}

void sub_26C71272C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

void EQKitLayoutContext::EQKitLayoutContext(uint64_t a1, EQKitLayoutContext *this, uint64_t a3, void *a4, uint64_t a5, char a6, int a7)
{
  *a1 = &unk_287D33840;
  *(a1 + 8) = 0;
  v13 = a1 + 8;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0x4028000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 24);
  *(a1 + 56) = *(a3 + 56);
  v14 = (a1 + 56);
  v15 = EQKitLayoutManager::fontCollection(this);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = v15;
  v45 = 0;
  v46 = 1;
  v16 = *(this + 75);
  v38 = a4;
  v39 = 9;
  v17 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>>(v16, v16 + 296, &v38, &v45);
  v18 = *(a3 + 8);
  if (v17)
  {
    v19 = EQKit::ScriptLevel::resolveWithBase(&v45, *(a3 + 8));
    v18 = *(a3 + 8);
  }

  else
  {
    v19 = v18 + a5;
  }

  v20 = *(this + 75);
  v38 = a4;
  v39 = 42;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>>(v20, v20 + 440, &v38, v14);
  LODWORD(cf) = 1;
  *(&cf + 1) = 0;
  v21 = *(this + 75);
  v38 = a4;
  v39 = 43;
  if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v21, v21 + 32, &v38, &cf))
  {
    *(a1 + 64) = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(&cf, a3, fmin(*(a1 + 48), 8.0));
  }

  *&cf = 0;
  v22 = *(this + 75);
  v38 = a4;
  v39 = 44;
  if (!EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>(v22, v22 + 536, &v38, &cf))
  {
    v23 = *(a3 + 96);
    *(a1 + 96) = v23;
    if (!v23)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v23 = cf;
  *(a1 + 96) = cf;
  if (v23 || (v24 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v24, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKitLayoutContext::EQKitLayoutContext(EQKitLayoutManager &, const EQKitLayoutContext &, id<EQKitLayoutNode>, NSInteger, BOOL, EQKit::Script::Cramped::Style)"), @"EQKitLayoutContext.mm", 104, @"CGColor not retrieved by attribute collection."), (v23 = *(a1 + 96)) != 0))
  {
LABEL_11:
    CFRetain(v23);
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  LODWORD(cf) = 0;
  if ([*(a1 + 72) conformsToProtocol:&unk_287DE0E78])
  {
    v25 = *(a1 + 72);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(this + 75);
  v38 = a4;
  v39 = 17;
  v27 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v26, v26 + 368, &v38, &cf);
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    LODWORD(cf) = [v25 scriptVariant];
    goto LABEL_24;
  }

  if (v25)
  {
LABEL_24:
    LODWORD(v25) = [v25 scriptContext];
  }

  v29 = *(a1 + 48);
  v30 = v29 * pow(*(a1 + 56), (v19 - v18));
  if (v30 <= *(a1 + 64))
  {
    v31 = *(a1 + 64);
  }

  else
  {
    v31 = v30;
  }

  v32 = [a4 operatorCore];
  if (v32 == a4)
  {
    v33 = EQKitLayoutManager::isOperatorLargeOp(this, v32);
  }

  else
  {
    v33 = 0;
  }

  if (a7 == 2)
  {
    v34 = 0;
  }

  else if (a7 == 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = *(a3 + 17);
  }

  v35 = *(a3 + 40);
  v38 = v19;
  LOBYTE(v39) = a6;
  BYTE1(v39) = v34 & 1;
  BYTE2(v39) = v33;
  v40 = cf;
  v41 = v31;
  v42 = v25;
  v43 = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  EQKit::Script::Info::operator=(v13, &v38);
  if (v43)
  {
    CFRelease(v43);
  }

  if (*(a1 + 24) == *(a3 + 24) && *(a1 + 20) == *(a3 + 20))
  {
    v36 = *(a3 + 88);
    *(a1 + 88) = v36;
    if (v36)
    {
      CFRetain(v36);
    }
  }

  bzero((a1 + 104), 1uLL);
}

void sub_26C712AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf, uint64_t a15)
{
  v17 = *(v15 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  _Unwind_Resume(exception_object);
}

void EQKitLayoutContext::~EQKitLayoutContext(EQKitLayoutContext *this)
{
  *this = &unk_287D33840;
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
    *(this + 11) = 0;
  }

  CGColorRelease(*(this + 12));
  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  EQKitLayoutContext::~EQKitLayoutContext(this);

  JUMPOUT(0x26D6A9A30);
}

void sub_26C712B98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

void EQKitLayoutContext::pInvalidateFonts(EQKitLayoutContext *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
    *(this + 11) = 0;
  }
}

uint64_t EQKitLayoutContext::font(EQKitLayoutContext *this)
{
  result = *(this + 11);
  if (!result)
  {
    result = (*(**(this + 10) + 56))(*(this + 10), this + 8);
    *(this + 11) = result;
  }

  return result;
}

double EQKitLayoutContext::pComputeMathAxis(EQKitLayoutContext *this)
{
  v2 = *(this + 11);
  if (v2 || (v2 = (*(**(this + 10) + 56))(*(this + 10), this + 8), (*(this + 11) = v2) != 0))
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v2 = [v3 initWithObjectsAndKeys:{v2, *MEMORY[0x277CC4838], 0}];
  }

  v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"−" attributes:v2];
  v5 = CTLineCreateWithAttributedString(v4);
  FakeContext = EQKitUtilGetFakeContext();
  ImageBounds = CTLineGetImageBounds(v5, FakeContext);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  CFRelease(v5);

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  *(this + 15) = CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  *(this + 14) = CGRectGetHeight(v14);
  *(this + 104) |= 3u;
  return *(this + 15);
}

CGFloat EQKitLayoutContext::pComputeSlantAngle(EQKitLayoutContext *this)
{
  *(this + 104) |= 4u;
  v2 = *(this + 11);
  if (!v2)
  {
    v2 = (*(**(this + 10) + 56))(*(this + 10), this + 8);
    *(this + 11) = v2;
  }

  SlantAngle = CTFontGetSlantAngle(v2);
  result = (SlantAngle + SlantAngle) * 3.14159265 / 360.0;
  *(this + 16) = result;
  return result;
}

CGFloat EQKitLayoutContext::unitValue(const __CTFont **this, int a2)
{
  v3 = 1.0;
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        if ((this[13] & 1) == 0)
        {
          EQKitLayoutContext::pComputeMathAxis(this);
        }

        return *(this + 14);
      }

      if (a2 != 6)
      {
        return v3;
      }
    }

LABEL_9:
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"virtual CGFloat EQKitLayoutContext::unitValue(EQKitLength::Unit) const") description:{@"EQKitLayoutContext.mm", 283, @"invalid unit"}];
    return v3;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return *(this + 3);
    }

    return v3;
  }

  v5 = this[11];
  if (!v5)
  {
    v5 = (*(*this[10] + 56))(this[10], this + 8);
    this[11] = v5;
    if (!v5)
    {
      return v3;
    }
  }

  return CTFontGetXHeight(v5);
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = v7[6];
    v10 = *(v7 + 56);
LABEL_3:
    *(a4 + 8) = v10;
    *a4 = v9;
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

      v9 = v14[6];
      v10 = *(v14 + 56);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = (v7 + 6);
LABEL_3:
    EQKitTypes::CFRetainRelease::operator=(a4, v9);
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

      v9 = (v13 + 6);
      goto LABEL_3;
    }
  }

  return result;
}

const void **EQKitTypes::CFRetainRelease::operator=(const void **a1, CFTypeRef *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    v5 = CFRetain(v5);
  }

  *a1 = v5;
  return a1;
}

void EQKit::Layout::Schemata::~Schemata(id *this)
{
  *this = &unk_287D33868;
}

{
  *this = &unk_287D33868;
}

{
  *this = &unk_287D33868;

  JUMPOUT(0x26D6A9A30);
}

uint64_t EQKit::Layout::Schemata::Schemata(uint64_t this)
{
  *this = &unk_287D33868;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_287D33868;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

EQKit::Layout::Schemata *EQKit::Layout::Schemata::Schemata(EQKit::Layout::Schemata *this, const EQKit::Layout::Schemata *a2)
{
  *this = &unk_287D33868;
  *(this + 2) = *(a2 + 2);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = [*(a2 + 3) copy];
  return this;
}

{
  *this = &unk_287D33868;
  *(this + 2) = *(a2 + 2);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = [*(a2 + 3) copy];
  return this;
}

uint64_t EQKit::Layout::Schemata::Schemata(uint64_t result, int a2)
{
  *result = &unk_287D33868;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_287D33868;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t EQKit::Layout::Schemata::Schemata(uint64_t a1, int a2, void *a3)
{
  *a1 = &unk_287D33868;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_287D33868;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_287D33868;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = [a3 copy];
  return a1;
}

{
  *a1 = &unk_287D33868;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = [a3 copy];
  return a1;
}

uint64_t EQKit::Layout::Schemata::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = [*(a2 + 24) copy];
  }

  return a1;
}

id EQKit::Layout::Schemata::phantom@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 3;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::ident@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 8;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::oper@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 10;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

void EQKit::Layout::Schemata::operFontStretch(uint64_t a1@<X8>)
{
  *a1 = &unk_287D33868;
  *(a1 + 8) = 11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

id EQKit::Layout::Schemata::text@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 22;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::num@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 9;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::fraction@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 7;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::subsuperscript@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 4;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::underover@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 5;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::radical@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 6;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stack@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 12;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackGroup@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 13;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackRow@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 14;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackLine@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 15;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackCarries@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 16;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackCarry@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 17;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::longDivision@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 18;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::table@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 19;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::tableRow@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 20;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::padded@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 23;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::space@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 24;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::fenced@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 25;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::enclose@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 28;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

void EQKit::Layout::Schemata::alignGroup(uint64_t a1@<X8>)
{
  *a1 = &unk_287D33868;
  *(a1 + 8) = 26;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void EQKit::Layout::Schemata::alignMark(uint64_t a1@<X8>)
{
  *a1 = &unk_287D33868;
  *(a1 + 8) = 27;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void EQKit::Layout::Schemata::none(uint64_t a1@<X8>)
{
  *a1 = &unk_287D33868;
  *(a1 + 8) = 21;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t EQKit::Layout::Schemata::subsuperscriptSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 4)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::underoverSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 5)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::tableSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 19)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::tableRowSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 20)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 12)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackGroupSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 13)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackRowSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 14)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::radicalSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 6)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::textSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 22)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackLineSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 15)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackCarriesSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 16)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackCarrySchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 17)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::tokenSchemata(EQKit::Layout::Schemata *this)
{
  if ((*(this + 2) & 0xFFFFFFFC) == 8)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::phantomSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 3)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::operatorSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 10)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::fractionSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 7)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::longDivisionSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 18)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::rowSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 2)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::paddedSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 23)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::spaceSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 24)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::fencedSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 25)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::encloseSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 28)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

id EQKit::Layout::Schemata::node@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 1;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t EQKit::Layout::Schemata::nodeSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 1)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::row@<X0>(EQKit::Layout::Schemata *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_287D33868;
  *(a2 + 8) = 2;
  *(a2 + 16) = 0;
  result = [(EQKit::Layout::Schemata *)this copy];
  *(a2 + 24) = result;
  return result;
}

uint64_t EQKit::Layout::Schemata::children(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) != 2)
  {
    return 0;
  }

  v1 = *(this + 3);
  if (!v1)
  {
    return [*(this + 2) schemataChildren];
  }

  return v1;
}

id EQKit::Layout::Schemata::attributedStringWithFont(EQKit::Layout::Schemata *this, const __CTFont *a2)
{
  if ((*(this + 2) & 0xFFFFFFFC) == 8)
  {
    v3 = *(this + 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 schemataTokenString];
  if (!a2)
  {
    return 0;
  }

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  v7 = [v6 initWithString:v5 attributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", a2, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], 0)}];

  return v7;
}

double swap(EQKitLayoutRow *a1, EQKitLayoutRow *a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::swap(a1 + 9, a2 + 72);
  v13 = *(a1 + 12);
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  v14 = *(a1 + 13);
  *(a1 + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  v15 = *(a1 + 14);
  *(a1 + 14) = *(a2 + 14);
  *(a2 + 14) = v15;
  v16 = *(a1 + 15);
  *(a1 + 15) = *(a2 + 15);
  *(a2 + 15) = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v17;
  v18 = *(a1 + 17);
  *(a1 + 17) = *(a2 + 17);
  *(a2 + 17) = v18;
  result = *(a1 + 18);
  *(a1 + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  LODWORD(v18) = *(a1 + 38);
  *(a1 + 38) = *(a2 + 38);
  *(a2 + 38) = v18;
  LOBYTE(v18) = *(a1 + 156);
  *(a1 + 156) = *(a2 + 156);
  *(a2 + 156) = v18;
  return result;
}

void EQKitLayoutRow::EQKitLayoutRow(EQKitLayoutRow *this, char a2)
{
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *this = objc_alloc_init(MEMORY[0x277CBEB18]);
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 156) = a2;
}

void sub_26C714404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 120);
  if (v6)
  {
    *(v2 + 128) = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    *(v2 + 104) = v7;
    operator delete(v7);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(v3, *(v2 + 80));
  v8 = *(v2 + 32);
  if (v8)
  {
    *(v2 + 40) = v8;
    operator delete(v8);
  }

  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::EQKitLayoutRow(EQKitLayoutRow *this, const EQKitLayoutRow *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = this + 8;
  *(this + 3) = 0;
  std::vector<EQKit::ILayout>::__init_with_size[abi:nn200100]<EQKit::ILayout*,EQKit::ILayout*>(this + 8, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  std::vector<CGPoint>::vector[abi:nn200100](v4 + 3, a2 + 4);
  *(this + 8) = *(a2 + 8);
  std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::map[abi:nn200100](this + 9, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<EQKitAlignmentGroup>::__init_with_size[abi:nn200100]<EQKitAlignmentGroup*,EQKitAlignmentGroup*>(this + 96, *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  std::vector<unsigned long>::vector[abi:nn200100](this + 15, a2 + 15);
  *(this + 18) = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 156) = *(a2 + 156);
  *this = [*a2 mutableCopy];
  *(this + 7) = [*(a2 + 7) mutableCopy];
}

void sub_26C714554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 104) = v14;
    operator delete(v14);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(v11 + 72, *(v11 + 80));
  v15 = *(v10 + 24);
  if (v15)
  {
    *(v11 + 40) = v15;
    operator delete(v15);
  }

  a10 = v10;
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::~EQKitLayoutRow(EQKitLayoutRow *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(this + 72, *(this + 10));
  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = (this + 8);
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](&v5);
}

void sub_26C714654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 120);
  if (v12)
  {
    *(v10 + 128) = v12;
    operator delete(v12);
  }

  EQKitLayoutRow::~EQKitLayoutRow(v10);
  a10 = (v10 + 8);
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::addChild(uint64_t a1, uint64_t a2, const EQKit::ILayout *a3)
{
  v6 = [*a1 count];
  v7 = *a3;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    v9 = std::vector<EQKit::ILayout>::__emplace_back_slow_path<EQKit::ILayout const&>(a1 + 8, a3);
  }

  else
  {
    EQKit::ILayout::ILayout(*(a1 + 16), a3);
    v9 = v8 + 56;
    *(a1 + 16) = v8 + 56;
  }

  *(a1 + 16) = v9;
  if (!(a2 | v7))
  {
    goto LABEL_8;
  }

  v10 = *a1;
  if (!a2)
  {
    a2 = [MEMORY[0x277CBEB68] null];
  }

  [v10 addObject:a2];
  if (!v7)
  {
LABEL_8:
    v11 = *(a1 + 56);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
      *(a1 + 56) = v11;
    }

    [v11 addIndex:v6];
  }

  v12 = *(a3 + 1);
  v13 = (a3 + 16);
  if (v12 != v13)
  {
    v14 = (a1 + 80);
    do
    {
      v15 = *v14;
      v16 = *(v12 + 8);
      if (!*v14)
      {
        goto LABEL_20;
      }

      v17 = a1 + 80;
      do
      {
        if (*(v15 + 32) >= v16)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 32) < v16));
      }

      while (v15);
      if (v17 == v14 || v16 < *(v17 + 32))
      {
LABEL_20:
        v21 = *(v12 + 8);
        EQKit::ILayoutOffset::ILayoutOffset(v22, v12 + 5);
        std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(a1 + 72, &v21);
        EQKit::ILayoutOffset::~ILayoutOffset(v22);
      }

      v18 = v12[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v12[2];
          v20 = *v19 == v12;
          v12 = v19;
        }

        while (!v20);
      }

      v12 = v19;
    }

    while (v19 != v13);
  }
}

double EQKitLayoutRow::addChild(EQKitLayoutRow *this, const EQKitLayoutRow *a2)
{
  if (*(a2 + 7))
  {
    EQKitLayoutRow::addChild();
  }

  if (*(a2 + 4) != *(a2 + 5))
  {
    EQKitLayoutRow::addChild();
  }

  v4 = *(this + 2);
  v5 = *(this + 1);
  std::vector<EQKit::ILayout>::__insert_with_size[abi:nn200100]<std::__wrap_iter<EQKit::ILayout const*>,std::__wrap_iter<EQKit::ILayout const*>>(this + 1, v4, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  [*this addObjectsFromArray:*a2];
  v6 = *(a2 + 9);
  if (v6 != (a2 + 80))
  {
    v7 = (this + 80);
    do
    {
      v8 = *v7;
      v9 = *(v6 + 8);
      if (!*v7)
      {
        goto LABEL_14;
      }

      v10 = (this + 80);
      do
      {
        if (*(v8 + 8) >= v9)
        {
          v10 = v8;
        }

        v8 = *&v8[8 * (*(v8 + 8) < v9)];
      }

      while (v8);
      if (v10 == v7 || v9 < *(v10 + 8))
      {
LABEL_14:
        LODWORD(v19) = *(v6 + 8);
        EQKit::ILayoutOffset::ILayoutOffset(v20, v6 + 5);
        std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(this + 72, &v19);
        EQKit::ILayoutOffset::~ILayoutOffset(v20);
      }

      v11 = *(v6 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v6 + 2);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != (a2 + 80));
  }

  std::vector<EQKitAlignmentGroup>::__insert_with_size[abi:nn200100]<std::__wrap_iter<EQKitAlignmentGroup const*>,std::__wrap_iter<EQKitAlignmentGroup const*>>(this + 12, *(this + 13), *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  v14 = *(a2 + 15);
  v15 = *(a2 + 16);
  if (v14 != v15)
  {
    v16 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3);
    do
    {
      v17 = *v14++;
      v19 = v17 + v16;
      std::vector<unsigned long>::push_back[abi:nn200100](this + 15, &v19);
    }

    while (v14 != v15);
  }

  result = *(a2 + 18);
  *(this + 18) = result;
  return result;
}

void std::vector<unsigned long>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

uint64_t EQKitLayoutRow::endNestedRow(uint64_t this)
{
  v2 = (this + 64);
  v1 = *(this + 64);
  if (v1)
  {
    goto LABEL_2;
  }

  this = EQKitLayoutRow::endNestedRow((this + 64), &v3);
  if ((this & 1) == 0)
  {
    v1 = v3;
LABEL_2:
    *v2 = v1 - 1;
  }

  return this;
}

void *EQKitLayoutRow::childNodeAtIndex(id *this, unint64_t a2)
{
  if ([*this count] <= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*this objectAtIndex:a2];
  }

  if ([v4 conformsToProtocol:&unk_287DE0820])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t EQKitLayoutRow::overallLayout@<X0>(EQKitLayoutRow *this@<X0>, uint64_t **a2@<X8>)
{
  EQKit::ILayout::ILayout(a2, 0);
  if (*(this + 7))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKit::ILayout EQKitLayoutRow::overallLayout() const") description:{@"EQKitLayoutRow.mm", 159, @"can't call overallLayout() with unresolved children"}];
  }

  v4 = *(this + 1);
  if (*(this + 2) - v4 == 56)
  {
    return EQKit::ILayout::operator=(a2, v4);
  }

  v6 = EQKitLayoutRow::newArrayOfChildBoxes(this);
  v7 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v6];
  EQKit::ILayout::ILayout(v11, &v7->super.super);
  EQKit::ILayout::operator=(a2, v11);
  EQKit::ILayout::~ILayout(v11);
  if (a2 + 1 != (this + 72))
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>(a2 + 1, *(this + 9), this + 10);
  }

  v8 = *(this + 1);
  v9 = 6;
  while (v8 != *(this + 2))
  {
    if (v9 >= ((*(v8 + 32) >> 10) & 7))
    {
      v9 = (*(v8 + 32) >> 10) & 7;
    }

    v8 += 56;
  }

  return EQKit::ILayout::setVerticalContentClassification(a2, v9);
}

void *EQKitLayoutRow::newArrayOfChildBoxes(EQKitLayoutRow *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  v6 = *(this + 4);
  v5 = *(this + 5);
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  if (v2 != v3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v5 - v6) >> 4;
    if (v4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v4;
    }

    do
    {
      if (*(*(this + 1) + v9))
      {
        [v7 addObject:?];
      }

      if (v10 < v11)
      {
        v13 = *(*(this + 4) + v8);
        if (v13 != 0.0)
        {
          v14 = [[EQKitHSpace alloc] initWithWidth:v13];
          [v7 addObject:v14];
        }
      }

      ++v10;
      v9 += 56;
      v8 += 16;
    }

    while (v12 != v10);
  }

  return v7;
}

void EQKitLayoutRow::determineVSize(EQKitLayoutRow *this, double *a2, double *a3)
{
  v8 = EQKitLayoutRow::newArrayOfChildBoxes(this);
  v5 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v8];
  [(EQKitCompoundBox *)v5 height];
  *a2 = v6;
  [(EQKitCompoundBox *)v5 depth];
  *a3 = v7;
}

void EQKitLayoutRow::resolveKerning(EQKitLayoutRow *this, const EQKit::Kerning::Manager *a2)
{
  v2 = (this + 32);
  if (*(this + 4) == *(this + 5))
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
    std::vector<EQKitLayoutRow::Kerning>::resize(this + 4, v4);
    if (v4 >= 2)
    {
      v5 = 0;
      for (i = 1; i < v4; ++i)
      {
        v7 = *(this + 1);
        v8 = v7 + 56 * v5;
        if ((*(v8 + 32) & 0x200) == 0 && i < v4)
        {
          v9 = v7 + 56 * i + 32;
          while ((*v9 & 0x200) != 0)
          {
            ++i;
            v9 += 56;
            if (v4 == i)
            {
              i = v4;
              goto LABEL_14;
            }
          }

          v10 = *v8;
          v11 = *(v9 - 32);
          v12 = *MEMORY[0x277CBF348];
          v13 = *(MEMORY[0x277CBF348] + 8);
          [*v8 opticalAlignWidth];
          if (*(v8 + 48) >= *(v9 + 8))
          {
            v15 = *(v8 + 48);
          }

          else
          {
            v15 = *(v9 + 8);
          }

          v16 = EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(a2, (*(v8 + 32) >> 2) & 3, v10, *v9 & 3, v11, v12, v13, v14, 0.0, v15);
          v17 = *v2 + 16 * v5;
          *v17 = v16;
          *(v17 + 8) = i;
        }

LABEL_14:
        v5 = i;
      }
    }
  }
}

void std::vector<EQKitLayoutRow::Kerning>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<EQKitLayoutRow::Kerning>::__append(a1, a2 - v2);
  }
}

void EQKitLayoutRow::resolveLayouts(void *a1, void *a2)
{
  v6 = a1[7];
  v4 = a1 + 7;
  v5 = v6;
  if (!v6)
  {
    EQKitLayoutRow::resolveLayouts(v4, &v10);
    v5 = v10;
  }

  a1[7] = 0;
  v7 = a1[1];
  a1[1] = *a2;
  *a2 = v7;
  v8 = a1[2];
  a1[2] = a2[1];
  a2[1] = v8;
  v9 = a1[3];
  a1[3] = a2[2];
  a2[2] = v9;
}

void EQKitLayoutRow::beginAlignmentGroup(uint64_t a1, int a2)
{
  if (*(a1 + 8) == *(a1 + 16) || *(a1 + 120) != *(a1 + 128))
  {
    EQKitAlignmentGroup::EQKitAlignmentGroup(v5, a2);
    v3 = *(a1 + 104);
    if (v3 >= *(a1 + 112))
    {
      v4 = std::vector<EQKitAlignmentGroup>::__emplace_back_slow_path<EQKitAlignmentGroup>((a1 + 96), v5);
    }

    else
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(*(a1 + 104), v5);
      v4 = v3 + 24;
      *(a1 + 104) = v3 + 24;
    }

    *(a1 + 104) = v4;
    v5[0] = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 120), v5);
  }
}

void EQKitLayoutRow::buildAlignmentGroups(EQKitLayoutRow *this)
{
  v3 = *(this + 12);
  v2 = *(this + 13);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  if (v4 != (*(this + 16) - *(this + 15)) >> 3)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void EQKitLayoutRow::buildAlignmentGroups()") description:{@"EQKitLayoutRow.mm", 293, @"should have a start index for each alignment group"}];
    v3 = *(this + 12);
    v2 = *(this + 13);
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  }

  if (v2 != v3)
  {
    v5 = 0;
    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4;
    }

    v22 = v6;
    do
    {
      v7 = v5;
      v8 = *(this + 15);
      if (++v5 >= v4)
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = *(v8 + 8 * v7);
      v11 = v9 - v10;
      if (v9 > v10)
      {
        v12 = (*(this + 12) + 24 * v7);
        v13 = 56 * v10;
        v14 = 16 * v10;
        do
        {
          v15 = *(this + 1);
          v16 = *(v15 + v13);
          if (!v16)
          {
            EQKitLayoutRow::buildAlignmentGroups();
          }

          EQKit::ILayoutOffset::ILayoutOffset(v24, 0, 0.0);
          if (EQKit::ILayout::getOffsetOfKind(v15 + v13, 3, v24))
          {
            v17 = EQKit::ILayoutOffset::offsetInBox(v24, v16);
            EQKitAlignmentGroup::saveAlignmentPoint(v12, v17);
          }

          if (EQKitAlignmentGroup::needsDecimalAlignmentPoint(v12))
          {
            EQKit::ILayoutOffset::ILayoutOffset(v23, 0, 0.0);
            if (EQKit::ILayout::getOffsetOfKind(v15 + v13, 2, v23))
            {
              v18 = EQKit::ILayoutOffset::offsetInBox(v23, v16);
              EQKitAlignmentGroup::saveAlignmentPoint(v12, v18);
            }

            EQKit::ILayoutOffset::~ILayoutOffset(v23);
          }

          [(EQKitBox *)v16 width];
          EQKitAlignmentGroup::increaseWidth(v12, v19);
          v20 = *(this + 4) + v14;
          if (*(v20 + 8) < v9)
          {
            EQKitAlignmentGroup::increaseWidth(v12, *v20);
          }

          EQKit::ILayoutOffset::~ILayoutOffset(v24);
          v13 += 56;
          v14 += 16;
          --v11;
        }

        while (v11);
      }
    }

    while (v5 != v22);
  }
}

void sub_26C7153FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  EQKit::ILayoutOffset::~ILayoutOffset(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::addToAlignmentContext(EQKitLayoutRow *this, EQKitGroupAlignmentContext *a2)
{
  v3 = (this + 96);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 3) != (*(this + 16) - *(this + 15)) >> 3)
  {
    EQKitLayoutRow::addToAlignmentContext();
  }

  EQKitGroupAlignmentContext::addRow(a2, v3);
}

void EQKitLayoutRow::overallLayoutWithAlignmentContext(EQKitLayoutRow *this@<X0>, const EQKitGroupAlignmentContext *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 3) != (*(this + 16) - *(this + 15)) >> 3)
  {
    EQKitLayoutRow::overallLayoutWithAlignmentContext();
  }

  EQKit::ILayout::ILayout(a3, 0);
  if (*(this + 12) == *(this + 13))
  {
    EQKitLayoutRow::overallLayout(this, v25);
    EQKit::ILayout::operator=(a3, v25);
    EQKit::ILayout::~ILayout(v25);
  }

  else
  {
    v24 = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; ; i = v13)
    {
      v8 = *(this + 12);
      if (i >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - v8) >> 3))
      {
        break;
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = [EQKitHSpace alloc];
      v11 = (v8 + 24 * i);
      EQKitGroupAlignmentContext::leftSpaceRequiredForGroup(a2, v11, i);
      v12 = [(EQKitHSpace *)v10 initWithWidth:?];
      [v9 addObject:v12];

      v13 = i + 1;
      v14 = *(this + 15);
      if (i + 1 >= (*(this + 16) - v14) >> 3)
      {
        v15 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
      }

      else
      {
        v15 = *(v14 + 8 * v13);
      }

      v16 = *(v14 + 8 * i);
      v17 = v15 - v16;
      if (v15 > v16)
      {
        v18 = 56 * v16;
        do
        {
          [v9 addObject:{*(*(this + 1) + v18), v24}];
          v18 += 56;
          --v17;
        }

        while (v17);
      }

      v19 = [EQKitHSpace alloc];
      EQKitGroupAlignmentContext::rightSpaceRequiredForGroup(a2, v11, i);
      v20 = [(EQKitHSpace *)v19 initWithWidth:?];
      [v9 addObject:v20];

      v21 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v9];
      [v6 addObject:v21];
    }

    v22 = [[EQKitHSpace alloc] initWithWidth:EQKitGroupAlignmentContext::widthOfGroupsAfterIndex(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 3) - 1)];
    [v6 addObject:v22];

    v23 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v6];
    EQKit::ILayout::ILayout(v25, &v23->super.super);
    EQKit::ILayout::operator=(v24, v25);
    EQKit::ILayout::~ILayout(v25);
    if ((v24 + 8) != (this + 72))
    {
      std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>((v24 + 8), *(this + 9), this + 10);
    }
  }
}

void sub_26C71575C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          EQKit::ILayoutOffset::operator=((v8 + 5), (v9 + 5));
          std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__node_insert_multi(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_multi<std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>();
  }

  return result;
}

void sub_26C71590C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](uint64_t a1)
{
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(uint64_t a1, id *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(a1, a2[1]);
    EQKit::ILayoutOffset::~ILayoutOffset(a2 + 5);

    operator delete(a2);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::ILayoutOffset::~ILayoutOffset(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void *std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::map[abi:nn200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_hint_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_hint_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__find_equal<EQKit::ILayoutOffset::Kind>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__construct_node<std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__find_equal<EQKit::ILayoutOffset::Kind>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

uint64_t std::vector<EQKitAlignmentGroup>::__init_with_size[abi:nn200100]<EQKitAlignmentGroup*,EQKitAlignmentGroup*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitAlignmentGroup>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<EQKitAlignmentGroup>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitAlignmentGroup>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitAlignmentGroup>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<unsigned long>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<EQKit::ILayout>::__emplace_back_slow_path<EQKit::ILayout const&>(uint64_t a1, const EQKit::ILayout *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKit::ILayout>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  EQKit::ILayout::ILayout((56 * v2), a2);
  v15 = (56 * v2 + 56);
  v7 = *(a1 + 8);
  v8 = (56 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKit::ILayout>::~__split_buffer(&v13);
  return v12;
}

void sub_26C716254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKit::ILayout>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(int a1, EQKit::ILayout *a2, EQKit::ILayout *a3, EQKit::ILayout *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = EQKit::ILayout::ILayout(this, v7);
      v7 = (v7 + 56);
      this = (v8 + 56);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      EQKit::ILayout::~ILayout(v6);
      v6 = (v6 + 56);
    }
  }
}

uint64_t std::__split_buffer<EQKit::ILayout>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    EQKit::ILayout::~ILayout((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__construct_node<std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>();
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

EQKit::ILayout *std::vector<EQKit::ILayout>::__insert_with_size[abi:nn200100]<std::__wrap_iter<EQKit::ILayout const*>,std::__wrap_iter<EQKit::ILayout const*>>(void *a1, uint64_t a2, const EQKit::ILayout *a3, const EQKit::ILayout *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v24 = 56 * a5;
        std::vector<EQKit::ILayout>::__move_range(a1, a2, a1[1], a2 + 56 * a5);
        v25 = (v7 + v24);
        v26 = v5;
        do
        {
          EQKit::ILayout::operator=(v26, v7);
          v7 = (v7 + 56);
          v26 += 56;
        }

        while (v7 != v25);
      }

      else
      {
        v18 = (a3 + v16);
        v19 = a1[1];
        if ((a3 + v16) != a4)
        {
          v19 = a1[1];
          v20 = (a3 + v16);
          v21 = v19;
          do
          {
            v22 = EQKit::ILayout::ILayout(v21, v20);
            v20 = (v20 + 56);
            v21 = (v22 + 56);
            v19 = (v19 + 56);
          }

          while (v20 != a4);
        }

        a1[1] = v19;
        if (v16 >= 1)
        {
          std::vector<EQKit::ILayout>::__move_range(a1, v5, v10, v5 + 56 * a5);
          v23 = v5;
          do
          {
            EQKit::ILayout::operator=(v23, v7);
            v7 = (v7 + 56);
            v23 += 56;
          }

          while (v7 != v18);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
      if (v12 > 0x492492492492492)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x249249249249249)
      {
        v15 = 0x492492492492492;
      }

      else
      {
        v15 = v12;
      }

      v34 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<EQKit::ILayout>>(a1, v15);
      }

      v27 = (8 * (v13 >> 3));
      v31[0] = 0;
      v31[1] = v27;
      v32 = v27;
      v33 = 0;
      v28 = 56 * a5;
      v29 = (v27 + 56 * a5);
      do
      {
        EQKit::ILayout::ILayout(v27, v7);
        v27 = (v27 + 56);
        v7 = (v7 + 56);
        v28 -= 56;
      }

      while (v28);
      v32 = v29;
      v5 = std::vector<EQKit::ILayout>::__swap_out_circular_buffer(a1, v31, v5);
      std::__split_buffer<EQKit::ILayout>::~__split_buffer(v31);
    }
  }

  return v5;
}

void sub_26C716628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<EQKit::ILayout>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKit::ILayout>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = EQKit::ILayout::ILayout(v10, v8);
      v8 = (v8 + 56);
      v10 = (v10 + 56);
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 56;
    v12 = a4 - v7;
    v13 = a2 + v7 - 56 - a4;
    do
    {
      result = EQKit::ILayout::operator=(v11, v13);
      v11 -= 56;
      v13 -= 56;
      v12 += 56;
    }

    while (v12);
  }

  return result;
}

uint64_t std::vector<EQKit::ILayout>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, EQKit::ILayout *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::vector<EQKitAlignmentGroup>::__insert_with_size[abi:nn200100]<std::__wrap_iter<EQKitAlignmentGroup const*>,std::__wrap_iter<EQKitAlignmentGroup const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v26 = 3 * a5;
        std::vector<EQKitAlignmentGroup>::__move_range(a1, a2, a1[1], a2 + 24 * a5);
        v27 = 0;
        v28 = v7 + 8 * v26;
        do
        {
          v29 = v27 + v5;
          v30 = *v7;
          *(v29 + 16) = *(v7 + 16);
          *v29 = v30;
          v7 += 24;
          v27 += 24;
        }

        while (v7 != v28);
      }

      else
      {
        v18 = v16 + a3;
        v19 = a1[1];
        if (v16 + a3 != a4)
        {
          v19 = a1[1];
          v20 = v16 + a3;
          v21 = v19;
          do
          {
            EQKitAlignmentGroup::EQKitAlignmentGroup(v21, v20);
            v20 += 24;
            v21 = v22 + 24;
            v19 += 24;
          }

          while (v20 != a4);
        }

        a1[1] = v19;
        if (v16 >= 1)
        {
          std::vector<EQKitAlignmentGroup>::__move_range(a1, v5, v10, v5 + 24 * a5);
          v23 = 0;
          do
          {
            v24 = v23 + v5;
            v25 = *v7;
            *(v24 + 16) = *(v7 + 16);
            *v24 = v25;
            v7 += 24;
            v23 += 24;
          }

          while (v7 != v18);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v39 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitAlignmentGroup>>(a1, v15);
      }

      v31 = 8 * (v13 >> 3);
      __p = 0;
      v36 = v31;
      v37 = v31;
      v38 = 0;
      v32 = v31 + 24 * a5;
      v33 = 24 * a5;
      do
      {
        EQKitAlignmentGroup::EQKitAlignmentGroup(v31, v7);
        v31 += 24;
        v7 += 24;
        v33 -= 24;
      }

      while (v33);
      v37 = v32;
      v5 = std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(a1, &__p, v5);
      if (v37 != v36)
      {
        v37 = (v37 - v36 - 24) % 0x18uLL + v36;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_26C716A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<EQKitAlignmentGroup>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = v7 - a4;
  v9 = a2 + v7 - a4;
  if (v9 >= a3)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = *(a1 + 8);
    do
    {
      result.n128_f64[0] = EQKitAlignmentGroup::EQKitAlignmentGroup(v11, v9);
      v9 += 24;
      v11 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v11;
  if (v7 != a4)
  {
    v13 = (v7 - 24);
    v14 = a2 - 24;
    do
    {
      result = *(v14 + v8);
      v13[1].n128_u64[0] = *(v14 + v8 + 16);
      *v13 = result;
      v13 = (v13 - 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}