void _gatherGenericParameters(_DWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v108[8] = *MEMORY[0x1E69E9840];
  swift::_gatherGenericParameterCounts(a1, a5, a7);
  v16 = *(a5 + 8);
  if (v16)
  {
    v17 = *(*a5 + 4 * v16 - 4);
  }

  else
  {
    GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(a1);
    if (GenericContext)
    {
      v17 = *(GenericContext + 2);
    }

    else
    {
      v17 = 0;
    }
  }

  if ((*a1 & 0x80) == 0)
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v20 = a1 + 1;
  v19 = a1[1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v21 = (v20 + (v19 & 0xFFFFFFFFFFFFFFFELL));
  if (v19)
  {
    if (!*v21)
    {
      goto LABEL_17;
    }

    v22 = *v21;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = (v20 + (v19 & 0xFFFFFFFFFFFFFFFELL));
  }

  v23 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v22);
  if (v23)
  {
    v24 = *(v23 + 2);
    goto LABEL_18;
  }

LABEL_17:
  v24 = 0;
LABEL_18:
  if (a3 == *(swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(a1) + 2) - v24)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (a4 || a3 != v17)
  {
    if (!a3)
    {
      operator new();
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_147;
  }

LABEL_21:
  if (!*(a5 + 8))
  {
LABEL_127:
    *a8 = 0;
    *(a8 + 16) = 0;
    return;
  }

  __src = a2;
  v106 = v108;
  v107 = 0x800000000;
  v25 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(a1);
  if (a4)
  {
    if (swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4))
    {
      TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4);
      if (swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor))
      {
        v92 = a8;
        v94 = a4;
        v91 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4);
        v27 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v91);
        v28 = v27;
        if (v27[5])
        {
          v29 = *(((v27 + v27[2] + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v27[3] + 2);
        }

        else
        {
          v29 = 0;
        }

        v30 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v94);
        if (!v30 || (v32 = v30, !swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v30)))
        {
          v37 = 0;
          v36 = v91;
LABEL_39:
          v38 = &v37[v29];
          v39 = v28[2];
          if (!v28[2])
          {
            v42 = 0;
            a8 = v92;
LABEL_64:
            if (swift::_gatherWrittenGenericParameters(v36, v38, v42, &v106, a7))
            {
              goto LABEL_65;
            }

            if (!a3)
            {
              operator new();
            }

            if ((a3 & 0x8000000000000000) == 0)
            {
              operator new();
            }

LABEL_147:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v40 = (v28 + 6);
          if (v39 < 4)
          {
            v41 = 0;
            a8 = v92;
            goto LABEL_61;
          }

          if (v39 >= 0x20)
          {
            v44 = 0uLL;
            v43 = v39 & 0xFFE0;
            v45 = 0uLL;
            v46 = (v28 + 14);
            v47 = v43;
            v48 = 0uLL;
            v49 = 0uLL;
            v50 = 0uLL;
            v51 = 0uLL;
            v52 = 0uLL;
            v53 = 0uLL;
            a8 = v92;
            do
            {
              v54 = vshrq_n_u8(v46[-1], 7uLL);
              v55 = vshrq_n_u8(*v46, 7uLL);
              v56 = vmovl_u8(*v54.i8);
              v57 = vmovl_high_u8(v54);
              v58 = vmovl_u8(*v55.i8);
              v59 = vmovl_high_u8(v55);
              v49 = vaddw_high_u16(v49, v57);
              v48 = vaddw_u16(v48, *v57.i8);
              v45 = vaddw_high_u16(v45, v56);
              v44 = vaddw_u16(v44, *v56.i8);
              v53 = vaddw_high_u16(v53, v59);
              v52 = vaddw_u16(v52, *v59.i8);
              v51 = vaddw_high_u16(v51, v58);
              v50 = vaddw_u16(v50, *v58.i8);
              v46 += 2;
              v47 -= 32;
            }

            while (v47);
            v31 = vaddq_s32(vaddq_s32(v51, v45), vaddq_s32(v53, v49));
            v41 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v50, v44), vaddq_s32(v52, v48)), v31));
            if (v43 == v39)
            {
              goto LABEL_63;
            }

            if ((v39 & 0x1C) == 0)
            {
              v40 += v43;
LABEL_61:
              v66 = v28 + v39 + 12;
              do
              {
                v67 = *v40++;
                v41 += v67 >> 7;
              }

              while (v40 != v66);
LABEL_63:
              v42 = v41;
              goto LABEL_64;
            }
          }

          else
          {
            v41 = 0;
            v43 = 0;
            a8 = v92;
          }

          v40 += v39 & 0xFFFC;
          v60 = v41;
          v61 = (v28 + v43 + 12);
          v62 = v43 - (v39 & 0xFFFC);
          do
          {
            v63 = *v61++;
            v31.i32[0] = v63;
            *v31.i8 = vshr_n_u16(*&vmovl_u8(*v31.i8), 7uLL);
            v60 = vaddw_u16(v60, *v31.i8);
            v62 += 4;
          }

          while (v62);
          v41 = vaddvq_s32(v60);
          if ((v39 & 0xFFFC) == v39)
          {
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v33 = *v32;
        v34 = *v32 & 0x1F;
        if ((v34 - 17) >= 2)
        {
          if (v34 != 16)
          {
            __break(1u);
            return;
          }

          if ((v33 & 0x20000000) == 0)
          {
            if ((v33 & 0x10000000) != 0)
            {
              v64 = 0;
              v65 = 6;
            }

            else
            {
              v64 = v32[7];
              v65 = 8;
            }

            v36 = v91;
            ResilientImmediateMembersOffset = v64 - v32[v65];
            goto LABEL_37;
          }

          ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v32);
        }

        else
        {
          ResilientImmediateMembersOffset = 2;
        }

        v36 = v91;
LABEL_37:
        v37 = &v94[ResilientImmediateMembersOffset];
        goto LABEL_39;
      }
    }
  }

LABEL_65:
  __swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue>::insert<swift::MetadataPackOrValue const*,void>(&v106, &v106[v107], __src, &__src[8 * a3]);
  if (v25[5])
  {
    v68 = *(((v25 + v25[2] + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v25[3]);
    if (v68 >= 0x10000)
    {
      v69 = v68 >> 16;
      v70 = *(a6 + 8);
      if (v70 > v69)
      {
LABEL_68:
        *(a6 + 8) = v69;
        goto LABEL_78;
      }

      if (v70 < v69)
      {
        if (*(a6 + 12) < v69)
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v69, 8);
          v70 = *(a6 + 8);
        }

        if (v70 != v69)
        {
          bzero((*a6 + 8 * v70), 8 * (v69 - v70));
        }

        goto LABEL_68;
      }
    }
  }

LABEL_78:
  v71 = v25[2];
  if (v107 != v71)
  {
    if (!a3)
    {
      operator new();
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_147;
  }

  v72 = (v25 + 6);
  if ((v25[5] & 1) != 0 && (v73 = (((v72 + v71 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v25[3]), *v73))
  {
    v74 = &v73[2 * (v25[5] & 1)];
    if (!v25[2])
    {
LABEL_82:
      v75 = 0;
      goto LABEL_110;
    }
  }

  else
  {
    v74 = 0;
    if (!v25[2])
    {
      goto LABEL_82;
    }
  }

  v93 = a8;
  v76 = 0;
  v77 = 0;
  do
  {
    v78 = v106[v76];
    v79 = *(v72 + v76);
    v80 = *(v72 + v76) & 0x3F;
    if (v80 == 2)
    {
      goto LABEL_91;
    }

    if (v80 != 1)
    {
      if ((*(v72 + v76) & 0x3F) != 0)
      {
        if (!a3)
        {
          operator new();
        }

        if ((a3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_147;
      }

      if (v78)
      {
        v81 = (v106[v76] & 1) == 0;
      }

      else
      {
        v81 = 0;
      }

      if (!v81)
      {
        if (!a3)
        {
          operator new();
        }

        if ((a3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_147;
      }

LABEL_91:
      if (v79 < 0)
      {
        v83 = *(a6 + 8);
        if (v83 >= *(a6 + 12))
        {
          v89 = v72;
          v84 = v74;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v83 + 1, 8);
          v74 = v84;
          v72 = v89;
          v83 = *(a6 + 8);
        }

        *(*a6 + 8 * v83) = v78;
        ++*(a6 + 8);
      }

      goto LABEL_92;
    }

    if ((v78 & 1) == 0)
    {
      if (!a3)
      {
        operator new();
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_147;
    }

    if (v79 < 0)
    {
      *(*a6 + 8 * v74[4 * v77 + 2]) = *((v78 & 0xFFFFFFFFFFFFFFFELL) - 8);
      v82 = *(a6 + 8);
      if (v82 >= *(a6 + 12))
      {
        v90 = v72;
        v85 = v74;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v82 + 1, 8);
        v74 = v85;
        v72 = v90;
        v82 = *(a6 + 8);
      }

      *(*a6 + 8 * v82) = v78;
      ++*(a6 + 8);
      ++v77;
    }

LABEL_92:
    ++v76;
  }

  while (v71 != v76);
  v75 = v25[2];
  a8 = v93;
LABEL_110:
  v99[0] = &v106;
  v99[1] = a5;
  v86 = v25[3];
  v104[0] = &unk_1EEEACF18;
  v104[1] = v99;
  v105 = v104;
  v102[0] = &unk_1EEEACF60;
  v102[1] = v99;
  v103 = v102;
  v100[0] = &unk_1EEEACFA8;
  v100[1] = v99;
  v101 = v100;
  swift::_checkGenericRequirements(v72, v75, &v75[v72 + 3] & 0xFFFFFFFFFFFFFFFCLL, v86, a6, v104, v102, v100, &v96, 0);
  if (v101 == v100)
  {
    (*(*v101 + 32))(v101);
  }

  else if (v101)
  {
    (*(*v101 + 40))();
  }

  if (v103 == v102)
  {
    (*(*v103 + 32))(v103);
  }

  else if (v103)
  {
    (*(*v103 + 40))();
  }

  if (v105 == v104)
  {
    (*(*v105 + 32))(v105);
  }

  else if (v105)
  {
    (*(*v105 + 40))();
  }

  if (v98 != 1)
  {
    if (*(a6 + 8) != v25[4])
    {
      if (!a3)
      {
        operator new();
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_147;
    }

    if (v106 != v108)
    {
      free(v106);
    }

    goto LABEL_127;
  }

  v87 = v96;
  v88 = v97;
  *(a8 + 8) = v97;
  *a8 = v88(v87, 2, 0);
  *(a8 + 16) = 1;
  if (v98 == 1)
  {
    v97(v96, 3, 0);
  }

  if (v106 != v108)
  {
    free(v106);
  }
}

uint64_t getObjCClassByMangledName(char *__s, objc_class **a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 < 3 || (*__s == 21599 ? (v5 = __s[2] == 116) : (v5 = 0), !v5))
    {
      v6 = strlen(__s);
      goto LABEL_9;
    }

    v26[1] = 0;
    v26[2] = 0;
    v27 = 0;
    v28 = 2400;
    v29 = 0;
    v30 = 0;
    v65 = 0;
    v26[0] = &unk_1EEEADB90;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v63 = 0;
    v11 = strlen(__s);
    v25 = 0;
    v12 = swift::Demangle::__runtime::Demangler::demangleSymbol(v26, __s, v11, v24);
    if (v25 == v24)
    {
      (*(*v25 + 32))(v25);
      if (v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 40))();
      }

      if (v12)
      {
LABEL_23:
        v13 = *(v12 + 18);
        switch(v13)
        {
          case 1:
            v15 = 0;
            break;
          case 2:
            v15 = 1;
            break;
          case 5:
            v14 = *(v12 + 8);
            if (!v14)
            {
              goto LABEL_35;
            }

            v15 = v14 - 1;
            v16 = *v12;
LABEL_33:
            if (*(*(v16 + 8 * v15) + 16) == 232)
            {
              v17 = 0;
              v12 = 0;
              goto LABEL_48;
            }

LABEL_35:
            v20[0] = &unk_1EEEACFF0;
            v21 = v20;
            v18[0] = &unk_1EEEAD038;
            v19 = v18;
            swift_getTypeByMangledNode(0, v26, v12, 0, v20, v18, v22);
            if (v23 == 1)
            {
              (v22[1])(v22[0], 3, 0);
              v12 = 0;
            }

            else
            {
              v12 = 0;
              if (!v23)
              {
                v12 = v22[0];
              }
            }

            if (v19 == v18)
            {
              (*(*v19 + 32))(v19);
            }

            else if (v19)
            {
              (*(*v19 + 40))();
            }

            if (v21 == v20)
            {
              (*(*v21 + 32))(v21);
            }

            else if (v21)
            {
              (*(*v21 + 40))();
            }

            v17 = 1;
LABEL_48:
            v26[0] = &unk_1EEEADB90;
            if (v65 == &v64)
            {
              (*(*v65 + 32))(v65);
            }

            else if (v65)
            {
              (*(*v65 + 40))();
            }

            v26[0] = &unk_1EEEADB68;
            swift::Demangle::__runtime::NodeFactory::freeSlabs(v27);
            if (v29)
            {
              *(v29 + 48) = 0;
            }

            TypeByMangledNameUntrusted = v12;
            if ((v17 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_14;
          default:
            goto LABEL_35;
        }

        v16 = v12;
        goto LABEL_33;
      }
    }

    v17 = 0;
    goto LABEL_48;
  }

  v4 = 0;
  v6 = 0;
LABEL_9:
  if (swift::Demangle::__runtime::getManglingPrefixLength(__s, v6) || (v7 = *__s, (v7 & 0x8000000000000000) == 0) && (*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x400) != 0 || strchr(__s, 46))
  {
    TypeByMangledNameUntrusted = swift_stdlib_getTypeByMangledNameUntrusted(__s, v4);
LABEL_14:
    if (TypeByMangledNameUntrusted)
    {
      ObjCClassFromMetadataConditional = swift::swift_getObjCClassFromMetadataConditional(TypeByMangledNameUntrusted);
      if (ObjCClassFromMetadataConditional)
      {
        *a2 = ObjCClassFromMetadataConditional;
        return 1;
      }
    }
  }

  return OldGetClassHook(__s, a2);
}

uint64_t swift::SubstGenericParametersFromMetadata::buildDescriptorPath(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2;
  v104 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return v3;
  }

  v66 = xmmword_1806726B0;
  v68 = 0;
  v103 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v72 = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v101 = 0;
  v64 = &unk_1EEEACCD0;
  *(a3 + 48) = 1;
  v67 = a3;
  v65 = *(a3 + 8);
  ExtendedTypeContextDescriptor = _findExtendedTypeContextDescriptor(a2, &v64, 0);
  if (ExtendedTypeContextDescriptor)
  {
    v6 = ExtendedTypeContextDescriptor;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6[1];
  if (v7)
  {
    v8 = (v6 + (v7 & 0xFFFFFFFFFFFFFFFELL) + 4);
    if (v7)
    {
      if (*v8)
      {
        v9 = *v8;
        goto LABEL_12;
      }
    }

    else if (v8)
    {
      v9 = (v6 + (v7 & 0xFFFFFFFFFFFFFFFELL) + 4);
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  v3 = swift::SubstGenericParametersFromMetadata::buildDescriptorPath(a1, v9, &v64);
  if ((*v6 & 0x80) != 0)
  {
    GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(*(a1 + 8));
    v11 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v9);
    if (v11)
    {
      v12 = *(v11 + 2);
    }

    else
    {
      v12 = 0;
    }

    v13 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v6);
    if (v13)
    {
      v15 = *(v13 + 2);
    }

    else
    {
      v15 = 0;
    }

    v16 = &GenericContext[v12 + 12];
    v17 = v15 - v12;
    if (v15 == v12)
    {
      v18 = 0;
      LOBYTE(v19) = 0;
LABEL_35:
      if (v15 > v12)
      {
        v59[0] = &GenericContext[v12 + 12];
        v59[1] = v15 - v12;
        v50 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v6);
        if (v50)
        {
          v51 = *(v50 + 2);
        }

        else
        {
          v51 = 0;
        }

        v60 = v51;
        v61 = v3;
        v62 = v18;
        v63 = v19 & 1;
        v52 = *(a1 + 32);
        v53 = *(a1 + 24);
        v54 = v59;
        if (v52 >= *(a1 + 36))
        {
          if (v53 <= v59 && v53 + 32 * v52 > v59)
          {
            v58 = v59 - v53;
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v52 + 1, 32);
            v53 = *(a1 + 24);
            v54 = &v58[v53];
          }

          else
          {
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v52 + 1, 32);
            v53 = *(a1 + 24);
            v54 = v59;
          }
        }

        v55 = (v53 + 32 * *(a1 + 32));
        v56 = *(v54 + 1);
        *v55 = *v54;
        v55[1] = v56;
        ++*(a1 + 32);
      }

      v3 = v18 + v3;
      goto LABEL_42;
    }

    if (v17 < 4)
    {
      LOBYTE(v19) = 0;
      v18 = 0;
      v20 = &GenericContext[v12 + 12];
      goto LABEL_34;
    }

    if (v17 >= 0x20)
    {
      v22 = 0uLL;
      v21 = v17 & 0xFFFFFFE0;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = &GenericContext[v12 + 28];
      v26 = 0uLL;
      v27 = v21;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      do
      {
        v34 = v25[-1];
        v35 = vcgezq_s8(v34);
        v36 = vshrq_n_u8(v34, 7uLL);
        v37 = vshrq_n_u8(*v25, 7uLL);
        v38 = vmovl_u8(*v36.i8);
        v39 = vmovl_high_u8(v36);
        v40 = vmovl_u8(*v37.i8);
        v41 = vmovl_high_u8(v37);
        v29 = vaddw_high_u16(v29, v39);
        v28 = vaddw_u16(v28, *v39.i8);
        v26 = vaddw_high_u16(v26, v38);
        v24 = vaddw_u16(v24, *v38.i8);
        v33 = vaddw_high_u16(v33, v41);
        v32 = vaddw_u16(v32, *v41.i8);
        v31 = vaddw_high_u16(v31, v40);
        v30 = vaddw_u16(v30, *v40.i8);
        v22 = vorrq_s8(v22, v35);
        v23 = vorrq_s8(v23, vcgezq_s8(*v25));
        v25 += 2;
        v27 -= 32;
      }

      while (v27);
      v19 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v23, v22), 7uLL))) & 1;
      v14 = vaddq_s32(v32, v28);
      v18 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v30, v24), v14), vaddq_s32(vaddq_s32(v31, v26), vaddq_s32(v33, v29))));
      if (v21 == v17)
      {
        goto LABEL_35;
      }

      if (((v15 - v12) & 0x1C) == 0)
      {
        v20 = (v16 + v21);
        do
        {
LABEL_34:
          v49 = *v20++;
          v18 += (v49 & 0x80) >> 7;
          LOBYTE(v19) = (v49 >= 0) | v19;
        }

        while (v20 != (v16 + v17));
        goto LABEL_35;
      }
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v21 = 0;
    }

    v20 = (v16 + (v17 & 0xFFFFFFFC));
    v42 = vdup_n_s16(v19);
    v43 = v18;
    v44 = &GenericContext[v21 + 12 + v12];
    v45 = v21 - (v17 & 0xFFFFFFFC);
    do
    {
      v46 = *v44++;
      v14.i32[0] = v46;
      v47 = vmovl_u8(*v14.i8).u64[0];
      v48 = vshl_n_s16(v47, 8uLL);
      *v14.i8 = vshr_n_u16((*&v47 & 0xFF00FF00FF00FFLL), 7uLL);
      v43 = vaddw_u16(v43, *v14.i8);
      v42 = vorr_s8(v42, vcgez_s16(vshr_n_s16(v48, 8uLL)));
      v45 += 4;
    }

    while (v45);
    LOWORD(v19) = vmaxv_u16(vcltz_s16(vshl_n_s16(v42, 0xFuLL))) & 1;
    v18 = vaddvq_s32(v43);
    if ((v17 & 0xFFFFFFFC) == v17)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_42:
  v64 = &unk_1EEEADB90;
  if (v103 == &v102)
  {
    (*(*v103 + 32))(v103);
  }

  else if (v103)
  {
    (*(*v103 + 40))();
  }

  v64 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v66);
  if (v67)
  {
    *(v67 + 48) = 0;
  }

  return v3;
}

