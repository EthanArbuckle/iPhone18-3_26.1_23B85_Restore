void WGSL::TypeChecker::check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v8 = WGSL::TypeChecker::infer(&v16, a2, a3, 1u, 0).n128_u64[0];
  if (!v18)
  {
    v9 = v16;
    if (!v16)
    {
      goto LABEL_13;
    }

    while (*(v9 + 48) == 10)
    {
      v9 = *(v9 + 1);
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    if (*(v9 + 48) || *v9 - 1 >= 2 && (*v9 || (v9 = *(*(a2 + 72) + 56)) == 0))
    {
LABEL_13:
      *a1 = 0;
      *(a1 + 24) = 0;
      return;
    }

    WGSL::TypeChecker::convertValue(&v13, (a3 + 8), v9, (a3 + 32), v8);
    if (v15 != 1)
    {
      *a1 = v9;
      *(a1 + 24) = 0;
      return;
    }

    v12 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      *a1 = v12;
      *(a1 + 8) = v14;
      *(a1 + 24) = 1;
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      return;
    }

    *a1 = 0;
    *(a1 + 8) = v14;
LABEL_26:
    *(a1 + 24) = 1;
    return;
  }

  if (v18 != 1)
  {
    mpark::throw_bad_variant_access(v6);
  }

  v11 = v16;
  if (!v16)
  {
    *(a1 + 8) = v17;
    *a1 = 0;
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  *(a1 + 8) = v17;
  *a1 = v11;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    WTF::StringImpl::destroy(v11, v7);
  }
}

void WGSL::TypeChecker::visit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  switch((*(*a3 + 16))(a3))
  {
    case '%':
      WGSL::TypeChecker::infer(v72, a2, *(a3 + 24), 3u, 0);
      v10 = v73;
      if (v73)
      {
        goto LABEL_114;
      }

      *&v11 = WGSL::TypeChecker::infer(v69, a2, *(a3 + 32), 3u, 0).n128_u64[0];
      if (!v70)
      {
        v12 = v72[0];
        if (v72[0])
        {
          v13 = *(v72[0] + 48);
          if (v13 == 10)
          {
            if (*(v72[0] + 1))
            {
              v14 = *(v72[0] + 1);
              v15 = *v69;
              if (v14 == *v69)
              {
LABEL_10:
                v16 = *(a3 + 32);
                *(v16 + 24) = v14;
                if (*(v16 + 56) == 1)
                {
                  WGSL::TypeChecker::convertValue(&v78, (v16 + 8), v14, (v16 + 32), v11);
                  if (v80 == 1)
                  {
LABEL_142:
                    v25 = v78;
                    if (v78)
                    {
                      atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
                      *a1 = v25;
                      v65 = v79;
                      goto LABEL_147;
                    }

                    *a1 = 0;
                    v67 = v79;
LABEL_171:
                    *(a1 + 8) = v67;
                    goto LABEL_172;
                  }
                }

                goto LABEL_90;
              }

              if (WGSL::conversionRank(*v69, *(v72[0] + 1), v14) != -1)
              {
                v14 = *(v12 + 1);
                goto LABEL_10;
              }

              WGSL::Type::Type(&v78, v15);
              WGSL::Type::Type(&v74, *(v12 + 1));
              WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v68, "cannot assign value of type '", 30, &v78, "' to '", 7, &v74);
              *a1 = v68;
              *(a1 + 8) = *(a3 + 8);
              *(a1 + 24) = 1;
              if (v77 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v71, &v74);
              }

              v77 = -1;
              if (v81 == 255)
              {
                return;
              }

              v58 = &v71;
LABEL_109:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v58, &v78);
              return;
            }

            WGSL::Type::Type(&v78, v72[0]);
            v59 = "cannot store into a read-only type '";
            v60 = 37;
            goto LABEL_107;
          }
        }

        else
        {
          v13 = MEMORY[0x30];
        }

        LOBYTE(v78) = 0;
        v81 = -1;
        if (v13 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v13, &v74, &v78, v72[0]);
          v81 = *(v12 + 48);
        }

        v59 = "cannot assign to a value of type '";
        v60 = 35;
LABEL_107:
        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(&v74, v59, v60, &v78);
        *a1 = v74;
        *(a1 + 8) = *(a3 + 8);
        *(a1 + 24) = 1;
        if (v81 == 255)
        {
          return;
        }

LABEL_108:
        v58 = &v68;
        goto LABEL_109;
      }

      if (v70 != 1)
      {
        goto LABEL_158;
      }

      v25 = *v69;
      if (!*v69)
      {
        v28 = *&v69[8];
        goto LABEL_169;
      }

      atomic_fetch_add_explicit(*v69, 2u, memory_order_relaxed);
      v26 = *&v69[8];
LABEL_137:
      *(a1 + 8) = v26;
      *a1 = v25;
      *(a1 + 24) = 1;
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_84:
        WTF::StringImpl::destroy(v25, v9);
      }

      return;
    case '&':
    case '+':
    case '-':
      goto LABEL_90;
    case '\'':
      WGSL::TypeChecker::infer(&v78, a2, *(a3 + 24), 3u, 1);
      if (!v80)
      {
        goto LABEL_90;
      }

      if (v80 != 1)
      {
        goto LABEL_158;
      }

      v25 = v78;
      if (!v78)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    case '(':
      WGSL::TypeChecker::infer(v72, a2, *(a3 + 24), 3u, 0);
      v10 = v73;
      if (v73)
      {
        goto LABEL_114;
      }

      v22 = v72[0];
      if (v72[0])
      {
        v23 = *(v72[0] + 48);
        if (v23 == 10)
        {
          WGSL::TypeChecker::binaryExpression(&v78, a2, (a3 + 8), 0, *(a3 + 40), *(a3 + 24), *(a3 + 32));
          if (v80 == 1)
          {
            goto LABEL_142;
          }

          v24 = *(a2 + 48);
          if (v24 == *(v22 + 1))
          {
            *(a2 + 48) = 0;
            goto LABEL_90;
          }

          WGSL::Type::Type(&v78, v24);
          WGSL::Type::Type(&v74, *(v22 + 1));
          WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(v69, "cannot assign '", 16, &v78, "' to '", 7, &v74);
          *a1 = *v69;
          *(a1 + 8) = *(a3 + 8);
          *(a1 + 24) = 1;
          if (v77 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v68, &v74);
          }

          v77 = -1;
          if (v81 == 255)
          {
            return;
          }

          goto LABEL_108;
        }
      }

      else
      {
        v23 = MEMORY[0x30];
      }

      LOBYTE(v78) = 0;
      v81 = -1;
      if (v23 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v23, &v74, &v78, v72[0]);
        v81 = *(v22 + 48);
      }

      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(&v74, "cannot assign to a value of type '", 35, &v78);
      v55 = v74;
      goto LABEL_101;
    case ')':
      operator new();
    case '*':
      v29 = *(a3 + 24);

      WGSL::TypeChecker::visit(a1, a2, v29);
      return;
    case ',':
      WGSL::TypeChecker::infer(&v74, a2, *(a3 + 24), 3u, 0);
      v18 = v76;
      if (v76)
      {
        goto LABEL_111;
      }

      v37 = v74;
      if (v74)
      {
        v38 = *(v74 + 48);
        if (v38 == 10)
        {
          if (*(v74 + 1))
          {
            v39 = *(*(a2 + 72) + 56);
            v40 = v74[1];
            if (v39 == v40)
            {
              goto LABEL_90;
            }

            if (WGSL::conversionRank(v40, v39, v36) != -1)
            {
              goto LABEL_90;
            }

            v42 = *(*(a2 + 72) + 64);
            v43 = v37[1];
            if (v42 == v43 || WGSL::conversionRank(v43, v42, v41) != -1)
            {
              goto LABEL_90;
            }

            if (*(a3 + 32))
            {
              if (*(a3 + 32) != 1)
              {
                v66 = 0;
                v44 = 0;
                goto LABEL_162;
              }

              v44 = "increment";
            }

            else
            {
              v44 = "decrement";
            }

            v66 = 10;
LABEL_162:
            WGSL::Type::Type(&v78, v37[1]);
            WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type>(v72, v44, v66, &v78);
LABEL_100:
            v55 = v72[0];
LABEL_101:
            *a1 = v55;
            *(a1 + 8) = *(a3 + 8);
            *(a1 + 24) = 1;
            if (v81 == 255)
            {
              return;
            }

            goto LABEL_102;
          }

          WGSL::Type::Type(&v78, v74);
          v56 = "cannot modify read-only type '";
          v57 = 31;
LABEL_99:
          WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(v72, v56, v57, &v78);
          goto LABEL_100;
        }
      }

      else
      {
        v38 = MEMORY[0x30];
      }

      LOBYTE(v78) = 0;
      v81 = -1;
      if (v38 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v38, v72, &v78, v74);
        v81 = *(v37 + 48);
      }

      v56 = "cannot modify a value of type '";
      v57 = 32;
      goto LABEL_99;
    case '.':
      operator new();
    case '/':
      WGSL::TypeChecker::infer(&v74, a2, *(a3 + 24), 3u, 0);
      v18 = v76;
      if (v76)
      {
        goto LABEL_111;
      }

      v34 = v74;
      v35 = *(*(a2 + 72) + 48);
      if (v74 == v35 || WGSL::conversionRank(v35, v74, v33) != -1)
      {
        operator new();
      }

      WGSL::Type::Type(&v78, v34);
      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(v72, "expected 'BOOL', found '", 25, &v78, "'", 2);
      goto LABEL_140;
    case '0':
      operator new();
    case '1':
      WGSL::TypeChecker::infer(&v78, a2, *(a3 + 24), 3u, 0);
      if (!v80)
      {
        goto LABEL_90;
      }

      if (v80 != 1)
      {
        goto LABEL_158;
      }

      v25 = v78;
      if (v78)
      {
LABEL_33:
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
        v26 = v79;
        goto LABEL_137;
      }

LABEL_41:
      v28 = v79;
      goto LABEL_169;
    case '2':
      v30 = *(a3 + 24);
      if (!v30)
      {
        v31 = *(*(a2 + 72) + 40);
        v32 = *(a2 + 56);
        if (v32 == v31)
        {
LABEL_87:
          if (v30)
          {
            v54 = *(a2 + 56);
            *(v30 + 24) = v54;
            if (*(v30 + 56) == 1)
            {
              WGSL::TypeChecker::convertValue(v72, (v30 + 8), v54, (v30 + 32), v7);
              if (v73 == 1)
              {
                v25 = v72[0];
                if (v72[0])
                {
                  atomic_fetch_add_explicit(v72[0], 2u, memory_order_relaxed);
                  *a1 = v25;
                  v65 = *&v72[1];
LABEL_147:
                  *(a1 + 8) = v65;
                  *(a1 + 24) = 1;
                  if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    goto LABEL_84;
                  }

                  return;
                }

                *a1 = 0;
                v67 = *&v72[1];
                goto LABEL_171;
              }
            }
          }

LABEL_90:
          *a1 = 0;
          *(a1 + 24) = 0;
          return;
        }

        goto LABEL_86;
      }

      *&v7 = WGSL::TypeChecker::infer(v72, a2, *(a3 + 24), 3u, 0).n128_u64[0];
      v10 = v73;
      if (!v73)
      {
        v31 = v72[0];
        v32 = *(a2 + 56);
        if (v32 == v72[0])
        {
          goto LABEL_87;
        }

LABEL_86:
        if (WGSL::conversionRank(v31, v32, v6) != -1)
        {
          goto LABEL_87;
        }

        WGSL::Type::Type(&v78, v31);
        WGSL::Type::Type(&v74, *(a2 + 56));
        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(v72, "return statement type does not match its function return type, returned '", 74, &v78, "', expected '", 14, &v74);
        *a1 = v72[0];
        *(a1 + 8) = *(a3 + 8);
        *(a1 + 24) = 1;
        if (v77 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v69, &v74);
        }

        v77 = -1;
        if (v81 == 255)
        {
          return;
        }

LABEL_102:
        v58 = v69;
        goto LABEL_109;
      }

LABEL_114:
      if (v10 == 1)
      {
        v25 = v72[0];
        if (v72[0])
        {
          atomic_fetch_add_explicit(v72[0], 2u, memory_order_relaxed);
          v26 = *&v72[1];
          goto LABEL_137;
        }

        v28 = *&v72[1];
LABEL_169:
        *(a1 + 8) = v28;
        *a1 = 0;
LABEL_172:
        *(a1 + 24) = 1;
        return;
      }

      goto LABEL_158;
    case '3':
      WGSL::TypeChecker::infer(&v74, a2, *(a3 + 32), 3u, 0);
      if (v76)
      {
        if (v76 != 1)
        {
LABEL_158:
          mpark::throw_bad_variant_access(v8);
        }

        v63 = v74;
        if (v74)
        {
          atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = *v75;
        *a1 = v63;
      }

      else
      {
        v21 = v74;
        if (!v74)
        {
          goto LABEL_76;
        }

        while (*(v21 + 48) == 10)
        {
          v21 = v21[1];
          if (!v21)
          {
            goto LABEL_76;
          }
        }

        if (*(v21 + 48) || *v21 >= 3u)
        {
LABEL_76:
          WTF::tryFastCompactMalloc(0x3E);
          v51 = v78;
          if (!v78)
          {
            __break(0xC471u);
            JUMPOUT(0x22585CAB4);
          }

          *v78 = 0x2A00000002;
          qmemcpy(v51 + 5, "switch selector must be of type i32 or u32", 42);
          *(v51 + 1) = v51 + 5;
          v51[4] = 4;
          v52 = *(a3 + 32);
          *a1 = v51;
          v53 = *(v52 + 8);
        }

        else
        {
          v72[0] = a2;
          v72[1] = &v74;
          v45 = *(a3 + 52);
          if (v45)
          {
            v46 = *(a3 + 40);
            v47 = 8 * v45;
            while (1)
            {
              WGSL::TypeChecker::visit(&v78, a2, *v46);
              if (v80 == 1)
              {
                break;
              }

              ++v46;
              v47 -= 8;
              if (!v47)
              {
                goto LABEL_70;
              }
            }

            v62 = v78;
            if (v78)
            {
              atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
              *v69 = v79;
              if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v9);
              }

              atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
              *a1 = v62;
              *(a1 + 8) = *v69;
              *(a1 + 24) = 1;
              if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v9);
              }

LABEL_80:
              if (v76)
              {
                if (v76 != 255)
                {
                  v25 = v74;
                  v74 = 0;
                  if (v25)
                  {
                    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      goto LABEL_84;
                    }
                  }
                }
              }

              return;
            }

            v53 = v79;
            *v69 = v79;
            *a1 = 0;
          }

          else
          {
LABEL_70:
            WGSL::TypeChecker::visit(WGSL::AST::SwitchStatement &)::$_0::operator()(&v78, v72, a3 + 72);
            if (v80 != 1)
            {
              v48 = *(a3 + 68);
              if (!v48)
              {
LABEL_75:
                *a1 = 0;
                *(a1 + 24) = 0;
                goto LABEL_80;
              }

              v49 = *(a3 + 56);
              v50 = 24 * v48;
              while (1)
              {
                WGSL::TypeChecker::visit(WGSL::AST::SwitchStatement &)::$_0::operator()(&v78, v72, v49);
                if (v80 == 1)
                {
                  break;
                }

                v49 += 24;
                v50 -= 24;
                if (!v50)
                {
                  goto LABEL_75;
                }
              }
            }

            v61 = v78;
            if (v78)
            {
              atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
              *a1 = v61;
              *(a1 + 8) = v79;
              *(a1 + 24) = 1;
              if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v9);
              }

              goto LABEL_80;
            }

            *a1 = 0;
            v53 = v79;
          }
        }

        *(a1 + 8) = v53;
      }

      *(a1 + 24) = 1;
      goto LABEL_80;
    case '4':
      v27 = *(a3 + 24);

      WGSL::TypeChecker::visit(a1, a2, v27, v7);
      return;
    case '5':
      WGSL::TypeChecker::infer(&v74, a2, *(a3 + 24), 3u, 0);
      v18 = v76;
      if (!v76)
      {
        v19 = *(*(a2 + 72) + 48);
        v20 = v74;
        if (v19 == v74 || WGSL::conversionRank(v74, v19, v17) != -1)
        {
          operator new();
        }

        WGSL::Type::Type(&v78, v20);
        WTF::makeString<WTF::ASCIILiteral,WGSL::Type>(v72, "while condition must be BOOL, got ", 35, &v78);
LABEL_140:
        v64 = *(a3 + 24);
        *a1 = v72[0];
        *(a1 + 8) = *(v64 + 8);
        *(a1 + 24) = 1;
        if (v81 == 255)
        {
          return;
        }

        goto LABEL_102;
      }

LABEL_111:
      if (v18 != 1)
      {
        goto LABEL_158;
      }

      v25 = v74;
      if (v74)
      {
        atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
        v26 = *v75;
        goto LABEL_137;
      }

      v28 = *v75;
      goto LABEL_169;
    default:
      __break(0xC471u);
      JUMPOUT(0x22585CA74);
  }
}

void WGSL::TypeChecker::binaryExpression(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v174 = *MEMORY[0x277D85DE8];
  if (a5 >= 0x12)
  {
LABEL_246:
    __break(1u);
LABEL_247:
    v16 = v169;
    if (v169)
    {
      atomic_fetch_add_explicit(v169, 2u, memory_order_relaxed);
      a1 = v143;
      a7 = v144;
      v15 = v139;
      v135 = v171;
      v136 = v170;
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, a2);
        v21 = 0;
        goto LABEL_159;
      }
    }

    else
    {
      v135 = v171;
      v136 = v170;
      a1 = v143;
      a7 = v144;
      v15 = v139;
    }

    v21 = 0;
LABEL_159:
    v95 = v164[0];
    v164[0] = 0;
    if (v95)
    {
      v96 = v16;
      v97 = *v95;
      if (v97)
      {
        v98 = 24 * v97;
        v99 = v95 + 24;
        do
        {
          a2 = (v99 - 16);
          if (*v99 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, a2);
          }

          *v99 = -1;
          v99 += 24;
          v98 -= 24;
        }

        while (v98);
      }

      WTF::fastFree(v95, a2);
      a7 = v144;
      v16 = v96;
    }

    v11 = v138;
    if (v150 != 1)
    {
      goto LABEL_169;
    }

LABEL_167:
    if (v148)
    {
      WTF::fastFree(v148, a2);
    }

    goto LABEL_169;
  }

  v11 = a5;
  v7 = a2;
  v14 = (&off_278567F28)[2 * a5 + 1];
  if (v14)
  {
    a2 = (v14 - 1);
    if (v14 == 1)
    {
      v8 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v8 = v169;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = &v154;
  v152 = &v154;
  v154 = a6;
  v155 = a7;
  v153 = 0x200000002;
  v156 = 0;
  v157 = 0;
  v16 = *(v7 + 96);
  v145 = a6;
  if (!v16)
  {
    v21 = 1;
    goto LABEL_171;
  }

  if (v8 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22585E100);
  }

  v140 = a4;
  v144 = a7;
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x22585E120);
  }

  v17 = *(v16 - 2);
  v18 = *(v8 + 4);
  v143 = a1;
  v19 = &v154;
  if (v18 < 0x100)
  {
    v20 = WTF::StringImpl::hashSlowCase(v8);
  }

  else
  {
    v20 = v18 >> 8;
  }

  for (i = 0; ; v20 = i + v23)
  {
    v23 = v20 & v17;
    v24 = (v16 + 48 * (v20 & v17));
    v25 = *v24;
    if (*v24 != -1)
    {
      if (!v25)
      {
        if (!*(v7 + 96))
        {
          v16 = 0;
          v21 = 1;
          a1 = v143;
          a7 = v144;
          v15 = &v154;
          goto LABEL_171;
        }

        a1 = v143;
        a7 = v144;
        v15 = &v154;
LABEL_21:
        v16 = 0;
        v21 = 1;
        goto LABEL_171;
      }

      if (WTF::equal(v25, v8, a3))
      {
        break;
      }
    }

    ++i;
  }

  v26 = *(v7 + 96);
  a1 = v143;
  a7 = v144;
  v15 = &v154;
  if (v26 && v24 == (v26 + 48 * *(v26 - 4)))
  {
    goto LABEL_21;
  }

  v159 = 0;
  v160 = 0;
  if (HIDWORD(v153) >> 29)
  {
    __break(0xC471u);
    goto LABEL_336;
  }

  v27 = WTF::fastMalloc((8 * HIDWORD(v153)));
  LODWORD(v160) = HIDWORD(v153);
  v159 = v27;
  v28 = 0;
  do
  {
    WGSL::TypeChecker::infer(&v169, v7, *(v152 + v28), *(v7 + 64), 0);
    v30 = LOBYTE(v172[0]);
    if (!LOBYTE(v172[0]))
    {
      v31 = HIDWORD(v160);
      if (HIDWORD(v160) == v160)
      {
        v32 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v159, HIDWORD(v160) + 1, &v169);
        v33 = HIDWORD(v160) + 1;
        *(v159 + HIDWORD(v160)) = *v32;
        HIDWORD(v160) = v33;
        v34 = LOBYTE(v172[0]);
        if (!LOBYTE(v172[0]))
        {
          goto LABEL_35;
        }
      }

      else
      {
        *(v159 + HIDWORD(v160)) = v169;
        HIDWORD(v160) = v31 + 1;
        v34 = LOBYTE(v172[0]);
        if (!LOBYTE(v172[0]))
        {
          goto LABEL_35;
        }
      }

LABEL_31:
      if (v34 != 255)
      {
        v35 = v169;
        v169 = 0;
        if (v35)
        {
          if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, a2);
          }
        }
      }

      goto LABEL_35;
    }

    if (LOBYTE(v172[0]) != 1)
    {
      goto LABEL_327;
    }

    v19 = v169;
    if (v169)
    {
      atomic_fetch_add_explicit(v169, 2u, memory_order_relaxed);
    }

    v135 = v171;
    v136 = v170;
    v34 = LOBYTE(v172[0]);
    if (LOBYTE(v172[0]))
    {
      goto LABEL_31;
    }

LABEL_35:
    if (v30)
    {
      v21 = 0;
      a1 = v143;
      a7 = v144;
      v16 = v19;
      goto LABEL_169;
    }

    ++v28;
  }

  while (v28 < HIDWORD(v153));
  WGSL::resolveOverloads(*(v7 + 72), v24 + 4, &v159, &v156, &v148);
  if (v150 != 1)
  {
    v57 = WTF::StringPrintStream::StringPrintStream(&v169);
    v58 = HIDWORD(v160);
    if (HIDWORD(v160))
    {
      v59 = v159;
      v60 = *v159;
      v61 = (*(v169 + 4))(v57);
      WGSL::Type::dump(v60, v61);
      (*(v169 + 5))(&v169);
      if (v58 != 1)
      {
        v62 = 8 * v58;
        v63 = (v59 + 8);
        v64 = v62 - 8;
        do
        {
          v65 = *v63++;
          (*(v169 + 4))(&v169);
          WTF::printInternal();
          (*(v169 + 5))(&v169);
          v66 = (*(v169 + 4))(&v169);
          WGSL::Type::dump(v65, v66);
          (*(v169 + 5))(&v169);
          v64 -= 8;
        }

        while (v64);
      }
    }

    WTF::StringPrintStream::StringPrintStream(&v166);
    a1 = v143;
    if (HIDWORD(v157))
    {
      (*(v166 + 4))(&v166);
      WTF::printInternal();
      (*(v166 + 5))(&v166);
      v67 = HIDWORD(v157);
      if (HIDWORD(v157))
      {
        v68 = v156;
        v69 = *v156;
        v70 = (*(v166 + 4))(&v166);
        WGSL::Type::dump(v69, v70);
        (*(v166 + 5))(&v166);
        if (v67 != 1)
        {
          v71 = (v68 + 8);
          v72 = 8 * v67 - 8;
          do
          {
            v73 = *v71++;
            (*(v166 + 4))(&v166);
            WTF::printInternal();
            (*(v166 + 5))(&v166);
            v74 = (*(v166 + 4))(&v166);
            WGSL::Type::dump(v73, v74);
            (*(v166 + 5))(&v166);
            v72 -= 8;
          }

          while (v72);
        }
      }

      (*(v166 + 4))(&v166);
      WTF::printInternal();
      (*(v166 + 5))(&v166);
    }

    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    WTF::StringPrintStream::toString(&v163, &v166);
    WTF::StringPrintStream::toString(&v162, &v169);
    a7 = v144;
    v76 = *(v8 + 1);
    v15 = &v154;
    if (v163)
    {
      v77 = *(v163 + 1);
      if (v162)
      {
LABEL_101:
        v78 = *(v162 + 1);
        if (v78 < 0)
        {
          goto LABEL_331;
        }

        v75 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v75)
        {
          goto LABEL_331;
        }

        goto LABEL_113;
      }
    }

    else
    {
      v77 = 0;
      if (v162)
      {
        goto LABEL_101;
      }
    }

    v79 = 1;
    if (v75)
    {
      goto LABEL_331;
    }

LABEL_113:
    v75 = __OFADD__(v79, 1);
    v81 = v79 + 1;
    v82 = v75;
    if ((v77 & 0x80000000) == 0 && (v82 & 1) == 0)
    {
      v75 = __OFADD__(v77, v81);
      v83 = v77 + v81;
      v84 = v75;
      if ((v76 & 0x80000000) == 0 && !v84)
      {
        v75 = __OFADD__(v76, v83);
        v85 = v76 + v83;
        if (!v75)
        {
          v75 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (!v75)
          {
            v75 = __OFADD__(v86, 8);
            v87 = v86 + 8;
            if (!v75 && !__OFADD__(v87, 25))
            {
              v88 = (*(v8 + 16) & 4) != 0 && (!v163 || (*(v163 + 16) & 4) != 0) && (!v162 || (*(v162 + 16) & 4) != 0);
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v164, (v87 + 25), v88, "no matching overload for ", 0x19uLL, "operator", 8uLL, 0x20uLL, v8, v163, 0x28, v162, 41);
              v16 = v164[0];
              if (v164[0])
              {
                v135 = *(a3 + 1);
                v136 = *a3;
                v92 = v162;
                v162 = 0;
                if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v92, v91);
                }

                v93 = v163;
                v163 = 0;
                if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v93, v91);
                }

                if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v8, v91);
                }

                WTF::StringPrintStream::~StringPrintStream(&v166);
                WTF::StringPrintStream::~StringPrintStream(&v169);
                v21 = 0;
                if (v150 != 1)
                {
                  goto LABEL_169;
                }

                goto LABEL_167;
              }
            }
          }
        }
      }
    }