uint64_t swift::SubstGenericParametersFromMetadata::buildEnvironmentPath(uint64_t a1, _DWORD *a2, double a3, double a4, int32x4_t a5)
{
  v6 = *a2;
  v5 = (a2 + 1);
  v7 = v6 & 0xFFF;
  if ((v6 & 0xFFF) != 0)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = &v5[v7];
    v11 = v10;
    while (1)
    {
      v12 = v8;
      v8 = *v5;
      v13 = (v8 - v12);
      v14 = &v11->i8[v13];
      if (v13)
      {
        break;
      }

      v15 = 0;
      LOBYTE(v16) = 0;
LABEL_19:
      v58[0] = v11;
      v58[1] = v13;
      v59 = v8;
      v60 = v9;
      v61 = v15;
      v62 = v16 & 1;
      v47 = *(a1 + 32);
      v48 = *(a1 + 24);
      if (v47 >= *(a1 + 36))
      {
        v52 = v9;
        v53 = v5;
        if (v48 <= v58 && v48 + 32 * v47 > v58)
        {
          v55 = v58 - v48;
          v56 = a1;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v47 + 1, 32);
          a1 = v56;
          v48 = *(v56 + 24);
          v49 = &v55[v48];
        }

        else
        {
          v54 = a1;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v47 + 1, 32);
          a1 = v54;
          v48 = *(v54 + 24);
          v49 = v58;
        }

        v5 = v53;
        LODWORD(v9) = v52;
      }

      else
      {
        v49 = v58;
      }

      v9 = v15 + v9;
      v50 = (v48 + 32 * *(a1 + 32));
      v51 = *(v49 + 1);
      *v50 = *v49;
      v50[1] = v51;
      ++*(a1 + 32);
      ++v5;
      v11 = v14;
      if (v5 == v10)
      {
        return v9;
      }
    }

    if (v13 < 4)
    {
      LOBYTE(v16) = 0;
      v15 = 0;
      v17 = v11;
      goto LABEL_18;
    }

    if (v13 >= 0x20)
    {
      v19 = 0uLL;
      v18 = v13 & 0xFFFFFFE0;
      v20 = 0uLL;
      v21 = v11 + 1;
      v22 = 0uLL;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = v21[-1];
        v32 = vcgezq_s8(v31);
        v33 = vshrq_n_u8(v31, 7uLL);
        v34 = vshrq_n_u8(*v21, 7uLL);
        v35 = vmovl_u8(*v33.i8);
        v36 = vmovl_high_u8(v33);
        v37 = vmovl_u8(*v34.i8);
        v38 = vmovl_high_u8(v34);
        v26 = vaddw_high_u16(v26, v36);
        v25 = vaddw_u16(v25, *v36.i8);
        v24 = vaddw_high_u16(v24, v35);
        v22 = vaddw_u16(v22, *v35.i8);
        v30 = vaddw_high_u16(v30, v38);
        v29 = vaddw_u16(v29, *v38.i8);
        v28 = vaddw_high_u16(v28, v37);
        v27 = vaddw_u16(v27, *v37.i8);
        v19 = vorrq_s8(v19, v32);
        v20 = vorrq_s8(v20, vcgezq_s8(*v21));
        v21 += 2;
        v23 -= 32;
      }

      while (v23);
      v16 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v20, v19), 7uLL))) & 1;
      a5 = vaddq_s32(v29, v25);
      v15 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v27, v22), a5), vaddq_s32(vaddq_s32(v28, v24), vaddq_s32(v30, v26))));
      if (v18 == v13)
      {
        goto LABEL_19;
      }

      if ((v13 & 0x1C) == 0)
      {
        v17 = &v11->i8[v18];
        do
        {
LABEL_18:
          v46 = *v17++;
          v15 += (v46 & 0x80) >> 7;
          LOBYTE(v16) = (v46 >= 0) | v16;
        }

        while (v17 != v14);
        goto LABEL_19;
      }
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v18 = 0;
    }

    v39 = vdup_n_s16(v16);
    v17 = &v11->i8[v13 & 0xFFFFFFFC];
    v40 = v15;
    v41 = (v11->u32 + v18);
    v42 = v18 - (v13 & 0xFFFFFFFC);
    do
    {
      v43 = *v41++;
      a5.i32[0] = v43;
      v44 = vmovl_u8(*a5.i8).u64[0];
      v45 = vshl_n_s16(v44, 8uLL);
      *a5.i8 = vshr_n_u16((*&v44 & 0xFF00FF00FF00FFLL), 7uLL);
      v40 = vaddw_u16(v40, *a5.i8);
      v39 = vorr_s8(v39, vcgez_s16(vshr_n_s16(v45, 8uLL)));
      v42 += 4;
    }

    while (v42);
    LOBYTE(v16) = vmaxv_u16(vcltz_s16(vshl_n_s16(v39, 0xFuLL))) & 1;
    v15 = vaddvq_s32(v40);
    if ((v13 & 0xFFFFFFFC) == v13)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t swift::SubstGenericParametersFromMetadata::buildShapePath(uint64_t a1, unsigned int *a2)
{
  swift::TargetExtendedExistentialTypeShape<swift::InProcess>::getGeneralizationSignature(a2, &v33);
  v4 = v33;
  if (v33)
  {
    v5 = a1 + 24;
    v6 = *(a1 + 24);
    v27 = v34;
    v28 = v33;
    v29 = v33;
    v30 = 0;
    v31 = v33;
    v32 = 0;
    v7 = *(a1 + 32);
    v8 = &v27;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v27 && v6 + 32 * v7 > &v27)
      {
        v26 = &v27 - v6;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 40, v7 + 1, 32);
        v6 = *(a1 + 24);
        v8 = &v26[v6];
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 40, v7 + 1, 32);
        v6 = *(a1 + 24);
        v8 = &v27;
      }
    }

    v9 = (v6 + 32 * *(a1 + 32));
    v10 = *(v8 + 1);
    *v9 = *v8;
    v9[1] = v10;
    ++*(a1 + 32);
    v11 = v33;
  }

  else
  {
    v11 = 0;
  }

  v12 = *a2;
  if ((v12 & 0x800) != 0)
  {
    v13 = &swift::ImplicitGenericParamDescriptors;
  }

  else
  {
    v13 = (((&a2[2 * ((v12 >> 8) & 1) + 4] + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v12 >> 9) & 1) + 4 * ((v12 >> 10) & 1));
  }

  v14 = *(a2 + 4) - v11;
  v15 = &v13[v11];
  v16 = (v14 + v4);
  v17 = a1 + 24;
  v18 = *(a1 + 24);
  v27 = v15;
  v28 = v14;
  v29 = v14 + v4;
  v30 = v11;
  v31 = v14;
  v32 = 0;
  v19 = *(a1 + 32);
  v20 = &v27;
  if (v19 >= *(a1 + 36))
  {
    v24 = v16;
    if (v18 <= &v27 && v18 + 32 * v19 > &v27)
    {
      v25 = &v27 - v18;
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v17, a1 + 40, v19 + 1, 32);
      v18 = *(a1 + 24);
      v20 = &v25[v18];
    }

    else
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v17, a1 + 40, v19 + 1, 32);
      v18 = *(a1 + 24);
      v20 = &v27;
    }

    v16 = v24;
  }

  v21 = (v18 + 32 * *(a1 + 32));
  v22 = *(v20 + 1);
  *v21 = *v20;
  v21[1] = v22;
  ++*(a1 + 32);
  return v16;
}

unsigned int **swift::SubstGenericParametersFromMetadata::setup(unsigned int **this, double a2, double a3, int32x4_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(this + 8))
  {
    return this;
  }

  v4 = *this;
  if (*this == 2)
  {
    v8 = this;
    this = swift::SubstGenericParametersFromMetadata::buildShapePath(this, this[1]);
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v8 = this;
    this = swift::SubstGenericParametersFromMetadata::buildEnvironmentPath(this, this[1], a2, a3, a4);
LABEL_10:
    *(v8 + 296) = this;
    return this;
  }

  if (!v4)
  {
    v10 = xmmword_1806726B0;
    v11 = 0;
    v12 = 0;
    v47 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v45 = 0;
    v9[1] = &v48;
    v9[2] = &v49;
    v9[0] = &unk_1EEEACE60;
    v5 = this;
    *(this + 74) = swift::SubstGenericParametersFromMetadata::buildDescriptorPath(this, this[1], v9);
    GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(*(v5 + 8));
    if (GenericContext)
    {
      if (GenericContext[5])
      {
        v7 = *(((GenericContext + GenericContext[2] + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * GenericContext[3] + 2);
      }

      else
      {
        v7 = 0;
      }

      *(v5 + 300) = v7;
    }

    v9[0] = &unk_1EEEADB90;
    if (v47 == &v46)
    {
      (*(*v47 + 32))(v47);
    }

    else if (v47)
    {
      (*(*v47 + 40))();
    }

    v9[0] = &unk_1EEEADB68;
    this = swift::Demangle::__runtime::NodeFactory::freeSlabs(v10);
    if (v11)
    {
      *(v11 + 48) = 0;
    }
  }

  return this;
}

uint64_t swift::SubstGenericParametersFromMetadata::getMetadata(swift::SubstGenericParametersFromMetadata *this, unsigned int a2, unsigned int a3, double a4, double a5, int32x4_t a6)
{
  if (!*(this + 2))
  {
    return 0;
  }

  swift::SubstGenericParametersFromMetadata::setup(this, a4, a5, a6);
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  v10 = *(this + 3) + 32 * a2;
  if (*(v10 + 16) <= a3)
  {
    return 0;
  }

  v11 = *(this + 75) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + a3);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (!a3)
    {
      return *(*(this + 2) + 8 * v11);
    }

    if (a3 < 4)
    {
      v15 = v12;
      goto LABEL_24;
    }

    if (a3 >= 0x20)
    {
      v16 = a3 & 0xFFFFFFE0;
      v17 = 0uLL;
      v18 = v11;
      v19 = v12 + 1;
      v20 = v16;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = vshrq_n_u8(v19[-1], 7uLL);
        v28 = vshrq_n_u8(*v19, 7uLL);
        v29 = vmovl_u8(*v27.i8);
        v30 = vmovl_high_u8(v27);
        v31 = vmovl_u8(*v28.i8);
        v32 = vmovl_high_u8(v28);
        v22 = vaddw_high_u16(v22, v30);
        v21 = vaddw_u16(v21, *v30.i8);
        v17 = vaddw_high_u16(v17, v29);
        v18 = vaddw_u16(v18, *v29.i8);
        v26 = vaddw_high_u16(v26, v32);
        v25 = vaddw_u16(v25, *v32.i8);
        v24 = vaddw_high_u16(v24, v31);
        v23 = vaddw_u16(v23, *v31.i8);
        v19 += 2;
        v20 -= 32;
      }

      while (v20);
      v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
      v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
      if (v16 == a3)
      {
        return *(*(this + 2) + 8 * v11);
      }

      if ((a3 & 0x1C) == 0)
      {
        v15 = (v12 + v16);
        do
        {
LABEL_24:
          v37 = v15->u8[0];
          v15 = (v15 + 1);
          v11 += v37 >> 7;
        }

        while (v15 != v13);
        return *(*(this + 2) + 8 * v11);
      }
    }

    else
    {
      v16 = 0;
    }

    v15 = (v12 + (a3 & 0xFFFFFFFC));
    v33 = v11;
    v34 = (v12->i32 + v16);
    v35 = v16 - (a3 & 0xFFFFFFFC);
    do
    {
      v36 = *v34++;
      v9.i32[0] = v36;
      *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
      v33 = vaddw_u16(v33, *v9.i8);
      v35 += 4;
    }

    while (v35);
    v11 = vaddvq_s32(v33);
    if ((a3 & 0xFFFFFFFC) == a3)
    {
      return *(*(this + 2) + 8 * v11);
    }

    goto LABEL_24;
  }

  v11 += a3;
  return *(*(this + 2) + 8 * v11);
}

uint64_t swift::SubstGenericParametersFromMetadata::getMetadataKeyArgOrdinal(swift::SubstGenericParametersFromMetadata *this, int a2, double a3, double a4, int32x4_t a5)
{
  if (!*(this + 2))
  {
    return 0;
  }

  swift::SubstGenericParametersFromMetadata::setup(this, a3, a4, a5);
  return *(*(this + 2) + 8 * (*(this + 75) + a2));
}

uint64_t swift::SubstGenericParametersFromMetadata::getWitnessTable(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int a6)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  swift::SubstGenericParametersFromMetadata::setup(a1, a2, a3, a4);
  return *(*(a1 + 16) + 8 * (*(a1 + 296) + a6 + *(a1 + 300)));
}

uint64_t demangleToGenericParamRef(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v12 = xmmword_1806726B0;
  v13 = 0;
  v14 = 0;
  v49 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v47 = 0;
  v11[0] = &unk_1EEEAA6E0;
  v11[1] = &v50;
  v11[2] = &v51;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_12:
    v4 = 0;
    v5 = 0;
    goto LABEL_23;
  }

  if (v10)
  {
    (*(*v10 + 40))();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (*(v2 + 8) != 243)
  {
    goto LABEL_14;
  }

  v3 = *(v2 + 18);
  if ((v3 - 1) < 2)
  {
    goto LABEL_10;
  }

  if (v3 == 5 && *(v2 + 2))
  {
    v2 = *v2;
LABEL_10:
    v2 = *v2;
    goto LABEL_14;
  }

  v2 = 0;
LABEL_14:
  if (*(v2 + 8) == 39)
  {
    v6 = *(v2 + 18);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 5)
      {
        v7 = *v2;
      }

      else
      {
        v7 = v2;
      }

      v2 = *v2;
    }

    else
    {
      v7 = v2;
    }

    v5 = **v2 & 0xFFFFFF00 | (*v7[1] << 32);
    v4 = **v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

LABEL_23:
  v11[0] = &unk_1EEEADB90;
  if (v49 == &v48)
  {
    (*(*v49 + 32))(v49);
  }

  else if (v49)
  {
    (*(*v49 + 40))();
  }

  v11[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v12);
  if (v13)
  {
    *(v13 + 48) = 0;
  }

  return v5 | v4;
}

int *swift::DynamicReplacementDescriptor::enableReplacement(int *this)
{
  v1 = *this;
  v2 = (this + (v1 & 0xFFFFFFFFFFFFFFFELL));
  if (v1)
  {
    v3 = *v2;
    if (!*v2)
    {
      return this;
    }
  }

  else
  {
    v3 = (this + (v1 & 0xFFFFFFFFFFFFFFFELL));
    if (!v2)
    {
      return this;
    }
  }

  v4 = (v3 + *v3);
  if ((this[3] & 1) == 0)
  {
    v5 = v4[1];
    if (v5)
    {
      v4[1] = v5[1];
      *v4 = *v5;
    }
  }

  v6 = (this + this[2] + 8);
  *v6 = *v4;
  v6[1] = v4[1];
  v4[1] = v6;
  v7 = this[1];
  *v4 = ++this + v7;
  return this;
}

swift *swift::DynamicReplacementDescriptor::disableReplacement(swift::DynamicReplacementDescriptor *this, uint64_t a2, const char *a3, char *a4)
{
  v4 = *this;
  v5 = (this + (v4 & 0xFFFFFFFFFFFFFFFELL));
  if (v4)
  {
    v5 = *(this + (v4 & 0xFFFFFFFFFFFFFFFELL));
  }

  v6 = (v5 + *v5);
  v8 = *(this + 2);
  result = (this + 8);
  v9 = (result + v8);
  do
  {
    if (!v6)
    {
      swift::swift_abortDynamicReplacementDisabling(result, a2, a3, a4);
    }

    v10 = v6;
    v6 = v6[1];
  }

  while (v6 != v9);
  v10[1] = v9[1];
  *v10 = *v9;
  return result;
}

void swift::addImageDynamicReplacementBlockCallback(swift *this, unsigned int *a2, uint64_t a3, unint64_t a4, char *a5)
{
  v6 = a4;
  v8 = a2;
  if (a5)
  {
    v9 = 8 * *(a4 + 4) + 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a2[1];
  if (qword_1ED4262E0 != -1)
  {
    swift::addImageDynamicReplacementBlockCallback(this);
  }

  os_unfair_lock_lock(&DynamicReplacementLock);
  if (a3 >= 1)
  {
    v12 = (v8 + a3);
    v13 = v8[1];
    if (v8[1])
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 += 2 * v10 + 2;
      if (v8 >= v12)
      {
        break;
      }

      v10 = v8[1];
      v13 = v10;
      if (v8[1])
      {
LABEL_10:
        v14 = &v8[2 * v13];
        v15 = v8;
        do
        {
          v16 = v15[2];
          v15 += 2;
          v17 = v15 + v16;
          v18 = *(v15 + v16 + 4);
          if (v18)
          {
            v19 = 16 * v18;
            v20 = (v17 + 8);
            do
            {
              v11 = swift::DynamicReplacementDescriptor::enableReplacement(v20);
              v20 += 4;
              v19 -= 16;
            }

            while (v19);
          }
        }

        while (v15 != v14);
      }
    }
  }

  if (a5 > 0)
  {
    v21 = &a5[v6];
    v22 = *(v6 + 4);
    if (!*(v6 + 4))
    {
LABEL_34:
      do
      {
        v6 += v9;
        if (v6 >= v21)
        {
          goto LABEL_35;
        }

        v22 = *(v6 + 4);
        v9 = 8 * v22 + 8;
      }

      while (!*(v6 + 4));
    }

    v23 = 0;
    v24 = 8 * v22;
    v25 = v6 + 8;
    while (1)
    {
      if (qword_1ED426320 != -1)
      {
        swift::addImageDynamicReplacementBlockCallback(v11);
      }

      v27 = *(v25 + v23);
      v28 = v6 + v23 + (v27 & 0xFFFFFFFFFFFFFFFELL);
      v29 = (v28 + 8);
      if (v27)
      {
        if (!*v29)
        {
LABEL_31:
          v30 = 0;
          goto LABEL_32;
        }

        v30 = *v29;
      }

      else
      {
        if (v28 == -8)
        {
          goto LABEL_31;
        }

        v30 = v28 + 8;
      }

LABEL_32:
      v31 = v6 + v23 + *(v25 + v23 + 4);
      if (v31 == -12)
      {
        v26 = 0;
      }

      else
      {
        v26 = v31 + 12;
      }

      v32 = v30;
      v11 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::DenseMapInfo<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*>>::FindAndConstruct(&opaqueTypeMappings, &v32);
      v11[1] = v26;
      v23 += 8;
      if (v24 == v23)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  os_unfair_lock_unlock(&DynamicReplacementLock);
}

void swift_enableDynamicReplacementScope(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED4262E0 != -1)
  {
    swift::addImageDynamicReplacementBlockCallback(a1);
  }

  os_unfair_lock_lock(&DynamicReplacementLock);
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = (v1 + 8);
    do
    {
      swift::DynamicReplacementDescriptor::enableReplacement(v4);
      v4 += 4;
      v3 -= 16;
    }

    while (v3);
  }

  os_unfair_lock_unlock(&DynamicReplacementLock);
}

void swift_disableDynamicReplacementScope(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED4262E0 != -1)
  {
    swift::addImageDynamicReplacementBlockCallback(a1);
  }

  os_unfair_lock_lock(&DynamicReplacementLock);
  v6 = *(v1 + 4);
  if (v6)
  {
    v7 = v1 + 16 * v6 + 8;
    v8 = (v1 + 8);
    do
    {
      v9 = *v8;
      v10 = (v8 + (v9 & 0xFFFFFFFFFFFFFFFELL));
      if (v9)
      {
        v10 = *(v8 + (v9 & 0xFFFFFFFFFFFFFFFELL));
      }

      v11 = (v10 + *v10);
      v12 = (v8 + v8[2] + 8);
      do
      {
        if (!v11)
        {
          swift::swift_abortDynamicReplacementDisabling(v2, v3, v4, v5);
        }

        v13 = v11;
        v11 = v11[1];
      }

      while (v11 != v12);
      v13[1] = v12[1];
      *v13 = *v12;
      v8 += 4;
    }

    while (v8 != v7);
  }

  os_unfair_lock_unlock(&DynamicReplacementLock);
}

uint64_t swift_getTypeByMangledNodeImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16) == 313)
  {
    result = (*a3)(a4);
    *(a7 + 24) = 0;
    *a7 = result;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    if (!result)
    {
      *a7 = "unknown error";
      *(a7 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(a7 + 24) = 1;
    }

    return result;
  }

  v12 = *(a5 + 24);
  if (v12)
  {
    v13 = a6;
    if (v12 == a5)
    {
      v28 = v27;
      (*(*v12 + 24))(v12, v27);
    }

    else
    {
      v28 = (*(*v12 + 16))(v12);
    }

    a6 = v13;
    v14 = *(v13 + 24);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v28 = 0;
    v14 = *(a6 + 24);
    if (v14)
    {
LABEL_11:
      if (v14 == a6)
      {
        v26 = v25;
        (*(*v14 + 24))(v14, v25);
      }

      else
      {
        v26 = (*(*v14 + 16))(v14);
      }

      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_14:
  v29 = a2;
  if (v28)
  {
    if (v28 == v27)
    {
      v31 = v30;
      (*(*v28 + 24))();
    }

    else
    {
      v31 = (*(*v28 + 16))();
    }
  }

  else
  {
    v31 = 0;
  }

  if (v26)
  {
    if (v26 == v25)
    {
      v33 = v32;
      (*(*v26 + 24))();
    }

    else
    {
      v33 = (*(*v26 + 16))();
    }

    v34 = 0;
    v36 = 0;
    v37 = 0;
    __p = 0;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
    }

    else if (v26)
    {
      (*(*v26 + 40))();
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v36 = 0;
    v37 = 0;
    __p = 0;
  }

  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

  v21 = &v29;
  if (!v24)
  {
    if (v22)
    {
      if ((v22 & 1) == 0)
      {
        v17 = swift_checkMetadataState(a1, v22);
        v18 = v34;
        *(a7 + 24) = 0;
        *a7 = v17;
        *(a7 + 8) = v19;
        *(a7 + 16) = v18;
        if (!v17)
        {
          *a7 = "unknown error";
          *(a7 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          *(a7 + 24) = 1;
        }

        goto LABEL_41;
      }

      *(a7 + 24) = 1;
      v20 = "Cannot demangle a free-standing pack";
      goto LABEL_40;
    }

LABEL_39:
    *(a7 + 24) = 1;
    v20 = "NULL type but no error provided";
LABEL_40:
    *a7 = v20;
    *(a7 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    goto LABEL_41;
  }

  if (v24 != 1)
  {
    goto LABEL_39;
  }

  *(a7 + 24) = 1;
  v15 = v22;
  v16 = v23;
  *(a7 + 8) = v23;
  *a7 = v16(v15, 2, 0);
LABEL_41:
  if (v24 == 1)
  {
    v23(v22, 3, 0);
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
  }

  else if (v33)
  {
    (*(*v33 + 40))();
  }

  result = v31;
  if (v31 == v30)
  {
    return (*(*v31 + 32))(v31);
  }

  if (v31)
  {
    return (*(*v31 + 40))();
  }

  return result;
}

uint64_t swift_getTypeByMangledNodeSlow@<X0>(swift *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  TypeByMangledNode = swift::getOverride_getTypeByMangledNode(a1);
  if (!TypeByMangledNode)
  {
    swift_getTypeByMangledNode::Override = 1;
    v18 = *(a5 + 24);
    if (v18)
    {
      if (v18 != a5)
      {
        v28 = (*(*v18 + 16))(v18);
        v19 = *(a6 + 24);
        if (v19)
        {
          goto LABEL_10;
        }

LABEL_25:
        v26 = 0;
        goto LABEL_29;
      }

      v28 = v27;
      (*(*v18 + 24))(v18, v27);
      v19 = *(a6 + 24);
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v28 = 0;
      v19 = *(a6 + 24);
      if (!v19)
      {
        goto LABEL_25;
      }
    }

LABEL_10:
    if (v19 == a6)
    {
      v26 = v25;
      (*(*v19 + 24))(v19, v25);
    }

    else
    {
      v26 = (*(*v19 + 16))(v19);
    }

LABEL_29:
    swift_getTypeByMangledNodeImpl(a1, a2, a3, a4, v27, v25, a7);
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
    }

    else if (v26)
    {
      (*(*v26 + 40))();
    }

    result = v28;
    if (v28 != v27)
    {
      goto LABEL_22;
    }

    return (*(*result + 32))(result);
  }

  v15 = TypeByMangledNode;
  swift_getTypeByMangledNode::Override = TypeByMangledNode;
  v16 = *(a5 + 24);
  if (v16)
  {
    if (v16 != a5)
    {
      v24 = (*(*v16 + 16))(v16);
      v17 = *(a6 + 24);
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_13:
      v22 = 0;
      goto LABEL_17;
    }

    v24 = v23;
    (*(*v16 + 24))(v16, v23);
    v17 = *(a6 + 24);
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
    v17 = *(a6 + 24);
    if (!v17)
    {
      goto LABEL_13;
    }
  }

LABEL_5:
  if (v17 == a6)
  {
    v22 = v21;
    (*(*v17 + 24))(v17, v21);
  }

  else
  {
    v22 = (*(*v17 + 16))(v17);
  }

LABEL_17:
  v15(a1, a2, a3, a4, v23, v21, swift_getTypeByMangledNodeImpl);
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  result = v24;
  if (v24 == v23)
  {
    return (*(*result + 32))(result);
  }

LABEL_22:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void *swift_getTypeByMangledNameImpl@<X0>(swift *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = *MEMORY[0x1E69E9840];
  v51 = xmmword_1806726B0;
  v52 = 0;
  v53 = 0;
  v88 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v57 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v86 = 0;
  __dst = &v89;
  v50 = v90;
  v48 = &unk_1EEEACE60;
  if (!a3)
  {
    goto LABEL_19;
  }

  v12 = 0;
  v13 = -1;
  v14 = 1;
  do
  {
    v15 = a2[v12];
    if (v15 == 46)
    {
      v16 = v13 == -1;
      v13 = v12;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else if (v15 < 0x20)
    {
      goto LABEL_19;
    }

    v12 = v14++;
  }

  while (v12 < a3);
  if (v13 == -1)
  {
LABEL_19:
    v90[0] = &unk_1EEEACCF8;
    v90[1] = &v48;
    v91 = v90;
    v18 = swift::Demangle::__runtime::Demangler::demangleType(&v48, a2, a3, v90);
    if (v91 == v90)
    {
      (*(*v91 + 32))(v91);
      if (v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v91)
      {
        (*(*v91 + 40))(v91);
      }

      if (v18)
      {
LABEL_23:
        v26 = *(a5 + 24);
        if (!v26)
        {
          goto LABEL_43;
        }

LABEL_24:
        if (v26 == a5)
        {
          v47 = v46;
          (*(*v26 + 24))(v26, v46);
          v27 = *(a6 + 24);
          if (v27)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v47 = (*(*v26 + 16))(v26);
          v27 = *(a6 + 24);
          if (v27)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_30;
      }
    }

    *(a7 + 16) = 0;
    *a7 = "unknown error";
    *(a7 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a7 + 24) = 1;
    goto LABEL_55;
  }

  v17 = a3;
  v18 = swift::Demangle::__runtime::NodeFactory::createNode(&v48, 25);
  if (v17 >= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v17;
  }

  if (v13)
  {
    v20 = __dst;
    if (!__dst || (v21 = __dst + v19, __dst + v19 > v50))
    {
      v22 = 2 * *(&v51 + 1);
      if (2 * *(&v51 + 1) <= v19 + 1)
      {
        v22 = v19 + 1;
      }

      *(&v51 + 1) = v22;
      v23 = v22 + 8;
      v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v25 = (v24 + v23);
      *v24 = v51;
      v20 = v24 + 1;
      v50 = v25;
      *&v51 = v24;
      v21 = v24 + v19 + 8;
    }

    __dst = v21;
    memmove(v20, a2, v19);
  }

  else
  {
    v20 = 0;
  }

  v28 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(&v48, 163, v20, v19);
  v29 = v17;
  if (v17 >= v13 + 1)
  {
    v17 = v13 + 1;
  }

  v30 = v29 - v17;
  if (v13 + 1 >= v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = __dst;
    if (!__dst || (v32 = __dst + v30, __dst + v30 > v50))
    {
      v33 = 2 * *(&v51 + 1);
      if (2 * *(&v51 + 1) <= v30 + 1)
      {
        v33 = v30 + 1;
      }

      *(&v51 + 1) = v33;
      v34 = v33 + 8;
      v35 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
      v36 = (v35 + v34);
      *v35 = v51;
      v31 = v35 + 1;
      v50 = v36;
      *&v51 = v35;
      v32 = v35 + v30 + 8;
    }

    __dst = v32;
    memmove(v31, &a2[v17], v30);
  }

  v37 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(&v48, 103, v31, v30);
  swift::Demangle::__runtime::Node::addChild(v18, v28, &v48, v38, v39);
  swift::Demangle::__runtime::Node::addChild(v18, v37, &v48, v40, v41);
  v26 = *(a5 + 24);
  if (v26)
  {
    goto LABEL_24;
  }

LABEL_43:
  v47 = 0;
  v27 = *(a6 + 24);
  if (v27)
  {
LABEL_44:
    if (v27 == a6)
    {
      v45 = v44;
      (*(*v27 + 24))(v27, v44);
    }

    else
    {
      v45 = (*(*v27 + 16))(v27);
    }

    goto LABEL_47;
  }

LABEL_30:
  v45 = 0;
LABEL_47:
  swift_getTypeByMangledNode(a1, &v48, v18, a4, v46, v44, a7);
  if (v45 == v44)
  {
    (*(*v45 + 32))(v45);
  }

  else if (v45)
  {
    (*(*v45 + 40))();
  }

  if (v47 == v46)
  {
    (*(*v47 + 32))(v47);
  }

  else if (v47)
  {
    (*(*v47 + 40))();
  }

LABEL_55:
  v48 = &unk_1EEEADB90;
  if (v88 == &v87)
  {
    (*(*v88 + 32))(v88);
  }

  else if (v88)
  {
    (*(*v88 + 40))();
  }

  v48 = &unk_1EEEADB68;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v51);
  if (v52)
  {
    *(v52 + 48) = 0;
  }

  return result;
}

uint64_t swift_getTypeByMangledNameSlow@<X0>(swift *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  TypeByMangledName = swift::getOverride_getTypeByMangledName(a1);
  if (!TypeByMangledName)
  {
    swift_getTypeByMangledName::Override = 1;
    v18 = *(a5 + 24);
    if (v18)
    {
      if (v18 != a5)
      {
        v28 = (*(*v18 + 16))(v18);
        v19 = *(a6 + 24);
        if (v19)
        {
          goto LABEL_10;
        }

LABEL_25:
        v26 = 0;
        goto LABEL_29;
      }

      v28 = v27;
      (*(*v18 + 24))(v18, v27);
      v19 = *(a6 + 24);
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v28 = 0;
      v19 = *(a6 + 24);
      if (!v19)
      {
        goto LABEL_25;
      }
    }

LABEL_10:
    if (v19 == a6)
    {
      v26 = v25;
      (*(*v19 + 24))(v19, v25);
    }

    else
    {
      v26 = (*(*v19 + 16))(v19);
    }

LABEL_29:
    swift_getTypeByMangledNameImpl(a1, a2, a3, a4, v27, v25, a7);
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
    }

    else if (v26)
    {
      (*(*v26 + 40))();
    }

    result = v28;
    if (v28 != v27)
    {
      goto LABEL_22;
    }

    return (*(*result + 32))(result);
  }

  v15 = TypeByMangledName;
  swift_getTypeByMangledName::Override = TypeByMangledName;
  v16 = *(a5 + 24);
  if (v16)
  {
    if (v16 != a5)
    {
      v24 = (*(*v16 + 16))(v16);
      v17 = *(a6 + 24);
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_13:
      v22 = 0;
      goto LABEL_17;
    }

    v24 = v23;
    (*(*v16 + 24))(v16, v23);
    v17 = *(a6 + 24);
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
    v17 = *(a6 + 24);
    if (!v17)
    {
      goto LABEL_13;
    }
  }

LABEL_5:
  if (v17 == a6)
  {
    v22 = v21;
    (*(*v17 + 24))(v17, v21);
  }

  else
  {
    v22 = (*(*v17 + 16))(v17);
  }

LABEL_17:
  v15(a1, a2, a3, a4, v23, v21, swift_getTypeByMangledNameImpl);
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  result = v24;
  if (v24 == v23)
  {
    return (*(*result + 32))(result);
  }

LABEL_22:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t swift::Lazy<SharedCacheInfoState>::defaultInitCallback(uint64_t *a1)
{
  result = _dyld_get_shared_cache_range();
  v3 = result;
  if (!result)
  {
    v3 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

void swift::ConcurrentReadableArray<anonymous namespace::TypeMetadataSection>::push_back(uint64_t a1, _OWORD *a2)
{
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 16);
  if (v5 >= *a1)
  {
    if (2 * v5 <= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = 2 * v5;
    }

    v8 = malloc_type_malloc((32 * (v7 >> 1)) | 8, 0x1000040504FFAC1uLL);
    if (!v8)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v6 = v8;
    *v8 = 0;
    if (v4)
    {
      if (v5)
      {
        v9 = v8 + 1;
        v10 = (v4 + 1);
        v11 = v5;
        do
        {
          v12 = *v10++;
          *v9++ = v12;
          --v11;
        }

        while (v11);
      }

      atomic_store(v5, v8);
      v13 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v13 = *(a1 + 32);
      v13[1] = v4;
      *(a1 + 32) = v13;
    }

    *a1 = v7;
    atomic_store(v6, (a1 + 16));
  }

  *&v6[2 * v5 + 1] = *a2;
  atomic_store(v5 + 1, v6);
  __dmb(0xBu);
  if (!*(a1 + 8))
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      do
      {
        v16 = *v14;
        v15 = v14[1];
        v17 = -1;
        do
        {
          v18 = atomic_load(v15);
          ++v17;
        }

        while (v17 < v18);
        free(v15);
        free(v14);
        v14 = v16;
      }

      while (v16);
    }

    *(a1 + 32) = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
}

void DemanglerForRuntimeTypeResolution<swift::Demangle::__runtime::Demangler>::~DemanglerForRuntimeTypeResolution(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  JUMPOUT(0x1865C92E0);
}

uint64_t std::__function::__func<swift::ResolveAsSymbolicReference,std::allocator<swift::ResolveAsSymbolicReference>,swift::Demangle::__runtime::Node * ()(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACCF8;
  a2[1] = v2;
  return result;
}

unsigned __int16 ***swift::Demangle::__runtime::getObjCClassOrProtocolName@<X0>(unsigned __int16 ***result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 != 25 && v2 != 190)
  {
    goto LABEL_21;
  }

  v3 = *(result + 18);
  v4 = result;
  if (v3 != 2)
  {
    if (v3 != 5 || *(result + 2) != 2)
    {
      goto LABEL_21;
    }

    v4 = *result;
  }

  v5 = *v4;
  if (*(v5 + 8) != 163 || v5[1] != 3)
  {
    goto LABEL_21;
  }

  v6 = *v5;
  v7 = *v6;
  v8 = *(v6 + 2);
  if (v7 != 24415 || v8 != 67)
  {
    goto LABEL_21;
  }

  if (v3 == 2)
  {
    goto LABEL_17;
  }

  if (*(result + 2) >= 2u)
  {
    result = *result;
LABEL_17:
    v10 = result[1];
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  if (*(v10 + 8) == 103)
  {
    *a2 = *v10;
    *(a2 + 16) = 1;
    return result;
  }

LABEL_21:
  *a2 = 0;
  *(a2 + 16) = 0;
  return result;
}

StructDescriptor *descriptorFromStandardMangling(unsigned __int8 *a1)
{
  v1 = a1[18];
  if (v1 == 2)
  {
    if (*(*a1 + 16) != 163)
    {
      return 0;
    }

    v2 = 0;
    v3 = a1;
    v4 = a1;
  }

  else
  {
    if (v1 != 5 || *(a1 + 2) < 2u || *(**a1 + 16) != 163)
    {
      return 0;
    }

    v2 = 1;
    v3 = a1;
    v4 = *a1;
  }

  v5 = *v4;
  v6 = *(v5 + 8);
  v7 = strncmp(*v5, "Swift", v6);
  if (v6 == 5 && v7 == 0)
  {
    if (v2)
    {
      v3 = *v3;
    }

    if (*(*(v3 + 1) + 16) == 103)
    {
      v9 = *(v3 + 1);
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = strncmp(*v9, "AutoreleasingUnsafeMutablePointer", v11);
      if (v11 == 33 && v12 == 0)
      {
        return &nominal type descriptor for AutoreleasingUnsafeMutablePointer;
      }

      v14 = strncmp(v10, "Array", v11);
      if (v11 == 5 && !v14)
      {
        return &nominal type descriptor for Array;
      }

      if (stringRefEqualsCString(v10, v11, "Bool"))
      {
        return &nominal type descriptor for Bool;
      }

      if (stringRefEqualsCString(v10, v11, "Dictionary"))
      {
        return &nominal type descriptor for Dictionary;
      }

      if (stringRefEqualsCString(v10, v11, "Double"))
      {
        return &nominal type descriptor for Double;
      }

      if (stringRefEqualsCString(v10, v11, "Float"))
      {
        return &nominal type descriptor for Float;
      }

      if (stringRefEqualsCString(v10, v11, "Set"))
      {
        return &nominal type descriptor for Set;
      }

      if (stringRefEqualsCString(v10, v11, "DefaultIndices"))
      {
        return &nominal type descriptor for DefaultIndices;
      }

      if (stringRefEqualsCString(v10, v11, "Int"))
      {
        return &nominal type descriptor for Int;
      }

      if (stringRefEqualsCString(v10, v11, "Character"))
      {
        return &nominal type descriptor for Character;
      }

      if (stringRefEqualsCString(v10, v11, "ClosedRange"))
      {
        return &nominal type descriptor for ClosedRange;
      }

      if (stringRefEqualsCString(v10, v11, "Range"))
      {
        return &nominal type descriptor for Range;
      }

      if (stringRefEqualsCString(v10, v11, "ObjectIdentifier"))
      {
        return &nominal type descriptor for ObjectIdentifier;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafePointer"))
      {
        return &nominal type descriptor for UnsafePointer;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeMutablePointer"))
      {
        return &nominal type descriptor for UnsafeMutablePointer;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeBufferPointer"))
      {
        return &nominal type descriptor for UnsafeBufferPointer;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeMutableBufferPointer"))
      {
        return &nominal type descriptor for UnsafeMutableBufferPointer;
      }

      if (stringRefEqualsCString(v10, v11, "String"))
      {
        return &nominal type descriptor for String;
      }

      if (stringRefEqualsCString(v10, v11, "Substring"))
      {
        return &nominal type descriptor for Substring;
      }

      if (stringRefEqualsCString(v10, v11, "UInt"))
      {
        return &nominal type descriptor for UInt;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeRawPointer"))
      {
        return &nominal type descriptor for UnsafeRawPointer;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeMutableRawPointer"))
      {
        return &nominal type descriptor for UnsafeMutableRawPointer;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeRawBufferPointer"))
      {
        return &nominal type descriptor for UnsafeRawBufferPointer;
      }

      if (stringRefEqualsCString(v10, v11, "UnsafeMutableRawBufferPointer"))
      {
        return &nominal type descriptor for UnsafeMutableRawBufferPointer;
      }

      if (stringRefEqualsCString(v10, v11, "Optional"))
      {
        return &nominal type descriptor for Optional;
      }

      if (stringRefEqualsCString(v10, v11, "BinaryFloatingPoint"))
      {
        return &protocol descriptor for BinaryFloatingPoint;
      }

      if (stringRefEqualsCString(v10, v11, "Encodable"))
      {
        return &protocol descriptor for Encodable;
      }

      if (stringRefEqualsCString(v10, v11, "Decodable"))
      {
        return &protocol descriptor for Decodable;
      }

      if (stringRefEqualsCString(v10, v11, "FloatingPoint"))
      {
        return &protocol descriptor for FloatingPoint;
      }

      if (stringRefEqualsCString(v10, v11, "RandomNumberGenerator"))
      {
        return &protocol descriptor for RandomNumberGenerator;
      }

      if (stringRefEqualsCString(v10, v11, "Hashable"))
      {
        return &protocol descriptor for Hashable;
      }

      if (stringRefEqualsCString(v10, v11, "Numeric"))
      {
        return &protocol descriptor for Numeric;
      }

      if (stringRefEqualsCString(v10, v11, "BidirectionalCollection"))
      {
        return &protocol descriptor for BidirectionalCollection;
      }

      if (stringRefEqualsCString(v10, v11, "RandomAccessCollection"))
      {
        return &protocol descriptor for RandomAccessCollection;
      }

      if (stringRefEqualsCString(v10, v11, "Comparable"))
      {
        return &protocol descriptor for Comparable;
      }

      if (stringRefEqualsCString(v10, v11, "Collection"))
      {
        return &protocol descriptor for Collection;
      }

      if (stringRefEqualsCString(v10, v11, "MutableCollection"))
      {
        return &protocol descriptor for MutableCollection;
      }

      if (stringRefEqualsCString(v10, v11, "RangeReplaceableCollection"))
      {
        return &protocol descriptor for RangeReplaceableCollection;
      }

      if (stringRefEqualsCString(v10, v11, "Equatable"))
      {
        return &protocol descriptor for Equatable;
      }

      if (stringRefEqualsCString(v10, v11, "Sequence"))
      {
        return &protocol descriptor for Sequence;
      }

      if (stringRefEqualsCString(v10, v11, "IteratorProtocol"))
      {
        return &protocol descriptor for IteratorProtocol;
      }

      if (stringRefEqualsCString(v10, v11, "UnsignedInteger"))
      {
        return &protocol descriptor for UnsignedInteger;
      }

      if (stringRefEqualsCString(v10, v11, "RangeExpression"))
      {
        return &protocol descriptor for RangeExpression;
      }

      if (stringRefEqualsCString(v10, v11, "Strideable"))
      {
        return &protocol descriptor for Strideable;
      }

      if (stringRefEqualsCString(v10, v11, "RawRepresentable"))
      {
        return &protocol descriptor for RawRepresentable;
      }

      if (stringRefEqualsCString(v10, v11, "StringProtocol"))
      {
        return &protocol descriptor for StringProtocol;
      }

      if (stringRefEqualsCString(v10, v11, "SignedInteger"))
      {
        return &protocol descriptor for SignedInteger;
      }

      if (stringRefEqualsCString(v10, v11, "BinaryInteger"))
      {
        return &protocol descriptor for BinaryInteger;
      }

      v17 = concurrencyDescriptors;
      if (concurrencyDescriptors)
      {
        if (stringRefEqualsCString(v10, v11, "Actor"))
        {
          v15 = *v17;
          if (*v17)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "CheckedContinuation"))
        {
          v15 = v17[1];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "UnsafeContinuation"))
        {
          v15 = v17[2];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "CancellationError"))
        {
          v15 = v17[3];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "UnownedSerialExecutor"))
        {
          v15 = v17[4];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "Executor"))
        {
          v15 = v17[5];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "SerialExecutor"))
        {
          v15 = v17[6];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "TaskGroup"))
        {
          v15 = v17[7];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "ThrowingTaskGroup"))
        {
          v15 = v17[8];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "TaskExecutor"))
        {
          v15 = v17[9];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "AsyncIteratorProtocol"))
        {
          v15 = v17[10];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "AsyncSequence"))
        {
          v15 = v17[11];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "UnownedJob"))
        {
          v15 = v17[12];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "MainActor"))
        {
          v15 = v17[13];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "TaskPriority"))
        {
          v15 = v17[14];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "AsyncStream"))
        {
          v15 = v17[15];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "AsyncThrowingStream"))
        {
          v15 = v17[16];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "Task"))
        {
          v15 = v17[17];
          if (v15)
          {
            return v15;
          }
        }

        else if (stringRefEqualsCString(v10, v11, "UnsafeCurrentTask"))
        {
          v15 = v17[18];
          if (v15)
          {
            return v15;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t swift::ConcurrentReadableHashMap<anonymous namespace::NominalTypeDescriptorCacheEntry,swift::LazyMutex>::find<__swift::__runtime::llvm::StringRef>(const void **a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift::__runtime::llvm::hash_value(*a1, a1[1]);
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  if ((a2 & 3) != 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v13 = (v8 & v11) <= 1 ? 1 : v8 & v11;
    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v12 + v13;
      LOBYTE(v14) = atomic_load_explicit((v12 + v13), memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_21:
    v15 = (v14 - 1);
    if (v15 < a3)
    {
      v16 = a4 + 24 * v15;
      v17 = a1[1];
      if (v17 == *(v16 + 8) && (!v17 || !memcmp(*a1, *v16, v17)))
      {
        return v16;
      }
    }

    v8 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v12 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit((v12 + 2 * v13), memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_21;
  }

  LODWORD(v14) = atomic_load_explicit((v12 + 4 * v13), memory_order_acquire);
  if (v14)
  {
    goto LABEL_21;
  }

  return 0;
}

void swift::runtime::trace::metadata_scan_begin(swift::runtime::trace *this@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED426300 != -1)
  {
    swift::runtime::trace::metadata_scan_begin(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1 && !_os_trace_lazy_init_completed_4swift())
  {
    goto LABEL_19;
  }

  if (swift::runtime::trace::LogsToken != -1)
  {
    swift::runtime::trace::metadata_scan_begin();
  }

  if (swift::runtime::trace::TracingEnabled == 1)
  {
    v5 = os_signpost_id_generate(swift::runtime::trace::ScanLog);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        if (this)
        {
          v11 = 0;
          v12 = 0x101010101010101;
          v13 = 1;
          v14 = 0x101010100000000;
          v15 = 1;
          v16 = 256;
          v17 = 1;
          v18 = 0;
          v19 = 0;
          v20[0] = &unk_1EEEAA698;
          v20[1] = swift::Demangle::__runtime::genericParameterName;
          v21 = v20;
          swift::Demangle::__runtime::nodeToString(this, &v11, v7, __p);
          if (v10 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136315138;
          v23 = v8;
          _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "section_scan", "metadata scan for %s", buf, 0xCu);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }

          if (v21 == v20)
          {
            (*(*v21 + 32))(v21);
          }

          else if (v21)
          {
            (*(*v21 + 40))();
          }
        }

        else
        {
          *buf = 136315138;
          v23 = "<null>";
          _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "section_scan", "metadata scan for %s", buf, 0xCu);
        }
      }
    }
  }

  else
  {
LABEL_19:
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
}

uint64_t _searchTypeMetadataRecordsInSections<swift::ConcurrentReadableArray<anonymous namespace::TypeMetadataSection>>(uint64_t a1, const char *a2)
{
  v2 = (a1 + 8);
  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_acquire);
  v3 = *(a1 + 16);
  if (v3)
  {
    explicit = atomic_load_explicit(v3, memory_order_acquire);
    if (explicit)
    {
      v6 = (v3 + 1);
      v7 = &v3[2 * explicit + 1];
      while (1)
      {
        v8 = *v6;
        v9 = v6[1];
        if (*v6 != v9)
        {
          break;
        }

LABEL_4:
        v6 += 2;
        if (v6 == v7)
        {
          goto LABEL_19;
        }
      }

      v10 = *v6;
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 3) == 1)
        {
          if (!*(v8 + (v11 & 0xFFFFFFFFFFFFFFFCLL)))
          {
            goto LABEL_7;
          }

          v15 = *(v8 + (v11 & 0xFFFFFFFFFFFFFFFCLL));
        }

        else
        {
          v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
          v13 = v8 + v12;
          if ((*v10 & 3) != 0 || v13 == 0)
          {
            goto LABEL_7;
          }

          v15 = v8 + v12;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

        if (swift::_contextDescriptorMatchesMangling(v15, a2))
        {
          goto LABEL_20;
        }

LABEL_7:
        ++v10;
        ++v8;
        if (v10 == v9)
        {
          goto LABEL_4;
        }
      }
    }
  }