LABEL_331:
    __break(0xC471u);
    JUMPOUT(0x22585E0C0);
  }

  if (*(v7 + 65) != 1 || *(v24 + 9) != 1)
  {
    v36 = HIDWORD(v153);
    if (HIDWORD(v153))
    {
      v37 = (v148 + 8);
      v38 = *v148;
      v39 = v152;
      while (v38)
      {
        v41 = *v37++;
        v40 = v41;
        v42 = *v39;
        v39 = (v39 + 8);
        *(v42 + 24) = v40;
        --v38;
        if (!--v36)
        {
          goto LABEL_50;
        }
      }

      __break(0xC471u);
LABEL_336:
      JUMPOUT(0x22585E0B0);
    }

LABEL_50:
    v16 = v149;
    *(v7 + 48) = v149;
    if (v140)
    {
      if ((*(*v140 + 16))(v140) == 19)
      {
        v43 = *(v24 + 8) == 1;
        *(v140 + 88) = v43;
        *(v140 + 89) = *(v24 + 24);
        if (v43)
        {
          v44 = v16;
          if (v16 || (v44 = *(v140 + 24)) != 0)
          {
            v45 = *(v44 + 48);
            if (v45 != 10)
            {
              goto LABEL_59;
            }

            v44 = *(v44 + 1);
            if (v44)
            {
              v45 = *(v44 + 48);
LABEL_59:
              if (v45 == 1)
              {
                v44 = *v44;
                if (v44)
                {
                  v45 = *(v44 + 48);
                  goto LABEL_62;
                }
              }

              else
              {
LABEL_62:
                if (!v45 && *v44 - 1 <= 1 && *(v140 + 84) == 1)
                {
                  v46 = *(**(v140 + 72) + 24);
                  if (v46)
                  {
                    v47 = v46[48];
                    if (v47 == 10)
                    {
                      v46 = *(v46 + 1);
                      if (!v46)
                      {
                        goto LABEL_75;
                      }

                      v47 = v46[48];
                    }

                    if (v47 == 1)
                    {
                      v46 = *v46;
                      if (!v46)
                      {
                        goto LABEL_75;
                      }

                      v47 = v46[48];
                    }

                    if (!v47 && *v46 - 3 <= 2)
                    {
                      *(*(v7 + 40) + 32) = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_75:
    v48 = HIDWORD(v153);
    v138 = v11;
    if (!HIDWORD(v153))
    {
      v164[0] = 0;
      v80 = v24[2];
      if (v80)
      {
        goto LABEL_134;
      }

      goto LABEL_141;
    }

    v137 = v16;
    v139 = &v154;
    v49 = WTF::fastMalloc((24 * HIDWORD(v153) + 8));
    *v49 = v48;
    v50 = 24;
    bzero((v49 + 8), 24 * ((24 * v48 - 24) / 0x18uLL) + 24);
    v52 = 0;
    v164[0] = v49;
    v53 = 1;
    while (2)
    {
      if (v52 >= HIDWORD(v153))
      {
        __break(0xC471u);
        JUMPOUT(0x22585E0B8);
      }

      v54 = *(v152 + v52);
      if (*(v54 + 56) != 1)
      {
        v53 = 0;
        goto LABEL_78;
      }

      WGSL::TypeChecker::convertValue(&v169, (v54 + 8), *(v54 + 24), (v54 + 32), v51);
      if (LOBYTE(v172[0]) == 1)
      {
        goto LABEL_247;
      }

      if ((*(v54 + 56) & 1) == 0)
      {
        goto LABEL_246;
      }

      if (v52 >= *v164[0])
      {
        __break(0xC471u);
        JUMPOUT(0x22585E0E0);
      }

      v55 = v164[0] + v50;
      v56 = *(v54 + 48);
      if (*(v164[0] + v50) == 255)
      {
        if (v56 != 255)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v56 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, v164[0] + v50 - 16);
          *v55 = -1;
          goto LABEL_78;
        }

LABEL_88:
        v169 = (v164[0] + v50 - 16);
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v56, &v169, v169, (v54 + 32));
      }

LABEL_78:
      ++v52;
      v50 += 24;
      if (v48 == v52)
      {
        v80 = v24[2];
        v15 = &v154;
        v16 = v137;
        if (v80)
        {
          if ((v53 & 1) == 0)
          {
            v21 = 1;
            goto LABEL_109;
          }

LABEL_134:
          v29 = v80(&v169, v16, v164);
          a7 = v144;
          if (!LOBYTE(v172[0]))
          {
            a1 = v143;
            a2 = v140;
            if (!v140)
            {
LABEL_139:
              if (v171 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v166, &v169);
              }

              goto LABEL_158;
            }

            WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v166, v140, v16, &v169, v89);
            if (v168 != 1)
            {
              if (LOBYTE(v172[0]) != 255)
              {
                if (!LOBYTE(v172[0]))
                {
                  goto LABEL_139;
                }

                v94 = v169;
                v169 = 0;
                if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v94, a2);
                }
              }

LABEL_158:
              v21 = 1;
              goto LABEL_159;
            }

            v16 = v166;
            if (v166)
            {
              atomic_fetch_add_explicit(v166, 2u, memory_order_relaxed);
              v141 = v167;
              if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v133 = v16;
LABEL_322:
                WTF::StringImpl::destroy(v133, a2);
              }
            }

            else
            {
              v141 = v167;
            }

            goto LABEL_323;
          }

          if (LOBYTE(v172[0]) == 1)
          {
            v132 = v169;
            if (v169)
            {
              atomic_fetch_add_explicit(v169, 2u, memory_order_relaxed);
            }

            WTF::makeString<WTF::String>(&v166, v132);
            v141 = *a3;
            v16 = v166;
            if (v132 && atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v133 = v132;
              goto LABEL_322;
            }

LABEL_323:
            std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(&v169, a2);
            v21 = 0;
            v135 = *(&v141 + 1);
            v136 = v141;
LABEL_109:
            a1 = v143;
            a7 = v144;
            goto LABEL_159;
          }

LABEL_327:
          mpark::throw_bad_variant_access(v29);
        }

LABEL_141:
        v90 = *(v7 + 64);
        a7 = v144;
        if (v90 <= 2)
        {
          if (v90 == 2)
          {
            v134 = "override";
          }

          else
          {
            v134 = "constant";
          }

          WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v169, "cannot call function from ", 27, v134, 9, " context", 9);
          v21 = 0;
          a1 = v143;
          v135 = *(a3 + 1);
          v136 = *a3;
          v16 = v169;
        }

        else
        {
          v21 = 1;
          a1 = v143;
        }

        goto LABEL_159;
      }

      continue;
    }
  }

  atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char>(&v169, v8);
  v135 = *(a3 + 1);
  v136 = *a3;
  v16 = v169;
  v169 = 0;
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v21 = 0;
  a1 = v143;
  a7 = v144;
  if (v150 == 1)
  {
    goto LABEL_167;
  }

LABEL_169:
  v100 = v159;
  if (v159)
  {
    v159 = 0;
    LODWORD(v160) = 0;
    WTF::fastFree(v100, a2);
  }

LABEL_171:
  v101 = v156;
  if (v156)
  {
    v156 = 0;
    LODWORD(v157) = 0;
    WTF::fastFree(v101, a2);
  }

  v102 = v152;
  if (v15 != v152 && v152)
  {
    v152 = 0;
    LODWORD(v153) = 0;
    WTF::fastFree(v102, a2);
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  if ((v21 & 1) == 0)
  {
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      *a1 = v16;
      *(a1 + 8) = v136;
      *(a1 + 16) = v135;
      *(a1 + 24) = 1;
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, a2);
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = v136;
      *(a1 + 16) = v135;
      *(a1 + 24) = 1;
    }

    return;
  }

  if (v11 != 3)
  {
    v105 = v145;
    if (v11 == 4)
    {
      v103 = "modulo";
      v104 = 7;
      v106 = *(a7 + 24);
      if (v106)
      {
        goto LABEL_185;
      }
    }

    goto LABEL_293;
  }

  v103 = "division";
  v104 = 9;
  v105 = v145;
  v106 = *(a7 + 24);
  if (!v106)
  {
    goto LABEL_293;
  }

LABEL_185:
  if (v106[48] == 1)
  {
    v106 = *v106;
    if (!v106)
    {
      goto LABEL_293;
    }
  }

  while (v106[48] == 10)
  {
    v106 = *(v106 + 1);
    if (!v106)
    {
      goto LABEL_293;
    }
  }

  if (v106[48] || *v106 > 2u)
  {
LABEL_293:
    *a1 = 0;
    *(a1 + 24) = 0;
    return;
  }

  v107 = *(v7 + 40);
  if (v11 == 3)
  {
    *(v107 + 14) = 1;
  }

  else
  {
    *(v107 + 15) = 1;
  }

  LOBYTE(v152) = 0;
  LOBYTE(v155) = 0;
  v108 = *(v105 + 56);
  if (v108 == 1)
  {
    v109 = v105;
    LOBYTE(v154) = -1;
    v110 = *(v105 + 48);
    if (v110 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v110, &v169, &v152, (v105 + 32));
      LOBYTE(v154) = *(v109 + 48);
    }

    LOBYTE(v155) = 1;
  }

  LOBYTE(v148) = 0;
  v151 = 0;
  if (*(a7 + 56) != 1)
  {
    goto LABEL_290;
  }

  v150 = -1;
  v111 = *(a7 + 48);
  if (v111 == 255)
  {
    v151 = 1;
    if (v108)
    {
      goto LABEL_290;
    }

    LOBYTE(v146[0]) = 0;
    v113 = -1;
LABEL_208:
    v147 = v113;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v111, &v169, &v148, (a7 + 32));
    v112 = *(a7 + 48);
    v150 = *(a7 + 48);
    v151 = 1;
    if (v155)
    {
      if (v112 == 255)
      {
        goto LABEL_290;
      }

LABEL_289:
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v148);
LABEL_290:
      if (v155 == 1 && v154 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v152);
      }

      goto LABEL_293;
    }

    LOBYTE(v146[0]) = 0;
    v147 = -1;
    if (v112 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v112, &v169, v146, &v148);
      v113 = v150;
      goto LABEL_208;
    }
  }

  WGSL::zeroValue(&v159, *(a7 + 24));
  LOBYTE(v169) = 0;
  LOBYTE(v171) = -1;
  if (v147 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v147, &v166, &v169, v146);
    LOBYTE(v171) = v147;
  }

  LOBYTE(v172[0]) = 0;
  v173 = -1;
  if (v161 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v161, &v166, v172, &v159);
    v173 = v161;
  }

  v114 = WTF::fastMalloc(0x38);
  *v114 = 2;
  *(v114 + 8) = 0;
  *(v114 + 24) = -1;
  if (v171 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v171, &v166, v114 + 1, &v169);
    *(v114 + 24) = v171;
  }

  *(v114 + 32) = 0;
  *(v114 + 48) = -1;
  if (v173 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v173, &v166, v114 + 4, v172);
    *(v114 + 48) = v173;
  }

  v156 = v114;
  WGSL::constantEqual(&v156, &v166);
  v116 = *v114;
  if (v116)
  {
    v117 = 24 * v116;
    v118 = v114 + 6;
    do
    {
      v115 = v118 - 16;
      if (*v118 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v164, v115);
      }

      *v118 = -1;
      v118 += 24;
      v117 -= 24;
    }

    while (v117);
  }

  v29 = WTF::fastFree(v114, v115);
  if (v173 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v164, v172);
  }

  v173 = -1;
  if (v171 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v164, &v169);
  }

  if (v168)
  {
    if (v168 != 1)
    {
      goto LABEL_327;
    }

    v120 = v166;
    if (v166)
    {
      atomic_fetch_add_explicit(v166, 2u, memory_order_relaxed);
      if (atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v120, v119);
      }
    }

    v121 = 1;
    goto LABEL_277;
  }

  LOBYTE(v156) = 0;
  v122 = -1;
  v158 = -1;
  v123 = BYTE8(v167);
  if (BYTE8(v167) > 5u)
  {
    if (BYTE8(v167) > 8u)
    {
      if (BYTE8(v167) == 9)
      {
        v125 = v167;
        *&v167 = 0;
        v156 = v166;
        v157 = v125;
        goto LABEL_256;
      }

      if (BYTE8(v167) != 10)
      {
        LOBYTE(v164[0]) = 0;
        goto LABEL_257;
      }
    }

    else if (BYTE8(v167) == 6)
    {
      LOBYTE(v156) = v166;
      goto LABEL_256;
    }

    v124 = v166;
    v166 = 0;
LABEL_255:
    v156 = v124;
    goto LABEL_256;
  }

  if (BYTE8(v167) > 2u)
  {
    if (BYTE8(v167) == 3 || BYTE8(v167) == 4)
    {
      LODWORD(v156) = v166;
      goto LABEL_256;
    }

    v124 = v166;
    goto LABEL_255;
  }

  if (BYTE8(v167))
  {
    if (BYTE8(v167) == 1)
    {
      LOWORD(v156) = v166;
    }

    else
    {
      v156 = v166;
    }
  }

  else
  {
    LODWORD(v156) = v166;
  }

LABEL_256:
  v158 = BYTE8(v167);
  LOBYTE(v164[0]) = 0;
  v165 = -1;
  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(BYTE8(v167), &v162, v164, &v156);
  v122 = v158;
LABEL_257:
  v165 = v122;
  v126 = WTF::fastMalloc(0x20);
  *v126 = 1;
  *(v126 + 8) = 0;
  *(v126 + 24) = -1;
  v127 = v165;
  if (v165 != 255)
  {
    v127 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v165, &v162, v126 + 1, v164);
    *(v126 + 24) = v165;
  }

  v163 = v126;
  WGSL::constantAny(v127, &v163, &v169);
  v129 = *v126;
  if (v129)
  {
    v130 = 24 * v129;
    v131 = v126 + 6;
    do
    {
      v128 = v131 - 16;
      if (*v131 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v162, v128);
      }

      *v131 = -1;
      v131 += 24;
      v130 -= 24;
    }

    while (v130);
  }

  v29 = WTF::fastFree(v126, v128);
  if (v165 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v162, v164);
  }

  v121 = LOBYTE(v172[0]);
  if (LOBYTE(v172[0]))
  {
    if (LOBYTE(v172[0]) != 1)
    {
      goto LABEL_327;
    }

    v120 = v169;
    if (v169)
    {
      atomic_fetch_add_explicit(v169, 2u, memory_order_relaxed);
      if (atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v120, v119);
      }
    }
  }

  else
  {
    if (v171 != 6)
    {
      goto LABEL_327;
    }

    v120 = v169;
    LOBYTE(v164[0]) = v169;
    v165 = 6;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v163, v164);
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v164, &v169);
  }

  if (v158 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v156);
  }

  if (v123 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v166);
  }

LABEL_277:
  if (v161 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v159);
  }

  if (v121 && v120)
  {
    if (atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v120, v119);
    }

    LOBYTE(v120) = 0;
  }

  if (v147 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, v146);
  }

  v147 = -1;
  if ((v120 & 1) == 0)
  {
    if ((v151 & 1) == 0 || v150 == 255)
    {
      goto LABEL_290;
    }

    goto LABEL_289;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v169, "invalid ", 9, v103, v104, " by zero", 9);
  *a1 = v169;
  *(a1 + 8) = *a3;
  *(a1 + 24) = 1;
  if (v151 == 1 && v150 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v148);
  }

  if (v155 == 1 && v154 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v169, &v152);
  }
}

void WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type>(void *a1, int8x16_t *a2, uint64_t a3, unsigned __int8 *a4)
{
  v107[20] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >> 31)
  {
    __break(0xC471u);
    goto LABEL_142;
  }

  WTF::StringPrintStream::StringPrintStream(v107);
  WGSL::Type::dump(a4, v107);
  WTF::StringPrintStream::toString(&v106, v107);
  WTF::StringPrintStream::~StringPrintStream(v107);
  v11 = v106;
  if (v106)
  {
    v12 = *(v106 + 1);
    if (v12 < 0 || (v9 = __OFADD__(v12, 40), v13 = v12 + 40, v9))
    {
LABEL_13:
      *a1 = 0;
      v15 = 1;
      v106 = 0;
      if (!v11)
      {
        goto LABEL_130;
      }

      goto LABEL_128;
    }
  }

  else
  {
    v13 = 40;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v14 = (v4 + v13);
  if (__OFADD__(v4, v13))
  {
    goto LABEL_13;
  }

  if (!v106 || (v16 = *(v106 + 4), atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed), (v16 & 4) != 0))
  {
    if ((v14 & 0x80000000) != 0)
    {
      v17 = 0;
      goto LABEL_124;
    }

    WTF::tryFastCompactMalloc((v14 + 20));
    v17 = v107[0];
    if (!v107[0])
    {
      goto LABEL_124;
    }

    v38 = (v107[0] + 20);
    *v107[0] = 2;
    *(v17 + 4) = v14;
    *(v17 + 8) = v17 + 20;
    *(v17 + 16) = 4;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    if (v4)
    {
      if (v4 == 1)
      {
        *v38 = a2->i8[0];
      }

      else
      {
        memcpy((v17 + 20), a2, v4);
      }
    }

    v39 = v14 - v4;
    if (v14 < v4)
    {
      goto LABEL_142;
    }

    v40 = &v38[v4];
    if (!v11)
    {
      qmemcpy(v40, " can only be applied to integers, found ", 40);
      if (v39 >= 0x28)
      {
        *a1 = v17;
        v11 = v106;
        v15 = v17 == 0;
        v106 = 0;
        if (!v11)
        {
          goto LABEL_130;
        }

        goto LABEL_128;
      }

      goto LABEL_142;
    }

    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    qmemcpy(v40, " can only be applied to integers, found ", 40);
    if (v39 <= 0x27)
    {
      goto LABEL_142;
    }

    v41 = (v40 + 40);
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    v10 = *(v11 + 1);
    v42 = *(v11 + 1);
    if ((*(v11 + 16) & 4) != 0)
    {
      if (v42)
      {
        if (v42 == 1)
        {
          v41->i8[0] = v10->i8[0];
        }

        else
        {
          memcpy(v41, v10, v42);
        }
      }

      goto LABEL_120;
    }

    v43 = (v41 + v42);
    if (v42 >= 0x10)
    {
      v44 = (v41 + (v42 & 0xFFFFFFF0));
      do
      {
        v45 = vld2q_s8(v10->i8);
        v10 += 2;
        *v41++ = v45;
      }

      while (v41 != v44);
    }

    if (v41 == v43)
    {
      goto LABEL_120;
    }

    v46 = a3 + v17 + v42;
    v47 = v46 - v41 - (a3 != 0) + 60;
    if (v47 < 4 || (!a3 ? (v48 = v41) : (v48 = &v41->i8[1]), v41 < (&v10[7].u64[1] + 2 * v46 + -2 * v48) ? (v49 = v10 >= v46 - (a3 != 0) + 60) : (v49 = 1), !v49))
    {
      v51 = v41;
      v52 = v10;
      goto LABEL_73;
    }

    if (v47 >= 0x20)
    {
      v50 = v47 & 0xFFFFFFFFFFFFFFE0;
      v73 = v10 + 2;
      v74 = v41 + 1;
      v75 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v77 = v73[-2];
        v76 = v73[-1];
        v79 = *v73;
        v78 = v73[1];
        v73 += 4;
        v74[-1] = vuzp1q_s8(v77, v76);
        *v74 = vuzp1q_s8(v79, v78);
        v74 += 2;
        v75 -= 32;
      }

      while (v75);
      if (v47 == v50)
      {
        goto LABEL_120;
      }

      if ((v47 & 0x1C) == 0)
      {
        v52 = (v10 + 2 * v50);
        v51 = (v41 + v50);
        goto LABEL_73;
      }
    }

    else
    {
      v50 = 0;
    }

    v51 = (v41 + (v47 & 0xFFFFFFFFFFFFFFFCLL));
    v52 = (v10 + 2 * (v47 & 0xFFFFFFFFFFFFFFFCLL));
    v80 = (v10 + 2 * v50);
    v81 = (v41->i32 + v50);
    v82 = v50 - (v47 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v83 = *v80++;
      *v81++ = vuzp1_s8(v83, v83).u32[0];
      v82 += 4;
    }

    while (v82);
    if (v47 == (v47 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_120;
    }

    do
    {
LABEL_73:
      v53 = v52->i8[0];
      v52 = (v52 + 2);
      v51->i8[0] = v53;
      v51 = (v51 + 1);
    }

    while (v51 != v43);
    goto LABEL_120;
  }

  if (v14 <= 0x7FFFFFEF)
  {
    WTF::tryFastCompactMalloc((2 * v14 + 20));
    v17 = v107[0];
    if (v107[0])
    {
      v18 = v107[0] + 20;
      *v107[0] = 2;
      *(v17 + 4) = v14;
      *(v17 + 8) = v17 + 20;
      *(v17 + 16) = 0;
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      v19 = (v17 + 20 + 2 * v4);
      if (v4 >= 0x40)
      {
        v20 = v18 + 2 * (v4 & 0x7FFFFFC0);
        v21 = 0uLL;
        do
        {
          v108.val[0] = *a2;
          v22 = a2[1];
          v110.val[0] = a2[2];
          v23 = a2[3];
          a2 += 4;
          v24 = v23;
          v110.val[1] = 0uLL;
          v112.val[0] = v22;
          v108.val[1] = 0uLL;
          v25 = v18;
          vst2q_s8(v25, v108);
          v25 += 32;
          v112.val[1] = 0uLL;
          vst2q_s8(v25, v112);
          v26 = (v18 + 64);
          vst2q_s8(v26, v110);
          v27 = (v18 + 96);
          vst2q_s8(v27, *(&v21 - 1));
          v18 += 128;
        }

        while (v18 != v20);
        v18 = v20;
      }

      if (v18 != v19)
      {
        v28 = v17 + 2 * a3 - v18;
        v29 = -2;
        if (a3)
        {
          v30 = -2;
        }

        else
        {
          v30 = 0;
        }

        v31 = v28 + v30 + 18;
        if (v31 < 0xE)
        {
          goto LABEL_32;
        }

        if (!a3)
        {
          v29 = 0;
        }

        v32 = v28 + v29 + 18;
        if (v18 < a2->u64 + (v32 >> 1) + 1 && a2 < (v32 & 0xFFFFFFFFFFFFFFFELL) + v18 + 2)
        {
LABEL_32:
          v33 = a2;
          v34 = v18;
          goto LABEL_33;
        }

        v71 = (v31 >> 1) + 1;
        if (v31 >= 0x3E)
        {
          v72 = v71 & 0xFFFFFFFFFFFFFFE0;
          v84 = (v18 + 32);
          v85 = &a2[1];
          v86 = v71 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v87 = *v85[-2].i8;
            v88 = vmovl_u8(*v85);
            v89 = vmovl_high_u8(*v85->i8);
            v84[-2] = vmovl_u8(*v87.i8);
            v84[-1] = vmovl_high_u8(v87);
            *v84 = v88;
            v84[1] = v89;
            v84 += 4;
            v85 += 4;
            v86 -= 32;
          }

          while (v86);
          if (v71 == v72)
          {
            goto LABEL_34;
          }

          if ((v71 & 0x18) == 0)
          {
            v34 = (v18 + 2 * v72);
            v33 = (a2 + v72);
            do
            {
LABEL_33:
              v35 = v33->u8[0];
              v33 = (v33 + 1);
              v34->i16[0] = v35;
              v34 = (v34 + 2);
            }

            while (v34 != v19);
            goto LABEL_34;
          }
        }

        else
        {
          v72 = 0;
        }

        v33 = (a2 + (v71 & 0xFFFFFFFFFFFFFFF8));
        v34 = (v18 + 2 * (v71 & 0xFFFFFFFFFFFFFFF8));
        v90 = (v18 + 2 * v72);
        v91 = &a2->i8[v72];
        v92 = v72 - (v71 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v93 = *v91++;
          *v90++ = vmovl_u8(v93);
          v92 += 8;
        }

        while (v92);
        if (v71 != (v71 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_33;
        }
      }

LABEL_34:
      if (v14 >= v4)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        *v19 = xmmword_225882870;
        v19[1] = xmmword_225882880;
        v19[2] = xmmword_225882890;
        v19[3] = xmmword_2258828A0;
        v19[4] = xmmword_2258828B0;
        if (v14 - v4 > 0x27)
        {
          v36 = v19 + 5;
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
          v10 = *(v11 + 1);
          v37 = *(v11 + 1);
          if ((*(v11 + 16) & 4) == 0)
          {
            if (v37)
            {
              if (v37 == 1)
              {
                v36->i16[0] = v10->i16[0];
              }

              else
              {
                memcpy(v36, v10, 2 * v37);
              }
            }

            goto LABEL_120;
          }

          v54 = (v36 + 2 * v37);
          if (v37 >= 0x40)
          {
            v55 = (v36 + 2 * (v37 & 0xFFFFFFC0));
            v56 = 0uLL;
            do
            {
              v109.val[0] = *v10;
              v57 = v10[1];
              v111.val[0] = v10[2];
              v58 = v10[3];
              v10 += 4;
              v59 = v58;
              v111.val[1] = 0uLL;
              v113.val[0] = v57;
              v109.val[1] = 0uLL;
              v60 = v36;
              vst2q_s8(v60, v109);
              v60 += 32;
              v113.val[1] = 0uLL;
              vst2q_s8(v60, v113);
              i8 = v36[4].i8;
              vst2q_s8(i8, v111);
              v62 = v36[6].i8;
              vst2q_s8(v62, *(&v56 - 1));
              v36 += 8;
            }

            while (v36 != v55);
            v36 = v55;
          }

          if (v36 != v54)
          {
            v63 = v17 + 2 * (a3 + v37) - v36;
            v64 = -2;
            if (a3)
            {
              v65 = -2;
            }

            else
            {
              v65 = 0;
            }

            v66 = v63 + v65 + 98;
            if (v66 < 0xE)
            {
              goto LABEL_88;
            }

            if (!a3)
            {
              v64 = 0;
            }

            v67 = v63 + v64 + 98;
            if (v36 < &v10->i8[(v67 >> 1) + 1] && v10 < (&v36->i16[1] + (v67 & 0xFFFFFFFFFFFFFFFELL)))
            {
LABEL_88:
              v68 = v10;
              v69 = v36;
              goto LABEL_89;
            }

            v94 = (v66 >> 1) + 1;
            if (v66 >= 0x3E)
            {
              v95 = v94 & 0xFFFFFFFFFFFFFFE0;
              v96 = v36 + 2;
              v97 = &v10[1];
              v98 = v94 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v99 = *v97[-2].i8;
                v100 = vmovl_u8(*v97);
                v101 = vmovl_high_u8(*v97->i8);
                v96[-2] = vmovl_u8(*v99.i8);
                v96[-1] = vmovl_high_u8(v99);
                *v96 = v100;
                v96[1] = v101;
                v96 += 4;
                v97 += 4;
                v98 -= 32;
              }

              while (v98);
              if (v94 == v95)
              {
                goto LABEL_120;
              }

              if ((v94 & 0x18) == 0)
              {
                v69 = (v36 + 2 * v95);
                v68 = (v10 + v95);
                goto LABEL_89;
              }
            }

            else
            {
              v95 = 0;
            }

            v68 = (v10 + (v94 & 0xFFFFFFFFFFFFFFF8));
            v69 = (v36 + 2 * (v94 & 0xFFFFFFFFFFFFFFF8));
            v102 = (v36 + 2 * v95);
            v103 = &v10->i8[v95];
            v104 = v95 - (v94 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v105 = *v103++;
              *v102++ = vmovl_u8(v105);
              v104 += 8;
            }

            while (v104);
            if (v94 == (v94 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_120;
            }

            do
            {
LABEL_89:
              v70 = v68->u8[0];
              v68 = (v68 + 1);
              v69->i16[0] = v70;
              v69 = (v69 + 2);
            }

            while (v69 != v54);
          }

LABEL_120:
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
LABEL_122:
              if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
              {
                goto LABEL_124;
              }

              goto LABEL_123;
            }
          }

          else if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_122;
          }

          WTF::StringImpl::destroy(v11, v10);
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
LABEL_124:
            *a1 = v17;
            if (!v11)
            {
              goto LABEL_127;
            }

            goto LABEL_125;
          }