LABEL_19:
  v15 = 0;
LABEL_20:
  atomic_fetch_add_explicit(v2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  return v15;
}

uint64_t swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::__invoke(BOOL *a1)
{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0,std::allocator<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACD40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0,std::allocator<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1,std::allocator<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACD88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1,std::allocator<swift_getTypeByMangledNameInContextImpl(char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0,std::allocator<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACDD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0,std::allocator<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1,std::allocator<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACE18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1,std::allocator<swift_getTypeByMangledNameInContextInMetadataStateImpl(unsigned long,char const*,unsigned long,swift::TargetContextDescriptor<swift::InProcess> const*,void const* const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

void DemanglerForRuntimeTypeResolution<swift::Demangle::__runtime::StackAllocatedDemangler<2048ul>>::~DemanglerForRuntimeTypeResolution(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  JUMPOUT(0x1865C92E0);
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(a1);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getConditionalInvertibleProtocolRequirementCounts(a1);
  if (v4)
  {
    v5 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v4 - 2);
    if (a1)
    {
LABEL_3:
      v6 = a1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  if ((*v6 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = (*(v9 + 7) >> 2) & 1;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = a1;
LABEL_14:
  if ((*v8 & 0x80) != 0 && (!a1 ? (v10 = 0) : (v10 = a1), (*(v10 + 7) & 4) != 0 && (!a1 ? (v11 = 0) : (v11 = a1), (*v11 & 0x80) != 0 && (!a1 ? (v12 = 0) : (v12 = a1), (*(v12 + 7) & 4) != 0))))
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v16 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v15);
    v17 = swift::TrailingGenericContextObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getConditionalInvertibleProtocolRequirementCounts(v15);
    if (v18)
    {
      v19 = *(v17 + 2 * v18 - 2);
    }

    else
    {
      v19 = 0;
    }

    v13 = *(v16 + 12 * v19);
  }

  else
  {
    v13 = 0;
  }

  return TrailingObjectsImpl + 12 * v5 + 4 * v7 + 4 * v13;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(a1);
  v3 = a1;
  if ((*a1 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = (*(v6 + 7) >> 1) & 1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v3;
  if ((*v5 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v5)
  {
    v5 = 0;
  }

  if ((*(v5 + 7) & 2) != 0)
  {
    v8 = TrailingObjectsImpl;
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10 = vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v9));
    v10.i16[0] = vaddlv_u8(v10);
    v7 = v10.u32[0];
    TrailingObjectsImpl = v8;
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

  return (TrailingObjectsImpl + 2 * v4 + 2 * v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(a1);
  if ((*a1 & 0x80) == 0 || (!a1 ? (v3 = 0) : (v3 = a1), (*(v3 + 7) & 1) == 0 || (!a1 ? (v4 = 0) : (v4 = a1), (*v4 & 0x80) == 0 || (!a1 ? (v5 = 0) : (v5 = a1), (*(v5 + 7) & 1) == 0))))
  {
    v6 = 0;
    return TrailingObjectsImpl + 8 * v6;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8 == -8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 2;
    if (!v8)
    {
      v8 = 0;
    }
  }

  v11 = *v8;
  if ((v11 & 0x80) != 0)
  {
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v12 = *(v14 + 4);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_26:
  v13 = v9;
LABEL_32:
  if ((*v13 & 0x80) != 0)
  {
    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v15 = *(v16 + 5);
  }

  else
  {
    v15 = 0;
  }

  v6 = *(((&v10[2 * ((v11 >> 7) & 1)] + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v15);
  return TrailingObjectsImpl + 8 * v6;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(_BYTE *a1)
{
  if (a1 == -8)
  {
    v1 = 0;
    goto LABEL_3;
  }

  v1 = a1 + 8;
  if (a1)
  {
LABEL_3:
    v2 = a1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  v3 = *v2;
  if ((v3 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = *(v6 + 4);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (a1)
    {
LABEL_8:
      v5 = a1;
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:
  if ((*v5 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = *(v9 + 5);
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (a1)
    {
LABEL_16:
      v8 = a1;
      goto LABEL_22;
    }
  }

  v8 = 0;
LABEL_22:
  if ((*v8 & 0x80) != 0)
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }

    v10 = *(v11 + 7) & 1;
  }

  else
  {
    v10 = 0;
  }

  return (&v1[8 * ((v3 >> 7) & 1) + 3 + v4] & 0xFFFFFFFFFFFFFFFCLL) + 12 * v7 + 4 * v10;
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getConditionalInvertibleProtocolRequirementCounts(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*v2 & 0x80) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    v2 = 0;
  }

  if ((*(v2 + 7) & 2) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v4);
  if ((*v4 & 0x80) != 0)
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v6 = (*(v8 + 7) >> 1) & 1;
    if (a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if (a1)
    {
LABEL_15:
      v7 = a1;
      goto LABEL_21;
    }
  }

  v7 = 0;
LABEL_21:
  result = TrailingObjectsImpl + 2 * v6;
  if ((*v7 & 0x80) != 0)
  {
    if (!v7)
    {
      v7 = 0;
    }

    if ((*(v7 + 7) & 2) != 0)
    {
      v9 = result;
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = 0;
      }

      vaddlv_u8(vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v10)));
      return v9;
    }
  }

  return result;
}

uint64_t std::__function::__func<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_0,std::allocator<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACE88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_0,std::allocator<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a2;
  v8 = *a3;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a4, a5, a6);
  if (*(v6 + 32) <= v7)
  {
    return 0;
  }

  v10 = *(v6 + 24) + 32 * v7;
  if (*(v10 + 16) <= v8)
  {
    return 0;
  }

  v11 = *(v6 + 300) + *(v10 + 20);
  if (*(v10 + 28) == 1)
  {
    v12 = *v10;
    v13 = (*v10 + v8);
    if ((v13->i8[0] & 0x80000000) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (v8 < 4)
      {
        v15 = v12;
        goto LABEL_23;
      }

      if (v8 >= 0x20)
      {
        v16 = v8 & 0xFFFFFFE0;
        v17 = 0uLL;
        v18 = v11;
        v19 = v12 + 1;
        v20 = v16;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = vshrq_n_u8(v19[-1], 7uLL);
          v28 = vshrq_n_u8(*v19, 7uLL);
          v29 = vmovl_u8(*v27.i8);
          v30 = vmovl_high_u8(v27);
          v31 = vmovl_u8(*v28.i8);
          v32 = vmovl_high_u8(v28);
          v22 = vaddw_high_u16(v22, v30);
          v21 = vaddw_u16(v21, *v30.i8);
          v17 = vaddw_high_u16(v17, v29);
          v18 = vaddw_u16(v18, *v29.i8);
          v26 = vaddw_high_u16(v26, v32);
          v25 = vaddw_u16(v25, *v32.i8);
          v24 = vaddw_high_u16(v24, v31);
          v23 = vaddw_u16(v23, *v31.i8);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v9 = vaddq_s32(vaddq_s32(v24, v17), vaddq_s32(v26, v22));
        v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v18), vaddq_s32(v25, v21)), v9));
        if (v16 == v8)
        {
          return *(*(v6 + 16) + 8 * v11);
        }

        if ((v8 & 0x1C) == 0)
        {
          v15 = (v12 + v16);
          do
          {
LABEL_23:
            v37 = v15->u8[0];
            v15 = (v15 + 1);
            v11 += v37 >> 7;
          }

          while (v15 != v13);
          return *(*(v6 + 16) + 8 * v11);
        }
      }

      else
      {
        v16 = 0;
      }

      v15 = (v12 + (v8 & 0xFFFFFFFC));
      v33 = v11;
      v34 = (v12->i32 + v16);
      v35 = v16 - (v8 & 0xFFFFFFFC);
      do
      {
        v36 = *v34++;
        v9.i32[0] = v36;
        *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
        v33 = vaddw_u16(v33, *v9.i8);
        v35 += 4;
      }

      while (v35);
      v11 = vaddvq_s32(v33);
      if ((v8 & 0xFFFFFFFC) == v8)
      {
        return *(*(v6 + 16) + 8 * v11);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 += v8;
  }

  return *(*(v6 + 16) + 8 * v11);
}

uint64_t std::__function::__func<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_1,std::allocator<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACED0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_1,std::allocator<swift_getOpaqueTypeMetadataImpl(swift::MetadataRequest,void const* const*,swift::TargetOpaqueTypeDescriptor<swift::InProcess> const*,unsigned int)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(uint64_t a1, double a2, double a3, int32x4_t a4, uint64_t a5, int *a6)
{
  v6 = *(a1 + 8);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *a6;
  swift::SubstGenericParametersFromMetadata::setup(*(a1 + 8), a2, a3, a4);
  return *(*(v6 + 16) + 8 * (*(v6 + 296) + v7 + *(v6 + 300)));
}

void *__swift::__runtime::llvm::SmallVectorImpl<swift::MetadataPackOrValue>::insert<swift::MetadataPackOrValue const*,void>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v6 = *a1;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = a4 - __src;
  v12 = (a4 - __src) >> 3;
  v13 = v12 + v9;
  if (*a1 + 8 * v9 == a2)
  {
    if (v13 > v10)
    {
      v23 = a4;
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v13, 8);
      a4 = v23;
      LODWORD(v9) = *(a1 + 8);
      v7 = *a1;
    }

    if (__src != a4)
    {
      memcpy((v7 + 8 * v9), __src, v11);
      LODWORD(v9) = *(a1 + 8);
      v7 = *a1;
    }

    *(a1 + 8) = v9 + (v11 >> 3);
    return (v7 + v8);
  }

  __len = v11;
  v46 = __src;
  v48 = a4;
  if (v13 > v10)
  {
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v13, 8);
    v7 = *a1;
    v9 = *(a1 + 8);
  }

  __srca = (v7 + v8);
  v15 = 8 * v9;
  v16 = (v7 + 8 * v9);
  v17 = 8 * v9 - v8;
  v18 = v17 >> 3;
  if (v17 >> 3 < v12)
  {
    v19 = v9 + (__len >> 3);
    *(a1 + 8) = v19;
    if (v15 == v8)
    {
      v20 = v46;
      v21 = v7 + v8;
      v22 = v48;
LABEL_34:
      if (v20 != v22)
      {
        memcpy(v16, v20, v22 - v20);
      }

      return v21;
    }

    v21 = v7 + v8;
    memcpy((v7 + 8 * v19 - 8 * v18), __srca, v17);
    if (v18 > 7)
    {
      if ((v7 + a2 - &v46[v6]) >= 0x20)
      {
        v40 = 8 * (v18 & 0xFFFFFFFFFFFFFFFCLL);
        v28 = &__srca[v40];
        v29 = (v17 >> 3) & 3;
        v20 = &v46[v40];
        v41 = (v46 + 16);
        v42 = (v8 + v7 + 16);
        v43 = v18 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v44 = *v41;
          *(v42 - 1) = *(v41 - 1);
          *v42 = v44;
          v41 += 2;
          v42 += 2;
          v43 -= 4;
        }

        while (v43);
        v22 = v48;
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    else
    {
      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    v22 = v48;
    do
    {
LABEL_33:
      v39 = *v20;
      v20 += 8;
      *v28 = v39;
      v28 += 8;
      --v29;
    }

    while (v29);
    goto LABEL_34;
  }

  v24 = 8 * v12;
  if (v12 + v9 > *(a1 + 12))
  {
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v12 + v9, 8);
    LODWORD(v9) = *(a1 + 8);
  }

  v25 = &v16[-v24];
  v21 = v7 + v8;
  if (v48 != v46)
  {
    v26 = (*a1 + 8 * v9);
    if (v24 - 8 < 0x38)
    {
      v27 = &v16[-v24];
      do
      {
LABEL_23:
        v37 = *v27;
        v27 += 8;
        *v26++ = v37;
      }

      while (v27 != v16);
      goto LABEL_24;
    }

    v30 = 8 * v9 + *a1;
    v27 = &v16[-v24];
    if ((v30 - v25) < 0x20)
    {
      goto LABEL_23;
    }

    v31 = ((v24 - 8) >> 3) + 1;
    v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
    v26 = (v26 + v32);
    v27 = &v25[v32];
    v33 = (v15 - v24 + v7 + 16);
    v34 = (v30 + 16);
    v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v33;
      *(v34 - 1) = *(v33 - 1);
      *v34 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a1 + 8) = v9 + (v24 >> 3);
  if (v25 != __srca)
  {
    memmove(&__srca[v24], __srca, &v16[-v24] - __srca);
  }

  if (v48 == v46)
  {
    return v21;
  }

  return memmove(__srca, v46, __len);
}

uint64_t swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>::getNumElements(void *a1, uint64_t a2, const char *a3, char *a4)
{
  if ((*a1 & 1) == 0)
  {
    swift::fatalError(0, "Cannot get length of on-stack pack", a3, a4, v4, v5);
  }

  return *((*a1 & 0xFFFFFFFFFFFFFFFELL) - 8);
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_3>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_3 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(uint64_t a1, int a2, void *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (a1)
    {
      MEMORY[0x1865C92E0](a1, 0x1060C40D29BE02FLL, a3);
    }

    return 0;
  }

  if (a2)
  {
    free(a3);
    return 0;
  }

  _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(a1, &v40);
  v4 = std::string::append(&v40, "incorrect number of generic args (");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v39, *(a1 + 32));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v39;
  }

  else
  {
    v6 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v41, v6, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v42, "), ");
  v11 = 0;
  v12 = v10->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v12;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v13 = *(a1 + 40);
  if ((*v13 & 0x80) != 0)
  {
    v15 = v13 + 1;
    v14 = v13[1];
    if (v14)
    {
      v16 = (v15 + (v14 & 0xFFFFFFFFFFFFFFFELL));
      if (v14)
      {
        if (!*v16)
        {
          goto LABEL_25;
        }

        v17 = *v16;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = (v15 + (v14 & 0xFFFFFFFFFFFFFFFELL));
      }

      if (v17)
      {
        GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v17);
        if (GenericContext)
        {
          v20 = *(GenericContext + 2);
LABEL_26:
          v11 = *(swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v13) + 2) - v20;
          goto LABEL_27;
        }
      }
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

LABEL_27:
  std::to_string(&v38, v11);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v38;
  }

  else
  {
    v21 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v38.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v43, v21, v22);
  v24 = v23->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v44, " local params, ");
  v26 = v25->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v37, *(a1 + 48));
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v37;
  }

  else
  {
    v27 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v37.__r_.__value_.__l.__size_;
  }

  v29 = std::string::append(&v45, v27, v28);
  v30 = v29->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v46, " total params");
  v36 = *v31;
  v31->__r_.__value_.__r.__words[0] = 0;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_41:
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_42:
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_58;
  }