LABEL_123:
          WTF::StringImpl::destroy(v11, v10);
          goto LABEL_124;
        }
      }

LABEL_142:
      __break(1u);
      goto LABEL_143;
    }
  }

  v17 = 0;
  *a1 = 0;
LABEL_125:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

LABEL_127:
  v11 = v106;
  v15 = v17 == 0;
  v106 = 0;
  if (!v11)
  {
    goto LABEL_130;
  }

LABEL_128:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

LABEL_130:
  if (v15)
  {
LABEL_143:
    __break(0xC471u);
  }
}

void WTF::makeString<WTF::ASCIILiteral,WGSL::Type>(void *a1, int8x16_t *a2, uint64_t a3, unsigned __int8 *a4)
{
  v102[20] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >> 31)
  {
    __break(0xC471u);
    goto LABEL_138;
  }

  WTF::StringPrintStream::StringPrintStream(v102);
  WGSL::Type::dump(a4, v102);
  WTF::StringPrintStream::toString(&v101, v102);
  WTF::StringPrintStream::~StringPrintStream(v102);
  v10 = v101;
  if (v101)
  {
    v11 = *(v101 + 1);
    if (((v11 | v4) & 0x80000000) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if ((v4 & 0x80000000) != 0)
    {
LABEL_11:
      *a1 = 0;
      v13 = 1;
      goto LABEL_128;
    }
  }

  v12 = (v4 + v11);
  if (__OFADD__(v4, v11))
  {
    goto LABEL_11;
  }

  if (v101)
  {
    v14 = *(v101 + 4);
    atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
    if ((v14 & 4) == 0)
    {
      if (!v12)
      {
        v15 = MEMORY[0x277CD4668];
        atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
        goto LABEL_49;
      }

      if (v12 > 0x7FFFFFEF)
      {
        v15 = 0;
LABEL_49:
        *a1 = v15;
        goto LABEL_125;
      }

      WTF::tryFastCompactMalloc((2 * v12 + 20));
      v15 = v102[0];
      if (!v102[0])
      {
        goto LABEL_49;
      }

      v17 = v102[0] + 20;
      *v102[0] = 2;
      *(v15 + 4) = v12;
      *(v15 + 8) = v15 + 20;
      *(v15 + 16) = 0;
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      v18 = (v15 + 20 + 2 * v4);
      if (v4 >= 0x40)
      {
        v19 = v17 + 2 * (v4 & 0x7FFFFFC0);
        v20 = 0uLL;
        do
        {
          v103.val[0] = *a2;
          v21 = a2[1];
          v105.val[0] = a2[2];
          v22 = a2[3];
          a2 += 4;
          v23 = v22;
          v105.val[1] = 0uLL;
          v107.val[0] = v21;
          v103.val[1] = 0uLL;
          v24 = v17;
          vst2q_s8(v24, v103);
          v24 += 32;
          v107.val[1] = 0uLL;
          vst2q_s8(v24, v107);
          v25 = (v17 + 64);
          vst2q_s8(v25, v105);
          v26 = (v17 + 96);
          vst2q_s8(v26, *(&v20 - 1));
          v17 += 128;
        }

        while (v17 != v19);
        v17 = v19;
      }

      if (v17 != v18)
      {
        v27 = v15 + 2 * a3 - v17;
        v28 = -2;
        if (a3)
        {
          v29 = -2;
        }

        else
        {
          v29 = 0;
        }

        v30 = v27 + v29 + 18;
        if (v30 < 0xE)
        {
          goto LABEL_42;
        }

        if (!a3)
        {
          v28 = 0;
        }

        v31 = v27 + v28 + 18;
        if (v17 < a2->u64 + (v31 >> 1) + 1 && a2 < (v31 & 0xFFFFFFFFFFFFFFFELL) + v17 + 2)
        {
LABEL_42:
          v32 = a2;
          v33 = v17;
          goto LABEL_43;
        }

        v66 = (v30 >> 1) + 1;
        if (v30 >= 0x3E)
        {
          v67 = v66 & 0xFFFFFFFFFFFFFFE0;
          v79 = (v17 + 32);
          v80 = &a2[1];
          v81 = v66 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v82 = *v80[-2].i8;
            v83 = vmovl_u8(*v80);
            v84 = vmovl_high_u8(*v80->i8);
            v79[-2] = vmovl_u8(*v82.i8);
            v79[-1] = vmovl_high_u8(v82);
            *v79 = v83;
            v79[1] = v84;
            v79 += 4;
            v80 += 4;
            v81 -= 32;
          }

          while (v81);
          if (v66 == v67)
          {
            goto LABEL_44;
          }

          if ((v66 & 0x18) == 0)
          {
            v33 = (v17 + 2 * v67);
            v32 = (a2 + v67);
            do
            {
LABEL_43:
              v34 = v32->u8[0];
              v32 = (v32 + 1);
              v33->i16[0] = v34;
              v33 = (v33 + 2);
            }

            while (v33 != v18);
            goto LABEL_44;
          }
        }

        else
        {
          v67 = 0;
        }

        v32 = (a2 + (v66 & 0xFFFFFFFFFFFFFFF8));
        v33 = (v17 + 2 * (v66 & 0xFFFFFFFFFFFFFFF8));
        v85 = (v17 + 2 * v67);
        v86 = &a2->i8[v67];
        v87 = v67 - (v66 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v88 = *v86++;
          *v85++ = vmovl_u8(v88);
          v87 += 8;
        }

        while (v87);
        if (v66 != (v66 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      if (v4 <= v12)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        v9 = *(v10 + 1);
        v35 = *(v10 + 1);
        if ((*(v10 + 16) & 4) == 0)
        {
          if (v35)
          {
            if (v35 == 1)
            {
              v18->i16[0] = v9->i16[0];
            }

            else
            {
              memcpy(v18, v9, 2 * v35);
            }
          }

          goto LABEL_120;
        }

        v49 = (v18 + 2 * v35);
        if (v35 >= 0x40)
        {
          v50 = (v18 + 2 * (v35 & 0xFFFFFFC0));
          v51 = 0uLL;
          do
          {
            v104.val[0] = *v9;
            v52 = v9[1];
            v106.val[0] = v9[2];
            v53 = v9[3];
            v9 += 4;
            v54 = v53;
            v106.val[1] = 0uLL;
            v108.val[0] = v52;
            v104.val[1] = 0uLL;
            v55 = v18;
            vst2q_s8(v55, v104);
            v55 += 32;
            v108.val[1] = 0uLL;
            vst2q_s8(v55, v108);
            i8 = v18[4].i8;
            vst2q_s8(i8, v106);
            v57 = v18[6].i8;
            vst2q_s8(v57, *(&v51 - 1));
            v18 += 8;
          }

          while (v18 != v50);
          v18 = v50;
        }

        if (v18 == v49)
        {
          goto LABEL_120;
        }

        v58 = v15 + 2 * (a3 + v35) - v18;
        v59 = -2;
        if (a3)
        {
          v60 = -2;
        }

        else
        {
          v60 = 0;
        }

        v61 = v58 + v60 + 18;
        if (v61 < 0xE)
        {
          goto LABEL_88;
        }

        if (!a3)
        {
          v59 = 0;
        }

        v62 = v58 + v59 + 18;
        if (v18 < &v9->i8[(v62 >> 1) + 1] && v9 < (&v18->i16[1] + (v62 & 0xFFFFFFFFFFFFFFFELL)))
        {
LABEL_88:
          v63 = v9;
          v64 = v18;
          goto LABEL_89;
        }

        v89 = (v61 >> 1) + 1;
        if (v61 >= 0x3E)
        {
          v90 = v89 & 0xFFFFFFFFFFFFFFE0;
          v91 = v18 + 2;
          v92 = &v9[1];
          v93 = v89 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v94 = *v92[-2].i8;
            v95 = vmovl_u8(*v92);
            v96 = vmovl_high_u8(*v92->i8);
            v91[-2] = vmovl_u8(*v94.i8);
            v91[-1] = vmovl_high_u8(v94);
            *v91 = v95;
            v91[1] = v96;
            v91 += 4;
            v92 += 4;
            v93 -= 32;
          }

          while (v93);
          if (v89 == v90)
          {
            goto LABEL_120;
          }

          if ((v89 & 0x18) == 0)
          {
            v64 = (v18 + 2 * v90);
            v63 = (v9 + v90);
            do
            {
LABEL_89:
              v65 = v63->u8[0];
              v63 = (v63 + 1);
              v64->i16[0] = v65;
              v64 = (v64 + 2);
            }

            while (v64 != v49);
            goto LABEL_120;
          }
        }

        else
        {
          v90 = 0;
        }

        v63 = (v9 + (v89 & 0xFFFFFFFFFFFFFFF8));
        v64 = (v18 + 2 * (v89 & 0xFFFFFFFFFFFFFFF8));
        v97 = (v18 + 2 * v90);
        v98 = &v9->i8[v90];
        v99 = v90 - (v89 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v100 = *v98++;
          *v97++ = vmovl_u8(v100);
          v99 += 8;
        }

        while (v99);
        if (v89 == (v89 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_120;
        }

        goto LABEL_89;
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(0xC471u);
      return;
    }
  }

  if (!v12)
  {
    v15 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_124;
  }

  if ((v12 & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_124;
  }

  WTF::tryFastCompactMalloc((v12 + 20));
  v15 = v102[0];
  if (!v102[0])
  {
    goto LABEL_124;
  }

  v16 = (v102[0] + 20);
  *v102[0] = 2;
  *(v15 + 4) = v12;
  *(v15 + 8) = v15 + 20;
  *(v15 + 16) = 4;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  if (v4)
  {
    if (v4 == 1)
    {
      *v16 = a2->i8[0];
    }

    else
    {
      memcpy((v15 + 20), a2, v4);
    }
  }

  if (v4 > v12)
  {
    goto LABEL_138;
  }

  if (!v10)
  {
    *a1 = v15;
    goto LABEL_127;
  }

  v36 = &v16[v4];
  atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  v9 = *(v10 + 1);
  v37 = *(v10 + 1);
  if ((*(v10 + 16) & 4) != 0)
  {
    if (v37)
    {
      if (v37 == 1)
      {
        v36->i8[0] = v9->i8[0];
      }

      else
      {
        memcpy(v36, v9, v37);
      }
    }

    goto LABEL_120;
  }

  v38 = (v36 + v37);
  if (v37 >= 0x10)
  {
    v39 = (v36 + (v37 & 0xFFFFFFF0));
    do
    {
      v40 = vld2q_s8(v9->i8);
      v9 += 2;
      *v36++ = v40;
    }

    while (v36 != v39);
  }

  if (v36 != v38)
  {
    v41 = a3 + v15 + v37;
    v42 = v41 - v36 - (a3 != 0) + 20;
    if (v42 < 4 || (!a3 ? (v43 = v36) : (v43 = &v36->i8[1]), v36 < (&v9[2].u64[1] + 2 * v41 + -2 * v43) ? (v44 = v9 >= v41 - (a3 != 0) + 20) : (v44 = 1), !v44))
    {
      v46 = v36;
      v47 = v9;
      goto LABEL_73;
    }

    if (v42 >= 0x20)
    {
      v45 = v42 & 0xFFFFFFFFFFFFFFE0;
      v68 = v9 + 2;
      v69 = v36 + 1;
      v70 = v42 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = v68[-2];
        v71 = v68[-1];
        v74 = *v68;
        v73 = v68[1];
        v68 += 4;
        v69[-1] = vuzp1q_s8(v72, v71);
        *v69 = vuzp1q_s8(v74, v73);
        v69 += 2;
        v70 -= 32;
      }

      while (v70);
      if (v42 == v45)
      {
        goto LABEL_120;
      }

      if ((v42 & 0x1C) == 0)
      {
        v47 = (v9 + 2 * v45);
        v46 = (v36 + v45);
        do
        {
LABEL_73:
          v48 = v47->i8[0];
          v47 = (v47 + 2);
          v46->i8[0] = v48;
          v46 = (v46 + 1);
        }

        while (v46 != v38);
        goto LABEL_120;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = (v36 + (v42 & 0xFFFFFFFFFFFFFFFCLL));
    v47 = (v9 + 2 * (v42 & 0xFFFFFFFFFFFFFFFCLL));
    v75 = (v9 + 2 * v45);
    v76 = (v36->i32 + v45);
    v77 = v45 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v78 = *v75++;
      *v76++ = vuzp1_s8(v78, v78).u32[0];
      v77 += 4;
    }

    while (v77);
    if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_120;
    }

    goto LABEL_73;
  }

LABEL_120:
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

LABEL_124:
  *a1 = v15;
  if (v10)
  {
LABEL_125:
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

LABEL_127:
  v10 = v101;
  v13 = v15 == 0;
LABEL_128:
  v101 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  if (v13)
  {
    goto LABEL_139;
  }
}

void WGSL::TypeChecker::visit(WGSL::AST::SwitchStatement &)::$_0::operator()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a3 + 12);
  if (!v5)
  {
LABEL_19:
    operator new();
  }

  v7 = *a3;
  v8 = 8 * v5;
  while (1)
  {
    v9 = *v7;
    WGSL::TypeChecker::infer(&v25, v4, *v7, 3u, 0);
    if (v27)
    {
      break;
    }

    v13 = a2[1];
    v14 = v25;
    if (*v13 != v25 && WGSL::conversionRank(v25, *v13, v12) == -1)
    {
      v16 = a2[1];
      if (v14 != *v16)
      {
        v17 = WGSL::conversionRank(*v16, v14, v15);
        v16 = a2[1];
        if (v17 == -1)
        {
          v18 = *v16;
          v30[0] = 0;
          v31 = -1;
          v19 = *(v18 + 48);
          if (v19 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v19, v24, v30, v18);
            v31 = *(v18 + 48);
          }

          v28[0] = 0;
          v29 = -1;
          v20 = v14[48];
          if (v20 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v20, v24, v28, v14);
            v29 = v14[48];
          }

          v24[0] = "' and case selector has type '";
          v24[1] = 31;
          v23 = 39;
          WTF::tryMakeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v22, "the case selector values must have the same type as the selector expression: the selector expression has type '", 112, v30, v24, v28, &v23);
          if (!v22)
          {
            __break(0xC471u);
            JUMPOUT(0x22585F3CCLL);
          }

          *a1 = v22;
          *(a1 + 8) = *(v9 + 8);
          *(a1 + 24) = 1;
          if (v29 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v24, v28);
          }

          v29 = -1;
          if (v31 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v24, v30);
          }

          return;
        }
      }

      *v16 = v14;
    }

    ++v7;
    v8 -= 8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  if (v27 != 1)
  {
    mpark::throw_bad_variant_access(v10);
  }

  v21 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    *a1 = v21;
    *(a1 + 8) = v26;
    *(a1 + 24) = 1;
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v11);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = v26;
    *(a1 + 24) = 1;
  }
}

void WGSL::TypeChecker::visit(WGSL::TypeChecker *this, WGSL::AST::Expression *a2, uint64_t a3)
{
  v254 = *MEMORY[0x277D85DE8];
  switch((*(*a3 + 16))(a3))
  {
    case 0x12u:
      WGSL::TypeChecker::binaryExpression(&v250, a2, (a3 + 8), a3, *(a3 + 80), *(a3 + 64), *(a3 + 72));
      if (v252 == 1)
      {
        goto LABEL_103;
      }

      goto LABEL_113;
    case 0x13u:

      WGSL::TypeChecker::visit(this, a2, a3);
      return;
    case 0x14u:
      v240 = a3;
      *&v241 = a2;
      WGSL::TypeChecker::infer(&v246, a2, *(a3 + 64), *(a2 + 64), 0);
      v35 = v248;
      if (v248)
      {
        goto LABEL_400;
      }

      v36 = v246;
      if (!v246)
      {
        goto LABEL_99;
      }

      v37 = *(v246 + 48);
      if (v37 == 11)
      {
        LOBYTE(v237) = 1;
        LOBYTE(v234[0]) = 0;
        WGSL::TypeChecker::visit(WGSL::AST::FieldAccessExpression &)::$_1::operator()(&v250, &v240, *(v246 + 1), &v237, v234);
        if (v252)
        {
          if (v252 != 1)
          {
            goto LABEL_484;
          }

          v38 = v250;
          if (!v250)
          {
            goto LABEL_500;
          }

LABEL_465:
          atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
          *this = v38;
          *(this + 8) = v251;
          *(this + 24) = 1;
          if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            return;
          }

          goto LABEL_411;
        }

LABEL_164:
        v106 = v250;
        if (v237 == 1)
        {
          v106 = WGSL::TypeStore::referenceType(*(a2 + 9), *v36, v250, *(v36 + 1), LOBYTE(v234[0]));
        }

        *(a2 + 6) = v106;
        goto LABEL_113;
      }

      if (v37 == 10)
      {
        LOBYTE(v237) = 1;
        LOBYTE(v234[0]) = 0;
        WGSL::TypeChecker::visit(WGSL::AST::FieldAccessExpression &)::$_1::operator()(&v250, &v240, *(v246 + 1), &v237, v234);
        if (v252)
        {
          if (v252 != 1)
          {
            goto LABEL_484;
          }

          v38 = v250;
          if (!v250)
          {
LABEL_500:
            *this = 0;
            v105 = v251;
            goto LABEL_161;
          }

          goto LABEL_465;
        }

        goto LABEL_164;
      }

LABEL_99:
      WGSL::TypeChecker::visit(WGSL::AST::FieldAccessExpression &)::$_1::operator()(&v250, &v240, v246, 0, 0);
      v18 = v252;
      if (!v252)
      {
        goto LABEL_100;
      }

      goto LABEL_102;
    case 0x15u:
      v55 = WGSL::ContextProvider<WGSL::Binding>::Context::lookup(*a2, (a3 + 88), v6);
      if (!v55)
      {
        v247 = *(a3 + 72);
        v246 = off_2838D37C0;
        v202 = *(a3 + 88);
        if (v202)
        {
          atomic_fetch_add_explicit(v202, 2u, memory_order_relaxed);
        }

        v248 = v202;
        WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v250, "unresolved identifier '", 24, v202);
        *this = v250;
        *(this + 8) = *(a3 + 8);
        *(this + 24) = 1;
        v250 = 0;
        WGSL::AST::Identifier::~Identifier(&v246, v203);
        return;
      }

      v57 = *v55;
      if (*v55)
      {
        v205 = "value";
        v206 = 6;
        if (v57 == 1)
        {
          v205 = "type";
          v206 = 5;
        }

        if (v57 == 2)
        {
          v207 = "function";
        }

        else
        {
          v207 = v205;
        }

        if (v57 == 2)
        {
          v208 = 9;
        }

        else
        {
          v208 = v206;
        }

        v241 = *(a3 + 72);
        v240 = off_2838D37C0;
        v209 = *(a3 + 88);
        if (v209)
        {
          atomic_fetch_add_explicit(v209, 2u, memory_order_relaxed);
        }

        v242 = v209;
        WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral>(&v250, v207, v208, v209, "' as value", 11);
        *this = v250;
        *(this + 8) = *(a3 + 8);
        *(this + 24) = 1;
        WGSL::AST::Identifier::~Identifier(&v240, v210);
        return;
      }

      v58 = v55[16];
      v59 = *(a2 + 64);
      if (v58 > v59)
      {
        if (v58 == 3)
        {
          v211 = "runtime";
          v214 = 8;
        }

        else
        {
          if (v58 == 2)
          {
            v211 = "override";
          }

          else
          {
            v211 = "constant";
          }

          v214 = 9;
        }

        if (v59 == 3)
        {
          v215 = "runtime";
          v216 = 8;
        }

        else
        {
          if (v59 == 2)
          {
            v215 = "override";
          }

          else
          {
            v215 = "constant";
          }

          v216 = 9;
        }

        WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v250, v211, v214, v215, v216);
        v104 = v250;
        goto LABEL_159;
      }

      v60 = *(v55 + 1);
      *(a2 + 6) = v60;
      if (v55[48] != 1)
      {
        goto LABEL_113;
      }

      LOBYTE(v237) = 0;
      BYTE8(v238) = -1;
      if (v55[40] == 255)
      {
        v63 = (a3 + 56);
        v64 = (a3 + 32);
        LODWORD(v62) = 255;
        if ((*(a3 + 56) & 1) == 0)
        {
          *(a3 + 32) = 0;
          *(a3 + 48) = -1;
LABEL_231:
          *v63 = 1;
          goto LABEL_234;
        }
      }

      else
      {
        v61 = v55;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v55[40], &v250, &v237, v55 + 3);
        v62 = v61[40];
        BYTE8(v238) = v61[40];
        v63 = (a3 + 56);
        v64 = (a3 + 32);
        if ((*(a3 + 56) & 1) == 0)
        {
          *(a3 + 32) = 0;
          *(a3 + 48) = -1;
          if (v62 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v62, &v250, (a3 + 32), &v237);
            *(a3 + 48) = BYTE8(v238);
          }

          goto LABEL_231;
        }
      }

      if (*(a3 + 48) == 255)
      {
        if (v62 == 255)
        {
          goto LABEL_236;
        }
      }

      else if (v62 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v64);
        *(a3 + 48) = -1;
        goto LABEL_234;
      }

      v250 = v64;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v62, &v250, v64, &v237);
LABEL_234:
      if (BYTE8(v238) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, &v237);
      }

LABEL_236:
      BYTE8(v238) = -1;
      WGSL::TypeChecker::convertValue(&v250, (a3 + 8), v60, v64, v56);
      if (v252 != 1)
      {
        goto LABEL_113;
      }

      goto LABEL_440;
    case 0x17u:
      v231 = a3;
      v237 = &v231;
      *&v238 = a2;
      *(&v238 + 1) = a3;
      WGSL::TypeChecker::infer(&v246, a2, *(a3 + 64), *(a2 + 64), 0);
      v35 = v248;
      if (v248)
      {
        goto LABEL_400;
      }

      WGSL::TypeChecker::infer(&v240, a2, *(a3 + 72), *(a2 + 64), 0);
      if (!v242)
      {
        v44 = *(*(a2 + 9) + 56);
        v45 = v240;
        if (v44 != v240 && WGSL::conversionRank(v240, v44, v43) == -1)
        {
          v101 = *(*(a2 + 9) + 64);
          if (v101 != v45 && WGSL::conversionRank(v45, v101, v46) == -1)
          {
            v103 = *(*(a2 + 9) + 24);
            if (v103 != v45 && WGSL::conversionRank(v45, v103, v102) == -1)
            {
              WGSL::Type::Type(&v250, v45);
              WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(v234, "index must be of type 'i32' or 'u32', found: '", 47, &v250);
              *this = v234[0];
              *(this + 8) = *(a3 + 8);
              *(this + 24) = 1;
              if (v253 == 255)
              {
                return;
              }

              v71 = &v245;
              goto LABEL_363;
            }
          }
        }

        v47 = v246;
        if (v246)
        {
          v48 = *(v246 + 48);
          if (v48 == 11 || v48 == 10)
          {
            LOBYTE(v245) = 0;
            WGSL::TypeChecker::visit(WGSL::AST::IndexAccessExpression &)::$_2::operator()(&v250, &v237, *(v246 + 1), &v245);
            if (!v252)
            {
              v50 = *(a2 + 9);
              v51 = *v47;
              v52 = v250;
              v53 = *(v47 + 1);
              v54 = v245;
LABEL_125:
              *(a2 + 6) = WGSL::TypeStore::referenceType(v50, v51, v52, v53, v54);
              goto LABEL_113;
            }

            if (v252 != 1)
            {
              goto LABEL_484;
            }

LABEL_440:
            v213 = v250;
            if (v250)
            {
              atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
              *v234 = v251;
              if (atomic_fetch_add_explicit(v213, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v213, v49);
              }

              atomic_fetch_add_explicit(v213, 2u, memory_order_relaxed);
              *this = v213;
              *(this + 8) = *v234;
              *(this + 24) = 1;
              if (atomic_fetch_add_explicit(v213, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v213, v49);
              }

              return;
            }

            goto LABEL_498;
          }
        }

        WGSL::TypeChecker::visit(WGSL::AST::IndexAccessExpression &)::$_2::operator()(&v250, &v237, v246, 0);
        v18 = v252;
        if (v252)
        {
          goto LABEL_102;
        }

LABEL_100:
        *(a2 + 6) = v250;
        goto LABEL_113;
      }

      if (v242 != 1)
      {
        goto LABEL_484;
      }

      v38 = v240;
      if (!v240)
      {
        goto LABEL_414;
      }

      goto LABEL_409;
    case 0x19u:
      v16 = *(a3 + 72);
      if (v16 != 2)
      {
        if (!*(a3 + 72))
        {
          WGSL::TypeChecker::infer(&v250, a2, *(a3 + 64), 3u, 0);
          v18 = v252;
          if (v252)
          {
LABEL_102:
            if (v18 != 1)
            {
              goto LABEL_484;
            }

LABEL_103:
            v38 = v250;
            if (v250)
            {
              atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
              v70 = v251;
              goto LABEL_410;
            }

            v204 = v251;
LABEL_496:
            *(this + 8) = v204;
            *this = 0;
            goto LABEL_162;
          }

          if (v250 && *(v250 + 48) == 10)
          {
            v19 = *v250;
            if (v19 == 1)
            {
              v219 = "cannot take the address of expression in handle address space";
              v220 = this;
              v221 = 62;
            }

            else
            {
              if (*(v250 + 16) != 1)
              {
                *(a2 + 6) = WGSL::TypeStore::pointerType(*(a2 + 9), v19, *(v250 + 1), *(v250 + 1));
                goto LABEL_113;
              }

              v219 = "cannot take the address of a vector component";
              v220 = this;
              v221 = 46;
            }

            WTF::makeString<WTF::ASCIILiteral>(v220, v219, v221);
            goto LABEL_160;
          }

          WTF::tryFastCompactMalloc(0x35);
          v104 = v246;
          if (!v246)
          {
            __break(0xC471u);
            JUMPOUT(0x225861804);
          }

          *v246 = 0x2100000002;
          qmemcpy(v104 + 20, "cannot take address of expression", 33);
          *(v104 + 1) = v104 + 20;
          *(v104 + 4) = 4;
LABEL_159:
          *this = v104;
LABEL_160:
          v105 = *(a3 + 8);
LABEL_161:
          *(this + 8) = v105;
          goto LABEL_162;
        }

        if (v16 < 5)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v79 = *(a3 + 64);
          v237 = (&v238 + 8);
          *(&v238 + 1) = v79;
          *&v238 = 0x100000001;
          v231 = 0;
          *&v232 = 0;
          v80 = *(a2 + 12);
          if (!v80)
          {
            v113 = 0;
            v114 = 0;
            goto LABEL_385;
          }

          if (v230 != -1)
          {
            if (!v230)
            {
              __break(0xC471u);
              JUMPOUT(0x22586184CLL);
            }

            v81 = *(v80 - 8);
            v82 = *(v230 + 4);
            if (v82 < 0x100)
            {
              v83 = WTF::StringImpl::hashSlowCase(v230);
            }

            else
            {
              v83 = v82 >> 8;
            }

            for (i = 0; ; v83 = i + v116)
            {
              v116 = v83 & v81;
              v117 = v80 + 48 * (v83 & v81);
              v118 = *v117;
              if (*v117 != -1)
              {
                if (!v118)
                {
                  v119 = *(a2 + 12);
                  if (!v119)
                  {
                    goto LABEL_238;
                  }

                  v120 = *(v119 - 4);
                  v117 = v119 + 48 * v120;
LABEL_205:
                  if (v117 == v119 + 48 * v120)
                  {
LABEL_238:
                    v113 = 0;
                    v114 = 0;
                    goto LABEL_385;
                  }

LABEL_206:
                  v234[0] = 0;
                  v234[1] = 0;
                  if (DWORD1(v238) >> 29)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x22586187CLL);
                  }

                  LODWORD(v234[1]) = DWORD1(v238);
                  v234[0] = WTF::fastMalloc((8 * DWORD1(v238)));
                  v121 = 0;
                  while (2)
                  {
                    WGSL::TypeChecker::infer(&v250, a2, *(v237 + v121), *(a2 + 64), 0);
                    v122 = v252;
                    if (v252)
                    {
                      if (v252 != 1)
                      {
                        goto LABEL_484;
                      }

                      i = v250;
                      if (v250)
                      {
                        atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
                      }

                      v225 = *(&v251 + 1);
                      v226 = v251;
                      v126 = v252;
                      if (v252)
                      {
                        goto LABEL_213;
                      }
                    }

                    else
                    {
                      v123 = HIDWORD(v234[1]);
                      if (HIDWORD(v234[1]) == LODWORD(v234[1]))
                      {
                        v124 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v234, HIDWORD(v234[1]) + 1, &v250);
                        v125 = HIDWORD(v234[1]) + 1;
                        *(v234[0] + HIDWORD(v234[1])) = *v124;
                        HIDWORD(v234[1]) = v125;
                        v126 = v252;
                        if (!v252)
                        {
                          goto LABEL_217;
                        }
                      }

                      else
                      {
                        *(v234[0] + HIDWORD(v234[1])) = v250;
                        HIDWORD(v234[1]) = v123 + 1;
                        v126 = v252;
                        if (!v252)
                        {
                          goto LABEL_217;
                        }
                      }

LABEL_213:
                      if (v126 != 255)
                      {
                        v127 = v250;
                        v250 = 0;
                        if (v127)
                        {
                          if (atomic_fetch_add_explicit(v127, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v127, v77);
                          }
                        }
                      }
                    }

LABEL_217:
                    if (v122)
                    {
                      v113 = 1;
                      v114 = i;
                      goto LABEL_383;
                    }

                    if (++v121 >= DWORD1(v238))
                    {
                      WGSL::resolveOverloads(*(a2 + 9), (v117 + 32), v234, &v231, &v240);
                      v148 = BYTE8(v241);
                      if (BYTE8(v241) != 1)
                      {
                        WTF::StringPrintStream::StringPrintStream(&v250);
                        v170 = HIDWORD(v234[1]);
                        if (HIDWORD(v234[1]))
                        {
                          v171 = v234[0];
                          v172 = *v234[0];
                          v173 = (*(v250 + 4))(&v250);
                          WGSL::Type::dump(v172, v173);
                          (*(v250 + 5))(&v250);
                          if (v170 != 1)
                          {
                            v174 = (v171 + 8);
                            v175 = 8 * v170 - 8;
                            do
                            {
                              v176 = *v174++;
                              (*(v250 + 4))(&v250);
                              WTF::printInternal();
                              (*(v250 + 5))(&v250);
                              v177 = (*(v250 + 4))(&v250);
                              WGSL::Type::dump(v176, v177);
                              (*(v250 + 5))(&v250);
                              v175 -= 8;
                            }

                            while (v175);
                          }
                        }

                        WTF::StringPrintStream::StringPrintStream(&v246);
                        if (DWORD1(v232))
                        {
                          (*(v246 + 4))(&v246);
                          WTF::printInternal();
                          (*(v246 + 5))(&v246);
                          v178 = DWORD1(v232);
                          if (DWORD1(v232))
                          {
                            v179 = v231;
                            v180 = *v231;
                            v181 = (*(v246 + 4))(&v246);
                            WGSL::Type::dump(v180, v181);
                            (*(v246 + 5))(&v246);
                            if (v178 != 1)
                            {
                              v182 = (v179 + 8);
                              v183 = 8 * v178 - 8;
                              do
                              {
                                v184 = *v182++;
                                (*(v246 + 4))(&v246);
                                WTF::printInternal();
                                (*(v246 + 5))(&v246);
                                v185 = (*(v246 + 4))(&v246);
                                WGSL::Type::dump(v184, v185);
                                (*(v246 + 5))(&v246);
                                v183 -= 8;
                              }

                              while (v183);
                            }
                          }

                          (*(v246 + 4))(&v246);
                          WTF::printInternal();
                          (*(v246 + 5))(&v246);
                        }

                        atomic_fetch_add_explicit(v230, 2u, memory_order_relaxed);
                        WTF::StringPrintStream::toString(&v244, &v246);
                        WTF::StringPrintStream::toString(&v243, &v250);
                        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v245, "no matching overload for ", 0x19uLL, "operator", 8uLL, 0x20u, v230, v244, 0x28u, v243, 41);
                        v114 = v245;
                        if (!v245)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x225861884);
                        }

                        v225 = *(a3 + 16);
                        v226 = *(a3 + 8);
                        v187 = v243;
                        v243 = 0;
                        if (v187 && atomic_fetch_add_explicit(v187, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v187, v186);
                        }

                        v188 = v244;
                        v244 = 0;
                        if (v188 && atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v188, v186);
                        }

                        if (atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v230, v186);
                        }

                        WTF::StringPrintStream::~StringPrintStream(&v246);
                        WTF::StringPrintStream::~StringPrintStream(&v250);
                        v113 = 1;
                        goto LABEL_380;
                      }

                      if (*(a2 + 65) == 1 && *(v117 + 9) == 1)
                      {
                        atomic_fetch_add_explicit(v230, 2u, memory_order_relaxed);
                        WTF::makeString<WTF::ASCIILiteral,WTF::String,char>(&v250, v230);
                        v225 = *(a3 + 16);
                        v226 = *(a3 + 8);
                        v114 = v250;
                        if (atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v230, v77);
                        }

                        v113 = 1;
                        v197 = v240;
                        if (v240)
                        {
                          goto LABEL_382;
                        }

                        goto LABEL_383;
                      }

                      v149 = DWORD1(v238);
                      if (DWORD1(v238))
                      {
                        v150 = (v240 + 8);
                        v151 = *v240;
                        v152 = v237;
                        do
                        {
                          if (!v151)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x225861794);
                          }

                          v154 = *v150++;
                          v153 = v154;
                          v155 = *v152;
                          v152 = (v152 + 8);
                          *(v155 + 24) = v153;
                          --v151;
                          --v149;
                        }

                        while (v149);
                      }

                      v114 = v241;
                      *(a2 + 6) = v241;
                      if ((*(*a3 + 16))(a3) == 19)
                      {
                        v156 = *(v117 + 8) == 1;
                        *(a3 + 88) = v156;
                        *(a3 + 89) = *(v117 + 24);
                        if (v156)
                        {
                          v157 = v114;
                          if (v114 || (v157 = *(a3 + 24)) != 0)
                          {
                            v158 = *(v157 + 48);
                            if (v158 != 10)
                            {
                              goto LABEL_296;
                            }

                            v157 = *(v157 + 1);
                            if (v157)
                            {
                              v158 = *(v157 + 48);
LABEL_296:
                              if (v158 == 1)
                              {
                                v157 = *v157;
                                if (v157)
                                {
                                  v158 = *(v157 + 48);
                                  goto LABEL_299;
                                }
                              }

                              else
                              {
LABEL_299:
                                if (!v158 && *v157 - 1 <= 1 && *(a3 + 84) == 1)
                                {
                                  v159 = *(**(a3 + 72) + 24);
                                  if (v159)
                                  {
                                    v160 = v159[48];
                                    if (v160 == 10)
                                    {
                                      v159 = *(v159 + 1);
                                      if (!v159)
                                      {
                                        goto LABEL_312;
                                      }

                                      v160 = v159[48];
                                    }

                                    if (v160 == 1)
                                    {
                                      v159 = *v159;
                                      if (!v159)
                                      {
                                        goto LABEL_312;
                                      }

                                      v160 = v159[48];
                                    }

                                    if (!v160 && *v159 - 3 <= 2)
                                    {
                                      *(*(a2 + 5) + 32) = 1;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_312:
                      v161 = DWORD1(v238);
                      if (!DWORD1(v238))
                      {
                        v245 = 0;
                        v189 = *(v117 + 16);
                        if (v189)
                        {
                          goto LABEL_365;
                        }

                        goto LABEL_371;
                      }

                      v227 = v114;
                      v162 = WTF::fastMalloc((24 * DWORD1(v238) + 8));
                      *v162 = v161;
                      v163 = 24;
                      bzero((v162 + 8), 24 * ((24 * v161 - 24) / 0x18uLL) + 24);
                      v165 = 0;
                      v245 = v162;
                      v228 = 1;
                      while (2)
                      {
                        if (v165 >= DWORD1(v238))
                        {
                          __break(0xC471u);
                          JUMPOUT(0x22586179CLL);
                        }

                        v166 = *(v237 + v165);
                        if (*(v166 + 56) != 1)
                        {
                          v228 = 0;
                          goto LABEL_315;
                        }

                        WGSL::TypeChecker::convertValue(&v250, (v166 + 8), *(v166 + 24), (v166 + 32), v164);
                        if (v252 == 1)
                        {
                          v114 = v250;
                          if (v250)
                          {
                            atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
                            v225 = *(&v251 + 1);
                            v226 = v251;
                            if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v114, v77);
                            }
                          }

                          else
                          {
                            v225 = *(&v251 + 1);
                            v226 = v251;
                          }

                          v113 = 1;
                          v148 = 1;
LABEL_373:
                          v193 = v245;
                          v245 = 0;
                          if (v193)
                          {
                            v194 = *v193;
                            if (v194)
                            {
                              v195 = 24 * v194;
                              v196 = v193 + 24;
                              do
                              {
                                v77 = (v196 - 16);
                                if (*v196 != 255)
                                {
                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v77);
                                }

                                *v196 = -1;
                                v196 += 24;
                                v195 -= 24;
                              }

                              while (v195);
                            }

                            WTF::fastFree(v193, v77);
                          }

LABEL_380:
                          if (v148)
                          {
                            v197 = v240;
                            if (v240)
                            {
LABEL_382:
                              WTF::fastFree(v197, v77);
                            }
                          }

LABEL_383:
                          v198 = v234[0];
                          if (v234[0])
                          {
                            v234[0] = 0;
                            LODWORD(v234[1]) = 0;
                            WTF::fastFree(v198, v77);
                          }

LABEL_385:
                          v199 = v231;
                          if (v231)
                          {
                            v231 = 0;
                            LODWORD(v232) = 0;
                            WTF::fastFree(v199, v77);
                          }

                          v200 = v237;
                          if ((&v238 + 8) != v237 && v237)
                          {
                            v237 = 0;
                            LODWORD(v238) = 0;
                            WTF::fastFree(v200, v77);
                          }

                          if (v230 && atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v230, v77);
                          }

                          if (v113)
                          {
                            if (v114)
                            {
                              atomic_fetch_add_explicit(v114, 2u, memory_order_relaxed);
                              *this = v114;
                              *(this + 1) = v226;
                              *(this + 2) = v225;
                              *(this + 24) = 1;
                              if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v114, v77);
                              }

                              return;
                            }

                            *this = 0;
                            *(this + 1) = v226;
                            *(this + 2) = v225;
LABEL_162:
                            *(this + 24) = 1;
                            return;
                          }

LABEL_113:
                          *this = 0;
                          *(this + 24) = 0;
                          return;
                        }

                        if ((*(v166 + 56) & 1) == 0)
                        {
                          goto LABEL_512;
                        }

                        if (v165 >= *v245)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x2258617BCLL);
                        }

                        v167 = v245 + v163;
                        v168 = *(v166 + 48);
                        if (*(v245 + v163) == 255)
                        {
                          if (v168 != 255)
                          {
                            goto LABEL_325;
                          }
                        }

                        else
                        {
                          if (v168 == 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v245 + v163 - 16);
                            *v167 = -1;
                            goto LABEL_315;
                          }

LABEL_325:
                          v250 = (v245 + v163 - 16);
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v168, &v250, v250, (v166 + 32));
                        }

LABEL_315:
                        ++v165;
                        v163 += 24;
                        if (v161 == v165)
                        {
                          v189 = *(v117 + 16);
                          v114 = v227;
                          if (v189)
                          {
                            if ((v228 & 1) == 0)
                            {
                              v113 = 0;
                              v148 = 1;
                              goto LABEL_373;
                            }

LABEL_365:
                            v17 = v189(&v250, v114, &v245);
                            v148 = 1;
                            if (!v252)
                            {
                              WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v246, a3, v114, &v250, v191);
                              if (v248 != 1)
                              {
                                if (v252 != 255)
                                {
                                  if (v252)
                                  {
                                    v201 = v250;
                                    v250 = 0;
                                    if (v201 && atomic_fetch_add_explicit(v201, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v201, v77);
                                    }
                                  }

                                  else if (BYTE8(v251) != 255)
                                  {
                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, &v250);
                                  }
                                }

LABEL_372:
                                v113 = 0;
                                goto LABEL_373;
                              }

                              v114 = v246;
                              if (v246)
                              {
                                atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
                                v229 = v247;
                                if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  v223 = v114;
LABEL_488:
                                  WTF::StringImpl::destroy(v223, v77);
                                }
                              }

                              else
                              {
                                v229 = v247;
                              }

                              goto LABEL_489;
                            }

                            if (v252 == 1)
                            {
                              v222 = v250;
                              if (v250)
                              {
                                atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
                              }

                              WTF::makeString<WTF::String>(&v246, v222);
                              v229 = *(a3 + 8);
                              v114 = v246;
                              if (v222 && atomic_fetch_add_explicit(v222, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                v223 = v222;
                                goto LABEL_488;
                              }

LABEL_489:
                              std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(&v250, v77);
                              v225 = *(&v229 + 1);
                              v226 = v229;
                              v113 = 1;
                              v148 = 1;
                              goto LABEL_373;
                            }

LABEL_484:
                            mpark::throw_bad_variant_access(v17);
                          }

LABEL_371:
                          v192 = *(a2 + 64);
                          v148 = 1;
                          if (v192 <= 2)
                          {
                            if (v192 == 2)
                            {
                              v224 = "override";
                            }

                            else
                            {
                              v224 = "constant";
                            }

                            WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v250, "cannot call function from ", 27, v224, 9, " context", 9);
                            v225 = *(a3 + 16);
                            v226 = *(a3 + 8);
                            v113 = 1;
                            v114 = v250;
                            goto LABEL_373;
                          }

                          goto LABEL_372;
                        }

                        continue;
                      }
                    }

                    continue;
                  }
                }

                if (WTF::equal(v118, v230, v78))
                {
                  v119 = *(a2 + 12);
                  if (v119)
                  {
                    v120 = *(v119 - 4);
                    goto LABEL_205;
                  }

                  goto LABEL_206;
                }
              }

              i = (i + 1);
            }
          }

LABEL_513:
          __break(0xC471u);
          JUMPOUT(0x22586182CLL);
        }

LABEL_512:
        __break(1u);
        goto LABEL_513;
      }

      WGSL::TypeChecker::infer(&v246, a2, *(a3 + 64), 3u, 0);
      v35 = v248;
      if (!v248)
      {
        v75 = v246;
        if (v246)
        {
          v76 = *(v246 + 48);
          if (v76 == 11)
          {
            v50 = *(a2 + 9);
            v51 = *v246;
            v52 = *(v246 + 1);
            v53 = *(v246 + 1);
            v54 = 0;
            goto LABEL_125;
          }
        }

        else
        {
          v76 = MEMORY[0x30];
        }

        LOBYTE(v250) = 0;
        v253 = -1;
        if (v76 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v76, &v240, &v250, v246);
          v253 = *(v75 + 48);
        }

        WGSL::Type::toString(&v250, v234);
        v110 = v234[0];
        if (v234[0])
        {
          v111 = *(v234[0] + 1);
          if (v111 < 0)
          {
            v112 = 0;
            v234[0] = 0;
LABEL_358:
            if (atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v110, v109);
            }

LABEL_360:
            if (!v112)
            {
              __break(0xC471u);
              goto LABEL_512;
            }

            *this = v112;
            *(this + 8) = *(a3 + 8);
            *(this + 24) = 1;
            if (v253 == 255)
            {
              return;
            }

            v71 = &v240;
LABEL_363:
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v71, &v250);
            return;
          }
        }

        else
        {
          v111 = 0;
        }

        v129 = __OFADD__(v111, 1);
        v130 = v111 + 1;
        if (v129 || __OFADD__(v130, 39))
        {
          v112 = 0;
        }

        else
        {
          if (v234[0])
          {
            v169 = (*(v234[0] + 4) >> 2) & 1;
            atomic_fetch_add_explicit(v234[0], 2u, memory_order_relaxed);
          }

          else
          {
            v169 = 1;
          }

          v237 = v110;
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>((v130 + 39), v169, "cannot dereference expression of type '", 0x27uLL, &v237, 39, &v240);
          v112 = v240;
          v240 = 0;
          v190 = v237;
          v237 = 0;
          if (v190 && atomic_fetch_add_explicit(v190, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v190, v109);
          }

          v110 = v234[0];
        }

        v234[0] = 0;
        if (!v110)
        {
          goto LABEL_360;
        }

        goto LABEL_358;
      }

LABEL_400:
      if (v35 != 1)
      {
        goto LABEL_484;
      }

      v38 = v246;
      if (!v246)
      {
        v204 = v247;
        goto LABEL_496;
      }

      atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
      v70 = v247;
      goto LABEL_410;
    case 0x1Du:
      *(a2 + 6) = *(*(a2 + 9) + 32);
      v33 = *(a3 + 64);
      v250 = v33;
      v9 = 2;
      BYTE8(v251) = 2;
      if (*(a3 + 56) != 1)
      {
        *(a3 + 32) = v33;
        goto LABEL_110;
      }

      v34 = *(a3 + 48);
      if (v34 != 255)
      {
        if (v34 == 2)
        {
          *(a3 + 32) = v33;
          goto LABEL_112;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, (a3 + 32));
      }

      *(a3 + 32) = v33;
      *(a3 + 48) = 2;
      goto LABEL_112;
    case 0x1Eu:
      *(a2 + 6) = *(*(a2 + 9) + 24);
      v14 = *(a3 + 64);
      v250 = v14;
      v9 = 5;
      BYTE8(v251) = 5;
      if (*(a3 + 56) != 1)
      {
        *(a3 + 32) = v14;
        goto LABEL_110;
      }

      v15 = *(a3 + 48);
      if (v15 != 255)
      {
        if (v15 == 5)
        {
          *(a3 + 32) = v14;
          goto LABEL_112;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, (a3 + 32));
      }

      *(a3 + 32) = v14;
      *(a3 + 48) = 5;
      goto LABEL_112;
    case 0x1Fu:
      *(a2 + 6) = *(*(a2 + 9) + 48);
      v41 = *(a3 + 64);
      LOBYTE(v250) = v41;
      v9 = 6;
      BYTE8(v251) = 6;
      if (*(a3 + 56) != 1)
      {
        *(a3 + 32) = v41;
        goto LABEL_110;
      }

      v42 = *(a3 + 48);
      if (v42 != 255)
      {
        if (v42 == 6)
        {
          *(a3 + 32) = v41;
          goto LABEL_112;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, (a3 + 32));
      }

      *(a3 + 32) = v41;
      *(a3 + 48) = 6;
      goto LABEL_112;
    case 0x20u:
      *(a2 + 6) = *(*(a2 + 9) + 72);
      v12 = *(a3 + 64);
      LODWORD(v250) = v12;
      BYTE8(v251) = 0;
      if (*(a3 + 56) != 1)
      {
        *(a3 + 32) = v12;
        *(a3 + 48) = 0;
        goto LABEL_111;
      }

      if (*(a3 + 48) != 255)
      {
        v13 = (a3 + 32);
        if (!*(a3 + 48))
        {
          *v13 = v12;
          goto LABEL_112;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v13);
      }

      *(a3 + 32) = v12;
      *(a3 + 48) = 0;
      goto LABEL_112;
    case 0x21u:
      *(a2 + 6) = *(*(a2 + 9) + 80);
      v39 = *(a3 + 64);
      LOWORD(v250) = v39;
      BYTE8(v251) = 1;
      if (*(a3 + 56) != 1)
      {
        *(a3 + 32) = v39;
        *(a3 + 48) = 1;
        goto LABEL_111;
      }

      v40 = *(a3 + 48);
      if (v40 != 255)
      {
        if (v40 == 1)
        {
          *(a3 + 32) = v39;
          goto LABEL_112;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, (a3 + 32));
      }

      *(a3 + 32) = v39;
      *(a3 + 48) = 1;
      goto LABEL_112;
    case 0x22u:
      *(a2 + 6) = *(*(a2 + 9) + 56);
      v8 = *(a3 + 64);
      LODWORD(v250) = v8;
      v9 = 3;
      BYTE8(v251) = 3;
      if (*(a3 + 56) != 1)
      {
        goto LABEL_13;
      }

      v10 = *(a3 + 48);
      if (v10 == 255)
      {
        goto LABEL_8;
      }

      if (v10 == 3)
      {
        goto LABEL_12;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, (a3 + 32));
LABEL_8:
      *(a3 + 32) = v8;
      *(a3 + 48) = 3;
      goto LABEL_112;
    case 0x23u:
      *(a2 + 6) = *(*(a2 + 9) + 64);
      v8 = *(a3 + 64);
      LODWORD(v250) = v8;
      v9 = 4;
      BYTE8(v251) = 4;
      if (*(a3 + 56) == 1)
      {
        v11 = *(a3 + 48);
        if (v11 != 255)
        {
          if (v11 == 4)
          {
LABEL_12:
            *(a3 + 32) = v8;
            goto LABEL_112;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, (a3 + 32));
        }

        *(a3 + 32) = v8;
        *(a3 + 48) = 4;
      }

      else
      {
LABEL_13:
        *(a3 + 32) = v8;
LABEL_110:
        *(a3 + 48) = v9;
LABEL_111:
        *(a3 + 56) = 1;
      }