LABEL_57:
  operator delete(v45.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v44.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(v38.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_45:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_61;
  }

LABEL_60:
  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_46:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(v42.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_47:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_63:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_64:
    operator delete(v40.__r_.__value_.__l.__data_);
    goto LABEL_49;
  }

LABEL_62:
  operator delete(v39.__r_.__value_.__l.__data_);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_63;
  }

LABEL_48:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_64;
  }

LABEL_49:
  v32 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
  v33 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v36;
  }

  else
  {
    v34 = v36.__r_.__value_.__r.__words[0];
  }

  result = strdup(v34);
  if (v32 < 0)
  {
    v35 = result;
    operator delete(v33);
    return v35;
  }

  return result;
}

std::string *_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()@<X0>(const void **a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "_gatherGenericParameters: context: ");
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  swift::SymbolInfo::lookup(v4, v18);
  if (v20 == 1)
  {
    SymbolName = swift::SymbolInfo::getSymbolName(v18);
    std::string::append(a2, SymbolName);
    std::string::append(a2, " ");
  }

  __s = 0;
  swift_asprintf(&__s, "%p", *a1);
  v6 = __s;
  std::string::append(a2, __s);
  free(v6);
  std::string::append(a2, " <");
  v7 = a1[2];
  if (v7)
  {
    v8 = a1[1];
    v9 = *v8;
    v18[0] = 0;
    swift_asprintf(v18, "%p", v9);
    std::string::append(a2, v18[0]);
    if (v7 != 1)
    {
      v10 = v8 + 1;
      v11 = 8 * v7 - 8;
      do
      {
        v12 = *v10++;
        std::string::append(a2, ", ");
        v18[0] = 0;
        swift_asprintf(v18, "%p", v12);
        std::string::append(a2, v18[0]);
        v11 -= 8;
      }

      while (v11);
    }
  }

  std::string::append(a2, "> ");
  std::string::append(a2, "parent: ");
  v13 = a1[3];
  if (v13)
  {
    swift::nameForMetadata(v18, v13);
    if ((v19 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v18[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18[1];
    }

    std::string::append(a2, v14, v15);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    std::string::append(a2, "<null>");
  }

  return std::string::append(a2, " - ");
}

void swift_asprintf(char **a1, const char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  *a1 = 0;
  if ((v4 & 0x80000000) == 0)
  {
    v5 = (v4 + 1);
    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      if (vsnprintf(v6, v5, __format, va) < 0)
      {
        free(v7);
      }

      else
      {
        *a1 = v7;
      }
    }
  }
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_4>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_4 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(result, &v11);
      v3 = std::string::append(&v11, "failed to get parent context's written");
      v4 = v3->__r_.__value_.__r.__words[2];
      *&v12.__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
      v12.__r_.__value_.__r.__words[2] = v4;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      v5 = std::string::append(&v12, " generic arguments");
      v10 = *v5;
      v5->__r_.__value_.__r.__words[0] = 0;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
        v7 = v10.__r_.__value_.__r.__words[0];
        if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v10;
        }

        else
        {
          v8 = v10.__r_.__value_.__r.__words[0];
        }

        result = strdup(v8);
        if (v6 < 0)
        {
          v9 = result;
          operator delete(v7);
          return v9;
        }

        return result;
      }

      operator delete(v11.__r_.__value_.__l.__data_);
      goto LABEL_5;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1060C404361888DLL, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_5>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_5 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = result;
      _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(result, &v22);
      v4 = std::string::append(&v22, "have ");
      v5 = v4->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v21, *(v3 + 4));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v21;
      }

      else
      {
        v6 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v8 = std::string::append(&v23, v6, size);
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v24, "generic args, expected ");
      v11 = v10->__r_.__value_.__r.__words[2];
      *&v25.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
      v25.__r_.__value_.__r.__words[2] = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v20, *(v3 + 10));
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v20;
      }

      else
      {
        v12 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v20.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v25, v12, v13);
      v19 = *v14;
      v14->__r_.__value_.__r.__words[0] = 0;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_17:
          if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_35;
        }
      }

      else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      }

LABEL_35:
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_19:
        if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }

LABEL_36:
      operator delete(v21.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_21:
          v15 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
          v16 = v19.__r_.__value_.__r.__words[0];
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v19;
          }

          else
          {
            v17 = v19.__r_.__value_.__r.__words[0];
          }

          result = strdup(v17);
          if (v15 < 0)
          {
            v18 = result;
            operator delete(v16);
            return v18;
          }

          return result;
        }

LABEL_38:
        operator delete(v22.__r_.__value_.__l.__data_);
        goto LABEL_21;
      }

LABEL_37:
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1060C40E00DCE36, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_6>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_6 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = result;
      _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(result, &v17);
      v4 = std::string::append(&v17, "param ");
      v5 = v4->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v16, *(v3 + 8));
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v16;
      }

      else
      {
        v6 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      v8 = std::string::append(&v18, v6, size);
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v19, " expected metadata but got a metadata pack");
      v15 = *v10;
      v10->__r_.__value_.__r.__words[0] = 0;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_11:
          if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_27;
        }
      }

      else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_13:
          v11 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
          v12 = v15.__r_.__value_.__r.__words[0];
          if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v15;
          }

          else
          {
            v13 = v15.__r_.__value_.__r.__words[0];
          }

          result = strdup(v13);
          if (v11 < 0)
          {
            v14 = result;
            operator delete(v12);
            return v14;
          }

          return result;
        }

LABEL_28:
        operator delete(v17.__r_.__value_.__l.__data_);
        goto LABEL_13;
      }

LABEL_27:
      operator delete(v18.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1060C40FBDF1FB7, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_7>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_7 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = result;
      _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(result, &v17);
      v4 = std::string::append(&v17, "param ");
      v5 = v4->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v16, *(v3 + 8));
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v16;
      }

      else
      {
        v6 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      v8 = std::string::append(&v18, v6, size);
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v19, " expected a metadata pack but got metadata");
      v15 = *v10;
      v10->__r_.__value_.__r.__words[0] = 0;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_11:
          if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_27;
        }
      }

      else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_13:
          v11 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
          v12 = v15.__r_.__value_.__r.__words[0];
          if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v15;
          }

          else
          {
            v13 = v15.__r_.__value_.__r.__words[0];
          }

          result = strdup(v13);
          if (v11 < 0)
          {
            v14 = result;
            operator delete(v12);
            return v14;
          }

          return result;
        }

LABEL_28:
        operator delete(v17.__r_.__value_.__l.__data_);
        goto LABEL_13;
      }

LABEL_27:
      operator delete(v18.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1060C40FBDF1FB7, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_8>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_8 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = result;
      _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(result, &v22);
      v4 = std::string::append(&v22, "param ");
      v5 = v4->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v21, *(v3 + 8));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v21;
      }

      else
      {
        v6 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v8 = std::string::append(&v23, v6, size);
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v24, " has unexpected kind ");
      v11 = v10->__r_.__value_.__r.__words[2];
      *&v25.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
      v25.__r_.__value_.__r.__words[2] = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v20, v3[36] & 0x3F);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v20;
      }

      else
      {
        v12 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v20.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v25, v12, v13);
      v19 = *v14;
      v14->__r_.__value_.__r.__words[0] = 0;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_17:
          if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_35;
        }
      }

      else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      }

LABEL_35:
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_19:
        if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }

LABEL_36:
      operator delete(v21.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_21:
          v15 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
          v16 = v19.__r_.__value_.__r.__words[0];
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v19;
          }

          else
          {
            v17 = v19.__r_.__value_.__r.__words[0];
          }

          result = strdup(v17);
          if (v15 < 0)
          {
            v18 = result;
            operator delete(v16);
            return v18;
          }

          return result;
        }

LABEL_38:
        operator delete(v22.__r_.__value_.__l.__data_);
        goto LABEL_21;
      }

LABEL_37:
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1060C4063E0DDF5, a3);
    return 0;
  }

  return result;
}

uint64_t std::__function::__func<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_0,std::allocator<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACF18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_0,std::allocator<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[1];
  if (*(v5 + 2) <= v3)
  {
    return 0;
  }

  v6 = *v5;
  v7 = v3 ? *(v6 + 4 * (v3 - 1)) : 0;
  v8 = v7 + *a3;
  if (v8 >= *(v6 + 4 * v3))
  {
    return 0;
  }

  v9 = *v4;
  if (*(v9 + 8) <= v8)
  {
    return 0;
  }

  else
  {
    return *(*v9 + 8 * v8);
  }
}

uint64_t std::__function::__func<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_1,std::allocator<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_1>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACF60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_1,std::allocator<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_1>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (*(v3 + 8) <= v2)
  {
    return 0;
  }

  else
  {
    return *(*v3 + 8 * v2);
  }
}

uint64_t std::__function::__func<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_2,std::allocator<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_2>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACFA8;
  a2[1] = v2;
  return result;
}

char *swift::TypeLookupError::TypeLookupError<_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_9>(_gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_9 const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = result;
      _gatherGenericParameters(swift::TargetContextDescriptor<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>,swift::TargetMetadata<swift::InProcess> const*,__swift::__runtime::llvm::SmallVectorImpl<unsigned int> &,__swift::__runtime::llvm::SmallVectorImpl<void const*> &,swift::Demangle::__runtime::Demangler &)::$_10::operator() const(void)::{lambda(void)#1}::operator()(result, &v22);
      v4 = std::string::append(&v22, "generic argument count mismatch, expected ");
      v5 = v4->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v21, *(*(v3 + 4) + 8));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v21;
      }

      else
      {
        v6 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v8 = std::string::append(&v23, v6, size);
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v24, ", have ");
      v11 = v10->__r_.__value_.__r.__words[2];
      *&v25.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
      v25.__r_.__value_.__r.__words[2] = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v20, *(v3 + 5));
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v20;
      }

      else
      {
        v12 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v20.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v25, v12, v13);
      v19 = *v14;
      v14->__r_.__value_.__r.__words[0] = 0;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_17:
          if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_35;
        }
      }

      else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      }

LABEL_35:
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_19:
        if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }

LABEL_36:
      operator delete(v21.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_21:
          v15 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
          v16 = v19.__r_.__value_.__r.__words[0];
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v19;
          }

          else
          {
            v17 = v19.__r_.__value_.__r.__words[0];
          }

          result = strdup(v17);
          if (v15 < 0)
          {
            v18 = result;
            operator delete(v16);
            return v18;
          }

          return result;
        }

LABEL_38:
        operator delete(v22.__r_.__value_.__l.__data_);
        goto LABEL_21;
      }

LABEL_37:
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1060C4032852127, a3);
    return 0;
  }

  return result;
}