LABEL_112:
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, &v250);
      goto LABEL_113;
    case 0x39u:
      if (!*(a3 + 64))
      {
        WTF::makeString<WTF::ASCIILiteral>(&v240, "'array' requires at least 1 template argument", 0x2EuLL);
        v104 = v240;
        goto LABEL_159;
      }

      v17 = WGSL::TypeChecker::resolve(&v240, a2);
      if (v242)
      {
        if (v242 != 1)
        {
          goto LABEL_484;
        }

        v38 = v240;
        if (!v240)
        {
LABEL_414:
          v204 = v241;
          goto LABEL_496;
        }

LABEL_409:
        atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
        v70 = v241;
LABEL_410:
        *(this + 8) = v70;
        *this = v38;
        *(this + 24) = 1;
        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          return;
        }

        goto LABEL_411;
      }

      v20 = v240;
      if ((WGSL::Type::hasCreationFixedFootprint(v240) & 1) == 0)
      {
        WGSL::Type::Type(&v250, v20);
        WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v237, &v250, "' cannot be used as an element type of an array", 48);
        *this = v237;
        *(this + 8) = *(a3 + 8);
        *(this + 24) = 1;
        if (v253 == 255)
        {
          return;
        }

        v71 = v234;
        goto LABEL_363;
      }

      v21 = *(a3 + 72);
      if (!v21)
      {
        v72 = *(a2 + 9);
        v73 = v20;
        v74 = 0;
LABEL_280:
        *(a2 + 6) = WGSL::TypeStore::arrayType(v72, v73, v21, v74);
        goto LABEL_113;
      }

      v24 = WGSL::TypeChecker::infer(&v237, a2, v21, 2u, 0);
      if (v239)
      {
        if (v239 != 1)
        {
          goto LABEL_484;
        }

        v212 = v237;
        if (v237)
        {
          atomic_fetch_add_explicit(v237, 2u, memory_order_relaxed);
        }

        *(this + 8) = v238;
        *this = v212;
        *(this + 24) = 1;
LABEL_470:
        std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v237, v22);
        return;
      }

      v25 = *(*(a2 + 9) + 56);
      v26 = v237;
      if (v25 != v237 && WGSL::conversionRank(v237, v25, v23) == -1)
      {
        v27 = *(*(a2 + 9) + 64);
        if (v27 != v26 && WGSL::conversionRank(v26, v27, v23) == -1)
        {
          WGSL::Type::Type(&v246, v26);
          WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(v234, "array count must be an i32 or u32 value, found '", 49, &v246);
          *this = v234[0];
          *(this + 8) = *(a3 + 8);
          *(this + 24) = 1;
          if (v249 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v231, &v246);
          }

          v249 = -1;
          goto LABEL_470;
        }
      }

      v28 = *(a3 + 72);
      LOBYTE(v234[0]) = 0;
      v236 = 0;
      if (*(v28 + 56) == 1)
      {
        v235 = -1;
        v29 = *(v28 + 48);
        if (v29 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, &v231, v234, (v28 + 32));
          v235 = *(v28 + 48);
          v28 = *(a3 + 72);
          v26 = v237;
        }

        v236 = 1;
        v30 = WGSL::concretize(v26, *(a2 + 9), v23);
        WGSL::TypeChecker::convertValue(&v231, (v28 + 8), v30, v234, v31);
        if (v233 == 1)
        {
          v217 = v231;
          if (v231)
          {
            atomic_fetch_add_explicit(v231, 2u, memory_order_relaxed);
            *this = v217;
            *(this + 8) = v232;
            *(this + 24) = 1;
            if (atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v217, v22);
            }

            goto LABEL_460;
          }

          *this = 0;
          v218 = v232;
        }

        else
        {
          if ((v236 & 1) == 0)
          {
            goto LABEL_512;
          }

          switch(v235)
          {
            case 5u:
              v32 = v234[0];
              break;
            case 4u:
              v32 = LODWORD(v234[0]);
              break;
            case 3u:
              v32 = SLODWORD(v234[0]);
              break;
            default:
              __break(0xC471u);
              JUMPOUT(0x225861874);
          }

          if (v32 > 0)
          {
            v28 = v32;
            v128 = 1;
LABEL_273:
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v231, v234);
LABEL_274:
            if (v239)
            {
              if (v239 != 255)
              {
                v147 = v237;
                v237 = 0;
                if (v147)
                {
                  if (atomic_fetch_add_explicit(v147, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v147, v146);
                  }
                }
              }
            }

            v73 = v240;
            v72 = *(a2 + 9);
            v21 = v28;
            v74 = v128;
            goto LABEL_280;
          }

          WTF::makeString<WTF::ASCIILiteral>(&v231, "array count must be greater than 0", 0x23uLL);
          *this = v231;
          v218 = *(a3 + 8);
        }

        *(this + 8) = v218;
        *(this + 24) = 1;
LABEL_460:
        if (v236 == 1 && v235 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v231, v234);
        }

        goto LABEL_470;
      }

      if ((*(*v28 + 16))(v28, v24) == 21)
      {
        v245 = v28;
        WTF::HashMap<WTF::String,WGSL::AST::IdentifierExpression *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::IdentifierExpression *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::IdentifierExpression *&>(&v231, a2 + 13, (v28 + 88), &v245);
        v28 = *(v231 + 1);
      }

      if (v28 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2258617DCLL);
      }

      if (!v28)
      {
        __break(0xC471u);
        JUMPOUT(0x2258617FCLL);
      }

      v85 = *(a2 + 5);
      v86 = *(v85 + 384);
      if (!v86)
      {
        WTF::HashTable<WGSL::AST::Expression const*,WTF::KeyValuePair<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Expression const*>,WTF::HashMap<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Expression const*>,WTF::HashTraits<WGSL::AST::Expression const*>,WTF::HashTraits<WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Expression const*>,WTF::FastMalloc>::rehash((v85 + 384), 8u, 0);
        v86 = *(v85 + 384);
      }

      v87 = *(v86 - 8);
      v88 = (~(v28 << 32) + v28) ^ ((~(v28 << 32) + v28) >> 22);
      v89 = 9 * ((v88 + ~(v88 << 13)) ^ ((v88 + ~(v88 << 13)) >> 8));
      v90 = (v89 ^ (v89 >> 15)) + ~((v89 ^ (v89 >> 15)) << 27);
      v91 = v87 & ((v90 >> 31) ^ v90);
      v92 = v86 + 24 * v91;
      v93 = *v92;
      if (*v92)
      {
        v94 = 0;
        v95 = 1;
        do
        {
          if (v93 == v28)
          {
            goto LABEL_252;
          }

          if (v93 == -1)
          {
            v94 = v92;
          }

          v91 = (v91 + v95) & v87;
          v92 = v86 + 24 * v91;
          v93 = *v92;
          ++v95;
        }

        while (*v92);
        if (v94)
        {
          *v94 = 0;
          v94[1] = 0;
          v94[2] = 0;
          --*(*(v85 + 384) - 16);
          v92 = v94;
        }
      }

      *v92 = v28;
      v97 = (v92 + 8);
      v96 = *(v92 + 8);
      v98 = *(v92 + 20);
      if (v98)
      {
        v99 = 8 * v98;
        do
        {
          v100 = *v96;
          *v96 = 0;
          if (v100)
          {
            (*(*v100 + 8))(v100);
          }

          v96 = (v96 + 8);
          v99 -= 8;
        }

        while (v99);
        v96 = *v97;
      }

      if (v96)
      {
        *(v92 + 8) = 0;
        *(v92 + 16) = 0;
        WTF::fastFree(v96, v84);
      }

      *v97 = 0;
      *(v92 + 16) = 0;
      v107 = *(v85 + 384);
      if (v107)
      {
        v108 = *(v107 - 12) + 1;
      }

      else
      {
        v108 = 1;
      }

      *(v107 - 12) = v108;
      v131 = (*(v107 - 16) + v108);
      v132 = *(v107 - 4);
      if (v132 > 0x400)
      {
        if (v132 > 2 * v131)
        {
          goto LABEL_252;
        }
      }

      else
      {
        if (3 * v132 > 4 * v131)
        {
          goto LABEL_252;
        }

        if (!v132)
        {
          v133 = 8;
LABEL_251:
          v92 = WTF::HashTable<WGSL::AST::Expression const*,WTF::KeyValuePair<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Expression const*>,WTF::HashMap<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Expression const*>,WTF::HashTraits<WGSL::AST::Expression const*>,WTF::HashTraits<WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Expression const*>,WTF::FastMalloc>::rehash((v85 + 384), v133, v92);
LABEL_252:
          v134 = *(v92 + 20);
          if (v134 == *(v92 + 16))
          {
            v135 = v134 + (v134 >> 1);
            if (v135 <= v134 + 1)
            {
              v135 = v134 + 1;
            }

            if (v135 >> 29)
            {
              __break(0xC471u);
              JUMPOUT(0x225861854);
            }

            v136 = *(v92 + 8);
            if (v135 <= 0x10)
            {
              v137 = 16;
            }

            else
            {
              v137 = v135;
            }

            v139 = WTF::fastMalloc((8 * v137));
            *(v92 + 16) = v137;
            *(v92 + 8) = v139;
            if (v134)
            {
              v140 = 8 * v134;
              v141 = v136;
              do
              {
                v142 = *v141;
                *v141 = 0;
                *v139 = v142;
                v143 = *v141;
                *v141 = 0;
                if (v143)
                {
                  (*(*v143 + 8))(v143);
                }

                v139 = (v139 + 8);
                v141 = (v141 + 8);
                v140 -= 8;
              }

              while (v140);
              v139 = *(v92 + 8);
            }

            if (v136)
            {
              if (v139 == v136)
              {
                *(v92 + 8) = 0;
                *(v92 + 16) = 0;
              }

              WTF::fastFree(v136, v138);
              v139 = *(v92 + 8);
            }

            v144 = (v139 + 8 * *(v92 + 20));
          }

          else
          {
            v144 = (*(v92 + 8) + 8 * v134);
          }

          v145 = WTF::fastMalloc(0x10);
          *v145 = &unk_2838D6738;
          *v144 = v145;
          ++*(v92 + 20);
          v128 = 2;
          if ((v236 & 1) == 0 || v235 == 255)
          {
            goto LABEL_274;
          }

          goto LABEL_273;
        }
      }

      v133 = v132 << (6 * v108 >= (2 * v132));
      goto LABEL_251;
    case 0x3Au:
      WGSL::TypeChecker::lookupType(&v246, a2, a3 + 64);
      v35 = v248;
      if (v248)
      {
        goto LABEL_400;
      }

      v65 = v246;
      if (v246)
      {
        v66 = *(v246 + 48);
        if (v66 == 13)
        {
          v67 = *(v246 + 5);
          if (!v67)
          {
            std::__throw_bad_function_call[abi:sn200100]();
LABEL_498:
            v105 = v251;
            *v234 = v251;
            *this = 0;
            goto LABEL_161;
          }

          v17 = (*(*v67 + 48))(&v250);
          if (v252)
          {
            if (v252 != 1)
            {
              goto LABEL_484;
            }

            v68 = v250;
            if (!v250)
            {
              goto LABEL_500;
            }

            atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
            v69 = v252;
            *this = v68;
            *(this + 8) = v251;
            *(this + 24) = 1;
            if (!v69)
            {
              return;
            }

            if (v69 == 255)
            {
              return;
            }

            v38 = v250;
            v250 = 0;
            if (!v38 || atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              return;
            }

LABEL_411:
            WTF::StringImpl::destroy(v38, v7);
            return;
          }

          goto LABEL_100;
        }
      }

      else
      {
        v66 = MEMORY[0x30];
      }

      LOBYTE(v250) = 0;
      v253 = -1;
      if (v66 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v66, &v240, &v250, v246);
        v253 = *(v65 + 48);
      }

      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v240, "type '", 7, &v250, "' does not take template arguments", 35);
      *this = v240;
      *(this + 8) = *(a3 + 8);
      *(this + 24) = 1;
      if (v253 != 255)
      {
        v71 = &v237;
        goto LABEL_363;
      }

      return;
    default:
      __break(0xC471u);
      JUMPOUT(0x225861768);
  }
}

WTF *WGSL::TypeChecker::visit(WGSL::TypeChecker *this, const WGSL::Type **a2, uint64_t a3)
{
  v4 = a3;
  v427 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 64);
  v7 = (*(*v6 + 16))(v6);
  v8 = (*(*v6 + 16))(v6);
  v9 = (*(*v6 + 16))(v6);
  v10 = v9;
  v383 = 0;
  v384 = 0;
  if (v7 == 21)
  {
    if ((*(*v6 + 16))(v6) != 21)
    {
      __break(0xC471u);
      JUMPOUT(0x2258652D4);
    }

    goto LABEL_3;
  }

  if (v9 == 57)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = v415;
    goto LABEL_7;
  }

  if ((*(*v6 + 16))(v6) != 58)
  {
    __break(0xC471u);
    JUMPOUT(0x22586531CLL);
  }

  v23 = *(v6 + 108);
  if (v23)
  {
    v373 = v10;
    v24 = *(v6 + 96);
    v25 = v382;
    v26 = 8 * v23;
    while (1)
    {
      v12 = WGSL::TypeChecker::resolve(&v415, a2);
      v27 = v417;
      if (!v417)
      {
        break;
      }

      if (v417 != 1)
      {
        v380 = v3;
        v382 = v25;
        goto LABEL_910;
      }

      v3 = v415;
      if (v415)
      {
        atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
      }

      v381 = v416;
      v25 = 1;
      v30 = v417;
      if (v417)
      {
        goto LABEL_31;
      }

LABEL_35:
      if (v27)
      {
        v380 = v3;
        v382 = v25;
        v10 = v373;
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_910;
          }

          if (v3)
          {
            atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
          }

          v322 = this;
          *(this + 8) = v381;
          *this = v3;
          goto LABEL_780;
        }

        v12 = WGSL::ContextProvider<WGSL::Binding>::Context::lookup(*a2, &v380, v11);
        v15 = v12;
        v371 = a2;
        v372 = v4;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_232:
        if (v7 != 21 && v8 != 58)
        {
          if (v10 != 57)
          {
            __break(0xC471u);
            JUMPOUT(0x22586533CLL);
          }

          goto LABEL_235;
        }

        v130 = a2[12];
        v131 = v380;
        if (!v130)
        {
          goto LABEL_551;
        }

        if (v380 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x225865364);
        }

        if (!v380)
        {
          __break(0xC471u);
          JUMPOUT(0x225865384);
        }

        v132 = *(v130 - 2);
        v133 = *(v380 + 4);
        if (v133 < 0x100)
        {
          v134 = WTF::StringImpl::hashSlowCase(v380);
        }

        else
        {
          v134 = v133 >> 8;
        }

        v166 = 0;
        v56 = 48;
        while (1)
        {
          v167 = v134 & v132;
          v168 = (v130 + 48 * (v134 & v132));
          v169 = *v168;
          if (*v168 != -1)
          {
            if (!v169)
            {
              a2 = v371;
              v4 = v372;
              goto LABEL_551;
            }

            if (WTF::equal(v169, v131, v14))
            {
              break;
            }
          }

          v134 = ++v166 + v167;
        }

        a2 = v371;
        v4 = v372;
        v170 = *(v371 + 12);
        if (v170 && v168 == (v170 + 48 * *(v170 - 4)))
        {
LABEL_551:
          if (MEMORY[0x22AA683D0](v131, "bitcast", 7))
          {
            v272 = *(v4 + 84);
            if (v272 == 1)
            {
              if (HIDWORD(v384) == 1)
              {
                if (*(a2 + 65) != 1)
                {
                  v56 = **(v4 + 72);
                  v6 = *v383;
                  WGSL::TypeChecker::infer(&v387, a2, v56, *(a2 + 64), 0);
                  if (v390)
                  {
                    if (v390 != 1)
                    {
                      goto LABEL_910;
                    }

                    v302 = v387;
                    if (v387)
                    {
                      atomic_fetch_add_explicit(v387, 2u, memory_order_relaxed);
                      v303 = v388;
                      v304 = v389;
                      if (atomic_fetch_add_explicit(v302, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v302, v13);
                      }
                    }

                    else
                    {
                      v303 = v388;
                      v304 = v389;
                    }

                    goto LABEL_660;
                  }

                  v7 = v387;
                  if (v387 && *(v387 + 48) == 10)
                  {
                    v7 = *(v387 + 1);
                    v387 = v7;
                  }

                  if (v6 && *(v6 + 48) == 1)
                  {
                    if (v7 && *(v7 + 48) == 1)
                    {
                      v273 = *(v7 + 8);
                      v274 = *(v6 + 8);
                      if (v273 == v274)
                      {
                        v275 = *v7;
                        v276 = *v6;
                        if (WGSL::satisfies(*v7, 0x2Cu))
                        {
                          if (WGSL::satisfies(v276, 0x2Cu))
                          {
                            goto LABEL_663;
                          }
                        }

                        v277 = *(a2[9] + 10);
                        if (v277 == v275 && v277 == v276)
                        {
                          goto LABEL_663;
                        }
                      }

                      if (v273 == 2)
                      {
                        v278 = WGSL::satisfies(*v7, 0x2Cu);
                        if (v274 == 4)
                        {
                          if (v278)
                          {
                            v279 = *v6;
                            goto LABEL_623;
                          }
                        }
                      }

                      if (v274 == 2)
                      {
                        v290 = WGSL::satisfies(*v6, 0x2Cu);
                        if (v273 == 4)
                        {
                          if (v290)
                          {
                            v279 = *v7;
LABEL_623:
                            if (v279 == *(a2[9] + 10))
                            {
LABEL_663:
                              *(*(v372 + 64) + 24) = v6;
                              if (*(v56 + 56) != 1)
                              {
LABEL_684:
                                a2[6] = v6;
                                goto LABEL_60;
                              }

                              LOBYTE(v419) = 0;
                              LOBYTE(v421) = -1;
                              v305 = *(v56 + 48);
                              if (v305 != 255)
                              {
                                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v305, &v386, &v419, (v56 + 32));
                                LOBYTE(v421) = *(v56 + 48);
                              }

                              v306 = WTF::fastMalloc(0x20);
                              *v306 = 1;
                              *(v306 + 8) = 0;
                              *(v306 + 24) = -1;
                              if (v421 != 255)
                              {
                                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v421, &v386, v306 + 1, &v419);
                                *(v306 + 24) = v421;
                              }

                              v386 = v306;
                              WGSL::constantBitcast(&v423, v6, &v386);
                              v308 = *v306;
                              if (v308)
                              {
                                v309 = 24 * v308;
                                v310 = v306 + 6;
                                do
                                {
                                  v307 = v310 - 16;
                                  if (*v310 != 255)
                                  {
                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v385, v307);
                                  }

                                  *v310 = -1;
                                  v310 += 24;
                                  v309 -= 24;
                                }

                                while (v309);
                              }

                              v12 = WTF::fastFree(v306, v307);
                              if (v421 != 255)
                              {
                                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v385, &v419);
                              }

                              a2 = v371;
                              if (v426)
                              {
                                if (v426 != 1)
                                {
                                  goto LABEL_910;
                                }

                                v351 = v423;
                                if (v423)
                                {
                                  atomic_fetch_add_explicit(v423, 2u, memory_order_relaxed);
                                }

                                WTF::makeString<WTF::String>(&v419, v351);
                                v303 = *(v372 + 8);
                                v304 = *(v372 + 16);
                                v302 = v419;
                                if (v351 && atomic_fetch_add_explicit(v351, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  v352 = v351;
                                  goto LABEL_868;
                                }
                              }

                              else
                              {
                                WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v419, v372, v6, &v423, v311);
                                if (v422 != 1)
                                {
                                  if (v426 != 255)
                                  {
                                    if (v426)
                                    {
                                      v312 = v423;
                                      v423 = 0;
                                      if (v312 && atomic_fetch_add_explicit(v312, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        WTF::StringImpl::destroy(v312, v13);
                                      }
                                    }

                                    else if (v425 != 255)
                                    {
                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v419, &v423);
                                    }
                                  }

                                  goto LABEL_684;
                                }

                                v302 = v419;
                                if (v419)
                                {
                                  atomic_fetch_add_explicit(v419, 2u, memory_order_relaxed);
                                  v303 = v420;
                                  v304 = v421;
                                  if (atomic_fetch_add_explicit(v302, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    v352 = v302;
LABEL_868:
                                    WTF::StringImpl::destroy(v352, v13);
                                  }
                                }

                                else
                                {
                                  v303 = v420;
                                  v304 = v421;
                                }
                              }

                              std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(&v423, v13);
LABEL_660:
                              if (v302)
                              {
                                atomic_fetch_add_explicit(v302, 2u, memory_order_relaxed);
                                *this = v302;
                                *(this + 1) = v303;
                                *(this + 2) = v304;
                                *(this + 24) = 1;
                                if (atomic_fetch_add_explicit(v302, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v302, v13);
                                }

                                goto LABEL_61;
                              }

                              v322 = this;
                              *this = 0;
                              *(this + 1) = v303;
                              *(this + 2) = v304;
                              goto LABEL_780;
                            }
                          }
                        }
                      }

LABEL_648:
                      v298 = WGSL::concretize(v7, a2[9], v14);
                      if (v298)
                      {
                        v299 = v298;
                      }

                      else
                      {
                        v299 = v7;
                      }

                      LOBYTE(v415) = 0;
                      v418 = -1;
                      v300 = *(v299 + 48);
                      if (v300 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v300, &v423, &v415, v299);
                        v418 = *(v299 + 48);
                      }

                      LOBYTE(v411) = 0;
                      v414 = -1;
                      v301 = *(v6 + 48);
                      if (v301 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v301, &v423, &v411, v6);
                        v414 = *(v6 + 48);
                      }

                      v423 = "' to '";
                      v424 = 7;
                      LOBYTE(v386) = 39;
                      WTF::tryMakeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v419, "cannot bitcast from '", 22, &v415, &v423, &v411, &v386);
                      v302 = v419;
                      if (!v419)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x22586538CLL);
                      }

                      v303 = *(v372 + 8);
                      v304 = *(v372 + 16);
                      if (v414 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v423, &v411);
                      }

                      v414 = -1;
                      if (v418 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v423, &v415);
                      }

                      goto LABEL_660;
                    }

                    if (*(v6 + 8) != 2 || *(a2[9] + 10) != *v6)
                    {
                      goto LABEL_648;
                    }

                    v284 = v7;
LABEL_594:
                    if (WGSL::satisfies(v284, 0x2Cu))
                    {
                      goto LABEL_663;
                    }

                    goto LABEL_648;
                  }

                  if (v7)
                  {
                    if (*(v7 + 48) == 1)
                    {
                      if (*(v7 + 8) != 2 || *(a2[9] + 10) != *v7)
                      {
                        goto LABEL_648;
                      }

                      v284 = v6;
                      goto LABEL_594;
                    }

                    v285 = v7;
                    while (v285[48] == 10)
                    {
                      v285 = *(v285 + 1);
                      if (!v285)
                      {
                        goto LABEL_644;
                      }
                    }

                    if (!v285[48])
                    {
                      v286 = *v285;
                      v287 = v286 < 4 || v286 == 5;
                      if (v287 && v6 != 0)
                      {
                        v67 = v6;
                        do
                        {
                          LODWORD(v66) = *(v67 + 48);
                          if (v66 != 10)
                          {
                            goto LABEL_639;
                          }

                          v67 = *(v67 + 1);
                        }

                        while (v67);
                      }
                    }
                  }

LABEL_644:
                  v296 = *(a2[9] + 10);
                  if (v296 == v7 && v296 == v6)
                  {
                    goto LABEL_663;
                  }

                  goto LABEL_648;
                }

                WTF::makeString<WTF::ASCIILiteral>(&v387, "cannot discard the result of bitcast", 0x25uLL);
                v337 = *(v4 + 8);
                v302 = v387;
LABEL_796:
                v304 = *(&v337 + 1);
                v303 = v337;
                goto LABEL_660;
              }

              WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(&v387, "bitcast expects a single template argument, found ", 0x32uLL, HIDWORD(v384));
              v302 = v387;
              if (!v387)
              {
                __break(0xC471u);
                JUMPOUT(0x2258653DCLL);
              }
            }

            else
            {
              WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(&v387, "bitcast expects a single argument, found ", 0x29uLL, v272);
              v302 = v387;
              if (!v387)
              {
                goto LABEL_942;
              }
            }

            v337 = *(v372 + 8);
            goto LABEL_796;
          }

          if (v131)
          {
            atomic_fetch_add_explicit(v131, 2u, memory_order_relaxed);
            v280 = *(v131 + 1);
            if ((v280 & 0x80000000) == 0)
            {
              v271 = __OFADD__(v280, 1);
              v281 = v280 + 1;
              if (!v271)
              {
LABEL_575:
                if (!__OFADD__(v281, 24))
                {
                  v282 = !v131 || (*(v131 + 16) & 4) != 0;
                  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v415, v281 + 24, v282, "unresolved call target '", 0x18uLL, v131);
                  if (v415)
                  {
                    v283 = *(v6 + 8);
                    *this = v415;
                    *(this + 8) = v283;
                    *(this + 24) = 1;
                    if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v131, v13);
                    }

                    goto LABEL_61;
                  }
                }
              }
            }
          }

          else
          {
            v281 = 1;
            if (!v271)
            {
              goto LABEL_575;
            }
          }

          __break(0xC471u);
          JUMPOUT(0x22586497CLL);
        }

        v423 = 0;
        v424 = 0;
        v171 = *(v372 + 84);
        if (v171)
        {
          if (v171 >> 29)
          {
            __break(0xC471u);
            JUMPOUT(0x2258653B4);
          }

          v172 = WTF::fastMalloc((8 * v171));
          LODWORD(v424) = v171;
          v423 = v172;
          if (*(v372 + 84))
          {
            v173 = 0;
            while (1)
            {
              WGSL::TypeChecker::infer(&v415, v371, *(*(v372 + 72) + 8 * v173), *(v371 + 64), 0);
              v174 = v417;
              if (v417)
              {
                break;
              }

              v175 = HIDWORD(v424);
              if (HIDWORD(v424) == v424)
              {
                v176 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v423, HIDWORD(v424) + 1, &v415);
                v177 = HIDWORD(v424) + 1;
                *&v423[2 * HIDWORD(v424)] = *v176;
                HIDWORD(v424) = v177;
                v178 = v417;
                if (v417)
                {
                  goto LABEL_332;
                }
              }

              else
              {
                *&v423[2 * HIDWORD(v424)] = v415;
                HIDWORD(v424) = v175 + 1;
                v178 = v417;
                if (v417)
                {
                  goto LABEL_332;
                }
              }

LABEL_336:
              if (v174)
              {
                v247 = 0;
                v233 = v368;
                goto LABEL_545;
              }

              if (++v173 >= *(v372 + 84))
              {
                goto LABEL_344;
              }
            }

            if (v417 != 1)
            {
              goto LABEL_910;
            }

            v56 = v415;
            if (v415)
            {
              atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
            }

            v364 = *(&v416 + 1);
            v368 = v416;
            v178 = v417;
            if (!v417)
            {
              goto LABEL_336;
            }

LABEL_332:
            if (v178 != 255)
            {
              v179 = v415;
              v415 = 0;
              if (v179)
              {
                if (atomic_fetch_add_explicit(v179, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v179, v13);
                }
              }
            }

            goto LABEL_336;
          }
        }

LABEL_344:
        WGSL::resolveOverloads(*(v371 + 9), v168 + 4, &v423, &v383, &v387);
        v180 = v389;
        if (v389 == 1)
        {
          if (*(v371 + 65) == 1 && *(v168 + 9) == 1)
          {
            v350 = v380;
            if (v380)
            {
              atomic_fetch_add_explicit(v380, 2u, memory_order_relaxed);
            }

            WTF::makeString<WTF::ASCIILiteral,WTF::String,char>(&v415, v350);
            v233 = *(v372 + 8);
            v364 = *(v372 + 16);
            v56 = v415;
            if (v350 && atomic_fetch_add_explicit(v350, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v350, v13);
            }

            v232 = 1;
            a2 = v371;
            v4 = v372;
            v269 = v387;
            if (v387)
            {
              goto LABEL_543;
            }

            goto LABEL_544;
          }

          v181 = *(v372 + 84);
          if (v181)
          {
            v182 = (v387 + 8);
            v183 = *v387;
            v184 = *(v372 + 72);
            do
            {
              if (!v183)
              {
                __break(0xC471u);
                JUMPOUT(0x2258652A4);
              }

              v186 = *v182++;
              v185 = v186;
              v187 = *v184++;
              *(v187 + 24) = v185;
              --v183;
              --v181;
            }

            while (v181);
          }

          v56 = v388;
          *(v371 + 6) = v388;
          if ((*(*v372 + 16))(v372) != 19)
          {
            goto LABEL_363;
          }

          v287 = *(v168 + 8) == 1;
          *(v372 + 88) = v287;
          *(v372 + 89) = *(v168 + 24);
          if (!v287)
          {
            goto LABEL_363;
          }

          v188 = v56;
          if (!v56)
          {
            v188 = *(v372 + 24);
            if (!v188)
            {
              goto LABEL_363;
            }
          }

          v189 = v188[48];
          if (v189 != 10)
          {
            goto LABEL_359;
          }

          v188 = *(v188 + 1);
          if (!v188)
          {
            goto LABEL_363;
          }

          v189 = v188[48];
LABEL_359:
          if (v189 == 1)
          {
            v188 = *v188;
            if (v188)
            {
              v189 = v188[48];
              goto LABEL_362;
            }

            goto LABEL_363;
          }

LABEL_362:
          if (v189)
          {
            goto LABEL_363;
          }

          v190 = *(v372 + 84);
          if (*v188 - 1 <= 1 && v190 == 1)
          {
            v4 = v372;
            v315 = *(**(v372 + 72) + 24);
            if (!v315)
            {
              goto LABEL_363;
            }

            v316 = v315[48];
            if (v316 == 10)
            {
              v315 = *(v315 + 1);
              if (!v315)
              {
                goto LABEL_363;
              }

              v316 = v315[48];
            }

            if (v316 == 1)
            {
              v315 = *v315;
              if (!v315)
              {
                goto LABEL_363;
              }

              v316 = v315[48];
            }

            if (!v316 && *v315 - 3 <= 2)
            {
              *(*(v371 + 5) + 32) = 1;
            }

LABEL_363:
            v190 = *(v4 + 84);
          }

          if (!v190)
          {
            v419 = 0;
            v231 = v168[2];
            v4 = v372;
            if (v231)
            {
              goto LABEL_514;
            }

            goto LABEL_520;
          }

          v191 = v190;
          v192 = 24 * v190;
          v193 = WTF::fastMalloc((v192 + 8));
          *v193 = v190;
          v194 = v193 + v192;
          a2 = v371;
          v195 = 6;
          bzero((v193 + 8), 24 * ((v194 - (v193 + 8) - 16) / 0x18uLL) + 24);
          v197 = 0;
          v419 = v193;
          v7 = 1;
          v4 = v372;
          while (2)
          {
            if (v197 >= *(v4 + 84))
            {
              __break(0xC471u);
              JUMPOUT(0x2258652ACLL);
            }

            v198 = *(*(v4 + 72) + 8 * v197);
            if (*(v198 + 56) != 1)
            {
              v7 = 0;
              goto LABEL_367;
            }

            WGSL::TypeChecker::convertValue(&v415, (v198 + 8), *(v198 + 24), (v198 + 32), v196);
            if (v417 == 1)
            {
              v56 = v415;
              if (v415)
              {
                atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
                v233 = v416;
                v4 = v372;
                v180 = 1;
                v364 = *(&v416 + 1);
                if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v56, v13);
                  v232 = 1;
                  goto LABEL_522;
                }
              }

              else
              {
                v364 = *(&v416 + 1);
                v233 = v416;
                v4 = v372;
                v180 = 1;
              }

              v232 = 1;
              goto LABEL_522;
            }

            v67 = *(v198 + 56);
            if ((v67 & 1) == 0)
            {
              goto LABEL_638;
            }

            if (v197 >= *v419)
            {
              __break(0xC471u);
              JUMPOUT(0x2258652FCLL);
            }

            v199 = &v419[v195];
            v200 = &v419[v195 - 4];
            v201 = *(v198 + 48);
            if (LOBYTE(v419[v195]) == 255)
            {
              if (v201 != 255)
              {
                goto LABEL_377;
              }
            }

            else
            {
              if (v201 == 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v415, v200);
                *v199 = -1;
                a2 = v371;
                goto LABEL_367;
              }

LABEL_377:
              v415 = &v419[v195 - 4];
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v201, &v415, v200, (v198 + 32));
            }

            a2 = v371;
LABEL_367:
            ++v197;
            v195 += 6;
            v4 = v372;
            if (v191 == v197)
            {
              v231 = v168[2];
              v180 = 1;
              if (v231)
              {
                if ((v7 & 1) == 0)
                {
                  v232 = 0;
                  v233 = v368;
LABEL_522:
                  v261 = v419;
                  v419 = 0;
                  if (v261)
                  {
                    v262 = *v261;
                    if (v262)
                    {
                      v263 = 24 * v262;
                      v264 = v261 + 24;
                      do
                      {
                        v13 = (v264 - 16);
                        if (*v264 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v415, v13);
                        }

                        *v264 = -1;
                        v264 += 24;
                        v263 -= 24;
                      }

                      while (v263);
                    }

                    WTF::fastFree(v261, v13);
                    a2 = v371;
                    v4 = v372;
                  }

LABEL_541:
                  if (v180)
                  {
                    v269 = v387;
                    if (v387)
                    {
LABEL_543:
                      WTF::fastFree(v269, v13);
                    }
                  }

LABEL_544:
                  v247 = v232 == 0;
LABEL_545:
                  v270 = v423;
                  if (v423)
                  {
                    v423 = 0;
                    LODWORD(v424) = 0;
                    WTF::fastFree(v270, v13);
                  }

                  if (!v247)
                  {
                    if (v56)
                    {
                      atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
                      *(this + 1) = v233;
                      *(this + 2) = v364;
                      *this = v56;
                      *(this + 24) = 1;
                      if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v56, v13);
                      }

                      goto LABEL_61;
                    }

                    v322 = this;
                    *(this + 1) = v233;
                    *(this + 2) = v364;
                    *this = 0;
                    goto LABEL_780;
                  }

                  v131 = v380;
                  if (v56)
                  {
                    *(v6 + 24) = v56;
                    if (MEMORY[0x22AA683D0](v131, "workgroupUniformLoad", 20))
                    {
                      *(a2[5] + 13) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "frexp", 5))
                    {
                      *(a2[5] + 16) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "modf", 4))
                    {
                      *(a2[5] + 17) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "atomicCompareExchangeWeak", 25))
                    {
                      *(a2[5] + 18) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "dot", 3))
                    {
                      *(a2[5] + 20) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "firstLeadingBit", 15))
                    {
                      *(a2[5] + 21) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "firstTrailingBit", 16))
                    {
                      *(a2[5] + 22) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "sign", 4))
                    {
                      *(a2[5] + 23) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "dot4I8Packed", 12))
                    {
                      *(a2[5] + 27) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "dot4U8Packed", 12))
                    {
                      *(a2[5] + 28) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "extractBits", 11))
                    {
                      *(*(v371 + 5) + 29) = 1;
                      goto LABEL_60;
                    }

                    if (MEMORY[0x22AA683D0](v131, "insertBits", 10))
                    {
                      *(*(v371 + 5) + 33) = 1;
                      goto LABEL_60;
                    }

                    if ((MEMORY[0x22AA683D0](v131, "textureGather", 13) & 1) == 0 && (MEMORY[0x22AA683D0](v131, "textureGatherCompare", 20) & 1) == 0 && (MEMORY[0x22AA683D0](v131, "textureSample", 13) & 1) == 0 && (MEMORY[0x22AA683D0](v131, "textureSampleBias", 17) & 1) == 0 && (MEMORY[0x22AA683D0](v131, "textureSampleCompare", 20) & 1) == 0 && (MEMORY[0x22AA683D0](v131, "textureSampleCompareLevel", 25) & 1) == 0 && (MEMORY[0x22AA683D0](v131, "textureSampleGrad", 17) & 1) == 0 && !MEMORY[0x22AA683D0](v131, "textureSampleLevel", 18))
                    {
                      goto LABEL_60;
                    }

                    v12 = MEMORY[0x22AA683D0](v131, "textureGather", 13);
                    v341 = *(v372 + 84);
                    if (v12)
                    {
                      if (!v341)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2258653E4);
                      }

                      v342 = *(v372 + 72);
                      v343 = *v342;
                      v12 = WGSL::satisfies(*(*v342 + 24), 0xCu);
                      if (v12)
                      {
                        if (*(v343 + 56))
                        {
                          v12 = WGSL::ConstantValue::integerValue((v343 + 32));
                          if (v12 <= 3)
                          {
                            v341 = *(v372 + 84);
                            goto LABEL_837;
                          }

                          WTF::String::number(v12);
                          WTF::makeString<WTF::ASCIILiteral,WTF::String>("the component argument must be at least 0 and at most 3. component is ", 71, &v377, &v415);
                          v358 = *(v343 + 8);
                          *this = v415;
                          *(this + 8) = v358;
                          *(this + 24) = 1;
                          v415 = 0;
                          v22 = v377;
                          v377 = 0;
                          if (!v22)
                          {
                            goto LABEL_61;
                          }

LABEL_766:
                          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
                          {
                            goto LABEL_61;
                          }

LABEL_804:
                          WTF::StringImpl::destroy(v22, v13);
                          goto LABEL_61;
                        }

                        v359 = "the component argument must be a const-expression";
                        v360 = 50;
LABEL_906:
                        WTF::makeString<WTF::ASCIILiteral>(&v415, v359, v360);
                        v334 = *(v343 + 8);
                        v322 = this;
                        *this = v415;
LABEL_779:
                        *(v322 + 8) = v334;
LABEL_780:
                        *(v322 + 24) = 1;
                        goto LABEL_61;
                      }
                    }

                    else
                    {
LABEL_837:
                      if (!v341)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2258653ECLL);
                      }

                      v342 = *(v372 + 72);
                    }

                    v343 = v342[v341 - 1];
                    v344 = *(v343 + 24);
                    if (!v344 || *(v344 + 48) != 1 || *(v344 + 8) != 2 || *v344 != *(*(v371 + 9) + 56))
                    {
                      goto LABEL_60;
                    }

                    if ((*(v343 + 56) & 1) == 0)
                    {
                      v359 = "the offset argument must be a const-expression";
                      v360 = 47;
                      goto LABEL_906;
                    }

                    if (*(v343 + 48) != 8)
                    {
                      goto LABEL_910;
                    }

                    v345 = *(v343 + 32);
                    v346 = (v345 + 8);
                    if (*v345)
                    {
                      if (*(v345 + 24) != 3)
                      {
                        goto LABEL_910;
                      }

                      if ((*v346 - 8) <= 0xFFFFFFEF)
                      {
                        v349 = 0;
LABEL_918:
                        WTF::String::number(v349);
                        WTF::String::number(*v346);
                        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("each component of the offset argument must be at least -8 and at most 7. offset component ", 91, &v376, " is ", 5, &v375, &v415);
                        v361 = *(v343 + 8);
                        *this = v415;
                        *(this + 8) = v361;
                        *(this + 24) = 1;
                        v415 = 0;
                        v362 = v375;
                        v375 = 0;
                        if (v362 && atomic_fetch_add_explicit(v362, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v362, v13);
                        }

                        v22 = v376;
                        v376 = 0;
                        if (!v22)
                        {
                          goto LABEL_61;
                        }

                        goto LABEL_766;
                      }

                      if (*v345 != 1)
                      {
                        if (*(v345 + 48) != 3)
                        {
                          goto LABEL_910;
                        }

                        v348 = *(v345 + 32);
                        v347 = (v345 + 32);
                        if ((v348 - 8) >= 0xFFFFFFF0)
                        {
                          goto LABEL_60;
                        }

                        v349 = 1;
                        v346 = v347;
                        goto LABEL_918;
                      }
                    }

LABEL_942:
                    __break(0xC471u);
                    JUMPOUT(0x225864968);
                  }

                  goto LABEL_551;
                }

LABEL_514:
                v12 = v231(&v415, v56, &v419);
                v233 = v368;
                if (v417)
                {
                  if (v417 != 1)
                  {
                    goto LABEL_910;
                  }

                  v353 = v415;
                  if (v415)
                  {
                    atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
                  }

                  WTF::makeString<WTF::String>(&v411, v353);
                  v370 = *(v372 + 8);
                  v56 = v411;
                  if (v353 && atomic_fetch_add_explicit(v353, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v354 = v353;
                    goto LABEL_879;
                  }
                }

                else
                {
                  WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v411, v4, v56, &v415, v259);
                  if (v413 != 1)
                  {
                    if (v417 != 255)
                    {
                      if (v417)
                      {
                        v289 = v415;
                        v415 = 0;
                        if (v289 && atomic_fetch_add_explicit(v289, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v289, v13);
                        }
                      }

                      else if (BYTE8(v416) != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v411, &v415);
                      }
                    }

LABEL_521:
                    v232 = 0;
                    goto LABEL_522;
                  }

                  v56 = v411;
                  if (v411)
                  {
                    atomic_fetch_add_explicit(v411, 2u, memory_order_relaxed);
                    v370 = v412;
                    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v354 = v56;
LABEL_879:
                      WTF::StringImpl::destroy(v354, v13);
                    }
                  }

                  else
                  {
                    v370 = v412;
                  }
                }

                std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(&v415, v13);
                v364 = *(&v370 + 1);
                v233 = v370;
                v232 = 1;
                a2 = v371;
                v4 = v372;
                goto LABEL_522;
              }

LABEL_520:
              v260 = *(a2 + 64);
              v233 = v368;
              if (v260 <= 2)
              {
                if (v260 == 2)
                {
                  v355 = "override";
                }

                else
                {
                  v355 = "constant";
                }

                WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v415, "cannot call function from ", 27, v355, 9, " context", 9);
                v233 = *(v4 + 8);
                v364 = *(v4 + 16);
                v232 = 1;
                v56 = v415;
                goto LABEL_522;
              }

              goto LABEL_521;
            }

            continue;
          }
        }

        WTF::StringPrintStream::StringPrintStream(&v415);
        v212 = HIDWORD(v424);
        if (HIDWORD(v424))
        {
          v213 = v423;
          v214 = *v423;
          v215 = (*(v415 + 4))(&v415);
          WGSL::Type::dump(v214, v215);
          (*(v415 + 5))(&v415);
          if (v212 != 1)
          {
            v216 = 8 * v212;
            v217 = (v213 + 2);
            v218 = v216 - 8;
            do
            {
              v219 = *v217++;
              (*(v415 + 4))(&v415);
              WTF::printInternal();
              (*(v415 + 5))(&v415);
              v220 = (*(v415 + 4))(&v415);
              WGSL::Type::dump(v219, v220);
              (*(v415 + 5))(&v415);
              v218 -= 8;
            }

            while (v218);
          }
        }

        WTF::StringPrintStream::StringPrintStream(&v411);
        if (HIDWORD(v384))
        {
          (*(v411 + 4))(&v411);
          WTF::printInternal();
          (*(v411 + 5))(&v411);
          v221 = HIDWORD(v384);
          if (HIDWORD(v384))
          {
            v222 = v383;
            v223 = *v383;
            v224 = (*(v411 + 4))(&v411);
            WGSL::Type::dump(v223, v224);
            (*(v411 + 5))(&v411);
            if (v221 != 1)
            {
              v225 = (v222 + 8);
              v226 = 8 * v221 - 8;
              do
              {
                v227 = *v225++;
                (*(v411 + 4))(&v411);
                WTF::printInternal();
                (*(v411 + 5))(&v411);
                v228 = (*(v411 + 4))(&v411);
                WGSL::Type::dump(v227, v228);
                (*(v411 + 5))(&v411);
                v226 -= 8;
              }

              while (v226);
            }
          }

          (*(v411 + 4))(&v411);
          WTF::printInternal();
          (*(v411 + 5))(&v411);
        }

        v229 = v380;
        if (v380)
        {
          atomic_fetch_add_explicit(v380, 2u, memory_order_relaxed);
        }

        WTF::StringPrintStream::toString(&v386, &v411);
        WTF::StringPrintStream::toString(&v385, &v415);
        a2 = v371;
        if (v229)
        {
          v230 = *(v229 + 1);
        }

        else
        {
          v230 = 0;
        }

        v4 = v372;
        if (v386)
        {
          v248 = *(v386 + 1);
        }

        else
        {
          v248 = 0;
        }

        if (v385)
        {
          v249 = *(v385 + 1);
          if (v249 < 0)
          {
            goto LABEL_928;
          }
        }

        else
        {
          v249 = 0;
        }

        v271 = __OFADD__(v249, 1);
        v250 = v249 + 1;
        if (!v271)
        {
          v271 = __OFADD__(v250, 1);
          v251 = v250 + 1;
          v252 = v271;
          if ((v248 & 0x80000000) == 0 && !v252)
          {
            v271 = __OFADD__(v248, v251);
            v253 = v248 + v251;
            v254 = v271;
            if ((v230 & 0x80000000) == 0 && !v254)
            {
              v271 = __OFADD__(v230, v253);
              v255 = v230 + v253;
              if (!v271)
              {
                v271 = __OFADD__(v255, 1);
                v256 = v255 + 1;
                if (!v271)
                {
                  v271 = __OFADD__(v256, 11);
                  v257 = v256 + 11;
                  if (!v271 && !__OFADD__(v257, 25))
                  {
                    v258 = (!v229 || (*(v229 + 16) & 4) != 0) && (!v386 || (*(v386 + 16) & 4) != 0) && (!v385 || (*(v385 + 16) & 4) != 0);
                    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v419, (v257 + 25), v258, "no matching overload for ", 0x19uLL, "initializer", 0xBuLL, 0x20uLL, v229, v386, 0x28, v385, 41);
                    v56 = v419;
                    if (v419)
                    {
                      v233 = *(v372 + 8);
                      v266 = *(v372 + 16);
                      v267 = v385;
                      v385 = 0;
                      if (v267 && atomic_fetch_add_explicit(v267, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v267, v265);
                      }

                      v268 = v386;
                      v386 = 0;
                      if (v268 && atomic_fetch_add_explicit(v268, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v268, v265);
                      }

                      v364 = v266;
                      if (v229 && atomic_fetch_add_explicit(v229, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v229, v265);
                      }

                      WTF::StringPrintStream::~StringPrintStream(&v411);
                      WTF::StringPrintStream::~StringPrintStream(&v415);
                      v232 = 1;
                      goto LABEL_541;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_928:
        __break(0xC471u);
        JUMPOUT(0x2258652DCLL);
      }

      v24 += 8;
      v26 -= 8;
      if (!v26)
      {
        v380 = v3;
        v382 = v25;
        v10 = v373;
        goto LABEL_3;
      }
    }

    v28 = HIDWORD(v384);
    if (HIDWORD(v384) == v384)
    {
      v12 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v383, HIDWORD(v384) + 1, &v415);
      v29 = HIDWORD(v384) + 1;
      *(v383 + HIDWORD(v384)) = *v12;
      HIDWORD(v384) = v29;
      v30 = v417;
      if (!v417)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *(v383 + HIDWORD(v384)) = v415;
      HIDWORD(v384) = v28 + 1;
      v30 = v417;
      if (!v417)
      {
        goto LABEL_35;
      }
    }

LABEL_31:
    if (v30 != 255)
    {
      v12 = v415;
      v415 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v12, v13);
        }
      }
    }

    goto LABEL_35;
  }

LABEL_3:
  v3 = *(v6 + 88);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

LABEL_7:
  v380 = v3;
  v382 = 0;
  v12 = WGSL::ContextProvider<WGSL::Binding>::Context::lookup(*a2, &v380, v11);
  v15 = v12;
  v371 = a2;
  v372 = v4;
  if (!v12)
  {
    goto LABEL_232;
  }

LABEL_8:
  v16 = *(v15 + 8);
  *(v6 + 24) = v16;
  v17 = *v15;
  if (v17 != 1)
  {
    if (v17 != 2)
    {
      WGSL::Type::Type(v401, v16);
      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(&v415, "cannot call value of type '", 28, v401);
      v323 = *(v6 + 8);
      *this = v415;
      *(this + 8) = v323;
      *(this + 24) = 1;
      if (v402 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v411, v401);
      }

      v402 = -1;
      goto LABEL_61;
    }

    if (*(v16 + 48) != 6)
    {
      goto LABEL_910;
    }

    v19 = *(a2 + 64);
    if (v19 <= 2)
    {
      if (v19 == 2)
      {
        v324 = "override";
      }

      else
      {
        v324 = "constant";
      }

      WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v415, "cannot call function from ", 27, v324, 9, " context", 9);
    }

    else
    {
      v20 = *(v4 + 84);
      v21 = *(v16 + 12);
      if (v20 == v21)
      {
        if (*(a2 + 65) == 1)
        {
          if (*(v16 + 24) == 1)
          {
            if (v3)
            {
              atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
            }

            v379 = v3;
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("ignoring return value of function '", 36, &v379, "' annotated with @must_use", 27, &v415);
            *this = v415;
            *(this + 8) = *(v4 + 8);
            *(this + 24) = 1;
            v415 = 0;
            v22 = v379;
            v379 = 0;
            if (!v22)
            {
              goto LABEL_61;
            }

            goto LABEL_766;
          }
        }

        else
        {
          v31 = *(v16 + 16);
          if (v31 && !v31[48] && *v31 == 6)
          {
            if (v3)
            {
              atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
            }

            v378 = v3;
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("function '", 11, &v378, "' does not return a value", 26, &v415);
            *this = v415;
            *(this + 8) = *(v4 + 8);
            *(this + 24) = 1;
            v415 = 0;
            v22 = v378;
            v378 = 0;
            if (!v22)
            {
              goto LABEL_61;
            }

            goto LABEL_766;
          }
        }

        if (!v20)
        {
LABEL_59:
          a2[6] = *(v16 + 16);
          goto LABEL_60;
        }

        v32 = 0;
        while (1)
        {
          if (v32 >= *(v4 + 84))
          {
            __break(0xC471u);
            JUMPOUT(0x2258650ECLL);
          }

          if (v32 >= *(v16 + 12))
          {
            __break(0xC471u);
            JUMPOUT(0x2258650F4);
          }

          v33 = *(*(v4 + 72) + 8 * v32);
          v34 = *(*v16 + 8 * v32);
          *&v36 = WGSL::TypeChecker::infer(&v415, a2, v33, *(a2 + 64), 0).n128_u64[0];
          if (v417)
          {
            break;
          }

          v37 = v415;
          if (v34 != v415 && WGSL::conversionRank(v415, v34, v35) == -1)
          {
            WGSL::Type::Type(v405, v34);
            WGSL::Type::Type(v403, v37);
            WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v411, "type in function call does not match parameter type: expected '", 64, v405, "', found '", 11, v403);
            v293 = *(v33 + 8);
            *this = v411;
            *(this + 8) = v293;
            *(this + 24) = 1;
            if (v404 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v387, v403);
            }

            v404 = -1;
            if (v406 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v387, v405);
            }

            v406 = -1;
            goto LABEL_637;
          }

          *(v33 + 24) = v34;
          if (*(v33 + 56) == 1)
          {
            WGSL::TypeChecker::convertValue(&v411, (v33 + 8), v34, (v33 + 32), v36);
            if (v413 == 1)
            {
              v38 = v411;
              if (v411)
              {
                atomic_fetch_add_explicit(v411, 2u, memory_order_relaxed);
                *this = v38;
                *(this + 8) = v412;
                *(this + 24) = 1;
                if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v38, v13);
                }

                goto LABEL_637;
              }

              v292 = this;
              *this = 0;
              *(this + 8) = v412;
LABEL_631:
              *(v292 + 24) = 1;