void swift::Demangle::__runtime::TypeDecoder<anonymous namespace::DecodedMetadataBuilder>::decodeMangledType(swift::Demangle::__runtime::Demangler ***a1@<X0>, unsigned __int16 **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v423[16] = *MEMORY[0x1E69E9840];
  if (a3 > 0x400)
  {
LABEL_2:
    *(a4 + 8) = 1;
    v6 = "Mangled type is too complex";
LABEL_3:
    *a4 = v6;
    a4[1] = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    return;
  }

  v7 = a3;
  v8 = a1;
  while (2)
  {
    if (!a2)
    {
      *(a4 + 8) = 1;
      v6 = "Node is NULL";
      goto LABEL_3;
    }

    v9 = *(a2 + 8);
    switch(*(a2 + 8))
    {
      case 3:
        v10 = *(a2 + 18);
        if ((v10 - 1) < 2)
        {
          goto LABEL_66;
        }

        if (v10 != 5 || !*(a2 + 2))
        {
          operator new();
        }

        goto LABEL_54;
      case 0xB:
      case 0x17:
      case 0x42:
      case 0x43:
      case 0x54:
      case 0xAF:
      case 0xB0:
      case 0xE9:
        v21 = *(a2 + 18);
        if (*(a2 + 18) > 2u)
        {
          if (v21 != 5 || *(a2 + 2) <= 1u)
          {
LABEL_114:
            operator new();
          }
        }

        else if (v21 != 2)
        {
          goto LABEL_114;
        }

        if ((v9 - 175) < 2)
        {
          v40 = 0x10000;
        }

        else if (v9 == 23)
        {
          v40 = 196608;
        }

        else if (v9 == 233)
        {
          v40 = 0x20000;
        }

        else
        {
          v40 = 0;
        }

        if (v21 == 5)
        {
          v161 = *a2;
          if (*(a2 + 2))
          {
            v162 = *v161 + 16;
          }

          else
          {
            v162 = 16;
          }

          v169 = *v162;
          v170 = *(v161[v169 == 24] + 16) == 137;
          v166 = 16 * v170;
          if (v169 == 24)
          {
            v167 = (v170 + 1);
          }

          else
          {
            v167 = *(v161[v169 == 24] + 16) == 137;
          }

          v168 = *(v161[v167] + 16);
          v163 = *a2;
        }

        else
        {
          v163 = *a2;
          v164 = (*a2)[8];
          v165 = a2[v164 == 24][8] == 137;
          v166 = 16 * v165;
          if (v164 == 24)
          {
            v167 = (v165 + 1);
          }

          else
          {
            v167 = a2[v164 == 24][8] == 137;
          }

          v168 = a2[v167][8];
          v161 = a2;
        }

        if (v168 == 69)
        {
          if (v21 != 2)
          {
            v21 = *(a2 + 2);
          }

          if (v21 <= v167)
          {
            v171 = 0;
          }

          else
          {
            v171 = v161[v167];
          }

          v173 = *(v171 + 18);
          if ((v173 - 1) >= 2)
          {
            if (v173 != 5 || !*(v171 + 2))
            {
              operator new();
            }

            v174 = a2;
            v171 = *v171;
          }

          else
          {
            v174 = a2;
          }

          v176 = *(a4 + 8);
          if (a4 && v176 == 1)
          {
            return;
          }

          if (*(a4 + 8))
          {
            LODWORD(v167) = v167 + 1;
            if (v176 == 1)
            {
              (a4[1])(*a4, 3, 0);
            }

            v172 = 0;
          }

          else
          {
            v172 = *a4;
            LODWORD(v167) = v167 + 1;
          }

          a2 = v174;
LABEL_698:
          v234 = v167;
          v235 = *(a2 + 18);
          if ((v235 - 1) >= 2)
          {
            v236 = 0;
            v237 = *a2;
          }

          else
          {
            v236 = 1;
            v237 = a2;
          }

          if (*(v237[v167] + 16) == 70)
          {
            v238 = a2;
            if ((v236 & 1) == 0)
            {
              v238 = *a2;
            }

            v239 = *v238[v167] - 100;
            v240 = (v239 >> 1) | (v239 << 7);
            if (v240 > 7u)
            {
              v241 = 0;
            }

            else
            {
              v241 = qword_180672978[v240];
            }

            v234 = (v167 + 1);
            LODWORD(v167) = v167 + 1;
          }

          else
          {
            v241 = 0;
          }

          v242 = a2;
          if ((v236 & 1) == 0)
          {
            v242 = *a2;
          }

          if (*(v242[v234] + 16) == 285)
          {
            v243 = a4;
            v244 = 0;
            LODWORD(v167) = v167 + 1;
            v245 = 0x1000000;
            goto LABEL_888;
          }

          v246 = a2;
          if ((v236 & 1) == 0)
          {
            v246 = *a2;
          }

          if (*(v246[v234] + 16) != 286)
          {
            v243 = a4;
            v244 = 0;
            v245 = 0;
            goto LABEL_888;
          }

          if (v235 != 1)
          {
            if (v235 == 5)
            {
              v235 = *(a2 + 2);
            }

            else
            {
              if (v235 != 2)
              {
                goto LABEL_773;
              }

              v235 = 2;
            }
          }

          if (v235 > v234)
          {
            v256 = a2;
            if ((v236 & 1) == 0)
            {
              v256 = *a2;
            }

            v257 = v256[v234];
            goto LABEL_774;
          }

LABEL_773:
          v257 = 0;
LABEL_774:
          v258 = *(v257 + 18);
          if ((v258 - 1) >= 2)
          {
            if (v258 != 5 || !*(v257 + 2))
            {
              operator new();
            }

            v259 = v241;
            v260 = v172;
            v261 = a2;
            v257 = *v257;
          }

          else
          {
            v259 = v241;
            v260 = v172;
            v261 = a2;
          }

          v262 = *(a4 + 8);
          if (a4 && v262 == 1)
          {
            return;
          }

          if (*(a4 + 8))
          {
            LODWORD(v167) = v167 + 1;
            v166 |= 1u;
            v243 = a4;
            if (v262 == 1)
            {
              (a4[1])(*a4, 3, 0);
            }

            v244 = 0;
          }

          else
          {
            v243 = a4;
            v244 = *a4;
            LODWORD(v167) = v167 + 1;
            v166 |= 1u;
          }

          v245 = 0x1000000;
          a2 = v261;
          v172 = v260;
          v241 = v259;
LABEL_888:
          v293 = v167;
          v294 = *(a2 + 18);
          if (v294 == 1)
          {
            goto LABEL_927;
          }

          v391 = v166;
          v401 = v40;
          if (v294 == 2)
          {
            v295 = a2[v167][8];
            v296 = v295 == 68;
            v297 = v295 == 68 ? v167 + 1 : v167;
            v298 = v296;
            v299 = a2[v297][8] == 284 ? v297 + 1 : v297;
            v300 = v298 << 30;
            v301 = (a2[v297][8] == 284) << 29;
            v302 = (v241 != 0) << 27;
            v303 = 1;
            v304 = 2;
          }

          else
          {
            v303 = 0;
            v304 = *(a2 + 2);
            if (*(*&(*a2)[4 * v167] + 16) == 68)
            {
              v293 = v167 + 1;
            }

            v299 = *(*&(*a2)[4 * v293] + 16) == 284 ? v293 + 1 : v293;
            v300 = (*(*&(*a2)[4 * v167] + 16) == 68) << 30;
            v301 = (*(*&(*a2)[4 * v293] + 16) == 284) << 29;
            v302 = (v241 != 0) << 27;
          }

          if (v304 < v299 + 2)
          {
LABEL_927:
            operator new();
          }

          LOBYTE(v412) = 0;
          v418[0] = &v419;
          v418[1] = 0x800000000;
          v386 = v172;
          v381 = v241;
          v383 = v244;
          if (v294 != 2)
          {
            if (v294 != 5)
            {
              goto LABEL_915;
            }

            v294 = *(a2 + 2);
          }

          if (v294 > v299)
          {
            v305 = a2;
            if ((v303 & 1) == 0)
            {
              v305 = *a2;
            }

            v306 = v245;
            v307 = a2;
            v308 = v305[v299];
LABEL_916:
            if (v423[0])
            {
              *(v243 + 16) = 1;
              v309 = v422;
              *(v243 + 8) = *(&v422 + 1);
              *v243 = (*(&v309 + 1))(v309, 2, 0);
              (*(&v309 + 1))(v309, 3, 0);
              goto LABEL_944;
            }

            v310 = 0x2000000;
            if (!v412)
            {
              v310 = 0;
            }

            v311 = v306 | v401 | v302 | v300 | v418[1] & 0xFDFFFFFF | v310 | v301;
            v312 = v307;
            v313 = *(v307 + 8);
            if (v313 == 84 || v313 == 66)
            {
              v314 = v311 & 0xFFFFFFFFFBFFFFFFLL;
            }

            else
            {
              v314 = v311 & 0xFFFFFFFFFBFFFFFFLL;
              if (v313 != 176)
              {
                v315 = 0;
LABEL_924:
                v316 = *(v312 + 18);
                if (v316 == 2)
                {
                  v317 = *(v312 + 18);
                }

                else
                {
                  if (v316 != 5)
                  {
                    goto LABEL_933;
                  }

                  v317 = *(v312 + 2);
                }

                v318 = v299 + 1;
                if (v317 > v318)
                {
                  if ((v316 - 1) >= 2)
                  {
                    v312 = *v312;
                  }

                  v319 = v312[v318];
                  goto LABEL_934;
                }

LABEL_933:
                v319 = 0;
LABEL_934:
                if (v416[0] == 1)
                {
                  *(v243 + 16) = 1;
                  *v243 = *v415;
                  v415[0] = 0;
                  v415[1] = swift::TypeLookupError::nop;
                  (swift::TypeLookupError::nop)(0, 3, 0);
                }

                else
                {
                  if (v391)
                  {
                    v320 = v315 | v314 | 0x80000000;
                  }

                  else
                  {
                    v320 = v315 | v314;
                  }

                  if (v416[0])
                  {
                    v321 = 0;
                  }

                  else
                  {
                    v321 = v415[0];
                  }

                  if (v416[0] == 1)
                  {
                    (v415[1])(v415[0], 3, 0);
                  }
                }

LABEL_944:
                v28 = v418[0];
                if (v418[0] != &v419)
                {
                  goto LABEL_1054;
                }

                return;
              }
            }

            v315 = 0x4000000;
            goto LABEL_924;
          }

LABEL_915:
          v306 = v245;
          v307 = a2;
          v308 = 0;
          goto LABEL_916;
        }

        if (*(v161[v167] + 16) == 135)
        {
          v172 = 0;
          v166 |= 2u;
        }

        else
        {
          v175 = a2;
          if (v21 == 5)
          {
            v175 = v163;
          }

          if (v175[v167][8] != 136)
          {
            v172 = 0;
            goto LABEL_698;
          }

          v172 = 0;
          v166 |= 4u;
        }

        LODWORD(v167) = v167 + 1;
        goto LABEL_698;
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x11:
      case 0x12:
        v22 = *(a2 + 18);
        if (v22 > 2)
        {
          if (v22 == 5 && *(a2 + 2) > 1u)
          {
            v418[0] = &v419;
            v418[1] = 0x800000000;
            if (*(a2 + 2) < 2u)
            {
              v24 = a2;
              v25 = 0;
LABEL_77:
              v26 = LOBYTE(v423[0]);
              if (LOBYTE(v423[0]) == 1)
              {
LABEL_78:
                *(a4 + 8) = v26;
                v27 = v422;
                a4[1] = *(&v422 + 1);
                *a4 = (*(&v27 + 1))(v27, 2, 0);
                (*(&v27 + 1))(v27, 3, 0);
                goto LABEL_79;
              }

              v113 = *(v24 + 18);
              if ((v113 - 1) >= 2)
              {
                if (v113 != 5 || !*(v24 + 2))
                {
                  v114 = 0;
LABEL_550:
                  if (*(v114 + 8) != 243)
                  {
                    goto LABEL_556;
                  }

                  v190 = *(v114 + 18);
                  if ((v190 - 1) >= 2)
                  {
                    if (v190 != 5 || !*(v114 + 2))
                    {
LABEL_556:
                      swift::Demangle::__runtime::getObjCClassOrProtocolName(v114, &v422);
                      if (LOBYTE(v423[0]) == 1)
                      {
                        __swift::__runtime::llvm::StringRef::str(&v422, v415);
                        if (v417 < 0)
                        {
                          operator delete(v415[0]);
                        }
                      }

                      else
                      {
                        v415[0] = 0;
                        v412 = 0;
                        v26 = LOBYTE(v423[0]);
                        if (LOBYTE(v423[0]) == 1)
                        {
                          goto LABEL_78;
                        }
                      }

LABEL_79:
                      v28 = v418[0];
                      if (v418[0] != &v419)
                      {
                        goto LABEL_1054;
                      }

                      return;
                    }

                    v114 = *v114;
                  }

                  v114 = *v114;
                  goto LABEL_556;
                }

                v24 = *v24;
              }

              v114 = *v24;
              goto LABEL_550;
            }

            v23 = *a2;
LABEL_76:
            v24 = a2;
            v25 = *(v23 + 1);
            goto LABEL_77;
          }
        }

        else if (v22 == 2)
        {
          v418[0] = &v419;
          v418[1] = 0x800000000;
          v23 = a2;
          goto LABEL_76;
        }

        operator new();
      case 0x10:
        v18 = *(a2 + 18);
        if (v18 > 2)
        {
          if (v18 != 5 || *(a2 + 2) <= 1u)
          {
LABEL_472:
            operator new();
          }

          a2 = *a2;
        }

        else if (v18 != 2)
        {
          goto LABEL_472;
        }

        a2 = a2[1];
        v20 = *(a2 + 18);
        if (v20 != 1)
        {
          if (v20 != 5 || *(a2 + 2) != 1)
          {
            operator new();
          }

LABEL_54:
          a2 = *a2;
        }

        goto LABEL_66;
      case 0x14:
        v105 = a2;
        swift::Demangle::__runtime::mangleNode(a2);
        if (LODWORD(v418[0]))
        {
          operator new();
        }

        *v415 = *v105;
        __swift::__runtime::llvm::StringRef::str(v415, &v422);
        v179 = SHIBYTE(v423[0]);
        v180 = v422;
        if (v421 >= 0)
        {
          v181 = __p;
        }

        else
        {
          v181 = __p[0];
        }

        if (v421 >= 0)
        {
          v182 = v421;
        }

        else
        {
          v182 = __p[1];
        }

        if (v179 < 0)
        {
          operator delete(v180);
        }

        if (v421 < 0)
        {
          operator delete(__p[0]);
        }

        return;
      case 0x16:
        v49 = *(a2 + 18);
        if (v49 > 2)
        {
          if (v49 == 5 && *(a2 + 2) > 1u)
          {
            v50 = a1;
            v51 = a2;
            v52 = *a2;
LABEL_740:
            if (v419 != 1)
            {
              v248 = *(v51 + 18);
              if (v248 != 2)
              {
                if (v248 != 5 || *(v51 + 2) < 2u)
                {
                  v249 = 0;
LABEL_791:
                  if (LOWORD(v423[0]) == 1)
                  {
                    *(a4 + 8) = 1;
                    *a4 = v422;
                    *&v422 = 0;
                    *(&v422 + 1) = swift::TypeLookupError::nop;
                    (swift::TypeLookupError::nop)(0, 3, 0);
                  }

                  else
                  {
                    if (v419)
                    {
                      v266 = 0;
                    }

                    else
                    {
                      v266 = v418[0];
                    }

                    if (LOWORD(v423[0]))
                    {
                      v267 = 0;
                    }

                    else
                    {
                      v267 = v422;
                    }

                    if (LOWORD(v423[0]) == 1)
                    {
                      (*(&v422 + 1))(v422, 3, 0);
                    }
                  }

LABEL_1020:
                  if (v419 == 1)
                  {
                    (v418[1])(v418[0], 3, 0);
                  }

                  return;
                }

                v51 = *v51;
              }

              v249 = v51[1];
              goto LABEL_791;
            }

LABEL_748:
            *(a4 + 8) = 1;
            *a4 = *v418;
            v418[1] = swift::TypeLookupError::nop;
            v418[0] = 0;
            (swift::TypeLookupError::nop)(0, 3, 0);
            return;
          }
        }

        else if (v49 == 2)
        {
          v50 = a1;
          v51 = a2;
          v52 = a2;
          goto LABEL_740;
        }

        operator new();
      case 0x19:
        v106 = a2;
        swift::Demangle::__runtime::getObjCClassOrProtocolName(a2, v418);
        if (v419)
        {
          __swift::__runtime::llvm::StringRef::str(v418, &v422);
          if (SHIBYTE(v423[0]) < 0)
          {
            operator delete(v422);
          }
        }

        else
        {
          a2 = v106;
LABEL_450:
          *&v422 = 0;
          v415[0] = 0;
          if (v419 == 1)
          {
            *(a4 + 8) = v419;
            v158 = v418[1];
            v159 = v418[0];
            a4[1] = v418[1];
            *a4 = v158(v159, 2, 0);
            v158(v159, 3, 0);
          }

          else
          {
          }
        }

        return;
      case 0x24:
        v19 = *(a2 + 18);
        if (v19 > 2)
        {
          if (v19 != 5 || *(a2 + 2) <= 1u)
          {
LABEL_471:
            operator new();
          }

LABEL_64:
          a2 = *a2;
        }

        else if (v19 != 2)
        {
          goto LABEL_471;
        }

LABEL_65:
        ++a2;
LABEL_66:
        a2 = *a2;
LABEL_67:
        if (++v7 == 1025)
        {
          goto LABEL_2;
        }

        continue;
      case 0x27:
        v107 = *(a2 + 18);
        if ((v107 - 1) >= 2)
        {
          if (v107 == 5)
          {
            v108 = *a2;
          }

          else
          {
            v108 = a2;
          }

          a2 = *a2;
        }

        else
        {
          v108 = a2;
        }

        *(a4 + 8) = 0;
        *a4 = GenericTypeParameterType;
        return;
      case 0x2D:
        v17 = *(a2 + 18);
        if (v17 <= 2)
        {
          if (v17 != 2)
          {
            goto LABEL_470;
          }

          goto LABEL_65;
        }

        if (v17 != 5 || *(a2 + 2) <= 1u)
        {
LABEL_470:
          operator new();
        }

        goto LABEL_64;
      case 0x2E:
        v57 = *(a2 + 18);
        if (v57 > 2)
        {
          if (v57 == 5 && *(a2 + 2) > 1u)
          {
            v58 = a1;
            v59 = a2;
            v60 = *a2;
LABEL_747:
            if (v419 == 1)
            {
              goto LABEL_748;
            }

            v250 = *(v59 + 18);
            if (v250 != 2)
            {
              if (v250 != 5 || *(v59 + 2) < 2u)
              {
                v251 = 0;
                goto LABEL_802;
              }

              v59 = *v59;
            }

            v251 = v59[1];
LABEL_802:
            v268 = *(v251 + 18);
            v269 = v251;
            if ((v268 - 1) >= 2)
            {
              v269 = *v251;
            }

            *v415 = **v269;
            if (v268 != 2)
            {
              if (v268 != 5 || *(v251 + 2) <= 1u)
              {
                __swift::__runtime::llvm::StringRef::str(v415, &v422);
              }

              v251 = *v251;
            }

            if (v334)
            {
              v335 = v334;
              __swift::__runtime::llvm::StringRef::str(v415, &v422);
              if (v423[0] >= 0)
              {
                v336 = &v422;
              }

              else
              {
                v336 = v422;
              }

              if (v423[0] >= 0)
              {
                v337 = SHIBYTE(v423[0]);
              }

              else
              {
                v337 = *(&v422 + 1);
              }

              if (v419)
              {
                v338 = 0;
              }

              else
              {
                v338 = v418[0];
              }

              if (SHIBYTE(v423[0]) < 0)
              {
                operator delete(v422);
              }
            }

            else
            {
              *a4 = "unknown error";
              a4[1] = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
              *(a4 + 8) = 1;
            }

            goto LABEL_1020;
          }
        }

        else if (v57 == 2)
        {
          v58 = a1;
          v59 = a2;
          v60 = a2;
          goto LABEL_747;
        }

        operator new();
      case 0x3B:
        v78 = *(a2 + 18);
        if (v78 <= 2)
        {
          if (v78 != 1)
          {
            goto LABEL_767;
          }

LABEL_431:
          if (v419 == 1)
          {
            v156 = v418[1];
          }

          else
          {
            v156 = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          }

          v157 = "unknown error";
          if (v419 == 1)
          {
            v157 = v418[0];
          }

          *(a4 + 8) = 1;
          *a4 = v157;
          a4[1] = v156;
          return;
        }

        if (v78 != 5 || *(a2 + 2) != 1)
        {
LABEL_767:
          operator new();
        }

        goto LABEL_430;
      case 0x3F:
      case 0xE6:
      case 0xF4:
      case 0xF5:
        goto LABEL_450;
      case 0x47:
      case 0x9A:
        v41 = *(a2 + 18);
        if (v41 > 2)
        {
          if (v41 != 5)
          {
            goto LABEL_505;
          }

          v109 = *(a2 + 2);
          if (v109 < 2)
          {
            if (!v109)
            {
LABEL_505:
              operator new();
            }

            v111 = 0;
LABEL_600:
            v177 = *a2;
            goto LABEL_601;
          }

          v42 = *a2;
        }

        else
        {
          if (v41 == 1)
          {
            v111 = 0;
            goto LABEL_504;
          }

          v42 = a2;
          if (v41 != 2)
          {
            goto LABEL_505;
          }
        }

        v110 = *v42;
        if (v110[8] != 155 || *(v110 + 18) != 3)
        {
          operator new();
        }

        if (v41 != 2)
        {
          if (*(a2 + 2) < 2u)
          {
            v197 = a2;
            v198 = 0;
LABEL_602:
            if (v419 == 1)
            {
              *(a4 + 8) = 1;
              *a4 = *v418;
              v418[1] = swift::TypeLookupError::nop;
              v418[0] = 0;
            }

            else
            {
              v199 = *(v197 + 8);
              if (v199 == 71)
              {
                if (v419)
                {
                  v247 = 0;
                }

                else
                {
                  v247 = v418[0];
                }
              }

              else
              {
                if (v199 != 154)
                {
                  operator new();
                }

                if (v419)
                {
                  v200 = 0;
                }

                else
                {
                  v200 = v418[0];
                }
              }
            }

            goto LABEL_1020;
          }

          v111 = 1;
          goto LABEL_600;
        }

        v111 = 1;
LABEL_504:
        v177 = a2;
LABEL_601:
        v197 = a2;
        v198 = v177[v111];
        goto LABEL_602;
      case 0x55:
        v66 = *(a2 + 18);
        if (v66 > 2)
        {
          if (v66 == 5 && *(a2 + 2) > 1u)
          {
            v67 = a1;
            v68 = a2;
            v69 = *a2;
LABEL_755:
            if (v416[0] == 1)
            {
              *(a4 + 8) = 1;
              *a4 = *v415;
              v415[0] = 0;
              v415[1] = swift::TypeLookupError::nop;
              (swift::TypeLookupError::nop)(0, 3, 0);
              return;
            }

            v418[0] = &v419;
            v418[1] = 0x800000000;
            *&v422 = v423;
            *(&v422 + 1) = 0x800000000;
            v252 = *(v68 + 18);
            if (v252 != 2)
            {
              if (v252 != 5 || *(v68 + 2) < 2u)
              {
                v253 = 0;
                goto LABEL_811;
              }

              v68 = *v68;
            }

            v253 = v68[1];
LABEL_811:
            if (v253[8] != 86)
            {
              operator new();
            }

            *a4 = "unknown error";
            a4[1] = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
            *(a4 + 8) = 1;
            if (v422 != v423)
            {
              free(v422);
            }

            if (v418[0] != &v419)
            {
              free(v418[0]);
            }

            if (v416[0] == 1)
            {
              (v415[1])(v415[0], 3, 0);
            }

            return;
          }
        }

        else if (v66 == 2)
        {
          v67 = a1;
          v68 = a2;
          v69 = a2;
          goto LABEL_755;
        }

        operator new();
      case 0x57:
        *(a4 + 8) = 0;
        *a4 = v77;
        if (!v77)
        {
          goto LABEL_789;
        }

        return;
      case 0x65:
        v16 = *(a2 + 18);
        if ((v16 - 1) < 2)
        {
          goto LABEL_66;
        }

        if (v16 != 5 || !*(a2 + 2))
        {
          operator new();
        }

        goto LABEL_54;
      case 0x77:
        v81 = 0;
        v418[0] = &v419;
        v418[1] = 0x800000000;
        *&v422 = v423;
        *(&v422 + 1) = 0x800000000;
        v415[0] = v416;
        v415[1] = 0x800000000;
        v412 = v414;
        v413 = 0x800000000;
        while (2)
        {
          v84 = *(a2 + 18);
          switch(v84)
          {
            case 1:
              v85 = *(a2 + 18);
              break;
            case 5:
              v85 = *(a2 + 2);
              break;
            case 2:
              v85 = 2;
              break;
            default:
              goto LABEL_301;
          }

          if (v85 > v81)
          {
            v86 = v84 - 1;
            if (v84 != 1)
            {
              if (v84 == 5)
              {
                v84 = *(a2 + 2);
              }

              else
              {
                v84 = 2;
              }
            }

            if (v84 <= v81)
            {
              v88 = 0;
            }

            else
            {
              v87 = a2;
              if (v86 >= 2)
              {
                v87 = *a2;
              }

              v88 = v87[v81];
            }

            v89 = *(v88 + 16);
            if (v89 <= 0x74)
            {
              if (*(v88 + 16) <= 0x6Cu)
              {
                if (v89 != 107)
                {
                  if (v89 == 108)
                  {
                    if (*(v88 + 18) != 3)
                    {
                      operator new();
                    }

                    goto LABEL_192;
                  }

                  goto LABEL_955;
                }
              }

              else if (v89 - 109 >= 3)
              {
                if (v89 == 116)
                {
                  if (*(v88 + 18) != 3)
                  {
                    operator new();
                  }

                  goto LABEL_192;
                }

LABEL_955:
                operator new();
              }

LABEL_192:
              ++v81;
              continue;
            }

            if (*(v88 + 16) > 0x7Cu)
            {
              switch(v89)
              {
                case '}':
                  v102 = a2;
                  a2 = v102;
                  if (v103)
                  {
                    operator new();
                  }

                  goto LABEL_192;
                case '~':
                  v82 = a2;
                  a2 = v82;
                  if (v83)
                  {
                    operator new();
                  }

                  goto LABEL_192;
                case '\x7F':
                  v92 = a2;
                  a2 = v92;
                  if (v93)
                  {
                    operator new();
                  }

                  goto LABEL_192;
              }

              goto LABEL_955;
            }

            if (v89 == 117)
            {
              v100 = *(v88 + 18);
              v101 = v88;
              if ((v100 - 1) >= 2)
              {
                if (v100 != 5 || !*(v88 + 8))
                {
                  operator new();
                }

                v101 = *v88;
              }

              if (*(*v101 + 16) == 118)
              {
                if ((v100 - 1) > 1)
                {
                  if (*(**v88 + 18) == 3)
                  {
                    goto LABEL_192;
                  }
                }

                else if (*(*v88 + 18) == 3)
                {
                  goto LABEL_192;
                }
              }

              operator new();
            }

            if (v89 != 120)
            {
              if (v89 == 123)
              {
                v90 = a2;
                a2 = v90;
                if (v91)
                {
                  operator new();
                }

                goto LABEL_192;
              }

              goto LABEL_955;
            }

            if (*(v88 + 18) != 3)
            {
              operator new();
            }

            v94 = *v88;
            v95 = *(v88 + 8);
            if (v95 == 12)
            {
              v97 = *(v94 + 8);
              v98 = *v94 == 0x6E6F5F646C656979;
              v99 = 845112675;
            }

            else
            {
              if (v95 != 10)
              {
                goto LABEL_885;
              }

              if (*v94 == 0x6E6F5F646C656979 && *(v94 + 8) == 25955)
              {
                goto LABEL_192;
              }

              v97 = *(v94 + 8);
              v98 = *v94 == 0x616D5F646C656979;
              v99 = 31086;
            }

            if (v98 && v97 == v99)
            {
              goto LABEL_192;
            }

LABEL_885:
            operator new();
          }

          break;
        }

LABEL_301:
        if (v413 >= 2)
        {
          operator new();
        }

        *a4 = "unknown error";
        a4[1] = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        *(a4 + 8) = 1;
        if (v412 != v414)
        {
          free(v412);
        }

        if (v415[0] != v416)
        {
          free(v415[0]);
        }

        if (v422 != v423)
        {
          free(v422);
        }

        v28 = v418[0];
        if (v418[0] != &v419)
        {
          goto LABEL_1054;
        }

        return;
      case 0xBE:
      case 0xBF:
      case 0x169:
        if (!v418[0])
        {
          operator new();
        }

        return;
      case 0xC8:
      case 0xC9:
      case 0xCA:
        v29 = *(a2 + 18);
        if (v29 > 2)
        {
          if (v29 == 5 && *(a2 + 2))
          {
            v418[0] = &v419;
            v418[1] = 0x800000000;
            if (!*(a2 + 2))
            {
              v31 = 0;
LABEL_89:
              if (v31[8] != 200)
              {
                goto LABEL_95;
              }

              v32 = *(v31 + 18);
              if ((v32 - 1) >= 2)
              {
                if (v32 != 5 || !*(v31 + 2))
                {
LABEL_95:
                  v33 = *(v31 + 18);
                  v34 = v31;
                  if ((v33 - 1) >= 2)
                  {
                    if (v33 == 5)
                    {
                      v35 = a1;
                      v36 = *v31;
                      v34 = *v31;
LABEL_511:
                      v178 = &v36[8 * *(v31 + 2)];
                      goto LABEL_529;
                    }

                    v34 = 0;
                  }

                  v35 = a1;
                  switch(v33)
                  {
                    case 1:
                      v178 = (v31 + 4);
                      break;
                    case 2:
                      v178 = (v31 + 8);
                      break;
                    case 5:
                      v36 = *v31;
                      goto LABEL_511;
                    default:
                      v178 = 0;
                      break;
                  }

LABEL_529:
                  if (v34 != v178)
                  {
                    do
                    {
                      v183 = a2;
                      if (!v184)
                      {
                        operator new();
                      }

                      v185 = LODWORD(v418[1]);
                      if (LODWORD(v418[1]) >= HIDWORD(v418[1]))
                      {
                        v186 = v184;
                        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v418, &v419, LODWORD(v418[1]) + 1, 8);
                        v184 = v186;
                        v185 = LODWORD(v418[1]);
                      }

                      a2 = v183;
                      *(v418[0] + v185) = v184;
                      ++LODWORD(v418[1]);
                      ++v34;
                    }

                    while (v34 != v178);
                    v9 = *(v183 + 8);
                  }

                  if (v9 == 201)
                  {
                    v187 = *(a2 + 18);
                    if (v187 > 2)
                    {
                      if (v187 != 5 || *(a2 + 2) <= 1u)
                      {
LABEL_736:
                        operator new();
                      }

                      a2 = *a2;
                    }

                    else if (v187 != 2)
                    {
                      goto LABEL_736;
                    }

                    v275 = *(a4 + 8);
                    if (a4 && v275 == 1)
                    {
LABEL_737:
                      v28 = v418[0];
                      if (v418[0] != &v419)
                      {
                        goto LABEL_1054;
                      }

                      return;
                    }

                    if (*(a4 + 8))
                    {
                      if (v275 == 1)
                      {
                        (a4[1])(*a4, 3, 0);
                      }

                      v188 = 0;
                      v189 = 1;
                    }

                    else
                    {
                      v188 = *a4;
                      v189 = 1;
                    }
                  }

                  else
                  {
                    v188 = 0;
                    v189 = v9 == 202;
                  }

                  goto LABEL_737;
                }

                v31 = *v31;
              }

              v31 = *v31;
              goto LABEL_95;
            }

            v30 = *a2;
LABEL_88:
            v31 = *v30;
            goto LABEL_89;
          }
        }

        else if (v29 == 1 || v29 == 2)
        {
          v418[0] = &v419;
          v418[1] = 0x800000000;
          v30 = a2;
          goto LABEL_88;
        }

        operator new();
      case 0xDA:
        v15 = *(a2 + 18);
        if ((v15 - 1) < 2)
        {
          goto LABEL_66;
        }

        if (v15 != 5 || !*(a2 + 2))
        {
          operator new();
        }

        goto LABEL_54;
      case 0xDD:
        v44 = *(a2 + 18);
        if (v44 <= 2)
        {
          if (v44 == 1 || v44 == 2)
          {
            goto LABEL_431;
          }

LABEL_576:
          operator new();
        }

        if (v44 != 5 || !*(a2 + 2))
        {
          goto LABEL_576;
        }

        goto LABEL_430;
      case 0xDE:
        v415[0] = v416;
        v415[1] = 0x400000000;
        v412 = v414;
        v413 = 0x400000000;
        *&v422 = v423;
        *(&v422 + 1) = 0x400000000;
        v418[0] = &v419;
        v418[1] = 0x800000000;
        v410[0] = v411;
        v410[1] = 0x400000000;
        v45 = *(a2 + 18);
        if (v45 <= 2)
        {
          if (v45 == 1)
          {
            goto LABEL_387;
          }

          if (v45 == 2)
          {
LABEL_131:
            v46 = 0;
            goto LABEL_132;
          }

LABEL_577:
          operator new();
        }

        if (v45 != 5)
        {
          goto LABEL_577;
        }

        v149 = *(a2 + 2);
        if (!v149)
        {
          goto LABEL_577;
        }

        if (v149 == 1)
        {
          goto LABEL_386;
        }

        if (v149 < 3)
        {
          goto LABEL_131;
        }

        v46 = *(*a2 + 2);
LABEL_132:
        if (*(v46 + 8) != 246)
        {
          operator new();
        }

        v47 = a2;
        if (v45 == 2)
        {
          goto LABEL_136;
        }

        if (*(a2 + 2) >= 2u)
        {
          v47 = *a2;
LABEL_136:
          v48 = v47[1];
          goto LABEL_819;
        }

        v48 = 0;
LABEL_819:
        v270 = (v48 + 8);
        if (v48[8] != 44)
        {
          operator new();
        }

        v384 = v48;
        v271 = *(v48 + 18);
        if ((v271 - 1) < 2)
        {
          v407 = v409;
          v408 = 0x400000000;
          v273 = v48;
          if (v271 == 1)
          {
            v274 = (v48 + 4);
          }

          else
          {
            v274 = (v48 + 8);
          }
        }

        else
        {
          if (v271 != 5 || (v399 = a4, v394 = a2, !*(v48 + 2)))
          {
            operator new();
          }

          v407 = v409;
          v408 = 0x400000000;
          v272 = *(v48 + 2);
          if (!v272)
          {
            v404 = v406;
            v405 = 0x600000000;
            goto LABEL_1059;
          }

          v273 = *v48;
          v274 = *v48 + 8 * v272;
        }

        do
        {
          v322 = *v273;
          if (*(*v273 + 16) == 38 && *(v322 + 18) == 4)
          {
            v323 = v8;
            v324 = a2;
            __swift::__runtime::llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v407, *v322);
            a2 = v324;
            v8 = v323;
          }

          v273 += 4;
        }

        while (v273 != v274);
        v325 = v384;
        v326 = *(v384 + 18);
        v404 = v406;
        v405 = 0x600000000;
        v394 = a2;
        v399 = a4;
        if ((v326 - 1) < 2)
        {
          goto LABEL_981;
        }

        if (v326 != 5)
        {
          v325 = 0;
LABEL_981:
          if (v326 == 1)
          {
            v270 = (v384 + 4);
            goto LABEL_1064;
          }

          if (v326 == 2)
          {
            goto LABEL_1064;
          }

          if (v326 != 5)
          {
            v270 = 0;
            goto LABEL_1064;
          }

          v327 = v384;
          v328 = *v384;
          goto LABEL_1060;
        }

LABEL_1059:
        v327 = v384;
        v328 = *v384;
        v325 = *v384;
LABEL_1060:
        v270 = &v328[*(v327 + 2)];
LABEL_1064:
        while (v325 != v270)
        {
          v347 = *v325;
          if (*(*v325 + 16) != 43)
          {
            goto LABEL_1063;
          }

          v348 = *(v347 + 18);
          if ((v348 - 1) < 2)
          {
            goto LABEL_1070;
          }

          if (v348 == 5 && *(v347 + 2))
          {
            v347 = *v347;
LABEL_1070:
            v349 = *v347;
            goto LABEL_1072;
          }

          v349 = 0;
LABEL_1072:
          v350 = *(v349 + 18);
          if ((v350 - 1) >= 2)
          {
            if (v350 != 5 || !*(v349 + 2))
            {
              v351 = 0;
              goto LABEL_1078;
            }

            v349 = *v349;
          }

          v351 = *v349;
LABEL_1078:
          v352 = *(v351 + 18);
          if ((v352 - 1) <= 1)
          {
            v403 = **v351;
          }

          else
          {
            v403 = ***v351;
            if (v352 == 5)
            {
              v351 = *v351;
            }
          }

          v402 = *v351[1];
          __swift::__runtime::llvm::SmallVectorImpl<std::pair<unsigned int,unsigned int>>::emplace_back<unsigned long long,unsigned long long>(&v404, &v403, &v402);
LABEL_1063:
          ++v325;
        }

        v353 = v408;
        if (v408)
        {
          v354 = 0;
          v355 = v407;
          do
          {
            if (v355[v354])
            {
              v356 = 0;
              do
              {
                v357 = v8;
                v358 = *v8;
                v359 = v358[4];
                if (v359)
                {
                  LODWORD(v403) = v354;
                  LODWORD(v402) = v356;
                  v359 = (*(*v359 + 48))(v359, &v403, &v402);
                  v363 = v358[11];
                  if (v358[10] != v363 && (v359 & 1) != 0)
                  {
                    v364 = *(v363 - 1);
                    v403 = v359;
                    if (v364 >= *((v359 & 0xFFFFFFFFFFFFFFFELL) - 8))
                    {
                      NumElements = swift::TargetPackPointer<swift::InProcess,swift::TargetMetadata>::getNumElements(&v403, v360, v361, v362);
                      swift::fatalError(0, "Pack index %zu exceeds pack length %zu\n", v379, v380, v364, NumElements);
                    }

                    v359 = *((v359 & 0xFFFFFFFFFFFFFFFELL) + 8 * v364);
                  }
                }

                v8 = v357;
                v365 = LODWORD(v410[1]);
                if (LODWORD(v410[1]) >= HIDWORD(v410[1]))
                {
                  v366 = v359;
                  __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v410, v411, LODWORD(v410[1]) + 1, 8);
                  v359 = v366;
                  v8 = v357;
                  v365 = LODWORD(v410[1]);
                }

                *(v410[0] + v365) = v359;
                ++LODWORD(v410[1]);
                ++v356;
                v355 = v407;
              }

              while (v356 < *(v407 + v354));
              v353 = v408;
            }

            ++v354;
          }

          while (v354 < v353);
        }

        v367 = *(v46 + 18);
        switch(v367)
        {
          case 1u:
            goto LABEL_1107;
          case 5u:
            v367 = *(v46 + 2);
            if (!v367)
            {
              break;
            }

            goto LABEL_1107;
          case 2u:
LABEL_1107:
            v370 = 0;
            v371 = 0;
            v368 = 1;
            v372 = v367;
            while (1)
            {
              v373 = *(v46 + 18);
              v374 = v373 - 1;
              if (v373 != 1)
              {
                if (v373 == 5)
                {
                  v373 = *(v46 + 2);
                }

                else
                {
                  if (v373 != 2)
                  {
                    goto LABEL_1118;
                  }

                  v373 = 2;
                }
              }

              if (v373 > v371)
              {
                v375 = v46;
                if (v374 >= 2)
                {
                  v375 = *v46;
                }

                v376 = v375[v371];
                goto LABEL_1119;
              }

LABEL_1118:
              v376 = 0;
LABEL_1119:
              if (!v399 || *(v399 + 8) != 1)
              {
                if (*(v399 + 8))
                {
                  v377 = 0;
                }

                else
                {
                  v377 = *v399;
                }

                v403 = v377;
                __swift::__runtime::llvm::SmallVectorImpl<std::pair<swift::MetadataPackOrValue,swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue&,swift::MetadataPackOrValue>(&v412, (v410[0] + v370), &v403);
                if (*(v399 + 8) == 1)
                {
                  (v399[1])(*v399, 3, 0);
                }

                v368 = ++v371 < v372;
                v370 += 8;
                if (v372 != v371)
                {
                  continue;
                }
              }

              goto LABEL_1099;
            }
        }

        v368 = 0;