LABEL_637:
              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v415, v13);
              goto LABEL_61;
            }
          }

          if (v20 == ++v32)
          {
            goto LABEL_59;
          }
        }

        if (v417 != 1)
        {
          goto LABEL_910;
        }

        v291 = v415;
        if (v415)
        {
          atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
        }

        v292 = this;
        *(this + 8) = v416;
        *this = v291;
        goto LABEL_631;
      }

      if (v20 >= v21)
      {
        v325 = "many";
      }

      else
      {
        v325 = "few";
      }

      if (v20 < v21)
      {
        v326 = 4;
      }

      else
      {
        v326 = 5;
      }

      WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,unsigned long,WTF::ASCIILiteral,unsigned long>(&v415, v325, v326, v21, *(v4 + 84));
    }

    goto LABEL_778;
  }

  if ((*(a2[5] + 34) & 1) == 0)
  {
    if (v16)
    {
      v18 = v16;
      if (*(v16 + 48) - 1 <= 1)
      {
        v18 = *v16;
      }
    }

    else
    {
      v18 = 0;
    }

    if (v18 == *(a2[9] + 10))
    {
      WTF::makeString<WTF::ASCIILiteral>(&v415, "f16 type used without f16 extension enabled", 0x2CuLL);
      v333 = *(v4 + 8);
      v332 = *(v4 + 16);
      v22 = v415;
      if (!v415)
      {
        *this = 0;
        *(this + 1) = v333;
        *(this + 2) = v332;
        *(this + 24) = 1;
        goto LABEL_61;
      }

      atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
      *this = v22;
      *(this + 1) = v333;
      *(this + 2) = v332;
      *(this + 24) = 1;
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_804;
    }
  }

  *(v4 + 88) = 1;
  v41 = *(v16 + 48);
  if (v41 == 1)
  {
    v46 = HIDWORD(v384);
    if (HIDWORD(v384) == v384)
    {
      v47 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v383, HIDWORD(v384) + 1, v16);
      v46 = HIDWORD(v384);
      v48 = (v383 + 8 * HIDWORD(v384));
    }

    else
    {
      v48 = (v383 + 8 * HIDWORD(v384));
      v47 = v16;
    }

    *v48 = *v47;
    HIDWORD(v384) = v46 + 1;
    v49 = *(v16 + 8);
    if (v49 == 4 || v49 == 3)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v380 = v415;
      if (!v3)
      {
        goto LABEL_172;
      }
    }

    else
    {
      if (v49 != 2)
      {
        __break(0xC471u);
        JUMPOUT(0x2258653D4);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      if (!v3)
      {
        goto LABEL_172;
      }
    }

    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v13);
    }

    goto LABEL_172;
  }

  if (v41 == 4)
  {
    if (WGSL::Type::isConstructible(v16))
    {
      if (*(a2 + 65) != 1)
      {
        v43 = *(v4 + 84);
        v44 = *(v16 + 8);
        if (v44)
        {
          v45 = *(v44 - 12);
          if (!v43)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v45 = 0;
          if (!v43)
          {
LABEL_88:
            v387 = 0;
            v365 = v15;
            if (!v43)
            {
              v87 = *(v15 + 8);
              WGSL::zeroValue(&v411, v87);
              v86 = v4;
              v84 = v87;
LABEL_151:
              WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v415, v86, v84, &v411, v52);
              if (BYTE8(v412) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v423, &v411);
              }

              if (v417 != 1)
              {
                goto LABEL_154;
              }

              v318 = v415;
              if (!v415)
              {
                v356 = this;
                *this = 0;
                v357 = v416;
                goto LABEL_888;
              }

              atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
              v319 = this;
              *this = v318;
              v321 = v416;
LABEL_719:
              *(v319 + 8) = v321;
              goto LABEL_720;
            }

            v50 = 0;
            v51 = 1;
            v367 = v43;
            v369 = v16;
LABEL_90:
            v363 = v51;
LABEL_94:
            if (v50 >= *(v4 + 84))
            {
              __break(0xC471u);
              JUMPOUT(0x225865158);
            }

            if (v50 >= *(*v16 + 84))
            {
              __break(0xC471u);
              JUMPOUT(0x225865160);
            }

            v53 = *(*(*v16 + 72) + 8 * v50);
            v55 = *(v53 + 48);
            v7 = v53 + 48;
            v54 = v55;
            if (v55 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x2258651C0);
            }

            if (!v54)
            {
              __break(0xC471u);
              JUMPOUT(0x2258651E0);
            }

            v6 = *(*(v4 + 72) + 8 * v50);
            v56 = *(v16 + 8);
            if (!v56)
            {
              v60 = 0;
              goto LABEL_111;
            }

            v57 = *(v56 - 8);
            v58 = *(v54 + 4);
            if (v58 < 0x100)
            {
              v59 = WTF::StringImpl::hashSlowCase(v54);
            }

            else
            {
              v59 = v58 >> 8;
            }

            for (i = 0; ; v59 = i + v62)
            {
              v62 = v59 & v57;
              v63 = *(v56 + 16 * v62);
              if (v63 != -1)
              {
                if (!v63)
                {
                  v60 = 0;
LABEL_110:
                  a2 = v371;
                  v4 = v372;
LABEL_111:
                  *&v64 = WGSL::TypeChecker::infer(&v415, a2, v6, *(a2 + 64), 0).n128_u64[0];
                  if (!v417)
                  {
                    v65 = v415;
                    if (v60 != v415 && WGSL::conversionRank(v415, v60, v42) == -1)
                    {
                      WGSL::Type::Type(v409, v60);
                      WGSL::Type::Type(v407, v65);
                      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v411, "type in struct initializer does not match struct member type: expected '", 73, v409, "', found '", 11, v407);
                      v320 = *(v6 + 8);
                      *this = v411;
                      *(this + 8) = v320;
                      *(this + 24) = 1;
                      if (v408 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v423, v407);
                      }

                      v408 = -1;
                      if (v410 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v423, v409);
                      }

                      v410 = -1;
                      goto LABEL_155;
                    }

                    *(v6 + 24) = v60;
                    if (*(v6 + 56) != 1)
                    {
                      v51 = 0;
                      if (++v50 == v43)
                      {
                        goto LABEL_154;
                      }

                      goto LABEL_90;
                    }

                    WGSL::TypeChecker::convertValue(&v411, (v6 + 8), v60, (v6 + 32), v64);
                    if (v413 != 1)
                    {
                      v67 = *(v6 + 56);
                      if ((v67 & 1) == 0)
                      {
                        goto LABEL_638;
                      }

                      v411 = (v6 + 32);
                      if (*v7 == -1)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225865180);
                      }

                      if (!*v7)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2258651A0);
                      }

                      v68 = v387;
                      if (v387 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v387, 8u, 0), (v68 = v387) != 0))
                      {
                        v69 = *(v68 - 2);
                        v70 = *v7;
                        v71 = *(*v7 + 16);
                        if (v71 >= 0x100)
                        {
                          goto LABEL_122;
                        }

LABEL_124:
                        v72 = WTF::StringImpl::hashSlowCase(v70);
                      }

                      else
                      {
                        v69 = 0;
                        v70 = *v7;
                        v71 = *(*v7 + 16);
                        if (v71 < 0x100)
                        {
                          goto LABEL_124;
                        }

LABEL_122:
                        v72 = v71 >> 8;
                      }

                      v73 = 0;
                      v74 = 1;
                      while (2)
                      {
                        v75 = v72 & v69;
                        v76 = v68 + 32 * v75;
                        v77 = *v76;
                        if (*v76 == -1)
                        {
                          v73 = (v68 + 32 * v75);
LABEL_127:
                          v72 = v74 + v75;
                          ++v74;
                          continue;
                        }

                        break;
                      }

                      if (v77)
                      {
                        if (WTF::equal(v77, *v7, v14))
                        {
                          v42 = (v76 + 8);
                          v78 = *(v6 + 48);
                          if (*(v76 + 24) == 255)
                          {
                            a2 = v371;
                            v4 = v372;
                            v43 = v367;
                            v16 = v369;
                            if (v78 == 255)
                            {
                              goto LABEL_93;
                            }
                          }

                          else
                          {
                            a2 = v371;
                            v4 = v372;
                            v43 = v367;
                            v16 = v369;
                            if (v78 == 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v411, (v76 + 8));
                              *(v76 + 24) = -1;
                              goto LABEL_93;
                            }
                          }

                          v411 = (v76 + 8);
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v78, &v411, v42, (v6 + 32));
                          goto LABEL_93;
                        }

                        goto LABEL_127;
                      }

                      if (v73)
                      {
                        *v73 = 0u;
                        v73[1] = 0u;
                        --*(v387 - 4);
                        v76 = v73;
                      }

                      WTF::HashMapTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WGSL::ConstantValue&>(WTF::String const&,WGSL::ConstantValue&)::{lambda(void)#1}>(v76, v7, &v411);
                      v79 = v387;
                      a2 = v371;
                      v43 = v367;
                      v16 = v369;
                      if (v387)
                      {
                        v80 = *(v387 - 3) + 1;
                      }

                      else
                      {
                        v80 = 1;
                      }

                      v4 = v372;
                      *(v387 - 3) = v80;
                      v81 = (*(v79 - 4) + v80);
                      v82 = *(v79 - 1);
                      if (v82 > 0x400)
                      {
                        if (v82 <= 2 * v81)
                        {
                          goto LABEL_144;
                        }
                      }

                      else if (3 * v82 <= 4 * v81)
                      {
                        if (!v82)
                        {
                          v83 = 8;
                          goto LABEL_145;
                        }

LABEL_144:
                        v83 = v82 << (6 * v80 >= (2 * v82));
LABEL_145:
                        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v387, v83, v76);
                      }

LABEL_93:
                      if (++v50 != v43)
                      {
                        goto LABEL_94;
                      }

                      if (v363)
                      {
                        v84 = *(v365 + 8);
                        v85 = v387;
                        v387 = 0;
                        v411 = v85;
                        BYTE8(v412) = 10;
                        v86 = v4;
                        goto LABEL_151;
                      }

LABEL_154:
                      a2[6] = *(v365 + 8);
                      *this = 0;
                      *(this + 24) = 0;
LABEL_155:
                      v88 = v387;
                      if (v387)
                      {
                        v89 = *(v387 - 1);
                        if (v89)
                        {
                          v90 = v387;
                          do
                          {
                            v91 = *v90;
                            if (*v90 != -1)
                            {
                              if (*(v90 + 24) != 255)
                              {
                                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v415, v90 + 8);
                                v91 = *v90;
                              }

                              *(v90 + 24) = -1;
                              *v90 = 0;
                              if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v91, v13);
                              }
                            }

                            v90 = (v90 + 32);
                            --v89;
                          }

                          while (v89);
                        }

                        v92 = (v88 - 16);
                        goto LABEL_481;
                      }

                      goto LABEL_61;
                    }

                    v318 = v411;
                    if (v411)
                    {
                      atomic_fetch_add_explicit(v411, 2u, memory_order_relaxed);
                      v319 = this;
                      *this = v318;
                      v321 = v412;
                      goto LABEL_719;
                    }

                    v356 = this;
                    *this = 0;
                    v357 = v412;
LABEL_888:
                    *(v356 + 8) = v357;
LABEL_890:
                    *(v356 + 24) = 1;
                    goto LABEL_155;
                  }

                  if (v417 == 1)
                  {
                    v318 = v415;
                    if (!v415)
                    {
                      v356 = this;
                      *(this + 8) = v416;
                      *this = 0;
                      goto LABEL_890;
                    }

                    atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
                    v319 = this;
                    *(this + 8) = v416;
                    *this = v318;
LABEL_720:
                    *(v319 + 24) = 1;
                    if (atomic_fetch_add_explicit(v318, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v318, v13);
                    }

                    goto LABEL_155;
                  }

LABEL_910:
                  mpark::throw_bad_variant_access(v12);
                }

                if (WTF::equal(v63, *v7, v42))
                {
                  v60 = *(v56 + 16 * v62 + 8);
                  goto LABEL_110;
                }
              }

              ++i;
            }
          }
        }

        if (v43 == v45)
        {
          goto LABEL_88;
        }

        if (v43 >= v45)
        {
          v338 = "many";
        }

        else
        {
          v338 = "few";
        }

        if (v43 < v45)
        {
          v339 = 4;
        }

        else
        {
          v339 = 5;
        }

        WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,unsigned int,WTF::ASCIILiteral,unsigned long>(&v415, "struct initializer has too ", 28, v338, v339, " inputs: expected ", 19, v45, *(v4 + 84));
LABEL_778:
        v322 = this;
        *this = v415;
        v334 = *(v4 + 8);
        goto LABEL_779;
      }

      v327 = "value constructor evaluated but not used";
      v328 = 41;
    }

    else
    {
      v327 = "struct is not constructible";
      v328 = 28;
    }

LABEL_777:
    WTF::makeString<WTF::ASCIILiteral>(&v415, v327, v328);
    goto LABEL_778;
  }

LABEL_172:
  v93 = *(v15 + 8);
  v94 = v93[48];
  if (v94 != 2)
  {
    goto LABEL_222;
  }

  v95 = HIDWORD(v384);
  v56 = v15;
  if (HIDWORD(v384) == v384)
  {
    v96 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v383, HIDWORD(v384) + 1, *(v15 + 8));
    v95 = HIDWORD(v384);
    v97 = (v383 + 8 * HIDWORD(v384));
  }

  else
  {
    v97 = (v383 + 8 * HIDWORD(v384));
    v96 = *(v15 + 8);
  }

  v98 = 0;
  *v97 = *v96;
  HIDWORD(v384) = v95 + 1;
  v99 = v93[8];
  v100 = v93[9];
  v101 = v93[8];
  do
  {
    ++v98;
    v102 = v101;
    v101 /= 0xAu;
  }

  while (v102 > 9);
  v103 = 0;
  v104 = v93[9];
  do
  {
    ++v103;
    v105 = v104;
    v104 /= 0xAu;
  }

  while (v105 > 9);
  if (v103 < 0)
  {
    goto LABEL_926;
  }

  v271 = __OFADD__(v103, 1);
  v106 = v103 + 1;
  v107 = v271;
  if (v98 < 0)
  {
    goto LABEL_926;
  }

  if (v107)
  {
    goto LABEL_926;
  }

  v271 = __OFADD__(v98, v106);
  v108 = v98 + v106;
  if (v271)
  {
    goto LABEL_926;
  }

  v109 = (v108 + 3);
  if (__OFADD__(v108, 3))
  {
    goto LABEL_926;
  }

  if (v108 == -3)
  {
    v67 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    v4 = v372;
    goto LABEL_218;
  }

  if ((v109 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v109 + 20)), (v67 = v415) == 0))
  {
LABEL_926:
    __break(0xC471u);
    JUMPOUT(0x2258652B4);
  }

  *v415 = 2;
  *(v67 + 1) = v109;
  *(v67 + 10) = 24941;
  *(v67 + 1) = v67 + 20;
  *(v67 + 4) = 4;
  LODWORD(v66) = 116;
  *(v67 + 22) = 116;
  if (v109 <= 2)
  {
    goto LABEL_638;
  }

  v66 = v109 - 3;
  BYTE3(v415) = (v99 % 0xAu) | 0x30;
  if (v99 >= 0xA)
  {
    BYTE2(v415) = (v99 / 0xAu - 10 * ((26 * (v99 / 0xAu)) >> 8)) | 0x30;
    v4 = v372;
    if (v99 >= 0x64)
    {
      v110 = 0;
      BYTE1(v415) = ((41 * v99) >> 12) | 0x30;
      v111 = 1;
    }

    else
    {
      v110 = 1;
      v111 = 2;
    }
  }

  else
  {
    v110 = 0;
    v111 = 3;
    v4 = v372;
  }

  if (!v66)
  {
    goto LABEL_638;
  }

  *(v67 + 23) = *(&v415 + v111);
  if (v99 >= 0xA)
  {
    if (v66 == 1)
    {
      goto LABEL_638;
    }

    *(v67 + 24) = *(&v415 + v111 + 1);
    if ((v110 & 1) == 0)
    {
      if (v66 == 2)
      {
        goto LABEL_638;
      }

      *(v67 + 25) = *(&v415 + v111 + 2);
    }
  }

  LODWORD(v112) = 0;
  do
  {
    v112 = (v112 + 1);
    v113 = v99;
    LOBYTE(v99) = v99 / 0xAu;
  }

  while (v113 > 9);
  if (v66 <= v112)
  {
    goto LABEL_638;
  }

  v114 = v67 + v112 + 23;
  *v114 = 120;
  v66 += ~v112;
  BYTE3(v415) = (v100 % 0xAu) | 0x30;
  if (v100 >= 0xA)
  {
    BYTE2(v415) = (v100 / 0xAu - 10 * ((26 * (v100 / 0xAu)) >> 8)) | 0x30;
    if (v100 >= 0x64)
    {
      v115 = 0;
      BYTE1(v415) = ((41 * v100) >> 12) | 0x30;
      v116 = 1;
    }

    else
    {
      v115 = 1;
      v116 = 2;
    }
  }

  else
  {
    v115 = 0;
    v116 = 3;
  }

  if (!v66)
  {
    goto LABEL_638;
  }

  v114[1] = *(&v415 + v116);
  if (v100 < 0xA)
  {
    goto LABEL_218;
  }

  if (v66 == 1)
  {
    goto LABEL_638;
  }

  v114[2] = *(&v415 + v116 + 1);
  if (v115)
  {
    goto LABEL_218;
  }

  if (v66 == 2)
  {
LABEL_638:
    __break(1u);
LABEL_639:
    if (!v66)
    {
      v294 = *v67;
      if (v294 < 4 || v294 == 5)
      {
        goto LABEL_663;
      }
    }

    goto LABEL_644;
  }

  v114[3] = *(&v415 + v116 + 2);
LABEL_218:
  v15 = v56;
  v117 = v380;
  v380 = v67;
  if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v117, v13);
  }

  v93 = *(v56 + 8);
  v94 = v93[48];
LABEL_222:
  if (v94)
  {
    if (v94 != 3)
    {
      goto LABEL_232;
    }
  }

  else
  {
    WTF::StringPrintStream::StringPrintStream(&v415);
    WGSL::Type::dump(v93, &v415);
    WTF::StringPrintStream::toString(&v411, &v415);
    WTF::StringPrintStream::~StringPrintStream(&v415);
    v119 = v411;
    v411 = 0;
    v120 = v380;
    v380 = v119;
    if (v120)
    {
      if (atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v120, v118);
      }

      v121 = v411;
      v411 = 0;
      if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v121, v118);
      }
    }

    if (*(*(v15 + 8) + 48) != 3)
    {
      goto LABEL_232;
    }
  }

LABEL_235:
  if ((*(*v6 + 16))(v6) == 57)
  {
    v123 = v6;
  }

  else
  {
    v123 = 0;
  }

  if (!v15)
  {
LABEL_243:
    if (v123)
    {
      goto LABEL_244;
    }

LABEL_257:
    if (v15)
    {
      goto LABEL_258;
    }

    goto LABEL_270;
  }

  v124 = *(v15 + 8);
  if (v124)
  {
    if (*(v124 + 48) == 3)
    {
      v15 = *(v15 + 8);
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_243;
  }

  v15 = 0;
  if (!v123)
  {
    goto LABEL_257;
  }

LABEL_244:
  v122 = *(v123 + 64);
  if (!(v122 | v15))
  {
LABEL_270:
    v141 = *(v4 + 84);
    if (!v141)
    {
      v327 = "cannot infer array element type from constructor";
      v328 = 49;
      goto LABEL_777;
    }

    v126 = 0;
    v142 = *(v4 + 72);
    v143 = 8 * v141;
    while (1)
    {
      v144 = *v142;
      WGSL::TypeChecker::infer(&v415, a2, *v142, *(a2 + 64), 0);
      if (v417)
      {
        if (v417 != 1)
        {
          goto LABEL_910;
        }

        v153 = v415;
        if (v415)
        {
          atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
        }

        v148 = 0;
        v152 = this;
        *(this + 8) = v416;
        *this = v153;
      }

      else
      {
        v146 = v415;
        if (v415 && *(v415 + 48) == 10)
        {
          v146 = *(v415 + 1);
          v415 = v146;
        }

        if (!v126)
        {
          if (WGSL::Type::isConstructible(v146))
          {
            v148 = 1;
          }

          else
          {
            WGSL::Type::Type(v391, v146);
            WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v411, v391, "' cannot be used as an element type of an array", 48);
            v154 = *(v123 + 8);
            *this = v411;
            *(this + 8) = v154;
            *(this + 24) = 1;
            if (v392 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v387, v391);
            }

            v148 = 0;
            v392 = -1;
          }

          v126 = v146;
          goto LABEL_283;
        }

        if (v126 == v146 || WGSL::conversionRank(v146, v126, v145) != -1)
        {
          v148 = 1;
          goto LABEL_283;
        }

        v13 = v415;
        if (v415 == v126)
        {
          v148 = 1;
          v126 = v415;
          goto LABEL_283;
        }

        if (WGSL::conversionRank(v126, v415, v147) != -1)
        {
          v148 = 1;
          v126 = v415;
          goto LABEL_283;
        }

        WTF::tryFastCompactMalloc(0x55);
        v150 = v411;
        if (!v411)
        {
          __break(0xC471u);
          JUMPOUT(0x225865344);
        }

        v148 = 0;
        *(v411 + 20) = *"cannot infer common array element type from constructor arguments";
        qmemcpy(v150 + 36, "mon array element type from constructor arguments", 49);
        *(v150 + 1) = v150 + 20;
        *v150 = 0x4100000002;
        *(v150 + 4) = 4;
        v151 = *(v144 + 8);
        v152 = this;
        *this = v150;
        *(this + 8) = v151;
      }

      *(v152 + 24) = 1;
LABEL_283:
      if (v417)
      {
        if (v417 != 255)
        {
          v149 = v415;
          if (v415)
          {
            if (atomic_fetch_add_explicit(v415, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v149, v13);
            }
          }
        }
      }

      if ((v148 & 1) == 0)
      {
        goto LABEL_61;
      }

      ++v142;
      v143 -= 8;
      if (!v143)
      {
        v157 = *(v4 + 84);
        if (!v157)
        {
          goto LABEL_444;
        }

        v158 = *(v4 + 72);
        v159 = (v157 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v159)
        {
          v160 = v159 + 1;
          v161 = (v159 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v162 = (v158 + 8 * v161);
          v163 = (v158 + 8);
          v164 = v161;
          do
          {
            v165 = *v163;
            *(*(v163 - 1) + 24) = v126;
            *(v165 + 24) = v126;
            v163 += 2;
            v164 -= 2;
          }

          while (v164);
          if (v160 == v161)
          {
            goto LABEL_444;
          }
        }

        else
        {
          v162 = *(v4 + 72);
        }

        v234 = (v158 + 8 * v157);
        do
        {
          v235 = *v162++;
          *(v235 + 24) = v126;
        }

        while (v162 != v234);
        goto LABEL_444;
      }
    }
  }

  if (!*(v123 + 72))
  {
    goto LABEL_749;
  }

  if (v15)
  {
LABEL_258:
    if (*(v15 + 16))
    {
      v128 = 0;
      v126 = *v15;
      v135 = a2[9];
      v129 = *(v135 + 7);
      v127 = *(v135 + 8);
      if (v129 == v127)
      {
        goto LABEL_263;
      }

      goto LABEL_260;
    }

LABEL_749:
    v327 = "cannot construct a runtime-sized array";
    v328 = 39;
    goto LABEL_777;
  }

  v12 = WGSL::TypeChecker::resolve(&v415, a2);
  v125 = v417;
  if (v417 || (v126 = v415, WGSL::TypeChecker::infer(&v415, a2, *(v123 + 72), *(a2 + 64), 0), (v125 = v417) != 0))
  {
    if (v125 != 1)
    {
      goto LABEL_910;
    }

LABEL_802:
    v22 = v415;
    if (v415)
    {
      atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
      *(this + 8) = v416;
      *this = v22;
      *(this + 24) = 1;
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_804;
    }

    v322 = this;
    *(this + 8) = v416;
    *this = 0;
    goto LABEL_780;
  }

  v127 = v415;
  v128 = 1;
  v129 = *(a2[9] + 7);
  if (v129 != v415)
  {
LABEL_260:
    if (WGSL::conversionRank(v127, v129, v122) == -1)
    {
      v137 = *(a2[9] + 8);
      if (v137 != v127 && WGSL::conversionRank(v127, v137, v136) == -1)
      {
        WGSL::Type::Type(v399, v127);
        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(&v415, "array count must be an i32 or u32 value, found '", 49, v399);
        v340 = *(v123 + 8);
        *this = v415;
        *(this + 8) = v340;
        *(this + 24) = 1;
        if (v400 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v411, v399);
        }

        v400 = -1;
        goto LABEL_61;
      }
    }
  }

LABEL_263:
  if ((WGSL::Type::isConstructible(v126) & 1) == 0)
  {
    WGSL::Type::Type(v397, v126);
    WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v415, v397, "' cannot be used as an element type of an array", 48);
    v329 = *(v123 + 8);
    *this = v415;
    *(this + 8) = v329;
    *(this + 24) = 1;
    if (v398 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v411, v397);
    }

    v398 = -1;
    goto LABEL_61;
  }

  LOBYTE(v415) = 0;
  v417 = 0;
  if (v128)
  {
    v138 = *(v123 + 72);
    if (*(v138 + 56))
    {
      v139 = 255;
      BYTE8(v416) = -1;
      v140 = *(v138 + 48);
      if (v140 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v140, &v411, &v415, (v138 + 32));
        v139 = *(v138 + 48);
        BYTE8(v416) = *(v138 + 48);
      }

      v417 = 1;
      if (v139 == 5)
      {
        goto LABEL_269;
      }

      goto LABEL_390;
    }

LABEL_769:
    v330 = "array must have constant size in order to be constructed";
    v331 = 57;
    goto LABEL_770;
  }

  v155 = *(v15 + 16);
  if (v155 == 1)
  {
    LODWORD(v387) = *(v15 + 8);
    LOBYTE(v389) = 4;
    LODWORD(v411) = v387;
    BYTE8(v412) = 4;
    v156 = 1;
  }

  else
  {
    v156 = 0;
    LOBYTE(v411) = 0;
  }

  v413 = v156;
  std::__optional_storage_base<WGSL::ConstantValue,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WGSL::ConstantValue,false>>(&v415, &v411);
  if (v413 == 1)
  {
    if (BYTE8(v412) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v423, &v411);
    }

    BYTE8(v412) = -1;
  }

  v287 = v155 == 1;
  v4 = v372;
  if (v287 && v389 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v423, &v387);
  }

  if ((v417 & 1) == 0)
  {
    goto LABEL_769;
  }

  v139 = BYTE8(v416);
  if (BYTE8(v416) == 5)
  {
LABEL_269:
    v141 = v415;
    goto LABEL_394;
  }

LABEL_390:
  if (v139 == 4)
  {
    v141 = v415;
  }

  else
  {
    if (v139 != 3)
    {
      __break(0xC471u);
      JUMPOUT(0x2258653ACLL);
    }

    v141 = v415;
  }

LABEL_394:
  if (v141 <= 0)
  {
    v330 = "array count must be greater than 0";
    v331 = 35;
LABEL_770:
    WTF::makeString<WTF::ASCIILiteral>(&v411, v330, v331);
    goto LABEL_771;
  }

  if (v141 >= 0x10000)
  {
    WTF::makeString<WTF::ASCIILiteral,long long,WTF::ASCIILiteral>(&v411, v141);
LABEL_771:
    v141 = 0;
LABEL_772:
    v208 = 0;
    *this = v411;
    *(this + 8) = *(v4 + 8);
    *(this + 24) = 1;
    goto LABEL_419;
  }

  v202 = *(v4 + 84);
  if (v202 && v202 != v141)
  {
    if (v141 <= v202)
    {
      v335 = "many";
    }

    else
    {
      v335 = "few";
    }

    if (v141 > v202)
    {
      v336 = 4;
    }

    else
    {
      v336 = 5;
    }

    WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,unsigned int,WTF::ASCIILiteral,unsigned long>(&v411, "array constructor has too ", 27, v335, v336, " elements: expected ", 21, v141, *(v4 + 84));
    goto LABEL_772;
  }

  if (!v202)
  {
    v208 = 1;
    goto LABEL_419;
  }

  v203 = *(v4 + 72);
  v204 = 8 * v202 - 8;
  while (1)
  {
    v206 = *v203;
    WGSL::TypeChecker::infer(&v411, a2, *v203, *(a2 + 64), 0);
    if (v413)
    {
      break;
    }

    if (v126 != v411 && WGSL::conversionRank(v411, v126, v207) == -1)
    {
      WGSL::Type::Type(v395, v411);
      WGSL::Type::Type(v393, v126);
      WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v423, v395, v393);
      v211 = *(v206 + 8);
      *this = v423;
      *(this + 8) = v211;
      *(this + 24) = 1;
      if (v394 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v419, v393);
      }

      v394 = -1;
      if (v396 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v419, v395);
      }

      v208 = 0;
      v396 = -1;
      v209 = v413;
      if (!v413)
      {
        goto LABEL_400;
      }

LABEL_408:
      if (v209 != 255)
      {
        v210 = v411;
        v411 = 0;
        if (v210)
        {
          if (atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v210, v13);
          }
        }
      }

      goto LABEL_400;
    }

    *(v206 + 24) = v126;
    v208 = 1;
    v209 = v413;
    if (v413)
    {
      goto LABEL_408;
    }

LABEL_400:
    ++v203;
    if (v204)
    {
      v205 = v208;
    }

    else
    {
      v205 = 0;
    }

    v204 -= 8;
    if ((v205 & 1) == 0)
    {
      goto LABEL_419;
    }
  }

  if (v413 != 1)
  {
    goto LABEL_910;
  }

  v313 = v411;
  if (v411)
  {
    atomic_fetch_add_explicit(v411, 2u, memory_order_relaxed);
  }

  *(this + 8) = v412;
  *this = v313;
  *(this + 24) = 1;
  std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v411, v13);
  v208 = 0;
LABEL_419:
  if (v417 == 1 && BYTE8(v416) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v411, &v415);
  }

  if ((v208 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_444:
  *(v4 + 88) = 1;
  v6 = WGSL::TypeStore::arrayType(a2[9], v126, v141, 1);
  a2[6] = v6;
  v236 = *(v4 + 84);
  if (!v236)
  {
    WGSL::zeroValue(&v411, v6);
    WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v415, v4, v6, &v411, v243);
    if (BYTE8(v412) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v423, &v411);
    }

    if (v417 != 1)
    {
      goto LABEL_60;
    }

    v22 = v415;
    if (v415)
    {
      atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
      *this = v22;
      *(this + 8) = v416;
      *(this + 24) = 1;
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_804;
    }

    v322 = this;
    *this = 0;
    v334 = v416;
    goto LABEL_779;
  }

  a2 = WTF::fastMalloc((24 * v236 + 8));
  *a2 = v236;
  v56 = (a2 + 3);
  v237 = v372;
  bzero(a2 + 1, 24 * ((24 * v236 - 24) / 0x18uLL) + 24);
  v239 = 0;
  v240 = 1;
LABEL_446:
  v7 = v56 + 24 * v239;
  while (1)
  {
    if (v239 >= *(v237 + 84))
    {
      __break(0xC471u);
      JUMPOUT(0x225865124);
    }

    v241 = *(*(v237 + 72) + 8 * v239);
    if (*(v241 + 56) != 1)
    {
      v240 = 0;
      v287 = v236 - 1 == v239++;
      v237 = v372;
      if (!v287)
      {
        goto LABEL_446;
      }

      goto LABEL_474;
    }

    WGSL::TypeChecker::convertValue(&v415, (v241 + 8), *(v241 + 24), (v241 + 32), v238);
    if (v417 == 1)
    {
      break;
    }

    v67 = *(v241 + 56);
    if ((v67 & 1) == 0)
    {
      goto LABEL_638;
    }

    if (v239 >= *a2)
    {
      __break(0xC471u);
      JUMPOUT(0x225865144);
    }

    v242 = *(v241 + 48);
    if (*v7 == 255)
    {
      if (v242 != 255)
      {
LABEL_448:
        v415 = (v7 - 16);
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v242, &v415, (v7 - 16), (v241 + 32));
      }

      ++v239;
      v7 += 24;
      v237 = v372;
      if (v236 == v239)
      {
        goto LABEL_462;
      }

      continue;
    }

    if (v242 != 255)
    {
      goto LABEL_448;
    }

    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v415, (v7 - 16));
    *v7 = -1;
    v7 += 24;
    ++v239;
    v237 = v372;
    if (v236 == v239)
    {
LABEL_462:
      if (v240)
      {
        if (v236 < 0x800)
        {
          v411 = a2;
          BYTE8(v412) = 7;
          WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(&v415, v237, v6, &v411, v238);
          if (BYTE8(v412) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v423, &v411);
          }

          if (v417 == 1)
          {
            goto LABEL_802;
          }

LABEL_60:
          *this = 0;
          *(this + 24) = 0;
          goto LABEL_61;
        }

        WTF::String::number(0x7FF);
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("constant array cannot have more than ", 38, &v374, " elements", 10, &v415);
        *this = v415;
        *(this + 8) = *(v237 + 8);
        *(this + 24) = 1;
        v415 = 0;
        v317 = v374;
        v374 = 0;
        if (v317 && atomic_fetch_add_explicit(v317, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_708:
          WTF::StringImpl::destroy(v317, v13);
        }

        goto LABEL_475;
      }

LABEL_474:
      *this = 0;
      *(this + 24) = 0;
      goto LABEL_475;
    }
  }

  v317 = v415;
  if (v415)
  {
    atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
    *this = v317;
    *(this + 8) = v416;
    *(this + 24) = 1;
    if (atomic_fetch_add_explicit(v317, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_708;
    }
  }

  else
  {
    *this = 0;
    *(this + 8) = v416;
    *(this + 24) = 1;
  }

LABEL_475:
  v244 = *a2;
  if (v244)
  {
    v245 = 24 * v244;
    v246 = a2 + 3;
    do
    {
      v13 = (v246 - 16);
      if (*v246 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v415, v13);
      }

      *v246 = -1;
      v246 += 24;
      v245 -= 24;
    }

    while (v245);
  }

  v92 = a2;
LABEL_481:
  WTF::fastFree(v92, v13);
LABEL_61:
  if (v382 != 255)
  {
    v39 = v380;
    v380 = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v13);
      }
    }
  }

  result = v383;
  if (v383)
  {
    v383 = 0;
    LODWORD(v384) = 0;
    return WTF::fastFree(result, v13);
  }

  return result;
}

void WGSL::TypeChecker::visit(WGSL::AST::FieldAccessExpression &)::$_1::operator()(uint64_t a1, void *a2, uint64_t a3, BOOL *a4, _BYTE *a5)
{
  v133 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 48);
  if (v8 == 1)
  {
    v19 = *a2;
    v20 = *(*a2 + 96);
    if (!v20)
    {
      goto LABEL_208;
    }

    v21 = *(v20 + 4);
    if (!v21)
    {
      goto LABEL_208;
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = a2[1];
    v26 = *(a3 + 8);
    v27 = *(v20 + 16);
    v28 = 1;
    v29 = *(v20 + 8);
    while (1)
    {
      if ((v27 & 4) != 0)
      {
        v31 = v29[v22];
        if (v31 <= 0x76)
        {
LABEL_36:
          if (v31 > 102)
          {
            if (v31 != 103 && v31 != 114)
            {
LABEL_176:
              WTF::tryFastCompactMalloc(0x34);
              v88 = v122[0];
              if (!v122[0])
              {
                __break(0xC471u);
LABEL_242:
                JUMPOUT(0x225866260);
              }

              *v122[0] = 0x2000000002;
              *(v88 + 1) = v88 + 20;
              *(v88 + 4) = 4;
              qmemcpy(v88 + 20, "invalid vector swizzle character", 32);
LABEL_210:
              v103 = *(v19 + 8);
LABEL_211:
              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
              *a1 = v88;
              *(a1 + 8) = v103;
              *(a1 + 24) = 1;
              if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {

                WTF::StringImpl::destroy(v88, v87);
              }

              return;
            }
          }

          else if (v31 == 97)
          {
            if (v28)
            {
              v30 = v26 == 4;
            }

            else
            {
              v30 = 0;
            }

            v28 = v30;
          }

          else
          {
            if (v31 != 98)
            {
              goto LABEL_176;
            }

            if (v28)
            {
              v33 = v26 > 2;
            }

            else
            {
              v33 = 0;
            }

            v28 = v33;
          }

          v24 = 1;
          goto LABEL_22;
        }
      }

      else
      {
        v31 = *&v29[2 * v22];
        if (v31 <= 0x76)
        {
          goto LABEL_36;
        }
      }

      if ((v31 - 120) < 2)
      {
        v23 = 1;
      }

      else if (v31 == 119)
      {
        if (v28)
        {
          v34 = v26 == 4;
        }

        else
        {
          v34 = 0;
        }

        v28 = v34;
        v23 = 1;
      }

      else
      {
        if (v31 != 122)
        {
          goto LABEL_176;
        }

        if (v28)
        {
          v32 = v26 > 2;
        }

        else
        {
          v32 = 0;
        }

        v28 = v32;
        v23 = 1;
      }

LABEL_22:
      if (v21 == ++v22)
      {
        if (v28 & 1) == 0 || (v24 & v23)
        {
          WTF::makeString<WTF::ASCIILiteral>(v122, "invalid vector swizzle member", 0x1EuLL);
          v103 = *(v19 + 8);
          v88 = v122[0];
          if (!v122[0])
          {
            *a1 = 0;
            *(a1 + 8) = v103;
            *(a1 + 24) = 1;
            return;
          }

          goto LABEL_211;
        }

        v48 = *(v19 + 64);
        if ((v21 - 2) < 3)
        {
          v108 = a4;
          v109 = a5;
          if (*(v48 + 56) != 1)
          {
            goto LABEL_195;
          }

          if (*(v48 + 48) != 8)
          {
LABEL_234:
            mpark::throw_bad_variant_access(v8);
          }

          v49 = WTF::fastMalloc((24 * v21 + 8));
          *v49 = v21;
          v50 = v49 + 6;
          bzero(v49 + 2, 24 * ((24 * v21 - 24) / 0x18uLL) + 24);
          v51 = 0;
          while (2)
          {
            v52 = *(v19 + 96);
            if (v52)
            {
              if (v51 >= *(v52 + 4))
              {
                LOBYTE(v52) = 0;
              }

              else
              {
                v53 = *(v52 + 8);
                if ((*(v52 + 16) & 4) != 0)
                {
                  LOBYTE(v52) = *(v53 + v51);
                }

                else
                {
                  LOWORD(v52) = *(v53 + 2 * v51);
                }
              }
            }

            WGSL::TypeChecker::vectorFieldAccess(WGSL::Types::Vector const&,WGSL::AST::FieldAccessExpression &)::$_2::operator()(v122, *(v48 + 32), v52);
            if (v51 >= *v49)
            {
              __break(0xC471u);
              goto LABEL_242;
            }

            if (*v50 == 255)
            {
              if (v123 == 255)
              {
                goto LABEL_87;
              }
            }

            else if (v123 == 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v50 - 16);
              *v50 = -1;
              if (v123 != 255)
              {
                goto LABEL_86;
              }

              goto LABEL_87;
            }

            v124 = v50 - 16;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v123, &v124, v50 - 2, v122);
            if (v123 != 255)
            {
LABEL_86:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v122);
            }

LABEL_87:
            ++v51;
            v50 += 24;
            if (v21 == v51)
            {
              v73 = *v49;
              v74 = 24 * v73;
              v75 = WTF::fastMalloc((24 * v73 + 8));
              v76 = v75;
              *v75 = v73;
              if (v73)
              {
                v77 = v75 + 3;
                v78 = (v49 + 6);
                do
                {
                  *(v77 - 16) = 0;
                  *v77 = -1;
                  v79 = *v78;
                  if (v79 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v79, v122, v77 - 2, v78 - 2);
                    *v77 = *v78;
                  }

                  v77 += 3;
                  v78 += 3;
                  v74 -= 24;
                }

                while (v74);
              }

              v120[0] = v76;
              v121 = 8;
              if (*(v19 + 56) == 1)
              {
                if (*(v19 + 48) == 8)
                {
                  WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::operator=((v19 + 32), v120);
                }

                else
                {
                  v89 = *v76;
                  v90 = 24 * v89;
                  v91 = WTF::fastMalloc((24 * v89 + 8));
                  v92 = v91;
                  *v91 = v89;
                  if (v89)
                  {
                    v93 = (v91 + 6);
                    v94 = (v76 + 24);
                    do
                    {
                      *(v93 - 16) = 0;
                      *v93 = -1;
                      v95 = *v94;
                      if (v95 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v95, v122, v93 - 2, v94 - 2);
                        *v93 = *v94;
                      }

                      v93 += 3;
                      v94 += 3;
                      v90 -= 24;
                    }

                    while (v90);
                  }

                  if (*(v19 + 48) != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, (v19 + 32));
                  }

                  *(v19 + 32) = v92;
                  *(v19 + 48) = 8;
                }

                v86 = v121;
              }

              else
              {
                *(v19 + 32) = 0;
                *(v19 + 48) = -1;
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(8, v122, (v19 + 32), v120);
                v86 = v121;
                *(v19 + 48) = v121;
                *(v19 + 56) = 1;
              }

              if (v86 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v120);
              }

              v121 = -1;
              v96 = *v49;
              if (v96)
              {
                v97 = 24 * v96;
                v98 = v49 + 6;
                do
                {
                  v80 = v98 - 16;
                  if (*v98 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v80);
                  }

                  *v98 = -1;
                  v98 += 24;
                  v97 -= 24;
                }

                while (v97);
              }

              WTF::fastFree(v49, v80);
LABEL_195:
              v99 = WGSL::TypeStore::vectorType(*(v25 + 72), v21, *a3);
              a4 = v108;
              a5 = v109;
              if (v109)
              {
LABEL_196:
                *a5 = 1;
              }

LABEL_197:
              if (a4 && v99)
              {
                *a4 = *(v99 + 48) != 1;
              }

              *a1 = v99;
              goto LABEL_174;
            }

            continue;
          }
        }

        if (v21 == 1)
        {
          if (*(v48 + 56) == 1)
          {
            if (*(v48 + 48) != 8)
            {
              goto LABEL_234;
            }

            v100 = a5;
            v101 = a4;
            WGSL::TypeChecker::vectorFieldAccess(WGSL::Types::Vector const&,WGSL::AST::FieldAccessExpression &)::$_2::operator()(v130, *(v48 + 32), *v29);
            v102 = (v19 + 32);
            if (*(v19 + 56) == 1)
            {
              if (*(v19 + 48) != 255)
              {
                a4 = v101;
                a5 = v100;
                if (v131 == 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, (v19 + 32));
                  *(v19 + 48) = -1;
                  goto LABEL_220;
                }

LABEL_219:
                v100 = a5;
                v101 = a4;
                v122[0] = (v19 + 32);
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v131, v122, v102, v130);
                goto LABEL_220;
              }

              a4 = v101;
              a5 = v100;
              if (v131 != 255)
              {
                goto LABEL_219;
              }
            }

            else
            {
              *(v19 + 32) = 0;
              *(v19 + 48) = -1;
              if (v131 != 255)
              {
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v131, v122, v102, v130);
                *(v19 + 48) = v131;
              }

              *(v19 + 56) = 1;
LABEL_220:
              a4 = v101;
              a5 = v100;
              if (v131 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v130);
                a5 = v100;
                a4 = v101;
              }
            }
          }

          v99 = *a3;
          if (a5)
          {
            goto LABEL_196;
          }

          goto LABEL_197;
        }

LABEL_208:
        WTF::tryFastCompactMalloc(0x2F);
        v88 = v122[0];
        if (!v122[0])
        {
          __break(0xC471u);
          JUMPOUT(0x2258662D0);
        }

        *v122[0] = 0x1B00000002;
        *(v88 + 1) = v88 + 20;
        *(v88 + 4) = 4;
        qmemcpy(v88 + 20, "invalid vector swizzle size", 27);
        goto LABEL_210;
      }
    }
  }

  if (v8 == 5)
  {
    v15 = *(a3 + 8);
    if (v15 >= 3)
    {
      __break(1u);
    }

    else
    {
      v16 = *(*a2 + 96);
      if (v16)
      {
        v17 = *(v16 + 8);
        v18 = *(v16 + 4) | (((*(v16 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v17 = 0;
        v18 = 0x100000000;
      }

      v41 = WGSL::Types::PrimitiveStruct::keys[v15];
      if (WTF::operator==(v17, v18, *v41, *(v41 + 1)) & 1) != 0 || (v42 = *(v41 + 3), v43 = *(v41 + 4), v41 += 24, (WTF::operator==(v17, v18, v42, v43)))
      {
        v44 = *(*a2 + 64);
        LOBYTE(v130[0]) = 0;
        v132 = 0;
        if (*(v44 + 56) != 1)
        {
LABEL_162:
          v83 = *(v41 + 4);
          v84 = *(a3 + 16);
          if (*v84 <= v83)
          {
            __break(0xC471u);
            JUMPOUT(0x225866288);
          }

          v85 = *&v84[2 * v83 + 2];
          goto LABEL_173;
        }

        v131 = -1;
        v8 = *(v44 + 48);
        if (v8 == 255)
        {
LABEL_233:
          v132 = 1;
          goto LABEL_234;
        }

        v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, v122, v130, (v44 + 32));
        v131 = *(v44 + 48);
        v132 = 1;
        if (v131 != 10)
        {
          goto LABEL_234;
        }

        v46 = *a2;
        WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(v130, (v46 + 96), v45, v110);
        v47 = (v46 + 32);
        if (*(v46 + 56) != 1)
        {
          *(v46 + 32) = 0;
          *(v46 + 48) = -1;
          if (v111 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v111, v122, v47, v110);
            *(v46 + 48) = v111;
          }

          *(v46 + 56) = 1;
          if (v111 == 255)
          {
            goto LABEL_159;
          }

          goto LABEL_158;
        }

        if (*(v46 + 48) == 255)
        {
          if (v111 == 255)
          {
            goto LABEL_159;
          }
        }

        else if (v111 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, (v46 + 32));
          *(v46 + 48) = -1;
          if (v111 == 255)
          {
            goto LABEL_159;
          }

          goto LABEL_158;
        }

        v122[0] = (v46 + 32);
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v111, v122, v47, v110);
        if (v111 != 255)
        {
LABEL_158:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v110);
        }

LABEL_159:
        LOBYTE(v111) = -1;
        if ((v132 & 1) != 0 && v131 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v130);
        }

        goto LABEL_162;
      }
    }

    WGSL::Type::Type(v127, a3);
    v104 = *a2;
    v113 = *(*a2 + 80);
    v112 = off_2838D37C0;
    v105 = *(v104 + 96);
    if (v105)
    {
      atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
    }

    v114 = v105;
    WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(v130, v127, &v112);
    v106 = *a2;
    *a1 = v130[0];
    *(a1 + 8) = *(v106 + 8);
    *(a1 + 24) = 1;
    WGSL::AST::Identifier::~Identifier(&v112, v107);
    if (v127[48] == 255)
    {
      return;
    }

    v70 = v122;
    v71 = v127;
LABEL_155:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v70, v71);
    return;
  }

  if (v8 != 4)
  {
    v125[0] = 0;
    v126 = -1;
    if (v8 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v8, v130, v125, a3);
      v126 = *(a3 + 48);
    }

    WTF::StringPrintStream::StringPrintStream(v130);
    WGSL::Type::dump(v125, v130);
    WTF::StringPrintStream::toString(v120, v130);
    WTF::StringPrintStream::~StringPrintStream(v130);
    v37 = v120[0];
    if (v120[0])
    {
      v38 = *(v120[0] + 1);
      if (v38 < 0)
      {
        v40 = 0;
        v120[0] = 0;
        if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      v35 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v35)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v39 = 1;
      if (v35)
      {
        goto LABEL_66;
      }
    }

    if (!__OFADD__(v39, 66))
    {
      if (v120[0])
      {
        v72 = (*(v120[0] + 4) >> 2) & 1;
        atomic_fetch_add_explicit(v120[0], 2u, memory_order_relaxed);
      }

      else
      {
        v72 = 1;
      }

      v122[0] = v37;
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>((v39 + 66), v72, "invalid member access expression. Expected vector or struct, got '", 0x42uLL, v122, 39, v130);
      v40 = v130[0];
      v130[0] = 0;
      v81 = v122[0];
      v122[0] = 0;
      if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v81, v36);
      }

      v37 = v120[0];
      v120[0] = 0;
      if (!v37)
      {
        goto LABEL_152;
      }

      goto LABEL_150;
    }

LABEL_66:
    v40 = 0;
    v120[0] = 0;
    if (!v37)
    {
      goto LABEL_152;
    }

LABEL_150:
    if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
LABEL_152:
      if (!v40)
      {
        __break(0xC471u);
        JUMPOUT(0x225866268);
      }

      v82 = *a2;
      *a1 = v40;
      *(a1 + 8) = *(v82 + 8);
      *(a1 + 24) = 1;
      if (v126 == 255)
      {
        return;
      }

      v70 = v130;
      v71 = v125;
      goto LABEL_155;
    }

LABEL_151:
    WTF::StringImpl::destroy(v37, v36);
    goto LABEL_152;
  }

  v9 = *(a3 + 8);
  if (!v9)
  {
    goto LABEL_119;
  }

  v10 = *a2;
  v11 = *(*a2 + 96);
  if (v11 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2258662A8);
  }

  if (!v11)
  {
    __break(0xC471u);
    JUMPOUT(0x2258662C8);
  }

  v12 = *(v9 - 8);
  v13 = *(v11 + 4);
  v14 = v13 < 0x100 ? WTF::StringImpl::hashSlowCase(v11) : v13 >> 8;
  for (i = 0; ; v14 = ++i + v55)
  {
    v55 = v14 & v12;
    v56 = *(v9 + 16 * v55);
    if (v56 == -1)
    {
      continue;
    }

    if (!v56)
    {
      break;
    }

    if (WTF::equal(v56, *(v10 + 96), a3))
    {
      v57 = v9 + 16 * v55;
      v58 = *(a3 + 8);
      if (v58)
      {
        v59 = *(v58 - 4);
        goto LABEL_111;
      }

      goto LABEL_112;
    }
  }

  v58 = *(a3 + 8);
  if (!v58)
  {
    goto LABEL_119;
  }

  v59 = *(v58 - 4);
  v57 = v58 + 16 * v59;
LABEL_111:
  if (v57 == v58 + 16 * v59)
  {
LABEL_119:
    v128[0] = 0;
    v129 = -1;
    v64 = *(a3 + 48);
    if (v64 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v64, v130, v128, a3);
      v129 = *(a3 + 48);
    }

    v65 = *a2;
    v118 = *(*a2 + 80);
    v117 = off_2838D37C0;
    v66 = *(v65 + 96);
    if (v66)
    {
      atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
    }

    v119 = v66;
    WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(v130, v128, &v117);
    v68 = *a2;
    *a1 = v130[0];
    *(a1 + 8) = *(v68 + 8);
    *(a1 + 24) = 1;
    v69 = v119;
    v117 = off_2838D37C0;
    v119 = 0;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v67);
    }

    if (v129 == 255)
    {
      return;
    }

    v70 = v122;
    v71 = v128;
    goto LABEL_155;
  }

LABEL_112:
  v60 = *(*a2 + 64);
  LOBYTE(v130[0]) = 0;
  v132 = 0;
  if (*(v60 + 56) != 1)
  {
    goto LABEL_172;
  }

  v131 = -1;
  v8 = *(v60 + 48);
  if (v8 == 255)
  {
    goto LABEL_233;
  }

  v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, v122, v130, (v60 + 32));
  v131 = *(v60 + 48);
  v132 = 1;
  if (v131 != 10)
  {
    goto LABEL_234;
  }

  v62 = *a2;
  WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(v130, (*a2 + 96), v61, v115);
  v63 = (v62 + 32);
  if (v62[56] == 1)
  {
    if (v62[48] != 255)
    {
      if (v116 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v62 + 32);
        v62[48] = -1;
        goto LABEL_167;
      }

LABEL_166:
      v122[0] = (v62 + 32);
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v116, v122, v63, v115);
      goto LABEL_167;
    }

    if (v116 != 255)
    {
      goto LABEL_166;
    }
  }

  else
  {
    v62[32] = 0;
    v62[48] = -1;
    if (v116 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v116, v122, v63, v115);
      v62[48] = v116;
    }

    v62[56] = 1;
LABEL_167:
    if (v116 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v115);
    }
  }

  LOBYTE(v116) = -1;
  if ((v132 & 1) != 0 && v131 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v122, v130);
  }

LABEL_172:
  v85 = *(v57 + 8);
LABEL_173:
  *a1 = v85;
LABEL_174:
  *(a1 + 24) = 0;
}