LABEL_1099:
        if (v404 != v406)
        {
          free(v404);
        }

        if (v407 != v409)
        {
          free(v407);
        }

        if (v368)
        {
          goto LABEL_1045;
        }

        a2 = v394;
        v369 = *(v394 + 18);
        if ((v369 - 1) >= 2)
        {
          if (v369 != 5)
          {
            v150 = 0;
            a4 = v399;
            goto LABEL_388;
          }

          a4 = v399;
          if (!*(v394 + 2))
          {
            v150 = 0;
            goto LABEL_388;
          }

LABEL_386:
          a2 = *a2;
          goto LABEL_387;
        }

        a4 = v399;
LABEL_387:
        v150 = *a2;
LABEL_388:
        v151 = v150 + 2;
        if (*(v150 + 8) != 223)
        {
          operator new();
        }

        v152 = *(v150 + 18);
        v153 = v150;
        if ((v152 - 1) >= 2)
        {
          if (v152 == 5)
          {
            v154 = *v150;
            v153 = *v150;
            goto LABEL_961;
          }

          v153 = 0;
        }

        if (v152 == 1)
        {
          v151 = v150 + 1;
        }

        else if (v152 != 2)
        {
          if (v152 == 5)
          {
            v154 = *v150;
LABEL_961:
            v151 = &v154[4 * *(v150 + 2)];
          }

          else
          {
            v151 = 0;
          }
        }

        if (v153 == v151)
        {
LABEL_1005:
          *a4 = "unknown error";
          a4[1] = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          *(a4 + 8) = 1;
        }

        else
        {
          while (1)
          {
            v329 = *v153;
            v330 = (*v153)[8];
            if (v330 == 224)
            {
              v331 = 1;
            }

            else
            {
              if (v330 != 225)
              {
                goto LABEL_1044;
              }

              v331 = 0;
            }

            LOBYTE(v407) = v331;
            v332 = *(v329 + 18);
            if ((v332 - 1) >= 2)
            {
              if (v332 != 5 || !*(v329 + 2))
              {
LABEL_1044:
                operator new();
              }

              v329 = *v329;
            }

            if (a4)
            {
              if (*(a4 + 8) == 1)
              {
                break;
              }
            }

            if (*(a4 + 8))
            {
              v333 = 0;
            }

            else
            {
              v333 = *a4;
            }

            v404 = v333;
            if (*(a4 + 8) == 1)
            {
              (a4[1])(*a4, 3, 0);
            }

            if (++v153 == v151)
            {
              goto LABEL_1005;
            }
          }
        }

LABEL_1045:
        if (v410[0] != v411)
        {
          free(v410[0]);
        }

        if (v418[0] != &v419)
        {
          free(v418[0]);
        }

        if (v422 != v423)
        {
          free(v422);
        }

        if (v412 != v414)
        {
          free(v412);
        }

        v28 = v415[0];
        if (v415[0] != v416)
        {
LABEL_1054:
          free(v28);
        }

        return;
      case 0xEA:
        v53 = v423;
        *&v422 = v423;
        *(&v422 + 1) = 0x800000000;
        v418[0] = &v419;
        v418[1] = 0x800000000;
        v54 = *(a2 + 18);
        v55 = a2;
        if ((v54 - 1) < 2)
        {
          goto LABEL_567;
        }

        if (v54 == 5)
        {
          v56 = *a2;
          v55 = *a2;
LABEL_571:
          v194 = &v56[*(a2 + 2)];
          goto LABEL_614;
        }

        v55 = 0;
LABEL_567:
        switch(v54)
        {
          case 1:
            v194 = a2 + 1;
            break;
          case 2:
            v194 = a2 + 2;
            break;
          case 5:
            v56 = *a2;
            goto LABEL_571;
          default:
            v194 = 0;
            break;
        }

LABEL_614:
        if (v55 == v194)
        {
          v228 = 0;
          v229 = 0;
          v230 = &v419;
          v231 = v423;
LABEL_729:
          goto LABEL_966;
        }

        v388 = v194;
        v393 = a2;
        v398 = a4;
        while (1)
        {
          v201 = *v55;
          if ((*v55)[8] != 235)
          {
            operator new();
          }

          if (v201[18] - 1 > 1)
          {
            v201 = *v201;
          }

          if (*(*v201 + 16) == 289)
          {
            operator new();
          }

          v410[0] = 0;
          v410[1] = 0;
          v202 = *v55;
          v203 = *(*v55 + 18);
          if ((v203 - 1) > 1)
          {
            v204 = **v202;
          }

          else
          {
            v204 = *v202;
          }

          if (*(v204 + 8) == 236)
          {
            *v410 = *v204;
            v202 = *v55;
            v203 = *(*v55 + 18);
            v205 = 1;
          }

          else
          {
            v205 = 0;
          }

          if ((v203 - 1) >= 2)
          {
            v202 = *v202;
          }

          v206 = *&v202[4 * v205];
          v404 = &v422;
          v405 = v418;
          v406[0] = v410;
          v207 = *(v206 + 8);
          if (v207 == 243)
          {
            if (*(v206 + 18) - 1 >= 2)
            {
              v206 = *v206;
            }

            v206 = *v206;
            v207 = *(v206 + 8);
          }

          if (v207 == 240)
          {
            v208 = *(v206 + 18);
            if (v208 > 2)
            {
              if (v208 != 5 || *(v206 + 2) <= 1u)
              {
LABEL_964:
                operator new();
              }

              v206 = *v206;
            }

            else if (v208 != 2)
            {
              goto LABEL_964;
            }

            v211 = *v206;
            if (v416[0] == 1)
            {
              v400 = v415[1];
              v53 = (v415[1])(v415[0], 2, 0);
              v214 = 0;
              v215 = 1;
            }

            else
            {
              if (v416[0])
              {
                v217 = 0;
              }

              else
              {
                v217 = v415[0];
              }

              if (v218)
              {
                v219 = v218;
                v220 = 0;
                v215 = 0;
                while (1)
                {
                  v221 = (*v8)[11];
                  if ((*v8)[10] == v221)
                  {
                    goto LABEL_1130;
                  }

                  *(v221 - 1) = v220;
                  v222 = v414[0];
                  if (v414[0] == 1)
                  {
                    v400 = v413;
                    v53 = (v413)(v412, 2, 0);
                    v215 = 1;
                  }

                  else
                  {
                    if (v414[0])
                    {
                      v223 = 0;
                    }

                    else
                    {
                      v223 = v412;
                    }

                    v224 = DWORD2(v422);
                    if (DWORD2(v422) >= HIDWORD(v422))
                    {
                      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v422, v423, DWORD2(v422) + 1, 8);
                      v224 = DWORD2(v422);
                    }

                    *(v422 + 8 * v224) = v223;
                    ++DWORD2(v422);
                    v225 = *v410;
                    v226 = LODWORD(v418[1]);
                    if (LODWORD(v418[1]) >= HIDWORD(v418[1]))
                    {
                      v382 = *v410;
                      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v418, &v419, LODWORD(v418[1]) + 1, 16);
                      v225 = v382;
                      v226 = LODWORD(v418[1]);
                    }

                    *(v418[0] + v226) = v225;
                    ++LODWORD(v418[1]);
                  }

                  if (v414[0] == 1)
                  {
                    (v413)(v412, 3, 0);
                  }

                  if (v222 == 1)
                  {
                    break;
                  }

                  if (v219 == ++v220)
                  {
                    goto LABEL_675;
                  }
                }

                v214 = 0;
                a4 = v398;
                v194 = v388;
              }

              else
              {
                v215 = 0;
LABEL_675:
                v227 = (*v8)[11];
                a4 = v398;
                v194 = v388;
                if ((*v8)[10] == v227)
                {
                  goto LABEL_1132;
                }

                (*v8)[11] = (v227 - 16);
                v214 = 1;
              }
            }

            if (v416[0] == 1)
            {
              (v415[1])(v415[0], 3, 0);
            }

            a2 = v393;
            if ((v214 & 1) == 0)
            {
              if (v215)
              {
                goto LABEL_965;
              }

              goto LABEL_619;
            }
          }

          else
          {
            v209 = a2;
            v210 = v416[0];
            if (v416[0] == 1)
            {
              v400 = v415[1];
              v53 = (v415[1])(v415[0], 2, 0);
            }

            else
            {
              if (v416[0])
              {
                v216 = 0;
              }

              else
              {
                v216 = v415[0];
              }
            }

            if (v416[0] == 1)
            {
              (v415[1])(v415[0], 3, 0);
            }

            if (v210 == 1)
            {
LABEL_965:
              *(a4 + 8) = 1;
              a4[1] = v400;
              *a4 = v400(v53, 2, 0);
              v400(v53, 3, 0);
LABEL_966:
              if (v418[0] != &v419)
              {
                free(v418[0]);
              }

              v28 = v422;
              if (v422 != v423)
              {
                goto LABEL_1054;
              }

              return;
            }

            a2 = v209;
          }

          v53 &= 0xFFFFFFFFFFFFFF00;
LABEL_619:
          if (++v55 == v194)
          {
            v231 = v422;
            v229 = DWORD2(v422);
            v230 = v418[0];
            v228 = LODWORD(v418[1]);
            goto LABEL_729;
          }
        }

      case 0xEB:
        v13 = *(a2 + 18);
        v14 = a2;
        if ((v13 - 1) >= 2)
        {
          if (v13 != 5 || !*(a2 + 2))
          {
            operator new();
          }

          v14 = *a2;
        }

        if ((*v14)[8] != 236)
        {
          if ((v13 - 1) < 2)
          {
            goto LABEL_66;
          }

          if (v13 != 5 || !*(a2 + 2))
          {
            a2 = 0;
            goto LABEL_67;
          }

          goto LABEL_54;
        }

        if (*(a2 + 18) <= 2u)
        {
          if (v13 != 2)
          {
            goto LABEL_575;
          }

          goto LABEL_65;
        }

        if (v13 != 5 || *(a2 + 2) <= 1u)
        {
LABEL_575:
          operator new();
        }

        goto LABEL_64;
      case 0xED:
      case 0xEE:
      case 0xEF:
        v418[0] = &v419;
        v418[1] = 0x800000000;
        v37 = *(a2 + 18);
        v38 = a2;
        if ((v37 - 1) < 2)
        {
          goto LABEL_275;
        }

        if (v37 == 5)
        {
          v39 = *a2;
          v38 = *a2;
LABEL_279:
          v112 = &v39[*(a2 + 2)];
          goto LABEL_306;
        }

        v38 = 0;
LABEL_275:
        switch(v37)
        {
          case 1:
            v112 = a2 + 1;
            break;
          case 2:
            v112 = a2 + 2;
            break;
          case 5:
            v39 = *a2;
            goto LABEL_279;
          default:
            v112 = 0;
            break;
        }

LABEL_306:
        if (v38 != v112)
        {
          v387 = (a2 + 2);
          v397 = a4;
          v392 = v112;
          while (1)
          {
            v115 = *v38;
            v116 = (*v38)[8];
            if (v116 == 243)
            {
              if (*(v115 + 18) - 1 >= 2)
              {
                v115 = *v115;
              }

              v115 = *v115;
              v116 = v115[8];
            }

            if (v116 == 240)
            {
              v117 = *(v115 + 18);
              if (v117 > 2)
              {
                if (v117 != 5 || *(v115 + 2) <= 1u)
                {
LABEL_685:
                  operator new();
                }

                v115 = *v115;
              }

              else if (v117 != 2)
              {
                goto LABEL_685;
              }

              v119 = *v115;
              if (LOWORD(v423[0]) == 1)
              {
                v400 = *(&v422 + 1);
                v4 = (*(&v422 + 1))(v422, 2, 0);
                v122 = 0;
                v123 = 1;
              }

              else
              {
                if (LOWORD(v423[0]) || (v127 = v422, (v422 & 1) == 0))
                {
                  swift::fatalError(0, "Pack expansion count type should be a pack\n", v120, v121);
                }

                v128 = *v8;
                v130 = (*v8)[11];
                v129 = (*v8)[12];
                if (v130 >= v129)
                {
                  v132 = v128[10];
                  v133 = v130 - v132;
                  v134 = (v130 - v132) >> 4;
                  v135 = v134 + 1;
                  if ((v134 + 1) >> 60)
                  {
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v136 = v129 - v132;
                  if (v136 >> 3 > v135)
                  {
                    v135 = v136 >> 3;
                  }

                  if (v136 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v137 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v137 = v135;
                  }

                  if (v137)
                  {
                    if (!(v137 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_1135;
                  }

                  v138 = (16 * v134);
                  *v138 = v422;
                  v138[1] = 0;
                  v131 = 16 * v134 + 16;
                  memcpy(0, v132, v133);
                  v128[10] = 0;
                  v128[11] = v131;
                  v128[12] = 0;
                  if (v132)
                  {
                    operator delete(v132);
                  }
                }

                else
                {
                  *v130 = v422;
                  *(v130 + 1) = 0;
                  v131 = (v130 + 16);
                }

                v128[11] = v131;
                v139 = *((v127 & 0xFFFFFFFFFFFFFFFELL) - 8);
                if (v139)
                {
                  v140 = 0;
                  v123 = 0;
                  v8 = a1;
                  while (1)
                  {
                    v141 = (*v8)[11];
                    if ((*v8)[10] == v141)
                    {
LABEL_1130:
                      swift::fatalError(0, "advancePackExpansion() without beginPackExpansion()\n", v120, v121);
                    }

                    *(v141 - 1) = v140;
                    v142 = v416[0];
                    if (v416[0] == 1)
                    {
                      v400 = v415[1];
                      v4 = (v415[1])(v415[0], 2, 0);
                      v123 = 1;
                    }

                    else
                    {
                      v143 = v8;
                      if (v416[0])
                      {
                        v144 = 0;
                      }

                      else
                      {
                        v144 = v415[0];
                      }

                      v145 = LODWORD(v418[1]);
                      if (LODWORD(v418[1]) >= HIDWORD(v418[1]))
                      {
                        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v418, &v419, LODWORD(v418[1]) + 1, 8);
                        v145 = LODWORD(v418[1]);
                      }

                      *(v418[0] + v145) = v144;
                      ++LODWORD(v418[1]);
                      v8 = v143;
                    }

                    if (v416[0] == 1)
                    {
                      (v415[1])(v415[0], 3, 0);
                    }

                    if (v142 == 1)
                    {
                      break;
                    }

                    if (v139 == ++v140)
                    {
                      goto LABEL_366;
                    }
                  }

                  v122 = 0;
                  v112 = v392;
                }

                else
                {
                  v123 = 0;
                  v8 = a1;
LABEL_366:
                  v146 = (*v8)[11];
                  v112 = v392;
                  if ((*v8)[10] == v146)
                  {
LABEL_1132:
                    swift::fatalError(0, "endPackExpansion() without beginPackExpansion()\n", v120, v121);
                  }

                  (*v8)[11] = (v146 - 16);
                  v122 = 1;
                }
              }

              if (LOWORD(v423[0]) == 1)
              {
                (*(&v422 + 1))(v422, 3, 0);
              }

              if ((v122 & 1) == 0)
              {
                if (v123)
                {
                  goto LABEL_686;
                }

                goto LABEL_310;
              }
            }

            else
            {
              v118 = LOWORD(v423[0]);
              if (LOWORD(v423[0]) == 1)
              {
                v400 = *(&v422 + 1);
                v4 = (*(&v422 + 1))(v422, 2, 0);
              }

              else
              {
                v124 = v8;
                if (LOWORD(v423[0]))
                {
                  v125 = 0;
                }

                else
                {
                  v125 = v422;
                }

                v126 = LODWORD(v418[1]);
                if (LODWORD(v418[1]) >= HIDWORD(v418[1]))
                {
                  __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v418, &v419, LODWORD(v418[1]) + 1, 8);
                  v126 = LODWORD(v418[1]);
                }

                *(v418[0] + v126) = v125;
                ++LODWORD(v418[1]);
                v8 = v124;
              }

              if (LOWORD(v423[0]) == 1)
              {
                (*(&v422 + 1))(v422, 3, 0);
              }

              if (v118 == 1)
              {
LABEL_686:
                *(v397 + 8) = 1;
                v397[1] = v400;
                *v397 = v400(v4, 2, 0);
                v400(v4, 3, 0);
                goto LABEL_687;
              }
            }

            v4 &= 0xFFFFFFFFFFFFFF00;
LABEL_310:
            if (++v38 == v112)
            {
              v9 = *v387;
              v148 = v418[0];
              v147 = LODWORD(v418[1]);
              a4 = v397;
              goto LABEL_376;
            }
          }
        }

        v147 = 0;
        v148 = &v419;
LABEL_376:
        if (v9 == 239 || v9 == 238)
        {
        }

        goto LABEL_687;
      case 0xF0:
        operator new();
      case 0xF3:
        v11 = *(a2 + 18);
        if ((v11 - 1) < 2)
        {
          goto LABEL_66;
        }

        if (v11 != 5 || !*(a2 + 2))
        {
          operator new();
        }

        goto LABEL_54;
      case 0xF7:
        v12 = *(a2 + 18);
        if ((v12 - 1) < 2)
        {
          goto LABEL_66;
        }

        if (v12 != 5 || !*(a2 + 2))
        {
          operator new();
        }

        goto LABEL_54;
      case 0x103:
        v79 = *(a2 + 18);
        if (v79 > 2)
        {
          if (v79 != 5 || !*(a2 + 2))
          {
LABEL_814:
            operator new();
          }

          a2 = *a2;
        }

        else if (v79 != 1 && v79 != 2)
        {
          goto LABEL_814;
        }

        if (v419 == 1)
        {
          goto LABEL_441;
        }

        v155 = *v8;
        if (v419)
        {
          *(v155 + 72) |= 1u;
          goto LABEL_789;
        }

        v263 = v418[0];
        v264 = *(v155 + 72) | 1;
        goto LABEL_788;
      case 0x104:
        v62 = *(a2 + 18);
        if (v62 > 2)
        {
          if (v62 != 5 || !*(a2 + 2))
          {
LABEL_808:
            operator new();
          }

          a2 = *a2;
        }

        else if (v62 != 1 && v62 != 2)
        {
          goto LABEL_808;
        }

        if (v419 == 1)
        {
          goto LABEL_441;
        }

        v155 = *v8;
        if (v419)
        {
          *(v155 + 72) |= 2u;
          goto LABEL_789;
        }

        v263 = v418[0];
        v264 = *(v155 + 72) | 2;
        goto LABEL_788;
      case 0x105:
        v63 = *(a2 + 18);
        if (v63 > 2)
        {
          if (v63 != 5 || !*(a2 + 2))
          {
LABEL_809:
            operator new();
          }

          a2 = *a2;
        }

        else if (v63 != 1 && v63 != 2)
        {
          goto LABEL_809;
        }

        if (v419 != 1)
        {
          v155 = *v8;
          if (v419)
          {
            *(v155 + 72) |= 4u;
            goto LABEL_789;
          }

          v263 = v418[0];
          v264 = *(v155 + 72) | 4;
LABEL_788:
          *(v155 + 72) = v264;
          *(a4 + 8) = 0;
          *a4 = v263;
          if (v263)
          {
            return;
          }

LABEL_789:
          *a4 = "unknown error";
          a4[1] = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          *(a4 + 8) = 1;
          return;
        }

LABEL_441:
        *(a4 + 8) = 1;
        goto LABEL_442;
      case 0x134:
        v64 = *(a2 + 18);
        if (v64 <= 2)
        {
          if (v64 == 1 || v64 == 2)
          {
            goto LABEL_431;
          }

LABEL_583:
          operator new();
        }

        if (v64 != 5 || !*(a2 + 2))
        {
          goto LABEL_583;
        }

        goto LABEL_430;
      case 0x135:
        v65 = *(a2 + 18);
        if (v65 > 2)
        {
          if (v65 == 5 && *(a2 + 2))
          {
LABEL_430:
            a2 = *a2;
            goto LABEL_431;
          }
        }

        else if (v65 == 1 || v65 == 2)
        {
          goto LABEL_431;
        }

        operator new();
      case 0x136:
        v61 = *(a2 + 18);
        if (v61 <= 2)
        {
          if (v61 != 2)
          {
            goto LABEL_580;
          }

          goto LABEL_176;
        }

        if (v61 != 5 || *(a2 + 2) <= 1u)
        {
LABEL_580:
          operator new();
        }

        goto LABEL_585;
      case 0x137:
        v73 = *(a2 + 18);
        if (v73 > 2)
        {
          if (v73 == 5 && *(a2 + 2) > 1u)
          {
LABEL_585:
            v74 = a1;
            v75 = a2;
            v76 = *a2;
LABEL_586:
            if (v419 == 1)
            {
              goto LABEL_748;
            }

            v195 = *(v75 + 18);
            if (v195 != 2)
            {
              if (v195 != 5 || *(v75 + 2) < 2u)
              {
                v196 = 0;
                goto LABEL_690;
              }

              v75 = *v75;
            }

            v196 = v75[1];
LABEL_690:
            if (LOWORD(v423[0]) == 1)
            {
              v232 = *(&v422 + 1);
            }

            else
            {
              v232 = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
            }

            v233 = "unknown error";
            if (LOWORD(v423[0]) == 1)
            {
              v233 = v422;
            }

            *(a4 + 8) = 1;
            *a4 = v233;
            a4[1] = v232;
            goto LABEL_1020;
          }
        }

        else if (v73 == 2)
        {
LABEL_176:
          v74 = a1;
          v75 = a2;
          v76 = a2;
          goto LABEL_586;
        }

        operator new();
      case 0x138:
        v80 = *(a2 + 18);
        if (v80 > 2)
        {
          if (v80 != 5 || !*(a2 + 2))
          {
LABEL_815:
            operator new();
          }

          a2 = *a2;
        }

        else if (v80 != 1 && v80 != 2)
        {
          goto LABEL_815;
        }

        if (!v419)
        {
          v70 = v418[0];
LABEL_169:
          *(a4 + 8) = 0;
          *a4 = v70;
          if (v70)
          {
            return;
          }

          goto LABEL_789;
        }

        if (v419 != 1)
        {
          goto LABEL_789;
        }

        *(a4 + 8) = 1;
LABEL_442:
        *a4 = *v418;
        return;
      case 0x13A:
        v72 = *(a2 + 18);
        if (v72 != 5 || *(a2 + 2) < 3u)
        {
          operator new();
        }

        v254 = *(*a2 + 1);
        if (*(v254 + 8) != 104 || *(v254 + 18) != 4)
        {
          operator new();
        }

        v276 = 0;
        v385 = **a2;
        v389 = *v254;
        v419 = 0;
        v418[1] = 0;
        v418[0] = 0;
        if (*(a2 + 2) >= 3u)
        {
          v276 = *(*a2 + 2);
        }

        v277 = 0;
        v278 = 0;
        v390 = v276;
        while (2)
        {
          v279 = *(v276 + 18);
          switch(v279)
          {
            case 1:
              break;
            case 5:
              v279 = *(v276 + 2);
              break;
            case 2:
              v279 = 2;
              break;
            default:
              goto LABEL_1035;
          }

          if (v279 <= v277)
          {
            goto LABEL_1035;
          }

          LODWORD(v422) = v278 >> 3;
          std::vector<unsigned int>::push_back[abi:nn200100](v418, &v422);
          v280 = *(v276 + 18);
          v281 = v280 - 1;
          switch(v280)
          {
            case 1:
              break;
            case 5:
              v280 = *(v276 + 2);
              break;
            case 2:
              v280 = 2;
              break;
            default:
              goto LABEL_855;
          }

          if (v280 > v277)
          {
            v282 = v276;
            if (v281 >= 2)
            {
              v282 = *v276;
            }

            v283 = v282[v277];
LABEL_856:
            if (*(v283 + 8) == 246)
            {
              v395 = v277;
              v284 = *(v283 + 18);
              v285 = v283;
              v286 = v278;
              v287 = v283 + 2;
              if ((v284 - 1) >= 2)
              {
                if (v284 == 5)
                {
                  v288 = *v283;
                  v285 = *v283;
                  goto LABEL_865;
                }

                v285 = 0;
              }

              if (v284 == 1)
              {
                v287 = v283 + 1;
                goto LABEL_868;
              }

              if (v284 == 2)
              {
LABEL_868:
                if (v285 == v287)
                {
LABEL_839:
                  v278 = v286;
                  v276 = v390;
                  v277 = v395 + 1;
                  continue;
                }

                while (1)
                {
                  if (a4)
                  {
                    if (*(a4 + 8) == 1)
                    {
                      break;
                    }
                  }

                  if (*(a4 + 8))
                  {
                    v289 = 0;
                  }

                  else
                  {
                    v289 = *a4;
                  }

                  v290 = v8;
                  v291 = v286 >> 3;
                  if (((v286 >> 3) + 1) >> 61)
                  {
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  if (v286 >> 3 != -1)
                  {
                    if (!(((v286 >> 3) + 1) >> 61))
                    {
                      operator new();
                    }

LABEL_1135:
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  *(8 * v291) = v289;
                  v292 = 8 * v291 + 8;
                  memcpy(0, 0, v286);
                  v8 = v290;
                  v286 = v292;
                  if (*(a4 + 8) == 1)
                  {
                    (a4[1])(*a4, 3, 0);
                  }

                  if (++v285 == v287)
                  {
                    goto LABEL_839;
                  }
                }

LABEL_1041:
                if (v418[0])
                {
                  v418[1] = v418[0];
                  operator delete(v418[0]);
                }

                return;
              }

              if (v284 != 5)
              {
                v287 = 0;
                goto LABEL_868;
              }

              v288 = *v283;
LABEL_865:
              v287 = (v288 + 8 * *(v283 + 2));
              goto LABEL_868;
            }

LABEL_1035:
            v339 = v8;
            LODWORD(v422) = v278 >> 3;
            std::vector<unsigned int>::push_back[abi:nn200100](v418, &v422);
            v340 = 0;
            v341 = 0;
            v422 = 0uLL;
            v423[0] = 0;
            v342 = v418[0];
            if ((v418[1] - v418[0]) != 4)
            {
              v343 = 0;
              v344 = 1;
              do
              {
                v345 = v342[v343];
                v343 = v344;
                v346 = v342[v344];
                v415[0] = (8 * v345);
                LODWORD(v412) = v346 - v345;
                std::vector<__swift::__runtime::llvm::ArrayRef<swift::MetadataPackOrValue>>::emplace_back<swift::MetadataPackOrValue*,unsigned int>(&v422, v415, &v412);
                v342 = v418[0];
                ++v344;
              }

              while (((v418[1] - v418[0]) >> 2) - 1 > v343);
              v340 = *(&v422 + 1);
              v341 = v422;
            }

            if (v422)
            {
              *(&v422 + 1) = v422;
              operator delete(v422);
            }

            goto LABEL_1041;
          }

          break;
        }

LABEL_855:
        v283 = 0;
        goto LABEL_856;
      case 0x160:
        v43 = *(a2 + 18);
        if (v43 == 2)
        {
          v191 = *a2;
          v418[0] = &v419;
          v418[1] = 0x800000000;
        }

        else
        {
          if (v43 != 5 || *(a2 + 2) < 2u)
          {
            operator new();
          }

          v191 = **a2;
          v418[0] = &v419;
          v418[1] = 0x800000000;
          if (*(a2 + 2) < 2u)
          {
            v192 = 0;
LABEL_564:
            if (LOBYTE(v423[0]) == 1)
            {
              *(a4 + 8) = 1;
              v193 = v422;
              a4[1] = *(&v422 + 1);
              *a4 = (*(&v193 + 1))(v193, 2, 0);
              (*(&v193 + 1))(v193, 3, 0);
            }

            else
            {
            }

LABEL_687:
            v28 = v418[0];
            if (v418[0] != &v419)
            {
              goto LABEL_1054;
            }

            return;
          }

          a2 = *a2;
        }

        v192 = a2[1];
        goto LABEL_564;
      case 0x170:
        v71 = *a2;
        *(a4 + 8) = 0;
        *a4 = v71;
        return;
      case 0x171:
        v70 = *a2;
        goto LABEL_169;
      default:
        operator new();
    }
  }
}